local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore) then return end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local ItemScore = ZGV.ItemScore
local AutoEquip -- Not available at load.
local QuestItem = {}
ItemScore.QuestItem = QuestItem

-- Selecting Best Quest reward --
function QuestItem:HideQuestRewardGlow()
	if self.GlowFrame then
		self.GlowFrame:Hide()
		self.GlowFrame:ClearAllPoints()
	end
end

function QuestItem:ShowQuestRewardGlow(index,selling)
	if not index then return end
	local b = G["QuestInfoItem"..index]

	if not self.GlowFrame then
		self.GlowFrame = CHAIN(CreateFrame("Frame","",QuestFrameRewardPanel))
			:SetBackdrop({bgFile="",edgeFile=ZGV.DIR.."\\Skins\\glowborder", edgeSize=5})
			:SetSize(109,45)
			:SetFrameStrata("HIGH")
		.__END

			--Gold Coin to show that we picked an item because of it's sell value. Not used at the moment
			--self.GlowFrame.tex = CHAIN(self.GlowFrame:CreateTexture())
			--	:SetTexture("Interface\\MONEYFRAME\\UI-GoldIcon")
			--	:SetSize(15,15)
			--	:SetPoint("TOPRIGHT")
			--.__END
	end

	self.GlowFrame:SetPoint("CENTER",b,"CENTER",19,2)
	self.GlowFrame:Show()
		--self.GlowFrame.tex:SetShown(selling)
end

function QuestItem:IsQuestItemsReady()
	local totalrewards=GetNumQuestChoices()
	if totalrewards < 1 then return end --no items and this should never have been called.

	local index
	for index=1, totalrewards do --Loop through all items (maybe max 6) before we work with any.
		local link= GetQuestItemLink("choice",index)
		if not link then return end --Need to wait for iteminfo
	end

	return true
end

function QuestItem:GetQuestRewardIndex()
	local totalrewards=GetNumQuestChoices()
	if totalrewards < 1 then return nil,"No items to pick" end
	if totalrewards == 1 then return 1,"Only one item" end

	if not self:IsQuestItemsReady() then return -5,"Items not ready" end

	local highSellValue, highSellIndex, upgradeScore,upgradeQuestIndex = 0,nil,0,nil

	local function newPossQuestUpgrade(increasedScore,questindex)
		if upgradeScore < increasedScore then --We found a upgrade, see if it is the best one
			upgradeScore,upgradeQuestIndex = increasedScore,questindex
		end
	end

	AutoEquip:ScoreCurrentEquippedItems(1) --Call this so we have an updated list of our current items.
	if not AutoEquip.CurrentItemsReady then return -5,"Cur Items not ready" end

	local curGear = AutoEquip.CurrentGear
	local index

	for index=1, totalrewards do while(1) do -- Now that we are sure the info is there. Do work!
		local name,texture,numItems,quality,isUsable=GetQuestItemInfo("choice",index)
		local link= GetQuestItemLink("choice",index)
		if not (link and name) then break end --WTF check

		local itemid = tonumber(link:match("item:(%d+)"))
		local equipslot,_,price = select(9,GetItemInfo(itemid))

		--TODO CONSUMABLES!

		local slot1, slot2 = ItemScore:GetItemSlot(equipslot)
		if not slot1 then break end --Some kind of item we don't deal with. Food or something.

		if price > highSellValue then --Test all items for this to find which item is worth the most.
			highSellValue,highSellIndex = price,index
		end

		if not isUsable then break end -- Already got the price so if it is not usable then stop

		self:Debug("Testing item "..link)

		local questItemScore,info = ItemScore:GetItemScore(itemid,nil,link)
		if questItemScore < 0 then break end

		if not curGear[slot1] then -- no item in slot, upgrade is total item.
			if slot1 == "SecondaryHandSlot" --OH weapon or holdable item
			and curGear["MainHandSlot"] and curGear["MainHandSlot"].equipslot=="INVTYPE_2HWEAPON" then
				--We have a staff equipped so a holdable item is not an upgrade.
				break
			end

			newPossQuestUpgrade(questItemScore,index)
		elseif slot1 == "MainHandSlot" and curGear[slot1] and curGear["SecondaryHandSlot"] and equipslot=="INVTYPE_2HWEAPON"
		and not (ItemScore.playerdualwield or ItemScore.playerdual2h) then
			-- Trying to equip a 2h over a MH and OH combo. See if it is better than the stats combined before suggesting.
			local ohscore = ItemScore:ScoreItemStats(curGear["SecondaryHandSlot"].itemid, nil, curGear["SecondaryHandSlot"].link)
			local combinedScore = curGear[slot1].score + ohscore

			if combinedScore < questItemScore then
				newPossQuestUpgrade((questItemScore-combinedScore),index)
			end
		elseif curGear[slot1].score < questItemScore then -- already have an item, upgrade is the difference
			newPossQuestUpgrade((questItemScore-curGear[slot1].score),index)
		end

		if slot2 then
			if not curGear[slot2] then -- no item in slot, upgrade is total item.
				newPossQuestUpgrade(questItemScore,index)
			elseif curGear[slot2].score < questItemScore then -- already have an item, upgrade is the difference
				newPossQuestUpgrade((questItemScore-curGear[slot2].score),index)
			end
		end

	break end end

	if upgradeQuestIndex then
		return upgradeQuestIndex,"New Upgrade found"
	elseif highSellIndex then
		return highSellIndex,"Item picked because it is worth money"
	end

	return nil,"Error"
end

--== Suggesting Quest item for current step

local function QuestItem_StepReset(step)
	self = QuestItem
	self.StepTimer = GetTime()

	if self.QuestItemPopup and self.QuestItemPopup:IsVisible() then
		self.QuestItemPopup:Hide() --show it again if needed.
	end
end

--[[
	Tests the current step to see if any of the goals have a quest item that is required for them.

	Looks at goals with the action equipped. Which is a guide telling the user to equip an item.
	Also looks at the goal.questid and sees if that qid is associated with an itemid in our cache.

	Returns questid,itemid if a pair is found.
--]]

function QuestItem:TestCurStepForQuestItem()
	local cur = ZGV.CurrentStep
	if not cur then return end

	for i,goal in ipairs(cur.goals) do
		if goal.action == "equipped" then
			for questid,itemid in pairs(ZGV.db.profile.questitemcache) do
				if ZGV.completedQuests[questid] then
					ZGV.db.profile.questitemcache[questid] = nil--If the quest is done, we don't need to know the item for it anymore.
				else
					if itemid == goal.itemid and GetItemCount(goal.itemid) then --found item. and user has the item.
						self:Debug(("Current step has a quest item available. Item: %s Quest: %s"):format(itemid,questid))
						return questid,itemid
					end
				end
			end
		elseif goal.questid then
			if ZGV.completedQuests[goal.questid] then ZGV.db.profile.questitemcache[goal.questid] = nil end --If the quest is done, we don't need to know the item for it anymore.
			if ZGV.db.profile.questitemcache[goal.questid] and GetItemCount(ZGV.db.profile.questitemcache[goal.questid]) > 0  then --found item and the user definately has it.
				self:Debug(("Current step has a quest item available. Item: %s Quest: %s"):format(ZGV.db.profile.questitemcache[goal.questid],goal.questid))
				return goal.questid,ZGV.db.profile.questitemcache[goal.questid]
			end
		end
	end
end

local function CreateQuestPopup()
	local CHAIN = ZGV.ChainCall
	local F = ZGV.PopupHandler:NewPopup("ZygorQuestPopup","default","stealth")

	local function showTooltip(self,linkData) GameTooltip:SetOwner(self,"ANCHOR_BOTTOMLEFT") GameTooltip:SetHyperlink(linkData) GameTooltip:Show() end

	local function hideTooltip() GameTooltip:Hide() end

	F:SetWidth(300)

	-- TODO make it show the hyperlink when you hover over it. Make it a frame w/ texture. OnEnter itemname_new:GetScript("OnHyperlinkEnter")()?
	-- Item Icon.
	F.tex = CHAIN(F:CreateTexture()) :SetPoint("TOP",F.text,"BOTTOM",0,-3) :SetSize(35,35).__END

	-- Hyperlink of the item being equipped.
	F.itemname_new=CHAIN(CreateFrame("EditBox",nil,F))
		:SetHeight(13) :SetFont(FONT,13) :SetPoint("TOP",F.tex,"BOTTOM",0,-3)
		:SetHyperlinksEnabled(true) :Disable() :SetJustifyH("CENTER")
		:SetCursorPosition(0)
		:SetWidth(F:GetWidth()-15) -- -15 for the gap on each side
		:SetScript("OnHyperlinkEnter", showTooltip) :SetScript("OnHyperlinkLeave", hideTooltip)
	.__END

	F.text:SetFont(FONT,13)

	F.text2=CHAIN(F.text2)
		:SetPoint("TOP",F.itemname_new,"BOTTOM",0,-5)
		:SetJustifyH("CENTER")
		:SetFont(FONT,13)
		:SetSpacing(5)
	.__END

	F.OnAccept = function(self)
		QuestItem_StepReset(0) -- Reset the onupdate timer so that popup doesn't appear before we can equip the item.

		-- Values are stored in ZGV.db.profile so that they don't disappear if we reload.
		if not self.reequipping then
			ZGV.db.profile.questitemid = self.itemid
			ZGV.db.profile.questitemreplaced = self.replacing
		else
			self.reequipping = nil
			ZGV.db.profile.questitemid = nil
			ZGV.db.profile.questitemreplaced = nil
		end

		--equip it!
		EquipItemByName(self.itemid)
	end

	F.OnDecline = function(self)
		self.reequipping = nil
		ZGV.db.profile.questitemcache[self.questid] = nil
		ZGV.db.profile.questitemid = nil
		ZGV.db.profile.questitemreplaced = nil
	end

	F.OnEscape =  F.DeclineFunc
	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local offsets = 10 + 10 + 5 + 10 --Logo and top + text and buttons + buttons and bottom
		self:SetHeight(offsets + self.text:GetStringHeight() + self.tex:GetHeight() + self.itemname_new:GetHeight() + self.text2:GetStringHeight() + self.logo:GetHeight() + self.acceptbutton:GetHeight() )
	end

	F.returnMinimizeSettings = function(self)
		local notifcationText = L['notifcenter_quest_text']
		local tooltipText = L['notifcenter_gen_popup_tooltip']

		local function OnOpen() -- If the guide is completed then we know all the needed trainings
			local questid,questitemid = QuestItem:TestCurStepForQuestItem()

			if not questid or self.questid~=questid or self.itemid~=questitemid then
				if ZGV.Testing.DontHidePopups then return end
				ZGV.NotificationCenter.RemoveButton(self:GetName())
			end
		end

		return notifcationText,tooltipText,nil,nil,nil,nil,OnOpen
	end

	return F
end

function QuestItem:ModifyQuestPopup(questid,itemid,popupNum,replacing)
	if not questid or not itemid then return end
	self:Debug(("Modding the Popup and showing it. Equipping %s, Replacing %s"):format((select(2,GetItemInfo(itemid))),(select(2,GetItemInfo(replacing))) or "empty"))

	if not self.QuestItemPopup then return end
	local F = self.QuestItemPopup
	local text1,text2 = L['itemscore_questitem1'] , ""

	F.itemid = itemid
	F.questid = questid
	F.replacing = replacing

	if popupNum==1 then
		text2 = L['itemscore_questitem2']
	elseif popupNum==2 then
		F.reequipping = true
		text2 = L['itemscore_questitem3']
	end

	F.tex:SetTexture((select(10,GetItemInfo(itemid))))
	F.itemname_new:SetText((select(2,GetItemInfo(itemid))))
	F.itemname_new:SetCursorPosition(0)

	F:SetText(text1,text2)

	if AutoEquip.Popup and AutoEquip.Popup:IsVisible() then
		 --Don't play nice, if it is showing something it could be the item we are trying to equip so hide it until we are done.
		AutoEquip.Popup:OnEscape() AutoEquip.Popup:Hide()
	end

	self.QuestItemPopup:Show()
end
--/run ZGV.ItemScore:FoundQuestItemForCurStep(235,19019)
function QuestItem:FoundQuestItemForCurStep(questid,itemid)
	self:Debug( ("Found a quest item to equip for the current step. Quest: %d , Item : %s"):format(questid,(select(2,GetItemInfo(itemid))) or "empty"))

	local equipslot = select(9,GetItemInfo(itemid))
	local slot1,slot2 = ItemScore:GetItemInSlot(equipslot)

	if not slot1 then slot1 = 0 end

	if not self.QuestItemPopup then
		self.QuestItemPopup = CreateQuestPopup()
	end
	if not self.QuestItemPopup:IsVisible() then -- and not ZGV.db.profile.questitemid then --the slot checks should cover it, but QuestItemEquipped is udated instantly and doesn't wait for the item to be put on.
		if slot1~=itemid and (not slot2 or slot2~=itemid) then
			self:ModifyQuestPopup(questid,itemid,1,slot1)
		end
	end
end

function QuestItem:ReEquipNormalItem()
	--self:Debug("Attempting to requip a item.")
	local normItem = ZGV.db.profile.questitemreplaced
	local questItem = ZGV.db.profile.questitemid

	if normItem == 0 or GetItemCount(normItem) < 1 then --They had no item when they started so don't do anything. or they got rid of the item they were using.
		if self.QuestItemPopup then self.QuestItemPopup.reequipping = nil end
		ZGV.db.profile.questitemid = nil
		ZGV.db.profile.questitemreplaced = nil
		return
	end

	local equipslot = select(9,GetItemInfo(questItem))
	local slot1,slot2 = ItemScore:GetItemInSlot(equipslot)

	if not self.QuestItemPopup then
		self.QuestItemPopup = CreateQuestPopup()
	end
	if not self.QuestItemPopup:IsVisible() and slot1==questItem then
	--the slot checks should cover it, but QuestItemEquipped is udated instantly and doesn't wait for the item to be put on.
		self:ModifyQuestPopup(self.QuestItemPopup.questid or 0,normItem,2,questItem)
		ZGV.db.profile.questitemcache[self.QuestItemPopup.questid ] = nil
	end
	
	self.QuestItemPopup.reequipping = nil
	ZGV.db.profile.questitemid = nil
	ZGV.db.profile.questitemreplaced = nil
end

--== General

function QuestItem:Startup()
	AutoEquip = ItemScore.AutoEquip
	ZGV:AddMessage("ZYGORGV_STEP_CHANGED",QuestItem_StepReset)
end

function QuestItem:Debug(...)
	local str = ...
	ItemScore:Debug("&questitem "..str, select(2,...) )
end

tinsert(ZGV.startups,function(self)
	QuestItem:Startup()
end)