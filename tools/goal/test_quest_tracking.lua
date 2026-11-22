local root = (arg and arg[1]) or "."
local rows, now = {}, 0
local accepted, lost = {}, {}

GetTime = function() return now end
GetQuestLogTitle = function(index)
	local row = rows[index]
	if row then return row.title, 12, nil, nil, row.header, row.collapsed, nil, false, row.id end
end
GetNumQuestLeaderBoards = function(index)
	if rows[index].count == "unavailable" then return end
	return rows[index].count
end
GetQuestLogLeaderBoard = function(index, questIndex)
	assert(index == 1 and rows[questIndex].count == 1)
	return "Wolves slain: 2/5", "monster", false
end
table.wipe = function(t)
	for key in pairs(t) do t[key] = nil end
end
ERR_QUEST_COMPLETE_S = "%s completed."
QUEST_MONSTERS_KILLED = "%s: %d/%d"
QUEST_ITEMS_NEEDED = QUEST_MONSTERS_KILLED
ZygorGuidesViewer = {
	startups = {},
	recentlyAcceptedQuests = {},
	Debug = function() end,
	NewQuestEvent = function(_, title, id) accepted[#accepted + 1] = {title, assert(id)} end,
	LostQuestEvent = function(_, title, id) lost[#lost + 1] = {title, assert(id)} end,
}
assert(loadfile(root.."/QuestTracking.lua"))()
local viewer = ZygorGuidesViewer
local function poll()
	now = now + 2
	viewer:QuestTracking_SafetyPoll()
end

rows = {
	{title = "Collapsed header", header = true, collapsed = true},
	{title = "[12D+] Hunt", id = 101, count = 1},
	{title = "Count not ready", id = 102},
	{title = "Count unavailable", id = 103, count = "unavailable"},
	{title = "ID not ready", count = 0},
}
poll()
assert(#viewer.quests == 4 and #accepted == 3, "headers and missing IDs must not fire acceptance events")
local hunt = assert(viewer.questsbyid[101])
assert(hunt.title == "Hunt", "strip the level prefix without changing the quest name")
assert(hunt.goals[1].num == 2 and hunt.goals[1].needed == 5)
assert(not next(viewer.questsbyid[102].goals) and not next(viewer.questsbyid[103].goals))
assert(viewer.quests[4].title == "ID not ready", "retain an unindexed row in the visible snapshot")

rows[5] = nil
poll()
assert(#viewer.quests == 3 and #lost == 0, "disappearing unindexed rows must not fire loss events")

rows[4] = nil
viewer.recentlyAcceptedQuests[103] = true
viewer.recentlyAcceptedQuests["Count unavailable"] = true
poll()
assert(#lost == 1 and lost[1][2] == 103, "identified rows still fire normal loss events")
assert(not viewer.recentlyAcceptedQuests[103] and not viewer.recentlyAcceptedQuests["Count unavailable"])

rows[4] = {title = "ID not ready", count = 0}
poll()
rows[4].id = 104
poll()
assert(viewer.questsbyid[104] and #accepted == 4 and accepted[4][2] == 104, "accept once the ID becomes available")

print("PASS: quest tracking tolerates missing objective counts and IDs")
