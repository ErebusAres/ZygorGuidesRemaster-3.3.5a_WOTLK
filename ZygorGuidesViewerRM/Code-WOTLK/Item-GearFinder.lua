local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore and ZGV.ItemScore.GearFinder) then return end
local GearFinder = ZGV.ItemScore.GearFinder

local function SetCharacterHeaderShown(shown)
	local method = shown and "Show" or "Hide"
	local frames = {
		_G.CharacterNameText,
		_G.CharacterFramePortrait,
		_G.CharacterFrameCloseButton,
	}
	for _,frame in ipairs(frames) do
		if frame and frame[method] then
			frame[method](frame)
		end
	end
end

GearFinder.PAST_DUNGEONS_LIMIT = 10 -- match retail-style finder focus; ignore far-obsolete dungeons sooner
GearFinder.FUTURE_DUNGEONS_LIMIT = 5 -- how many levels to look ahead for future upgrades

function GearFinder:Initialise()
	GearFinder:CreateMainFrame()
	GearFinder:UpdateSystemTab()

	GearFinder.MainFrame:SetScript("OnHide",function()
		SetCharacterHeaderShown(true)
		-- Restore the character tab that was active before
		if not GearFinder.ClosingCharacterFrame and PaperDollFrame then PaperDollFrame:Show() end
		GearFinder.ClosingCharacterFrame = nil
	end)

	if not GearFinder.ToggleCharacterHooked and ToggleCharacter and hooksecurefunc then
		hooksecurefunc("ToggleCharacter", function()
			if GearFinder.MainFrame and GearFinder.MainFrame:IsShown() then
				GearFinder.ClosingCharacterFrame = true
				GearFinder.MainFrame:Hide()
				if CharacterFrame and CharacterFrame:IsShown() and HideUIPanel then
					HideUIPanel(CharacterFrame)
				end
			end
		end)
		GearFinder.ToggleCharacterHooked = true
	end
end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui and ui.SkinData

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop
local completedQuestsCache = {}
local function IsQuestFlaggedCompleted(questID)
	if _G.IsQuestFlaggedCompleted then
		return _G.IsQuestFlaggedCompleted(questID)
	end
	if GetQuestsCompleted then
		wipe(completedQuestsCache)
		GetQuestsCompleted(completedQuestsCache)
		return completedQuestsCache[questID] and true or false
	end
	return false
end

local ItemScore = ZGV.ItemScore

local PAST_DUNGEONS_LIMIT = 30 -- how many levels can user be above min level before we start ignoring its dungeon
local FUTURE_DUNGEONS_LIMIT = 5 -- how many levels to look ahead for future upgrades

-- support function for character frame system tab creation
local function OnNonZygorClick()
	if GearFinder.MainFrame:IsVisible() then
		SetCharacterHeaderShown(true)
		GearFinder.MainFrame:Hide()
	end
end

function GearFinder:AttachFrame()
	self.PaperDollButtonFrame = ZGV.ChainCall(ZGV.CreateFrameWithBG("FRAME",nil,PaperDollFrame))
		:SetPoint("TOPRIGHT", PaperDollFrame, "TOPRIGHT", -40, -12)
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:Show()
	.__END

	self.PaperDollButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", nil , self.PaperDollButtonFrame))
		:SetSize(20,20)
		:SetPoint("TOPLEFT", self.PaperDollButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\zglogo-back"})
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() 
			GearFinder:ShowFinder()	
		end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText("Toggle Zygor Gear Finder") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:Show()
	.__END
	self.PaperDollButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)

end

function GearFinder:UpdateSystemTab()
	local enabled = ZGV.db and ZGV.db.profile and ZGV.db.profile.autogear
	if enabled then
		if GearFinder.PaperDollButtonFrame then GearFinder.PaperDollButtonFrame:Show() end
	else
		if GearFinder.PaperDollButtonFrame then GearFinder.PaperDollButtonFrame:Hide() end
		if GearFinder.MainFrame then GearFinder.MainFrame:Hide() end
	end
end

function GearFinder:ShowFinder()
	if not (ZGV.db and ZGV.db.profile and ZGV.db.profile.autogear) then
		GearFinder:UpdateSystemTab()
		return
	end
	if ZygorGearFinder and ZygorGearFinder:IsVisible() then GearFinder.MainFrame:Hide() return end

	if CharacterFrame and not CharacterFrame:IsShown() and ToggleCharacter then
		ToggleCharacter("PaperDollFrame")
	end

	-- Hook character frame tabs to hide gear finder when user clicks them
	if not GearFinder.HookedChar then
		if hooksecurefunc and _G.CharacterFrameTab_OnClick then
			hooksecurefunc("CharacterFrameTab_OnClick", function()
				if GearFinder.MainFrame and GearFinder.MainFrame:IsVisible() then
					GearFinder.ClosingCharacterFrame = nil
					SetCharacterHeaderShown(true)
					GearFinder.MainFrame:Hide()
				end
			end)
		end
		GearFinder.HookedChar = true
	end

	-- Hide ALL character frame sub-panels
	SetCharacterHeaderShown(false)
	if PaperDollFrame then PaperDollFrame:Hide() end
	if SkillFrame then SkillFrame:Hide() end
	if ReputationFrame then ReputationFrame:Hide() end
	if PetPaperDollFrame then PetPaperDollFrame:Hide() end
	if TokenFrame then TokenFrame:Hide() end
	if PVPFrame then PVPFrame:Hide() end

	for i=1,(CharacterFrame.numTabs or 5) do
		local tab = _G["CharacterFrameTab"..i]
		if tab then PanelTemplates_DeselectTab(tab) end
	end

	if ItemScore and ItemScore.Upgrades and ItemScore.Upgrades.ScoreEquippedItems then
		if ItemScore.SetStatWeights then
			ItemScore:SetStatWeights()
		end
		ItemScore.Upgrades:ScoreEquippedItems()
	end

	ZygorGearFinder:Show()
	GearFinder:ScoreDungeonItems()
end
