-- Regression for AreaGuide.lua: guide suggestion by zone / dungeon (including a client that reports Portuguese names) and
-- the dungeon boss-kill memory that completes "kill" goals of dungeon guides.
-- Usage: lua tools/area/test_area_guide.lua <addon directory>
local root = (arg and arg[1]) or "ZygorGuidesViewerRM"
local file = assert(io.open(root.."/AreaGuide.lua","rb"))
local source = file:read("*a")
file:close()

local guides = {
	{title="Leveling Guides\\Elwynn Forest (5-12)"},
	{title="Leveling Guides\\Westfall (10-20)"},
	{title="Leveling Guides\\Human Starter (1-5)"},
	{title="Leveling Guides\\Night Elf Starter (1-5)"},
	{title="Dungeon Guides\\Wailing Caverns (15-21)"},
	{title="Dungeon Guides\\The Deadmines (18-24)"},
	{title="Ding80's Quest Instance Guides\\Wailing Caverns Quests (15-21)"},
}
for _,g in ipairs(guides) do g.title_short=g.title:match("([^\\]+)$") end

local printed={}
ZygorGuidesViewer={
	db={profile={areaguide_enabled=true,areaguide_autoprogress=true},char={},global={}},
	registeredguides=guides,guidesloaded=true,questLogInitialized=true,
	-- LibBabble reverse table of a client that reports Portuguese zone names
	BZR={["Floresta de Elwynn"]="Elwynn Forest",["Cerro Oeste"]="Westfall"},
}
local ZGV=ZygorGuidesViewer
function ZGV:Print(text) printed[#printed+1]=text end
function ZGV:GetGuideByTitle(title) for _,g in ipairs(guides) do if g.title==title then return g end end end

StaticPopupDialogs={}
SlashCmdList={}
function CreateFrame() return {SetScript=function() end,RegisterEvent=function() end,UnregisterEvent=function() end} end
local now=100
function GetTime() return now end
time=os.time
local player={level=10,race="Human"}
function UnitLevel() return player.level end
function UnitRace() return player.race,player.race end
function UnitClass() return "Warrior","WARRIOR" end
local inInstance,zone,instanceName=false,"Floresta de Elwynn","Caverna Ululante"
function IsInInstance() return inInstance,inInstance and "party" or "none" end
function GetInstanceInfo() return instanceName end
function GetRealZoneText() return zone end
function GetSubZoneText() return "" end
function GetMinimapZoneText() return "" end
function GetMapInfo() return "WailingCaverns" end
local shown
function StaticPopup_Show(which,text,_,data) shown={which=which,text=text,data=data} end
function StaticPopup_Hide() shown=nil end
function debugprofilestop() return 0 end

-- the file must load on the stock addon (no translation layer, no extra globals)
assert((loadstring or load)(source,"=AreaGuide.lua"))()
local AG=ZGV.AreaGuide
assert(AG,"ZGV.AreaGuide was not created")

-- zones: a client reporting Portuguese names is mapped back to the English guide title
local guide=AG:FindZoneGuide("Floresta de Elwynn")
assert(guide and guide.title=="Leveling Guides\\Elwynn Forest (5-12)","zone guide not found by localized zone name")
assert(AG:FindZoneGuide("Cerro Oeste").title=="Leveling Guides\\Westfall (10-20)","second localized zone not matched")
player.level=60
assert(AG:FindZoneGuide("Elwynn Forest")==nil,"a level 60 player must not be offered a level 5-12 zone guide")
player.level=10
-- starter guides follow race
assert(AG:FindZoneGuide("Teldrassil")==nil,"a Human must not be offered the Night Elf starter guide")

-- prompt text and buttons
local area=AG:GetArea()
assert(area.kind=="zone" and area.name=="Floresta de Elwynn","zone area not detected")
AG:Prompt(area,guide)
assert(shown and shown.which=="ZYGOR_AREAGUIDE" and shown.data==guide.title,"popup was not shown for the guide")
assert(shown.text:find("You entered",1,true) and shown.text:find("Elwynn Forest (5-12)",1,true),"popup text was not formatted")
assert(StaticPopupDialogs.ZYGOR_AREAGUIDE.button1=="Load guide" and StaticPopupDialogs.ZYGOR_AREAGUIDE.button2=="Not now")

-- nothing is asked while flying / in combat / when disabled
function UnitOnTaxi() return true end
function IsFlying() return false end
function UnitIsDeadOrGhost() return false end
function InCombatLockdown() return false end
function UnitAffectingCombat() return false end
assert(AG:BlockReason()=="on a taxi / flying","the question must wait while on a taxi")
function UnitOnTaxi() return false end
assert(AG:BlockReason()=="just landed" or AG:BlockReason()==nil,"unexpected block reason after the taxi")
ZGV.db.profile.areaguide_enabled=false
assert(AG:BlockReason()=="disabled in the options","the option must disable the question")
ZGV.db.profile.areaguide_enabled=true

-- dungeons: Portuguese instance name, English name, unknown name (map file fallback); the main guide beats the quests guide
inInstance=true
local dungeon,how=AG:FindDungeonGuide("Caverna Ululante")
assert(dungeon and dungeon.title=="Dungeon Guides\\Wailing Caverns (15-21)" and how=="name","pt-BR instance name not matched")
assert(AG:FindDungeonGuide("Wailing Caverns").title=="Dungeon Guides\\Wailing Caverns (15-21)","English instance name not matched")
dungeon,how=AG:FindDungeonGuide("Nome Desconhecido")
assert(dungeon and dungeon.title=="Dungeon Guides\\Wailing Caverns (15-21)" and how:find("map file",1,true),"map file fallback failed")

-- boss kills: the combat log GUID carries the NPC id (creature GUIDs look like 0xF130 + 6 hex digits of npc id + counter)
AG.run={inst="i:test",kills={},killsById={},stamp=0}
local goal={action="kill",targetid=3654,target="Mutanus the Devourer",count=1,
	parentStep={parentGuide={title="Dungeon Guides\\Wailing Caverns (15-21)"}}}
assert(AG:IsKillGoalDone(goal)==false,"boss must not count as killed before it dies")
AG:OnUnitDied("0xF130000E46000123","Mutanus the Devourer")
assert(AG.run.killsById[3654]==1,"npc id was not taken from the GUID")
assert(AG:IsKillGoalDone(goal)==true,"kill goal of a dungeon guide must complete after the boss died")
goal.parentStep.parentGuide.title="Leveling Guides\\Elwynn Forest (5-12)"
assert(AG:IsKillGoalDone(goal)==false,"leveling guides must not use the dungeon kill memory")
goal.parentStep.parentGuide.title="Dungeon Guides\\Wailing Caverns (15-21)"
goal.count=5
assert(AG:IsKillGoalDone(goal)==false,"'kill N mobs' goals must be ignored")

print("Area guide regression passed")
