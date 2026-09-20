-- AreaGuide.lua
-- 1) Detects the area the player is in (outdoor zone or dungeon/raid instance, including entering through the
--    Dungeon Finder) and, after the player has settled there, ASKS whether the matching guide should be loaded.
--    It never prompts while the player is on a taxi / flying, in combat or dead, so crossing several zones on a
--    flight does not spam the player; only the area the player actually stops in is offered.
-- 2) Whenever a guide is loaded without an explicit step (guide menu, Guide Browser, the prompt above) it finds the
--    step matching the player's real progress (completed quests, level, dungeon bosses already killed...) and starts
--    there instead of on step 1. See AreaGuide:ResolveStartStep(), called from ZygorGuidesViewer:SetGuide().

local ZGV = ZygorGuidesViewer
if not ZGV then return end

local AG = {}
ZGV.AreaGuide = AG

local strlower, strfind, strmatch, tinsert = string.lower, string.find, string.match, table.insert
local ipairs, pairs, type, tonumber, pcall = ipairs, pairs, type, tonumber, pcall
local GetTime, time = GetTime, time

local SETTLE_ZONE = 10        -- seconds the player must stay in a zone before being asked
local SETTLE_DUNGEON = 3      -- same, for instances
local AFTER_AIR = 4           -- seconds after landing / leaving a taxi before asking
local MAX_LEVEL_DIST = 3      -- a zone guide is only suggested when the player is within this many levels of its range
local RUN_TIMEOUT = 1800      -- a dungeon run (boss kill memory) is forgotten after being out for this long
local SCAN_BUDGET_MS = 300    -- upper bound for the progress scan

local function Profile()
	return ZGV.db and ZGV.db.profile
end

-- ------------------------------------------------------------------------------------------------------------------
-- Name helpers
-- ------------------------------------------------------------------------------------------------------------------
local function Norm(s)
	if type(s) ~= "string" then return "" end
	s = strlower(s)
	s = s:gsub("^the ", "")
	s = s:gsub("[^%w]", "")
	return s
end

-- Instance names as a Portuguese (pt-BR) client reports them -> English name used by the guide titles.
-- LibBabble-Zone only translates outdoor zones, so instance names need their own table. Source: the official pt-BR
-- names shipped with Questie (Translations/Zones/Dungeons.lua + Raids.lua). Instances missing here are still found by
-- the map file name fallback or by the alias the addon learns (see AreaGuide:LearnAlias); "/zygorarea" prints what the
-- client actually reports.
local DUNGEON_PT = {
	["Ahn'Qiraj"] = "Ahn'Qiraj", ["Auchenai Crypts"] = "Catacumbas Auchenai", ["Black Temple"] = "Templo Negro",
	["Blackfathom Deeps"] = "Profundezas Negras", ["Blackrock Depths"] = "Abismo Rocha Negra",
	["Blackrock Spire"] = "Pico da Rocha Negra", ["Blackwing Lair"] = "Covil Asa Negra",
	["Dire Maul"] = "Gládio Cruel", ["Drak'Tharon Keep"] = "Bastilha Drak'Tharon", ["Gnomeregan"] = "Gnomeregan",
	["Gruul's Lair"] = "Covil de Gruul", ["Hellfire Ramparts"] = "Muralha Fogo do Inferno", ["Hyjal Summit"] = "Pico Hyjal",
	["Icecrown Citadel"] = "Cidadela da Coroa de Gelo", ["Karazhan"] = "Karazhan", ["Magisters' Terrace"] = "Terraço dos Magísteres",
	["Magtheridon's Lair"] = "Covil de Magtheridon", ["Mana-Tombs"] = "Tumbas de Mana", ["Maraudon"] = "Maraudon",
	["Molten Core"] = "Núcleo Derretido", ["Naxxramas"] = "Naxxramas", ["Old Hillsbrad Foothills"] = "Antigo Contraforte de Eira dos Montes",
	["Onyxia's Lair"] = "Covil da Onyxia", ["Ragefire Chasm"] = "Cavernas Ígneas", ["Razorfen Downs"] = "Urzal dos Mortos",
	["Razorfen Kraul"] = "Urzal dos Tuscos", ["Ruins of Ahn'Qiraj"] = "Ruínas de Ahn'Qiraj", ["Scarlet Monastery"] = "Monastério Escarlate",
	["Scholomance"] = "Scolomântia", ["Serpentshrine Cavern"] = "Caverna do Serpentário", ["Sethekk Halls"] = "Salões dos Sethekk",
	["Shadow Labyrinth"] = "Labirinto Soturno", ["Shadowfang Keep"] = "Bastilha da Presa Negra", ["Stratholme"] = "Stratholme",
	["Sunwell Plateau"] = "Platô da Nascente do Sol", ["Tempest Keep"] = "Bastilha da Tormenta", ["The Arcatraz"] = "Arcatraz",
	["The Black Morass"] = "Lamaçal Negro", ["The Blood Furnace"] = "Fornalha de Sangue", ["The Botanica"] = "Jardim Botânico",
	["The Deadmines"] = "Minas Mortas", ["The Mechanar"] = "Mecanar", ["The Nexus"] = "Nexus", ["The Shattered Halls"] = "Salões Despedaçados",
	["The Slave Pens"] = "Pátio dos Escravos", ["The Steamvault"] = "Câmara dos Vapores", ["The Stockade"] = "O Cárcere",
	["The Temple of Atal'Hakkar"] = "Templo de Atal'Hakkar", ["The Underbog"] = "Brejo Oculto", ["Uldaman"] = "Uldaman",
	["Utgarde Keep"] = "Bastilha Utgarde", ["Wailing Caverns"] = "Caverna Ululante", ["Zul'Aman"] = "Zul'Aman",
	["Zul'Farrak"] = "Zul'Farrak", ["Zul'Gurub"] = "Zul'Gurub",
}
local DUNGEON_PT_REVERSE = {}
for en, pt in pairs(DUNGEON_PT) do DUNGEON_PT_REVERSE[Norm(pt)] = en end

-- Outdoor zone name (any client language) -> English. Uses the LibBabble reverse table.
local function ToEnglish(name)
	local BZR = ZGV.BZR
	if BZR then
		local ok, en = pcall(function() return BZR[name] end)
		if ok and type(en) == "string" and en ~= "" then return en end
	end
	return name
end

-- Instance name (any client language) -> English.
local function InstanceToEnglish(name)
	local en = DUNGEON_PT_REVERSE[Norm(name)]
	if en then return en end
	return ToEnglish(name)
end

local function IsDungeonTitle(title)
	return type(title) == "string" and (title:find("^Dungeon Guides\\") or title:find("^Ding80's Quest Instance Guides\\")) and true or false
end

-- starter guides are named after the race, not the zone
local ZONE_ALIAS = {
	["elwynnforest"] = { "humanstarter" },
	["dunmorogh"] = { "dwarfgnomestarter" },
	["teldrassil"] = { "nightelfstarter" },
	["azuremystisle"] = { "draeneistarter" },
	["plaguelandsthescarletenclave"] = { "deathknightstarter" },
}

local RACE_WORDS = {
	{ "night elf", "NightElf" }, { "blood elf", "BloodElf" }, { "human", "Human" }, { "dwarf", "Dwarf" },
	{ "gnome", "Gnome" }, { "draenei", "Draenei" }, { "undead", "Scourge" }, { "tauren", "Tauren" },
	{ "orc", "Orc" }, { "troll", "Troll" },
}

-- ------------------------------------------------------------------------------------------------------------------
-- Guide index (built lazily from ZGV.registeredguides, rebuilt if more guides get registered)
-- ------------------------------------------------------------------------------------------------------------------
local function ParseZoneEntry(guide)
	local title = guide.title
	local short = title:match("([^\\]+)$")
	if not short then return end
	local base = (short:gsub("%s*%[.-%]%s*$", ""))
	local name, lo, hi = base:match("^(.-)%s*%((%d+)%-(%d+)%)$")
	if not name then
		-- zone guides without a level range in the title (for example "Extra Zones\Westfall"): kept as candidates,
		-- they only match when their name is the zone's name, and rank below any guide that fits the player's level
		name = base
		lo, hi = nil, nil
	end
	if name == "" then return end

	local entry = { guide = guide, name = name, zoneNorm = Norm(name), lo = tonumber(lo), hi = tonumber(hi), rangeless = (lo == nil) }
	local lower = strlower(short)
	if lower:find("starter") then
		local races
		for _, rw in ipairs(RACE_WORDS) do
			if lower:find(rw[1], 1, true) then
				races = races or {}
				races[rw[2]] = true
			end
		end
		entry.races = races
	end
	if lower:find("death knight", 1, true) then entry.class = "DEATHKNIGHT" end
	return entry
end

local function ParseDungeonEntry(guide)
	local title = guide.title
	local short = title:match("([^\\]+)$")
	if not short then return end
	local lo, hi = short:match("%((%d+)%-(%d+)%)%s*$")
	if not lo then lo = short:match("%((%d+)%)%s*$") end
	local full = short:gsub("%s*%(%d+%-?%d*%)%s*$", "")
	local isquests = false
	if full:find("%sQuests$") then
		isquests = true
		full = full:gsub("%sQuests$", "")
	end
	local main = full:gsub("%s*%b()", ""):gsub("%s+%-%s+.*$", "")
	local wing = full:sub(#main + 1)
	local words = {}
	for w in wing:gmatch("%a+") do
		if #w >= 4 then tinsert(words, strlower(w)) end
	end
	-- "Dire Maul East/North/West", "Stratholme - Live": the wing name is what follows the instance name
	local extra = full:match("^Dire Maul%s+(.+)$")
	if extra then
		for w in extra:gmatch("%a+") do tinsert(words, strlower(w)) end
	end
	return {
		guide = guide,
		mainNorm = Norm(main),
		wingWords = words,
		lo = tonumber(lo),
		hi = tonumber(hi or lo),
		quests = isquests,
		danaton = title:find("^Ding80") and true or false,
	}
end

local function BuildIndex()
	local guides = ZGV.registeredguides
	if not guides then return false end
	if AG.indexCount == #guides and AG.zones then return true end
	AG.indexCount = #guides
	AG.zones, AG.dungeons, AG.entryByTitle = {}, {}, {}
	for _, g in ipairs(guides) do
		local title = g.title
		if type(title) == "string" then
			local e
			if title:find("^Leveling Guides\\") then
				e = ParseZoneEntry(g)
				if e then tinsert(AG.zones, e) end
			elseif IsDungeonTitle(title) then
				e = ParseDungeonEntry(g)
				if e then tinsert(AG.dungeons, e) end
			end
			if e then AG.entryByTitle[title] = e end
		end
	end
	return true
end

local function LevelDistance(entry, level)
	if not entry.lo then return 0 end
	if level < entry.lo then return entry.lo - level end
	if level > entry.hi then return level - entry.hi end
	return 0
end

local function RaceClassOK(entry)
	if entry.races then
		local _, token = UnitRace("player")
		if not entry.races[token] then return false end
	end
	if entry.class then
		local _, class = UnitClass("player")
		if class ~= entry.class then return false end
	end
	return true
end

function AG:FindZoneGuide(zoneName)
	if not BuildIndex() then return end
	local zn = Norm(ToEnglish(zoneName))
	if zn == "" then return end
	local alias = ZONE_ALIAS[zn]
	local level = UnitLevel("player") or 1
	local best, bestDist, bestSpan
	for _, e in ipairs(AG.zones) do
		local match = (e.zoneNorm == zn)
		if not match and alias then
			for _, a in ipairs(alias) do
				if e.zoneNorm == a then match = true break end
			end
		end
		if match and RaceClassOK(e) then
			local dist, span
			if e.rangeless then
				dist, span = MAX_LEVEL_DIST, 999          -- always eligible, but loses to a guide that fits the level
			else
				dist, span = LevelDistance(e, level), (e.hi or 0) - (e.lo or 0)
			end
			if dist <= MAX_LEVEL_DIST then
				if not best or dist < bestDist or (dist == bestDist and span < bestSpan) then
					best, bestDist, bestSpan = e, dist, span
				end
			end
		end
	end
	return best and best.guide
end

-- Map art file name of the current instance ("WailingCaverns"...): identical in every client language, so it is a
-- fallback for instance names that can't be matched by name. Only used when the world map is closed.
local function GetInstanceMapFile()
	if WorldMapFrame and WorldMapFrame:IsShown() then return nil end
	if SetMapToCurrentZone then pcall(SetMapToCurrentZone) end
	local ok, file = pcall(GetMapInfo)
	if ok and type(file) == "string" and file ~= "" then return file end
end

-- Best dungeon guide for one candidate name (already English, or a map file name).
local function ScoreDungeonName(n, level, sub)
	if n == "" then return end
	local best, bestScore
	for _, e in ipairs(AG.dungeons) do
		local m = e.mainNorm
		local score
		if m == n or m == n:gsub("^the", "") then
			score = 100
		elseif #n >= 6 and #m >= 6 and (m:find(n, 1, true) or n:find(m, 1, true)) then
			score = 70
		end
		if score then
			if e.danaton then score = score - 20 end
			if e.quests then score = score - 15 end
			score = score - LevelDistance(e, level) * 0.5
			for _, w in ipairs(e.wingWords) do
				if sub:find(w, 1, true) then score = score + 8 end
			end
			if not bestScore or score > bestScore then best, bestScore = e, score end
		end
	end
	return best, bestScore
end

-- instanceName: what GetInstanceInfo() returns (in whatever language the client uses)
function AG:FindDungeonGuide(instanceName)
	if not BuildIndex() then return end
	local level = UnitLevel("player") or 1
	local sub = Norm(GetSubZoneText() or "") .. Norm(GetMinimapZoneText() or "")

	-- 1) alias learned from the player (they loaded a dungeon guide by hand while inside this instance)
	local aliases = ZGV.db and ZGV.db.global and ZGV.db.global.areaguide_alias
	local learned = aliases and aliases[Norm(instanceName)]
	if learned then
		local g = ZGV:GetGuideByTitle(learned)
		if g then return g, "learned alias" end
	end

	-- 2) by name (English, or pt-BR through the instance table / zone lookup)
	local e = ScoreDungeonName(Norm(InstanceToEnglish(instanceName)), level, sub)
	if e then return e.guide, "name" end

	-- 3) by map file name
	local file = GetInstanceMapFile()
	if file then
		e = ScoreDungeonName(Norm(file), level, sub)
		if e then return e.guide, "map file '" .. file .. "'" end
	end
end

-- The player loaded a dungeon guide by hand inside an instance we could not identify: remember the instance name
-- for that guide, so the next visit (or another character) is recognised.
function AG:LearnAlias(guideTitle)
	local area = self:GetArea()
	if not (area and area.kind == "dungeon" and self.unmatched and self.unmatched[area.key]) then return end
	local global = ZGV.db and ZGV.db.global
	if not global then return end
	global.areaguide_alias = global.areaguide_alias or {}
	global.areaguide_alias[Norm(area.name)] = guideTitle
	self.unmatched[area.key] = nil
	ZGV:Print(("AreaGuide: '%s' will now suggest this guide."):format(area.name))
end

-- ------------------------------------------------------------------------------------------------------------------
-- Dungeon run memory: which mobs/bosses have died since the player entered this instance
-- ------------------------------------------------------------------------------------------------------------------
local function TouchRun(area)
	local char = ZGV.db and ZGV.db.char
	if not char then return end
	local run = char.areaguide_run
	local now = time()
	if not run or run.inst ~= area.key or (now - (run.stamp or 0)) > RUN_TIMEOUT then
		run = { inst = area.key, kills = {}, killsById = {} }
		char.areaguide_run = run
	end
	run.killsById = run.killsById or {}
	run.stamp = now
	AG.run = run
end

local deathPattern
do
	local fmt = _G.UNITDIESOTHER or "%s dies."
	-- escape pattern magic characters, then turn the literal "%s" placeholder into a capture
	local escaped = fmt:gsub("([%^%$%(%)%.%[%]%*%+%-%?])", "%%%1")
	deathPattern = "^" .. escaped:gsub("%%s", "(.+)") .. "$"
end

local function RecordKill(name, npcId)
	local run = AG.run
	if not run then return end
	if name then
		name = strlower(name)
		run.kills[name] = (run.kills[name] or 0) + 1
	end
	if npcId then
		run.killsById[npcId] = (run.killsById[npcId] or 0) + 1
	end
	run.stamp = time()
end

-- Chat message "X dies." (name only; works when the guide's English name equals the name the client shows)
function AG:OnDeathMessage(msg)
	if not AG.run or not IsInInstance() then return end
	local name = msg and msg:match(deathPattern)
	if name then RecordKill(name, nil) end
end

-- Combat log UNIT_DIED (carries the GUID, so the NPC id is known: independent of the client's language)
function AG:OnUnitDied(guid, name)
	if not AG.run or type(guid) ~= "string" then return end
	local prefix = guid:sub(1, 5)
	local npcId
	if prefix == "0xF13" or prefix == "0xF15" then          -- creature / vehicle
		npcId = tonumber(guid:sub(7, 12), 16)
	end
	if npcId or name then RecordKill(name, npcId) end
end

-- Used by Goal:IsComplete for "kill" goals of dungeon guides (single boss/mob kills only).
function AG:IsKillGoalDone(goal)
	if goal.action ~= "kill" or goal.questid then return false end
	if not goal.targetid and type(goal.target) ~= "string" then return false end
	if (goal.count or 1) > 1 then return false end
	local guide = goal.parentStep and goal.parentStep.parentGuide
	if not (guide and IsDungeonTitle(guide.title)) then return false end
	local run = AG.run
	if not run or not IsInInstance() then return false end
	local id = tonumber(goal.targetid)
	if id and (run.killsById[id] or 0) >= 1 then return true end
	if type(goal.target) == "string" then
		local c = run.kills[strlower(goal.target)]
		if c and c >= 1 then return true end
	end
	return false
end

-- ------------------------------------------------------------------------------------------------------------------
-- Progress detection
-- ------------------------------------------------------------------------------------------------------------------
local function StepHasJump(step)
	if step.next then return true end
	for _, goal in ipairs(step.goals) do
		if goal.next then return true end
	end
	return false
end

-- Goals whose completion is persistent (or derived from persistent data), so that a completed one proves the player
-- is beyond that point of the guide even if earlier steps can't be verified (walking, tips, unfinished side goals).
local ANCHOR_ACTIONS = { accept = true, turnin = true, ding = true }
local function IsAnchorGoal(goal)
	if goal.force_nocomplete then return false end
	if goal.questid or ANCHOR_ACTIONS[goal.action] then return true end
	if goal.action == "kill" then return AG:IsKillGoalDone(goal) end
	return false
end

function AG:ComputeProgressStep(guide, base)
	local steps = guide.steps
	local n = #steps
	if base > n then return n end

	if not ZGV.recentlyVisitedCoords or not ZGV.recentlyCompletedGoals then
		ZGV:ClearRecentActivities()
	end

	local t0 = debugprofilestop and debugprofilestop()
	local function OverBudget()
		return t0 and (debugprofilestop() - t0) > SCAN_BUDGET_MS
	end

	-- 1) walk forward exactly like the live auto-skip would: stop at the first step that is not already done
	local idx = base
	while idx <= n do
		local step = steps[idx]
		if StepHasJump(step) or not step:WouldAutoSkip() then break end
		idx = idx + 1
		if OverBudget() then break end
	end

	-- 2) look further ahead for steps that are provably done (quests turned in, level reached, bosses killed ...)
	local lastAnchor = idx - 1
	for i = idx, n do
		local step = steps[i]
		if step:AreRequirementsMet() then
			local any, all = false, true
			for _, goal in ipairs(step.goals) do
				if goal:IsVisible() and IsAnchorGoal(goal) then
					any = true
					if not goal:IsComplete() then all = false break end
				end
			end
			if any and all then lastAnchor = i end
		end
		if OverBudget() then break end
	end

	local result = math.max(idx, lastAnchor + 1)
	if result > n then result = n end
	if result < base then result = base end
	return result
end

-- Returns the step a freshly loaded guide should start on.
function AG:ResolveStartStep(guide, remembered)
	remembered = tonumber(remembered)
	if guide and IsDungeonTitle(guide.title) then pcall(self.LearnAlias, self, guide.title) end
	local prof = Profile()
	if prof and prof.areaguide_autoprogress == false then return remembered or 1 end
	if not (guide and guide.steps and #guide.steps > 0) then return remembered or 1 end

	local base = remembered or 1
	if IsDungeonTitle(guide.title) then
		-- a dungeon run is short-lived: only trust a remembered step from the last couple of hours
		local rec = ZGV.db and ZGV.db.char and ZGV.db.char.guide_progress and ZGV.db.char.guide_progress[guide.title]
		if not (rec and rec.updated and (time() - rec.updated) < 7200) then base = 1 end
	end
	if not ZGV.questLogInitialized then return base end

	local ok, result = pcall(self.ComputeProgressStep, self, guide, base)
	if not ok or type(result) ~= "number" then
		if ZGV.Debug then ZGV:Debug("AreaGuide progress scan failed: " .. tostring(result)) end
		return base
	end
	if result > base then
		ZGV:Print(("Guide progress detected: starting at step %d of %d."):format(result, #guide.steps))
	end
	return result
end

-- ------------------------------------------------------------------------------------------------------------------
-- Area detection + prompt
-- ------------------------------------------------------------------------------------------------------------------
function AG:GetArea()
	local inInstance, itype = IsInInstance()
	if inInstance then
		if itype ~= "party" and itype ~= "raid" then return nil end   -- battlegrounds / arenas
		local name = GetInstanceInfo()
		if not name or name == "" then return nil end
		return { kind = "dungeon", name = name, key = "i:" .. name }
	end
	local zone = GetRealZoneText()
	if not zone or zone == "" then return nil end
	return { kind = "zone", name = zone, key = "z:" .. zone }
end

local function Log(fmt, ...)
	if ZGV.Debug then ZGV:Debug("AreaGuide: " .. fmt:format(...)) end
end

StaticPopupDialogs["ZYGOR_AREAGUIDE"] = {
	text = "%s",
	button1 = "Load guide",
	button2 = "Not now",
	OnAccept = function(self, data)
		if data then AG:LoadGuide(data) end
	end,
	timeout = 60,
	whileDead = false,
	hideOnEscape = true,
	exclusive = false,
	preferredIndex = 3,
}

function AG:LoadGuide(title)
	if not title or not ZGV:GetGuideByTitle(title) then return end
	ZGV:SetGuide(title)
	if ZGV.Frame and not ZGV.Frame:IsShown() then ZGV.Frame:Show() end
end

-- Every time the player enters (and settles in) an area that has a guide, the question is asked, even if that same
-- area was asked about a moment ago or its guide is already loaded. When the guide is already the current one the
-- question becomes "check your progress and jump to your current step" instead.
function AG:Prompt(area, guide)
	local dialog = StaticPopupDialogs["ZYGOR_AREAGUIDE"]
	local name = guide.title_short or guide.title
	local text
	if ZGV.CurrentGuide and ZGV.CurrentGuide.title == guide.title then
		text = ("You entered |cffffd200%s|r.\nYou are already following its guide:\n|cff88ccff%s|r\nCheck your progress and jump to your current step?"):format(area.name, name)
		dialog.button1 = "Check progress"
	elseif area.kind == "dungeon" then
		text = ("You entered the dungeon |cffffd200%s|r.\nLoad the dungeon guide?\n|cff88ccff%s|r"):format(area.name, name)
		dialog.button1 = "Load guide"
	else
		text = ("You entered |cffffd200%s|r.\nLoad the recommended guide?\n|cff88ccff%s|r"):format(area.name, name)
		dialog.button1 = "Load guide"
	end
	StaticPopup_Hide("ZYGOR_AREAGUIDE")
	StaticPopup_Show("ZYGOR_AREAGUIDE", text, nil, guide.title)
	AG.promptKey = area.key
end

-- Why no question can be asked right now (nil = it can be asked).
function AG:BlockReason()
	local prof = Profile()
	if not prof then return "settings not loaded yet" end
	if prof.areaguide_enabled == false then return "disabled in the options" end
	if not ZGV.guidesloaded then return "guides not loaded yet" end
	if not ZGV.questLogInitialized then return "quest log not initialised yet" end
	if UnitOnTaxi("player") or IsFlying() then return "on a taxi / flying" end
	if UnitIsDeadOrGhost("player") then return "dead" end
	if InCombatLockdown() or UnitAffectingCombat("player") then return "in combat" end
	if CinematicFrame and CinematicFrame:IsShown() then return "cinematic playing" end
	if AG.lastAir and (GetTime() - AG.lastAir) < AFTER_AIR then return "just landed" end
	return nil
end

function AG:CanPrompt()
	return self:BlockReason() == nil
end

function AG:Resolve(area)
	if area.kind == "dungeon" then
		return self:FindDungeonGuide(area.name)
	end
	return self:FindZoneGuide(area.name), "zone name"
end

function AG:Consider(area)
	if not BuildIndex() then return end
	local guide, how = self:Resolve(area)
	if not guide then
		Log("%s '%s': no guide found (level %d)", area.kind, area.name, UnitLevel("player") or 0)
		if area.kind == "dungeon" then
			AG.unmatched = AG.unmatched or {}
			AG.unmatched[area.key] = true
		end
		return
	end
	Log("%s '%s': asking about '%s' (%s)", area.kind, area.name, guide.title, tostring(how))
	self:Prompt(area, guide)
end

function AG:Tick()
	local now = GetTime()
	if UnitOnTaxi("player") or IsFlying() then AG.lastAir = now end

	local area = self:GetArea()
	local key = area and area.key
	local cur = AG.cur
	if not cur or cur.key ~= key then
		cur = { key = key, since = now, handled = false }
		AG.cur = cur
		-- the player left the area the pending question was about: drop it
		if AG.promptKey and AG.promptKey ~= key then
			StaticPopup_Hide("ZYGOR_AREAGUIDE")
			AG.promptKey = nil
		end
	end

	-- the combat log is only needed (and only listened to) inside dungeons/raids, for the boss kill memory
	local wantCombatLog = (area and area.kind == "dungeon") and true or false
	if wantCombatLog ~= (AG.combatLog or false) then
		AG.combatLog = wantCombatLog
		if wantCombatLog then
			AG.frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		else
			AG.frame:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		end
	end
	if not area then return end

	if area.kind == "dungeon" then TouchRun(area) end

	if cur.handled then return end
	local settle = (area.kind == "dungeon") and SETTLE_DUNGEON or SETTLE_ZONE
	if (now - cur.since) < settle or not self:CanPrompt() then return end
	cur.handled = true
	self:Consider(area)
end

-- /zygorarea         : what the addon sees here and why it would (not) ask
-- /zygorarea ask     : ask right now for the area you are in
function AG:Diagnose(arg)
	local function P(s) ZGV:Print("AreaGuide: " .. s) end
	local area = self:GetArea()
	if not area then P("no area detected (loading screen, battleground or arena).") return end
	if not BuildIndex() then P("guides not registered yet.") return end

	local english = (area.kind == "dungeon") and InstanceToEnglish(area.name) or ToEnglish(area.name)
	P(("%s: client reports '%s' -> English '%s'; your level: %d"):format(area.kind, area.name, english, UnitLevel("player") or 0))
	if area.kind == "dungeon" then P("map file: " .. tostring(GetInstanceMapFile())) end

	local guide, how = self:Resolve(area)
	if guide then P(("guide: %s (found by %s)"):format(guide.title, tostring(how)))
	else P("no matching guide found for this area and level.") end
	P("current guide: " .. (ZGV.CurrentGuide and ZGV.CurrentGuide.title or "none"))

	local reason = self:BlockReason()
	local cur = AG.cur
	if reason then
		P("would not ask right now: " .. reason)
	elseif cur and cur.handled then
		P("already asked for this stay; it asks again the next time you enter an area.")
	elseif cur then
		local settle = (area.kind == "dungeon") and SETTLE_DUNGEON or SETTLE_ZONE
		P(("waiting: you have been here %ds, it asks after %ds."):format(math.floor(GetTime() - cur.since), settle))
	end

	if arg and arg:lower():find("ask", 1, true) then
		if guide then self:Prompt(area, guide) else P("nothing to ask: no guide for this area.") end
	end
end

SLASH_ZYGORAREA1 = "/zygorarea"
SlashCmdList["ZYGORAREA"] = function(arg)
	local ok, err = pcall(AG.Diagnose, AG, arg)
	if not ok then ZGV:Print("AreaGuide error: " .. tostring(err)) end
end

local frame = CreateFrame("Frame")
AG.frame = frame
local elapsed = 0
frame:SetScript("OnUpdate", function(self, dt)
	elapsed = elapsed + dt
	if elapsed < 1 then return end
	elapsed = 0
	if not ZGV.guidesloaded then return end
	local ok, err = pcall(AG.Tick, AG)
	if not ok and ZGV.Debug then ZGV:Debug("AreaGuide tick error: " .. tostring(err)) end
end)
frame:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH")
frame:SetScript("OnEvent", function(self, event, ...)
	if event == "COMBAT_LOG_EVENT_UNFILTERED" then
		-- 3.3.5a: timestamp, subevent, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...
		local _, subevent, _, _, _, dstGUID, dstName = ...
		if subevent == "UNIT_DIED" then AG:OnUnitDied(dstGUID, dstName) end
	elseif event == "CHAT_MSG_COMBAT_HOSTILE_DEATH" then
		AG:OnDeathMessage((...))
	end
end)
