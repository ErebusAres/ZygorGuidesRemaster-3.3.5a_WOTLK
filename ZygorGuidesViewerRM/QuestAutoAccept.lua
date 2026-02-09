local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then return end

local _G=_G

function ZGV_DeclineQuest()
	ZGV.tmp_no_autoquest=time()
end

-- fixes for Blizzard autoaccepting madness.
--[[
function QuestFrameDetailPanel_OnShow_after()
	if ZGV.db.profile.fixblizzardautoaccept and QuestFrame:IsVisible() and QuestFrame.autoQuest then
		local forceful = false
		if forceful then
			print("un-autoquest, hamfisted approach")
			-- hamfisted approach
			local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
			if q then
				-- found the accepted quest - ABANDON it now

				--
				--local sound=GetCVar("Sound_EnableSFX")
				--SetCVar("Sound_EnableSFX","0")
				--SelectQuestLogEntry(q.index)
				--SetAbandonQuest()
				--print("abandoned "..q.index.." "..q.title)
				--AbandonQuest()
				--SetCVar("Sound_EnableSFX",sound)
				QuestFrameDetailPanelBotRight:SetTexture("Interface\\QuestFrame\\UI-QuestGreeting-BotRight");
				QuestFrameDeclineButton:Show();
				QuestFrameAcceptButton:SetText(_G['ACCEPT'])
				QuestFrame.autoQuest = nil;
			end
		else
			-- purely cosmetic approach
			local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
			if q then
				QuestFrameAcceptButton:SetText(_G['CALENDAR_STATUS_ACCEPTED'])
			else
				QuestFrameAcceptButton:SetText(_G['ACCEPT'])
			end
		end
	end
end
--]]

function QuestFrameDetailPanel_fixAutoQuest()
	if ZGV.db.profile.fixblizzardautoaccept and QuestFrame:IsVisible() and QuestFrame.autoQuest then
		-- purely cosmetic approach
		local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
		if q then
			QuestFrameAcceptButton:SetText(_G['CALENDAR_STATUS_ACCEPTED'])
		else
			QuestFrameAcceptButton:SetText(_G['ACCEPT'])
		end
	else
		QuestFrameAcceptButton:SetText(_G['ACCEPT'])
	end
end



tinsert(ZGV.startups,function(self)
		-- quest auto turnin/accept
	self:AddEvent("GOSSIP_SHOW")
	self:AddEvent("QUEST_GREETING")
	self:AddEvent("QUEST_DETAIL")
	self:AddEvent("QUEST_PROGRESS")
	self:AddEvent("QUEST_COMPLETE")
	self:AddEvent("QUEST_LOG_UPDATE",QuestFrameDetailPanel_fixAutoQuest)
	--hooksecurefunc("QuestRewardCancelButton_OnClick",ZGV_QuestRewardCancelButton_OnClick)
	hooksecurefunc("DeclineQuest",ZGV_DeclineQuest)
	--hooksecurefunc("QuestFrameDetailPanel_OnShow",QuestFrameDetailPanel_OnShow_after)
	QuestFrameDetailPanel:HookScript("OnShow",QuestFrameDetailPanel_fixAutoQuest)
end)

function me:QUEST_GREETING()
	if not self.CurrentStep then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	if self.db.profile.autoturnin then
		for qnum=1,GetNumActiveQuests() do
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="turnin" and goal.quest==GetActiveTitle(qnum) and goal:GetStatus()=="incomplete" then
					self:Print("Activating quest")
					SelectActiveQuest(qnum)
					return
				end
			end
		end
	end
	if self.db.profile.autoaccept then
		for qnum=1,GetNumAvailableQuests() do
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="accept" and goal.quest==GetAvailableTitle(qnum) and goal:GetStatus()=="incomplete" then
					self:Print("Opening quest")
					SelectAvailableQuest(qnum)
					return
				end
			end
		end
	end
end

function me:GOSSIP_SHOW()
	if not self.CurrentStep then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	if self.db.profile.autoturnin then
		local quests={GetGossipActiveQuests()}
		for qnum=1,GetNumGossipActiveQuests() do
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="turnin" and goal.quest==quests[qnum*3-2] and goal:GetStatus()=="incomplete" then
					self:Print("Activating quest")
					SelectGossipActiveQuest(qnum)
					return
				end
			end
		end
	end
	if self.db.profile.autoaccept then
		local quests={GetGossipAvailableQuests()}
		for qnum=1,GetNumGossipAvailableQuests() do
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="accept" and goal.quest==quests[qnum*3-2] and goal:GetStatus()=="incomplete" then
					self:Print("Opening quest")
					SelectGossipAvailableQuest(qnum)
					return
				end
			end
		end
	end
end

function me:QUEST_DETAIL()
	if not self.CurrentStep then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	if self.db.profile.autoaccept then
		local title = GetTitleText()
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.action=="accept" and goal.quest==title and goal:IsCompleteable() and not goal:IsObsolete() then
				self:Print("Accepting quest")
				QuestDetailAcceptButton_OnClick()
				-- ASSUMING it runs after the builtin QuestFrame code.
				-- But it seems to, if the title matches...
				return
			end
		end
	end
end

function me:QUEST_PROGRESS()
	if not self.CurrentStep then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	if self.db.profile.autoturnin then
		if not IsQuestCompletable() then return end
		local title = GetTitleText()
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.quest==title then
				self:Print("Completing quest")
				CompleteQuest()
				return
			end
		end
	end
end

function me:QUEST_COMPLETE()
	if not self.CurrentStep then return end
	-- 836: seems not necessary anymore; moving to QuestAutoAccept.lua
	--self:Debug('QUEST_COMPLETE: '..tostring(GetTitleText()).." (talker: "..tostring(UnitName("target"))..")")
	--self.completingQuest = GetTitleText()
	--self:RecordData(self.questIndicesByTitle[GetTitleText()], 'finish', QuestFrameNpcNameText:GetText())

	if self.db.profile.autoturnin then
		if (GetNumQuestChoices()>0) then return end
		local title = GetTitleText()
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.quest==title then
				self:Print("Turning in quest")
				GetQuestReward()
				return
			end
		end
	end
end

