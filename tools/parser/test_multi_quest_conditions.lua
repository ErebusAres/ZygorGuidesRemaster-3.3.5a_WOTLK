-- Regression for imported guide conditions that pass alternative quest IDs.
-- Usage: lua tools/parser/test_multi_quest_conditions.lua <addon directory>
local root = arg[1] or "ZygorGuidesViewerRM"
local compile = loadstring or load
tinsert, tremove = table.insert, table.remove
loadstring = loadstring or load
if not setfenv then
	function setfenv(func, environment)
		local index = 1
		while true do
			local name = debug.getupvalue(func, index)
			if name == "_ENV" then debug.upvaluejoin(func, index, function() return environment end, 1) break
			elseif not name then break end
			index = index + 1
		end
		return func
	end
end

local function read(path)
	local file = assert(io.open(path, "rb"))
	local source = file:read("*a")
	file:close()
	return (source:gsub("^\239\187\191", ""))
end

function TableKeys(tbl) local keys = {} for key in pairs(tbl or {}) do keys[#keys + 1] = key end return keys end
function ZygorGuidesViewer_L() return setmetatable({coords = "%s,%s"}, {__index = function(_, key) return key end}) end

ZygorGuidesViewer = {
	BZL = {}, BSZL = {}, BFL = {}, StandingNamesEngRev = {}, dailyQuests = {}, instantQuests = {},
	completedQuests = {}, questsbyid = {}, StepProto_mt = {}, GoalProto_mt = {}, db = {profile = {}, char = {}},
}
local ZGV = ZygorGuidesViewer
function ZGV:GetQuestName() return nil end
function ZGV:RaceClassMatch() return true end
function ZGV:RegisterGuide() end

local questLog = {}
GetNumQuestLogEntries = function() return #questLog end
GetQuestLogTitle = function(index)
	local quest = questLog[index]
	return "Test quest", nil, nil, nil, quest.header, nil, nil, quest.daily, quest.id
end
GetRealZoneText = function() return "Test Zone" end
GetZoneText = GetRealZoneText
GetSubZoneText = function() return "" end
GetMinimapZoneText = GetSubZoneText
UnitRace = function() return "Human", "Human" end
UnitClass = function() return "Paladin", "PALADIN" end
UnitFactionGroup = function() return "Alliance" end
UnitLevel = function() return 80 end
IsQuestFlaggedCompleted = function(id) return ZGV.completedQuests[id] or false end

strmatch = string.match
assert(loadfile(root .. "/Libs/LibStub/LibStub.lua"))()
C_QuestLog = {}
assert(loadfile(root .. "/Libs/LibRover-1.0/LibRover_Compat.lua"))()
assert(compile(read(root .. "/Parser.lua"), "@Parser.lua"))()
local env = assert(ZGV.ConditionEnv)

ZGV.completedQuests = {[20] = true, [30] = true}
assert(env.completedq(10,20,30) == true, "completedq must match any supplied quest ID")
assert(env.completedq(10,11,12) == false, "completedq matched an incomplete alternative")
assert(env.completedallq(20,30) == true, "completedallq rejected completed quests")
assert(env.completedallq(20,31) == false, "completedallq accepted an incomplete quest")
assert(env.countcompletedq(10,20,30) == 2, "countcompletedq returned the wrong count")

questLog = {{id=101,daily=false}, {id=103,daily=true}, {id=999,header=true}}
assert(env.haveq(100,101,102) == true, "haveq must match any supplied quest ID")
assert(env.haveq(100,102) == false, "haveq matched a quest outside the log")
assert(env.haveallq(101,103) == true, "haveallq rejected quests in the log")
assert(env.haveallq(101,102) == false, "haveallq accepted a missing quest")
assert(env.counthaveq(100,101,102,103) == 2, "counthaveq returned the wrong count")
assert(not env.havequest(999) and not env.havequest(nil), "headers and absent IDs are not quests")
assert(C_QuestLog.IsOnQuest(103), "routing shim should recognize an active daily")

ZGV.questsbyid[10566] = {complete = false, goals = {{num = 1, needed = 1, complete = true}, {num = 0, needed = 1, complete = false}}}
assert(env.completedq("10566/1") == true, "completedq did not recognize a completed objective")
assert(env.completedq("10566/2") == false, "completedq accepted an incomplete objective")

completedq, completedallq, countcompletedq, haveq, haveallq, counthaveq = nil,nil,nil,nil,nil,nil
assert(compile(read(root .. "/Guides/Retail/RetailCompat.lua"), "@RetailCompat.lua"))()
assert(completedq(10,20) == true, "global completedq wrapper lost alternative-ID behavior")
assert(countcompletedq(10,20,30) == 2, "global countcompletedq wrapper returned the wrong count")
assert(haveq(100,103) == true, "global haveq wrapper lost alternative-ID behavior")
assert(havequest(101) and not havequest(999), "global havequest must use the same lookup")

local main = read(root .. "/ZygorGuidesViewer.lua")
local first = assert(main:find("-- C_QuestLog shim for 3.3.5a", 1, true))
local last = assert(main:find("-- Dungeons table", first, true))
C_QuestLog = nil
assert(compile(main:sub(first, last-1), "@viewer quest shim"))()
assert(C_QuestLog.IsOnQuest(101) and C_QuestLog.IsOnQuest(103))
assert(not C_QuestLog.IsOnQuest(999) and not C_QuestLog.IsOnQuest(nil))

print("PASS: multi-quest and objective condition helpers")
