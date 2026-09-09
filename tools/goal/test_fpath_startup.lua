-- Regression for flight-path goal evaluation before deferred taxi startup.
-- Usage: lua tools/goal/test_fpath_startup.lua <addon directory>
local addon = assert(arg[1], "pass the addon directory")

ZygorGuidesViewer = {
	L = {},
	db = { char = {} },
	recentlyCompletedGoals = {},
	recentlyStickiedGoals = {},
}
QUEST_MONSTERS_KILLED = "Enemies slain: %d/%d"

assert(loadfile(addon.."/Goal.lua"))()
local ZGV = ZygorGuidesViewer
local goal = setmetatable({ action="fpath", param="Orgrimmar" }, ZGV.GoalProto_mt)

local ok,complete,possible = pcall(function() return goal:IsComplete() end)
assert(ok, "flight-path goal failed before deferred startup: "..tostring(complete))
assert(complete==false and possible==true, "missing startup taxi data should leave the flight path incomplete")

ZGV.db.char.taxis = { Orgrimmar=true }
complete,possible = goal:IsComplete()
assert(complete==true and possible==true, "known flight path should complete after taxi startup")

print("Flight-path startup regression passed")
