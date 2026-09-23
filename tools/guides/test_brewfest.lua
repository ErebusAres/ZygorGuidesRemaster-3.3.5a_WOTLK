local root=assert(arg[1],"addon root required")

local function fail(message) error(message,2) end
local captured={}
ZygorGuidesViewer={}
function ZygorGuidesViewer:RegisterGuide(title,options,rawdata)
	local guide={title=title,options=options or {},rawdata=rawdata or ""}
	captured[title]=guide
	return guide
end

local questTitle="Events Guides\\Brewfest\\Brewfest Quests"
local dailyTitle="Events Guides\\Brewfest\\Brewfest Dailies"
local factionGuides={}
local function captureFaction(faction,file)
	captured={}
	UnitFactionGroup=function() return faction end
	assert(loadfile(root..file))()
	factionGuides[faction]={quest=captured[questTitle],daily=captured[dailyTitle]}
end
captureFaction("Horde","/Guides/Retail/Events/ZygorEventsHordeCLASSIC.lua")
captureFaction("Alliance","/Guides/Retail/Events/ZygorEventsAllianceCLASSIC.lua")

for faction,guides in pairs(factionGuides) do
	if not guides.quest or not guides.daily then fail(faction.." Brewfest guides were not captured") end
	if guides.quest.rawdata:find("goaltype",1,true) then fail(faction.." quest guide still uses undefined goaltype()") end
	if guides.quest.rawdata:find("Blackrock Depths/0 0,0",1,true) then fail(faction.." quest guide still uses the 0,0 dungeon entry") end
	if guides.daily.rawdata:find("Blackrock Depths/0 0,0",1,true) then fail(faction.." daily guide still uses the 0,0 dungeon entry") end
	if not guides.quest.rawdata:find('complete zone("Blackrock Depths")',1,true) then fail(faction.." quest guide lacks zone completion") end
	if not guides.daily.rawdata:find('complete zone("Blackrock Depths")',1,true) then fail(faction.." daily guide lacks zone completion") end
end
if not factionGuides.Horde.quest.rawdata:find("Another Year, Another Souvenir.##13931",1,true) then fail("Horde current souvenir quest missing") end
if not factionGuides.Alliance.quest.rawdata:find("Another Year, Another Souvenir.##13932",1,true) then fail("Alliance current souvenir quest missing") end
if factionGuides.Horde.quest.rawdata:find("Goldark Snipehunter##23486",1,true) then fail("Horde guide still uses the Alliance Brewfest NPC") end
if not factionGuides.Horde.quest.rawdata:find("Glodrak Huntsniper##24657",1,true) then fail("Horde Brewfest NPC is missing") end
for faction,guides in pairs(factionGuides) do
	if not guides.quest.rawdata:find("Alcohol-Free Brewfest Sampler##33096 |n",1,true) then fail(faction.." sampler acquisition check is missing") end
	if not guides.quest.rawdata:find("Self-Turning and Oscillating Utility Target##24108",1,true) then fail(faction.." S.T.O.U.T. target is missing") end
	if not guides.quest.rawdata:find("Click Here Once 3 Kegs Have Been Delivered |confirm |or",1,true) then fail(faction.." ram-delivery fallback is missing") end
end
for _,route in ipairs({
	"click Orb of Translocation |goto Undercity/0 54.90,11.30",
	"click Orb of Translocation |goto Silvermoon City/0 49.50,14.80",
	"Ride the Zeppelin to Durotar",
	"Fly to Thunder Bluff",
	"Fly to Orgrimmar",
}) do
	if not factionGuides.Horde.quest.rawdata:find(route,1,true) then fail("Horde travel route is missing: "..route) end
end

tinsert=table.insert
loadstring=loadstring or load
if not setfenv then
	function setfenv(func,environment)
		local index=1
		while true do
			local name=debug.getupvalue(func,index)
			if name=="_ENV" then debug.upvaluejoin(func,index,function() return environment end,1) break
			elseif not name then break end
			index=index+1
		end
		return func
	end
end
function TableKeys(tbl) local keys={} for key in pairs(tbl or {}) do keys[#keys+1]=key end return keys end
function ZygorGuidesViewer_L() return setmetatable({coords="%s,%s"},{__index=function(_,key) return key end}) end

local ZGV=ZygorGuidesViewer
ZGV.BZL={}
ZGV.BSZL={}
ZGV.BFL={}
ZGV.StandingNamesEngRev={}
ZGV.dailyQuests={}
ZGV.instantQuests={}
ZGV.completedQuests={}
ZGV.StepProto_mt={}
ZGV.GoalProto_mt={}
ZGV.db={char={fakelevel=0}}
function ZGV:GetQuestName() return nil end
function ZGV:RaceClassMatch() return true end
GetRealZoneText=function() return "Durotar" end
GetZoneText=function() return "Durotar" end
GetSubZoneText=function() return "" end
GetMinimapZoneText=function() return "" end
UnitLevel=function() return 80 end
GetNumQuestLogEntries=function() return 0 end
GetItemCount=function() return 0 end

assert(loadfile(root.."/Parser.lua"))()
for faction,guides in pairs(factionGuides) do
	for kind,guide in pairs(guides) do
		local parsed,err,line,linedata=ZGV:ParseEntry(guide.rawdata)
		if not parsed then fail(("%s %s guide parse failed: %s (line %s: %s)"):format(faction,kind,tostring(err),tostring(line),tostring(linedata))) end
	end
end

print("Brewfest guide regression passed")
