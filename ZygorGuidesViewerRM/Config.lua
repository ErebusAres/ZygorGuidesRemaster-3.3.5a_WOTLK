local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Config = {}
ZGV.Config = Config

tinsert(ZGV.startups,function(self)
	Config:RegisterEvents()
end)

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local L = ZGV.L

local CHAIN = ZGV.ChainCall

Config.Settings = {
	Align="CENTER", --LEFT,RIGHT default CENTER
	autoaccept = false,
	autoturnin = false,
	autoselectitem = false,
	autogear = true,
	--autogearframe = true,
	autotaxi = false,
	autosell = false,
	runtut = false,
}

local function SaveSettings(source)
	if not source then return end

	local Set=Config.Settings

	if source=="new" then
		Set.autogear=true	Set.autosell=true
	elseif source=="exp" then
		Set.autogear=true	--Set.autogearframe=false --Stop auto equipping.
		Set.autosell=true	Set.autotaxi=true
		Set.autoaccept=true	Set.autoturnin=true
		Set.autoselectitem=true
	elseif source=="end" then
		if Config.Frame5.Check:GetChecked() then
			Set.runtut=true
		else
			Set.runtut=false
		end
	else --Manual Setup
		local Checks=Config.Frame4.Checks
		for i=1, #Checks do
			if Checks[i]:GetChecked() then
				Set[Checks[i].option]=true
			else
				Set[Checks[i].option]=false
			end
		end
		--Set.autogearframe = not Set.autogearframe --flip this one, it is backwards from the option.
	end
end

local function NewScreen(oldFrame,newFrame)
	local main=Config
	main.SkipButton:ClearAllPoints() main.ContButton:ClearAllPoints() main.BackButton:ClearAllPoints()

	if newFrame==main.Frame2 or newFrame==main.Frame3 then
		newFrame.SkipButton=main.SkipButton CHAIN(newFrame.SkipButton) :SetParent(newFrame) :SetPoint("BOTTOMRIGHT",newFrame,"BOTTOMRIGHT",-5,5)
	elseif newFrame==main.Frame1 then
		newFrame.SkipButton=main.SkipButton CHAIN(newFrame.SkipButton) :SetParent(newFrame) :SetPoint("BOTTOMRIGHT",newFrame,"BOTTOMRIGHT",-5,5)
		newFrame.ContButton=main.ContButton CHAIN(newFrame.ContButton) :SetParent(newFrame) :SetPoint("RIGHT",newFrame.SkipButton,"LEFT",-5,0)
	elseif newFrame==main.Frame4 then
		newFrame.ContButton=main.ContButton CHAIN(newFrame.ContButton) :SetParent(newFrame) :SetPoint("BOTTOMRIGHT",newFrame,"BOTTOMRIGHT",-5,5)
		newFrame.ContButton:HookScript("OnClick",SaveSettings)
	end

	if newFrame.prev then
		newFrame.BackButton=main.BackButton CHAIN(newFrame.BackButton) :SetParent(newFrame) :SetPoint("BOTTOMLEFT",newFrame,"BOTTOMLEFT",5,5)
	end

	oldFrame:Hide() newFrame:Show()
end

local function Config_Continue(self)
	local startFrame=self:GetParent()
	local nextFrame=startFrame.next

	if startFrame==Config.Frame1 and self==Config.SkipButton then --Did we hit the skip button on the first screen?
		Config:Finish()
		return
	end

	NewScreen(startFrame,nextFrame)
end

local function Config_Back(self)
	local startFrame=self:GetParent()
	local prevFrame=startFrame.prev

	if startFrame==Config.Frame4 then --This is the frame with all of the options
		SaveSettings()
	end

	NewScreen(startFrame,prevFrame)
end

local function SetSettings()
	local option,set
	for option,set in pairs(Config.Settings) do
		if ZGV.db.profile[option]~=nil then --want to be able to set false.
			ZGV.db.profile[option]=set
		end
	end
end

local function PlaceZGV(place)
	ZGV.Frame:GetParent():ClearAllPoints()

	if place=="LEFT" then
		ZGV.Frame:GetParent():SetPoint("LEFT",UIParent,"LEFT",150,0)
	elseif place=="RIGHT" then
		ZGV.Frame:GetParent():SetPoint("RIGHT",UIParent,"RIGHT",-450,0)
	else
		ZGV.Frame:GetParent():SetPoint("CENTER",UIParent,"CENTER",-100,100)
	end

	ZGV.Pointer.ArrowFrameCtrl:ClearAllPoints()
	ZGV.Pointer.ArrowFrameCtrl:SetPoint("BOTTOM",ZGV.Frame,"TOP",0,50)
end

function Config:Finish()
	SetSettings()
	PlaceZGV(Config.Settings.Align)

	if Config.Settings.runtut then
		ZGV:ScheduleTimer(function() ZGV.Tutorial:Run() end, 1.5) -- Run the tutorial once the config has faded out?
	end

	ZGV.Config.Base:Hide()
	UIFrameFadeIn(ZGV.Frame,2.0,0.0,1.0) UIFrameFadeIn(ZGV.CreatureViewer.Frame,2.0,0.0,1.0)
	UIFrameFadeIn(ZGV.Pointer.ArrowFrameCtrl,2.0,0.0,1.0)
	
	self.Running=false
	ZGV.db.profile.ranconfig=true
end

function Config:CreateFrame()
	self.Base = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Base", UIParent, ""))
		:SetSize(500,460) :SetPoint("CENTER",UIParent,"CENTER",0,0)
		:SetMovable(true) :SetClampedToScreen(true)
	.__END

	--Buttons for use. Set their parent and point when they are needed.
	self.SkipButton = CHAIN(CreateFrame("Button", "ZGV_Config_Skip", self.Base , "ZygorGuidesViewer_Default_Button")) :SetSize(75,30)
			:SetScript("OnClick",function(self) Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
		.__END
		self.SkipButton.label = CHAIN(self.SkipButton:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0):SetText(L['guideconfig_skipbutton']).__END
		self.SkipButton:SetFontString(self.SkipButton.label)

	self.ContButton = CHAIN(CreateFrame("Button", "ZGV_Config_Continue", self.Base , "ZygorGuidesViewer_Default_Button")) :SetSize(125,30)
			:SetScript("OnClick",function(self) Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
		.__END
		self.ContButton.label = CHAIN(self.ContButton:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0):SetText(L['guideconfig_contbutton']).__END
		self.ContButton:SetFontString(self.ContButton.label)

	self.BackButton = CHAIN(CreateFrame("Button", "ZGV_Config_Back", self.Base , "ZygorGuidesViewer_Default_Button")) :SetSize(75,30)
			:SetScript("OnClick",function(self) Config_Back(self) end) :RegisterForClicks("LeftButtonUp")
		.__END
		self.BackButton.label = CHAIN(self.BackButton:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0):SetText(L['guideconfig_backbutton']).__END
		self.BackButton:SetFontString(self.BackButton.label)

	do -- Frame1
		self.Frame1 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config1", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END
		local F=self.Frame1
		F.Gnome = CHAIN(F:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygor_mascot") :SetPoint("CENTER",F,"CENTER",0,0) :SetSize(350,350)

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,25)  :SetText(L['guideconfig_maintitle'])

		F.BottomText = CHAIN(F:CreateFontString()) :SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",15,10) :SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,20)  :SetText(L['guideconfig_mainbottom'])
	end

	do -- Frame2
		self.Frame2 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config2", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame2
		F.prev=self.Frame1

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,25)  :SetText(L['guideconfig_placetitle'])

		F.AlignLeft = CHAIN(CreateFrame("Button", "ZGV_Config_AlignLeftButton", F, "")) :SetSize(200,150) :SetPoint("LEFT",F,"LEFT",25,15)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",function(self) PlaceZGV("LEFT") Config.Settings.Align="LEFT" Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.AlignLeft:GetHighlightTexture():SetAlpha(0.2)
			
			F.AlignLeft.Tex = CHAIN(F.AlignLeft:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,198/256,213/512,360/512) .__END

			F.AlignLeft.label = CHAIN(F.AlignLeft:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0)
			:SetText(L['guideconfig_leftalign']):SetPoint("TOP",F.AlignLeft,"TOP",0,-6).__END
			F.AlignLeft:SetFontString(F.AlignLeft.label)

		F.AlignRight = CHAIN(CreateFrame("Button", "", F, "")) :SetSize(200,150) :SetPoint("RIGHT",F,"RIGHT",-25,15)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",function(self) PlaceZGV("RIGHT")Config.Settings.Align="RIGHT" Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.AlignRight:GetHighlightTexture():SetAlpha(0.2)

			F.AlignRight.Tex = CHAIN(F.AlignRight:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,198/256,368/512,511/512) .__END

			F.AlignRight.label = CHAIN(F.AlignRight:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0)
				:SetText(L['guideconfig_rightalign']) :SetPoint("TOP",F.AlignRight,"TOP",0,-6) .__END
			F.AlignRight:SetFontString(F.AlignRight.label)
	end

	do -- Frame3
		self.Frame3 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config3", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame3
		F.prev=self.Frame2

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONT,17)  :SetText(L['guideconfig_features']) :SetSize(450,75) :SetSpacing(5)

		F.NewPlayerBut = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Config3_NewPBut", F, "")) :SetSize(125,100) 
			:SetPoint("TOPLEFT",F,"TOPLEFT",31.25,-85)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnEnter",function()  F.BottomText:SetText(L['guideconfig_newtooltip']) F.BottomHead:SetText(L['guideconfig_newpbutton']) end) 
			:SetScript("OnLeave",function() F.BottomText:SetText("") F.BottomHead:SetText("") end)
			:SetScript("OnClick",function(self) SaveSettings("new") Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.NewPlayerBut:GetHighlightTexture():SetAlpha(0.2)
			F.NewPlayerBut.Tex = CHAIN(F.NewPlayerBut:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(132/256,255/256,1/512,97/512)

		F.ExpPlayerBut = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Config3_ExpPBut", F, "")) :SetSize(125,100) :SetPoint("LEFT",F.NewPlayerBut,"RIGHT",31.25,0)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnEnter",function() F.BottomText:SetText(L['guideconfig_exptooltip']) F.BottomHead:SetText(L['guideconfig_expbutton']) end) 
			:SetScript("OnLeave",function() F.BottomText:SetText("")F.BottomHead:SetText("") end)
			:SetScript("OnClick",function(self)  SaveSettings("exp") Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.ExpPlayerBut:GetHighlightTexture():SetAlpha(0.2)
			F.ExpPlayerBut.Tex = CHAIN(F.ExpPlayerBut:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,122/256,1/512,97/512)

		F.ManualButton = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Config3_ManualBut", F, "")) :SetSize(125,100) :SetPoint("LEFT",F.ExpPlayerBut,"RIGHT",31.25,0)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnEnter",function()	F.BottomText:SetText(L['guideconfig_manualtoolip']) F.BottomHead:SetText(L['guideconfig_manualbutton']) end) 
			:SetScript("OnLeave",function() F.BottomText:SetText("")F.BottomHead:SetText("") end)
			:SetScript("OnClick",function(self) NewScreen(Config.Frame3,Config.Frame4) end) :RegisterForClicks("LeftButtonUp")
			.__END F.ManualButton:GetHighlightTexture():SetAlpha(0.2)
			F.ManualButton.Tex = CHAIN(F.ManualButton:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,122/256,108/512,203/512)
		
		F.BottomHead = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.NewPlayerBut,"BOTTOMLEFT",0,-8) 
			:SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONTBOLD,18)  :SetText("") :SetSize(450,20) :SetSpacing(2).__END

		F.BottomText = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.BottomHead,"BOTTOMLEFT",0,-5) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONT,14)  :SetText("") :SetSize(450,200) :SetSpacing(2).__END
	end

	do -- Frame4
		self.Frame4 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config4", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame4
		F.prev=self.Frame3

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F,"TOPLEFT",10,-10) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONTBOLD,20)  :SetText(L['guideconfig_featurestitle'])

		local numCheckBox=6
		F.Checks={}
		for i=1, numCheckBox do
			F.Checks[i]=CHAIN(CreateFrame("CheckButton", "ZygorGuidesViewer_Config4_Check1",F,"UICheckButtonTemplate"))
				:SetSize(30,30)	:SetPoint("TOPLEFT",F,"TOPLEFT",10,-30-(30*(i-1)))
				:SetScript("OnEnter",function() F.BottomText:SetText(L['guideconfig_checktooltip'..i])end) :SetScript("OnLeave",function() F.BottomText:SetText("")end)
			.__END
			CHAIN(F.Checks[i].text) :SetText(L['guideconfig_check'..i]) :SetFont(FONT,16)
			F.Checks[i].option=L['guideconfig_checkoption'..i]
			F.Checks[i]:SetHitRectInsets(0,-F.Checks[i].text:GetStringWidth(),0,0)
		end

		local height = F.Checks[numCheckBox]:GetBottom() - 215 --320 is the top of the Back button with some extra space.

		F.BottomText = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.Checks[numCheckBox],"BOTTOMLEFT",0,0) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONT,15)  :SetText("") :SetSize(450,height) :SetSpacing(2).__END
	end

	do -- Frame5
		self.Frame5 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config5", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame5
		F.prev=self.Frame3

		F.Wand = CHAIN(F:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygor_wand") :SetPoint("CENTER",F,"CENTER",0,0) :SetSize(230,230)

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONTBOLD,25)  :SetText(L['guideconfig_lasttitle'])

		F.SpellText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-50) :SetJustifyH("CENTER") :SetJustifyV("TOP")
			:SetFont(FONT,23)  :SetText(L['guideconfig_spelltext']) :SetWidth(400)

		F.FinalButton = CHAIN(CreateFrame("Button", "ZGV_Config_Finish", F , "ZygorGuidesViewer_Default_Button")) :SetSize(125,30)
			:SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-5,5)
			:SetScript("OnClick",function() SaveSettings("end") Config:Finish() end) :RegisterForClicks("LeftButtonUp")
		.__END
		F.FinalButton.label = CHAIN(F.FinalButton:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0):SetText(L['guideconfig_finalbutton']).__END
		F.FinalButton:SetFontString(F.FinalButton.label)

		
		F.Check=CHAIN(CreateFrame("CheckButton", "ZygorGuidesViewer_Config5_Check",F,"UICheckButtonTemplate"))
			:SetSize(30,30)	:SetPoint("BOTTOM",F,"BOTTOM",-170,30)
			:SetChecked(true)
		.__END
		CHAIN(F.Check.text) :SetText(L['guideconfig_tutcheck']) :SetFont(FONT,16)
			--F.Check.option=L['guideconfig_checkoption'..i]
		F.Check:SetHitRectInsets(0,-F.Check.text:GetStringWidth(),0,0)
	end

	self.Frame1.next=self.Frame2
	self.Frame2.next=self.Frame3
	self.Frame3.next=self.Frame5
	self.Frame4.next=self.Frame5
end

function Config:ShowStartFrame(self)
	local F=self.Frame1

	F.SkipButton=self.SkipButton CHAIN(F.SkipButton) :SetParent(F) :SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-5,5)
	F.ContButton=self.ContButton CHAIN(F.ContButton) :SetParent(F) :SetPoint("RIGHT",F.SkipButton,"LEFT",-5,0)
	F:Show()
end

function Config:Run()
	ZGV.Frame:Hide()
	
	self.Running=true

	self:CreateFrame()
	self:ShowStartFrame(self)
end

local function OnEvent(self,event,...)
	if not InCinematic() and not Config.Running and not ZGV.db.profile.ranconfig then --and not ran config before
		Config:Run()
	end
end

function Config:RegisterEvents()
	if not ZGV.db.profile.ranconfig then
		Config.eventFrame=CreateFrame("Frame")
		Config.eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
		Config.eventFrame:RegisterEvent("CINEMATIC_STOP")

		Config.eventFrame:SetScript("OnEvent", OnEvent)
	end
end