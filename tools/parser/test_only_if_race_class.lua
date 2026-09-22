-- Regression for "|only if" conditions that use race, class or faction names as plain words.
-- Before: "|only if Paladin" compiled to a Lua expression whose only variable (Paladin) did not exist in the condition
-- environment, so it was nil: the step was hidden (and auto-skipped) for EVERY character, even Paladins, and
-- "|only if not Paladin" was true for everybody. Guides such as "Paladin Class Quests" lost most of their steps.
-- Usage: lua tools/parser/test_only_if_race_class.lua <addon directory>
local root = arg[1] or "ZygorGuidesViewerRM"
local compile = loadstring or load
tinsert, tremove = table.insert, table.remove

-- Lua 5.1 (the game) has loadstring and setfenv; newer Lua does not, so give it stand-ins to run the test anywhere
loadstring = loadstring or load
if not setfenv then
	function setfenv(f, env)
		local i = 1
		while true do
			local name = debug.getupvalue(f, i)
			if name == "_ENV" then debug.upvaluejoin(f, i, function() return env end, 1) break
			elseif not name then break end
			i = i + 1
		end
		return f
	end
end

local function read(path)
	local file = assert(io.open(path, "rb"))
	local text = file:read("*a")
	file:close()
	return (text:gsub("^\239\187\191", ""))
end

function TableKeys(tbl) local keys = {} for key in pairs(tbl or {}) do keys[#keys + 1] = key end return keys end
function ZygorGuidesViewer_L() return setmetatable({ coords = "%s,%s" }, { __index = function(_, key) return key end }) end
GetRealZoneText = function() return "Test Zone" end

ZygorGuidesViewer = {
	BZL = {}, BSZL = {}, BFL = {}, StandingNamesEngRev = {}, dailyQuests = {}, instantQuests = {}, completedQuests = {},
	registeredguides = {}, StepProto_mt = {}, GoalProto_mt = {}, db = { profile = {}, char = {} },
}
local ZGV = ZygorGuidesViewer

-- the player being simulated (UnitRace/UnitClass return the localized name first and the token second)
local player = { race = "Human", class = "PALADIN", faction = "Alliance", level = 30 }
UnitRace = function() return player.race, player.race end
UnitClass = function() return player.class, player.class end
UnitFactionGroup = function() return player.faction end
UnitLevel = function() return player.level end

-- same rule as ZygorGuidesViewer:RaceClassMatch (race, class or "race class")
function ZGV:RaceClassMatch(fit)
	if type(fit) == "table" then for _, v in ipairs(fit) do if self:RaceClassMatch(v) then return true end end return false end
	local race, class = player.race:upper(), player.class:upper()
	fit = fit:upper()
	local neg = false
	if fit:sub(1, 1) == "!" then neg = true; fit = fit:sub(2) end
	local ret = (race == fit or class == fit or race .. " " .. class == fit)
	if neg then return not ret else return ret end
end
function ZGV:GetQuestName() return nil end
function ZGV:EnsureGuideParsed(guide) return guide, true end

assert(compile(read(root .. "/Parser.lua"), "@Parser.lua"))()

-- what Step:AreRequirementsMet() / Goal:IsVisible() decide
local function stepVisible(step)
	if step.requirement and not ZGV:RaceClassMatch(step.requirement) then return false end
	if step.condition_visible and not step.condition_visible() then return false end
	return true
end

local function parseStep(line)
	local parsed, err = ZGV:ParseEntry("step\n.' Some text\n" .. line .. "\n")
	assert(parsed, "cannot parse '" .. line .. "': " .. tostring(err))
	return parsed.steps[1]
end

local function parseGoal(line)
	local parsed, err = ZGV:ParseEntry("step\n" .. line .. "\n")
	assert(parsed, "cannot parse '" .. line .. "': " .. tostring(err))
	return parsed.steps[1].goals[1]
end

local function goalVisible(goal)
	if goal.condition_visible and not goal.condition_visible() then return false end
	return true
end

local players = {
	human_paladin = { race = "Human", class = "PALADIN", faction = "Alliance", level = 30 },
	dwarf_warrior = { race = "Dwarf", class = "WARRIOR", faction = "Alliance", level = 30 },
	orc_warrior   = { race = "Orc", class = "WARRIOR", faction = "Horde", level = 30 },
	undead_priest = { race = "Scourge", class = "PRIEST", faction = "Horde", level = 30 },
	be_deathknight = { race = "BloodElf", class = "DEATHKNIGHT", faction = "Horde", level = 80 },
	nightelf_druid = { race = "NightElf", class = "DRUID", faction = "Alliance", level = 10 },
}

-- condition text -> which of the players above must see the step
local cases = {
	{ "|only if Paladin",                        { human_paladin = true } },
	{ "|only if Warrior",                        { dwarf_warrior = true, orc_warrior = true } },
	{ "|only if Human",                          { human_paladin = true } },
	{ "|only if NightElf",                       { nightelf_druid = true } },
	{ "|only if Undead",                         { undead_priest = true } },
	{ "|only if BloodElf",                       { be_deathknight = true } },
	{ "|only if DeathKnight",                    { be_deathknight = true } },
	{ "|only if Alliance",                       { human_paladin = true, dwarf_warrior = true, nightelf_druid = true } },
	{ "|only if Horde",                          { orc_warrior = true, undead_priest = true, be_deathknight = true } },
	{ "|only if Paladin or Warrior",             { human_paladin = true, dwarf_warrior = true, orc_warrior = true } },
	{ "|only if Warrior and level >= 20",        { dwarf_warrior = true, orc_warrior = true } },
	{ "|only if Warrior and level >= 40",        {} },
	{ "|only if not Paladin",                    { dwarf_warrior = true, orc_warrior = true, undead_priest = true, be_deathknight = true, nightelf_druid = true } },
	{ "|only if not Horde",                      { human_paladin = true, dwarf_warrior = true, nightelf_druid = true } },
	-- forms that already worked must keep working
	{ "|only if Human Paladin",                  { human_paladin = true } },
	{ "|only if Dwarf Warrior",                  { dwarf_warrior = true } },
	{ "|only if !Paladin",                       { dwarf_warrior = true, orc_warrior = true, undead_priest = true, be_deathknight = true, nightelf_druid = true } },
	{ "|only if Paladin,Warrior",                { human_paladin = true, dwarf_warrior = true, orc_warrior = true } },
	{ "|only if level >= 20",                    { human_paladin = true, dwarf_warrior = true, orc_warrior = true, undead_priest = true, be_deathknight = true } },
}

local names = {}
for name in pairs(players) do names[#names + 1] = name end
table.sort(names)

for _, case in ipairs(cases) do
	local line, expected = case[1], case[2]
	for _, name in ipairs(names) do
		player = players[name]
		local step = parseStep(line)           -- parsed for this player, like a guide that is (re)parsed at login
		local got = stepVisible(step) and true or false
		local want = expected[name] and true or false
		assert(got == want, ("'%s' for %s: expected %s, got %s"):format(line, name, tostring(want), tostring(got)))
	end
end

-- the same words on a goal line hide only that goal
player = players.human_paladin
assert(goalVisible(parseGoal("talk Brother Wilhelm##927 |only if Paladin")) == true, "goal for Paladins must be visible to a Paladin")
assert(goalVisible(parseGoal("talk Brother Wilhelm##927 |only if Warrior")) == false, "goal for Warriors must be hidden from a Paladin")
player = players.orc_warrior
assert(goalVisible(parseGoal("talk Auctioneer Thathung##8673 |only if Horde")) == true, "goal for the Horde must be visible to a Horde player")
assert(goalVisible(parseGoal("talk Auctioneer Redmuse##8720 |only if Alliance")) == false, "goal for the Alliance must be hidden from a Horde player")

print("PASS: race, class and faction names work as plain words in |only if conditions")
