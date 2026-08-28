-- Regression against the actual parser and scorers. Lua 5.1+.
-- Usage: lua tools/itemscore/test_live_stats.lua <addon directory>
local addon=assert(arg[1], "addon directory required")
local function read(path)
  local f=assert(io.open(path,"rb")); local s=f:read("*a"); f:close(); return (s:gsub("^\239\187\191", ""))
end
local function compile(s, env)
  if setfenv then local fn=assert(loadstring(s)); setfenv(fn,env); return fn end
  return assert(load(s,"regression","t",env))
end
local env=setmetatable({}, {__index=_G})
local source=read(addon.."/Item-ItemScore.lua"):gsub("\r\n", "\n")
local function section(first,last,start)
  local a=assert(source:find(first,start or 1,true)); local b=assert(source:find(last,a+1,true)); return source:sub(a,b-1)
end
env.ItemScore={Keywords={}, playerlevel=80, whiteScoreWeight=0.003}
env.ZGV={ItemScore=env.ItemScore,db={profile={}}}
env.ZygorGuidesViewer=env.ZGV
compile(read(addon.."/Data-WOTLK/Item-Statweights.lua"),env)()
compile(read(addon.."/ZygorItemDB.lua"),env)()
compile(section("local name_cache = {}", "ItemScore.GetItemDetailsQueue = {}"),env)()
env.GetMaxPlayerLevel=function() return 80 end
env.LE_ITEM_CLASS_ARMOR=4
env.get_item_family=function() return "PLATE" end
env.ItemScore.GetEquippedStatValue=function() return 0 end
env.ItemScore.EnsureActiveRuleSet=function() return true end
env.bump_db_counter=function() end
env.tooltip_line_marks_unusable_item_subtype=function() return false end
env.L={Requires="Requires"}
env.gsub=string.gsub
local apiStats, lines
env.GetItemStats=function() return apiStats end
env.Gratuity={NumLines=function() return #lines end, GetLine=function(_,i) return lines[i] end}
env.ItemScore.Keywords={
  {blizz="ARMOR",regexs={"^(%d+) armor$"}},
  {blizz="STRENGTH",regexs={"^%+(%d+) strength$"}},
  {blizz="STAMINA",regexs={"^%+(%d+) stamina$"}},
  {blizz="DEFENSE_SKILL",regexs={"^%+(%d+) defense rating$"}},
}
local utilities=section("local function add_stat", "local function normalize_label")
-- Use exact constant tables without depending on unrelated class/family helpers.
local structural=section("local DB_STRUCTURAL_STATS =", "local SOCKET_STAT_KEYS")
local parseBody=section("\t\tlocal stats\n", "\t\t-- ok, got everything", source:find("function ItemScore:GetItemDetailsQueued",1,true))
local parser=compile(utilities..structural.."\nreturn function(dbitem,canScanTooltip) local itemID=38093; local itemlink='item:38093'; local itemlinkfull=itemlink; local playerclass,playerspec,requires_detail,unusable_by_tooltip;\n"..parseBody.."\nreturn stats end",env)()
local function parse(seed, live, tooltip)
  apiStats=live; lines=tooltip or {}
  return parser(seed and {stats=seed} or nil, true)
end
local function total(stats, wanted)
  local n=0; for k,v in pairs(stats) do if env.ItemScore:NormaliseStatName(k)==wanted then n=n+v end end; return n
end
local itemDB=env.ZygorItemDB.items
local d=itemDB[38093]
local dalaran=parse({ARMOR=d.ar}, {RESISTANCE0_NAME=d.ar,ITEM_MOD_STAMINA_SHORT=d.st.stamina,ITEM_MOD_STRENGTH_SHORT=d.st.strength,ITEM_MOD_HASTE_RATING_SHORT=d.st.hasteRating}, {d.ar.." Armor"})
local weights=env.ItemScore.rules.DEATHKNIGHT[4].stats
local beforeScore=0
for stat,value in pairs(dalaran) do beforeScore=beforeScore+value*(weights[env.ItemScore:NormaliseStatName(stat)] or 0) end
print(("Dalaran parsed armor=%d score=%.2f"):format(total(dalaran,"ARMOR"),beforeScore))
assert(total(dalaran,"ARMOR")==583,"database and API armor counted twice")
assert(math.abs(beforeScore-95.74)<0.0001)
-- Live values must replace (not max with or add to) stale structural DB values.
assert(total(parse({ARMOR=800},{RESISTANCE0_NAME=583}),"ARMOR")==583)
assert(total(parse({ARMOR=400},{RESISTANCE0_NAME=583}),"ARMOR")==583)
assert(total(parse({ARMOR=583},{ARMOR=583,RESISTANCE0_NAME=583}),"ARMOR")==583)
assert(total(parse({ARMOR=583},{RESISTANCE0_NAME=0}),"ARMOR")==0)
assert(total(parse({ARMOR=583},{}),"ARMOR")==583)
assert(total(parse(nil,nil,{"645 Armor","+23 Strength","+34 Stamina","+19 Defense Rating"}),"ARMOR")==645)
local structuralStats=parse({BLOCK_VALUE=30,DAMAGE_PER_SECOND=10,EMPTY_SOCKET_RED=1}, {ITEM_MOD_BLOCK_VALUE_SHORT=20,ITEM_MOD_DAMAGE_PER_SECOND_SHORT=15,EMPTY_SOCKET_RED=2})
assert(total(structuralStats,"BLOCK_VALUE")==20)
assert(total(structuralStats,"DAMAGE_PER_SECOND")==15)
assert(total(structuralStats,"EMPTY_SOCKET_RED")==2)
local primary=parse(nil,{ITEM_MOD_STRENGTH_SHORT=23},{"+23 Strength"})
assert(total(primary,"STRENGTH")==23,"tooltip duplicated API primary stat")
local defense=parse(nil,{ITEM_MOD_DEFENSE_SKILL_RATING_SHORT=19},{"+19 Defense Rating"})
assert(total(defense,"DEFENSE_SKILL")==19,"tooltip duplicated API defense rating")
apiStats=nil; lines={}
local fallback=parser({stats={ARMOR=583,STRENGTH=13}},false)
assert(fallback.ARMOR==583 and fallback.STRENGTH==13,"missing live data lost DB fallback")
-- Keep additive tooltip-only contributions, such as an enchant plus base stats.
assert(total(parse(nil,{}, {"+23 Strength","+5 Strength"}),"STRENGTH")==28)
-- The random-suffix fixture is illustrative, not a capture of the user's item.
local frostpaw=parse(nil,nil,{"645 Armor","+23 Strength","+34 Stamina","+19 Defense Rating"})
env.ItemScore.GetResolvedItemDetails=function(_,link)
  return {stats=link=="dalaran" and dalaran or frostpaw,class=4,type="INVTYPE_WRIST"}
end
env.SOCKET_STAT_KEYS={EMPTY_SOCKET_RED=true}
env.SOCKET_STAT_TO_COLOR={}
local scoring=section("local function socket_scoring_enabled", "function ItemScore:GetContextScoreWeightTotal")
compile(scoring..section("function ItemScore:GetItemScore(itemlink,verbose)","-- checks if given item is a heirloom"),env)()
for _,class in ipairs({"DEATHKNIGHT","PALADIN","WARRIOR","DRUID"}) do
  for _,rules in ipairs(env.ItemScore.rules[class]) do
    env.ItemScore.ActiveRuleSet=rules
    local context={ActiveRuleSet=rules,playerlevel=80,whiteScoreWeight=0.003}
    for _,link in ipairs({"dalaran","frostpaw"}) do
      local active=env.ItemScore:GetItemScore(link)
      local other=env.ItemScore:GetItemScoreForContext(link,context)
      assert(math.abs(active-other)<0.0001,"active/context scoring disagree")
    end
  end
end
env.ItemScore.ActiveRuleSet=env.ItemScore.rules.DEATHKNIGHT[4]
assert(math.abs(env.ItemScore:GetItemScore("dalaran")-95.74)<0.0001)
assert(math.abs(env.ItemScore:GetItemScore("frostpaw")-107.5)<0.0001)
assert(env.ItemScore:GetItemScore("dalaran") < env.ItemScore:GetItemScore("frostpaw"))
print("PASS: canonical live stats, structural fallbacks, tooltip contributions, Blood tank regression, and active/context parity")
