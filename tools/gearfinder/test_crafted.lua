-- Offline regression against actual addon data/helper implementations.
-- Usage: lua tools/gearfinder/test_crafted.lua <addon directory>
local addon = assert(arg[1], "pass the addon directory")
local function read(path)
  local f = assert(io.open(path, "rb")); local s = f:read("*a"); f:close(); return (s:gsub("^\239\187\191", ""))
end
local function compile(source, name, env)
  if setfenv then local fn = assert(loadstring(source, name)); setfenv(fn, env); return fn end
  return assert(load(source, name, "t", env))
end
local env = setmetatable({}, {__index=_G})
env.ZygorGuidesViewer = {ItemScore={}, db={profile={}}, IsClassicWOTLK=true}
local ZGV = env.ZygorGuidesViewer
compile(read(addon.."/ZygorItemDB.lua"), "itemdb", env)()
compile(read(addon.."/Data-WOTLK/GearFinderCraftedSources.lua"), "base", env)()
local sources = ZGV.ItemScore.GearFinderCraftedSources
local baseline = {}
for key, source in pairs(sources) do
  for id in pairs(source.items) do
    baseline[id] = {key=key, category=source.category, expansion=source.expansionLevel, minLevel=source.minLevel}
  end
end
compile(read(addon.."/Data-WOTLK/GearFinderCraftedExpanded.lua"), "expanded", env)()
local index, count, enhanced = {}, 0, 0
for key, source in pairs(sources) do
  for id, item in pairs(source.items) do
    assert(not index[id], "duplicate item "..id)
    index[id] = {source=source, item=item}; count=count+1
    if item.requirementsVersion == 2 then
      enhanced=enhanced+1
      assert(item.equipSkill ~= nil and item.equipSpellID ~= nil and item.recipeSpellID)
      assert(item.minLevel >= 0 and item.minSkill > 0)
      assert(item.profession and item.recipeSource)
    end
    local old = baseline[id]
    if old then
      assert(key == old.key and source.category == old.category and source.expansionLevel == old.expansion and source.minLevel == old.minLevel, "changed existing source policy")
    end
  end
end
assert(count == 1437 and enhanced == 1421, count.."/"..enhanced)
for _, id in ipairs({13503,35748,35749,35750,35751,44324}) do assert(env.ZygorItemDB.items[id].s == "Trinket") end
for _, id in ipairs({22669,22670,22671,22661,22662,22663,22664,22665,22666}) do assert(not index[id], "new retired recipe imported") end
assert(index[22652].item.recipeSource:find("Legacy/retired",1,true))
assert(index[10577].item.recipeSpellID == 12716)
assert(index[44742].item.recipeSpellID == 61483)
assert(index[28437].item.equipSpellID == 17040)

local skills, known = {}, {}
local locale = "enUS"
local names = {[2259]="Alchemy", [2018]="Blacksmithing", [4036]="Engineering", [25229]="Jewelcrafting", [2108]="Leatherworking", [3908]="Tailoring", [17040]="Master Hammersmith", [17041]="Master Axesmith", [20219]="Gnomish Engineer"}
env.GetSpellInfo = function(id)
  if locale == "ruRU" and id == 4036 then return "Инженерное дело" end
  return names[id] or ("spell "..id)
end
env.IsSpellKnown = function(id) return known[id] == true end
env.IsPlayerSpell = false
env.UnitClass = function() return "Mage", ZGV.ItemScore.playerclass end
env.GetNumSkillLines = function() return #skills end
env.GetSkillLineInfo = function(i) return skills[i][1], false, false, skills[i][2] end
env.ZGV = ZGV
env.ItemScore = ZGV.ItemScore
env.GearFinder = {CurrentExpansion=2}
local finder = read(addon.."/Item-GearFinder.lua")
local function section(first, last)
  local a = assert(finder:find(first, 1, true)); local b=assert(finder:find(last,a+1,true)); return finder:sub(a,b-1)
end
local helpers = section("local function GF_NormalizeProfessionName", "local function GF_CompactMapKeys")
  ..section("local function GF_IsValidCraftedSource", "local function GF_HasAnySourceEnabled")
  ..section("local function GF_AddVendorFields", "local function GF_FormatSpecialSource")
  ..section("local function GF_GetSourceTooltipLines", "local function GF_GetDungeonLeafName")
  .."\nreturn {valid=GF_IsValidCraftedItem, source=GF_IsValidCraftedSource, copy=GF_AddVendorFields, line=GF_FormatCraftedLine, tooltip=GF_GetSourceTooltipLines}"
env.GF_IsPhaseActive = function() return true end
local api = compile(helpers, "finder helpers", env)()
local assertions = 0
local function player(level, class, profession, rank, spells)
  ZGV.ItemScore.playerlevel=level; ZGV.ItemScore.playerclass=class or "MAGE"
  skills = profession and {{profession, rank}} or {}
  known = spells or {}
  env.GearFinder.PlayerProfessionSkills=nil
  env.GearFinder.PlayerProfessionSpecializations=nil
end
local function expect(id, expected)
  local data=assert(index[id]); local valid,reason=api.valid(data.source,data.item)
  assert(valid == expected, id..": "..tostring(reason)); assertions=assertions+1
end
player(20,"MAGE"); expect(4368,false); expect(20906,true)
player(20,"MAGE","Engineering",99); expect(4368,false)
player(20,"MAGE","Engineering",100); expect(4368,true)
player(10,"MAGE"); assert(api.source(index[20906].source)); expect(20906,true)
assert(index[20906].source.expansionLevel == 1)
player(9,"MAGE"); expect(20906,false)
player(80,"WARRIOR","Engineering",399); expect(44742,false)
player(80,"WARRIOR","Engineering",400); expect(44742,true)
player(80,"WARRIOR","Engineering",419); expect(44742,true)
player(80,"WARRIOR","Engineering",439); expect(42549,false)
player(80,"WARRIOR","Engineering",440); expect(42549,true)
player(80,"MAGE","Engineering",215); expect(10726,true)
player(80,"MAGE","Engineering",214); expect(10726,false)
player(80,"WARRIOR","Blacksmithing",375,{[17041]=true}); expect(28437,false)
player(80,"WARRIOR","Blacksmithing",375,{[17040]=true}); expect(28437,true)
player(80,"MAGE","Tailoring",375,{[26797]=true}); expect(21846,true)
player(80,"MAGE","Tailoring",375,{[26798]=true}); expect(21846,false)
player(80,"MAGE","Tailoring",450); expect(14154,false)
player(80,"PRIEST","Tailoring",450); expect(14154,true)
player(80,"MAGE","Alchemy",349); expect(13503,false)
player(80,"MAGE","Alchemy",350); expect(13503,true)
player(80,"MAGE","Alchemy",400); expect(44324,true)
locale="ruRU"; env.GearFinder.ProfessionAliases=nil
player(20,"MAGE","Инженерное дело",100); expect(4368,true)
locale="enUS"; env.GearFinder.ProfessionAliases=nil

env.IsSpellKnown=false
env.GetNumSpellTabs=function() return 1 end
env.GetSpellTabInfo=function() return "General",nil,0,1 end
env.GetSpellName=function() return "Master Hammersmith" end
player(80,"WARRIOR","Blacksmithing",375); expect(28437,true)
env.IsSpellKnown=function(id) return known[id] == true end

local function display(id)
  local d=index[id]; local x=d.item
  return api.copy({}, {sourceType="crafted", profession=x.profession or d.source.profession,
    minProfessionSkill=x.minSkill or d.source.minSkill, bind=x.bind or d.source.bind,
    professionOnly=x.professionOnly, requirementsVersion=x.requirementsVersion,
    equipSkill=x.equipSkill, equipSpellID=x.equipSpellID, recipeSpecializationSpellID=x.recipeSpecializationSpellID,
    recipeSpellID=x.recipeSpellID, recipeSource=x.recipeSource, craftedCategory=d.source.category})
end
local goggles=display(44742)
assert(api.line(goggles):find("400 to equip",1,true))
local tooltip=table.concat(api.tooltip(goggles),"\n")
assert(tooltip:find("To craft: Engineering 420",1,true) and tooltip:find("Bind: On equip",1,true))
assert(not tooltip:find("Profession-only",1,true))
assert(table.concat(api.tooltip(display(28437)),"\n"):find("Master Hammersmith",1,true))
assert(table.concat(api.tooltip(display(22652)),"\n"):find("Legacy/retired",1,true))
player(80,"MAGE"); assert(not api.source(index[20906].source))
ZGV.db.profile.gear_crafted_items=false; assert(not api.source(index[44324].source)); ZGV.db.profile.gear_crafted_items=nil
player(20,"MAGE"); ZGV.db.profile.gear_crafted_leveling_items=false; assert(not api.source(index[20906].source)); ZGV.db.profile.gear_crafted_leveling_items=nil
player(80,"WARRIOR"); ZGV.db.profile.gear_tier_progression_mode=true
assert(not api.source(index[49902].source)); assert(api.source(index[42549].source))
ZGV.db.profile.gear_tier_progression_mode=nil
ZGV.db.profile.gear_crafted_pvp_items=false
assert(not api.source({expansionLevel=2,category="pvp",minLevel=80}))
ZGV.db.profile.gear_crafted_pvp_items=nil
player(80,"MAGE"); assert(not api.valid({profession="Tailoring",minSkill=300,bind="bop"},{}))
assert(api.valid({profession="Tailoring",minSkill=300,bind="boe"},{}))
env.GetNumSpellTabs=false; env.GetSpellTabInfo=false; env.GetSpellName=false

-- The reported BoE examples remain eligible by default, but respect the opt-in
-- crafting preference. Knowing a recipe/material availability is not inferred.
player(30,"MAGE"); expect(25438,true); expect(20828,true)
ZGV.db.profile.gear_crafted_my_professions=true
expect(25438,false); expect(20828,false)
player(30,"MAGE","Tailoring",450); expect(25438,false); expect(20828,false)
player(30,"MAGE","Jewelcrafting",19); expect(25438,false)
player(30,"MAGE","Jewelcrafting",20); expect(25438,true); expect(20828,false)
player(30,"MAGE","Jewelcrafting",99); expect(20828,false)
player(30,"MAGE","Jewelcrafting",100); expect(20828,true)
player(80,"WARRIOR","Engineering",400); expect(44742,false)
player(80,"WARRIOR","Engineering",420); expect(44742,true)
locale="ruRU"; env.GearFinder.ProfessionAliases=nil
player(20,"MAGE","Инженерное дело",99); expect(4368,false)
player(20,"MAGE","Инженерное дело",100); expect(4368,true)
locale="enUS"; env.GearFinder.ProfessionAliases=nil
player(80,"MAGE"); assert(not api.valid({profession="Tailoring",minSkill=0,bind="boe"},{}))
player(80,"MAGE","Tailoring",300)
assert(api.valid({profession="Tailoring",minSkill=300,bind="boe"},{}))
assert(not api.valid({profession="Tailoring",minSkill=301,bind="boe"},{}))
assert(not api.valid({profession="Tailoring",minSkill=300,bind="boe",specialization="spellfire_tailoring"},{}))
player(80,"MAGE","Tailoring",300,{[26797]=true})
assert(api.valid({profession="Tailoring",minSkill=300,bind="boe",specialization="spellfire_tailoring"},{}))
-- Per-item overrides still win over the containing source.
assert(api.valid({profession="Blacksmithing",minSkill=450,bind="boe"},{profession="Tailoring",minSkill=300}))
ZGV.db.profile.gear_crafted_my_professions=false
player(30,"MAGE"); expect(25438,true); expect(20828,true)
ZGV.db.profile.gear_crafted_my_professions=nil

-- Exercise the actual option callback and refresh method, not a mock setter.
local options=read(addon.."/Options.lua")
assert(options:find("gear_crafted_my_professions = false",1,true))
local optionStart=assert(options:find("gear_crafted_my_professions = {",1,true))
local optionEnd=assert(options:find("gear_crafted_leveling_items = {",optionStart,true))
local optionBlock=options:sub(optionStart,optionEnd-1):gsub(",%s*$", "")
local refresh=section("function GearFinder:RefreshAfterSourceSettingChange()", "local function GF_TraceBool")
compile(refresh,"source refresh",env)()
env.self=ZGV
env.Setter_Simple=function(_,value) ZGV.db.profile.gear_crafted_my_professions=value end
ZGV.ItemScore.GearFinder=env.GearFinder
local visible,cleared,scanned=false,0,0
env.GearFinder.MainFrame={IsVisible=function() return visible end}
env.GearFinder.ClearResults=function() cleared=cleared+1 end
env.GearFinder.ScoreDungeonItems=function() scanned=scanned+1 end
local option=compile("return {"..optionBlock.."}","profession filter option",env)().gear_crafted_my_professions
ZGV.db.profile.autogear=true
assert(not option.disabled())
option.set({},true); assert(cleared==1 and scanned==0 and ZGV.db.profile.gear_crafted_my_professions)
visible=true
option.set({},false); assert(cleared==2 and scanned==1 and not ZGV.db.profile.gear_crafted_my_professions)
ZGV.db.profile.gear_crafted_items=false; assert(option.disabled()); ZGV.db.profile.gear_crafted_items=nil
ZGV.db.profile.autogear=false; assert(option.disabled()); ZGV.db.profile.autogear=true

local classBits = {WARRIOR=1,PALADIN=2,HUNTER=4,ROGUE=8,PRIEST=16,DEATHKNIGHT=32,SHAMAN=64,MAGE=128,WARLOCK=256,DRUID=1024}
local swept=0
for id, data in pairs(index) do
  local x=data.item
  if x.requirementsVersion == 2 then
    local class="WARRIOR"
    if x.allowableClassMask > 0 then
      for name, value in pairs(classBits) do
        if math.floor(x.allowableClassMask/value)%2 == 1 then class=name; break end
      end
    end
    local spells={}
    if x.equipSpellID > 0 then spells[x.equipSpellID]=true end
    if x.recipeSpecializationSpellID > 0 then spells[x.recipeSpecializationSpellID]=true end
    local rank=x.bind == "bop" and math.max(x.minSkill,x.equipSkill,1) or x.equipSkill
    player(x.minLevel,class,x.profession,math.max(rank,1),spells); expect(id,true)
    if rank > 0 then
      player(x.minLevel,class,x.profession,rank-1,spells); expect(id,false)
    else
      player(x.minLevel,class,nil,nil,spells); expect(id,true)
    end
    if x.minLevel > 0 then
      player(x.minLevel-1,class,x.profession,450,spells); expect(id,false)
    end
    if x.equipSpellID > 0 then
      spells[x.equipSpellID]=nil
      player(x.minLevel,class,x.profession,450,spells); expect(id,false)
    end
    -- Sweep the opt-in crafting boundary for every imported record too.
    ZGV.db.profile.gear_crafted_my_professions=true
    if x.equipSpellID > 0 then spells[x.equipSpellID]=true end
    local craftRank=math.max(x.minSkill,x.equipSkill,1)
    player(x.minLevel,class,x.profession,craftRank,spells); expect(id,true)
    player(x.minLevel,class,x.profession,craftRank-1,spells); expect(id,false)
    player(x.minLevel,class,nil,nil,spells); expect(id,false)
    if x.recipeSpecializationSpellID > 0 then
      spells[x.recipeSpecializationSpellID]=nil
      player(x.minLevel,class,x.profession,craftRank,spells); expect(id,false)
    end
    ZGV.db.profile.gear_crafted_my_professions=nil
    swept=swept+1
  end
end
assert(swept == 1421)
print("PASS: 1437 unique crafted items, 1089 additions, 1421 requirement records; "..assertions.." eligibility cases, locale/spellbook fallback, tooltips, source policies, profession filter and refresh")
