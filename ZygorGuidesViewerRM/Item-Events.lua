local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore) then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ItemScore = ZGV.ItemScore
local AutoEquip =  ItemScore.AutoEquip
local GearFinder = ItemScore.GearFinder
local QuestItem = ItemScore.QuestItem

local time = time

local Events = {}
ItemScore.Events = Events

--[[
	Common place for all event driven actions in the Item System. Need a single place for all of them because
	a lot of them work off of each other so it is important to be able to control the order.

	Some Event info. Gear is not ready on first Player Enter World. So rewrite it on PLAYER_AVG_ITEM_LEVEL_READY
	but, PLAYER_AVG_ITEM_LEVEL_READY is not fired on Reload and the info at PEW is good.
--]]

function Events:OnEvent(event,arg1,arg2,...)
	self = Events
	self:Debug(event,arg1,arg2)

	if event == "LOADING_SCREEN_DISABLED" then
		ItemScore:SetFilters()
		AutoEquip:ScoreCurrentEquippedItems()
	elseif event == "PLAYER_AVG_ITEM_LEVEL_READY" then
		ItemScore:SetFilters()
		AutoEquip:ScoreCurrentEquippedItems()
	elseif event == "PLAYER_LEVEL_UP" then
		ItemScore:SetFilters()
		wipe(AutoEquip.ScoreCache)
		AutoEquip:ScoreCurrentEquippedItems()
	elseif event == "ACTIVE_TALENT_GROUP_CHANGED" or
	event == "PLAYER_SPECIALIZATION_CHANGED" then
		ItemScore:SetFilters()
		wipe(AutoEquip.ScoreCache)
		AutoEquip:ScoreCurrentEquippedItems()

		AutoEquip:ScanBagsForUpgrades()
	elseif event == "BAG_UPDATE_DELAYED" then
		--if AutoEquip.newitemfound then
			--ae.newitemfound=nil
			--ae:ScanBagsForUpgrades()
		--else
		if AutoEquip.itemjustequipped then
			AutoEquip.itemjustequipped = nil
			AutoEquip:TryToEquipItem()
		elseif AutoEquip.testNoneUserBag then
			AutoEquip:NonUserQuestItemTest()
		else
			AutoEquip:ScanBagsForUpgrades()
		end
	elseif event == "PLAYER_EQUIPMENT_CHANGED" then
		AutoEquip:ScoreCurrentEquippedItems()

	elseif event == "ITEM_PUSH"					-- Item from ground
	or event == "PLAYERBANKSLOTS_CHANGED" then	-- Item from bank
		AutoEquip.newitemfound=arg2
		if not ZGV.db.profile.autogear and ZGV.mostRecentlyAcceptedQuest and time() - (ZGV.mostRecentlyAcceptedQuest.time or time()) < 5 then
			-- Quest item suggestion support for non-autogear users.
			AutoEquip.testNoneUserBag = { arg1= arg1, arg2=arg2 }
		end
	elseif event == "PLAYER_REGEN_DISABLED" then
		if AutoEquip.Popup and AutoEquip.Popup:IsVisible() then
			AutoEquip.Popup:OnEscape()	AutoEquip.Popup:Hide() --Pushs item back onto queue and hide the popup
			AutoEquip.call_after_combat = function() AutoEquip:TryToEquipItem() end
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		if AutoEquip.call_after_combat then
			AutoEquip.call_after_combat()
			AutoEquip.call_after_combat=nil
		end
	end
end


function Events:OnUpdate(elasped)
	-- Handles updates / caching for the Gear Finder
	GearFinder:FrameOnUpdate()

	--print(AutoEquip.Popup and AutoEquip.Popup.manualvisible or "not")

	if ZGV.db.profile.autogear and not AutoEquip.ready and ZGV.guidesloaded then
		AutoEquip.ready = true
		AutoEquip:ScanBagsForUpgrades()
	end


	--TODO Take off a quest item while on a step that trys to make you equip it, with auto equip on.
	--TODO Requip the best item if they are using AE, instead of what they had on before. Picking up a better item while they use the quest item...

	if ZGV.db.profile.n_popup_guides and --TODO. Maybe we should still show it.... don't do anything if they turn this off.
	ZGV.Frame:IsVisible() and --Frame is shown
	QuestItem.StepTimer and time() - QuestItem.StepTimer > 1  and --check once per second
	(not QuestItem.QuestItemPopup or (QuestItem.QuestItemPopup and not QuestItem.QuestItemPopup:IsVisible())) then
		QuestItem.StepTimer = time()
		local questid,itemid = QuestItem:TestCurStepForQuestItem()

		if questid and itemid then
			local equipslot = select(9,GetItemInfo(itemid))
			local slot1,slot2 = ItemScore:GetItemInSlot(equipslot)

			if slot1~=itemid and (not slot2 or slot2~=itemid) then
				-- We don't have the quest item already equipped.
				QuestItem:FoundQuestItemForCurStep(questid,itemid)
			end
		elseif ZGV.db.profile.questitemreplaced and ZGV.db.profile.questitemid then
			QuestItem:ReEquipNormalItem()
		end
	end
end

function Events:RegisterEvents()
	self.eventFrame=CreateFrame("Frame")

	CHAIN(self.eventFrame)
		:RegisterEvent("LOADING_SCREEN_DISABLED")
		:RegisterEvent("ZONE_CHANGED")
		:RegisterEvent("BAG_UPDATE_DELAYED")
		:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
		:RegisterEvent("ITEM_PUSH")
		:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
		:RegisterEvent("PLAYER_AVG_ITEM_LEVEL_READY")
		:RegisterEvent("PLAYER_LEVEL_UP")
		:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED") --This is fired on reload and zone change
		:RegisterEvent("PLAYER_REGEN_DISABLED")
		:RegisterEvent("PLAYER_REGEN_ENABLED")

		--:RegisterEvent("USE_BIND_CONFIRM") --Which one?
		--:RegisterEvent("AUTOEQUIP_BIND_CONFIRM")
		--:RegisterEvent("EQUIP_BIND_CONFIRM")

		:SetScript("OnEvent",function(self,event,...) Events:OnEvent(event,...) end)
		:SetScript("OnUpdate",function(self,...) Events:OnUpdate(...) end)

		:Show()
end

function Events:Debug(...)
	local str = ...
	ItemScore:Debug("&itemevents "..str, select(2,...) )
end

tinsert(ZGV.startups,function(self)
	Events:RegisterEvents()
end)