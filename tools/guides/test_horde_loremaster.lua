local root = arg[1] or "ZygorGuidesViewerRM"

local function fail(message)
	error(message,2)
end

local captured={}
local byTitle={}

ZygorGuidesViewer={IMAGESDIR=""}
function ZygorGuidesViewer:RegisterGuide(title,options,rawdata)
	if type(options)=="string" and rawdata==nil then
		rawdata=options
		options={}
	end
	local guide={title=title,options=options or {},rawdata=rawdata or ""}
	captured[#captured+1]=guide
	byTitle[title]=guide
	return guide
end

UnitFactionGroup=function() return "Horde" end
level=80
achieved=function() return false end
raceclass=function() return true end

assert(loadfile(root.."/Guides/Retail/Leveling/ZygorLevelingHordeWOTLK.lua"))()
assert(loadfile(root.."/Guides/Dailies/ZygorDailiesHorde.lua"))()

local before=#captured
assert(loadfile(root.."/Guides/Achievements/H-Loremaster-Northrend.lua"))()
local added=#captured-before
if added~=8 then fail("expected 8 Horde Loremaster guides, got "..added) end

local expected={
	["Borean Tundra"]={achievement=1358,required=150,minimumTurnins=150},
	["Howling Fjord"]={achievement=1356,required=105,minimumTurnins=105},
	["Dragonblight"]={achievement=1359,required=130,minimumTurnins=130},
	["Grizzly Hills"]={achievement=1357,required=85,minimumTurnins=85},
	["Zul'Drak"]={achievement=36,required=100,minimumTurnins=100},
	["Sholazar Basin"]={achievement=39,required=75,minimumTurnins=75},
	["The Storm Peaks"]={achievement=38,required=100,minimumTurnins=100},
	["Icecrown"]={achievement=40,required=140,minimumTurnins=140},
}

local seen={}
for index=before+1,#captured do
	local guide=captured[index]
	local zone=guide.title:match("Horde Loremaster Guides\\Northrend\\%[%d+%] (.+)$")
	local want=zone and expected[zone]
	if not want then fail("unexpected Loremaster title: "..guide.title) end
	seen[zone]=true
	if guide.options.faction~="horde" or guide.options.type~="achievements" then
		fail(zone.." has incorrect registration metadata")
	end

	local sourceTitle=guide.rawdata:match('leechsteps "(.-)"')
	local source=sourceTitle and byTitle[sourceTitle]
	if not source then fail(zone.." references a missing source guide: "..tostring(sourceTitle)) end

	local unique={}
	for questID in source.rawdata:gmatch("turnin[^\n]-##(%d+)") do unique[tonumber(questID)]=true end
	local count=0
	for _ in pairs(unique) do count=count+1 end
	if count<want.minimumTurnins then
		fail(("%s source has %d unique turn-ins; expected at least %d"):format(zone,count,want.minimumTurnins))
	end
	if not guide.rawdata:find("|achieve "..want.achievement,1,true) then
		fail(zone.." does not track achievement "..want.achievement)
	end
	if not guide.rawdata:find("Complete "..want.required.." quests",1,true) then
		fail(zone.." does not state the Horde quest threshold")
	end
end

for zone in pairs(expected) do
	if not seen[zone] then fail("missing Loremaster guide for "..zone) end
end

-- Parse every composed guide through the real parser. This verifies that the
-- existing full-zone source data and the restored leechsteps directive work
-- together, rather than only checking registration strings and quest totals.
tinsert=table.insert
loadstring=loadstring or load
if not setfenv then
	function setfenv(func,environment)
		local index=1
		while true do
			local name=debug.getupvalue(func,index)
			if name=="_ENV" then
				debug.upvaluejoin(func,index,function() return environment end,1)
				break
			elseif not name then
				break
			end
			index=index+1
		end
		return func
	end
end
function TableKeys(tbl)
	local keys={}
	for key in pairs(tbl or {}) do keys[#keys+1]=key end
	return keys
end
function ZygorGuidesViewer_L()
	return setmetatable({coords="%s,%s"},{__index=function(_,key) return key end})
end

ZygorGuidesViewer.BZL={}
ZygorGuidesViewer.BSZL={}
ZygorGuidesViewer.BFL={}
ZygorGuidesViewer.StandingNamesEngRev={}
ZygorGuidesViewer.dailyQuests={}
ZygorGuidesViewer.instantQuests={}
ZygorGuidesViewer.StepProto_mt={}
ZygorGuidesViewer.GoalProto_mt={}
function ZygorGuidesViewer:GetQuestName() return nil end
function ZygorGuidesViewer:RaceClassMatch() return true end
function ZygorGuidesViewer:GetGuideByTitle(title) return byTitle[title] end
function ZygorGuidesViewer:EnsureGuideParsed(guide)
	if guide.parsed then return guide,true end
	if guide._parsing then return guide,false end
	guide._parsing=true
	local parsed,err,line,linedata=self:ParseEntry(guide.rawdata)
	guide._parsing=nil
	if not parsed then
		guide.last_error={err,line,linedata}
		return guide,false
	end
	for key,value in pairs(parsed) do guide[key]=value end
	guide.parsed=true
	return guide,true
end
GetRealZoneText=function() return "Test Zone" end

assert(loadfile(root.."/Parser.lua"))()
for index=before+1,#captured do
	local guide=captured[index]
	local parsed,ok=ZygorGuidesViewer:EnsureGuideParsed(guide)
	if not ok then
		local detail=guide.last_error or {}
		fail(("could not parse %s: %s (line %s: %s)"):format(
			guide.title,tostring(detail[1]),tostring(detail[2]),tostring(detail[3])))
	end
	if not parsed.steps or #parsed.steps<2 then
		fail(guide.title.." did not inherit its full-zone source steps")
	end
end

print("Horde Northrend Loremaster coverage regression passed")
