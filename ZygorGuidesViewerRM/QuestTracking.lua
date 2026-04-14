local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then return end

-- Blizzard API Upvalues
local _G = _G
local GetQuestLogTitle = _G.GetQuestLogTitle
local GetNumQuestLeaderBoards = _G.GetNumQuestLeaderBoards
local GetQuestLogLeaderBoard = _G.GetQuestLogLeaderBoard
local GetTime = _G.GetTime
local tonumber = _G.tonumber
local tostring = _G.tostring
local ipairs = _G.ipairs
local pairs = _G.pairs
local type = _G.type
local tinsert = _G.table.insert
local tremove = _G.table.remove
local twipe = _G.table.wipe

-- Table Pools
local questPool = {}
local goalPool = {}       -- Single goal objects { item, num, needed, ... }
local goalsTablePool = {} -- Array container holding multiple goals
local goalNamedPool = {}  -- Map container { [itemname] = goal }

-- Pool Acquisition Functions (DEFINED FIRST - before usage!)
local function AcquireQuest()
	local q = tremove(questPool)
	return q or {}
end

local function AcquireGoalsTable()
	local t = tremove(goalsTablePool)
	return t or {}
end

local function AcquireGoalsNamedTable()
	local t = tremove(goalNamedPool)
	return t or {}
end

local function AcquireGoal()
	local g = tremove(goalPool)
	return g or {}
end

-- Pool Recycling Functions
local function RecycleGoal(goal)
	if not goal then return end
	twipe(goal)
	tinsert(goalPool, goal)
end

local function RecycleQuest(quest)
	if not quest then return end
	
	-- Recycle subtables first
	if quest.goals then
		for _,g in ipairs(quest.goals) do
			RecycleGoal(g)
		end
		twipe(quest.goals)
		tinsert(goalsTablePool, quest.goals)
	end
	
	if quest.goalsNamed then
		twipe(quest.goalsNamed)
		tinsert(goalNamedPool, quest.goalsNamed)
	end
	
	-- Recycle quest itself
	twipe(quest)
	tinsert(questPool, quest)
end

-- Event Throttling
local lastQuestCacheUpdate = 0
local QUEST_CACHE_THROTTLE = 0.2 -- 200ms

tinsert(ZGV.startups,function(self)
	self:AddEvent("CHAT_MSG_SYSTEM","CHAT_MSG_SYSTEM_QuestTracking")
	self:AddEvent("QUEST_LOG_UPDATE","QUEST_LOG_UPDATE_QuestTracking")
	self:AddEvent("QUEST_QUERY_COMPLETE","QUEST_QUERY_COMPLETE_QuestTracking")

	self:ScheduleRepeatingTimer("QueryQuests", 10)
	self:ScheduleRepeatingTimer("QuestTracking_CacheQuestLog", 2) -- Safety polling every 2 seconds

	self:QueryQuests()
end)

me.dailyQuests = {}
me.instantQuests = {}
me.completedQuests = {}
me.completedQuestTitles = {}

local function GetCaptures(s)
	return "^" .. s:gsub("%%[0-9%$]-s","(.-)"):gsub("%%[0-9%$]-d","(%%d+)")
end

local function ParseLeaderBoard(leaderboard,type)
	local formatter

	if type=="monster" then		formatter = QUEST_MONSTERS_KILLED
	elseif type=="item" then	formatter = QUEST_ITEMS_NEEDED
	elseif type=="faction" then	formatter = QUEST_FACTION_NEEDED
	else				formatter = QUEST_OBJECTS_FOUND
	end

	local item,num,numneeded = leaderboard:match(GetCaptures(formatter)) --, "(.*)%s*:%s*([%d]+)%s*/%s*([%d]+)")
	if type=="monster" and not item then
		formatter = QUEST_ITEMS_NEEDED
		item,num,numneeded = leaderboard:match(GetCaptures(formatter)) --, "(.*)%s*:%s*([%d]+)%s*/%s*([%d]+)")
		-- some quests have objective type 'monster' yet are displayed using the ITEMS formatting. Go figure.
	end

	if (item) then
		if type=="faction" then
			return item,num,numneeded  -- not really nums
		else
			return item,tonumber(num),tonumber(numneeded)
		end
	else
		return leaderboard
	end
end

local function GetQuestLeaderBoards(questindex)
	local numgoals = tonumber(GetNumQuestLeaderBoards(questindex))
	local goals = AcquireGoalsTable()
	local goalsNamed = AcquireGoalsNamedTable()
	
	if numgoals>0 then
		for g=1,numgoals,1 do
			local leaderboard,type,complete = GetQuestLogLeaderBoard(g,questindex)
			local item,num,needed = ParseLeaderBoard(leaderboard,type)

			-- fix bad leaderboards
			if not needed then needed=1 end
			if not num then num=complete and needed or 0 end

			local goal = AcquireGoal()
			goal.item = item
			goal.num = num
			goal.needed = needed
			goal.type = type
			goal.complete = complete
			goal.leaderboard = leaderboard

			goals[g] = goal
			goalsNamed[item] = goal
		end
	end
	return goals,goalsNamed
end


function me:GetQuest(indexortitle)
	local link,title
	if (type(indexortitle)=="number") then
		local title,_,_,_,_,_,_,daily,id = GetQuestLogTitle(indexortitle)
		return id,title,daily
	else
		local numEntries = GetNumQuestLogEntries()
		for i = 1, numEntries, 1 do
			local title,_,_,_,_,_,_,daily,id = GetQuestLogTitle(i)
			if title == indexortitle then
				ZGV:Debug(("GetQuestId: id of quest '%s' = %d"):format(indexortitle,id))
				return id,title,daily
			end
		end
		ZGV:Debug(("GetQuestId: id of quest '%s' unknown!"):format(indexortitle))
	end
end

function me:QuestTracking_CacheQuestLog()
	-- Throttle protection
	local now = GetTime()
	if now - lastQuestCacheUpdate < QUEST_CACHE_THROTTLE then return end
	lastQuestCacheUpdate = now

	local iNumEntries = GetNumQuestLogEntries()
	local foundIDs = {}
	local newquests = {}
	local lostquests = {}
	local nc=0

	-- First, clear the ordered list (we will rebuild it in exact log order)
	twipe(self.quests)

	-- 1. SCAN PHASE (MARK) - Read Blizzard Quest Log
	for i = 1, iNumEntries, 1 do
		local strQuestLogTitleText, strQuestLevel, strQuestTag, numPlayers, isHeader, isCollapsed, isComplete, isDaily, questID = GetQuestLogTitle(i)

		if not isHeader and strQuestLogTitleText and questID then
			strQuestLogTitleText = strQuestLogTitleText:gsub(" ?\[[0-9D\+]+\] ?","")
			
			local quest
			local isNewQuest = false

			-- Check if quest already exists in our cache
			local old_complete = false
			if self.questsbyid[questID] then
				-- EXISTING QUEST: UPDATE IN-PLACE - KEEP TABLE REFERENCE!
				quest = self.questsbyid[questID]
				old_complete = quest.complete
				
				-- Recycle old goals first before replacing them
				if quest.goals then
					for _,g in ipairs(quest.goals) do
						RecycleGoal(g)
					end
					twipe(quest.goals)
					tinsert(goalsTablePool, quest.goals)
				end
				if quest.goalsNamed then
					twipe(quest.goalsNamed)
					tinsert(goalNamedPool, quest.goalsNamed)
				end
			else
				-- NEW QUEST: Acquire fresh object from pool
				quest = AcquireQuest()
				isNewQuest = true
			end

			-- Fetch fresh goals for this quest
			local goals,goalsNamed = GetQuestLeaderBoards(i)

			-- Update quest properties (in-place for existing objects!)
			quest.title = strQuestLogTitleText
			quest.level = strQuestLevel
			quest.complete = (isComplete==1)
			quest.failed = (isComplete==-1)
			quest.daily = isDaily
			quest.goals = goals
			quest.goalsNamed = goalsNamed
			quest.id = questID
			quest.index = tonumber(i)

			-- STATUS SYNCHRONIZATION: If Blizzard says quest is complete, force all goals to 100%
			if quest.complete then
				for _, goal in ipairs(quest.goals) do
					goal.num = goal.needed
					goal.complete = true
				end
			end

			-- DETECT COMPLETION STATUS CHANGE
			if quest.complete and not old_complete and not isNewQuest then
				-- Quest just became completed! Fire event immediately
				self:CompletedQuestEvent(quest.title, quest.id, quest.daily)
			end

			-- Add to ordered list in Blizzard's exact order
			tinsert(self.quests, quest)

			-- Store/update in ID map
			self.questsbyid[questID] = quest

			-- Mark this quest as found
			foundIDs[questID] = true

			-- Track new quests for event
			if isNewQuest and not self.recentlyAcceptedQuests[questID] then
				tinsert(newquests, quest)
			end

			nc=nc+1
		end
	end

	-- 2. CLEANUP PHASE (SWEEP) - Remove quests no longer in log
	for questID, questObj in pairs(self.questsbyid) do
		if not foundIDs[questID] then
			-- Quest is gone from log
			tinsert(lostquests, questObj)
			self.recentlyAcceptedQuests[questID] = nil
			
			-- Recycle quest object back to pool
			RecycleQuest(questObj)
			
			-- Remove from ID map
			self.questsbyid[questID] = nil
		end
	end

	self:Debug("CacheQuestLog cached "..nc.." quests | New: "..#newquests.." | Lost: "..#lostquests)

	-- 3. EVENT PHASE: Fire ALL events ONLY after everything is finished
	for _,q in ipairs(newquests) do
		self:NewQuestEvent(q.title, q.id)
	end

	for _,q in ipairs(lostquests) do
		self:LostQuestEvent(q.title, q.id, q)
	end

	return self.quests
end

-- not needed anymore? oh ffs.
local lastQuestResetTime=90000  -- >24h
function me:QuestTracking_ResetDailies(force)
	if not self.CurrentGuide or not self.CurrentGuide.daily then return end
	--[[
	for id,title in pairs(self.db.global.instantDailies) do
		if not self.completedQuests[id] and self.completedQuestTitles[title] then
			self.completedQuestTitles[title]=nil
			self:Debug("Resetting instant daily "..title)
		end
	end
	--]] --how about NONE of that crap?

	-- reset dailies!
	--[[
	local QuestResetTime=GetQuestResetTime()
	if force or QuestResetTime>lastQuestResetTime then
		self:Debug("Resetting dailies, reset time = "..QuestResetTime)
		local starttime = (time()+QuestResetTime)-86400
		--for qid,qtime in pairs(self.db.char.completedDailies) do
		for qid in pairs(self.dailyQuests) do
			--if self.completedQuests[qid] then
				local qtime = self.db.char.completedDailies[qid]
				if not qtime or (qtime < starttime) then
					self.db.char.completedQuests[qid]=nil

					-- if it's an instant daily, find it and wipe its title completion as well!
					local instant_title = self.db.global.instantDailies[qid]
					if instant_title then self.db.char.completedQuests[instant_title]=nil end

					self:Debug("Marking daily "..qid.." as NOT completed anymore (last completed: "..(qtime and date(qtime) or "never")..")")
				end
			--end
		end
	end
	lastQuestResetTime=QuestResetTime
	--]]
end

--- Use these for instant-type quests. Bad workaround, but hey.
--[[
function me:QuestTracking_ResetDailyByTitle(title)
	if not self.db.char.completedQuests[title] then return end
	local QuestResetTime=GetQuestResetTime()
	self:Debug("Resetting one daily? reset time = "..QuestResetTime)
	local starttime = (time()+QuestResetTime)-86400
	--for qid,qtime in pairs(self.db.char.completedDailies) do

	local qtime = self.db.char.completedDailies[title]
	if not qtime or (qtime < starttime) then
		self.db.char.completedQuests[title]=nil
		self:Debug("Marking daily-by-title "..title.." as NOT completed anymore (last completed: "..(qtime and date(qtime) or "never")..")")
	end
end
--]]

--[[
Instant-daily process: Congratulations!##12604

Parsing:
- ZGV.DailyQuests[12604]=true

Completion:
- chat: XXX completed
 - ZGV:CHAT_MSG_SYSTEM_QuestTracking fires
  - ZGV:CompletedQuestEvent("Congratulations!",nil,nil)   -- impossible (?) to know a quest is Daily just by its title (or is it?)
   - ZGV.db.char.completedQuests["Congratulations!"] = true
   * ZGV.db.char.completedDailies is NOT touched; quest is NOT known to be a daily by title only.

Now suppose the quest list gets updated:
- ZGV:QUEST_QUERY_COMPLETE_QuestTracking() fires
 - self.db.char.completedQuests[12604] = true
 - QuestTracking_ResetDailies(true)
  - ZGV.db.char.completedDailies[12604] is not set, so
   - ZGV.db.char.completedQuests[12604] = nil   -- but that doesn't remove the ["Congratulations!"] entry.

--]]


function me:IsQuestPossible(questid)
	local possible=true
	if self.completedQuests[questid] then return true end
	if self.db.profile.trackchains and self.Chains then
		local questreqs = self.Chains[questid]
		if questreqs then
			local operAND=false
			local start=1
			if type(questreqs)=="table" then
				local oper = questreqs[1]
				if oper=="OR" then
					start=2
				elseif oper=="AND" then
					operAND=true
					start=2
				end

				if operAND then
					possible=true
					for i=start,#questreqs do
						if not self.completedQuests[questreqs[i]] then possible=false break end
					end
				else
					possible=false
					for i=start,#questreqs do
						if self.completedQuests[questreqs[i]] then possible=true break end
					end
				end
			else
				-- single
				if not self.completedQuests[questreqs] then possible=false end
			end
		end
	end
	return possible
end

function me:QUEST_LOG_UPDATE_QuestTracking(event,arg1)
	--self:Debug('QUEST_LOG_UPDATE: '..tostring(arg1))
	--if 1 then self:Debug('**BREAK**'); return end
	self:QuestTracking_CacheQuestLog()

	if not self.questLogInitialized then
		self:OnFirstQuestLogUpdate()
	end

	self:TryToCompleteStep(true)
	--self:UpdateFrame()
	--self:Debug('QUEST_LOG_UPDATE done.')
end

function me:QUEST_QUERY_COMPLETE_QuestTracking()
	self.completedQuests = GetQuestsCompleted()
	self.completedQuestTitles = {}
	self:Debug("Got completed quests list")
	--[[
	for i,q in pairs(quests) do 
		self.db.char.completedQuests[i]=q
	end
	--]]
	self.bandwidth = self.bandwidth - 100
	self.quest_query_complete_received = true
	self:QuestTracking_ResetDailies(true)
	self:TryToCompleteStep(true)
end

--local detection_accepted=ERR_QUEST_ACCEPTED_S:gsub("%%[sd]","(.*)")
local detection_complete=ERR_QUEST_COMPLETE_S:gsub("%%[sd]","(.*)")
function me:CHAT_MSG_SYSTEM_QuestTracking(event,text)
	--self:Debug("CHAT_MSG_SYSTEM: "..tostring(text))
	text = tostring(text)
	--local quest = string.match(text,L["detection_accepted"])
	--if quest then self:NewQuestEvent(quest,self:QuestTracking_GetQuestId(quest)) end

	-- now, OF COURSE it would be better to rely on quest disappearance. But some quests just complete immediately.
	local quest = string.match(text,detection_complete)
	if quest then
		local id,_,daily = self:GetQuest(quest)
		-- Bypass throttle for immediate quest completion detection
		lastQuestCacheUpdate = 0
		self:QuestTracking_CacheQuestLog()
		
		self:CompletedQuestEvent(quest,id,daily)
	end
end


function me:QueryQuests()
	if not self.quest_query_complete_received then
		if self.db.char.maint_queryquests then
			self:Debug("Querying for completed quests...");
			QueryQuestsCompleted()
			self.bandwidth=100
		else
			self:Print("Completed quests query SKIPPED due to maintenance settings.")
		end
	end
end
