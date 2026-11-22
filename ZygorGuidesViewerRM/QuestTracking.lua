local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then return end

local GetQuestLogTitle = GetQuestLogTitle
local GetNumQuestLeaderBoards = GetNumQuestLeaderBoards
local GetQuestLogLeaderBoard = GetQuestLogLeaderBoard
local GetQuestsCompleted = GetQuestsCompleted
local GetTime = GetTime
local tonumber = tonumber
local tostring = tostring
local ipairs = ipairs
local pairs = pairs
local type = type
local tinsert = table.insert
local twipe = table.wipe

local lastQuestCacheUpdate = 0
local QUEST_CACHE_THROTTLE = 0.2
local quest_pool = {}
local quest_pool_ptr = 0

local function GetPooledQuest()
	quest_pool_ptr = quest_pool_ptr + 1
	if not quest_pool[quest_pool_ptr] then
		quest_pool[quest_pool_ptr] = {}
	end
	return quest_pool[quest_pool_ptr]
end

tinsert(ZGV.startups,function(self)
	self:AddEvent("CHAT_MSG_SYSTEM","CHAT_MSG_SYSTEM_QuestTracking")
	self:AddEvent("QUEST_LOG_UPDATE","QUEST_LOG_UPDATE_QuestTracking")
	self:AddEvent("QUEST_QUERY_COMPLETE","QUEST_QUERY_COMPLETE_QuestTracking")

	self:ScheduleRepeatingTimer("QueryQuests", 10)
	self:ScheduleRepeatingTimer("QuestTracking_SafetyPoll", 2)

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
	local numgoals = tonumber(GetNumQuestLeaderBoards(questindex) or 0) or 0
	local goals = {}
	local goalsNamed = {}
	if numgoals>0 then
		for g=1,numgoals,1 do
			local leaderboard,type,complete = GetQuestLogLeaderBoard(g,questindex)
			local item,num,needed = ParseLeaderBoard(leaderboard,type)

			-- fix bad leaderboards
			if not needed then needed=1 end
			if not num then num=complete and needed or 0 end

			goals[g] = { item=item, num=num, needed=needed, type=type, complete=complete, leaderboard=leaderboard }
			goalsNamed[item] = goals[g]
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
		for i = 1, 50, 1 do
			local title,_,_,_,_,_,_,daily,id = GetQuestLogTitle(i)
			if title == indexortitle then
				ZGV:Debug(("GetQuestId: id of quest '%s' = %d"):format(indexortitle,id))
				return id,title,daily
			end
		end
		ZGV:Debug(("GetQuestId: id of quest '%s' unknown!"):format(indexortitle))
	end
end

function me:QuestTracking_CacheQuestLog(force)
	local now = GetTime()
	if not force and (now - lastQuestCacheUpdate) < QUEST_CACHE_THROTTLE then return self.quests end
	lastQuestCacheUpdate = now

	--self:Debug('CacheQuestLog: '..zone..'/'..subzone)
	--if not zone or zone=='' then return nil end

	--if 1 then self:Debug('**BREAK**'); return end
	--[[
	local time = GetTime()
	if time - self.QuestCacheTime < 1 then
		self.QuestCacheUndertimeRepeats = self.QuestCacheUndertimeRepeats + 1
		if self.QuestCacheUndertimeRepeats > 10 then return end
	else
		-- overtime; everything in order.
		self.QuestCacheUndertimeRepeats = 0
		self.QuestCacheTime = time
	end
	--]]

	--self:Debug("CacheQuestLog starts --> (after ".. (time - self.QuestCacheTime)..")")

	--local iNumEntries, iNumQuests = GetNumQuestLogEntries() -- this SUCKS. Entries can be muddled by collapsing the quest log, and NumQuests is useless anyway.
	local iNumEntries = 50 -- WHAT EVER.

	local oldquests = {}
	for qi,q in pairs(self.quests or {}) do
		oldquests[qi] = {
			id = q.id,
			title = q.title,
			complete = q.complete,
		}
	end
	self.quests = self.quests or {}
	twipe(self.quests)
	self.questsbyid = self.questsbyid or {}
	quest_pool_ptr = 0

	--local selected = GetQuestLogSelection()

	local newquests = {}

	local nc=0
	for i = 1, iNumEntries, 1 do
		local strQuestLogTitleText, strQuestLevel, strQuestTag, numPlayers, isHeader, isCollapsed, isComplete, isDaily, questID = GetQuestLogTitle(i)

		if not isHeader and strQuestLogTitleText then
			strQuestLogTitleText = strQuestLogTitleText:gsub(" ?%[[0-9D+]+%] ?","") -- fix for [12] level display
			local goals,goalsNamed = GetQuestLeaderBoards(i)

			local quest = GetPooledQuest()
			twipe(quest)
			quest.title = strQuestLogTitleText
			quest.level = strQuestLevel
			--objective = obj,
			--description = desc,
			quest.complete = (isComplete==1)
			quest.failed = (isComplete==-1)
			quest.daily = isDaily
			quest.goals = goals
			quest.goalsNamed = goalsNamed
			quest.id = questID
			quest.index = tonumber(i)
			if quest.complete then
				for _,goal in ipairs(goals) do
					goal.num = goal.needed
					goal.complete = true
				end
			end
			tinsert(self.quests,quest)
			if questID and not self.questsbyid[questID] and not self.recentlyAcceptedQuests[questID] then
				tinsert(newquests,quest)
				--self:Debug(dumpquest(quest))
			end

			nc=nc+1
		
		end
	end

	twipe(self.questsbyid)
	for qi,q in pairs(self.quests) do
		if q.id then
			self.questsbyid[q.id]=q
		else
			self:Debug("Quest '"..q.title.."' has no ID")
		end
	end

	self:Debug("CacheQuestLog cached "..nc.." quests")

	local lostquests = {}

	-- any abandoned?
	if #oldquests>0 then
		for qi,q in pairs(oldquests) do
			if q.id and not self.questsbyid[q.id] and not self.completedQuests[q.id] then
				tinsert(lostquests,q)
				self.recentlyAcceptedQuests[q.id]=nil
				self.recentlyAcceptedQuests[q.title]=nil
			end
			--[[
			if self.recentlyCompletedQuests[q.title] then
				self.db.char.completedQuests[q.title]=true
			end
			-- chat parsing already fired CompletedQuestEvent, sorry
			if q.id and self.recentlyCompletedQuests[q.id] then
				self.db.char.completedQuests[q.id]=true
				if q.daily then
					self.db.char.completedDailies[q.id]=time()
				end
			end
			--]]

			-- NOT to rely on .complete - a quest could be complete AND get abandoned, which would result in false-completion.
		end
		--self.recentlyCompletedQuests = {}
	end

	-- Now, handle the news and losts.

	for i,q in ipairs(newquests) do
		self:NewQuestEvent(q.title,q.id)
	end
	for i,q in ipairs(lostquests) do
		self:LostQuestEvent(q.title,q.id,q.complete)
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

function me:QuestTracking_SafetyPoll()
	self:QuestTracking_CacheQuestLog()
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
	self:QuestTracking_CacheQuestLog(not self.questLogInitialized)

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
		self:QuestTracking_CacheQuestLog(true)
		local id,_,daily = self:GetQuest(quest)
		--if not q.id then
			-- re-query completed quests; nasty, but the only way to fetch this sucker.
			--if QueryQuestsCompleted then QueryQuestsCompleted() end
		--end
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
