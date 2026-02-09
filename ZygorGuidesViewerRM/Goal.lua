local Goal = { }

local ZGV = ZygorGuidesViewer
if not ZGV then return end
local L = ZGV.L

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

ZGV.GoalProto = Goal
ZGV.GoalProto_mt = { __index=Goal }

Goal.indent=0

function Goal:GetStatus()
	if not self:IsVisible() then return "hidden" end
	if not self:IsCompleteable() then return "passive" end
	local complete,possible,progress = self:IsComplete()
	if complete then return "complete" end
	if (ZGV.db.profile.showobsolete or ZGV.db.profile.skipobsolete) and not self.parentStep.parentGuide.noobsolete and self:IsObsolete() then return "obsolete" end
	if not possible then return "impossible" end
	-- only possible and progressing is left.
	return "incomplete",progress
end

function Goal:UpdateStatus()
	self.status = self:GetStatus()
end

function Goal:IsVisible()
	if not self:IsFitting() then return false end
	if self.condition_visible then return self.condition_visible() end
	return true
end

function Goal:IsCompleteable()
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end
	if self.force_nocomplete then return false end

	if self.questid --[[and self.objnum--]] then return true end
	
	if self.action=="from"
	or self.action==""
	then return false end

	if self.action=="goal"
	or self.action=="kill"
	or self.action=="get"
	or self.action=="accept"
	or self.action=="turnin"
	or self.action=="collect"
	or self.action=="buy"
	or self.action=="fpath"
	or self.action=="home"
	or self.action=="ding"
	or self.action=="havebuff"
	or self.action=="nobuff"
	or self.action=="invehicle"
	or self.action=="outvehicle"
	or self.action=="equipped"
	or self.action=="rep"
	or self.action=="condition"
	or self.action=="achieve"
	or self.action=="skill"
	or self.action=="skillmax"
	or self.action=="learn"
	 then return true end
	if self.action=="goto" then
		-- this one is tricky.
		-- by default - completeable only if only 'goto' goals are present.
		local all_gotos=true
		for i,goal in ipairs(self.parentStep.goals) do
			if goal.action~="goto" then
				all_gotos=false
				break
			end
		end
		return (self.force_complete or all_gotos)
	end
	return false
end

local goalstring_slain=QUEST_MONSTERS_KILLED:gsub(": .*","")

-- returns: true = complete, false = incomplete
-- second return: true = completable, false = incompletable
function Goal:IsComplete()

	if (self.force_sticky and ZGV.recentlyCompletedGoals[self]) or ZGV.recentlyStickiedGoals[self] then
		return true,true,true
	end

	if self.force_nocomplete then return end

	if self.action=="accept" then
		--[[
		-- Check for "turn in, accept" pair of the same quest - a workaround for "turn in part 1, accept part 2" steps
		--  Deprecated by introduction of questacceptedid
		if ZGV.questIndicesByTitle[self.questaccepted] and goalIndex>1 then
			local i
			for i = goalIndex-1, 1, -1 do
				if ZGV.StepCompletion[i].questturnedin==self.questaccepted and not ZGV:IsStepGoalComplete(i) then return false,true end
			end
		end
		--]]
		local possible=true
		--local possible = (not self.parentStep.level  or  self.parentStep.level-UnitLevel("player")<=5)
		if self.questid and not ZGV:IsQuestPossible(self.questid) then possible=false end

		local complete = ZGV.completedQuests[self.questid]
		    or ZGV.questsbyid[self.questid]
		    or (ZGV.instantQuests[self.questid] and ZGV.completedQuestTitles[self.quest])
		    or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])
		return complete, complete or possible     --[[or ZGV.recentlyAcceptedQuests[id] --]]

	elseif self.action=="turnin" then
		local inlog = ZGV.questsbyid[self.questid]
			--[[ Completion sequence:
									ZGV.completedQuests[id]		ZGV.questsbyid[id]
			 1. CHAT_MSG_SYSTEM "<quest> completed."	nil				{...}
			     - ZGV.completedQuests[id] = true		true				{...}
			 2. QUEST_LOG_UPDATE, quest gone from log.	true				nil

			--]]

			-- Completed if it's in the completed bin, but NOT in the log.
			-- If it's in the log, it couldn't be completed; this fixes some weird multiple-completion quests, like #348 Stranglethorn Fever.
			-- completeable if it's in the log and complete or non-goaled.
		local turned = (
			ZGV.completedQuests[self.questid]
			or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])
			) and not inlog
		return turned, turned or (inlog and (inlog.complete or #inlog.goals==0))
	end

	
	if self.achieveid then
		-- oh gods. The below, redux.
		local completed
		if self.achievesub then
			local description, ctype
			description, ctype, completed = GetAchievementCriteriaInfo(self.achieveid, self.achievesub)
		else
			local id, name, points
			id, name, points, completed = GetAchievementInfo(self.achieveid)
		end

		if completed then
			return true,true
		end
		-- else fall-through
	end

	-- Quest-related? Handle appropriately.

	if self.questid then

		-- NEW: if it's a goddamn instant daily, try to reset it.
		--if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then ZGV:QuestTracking_ResetDailyByTitle(self.quest) end

		-- if the quest was done, the goal is done and over with. Bye.
		if ZGV.completedQuests[self.questid]
		or (ZGV.instantQuests[self.questid] and self.quest and ZGV.completedQuestTitles[self.quest]) then return true,true end

		-- if the quest cannot be completed, and we're not a futureproof goal, bail.
		--if not ZGV:IsQuestPossible(self.questid) and not self.future then return false,false end

		-- okay, so the quest may yet be possible. Is it in the log?
		local questInLog = ZGV.questsbyid[self.questid]
		if questInLog then
		
			-- Now if it is goalbound, complete it as the goal would.

			if self.objnum then
				local questGoalData = questInLog.goals[self.objnum]

				if questGoalData then
					if questGoalData.complete then
						return true, true
					else
						local count = self.count or questGoalData.needed or 1
						if questGoalData.num>=count then
							return true, true
						else
							--ZGV:Debug("Not yet completed: "..questself.num.."/"..questgoal.needed)
							return false, true, questGoalData.num/count
						end
					end
				else
					--ZGV:Debug("No goal "..goal)
					ZGV:Print("WARNING: quest has no such goal! Step "..self.parentStep.num..", line "..(self.num)..", quest "..(self.questid or self.quest)..", goal "..(self.objnum or -1))
					return false, true
				end
			else
				if not self.action or self.action=="" then
					-- okay, this is a simple "complete the quest" check
					return questInLog.complete,true
				end
				-- pure questbound? complete if the whole quest is complete...
				-- or not. Just drop.
				
				--[[
				if questInLog.complete or #questInLog.goals==0 then
					return true,true
				else
					-- otherwise drop through, let it complete on its own.
				end
				--]]
			end
		else
			-- if quest is not in log, then it usually means screw its links as well.
			-- Unless we're a future-proof goal, which drops through.
			if not self.future then
				return false,false
			end
		end
	end


	if self.action=="ding" then
		local percent
		local level = UnitLevel("player")
		if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then level=ZGV.db.char.fakelevel end
		percent = (level<self.level-1) and 0 or (level>=self.level) and 1.0 or UnitXP("player")/UnitXPMax("player")

		return UnitLevel("player")>=tonumber(self.level), UnitLevel("player")>=tonumber(self.level)-1, percent
	elseif self.action=="goto" then
		local zone = GetRealZoneText()
		if self.map and zone~=self.map then return false,true end

		if ZGV.recentlyVisitedCoords[self] then
			return true, true
		end
		if self.x then
			local px,py = GetPlayerMapPosition("player")
			local gx,gy,dist = self.x/100,self.y/100,self.dist/100
			local realdist2 = (px-gx)*(px-gx) + (py-gy)*(py-gy)
			if realdist2<=dist*dist then
				ZGV.recentlyVisitedCoords[self] = true
				return true, true
			else
				local prog = 1-((realdist2-dist*dist)*500)
				if prog<0 then prog=0 end
				if prog>1 then prog=1 end
				return false, true, prog
			end
		else
			return true,true
		end
	elseif self.action=="hearth" then
		return GetZoneText()==self.param or GetMinimapZoneText()==self.param or GetSubZoneText()==self.param, true
	elseif self.action=="home" then
		--return GetBindLocation("player")==self.home, true  -- didn't work well
		return ZGV.recentlyHomeChanged, true
	elseif self.action=="fpath" then
		return (ZGV.db.char.taxis[ZGV.LibTaxi.TaxiNames_English[self.param]] --[[or ZGV.recentlyDiscoveredFlightpath--]]), true
	elseif self.action=="collect" or self.action=="buy" then
		local got = GetItemCount(self.target)
		local progress = got/self.count
		if self.exact then
			return got==self.count, true, got<=self.count and progress or 0
		else
			return got>=self.count, true, progress>1 and 1 or progress
		end
	elseif self.action=="havebuff" then
		for i=1,30 do
			local name,_,tex = UnitBuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return true,true end
			local name,_,tex = UnitDebuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return true,true end
		end
		return false,true
	elseif self.action=="nobuff" then
		for i=1,30 do
			local name,_,tex = UnitBuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return false,true end
			local name,_,tex = UnitDebuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return false,true end
		end
		return true,true
	elseif self.action=="invehicle" then
		return UnitInVehicle("player"),true
	elseif self.action=="outvehicle" then
		return not UnitInVehicle("player"),true
	elseif self.action=="equipped" then
		local link = GetInventoryItemLink("player",self.slot)
		local name
		if link then name = link:match("|Hitem:.-%[(.-)%]") end
		return name and name==self.item , GetItemCount(self.item)>0
	elseif self.action=="rep" then
		local rep = ZGV:GetReputation(self.faction)
		if rep then
			return rep.standing>=self.rep, true, 1-(rep:CalcTo(self.rep)/(rep.max-rep.min)) or 0
		else
			return nil,nil,nil
		end
	elseif self.action=="condition" then
		return self:condition_complete()
	elseif self.action=="achieve" then
		if self.achieveid then
			if self.achievesub then
				-- partial achievement
				local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
				if not required or required==0 then required=1 end
				if not quantity then quantity = 0 end
				if quantity>required then quantity=required end
				return not not completed, true, quantity/required
			else
				-- full achievement
				local id, name, points, completed = GetAchievementInfo(self.achieveid)
				local numcrit = GetAchievementNumCriteria(self.achieveid)
				local completenum = 0
				for i=1,numcrit do
					local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,i)
					if not required or required==0 then required=1 end
					if not quantity then quantity = 0 end
					if quantity>required then quantity=required end
					completenum=completenum+quantity/required
				end
				return not not completed, true, numcrit>0 and completenum/numcrit or 0
			end
		else
			return nil,nil,nil
		end
	elseif self.action=="skill" then
		local skill = ZGV:GetSkill(self.skill)
		return skill.level>=self.skilllevel,skill.max>=self.skilllevel
	elseif self.action=="skillmax" then
		return ZGV:GetSkill(self.skill).max>=self.skilllevel,true
	elseif self.action=="learn" then
		return ZGV.db.char.RecipesKnown[self.recipeid] or (self.recipe and ZGV.recentlyLearnedRecipes[self.recipe]), true
	elseif self.action=="kill" and self.usekillcount then --killcount version
		local count = ZGV.recentKills[self.target]
		return count and count>=self.count, true
	end

	return false,false
end

function FindPetActionInfo(action)
	if type(action)==number then return action,GetPetActionInfo(action) end
	for i=1,12 do
		local name,x,tex = GetPetActionInfo(i)
		if name and (name:find(action) or tex:find(action)) then return i,name,x,tex end
	end
end

function Goal:IsActionable()
	return ((self.useitemid or self.useitem) and GetItemCount(self.useitemid or self.useitem)>0)
	    or (self.castspell and IsUsableSpell(self.castspell))
	    or (self.petaction and FindPetActionInfo(self.petaction))
	    or (self.script)
end

local function plural(s,i)
	if not i or i==1 then return s else return ZygorGuidesViewer_L("Specials")["plural"](s) end
end

function Goal:IsFitting()
	if self.wrong then return nil end
	if not self.requirement then return true end
	self.wrong = not ZygorGuidesViewer:RaceClassMatch(self.requirement)
	return not wrong
end

function Goal:NeedsTranslation()
	--return GetLocale()~="enUS" and not self.L
	return not self.L
end

local retry=10
function Goal:AutoTranslate()
	local oldL=self.L
	local waiting=false
	if type(self.L)=="number" and self.L>0 then self.L=self.L-1 return end
	if self.L==true then return false end
	if not self:IsFitting() then
		-- ignore wrong goals
		self.L=true
	end
	--ZGV:Debug(("Translating step %d goal %d, try %d..."):format(self.parentStep.num,self.num,self.countL or 0))
	if self.action=="fpath" and ZGV.LibTaxi then
		if ZGV.LibTaxi.TaxiNames_Local then
			self.param = ZGV.LibTaxi.TaxiNames_Local[self.param] or self.param
		end
		self.L = true
	end
	if self.questid then
		local qt,qobjs = ZGV:GetQuestData(self.questid)
		if qt and qt~="" then
			self.quest=qt
			if (self.action=='get' or self.action=='kill' or self.action=='goal')
			and not self.targetid then
				if qobjs then
					local obj=qobjs[self.objnum or 1]
					if obj and #obj>2 then
						self.target=obj
						self.L=true
					else
						self.L=retry --RETRY
					end
				else
					self.L=true --sorry...
				end
			elseif self.action=='accept' or self.action=='turnin' then
				ZGV:Debug("Translated: accept/turnin "..self.quest)
				self.L = true  -- quest title is enough
			else
				ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.quest))
				self.L = true
			end

			-- translated a quest - if it's an instant-daily, put it in a special bag
			-- it's used to remove titles from ZGV.db.char.completedQuests if removing the daily ID from completedDailies
			if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then
				ZGV.db.global.instantDailies[self.questid] = qt
			end
		else
			self.L = retry --RETRY
		end
	end
	if self.targetid then
		--[[if QuestInfo_Name then
			local target=QuestInfo_Name[self.targetid]
			if target then
				self.target=target
			end
		--]]
		if self.action=="kill" then
			if ZygorGuidesNPCs then
				local target,tooltip=ZGV:GetTranslatedNPC(self.targetid)
				if target then
					self.target,self.tooltip=target,tooltip
				end
			end
			self.L=true
		elseif self.action=="collect" or self.action=="get" or self.action=="buy" or self.action=="use" then
			local item = ZGV:GetItemData(self.targetid)
			if item then
				--if GetLocale()~="enUS" then
				self.target=item
				--end
				self.L=true
			else
				self.L=retry --RETRY
			end
		end
	end
	if self.useitemid then
		local item = ZGV:GetItemData(self.useitemid)
		if item then
			self.useitem = item
			self.L = true
		else
			self.L = retry
		end
	end
	if self.npcid then
		if ZygorGuidesNPCs then
			local npc,tooltip=ZGV:GetTranslatedNPC(self.npcid)
			if npc then
				self.npc,self.tooltip=npc,tooltip
			end
		end
		self.L=true
	end

	if self.L==nil then
		-- not waiting for a translation? oh well.
		self.L=true
	end

	--if self.map and ZGV.BZL[self.map] then self.map=ZGV.BZL[self.map] end

	if self.L==true and self.countL and self.countL>0 then
		ZGV:Debug(("Translated step %d goal %d at try %d"):format(self.parentStep.num,self.num,self.countL))
	end

	-- if many translation attempts fail, just leave it.
	if not self.L then
		self.countL=(self.countL or 0)+1
		if self.countL>=100 then
			ZGV:Debug(("Failed to translate step %d goal %d, tried %d times"):format(self.parentStep.num,self.num,self.countL))
			self.countL=nil
			self.L=true
		end
	end

	if self.L then
		ZGV.frameNeedsUpdating=true
		self.countL=nil
	end
	return oldL~=self.L
end

local function COLOR_LOC(s) return "|cffffee77"..s.."|r" end
local function COLOR_COUNT(s) return "|cffffffcc"..s.."|r" end
local function COLOR_ITEM(s) return "|cffaaeeff"..s.."|r" end
local function COLOR_QUEST(s) return "|cffbb99ff"..s.."|r" end
local function COLOR_NPC(s) return "|cffaaffaa"..s.."|r" end
local function COLOR_MONSTER(s) return "|cffffaaaa"..s.."|r" end
local function COLOR_GOAL(s) return "|cffffcccc"..s.."|r" end

function Goal:GetText(showcompleteness)
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end
	
	local text="?"
	if self.text then text = self.text
	elseif self.action=='accept' then text = L["stepgoal_accept"]:format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest,self.questpart)))
	elseif self.action=='turnin' then text = L["stepgoal_turn in"]:format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest,self.questpart)))
	elseif self.action=='talk' then text = L["stepgoal_talk to"]:format(COLOR_NPC(self.npc))
	elseif self.action=='get' and self.count and self.count>1 then text = L["stepgoal_get #"]:format(self.count>0 and self.count or "?",COLOR_ITEM(plural(self.target,self.count)))
	elseif self.action=='get' then text = L["stepgoal_get"]:format(COLOR_ITEM(plural(self.target,self.plural and 2 or 1)))
	elseif self.action=='kill' and self.count and self.count>1 then text = L["stepgoal_kill #"]:format(self.count>0 and self.count or "?",COLOR_MONSTER(plural(self.target,self.count)))
	elseif self.action=='kill' then text = L["stepgoal_kill"]:format(COLOR_MONSTER(plural(self.target,self.plural and 2 or 1)))
	elseif self.action=='collect' and self.count and self.count>1 then text = L["stepgoal_collect #"]:format(self.count,COLOR_ITEM(plural(self.target,self.count)))
	elseif self.action=='collect' then text = L["stepgoal_collect"]:format(COLOR_ITEM(plural(self.target,self.plural and 2 or 1)))
	elseif self.action=='buy' then text = L["stepgoal_buy"]:format(self.count,COLOR_ITEM(plural(self.target,self.count)))
	elseif self.action=='goal' and self.count and self.count>1 then text = L["stepgoal_goal #"]:format(self.count>0 and self.count or "?",COLOR_GOAL(plural(self.target,self.count)))
	elseif self.action=='goal' then text = L["stepgoal_goal"]:format(COLOR_GOAL(self.target))
	elseif self.action=='from' then
		text=nil
		for i,mob in ipairs(self.mobs) do
			local mobname
			if mob.id then mobname=ZGV:GetTranslatedNPC(mob.id) end
			if not self.knownmissing then
				ZGV:Debug("Missing from NPC database: "..mob.name.." #"..(mob.id or "?"))
			end
			self.knownmissing=true
			if mobname then mob.name=mobname end
		end
		if #self.mobs>1 then
			-- contraction
			ZGV.db.profile.contractmobs = true
			
			if ZGV.db.profile.contractmobs and ZygorGuidesViewer_L("Specials")['contract_mobs'] then
				local contr = ZygorGuidesViewer_L("Specials")['contract_mobs'](self.mobs)

				if contr then
					text = COLOR_MONSTER(contr)
				end
			end
			if not text then
				-- regular listing
				text = ""
				for i,mob in ipairs(self.mobs) do
					if #text>0 then text = text .. ", " end
					text = text .. COLOR_MONSTER(plural(mob.name,nil,mob.pl and 2 or 1))
				end
			end
		else
			text = COLOR_MONSTER(plural(self.mobs[1].name,self.mobs[1].pl and 2 or 1))
		end
		text=L['stepgoal_kill']:format(text)
	elseif self.action=='ding' then text = L["stepgoal_ding"]:format(COLOR_NPC(self.level))
	elseif self.action=='fpath' then text = L["stepgoal_fpath"]:format(COLOR_LOC(self.param))
	elseif self.action=='home' then text = L["stepgoal_home"]:format(COLOR_LOC(self.param))
	elseif self.action=='use' then text = L["stepgoal_use"]:format(COLOR_ITEM(self.useitem or "#"..self.useitemid))
	elseif self.action=='cast' then text = L["stepgoal_cast"]:format(COLOR_ITEM(self.castspell or "#"..self.castspellid))
	elseif self.action=='petaction' then text = L["stepgoal_petaction"]:format(self.petaction)
	elseif self.action=='havebuff' then text = L["stepgoal_havebuff"]:format(COLOR_ITEM(self.buff))
	elseif self.action=='nobuff' then text = L["stepgoal_nobuff"]:format(COLOR_ITEM(self.buff))
	elseif self.action=='invehicle' then text = L["stepgoal_invehicle"]
	elseif self.action=='outvehicle' then text = L["stepgoal_outvehicle"]
	elseif self.action=='equipped' then text = L["stepgoal_equipped"]:format(self.item,self.slot)
	elseif self.action=='hearth' then text = L["stepgoal_hearth to"]:format(COLOR_LOC(self.param))
	elseif self.action=='rep' then text = L["stepgoal_rep"]:format(ZGV.StandingNames[self.rep],self.faction)
	elseif self.action=='goto' then
		--if self.CurrentGuide.steps[self.CurrentStepNum-1] and self.CurrentGuide.steps[self.CurrentStepNum-1].map~=goal.map then
		if self.map and GetRealZoneText() ~= self.map then
		-- different map
			if self.x then
				-- and coords
				text = L["stepgoal_go to"]:format( COLOR_LOC(L['map_coords']:format(self.map,self.x,self.y)) )
			else
				-- just the map
				text = L["stepgoal_go to"]:format( COLOR_LOC(("%s"):format(self.map)) )
			end
		else
			-- same map
			text = L["stepgoal_go to"]:format( COLOR_LOC(L['coords']:format(self.x or 0,self.y or 0)) )
		end
	elseif self.action=="achieve" then
		local id, name, points, completed = GetAchievementInfo(self.achieveid)
		if self.achievesub then
			local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
			text = L["stepgoal_achievesub"]:format(COLOR_QUEST(desc),COLOR_ITEM(name))
		else
			text = L["stepgoal_achieve"]:format(COLOR_ITEM(name))
		end
	elseif self.action=="skill" then
		text = L["stepgoal_skill"]:format(COLOR_ITEM(self.skill),self.skilllevel)
	elseif self.action=="skillmax" then
		text = L["stepgoal_skillmax"]:format(COLOR_ITEM(self.skill),self.skilllevel)
	elseif self.action=="learn" then
		text = L["stepgoal_learn"]:format(COLOR_ITEM(self.recipe))
	end

	-- trickiness.
	if self.x -- if there's a coordinate
	and not (self.action=="goto" and not self.text) -- but it's not a plain goto
	and not (self.text and self.text:find("[0-9%.]-,[0-9%.]-")) -- and it's not a coord-in-text
	and not self.force_noway then
		text = text .. L['stepgoal_at_suff']:format(COLOR_LOC(L['coords']:format(self.x,self.y)))
	end

	if self.force_nocomplete and self.action~="collect" and self.action~="buy" then showcompleteness=false end

	if showcompleteness then
		local desc = ""
		--self:Debug("GetTextualCompletionGoal goalindex "..goalIndex)

		-- quest-goal completion display; lame 0/5
		if self.questid then
			--if not self.count then error("Step "..ZGV.CurrentStepNum.." section "..ZGV.CurrentGuideName.." has bad questgoal.") end

			local questdata = ZGV.questsbyid[self.questid]
			if questdata then
				-- quest in log? yay.
				if self.objnum then
					-- goal-bound
					local questgoal = questdata.goals[self.objnum]
					if questgoal then
						local count = self.count or questgoal.needed
						desc = L["completion_goal"]:format(questgoal.num,count)
					end
				else
					-- quest-bound, bugger
					--desc = questdata.complete and L["completion_done"] or ""
				end
			else
				-- not in log...
				if ZGV.completedQuests[self.questid] then
					--  if complete, then complete. Simple.
					--desc = L["completion_done"]
				else
					-- drop through! let it complete on its own.
				end
			end
		end

		if self.action=="ding" then
			local percent
			local level = UnitLevel("player")
			percent = (level<self.level-1) and 0 or (level>=self.level) and 100 or floor(UnitXP("player")/UnitXPMax("player") * 100)
			desc = L["completion_ding"]:format(percent)
		elseif self.action=="home" then
			--desc = self:IsComplete() and L["completion_(done)"] --L["stepgoal_home"]:format(self.param)
		elseif self.action=="fpath" then
			--desc = self:IsComplete() and L["completion_(done)"] --L["stepgoal_flightpath"]:format(self.param)
		elseif self.action=="goto" then
			--desc = ""
			--[[
			if goal.gox then
				desc = L["stepgoal_location"]:format(goal.gozone, goal.gox, goal.goy)
			else
				desc = L["stepgoal_location_onlyzone"]:format(goal.gozone or "?")
			end
			--]]
		elseif self.action=="collect" or self.action=="buy" then
			desc = L["completion_collect"]:format(GetItemCount(self.target),self.count)
		elseif self.action=="rep" then
			desc = L["completion_rep"]:format(ZGV:GetReputation(self.faction):Going())
		elseif self.action=="achieve" then
			if self.achievesub then
				-- partial achievement
				local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
				desc = L["completion_goal"]:format(quantity,required)
			else
				-- full achievement
				local id, name, points, completed = GetAchievementInfo(self.achieveid)
				local numcrit = GetAchievementNumCriteria(self.achieveid)
				local completenum = 0
				for i=1,numcrit do
					local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,i)
					if completed then completenum=completenum+1 end
				end
				desc = L["completion_goal"]:format(completenum,numcrit)
			end
		elseif self.action=="kill" and self.usekillcount then --kill, killcount version
			local count = ZGV.recentKills[self.target]
			desc = L["completion_goal"]:format(count,self.count)
		end

		local complete,ext = self:IsComplete()
		if complete and ZGV.db.profile.goalcolorize then
			text = "|cffbbffbb" .. text:gsub("|c........",""):gsub("|r","") .. "|r"
		end

		if desc and desc~="" then
			if complete then
				text = text .. " " .. desc
			elseif ext then
				text = text .. " |cffffbbbb" .. desc .. "|r"
			else
				text = text .. " |cffaaaaaa" .. desc .. "|r"
			end
		end

	end

	return text
end

function Goal:GetString()
	if self.action=="get" then
		return self.target
	elseif self.action=="goal" then
		return self.target
	elseif self.action=="kill" then
		--return goalstring_slain:format(self.target)
		return self.target
	end
end

function Goal:Prepare()
	if self.castspell or self.castspellid and (not self.castspell or not self.castspellid) then
		local link = GetSpellLink(self.castspellid or self.castspell)
		if link then
			self.castspellid,self.castspell = link:match("spell:([0-9]+).-%[(.-)%]")
			self.castspellid = tonumber(self.castspellid)
		end
	end
	if self.action=="goal" or self.action=="kill" or self.action=="get" then
		if self.questid then
			local questData = ZGV.questsbyid[self.questid]

			if questData and questData.index>0 then
				local questGoal = self:GetString()
				local questGoalData = questData.goalsNamed[questGoal]
				if questGoalData and questGoalData.needed and not self.exact and (not self.count or self.count==0 or self.count>questGoalData.needed) then
					self.count=questGoalData.needed
				end
			end
			if not self.count then self.count=1 end
		end
	end

	-- wipe completed quests by title, if they're instant
	--[[ moved to core code, to be done on ClearRecentActivities
	if self.action=="accept" or self.action=="turnin" then
		if self.questid then
			if ZGV.instantQuests[self.questid] and ZGV.completedQuestTitles[self.quest] then
				ZGV.completedQuestTitles[self.quest] = nil
			end
		end
	end
	--]]

	if not InCombatLockdown() then
		if self.script then
			local macroname = "ZygorGuidesMacro" .. self.num
			local macro = GetMacroIndexByName(macroname)
			if macro==0 then
				macro = CreateMacro(macroname,1,"/run "..self.script,1)
			end
			self.macro = macro
		end
	end

	if self.autoscript then
		local func=loadstring(self.autoscript)
		func()
	end
end

--- Is this goal obsolete?
-- A goal is obsolete when it belongs below the player's level and doesn't lead to any non-obsolete follow-ups.
-- For example, for a level 31 player, most quests belonging in the guide levels 1-30 are obsolete and can safely be omitted.
function Goal:IsObsolete()
	if not self.questid then return end  -- not belonging to any quest
	if self.noobsolete then return end
	if self.parentStep.parentGuide.daily or not self.parentStep.level or self.parentStep.level==0 then return nil end

	--local fups = ZGV:GetMentionedFollowups(self.questid)
	local maxlevel = ZGV.maxQuestLevels[self.questid] or 99
	--assert(#fups>0,"Quest mentioned in guide "..ZGV.CurrentGuideName.." step "..ZGV.CurrentStepNum.." but nowhere else..?")
	local level = UnitLevel("player")
	if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then level=ZGV.db.char.fakelevel end

	--local maxlevel=0
	--for i=1,#fups do if fups[i][2]>maxlevel then maxlevel=fups[i][2] end end

	--if #fups>0 and maxlevel<level-ZGV.db.profile.levelsahead and not ZGV.questsbyid[self.questid] then
	if maxlevel<level-ZGV.db.profile.levelsahead and not ZGV.questsbyid[self.questid] then
		return true
	end
end

function Goal:IsAuxiliary()
	if (self.questid
	or self.action=="accept"
	or self.action=="turnin"
	or self.action=="kill"
	or self.action=="get"
	or self.action=="goal"
	or self.action=="ding") and not self.force_nocomplete
	then
		return false
	elseif self.action=="fpath" then
		local isc = self:IsComplete()
		-- it's true or false if LibTaxi is sure of its data.
		if isc~=nil then return isc end
		-- if it's not... guess.
		local step=self.parentStep
		for i=1,5 do
			step=step:GetNextStep()
			if not step then return false end
			while (step.requirement) do
				step=step:GetNextStep()
				if not step then return false end
			end
			--print("complete? "..tostring(step:IsComplete()))
			if step:IsComplete() then return true end
		end
		return false
	else
		return true
	end
end