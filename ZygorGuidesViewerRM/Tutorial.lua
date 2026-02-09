local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Tutorial = {}
ZGV.Tutorial = Tutorial

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local L = ZGV.L

local CHAIN = ZGV.ChainCall

local pi=math.pi
local tiporder = { --Keep this in the correct order with start and the beginning and finish at the end. Tutorial begins at guideviewer
	"start",
	"guideviewer",
	"options",
	"lock",
	"close",
	"steps", 
	"guides",
	"cleanup", 
	"mode",
	"progress",
	"model",
	"arrow",
	"help",
	"finish",
}

local function ButtonPosition(but)
	local self=Tutorial
	local sizeInfo=self.SizeInfo
	local parent=but:GetParent()
	local vx,vy = sizeInfo.ViewerLeft, sizeInfo.ViewerBottom
	local left, right = but:GetLeft()-vx, but:GetRight()-vx
	local viewerWidth = parent:GetWidth()

	local widthHalf = viewerWidth/2

	--Where is this button on the ViewerFrame?
	if left < widthHalf then
		ZGV:Debug("Button is on left of Viewer")
		return "LEFT"
	elseif right >= widthHalf then
		ZGV:Debug("Button is on right of Viewer")
		return "RIGHT"
	end
	return abuh -- so confused.
end

local function PositionTooltip(locX,but)
	local self=Tutorial
	local sizeInfo=self.SizeInfo

	local side
	local vert="BOTTOM"

	local topspace=sizeInfo.TotalHeight - (sizeInfo.ViewerTop + sizeInfo.TooltipHeight)
	
	local yOffset= min(100, topspace)
		--print(but:GetBottom(),topspace,sizeInfo.TooltipHeight, yOffset)
	if yOffset < 0 then
		vert="TOP"	--switch side that the Tooltip is postioned from.
	end

	if locX=="LEFT" then
		side="RIGHT"
		local leftspace = sizeInfo.ViewerLeft - sizeInfo.TooltipWidth -- How much room is there left over after our tooltip is there?
		xOffset = min(75,leftspace)

		if xOffset < 0 then
			side="LEFT" --switch side that the Tooltip is postioned from.
		end

		xOffset = -xOffset --Move it left
	elseif locX=="RIGHT" then
		side="LEFT"
		local rightspace = sizeInfo.TotalWidth - (sizeInfo.ViewerRight +sizeInfo.TooltipWidth) -- How much room is there left over after our tooltip is there?
		xOffset = min(75,rightspace)

		if xOffset < 0 then
			side="RIGHT"	--switch side that the Tooltip is postioned from.
		end

		xOffset = xOffset -- Duh, Moving it right.
	else
		vert="BOTTOM"
		side="RIGHT"
		local leftspace = but:GetLeft() - sizeInfo.TooltipWidth -- How much room is there left over after our tooltip is there?
		xOffset = min(75,leftspace)

		if xOffset < 0 then
			side="LEFT" --switch side that the Tooltip is postioned from.
		end

		xOffset = -xOffset --Move it left

		local topspace=sizeInfo.TotalHeight - (but:GetTop() + sizeInfo.TooltipHeight)
		yOffset= min(100, topspace)

		if yOffset < 0 then
			vert="TOP"
		end
	end

	return side,xOffset , vert,yOffset
end

local function SetTooltip(pos,placement)
	local self = Tutorial
	local mainFrame=self.TooltipFrame --.TipText, .MainText\
	local sizeInfo=self.SizeInfo
	local height=0

	ZGV:Debug("Creating Tooltip for "..pos)

	if pos=="help" then mainFrame.Next:SetText(L['guidetutorial_donebutton'])
	else mainFrame.Next:SetText(L['guidetutorial_next'])end

	mainFrame.TipText:SetHeight(500) -- Set height large so the full text can fit in, the adjust it.

	mainFrame.MainText:SetText(L['guidetutorial_'..pos])
	mainFrame.TipText:SetText(L['guidetutorial_'..pos..'tip'])
	mainFrame.TipText:SetHeight(mainFrame.TipText:GetStringHeight())

	height=mainFrame.TipText:GetStringHeight() + mainFrame.MainText:GetStringHeight() + mainFrame.Back:GetHeight()+25

	if self.CurrentTip=="progress" then
		mainFrame.BlueBar:Show() mainFrame.BlueBarTex:Show()
		mainFrame.ProgText1:Show() mainFrame.ProgText1:SetHeight(mainFrame.ProgText1:GetStringHeight())

		mainFrame.GreenBar:Show() mainFrame.GreenBarTex:Show()
		mainFrame.ProgText2:Show() mainFrame.ProgText2:SetHeight(mainFrame.ProgText2:GetStringHeight())

		height=height + 50 + mainFrame.BlueBar:GetHeight()*2 +  mainFrame.BlueBarTex:GetHeight()*2 + mainFrame.ProgText2:GetHeight() + mainFrame.ProgText1:GetHeight()
	elseif mainFrame.BlueBar:IsShown() then
		mainFrame.BlueBar:Hide() mainFrame.BlueBarTex:Hide() mainFrame.ProgText1:Hide()
		mainFrame.GreenBar:Hide() mainFrame.GreenBarTex:Hide() mainFrame.ProgText2:Hide()
	end

	if placement.GetNormalTexture and placement:GetNormalTexture() and placement:GetNormalTexture().GetTexture then
		mainFrame.ButtonTex:SetTexture(placement:GetNormalTexture():GetTexture())
		mainFrame.ButtonTex:SetTexCoord(placement:GetNormalTexture():GetTexCoord())
		mainFrame.ButtonTex:Show()
	else
		mainFrame.ButtonTex:Hide()
	end

	mainFrame:SetHeight(height)
	sizeInfo.TooltipHeight=(height)
end

function Tutorial:FadeStart()
	ZGV:Debug("Started Fading")
	self.Invis:Show()
	self.InvisCV:Show()
end

local function Fade(pos,placement)
	local self=Tutorial

	ZGV:Debug("Fading "..pos)

	ZGV.CreatureViewer.Frame:SetAlpha(0.4) --show them if we want them showed.
	ZGV.Frame:SetAlpha(0.4)

	if pos=="guideviewer" then
		ZGV.Frame:SetAlpha(1.0)
	elseif pos=="steps" then

		local prev,num =self.Locations.steps2,self.Locations.steps3
		prev:SetParent(self.Invis) num:SetParent(self.Invis)
		prev:SetFrameLevel(self.Invis:GetFrameLevel()-1) num:SetFrameLevel(self.Invis:GetFrameLevel()-1)

		placement:SetParent(self.Invis)
		placement:SetFrameLevel(self.Invis:GetFrameLevel()-1)

	elseif pos=="model" then
		ZGV.CreatureViewer.Frame:SetAlpha(1.0)
	elseif pos=="arrow" then 
		-- do nothing different for the arrow
	else
		placement:SetParent(self.Invis)
		placement:SetFrameLevel(self.Invis:GetFrameLevel()-1)
	end
end

function Tutorial:FadingReset(current)
	ZGV:Debug("Reseting the Fading for "..current)
	local placement = self.Locations[current]

	if current=="guideviewer" then
		--Do not need to do anything. Invis frame is hidden on close.
	elseif current=="steps" then
		placement:SetParent(self.TipParent)
		self.Locations.steps2:SetParent(self.TipParent)
		self.Locations.steps3:SetParent(self.TipParent)
	elseif current=="model" then
		ZGV.CreatureViewer.Frame:SetAlpha(0.4)
	elseif current=="arrow" then 
		-- do nothing different for the arrow
	else
		placement:SetParent(self.TipParent)
	end
end

local TooltipTimeout = 0
local function TooltipLast()
	local self=Tutorial
	local mainFrame=self.TooltipFrame

	mainFrame.Line:Hide()
	mainFrame:ClearAllPoints()
	mainFrame:SetPoint("CENTER",UIParent,"CENTER")
end

local function CheckTooltip(vert,side,placement) --This has some recursion in it, but has a timeout and tooltip is moving so should fix itself.
	local self=Tutorial
	local m=self.TooltipFrame
	local u= UIParent

	if TooltipTimeout >= 20 then TooltipLast() return end

	if m:GetTop() > u:GetTop() then -- We are outside the top or bottom of the screen
		ZGV:Debug("Repostioned Down")
		local _,_,_,x,y = m:GetPoint(1)
		y=y-25 -- move it down 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	elseif m:GetBottom() < 0 then
		ZGV:Debug("Repostioned Up")
		local _,_,_,x,y = m:GetPoint(1)
		y=y+25 -- move it up 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	end

	if m:GetRight()>u:GetRight() then -- We are outside the top or bottom of the screen
		ZGV:Debug("Repostioned Left")
		local _,_,_,x,y = m:GetPoint(1)
		x=x-25 -- move it left 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	elseif m:GetBottom() < 0 then
		ZGV:Debug("Repostioned Right")
		local _,_,_,x,y = m:GetPoint(1)
		x=x+25 -- move it right 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	end
end

function Tutorial:PlaceTooltip(vert,side,xOffset,yOffset,placement, repositioning)
	local self=Tutorial
	local mainFrame=self.TooltipFrame
	local linePoint

	if vert=="TOP"  then linePoint="BOTTOM" else linePoint="TOP" end
	if side=="LEFT" then linePoint=linePoint.."RIGHT" else linePoint=linePoint.."LEFT" end

	if ( xOffset>0 and yOffset>0) or (xOffset<0 and yOffset<0) then --x < 0 and y < 0 x>0 and y>0
		mainFrame.Line:SetTexCoord(0,1,0,1)
		if linePoint=="TOPLEFT" then linePoint="BOTTOMLEFT" end
		if linePoint=="BOTTOMRIGHT" then linePoint="TOPRIGHT" end
	else --x<0 and y>0 - x > 0 and y < 0
		mainFrame.Line:SetTexCoord(1,0,0,1)
		if linePoint=="BOTTOMLEFT" then linePoint="TOPLEFT" end
		if linePoint=="TOPRIGHT" then linePoint="BOTTOMRIGHT" end
	end

	local x,y=abs(xOffset),abs(yOffset)
	mainFrame.Line:Show()
	mainFrame.Line:SetSize(x,y)
	mainFrame.Line:ClearAllPoints()
	mainFrame.Line:SetPoint(linePoint,mainFrame,vert..side)

	if pos=="guideviewer" or pos=="model" or pos=="" then vert="" side=side end
		
	mainFrame:ClearAllPoints()
	mainFrame:SetPoint(vert..side,placement,linePoint,xOffset,yOffset)

	CheckTooltip(vert,side,placement) -- Make sure we are in the screen
end

function Tutorial:Next(pos)
	ZGV:Debug("Next tutorial is " ..pos)
	local placement=self.Locations[pos]
	local mainFrame=self.TooltipFrame --.TipText, .MainText\
	local sizeInfo=self.SizeInfo
	local locX
	TooltipTimeout=0 -- Set the timeout back to 0 for each tooltip.
	
	if not placement then Tutorial:Close() return end

	self.CurrentTip=pos

	self.TipParent=placement:GetParent()
	
	SetTooltip(pos,placement)
	Fade(pos,placement)

	if not placement:IsVisible() then
		pos="guideviewer"
		placement= self.Locations[pos]
	end -- If the model viewer or arrow is hidden, display the tip off of the guide viewer

	if pos=="arrow" or pos=="model" or pos =="progress" then
		locX="Other"
	else
		locX=ButtonPosition(placement) --returns LEFT or RIGHT based on if the widget is on the left or right of the Viewer Frame
	end

	local side, xOffset, vert, yOffset = PositionTooltip(locX,placement)

	self:PlaceTooltip(vert,side,xOffset,yOffset,placement)
end

function Tutorial:Close()
	ZGV:Debug("Closing Tutorial")

	self.Running=false
	
	self:FadingReset(self.CurrentTip) --reset the current button incase they quit during the tutorial.
	self.Invis:Hide() ZGV.Frame:SetAlpha(1.0)
	self.InvisCV:Hide()  ZGV.CreatureViewer.Frame:SetAlpha(1.0)
	self.TooltipFrame:Hide()
end

function Tutorial:CreateFrame()
	self.TooltipFrame = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Tutorial_Tooltip", UIParent, ""))
		:SetSize(300,200) --Point gets set when displayed.
		:SetFrameStrata("HIGH")
		:SetFrameLevel(15)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0,0,0,1.0)
	.__END

	self.Invis = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Tutorial_Cover", ZGV.Frame, ""))
		:SetAllPoints()
		:SetParent(UIParent)
		:SetFrameStrata("HIGH") --Needs to be here to be over the step clickers >.>
		:SetFrameLevel(10)
		:EnableMouse(true)
		:Hide()
	.__END

	self.InvisCV = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Tutorial_Cover", ZGV.CreatureViewer.Frame, ""))
		:SetAllPoints()
		:SetParent(UIParent)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(10)
		:EnableMouse(true)
		:Hide()
	.__END

	local F = Tutorial.TooltipFrame

	F.Line = CHAIN(F:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\tutorialline-dia")
		:SetSize(200,200)
	.__END

	F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("CENTER") :SetJustifyV("TOP")
			:SetFont(FONTBOLD,16)  :SetText("Button!").__END

	F.ButtonTex = CHAIN(F:CreateTexture()) :SetPoint("RIGHT",F.MainText,"LEFT",-15,0):SetSize(25,25).__END


	F.TipText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-30) :SetJustifyH("LEFT") :SetJustifyV("TOP")
		:SetFont(FONT,14)  :SetText("This is a button!") :SetSize(F:GetWidth()-10, 500) :SetSpacing(3) .__END

	F.GreenBar = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.TipText,"BOTTOMLEFT",0,-15) :SetJustifyH("CENTER") :SetJustifyV("TOP")
		:SetFont(FONTBOLD,14)  :SetText(L['guidetutorial_progresstipstep']) :Hide().__END

	F.GreenBarTex = CHAIN(F:CreateTexture()) :SetTexture("Interface\\TargetingFrame\\UI-StatusBar") :SetVertexColor(0,1,0,1)
		:SetPoint("TOPLEFT",F.GreenBar,"TOPLEFT",0,-20):SetSize(250,5) :Hide().__END

	F.ProgText1 = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.GreenBarTex,"BOTTOMLEFT",0,-5) :SetJustifyH("LEFT") :SetJustifyV("TOP")
		:SetFont(FONT,14)  :SetText(L['guidetutorial_progresstip2']) :SetSize(F:GetWidth()-10, 50) :Hide() :SetSpacing(3) .__END

	F.BlueBar = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.ProgText1,"BOTTOMLEFT",0,-15) :SetJustifyH("CENTER") :SetJustifyV("TOP")
		:SetFont(FONTBOLD,14)  :SetText(L['guidetutorial_progresstiplevel']) :Hide().__END

	F.BlueBarTex = CHAIN(F:CreateTexture()) :SetTexture("Interface\\TargetingFrame\\UI-StatusBar") :SetVertexColor(0.0,0.63,1.0,1.0)
		:SetPoint("TOPLEFT",F.BlueBar,"TOPLEFT",0,-20):SetSize(250,5) :Hide().__END

	F.ProgText2 = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.BlueBarTex,"BOTTOMLEFT",0,-5) :SetJustifyH("LEFT") :SetJustifyV("TOP")
		:SetFont(FONT,14)  :SetText(L['guidetutorial_progresstip3']) :SetSize(F:GetWidth()-10, 150) :Hide() :SetSpacing(3) .__END

	F.Next = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Tutorial_Next", F , "ZygorGuidesViewer_Default_Button")) :SetSize(60,25)
			:SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-5,5)
			:SetScript("OnClick",function() 
				Tutorial:FadingReset(Tutorial.CurrentTip)
				for i=1,#tiporder do if tiporder[i]==Tutorial.CurrentTip then Tutorial:Next(tiporder[i+1]) break end end
			end) :RegisterForClicks("LeftButtonUp")
		.__END
		F.Next.label = CHAIN(F.Next:CreateFontString()):SetFont(FONTBOLD,14) :SetTextColor(1.0,1.0,1.0):SetText(L['guidetutorial_next']).__END
		F.Next:SetFontString(F.Next.label)

	F.Back = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Tutorial_Back", F , "ZygorGuidesViewer_Default_Button")) :SetSize(60,25)
			:SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",5,5)
			:SetScript("OnClick",function() 
				Tutorial:FadingReset(Tutorial.CurrentTip)
				for i=1,#tiporder do if tiporder[i]==Tutorial.CurrentTip then Tutorial:Next(tiporder[i-1]) break end end
			end) :RegisterForClicks("LeftButtonUp")
		.__END
		F.Back.label = CHAIN(F.Back:CreateFontString()):SetFont(FONTBOLD,14) :SetTextColor(1.0,1.0,1.0):SetText(L['guidetutorial_backbutton']).__END
		F.Back:SetFontString(F.Back.label)

	F.Close = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_Tutorial_Close", F , "ZygorGuidesViewer_Default_Button")) :SetSize(15,15)
			:SetPoint("TOPRIGHT",F,"TOPRIGHT",-2,-2)
			:SetScript("OnClick",function() Tutorial:Close() end) :RegisterForClicks("LeftButtonUp")
		.__END

	ZGV.AssignButtonTexture(F.Close,ZGV.SkinDir.."titlebuttons",6,16)
end

function Tutorial:GetDimensions(ZGVF)
	self.SizeInfo = {}

	local sizeInfo = self.SizeInfo

	sizeInfo.TotalWidth,sizeInfo.TotalHeight=UIParent:GetSize() sizeInfo.TotalHeight=sizeInfo.TotalHeight-50 --nothing closer than 50 to top
	sizeInfo.ViewerLeft, sizeInfo.ViewerRight, sizeInfo.ViewerBottom, sizeInfo.ViewerTop= ZGVF:GetLeft(), ZGVF:GetRight(), ZGVF:GetBottom(), ZGVF:GetTop()
	sizeInfo.TooltipWidth, sizeInfo.TooltipHeight = self.TooltipFrame:GetSize()
end

function Tutorial:SavePositions()
	self.Locations = {}
	local loc=self.Locations
	local Border=ZGV.Frame.Border

	loc.guideviewer = ZGV.Frame
	loc.options = Border.TitleBar.SettingsButton
	loc.help = Border.TitleBar.HelpButton
	loc.lock = Border.TitleBar.LockButton
	loc.close = Border.TitleBar.CloseButton
	loc.steps = Border.Guides.NextButton
	loc.steps2 = Border.Guides.PrevButton
	loc.steps3 = Border.Guides.StepNum
	loc.guides = Border.Guides.GuideButton
	loc.cleanup = Border.Guides.QuestCleanupButton
	loc.mode = Border.Guides.MiniButton
	loc.progress = Border.ProgressBar
	loc.model = ZGV.CreatureViewer.Frame
	loc.arrow = ZGV.Pointer.ArrowFrame
end

function Tutorial:Run()
	ZGV:Debug("Running Tutorial")

	self.Running=true

	Tutorial:SavePositions()

	Tutorial:CreateFrame()

	Tutorial:GetDimensions(ZGV.Frame)

	Tutorial:Next("guideviewer") --We start at guideviewer
	Tutorial:FadeStart()
end