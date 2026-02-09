--ZYGORGUIDESVIEWERFRAME_TITLE = "Zygor Guides Viewer";

local ZGV = ZygorGuidesViewer
if not ZGV then return end
local L = ZGV.L

local doborderrgb = function(self)
	local progress = 1.0 - self:GetProgress()
	self.target:SetBackdropBorderColor(
		self.tor+(self.fromr-self.tor)*progress,
		self.tog+(self.fromg-self.tog)*progress,
		self.tob+(self.fromb-self.tob)*progress,
		self.toa+(self.froma-self.toa)*progress
	)
end

local obscured

local function Step_OnClick(self,button)
	if ZGV.CurrentStep==self.step then
		for i=1,30,1 do
			if MouseIsOver(self.lines[i].clicker) then self.lines[i].clicker:GetScript("OnClick")(self.lines[i].clicker,button) end
		end
		return
	end
	if not ZGV.CurrentGuide.steps[self.stepnum]
	or not ZGV.CurrentGuide.steps[self.stepnum]:AreRequirementsMet() then return end
	if ZGV.db.profile.showcountsteps>0 then return end
	ZGV.pause = true
	ZGV:Debug("pausing in onclick")
	ZGV:FocusStep(self.stepnum)
end

local function Step_OnEnter(self)
	--if not ZGV.db.profile.showbriefsteps then return end

	--[[
	GameTooltip:SetOwner(self,"ANCHOR_CURSOR")
	GameTooltip:ClearAllPoints()
	GameTooltip:ClearLines()
	GameTooltip:SetText(("Step %d. %s %s"):format(self.step.num, self.step:GetTitle() or "", self.step.level and ((" (level %s)"):format(self.step.level)) or ""))
	for i,goal in ipairs(self.step.goals) do
		GameTooltip:AddLine(goal:GetText(true,false))
	end
	GameTooltip:Show()
	GameTooltip:SetWidth(300)
	GameTooltip:Show()
	--]]

	--if self.step==ZGV.CurrentStep then

	--	ZGV.briefstepexpansionspeed = 5
	--	ZGV.briefstepexpansionspeedlines[self.num] = 5
		--ZGV.briefstepexpanded=self.step
	--end

	-- expansion moved to the onupdate handler
end

local LastUsedStep=0
local FrameSetUp = false
function ZygorGuidesViewer_ProgressBar_SetUp()
	local progress = ZGV.db.profile.progress
	local colors = ZGV.db.profile.progresscolor

	local progressbar=ZGV.Frame.Border.ProgressBar
	local progresstex=ZGV.Frame.Border.ProgressBar.tex

	if progress then
		progressbar:Show()
		progresstex:SetVertexColor(colors.r,colors.g,colors.b,colors.alpha)
	else
		progressbar:Hide()
	end

	ZGV:ResizeFrame()
end

function ZygorGuidesViewer_ProgressBar_Update()
	if not ZGV.CurrentGuide or not ZGV.CurrentGuide.CurrentStepNum or not ZGV.db.profile.progress then return end
	local TotalSize=ZygorGuidesViewerFrame_Step1:GetWidth()
	local percent,num = ZGV.CurrentGuide:GetCompletion()

	local progressbar=ZGV.Frame.Border.ProgressBar
	local progresstex=ZGV.Frame.Border.ProgressBar.tex

	if ZGV.CurrentGuide.dungeon then
		percent=ZGV.CurrentGuide.CurrentStepNum/#ZGV.CurrentGuide.steps
	end

	local stepsReqMet=0
	local stepsCompleted=0
	if percent and not num and ZGV.CurrentGuide.endlevel then
		if not ZGV.db.profile.levelprogbar then
			for i=1, #ZGV.CurrentGuide.steps do
				local step=ZGV.CurrentGuide.steps[i]
				local complete = step:IsComplete()
				local valid = step:AreRequirementsMet()
				if valid then
					if complete then
						stepsCompleted=stepsCompleted+1
					else
						--if ZGV.CurrentGuide.steps[i-1] and ZGV.CurrentGuide.steps[i+1] and (ZGV.CurrentGuide.steps[i-1]:IsComplete() and ZGV.CurrentGuide.steps[i+1]:IsComplete()) then
						--	stepsCompleted=stepsCompleted+1
						--end
					end
					stepsReqMet=stepsReqMet+1
				end
			end
			if stepsCompleted then
				percent=stepsCompleted/stepsReqMet
				percent=(ceil(percent*100))/100
			end
		end
	end

	progressbar.percent = percent

	ZygorGuidesViewer_ProgressBar_Refresh()
end

function ZygorGuidesViewer_ProgressBar_Refresh()
	local progressbar=ZGV.Frame.Border.ProgressBar
	local progresstex=ZGV.Frame.Border.ProgressBar.tex

	if ZGV.db.profile.levelprogbar then
		progresstex:SetVertexColor(unpack(ZGV.CurrentSkinStyle:SkinData("ProgressBarColor2") or {0.53,0.81,0.98,1}))
	else
		progresstex:SetVertexColor(unpack(ZGV.CurrentSkinStyle:SkinData("ProgressBarColor") or {0,1,0,1}))
	end

	local percent = progressbar.percent or 0
	local TotalSize=ZygorGuidesViewerFrame_Step1:GetWidth()

	if type(percent)~="number" then percent=0 end
	progressbar:SetWidth(TotalSize)

	if(percent*TotalSize)<20 then
		progresstex:SetWidth((percent/2)*TotalSize+.5)
	else
		progresstex:SetWidth(percent*TotalSize-ZGV.CurrentSkinStyle.ProgressBarInset*2)
	end
end

function ZygorGuidesViewer_ProgressBar_OnEnter()
	local percent,num = ZGV.CurrentGuide:GetCompletion()
	local _,compText=ZGV.CurrentGuide:GetCompletionText()


	local progressbar=ZGV.Frame.Border.ProgressBar
	local progresstex=ZGV.Frame.Border.ProgressBar.tex
	local progresstext=ZGV.Frame.Border.ProgressBar.text

	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_BOTTOM")
	GameTooltip:ClearAllPoints()
	GameTooltip:ClearLines()
	GameTooltip:SetText(compText)

	if ZGV.CurrentGuide.dungeon then
		percent=ZGV.CurrentGuide.CurrentStepNum/#ZGV.CurrentGuide.steps
		GameTooltip:SetText(L['frame_guide_step']:format(ZGV.CurrentGuide.CurrentStepNum,#ZGV.CurrentGuide.steps))
	end

	local stepsReqMet=0
	local stepsCompleted=0
	if percent and not num and ZGV.CurrentGuide.endlevel then
		if not ZGV.db.profile.levelprogbar then
			for i=1, #ZGV.CurrentGuide.steps do
				if ZGV.CurrentGuide.steps[i]:IsComplete() and ZGV.CurrentGuide.steps[i]:AreRequirementsMet() then
					stepsCompleted=stepsCompleted+1
				elseif not ZGV.CurrentGuide.steps[i]:IsComplete() and ZGV.CurrentGuide.steps[i]:AreRequirementsMet() then
					if ZGV.CurrentGuide.steps[i-1] and ZGV.CurrentGuide.steps[i+1] and (ZGV.CurrentGuide.steps[i-1]:IsComplete() and ZGV.CurrentGuide.steps[i+1]:IsComplete()) then
						stepsCompleted=stepsCompleted+1
					end
				end
				if ZGV.CurrentGuide.steps[i]:AreRequirementsMet() then
					stepsReqMet=stepsReqMet+1
				end
			end
			if stepsCompleted then
				percent=stepsCompleted/stepsReqMet
				percent=(ceil(percent*100))/100
			end
			GameTooltip:SetText(L['frame_guide_stepscompleted']:format(stepsCompleted,stepsReqMet))
			GameTooltip:AddLine(L['frame_guide_switch_level'])
 		else
 			GameTooltip:SetText(compText)
			GameTooltip:AddLine(L['frame_guide_switch_step'])
		end
	end

	if type(percent)~="number" then percent=0 end

	if ZGV.CurrentGuide.type=="LEVELING" and ZGV.CurrentGuide.endlevel and ZGV.db.profile.levelprogbar then
		if percent==1 then
			progresstext:SetText(L['frame_guide_maxlevel'])
 		else
			progresstext:SetText(L['frame_guide_progress']:format(floor(percent*100)))
 		end

 	else
 		if percent==1 then
			progresstext:SetText(L['frame_guide_complete'])
 		else
			progresstext:SetText(L['frame_guide_progress']:format(floor(percent*100)))
		end
	end

	GameTooltip:Show()
end

function ZygorGuidesViewer_ProgressBar_OnExit()
	ZGV.Frame.Border.ProgressBar.text:Hide()
	GameTooltip:Hide()
end

function ZygorGuidesViewer_ProgressBar_OnClick()
	if ZGV.CurrentGuide.endlevel then
		ZGV.db.profile.levelprogbar= not ZGV.db.profile.levelprogbar
		ZygorGuidesViewer_ProgressBar_OnEnter()
		ZygorGuidesViewer_ProgressBar_Update()
	end
end

local function Step_OnLeave(self)
	if not self or GameTooltip:GetOwner()==self then
		GameTooltip:Hide()
		--ZGV:Debug("HIDING in Step_OnLeave")
	end

	--[[
	if not ZGV.db.profile.showbriefsteps then return end

	ZGV.briefstepexpansionspeed = -5
	ZGV.briefstepexpansionspeedlines[self.num] = -5
	ZGV.briefstepexpanded=nil
	--]]

	ZGV:UpdateFrame(true)
end

local function clicker_onenter(self)
	ZGV:GoalOnEnter(self)
end

local function clicker_onleave(self)
	ZGV:GoalOnLeave(self)
end

local function Step_OnUpdate(self,elapsed)
	local clicker

	for i=1,30,1 do
		clicker=self.lines[i].clicker

		if clicker:IsVisible() then
			if clicker.over and not MouseIsOver(clicker) then
				if DropDownList1 and DropDownList1:IsShown() and DropDownList1.dropdown==ZGVFMenu and ZGVFMenu.goalframe==self.lines[i] then
					-- umm.
				else
					clicker:SetAlpha(0.0)
					clicker:GetScript("OnLeave")(clicker)
					clicker.over=false
				end
			end
		end
	end

	if ZGV.CurrentStep==self.step then
		-- ugly! but first leave's, then enter's.

		for i=1,30,1 do

			local obscured = (GetMouseFocus()~=WorldFrame and GetMouseFocus()~=self)
			clicker=self.lines[i].clicker

			local actionBut=ZGV.actionbuttons[i] --gets action button for each line
			local underAction=(GetMouseFocus()~=WorldFrame and GetMouseFocus()~=actionBut)--finds out if the mouse is over the action button. Important since the clicker of these lines are only ones under action buttons

			if IsMouseButtonDown("RightButton") and MouseIsOver(clicker) and not underAction then
				clicker:GetScript("OnClick")(clicker) --runs only if the click is a right click. ***Is possible for it to not work if click goes up and down without OnUpdate running***
			end

			if clicker:IsVisible() and MouseIsOver(clicker) and not clicker.over and not obscured then
				clicker:GetScript("OnEnter")(clicker)
				clicker:SetAlpha(0.15)
				clicker.over=true
			elseif clicker:IsVisible() and MouseIsOver(clicker) and not clicker.over and not underAction then
				clicker:GetScript("OnEnter")(clicker)
				clicker:SetAlpha(0.15)
				clicker.over=true
			end
		end
	end
end

local function clicker_onclick(self,button)
	ZGV:GoalOnClick(self,button)
end
local function clicker_update(self,elapsed)
	--ZGV:Debug(self:GetName())
	if self:IsMouseOver() then
		if self.wasDressUp~=IsModifiedClick("DRESSUP") then
			self.wasDressUp=IsModifiedClick("DRESSUP")
			clicker_onenter(self)
			return
		end
		if self.wasCompare~=IsModifiedClick("COMPAREITEMS") then
			self.wasCompare=IsModifiedClick("COMPAREITEMS")
			clicker_onenter(self)
			return
		end
	end
end

function ZygorGuidesViewerFrame_Step_Setup(num)
	local function obj(name) return _G['ZygorGuidesViewerFrame_Step'..num..(name and '_'..name or '')] end

	local stepname = 'ZygorGuidesViewerFrame_Step'..num
	local step = _G[stepname]

	step.lines={}

	step.num=num

	--step.border:SetAllPoints()
	--step.border:SetBackdrop({ edgeFile = ZGV.DIR.."\\Skins\\popup_border", edgeSize = 16 })
	-- no border anymore

	step.slideup = obj("slideup")
	step.fadeout = obj("fadeout")


	step:EnableMouse(true)
	step:SetScript("OnClick", Step_OnClick)
	step:SetScript("OnUpdate", Step_OnUpdate)
	step:SetScript("OnEnter", Step_OnEnter)
	step:SetScript("OnLeave", Step_OnLeave)

	step:RegisterForDrag("LeftButton")
	step:RegisterForClicks("LeftButtonUp","RightButtonUp")

	local iconcount=16
	local function icon_seticon(self,n)
		self:SetTexCoord((n-1)/iconcount,n/iconcount,0,1)
	end

	ZGV.stepframes[num] = step

	for i=1,30,1 do
		local line = obj("Line"..i)
		local label = line.label
		if not label then break end

		local icon = line.icon
		local back = line.back
		local clicker = line.clicker

		line:ClearAllPoints()
		if i==1 then
			-- overridden in ZGV:UpdateFrame anyway
			--line:SetPoint("TOPLEFT",step,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
			--line:SetPoint("TOPRIGHT",step,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
		else
			line:SetPoint("TOPLEFT",obj("Line"..(i-1)),"BOTTOMLEFT",0,0)
			line:SetPoint("TOPRIGHT",obj("Line"..(i-1)),"BOTTOMRIGHT",0,0)
		end
		line:SetHeight(22)
		line.num = i

		--label:SetMultilineIndent(true)

		label:ClearAllPoints()
		label:SetPoint("TOPLEFT",ZGV.ICON_INDENT,0)
		label:SetPoint("TOPRIGHT",0,0)

		step.lines[i]=line
		line.label=label

		icon:ClearAllPoints()
		icon:SetPoint("CENTER",line,"TOPLEFT",10,-10)
		icon:SetTexture(ZGV.DIR.."\\Skins\\icons")
		icon.SetIcon = icon_seticon
		icon:SetIcon(1)

		back:ClearAllPoints()
		back:SetPoint("TOPLEFT")
		back:SetPoint("BOTTOMRIGHT")

		clicker:ClearAllPoints()
		clicker:SetPoint("TOPLEFT")
		clicker:SetPoint("BOTTOMRIGHT")
		--clicker.num = i
		--clicker:RegisterForClicks("LeftButtonUp","RightButtonUp")
		clicker:SetScript("OnClick",clicker_onclick)
		clicker:SetScript("OnEnter",clicker_onenter)
		clicker:SetScript("OnLeave",clicker_onleave)
		clicker:SetScript("OnKeyDown",clicker_onenter)
		clicker:SetScript("OnKeyUp",clicker_onenter)
		clicker:SetScript("OnUpdate",clicker_update)
		clicker:EnableMouse(false)
		clicker:EnableKeyboard(false)
		clicker:SetAlpha(0)

		--line.icon=icon
		--line.back=back
		--line.clicker=clicker
		line.anim_w2g = obj("Line"..i.."Back_white2green")
		line.anim_w2r = obj("Line"..i.."Back_white2rgba")

	end

	step:ClearAllPoints()
	if num==1 then
		step:SetPoint("TOPLEFT","ZygorGuidesViewerFrame_ScrollChild","TOPLEFT",0,0)
		step:SetPoint("TOPRIGHT","ZygorGuidesViewerFrame_ScrollChild","TOPRIGHT",0,0)

	else
		step:SetPoint("TOPLEFT",_G['ZygorGuidesViewerFrame_Step'..(num-1)],"BOTTOMLEFT",0,-ZGV.STEP_SPACING)
		step:SetPoint("TOPRIGHT",_G['ZygorGuidesViewerFrame_Step'..(num-1)],"BOTTOMRIGHT",0,-ZGV.STEP_SPACING)
		--
		--frame:SetPoint("TOPLEFT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMLEFT",0,-STEP_SPACING)
		--frame:SetPoint("TOPRIGHT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMRIGHT",0,-STEP_SPACING)
	end

end

 local function Spot_OnClick(self,button)
	ZGV:Debug("spot clicked")
	if self.spot then self.spot:OnClick() end
end

local function Spot_OnUpdate(self,button)
	if ZGV.CurrentStep==self.step then
		local clicker
		for i=1,30,1 do
			clicker=self.lines[i].clicker
			if clicker.over and not MouseIsOver(clicker) then
				clicker:GetScript("OnLeave")(clicker)
				clicker.over=false
			end
		end
		-- ugly! but first leave's, then enter's.
		obscured = (GetMouseFocus()~=WorldFrame and GetMouseFocus()~=self)

		for i=1,30,1 do
			clicker=self.lines[i].clicker
			if clicker:IsVisible() and MouseIsOver(clicker) and not clicker.over and not obscured then
				clicker:GetScript("OnEnter")(clicker)
				clicker.over=true
			end
		end
	end
end

local function SpotLabel_OnHyperlinkEnter(self,linkdata,link)
	--print("hyper enter")
	--print(linkdata)
	GameTooltip:SetOwner(self,"ANCHOR_CURSOR")
	GameTooltip:ClearAllPoints()
	GameTooltip:ClearLines()
	--GameTooltip:SetPoint("BOTTOMRIGHT",self,"TOPLEFT")
	GameTooltip:SetHyperlink(linkdata)
	GameTooltip:Show()
	ZGV.hasTooltipOverSpotLink=true
end

local function SpotLabel_OnHyperlinkLeave(self,linkdata,link)
	--print("hyper leave")
	GameTooltip:Hide()
	ZGV.hasTooltipOverSpotLink=nil
end

function ZygorGuidesViewerFrame_Spot_Setup(num)
	local function obj(name) return _G['ZygorGuidesViewerFrame_Spot'..num..(name and '_'..name or '')] end

	local spotname = 'ZygorGuidesViewerFrame_Spot'..num
	local spot = _G[spotname]

	spot.lines={}

	spot:SetBackdrop({bgFile = ZGV.DIR.."\\Skins\\white", edgeFile=ZGV.DIR.."\\Skins\\Default\\midnight\\roundcorners", tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }})

	--spot.border:SetAllPoints()
	--spot.border:SetBackdrop({ edgeFile = ZGV.DIR.."\\Skins\\popup_border", edgeSize = 16 })

	spot:EnableMouse(true)
	spot:SetScript("OnClick", Spot_OnClick)
	spot:SetScript("OnUpdate", Spot_OnUpdate)
	spot:RegisterForDrag("LeftButton")
	spot:RegisterForClicks("LeftButtonUp","RightButtonUp")

	ZGV.spotframes[num] = spot

	for i=1,30 do
		local line = obj("Line"..i)
		local label = line.label
		if not label then break end

		--local icon = obj("Line"..i.."Icon")
		--local clicker = obj("Line"..i.."Clicker")

		line:ClearAllPoints()
		if i==1 then
			-- overridden in ZGV:UpdateFrame anyway
			--line:SetPoint("TOPLEFT",step,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
			--line:SetPoint("TOPRIGHT",step,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
		else
			line:SetPoint("TOPLEFT",obj("Line"..(i-1)),"BOTTOMLEFT",0,0)
			line:SetPoint("TOPRIGHT",obj("Line"..(i-1)),"BOTTOMRIGHT",0,0)
		end
		line:SetHeight(12)
		line.num = i

		--label:SetMultilineIndent(true)

		label:ClearAllPoints()
		label:SetPoint("TOPLEFT",0,0)
		label:SetPoint("TOPRIGHT",0,0)

		label:SetHyperlinksEnabled(true)
		label:SetScript("OnHyperlinkEnter", SpotLabel_OnHyperlinkEnter)
		label:SetScript("OnHyperlinkLeave", SpotLabel_OnHyperlinkLeave)
		label:SetScript("OnLeave", SpotLabel_OnHyperlinkLeave)
		label:SetShadowColor(0,0,0,1)
		label:SetShadowOffset(0.5,-0.5)

		spot.arrow:SetTexture(ZGV.DIR.."\\Arrows\\Midnight\\arrow")
		spot.arrowdist:SetFont(STANDARD_TEXT_FONT,9)

		spot.lines[i]=line

		--[[
		icon:ClearAllPoints()
		icon:SetPoint("TOPLEFT",0,1)
		icon:SetTexture(ZGV.DIR.."\\Skins\\icons")
		icon.SetIcon = icon_seticon
		icon:SetIcon(1)

		back:ClearAllPoints()
		back:SetPoint("TOPLEFT")
		back:SetPoint("BOTTOMRIGHT")

		clicker:ClearAllPoints()
		clicker:SetPoint("TOPLEFT")
		clicker:SetPoint("BOTTOMRIGHT")
		--clicker.num = i
		--clicker:RegisterForClicks("LeftButtonUp","RightButtonUp")
		clicker:SetScript("OnClick",clicker_onclick)
		clicker:SetScript("OnEnter",clicker_onenter)
		clicker:SetScript("OnLeave",clicker_onleave)
		clicker:EnableMouse(false)
		--]]

		--line.icon=icon
		--line.back=back
		--line.clicker=clicker
		--line.anim_w2g = obj("Line"..i.."Back_white2green")
		--line.anim_w2r = obj("Line"..i.."Back_white2rgba")

	end

	-- lay them out

	spot:ClearAllPoints()
	if num==1 then
		spot:SetPoint("TOPLEFT","ZygorGuidesViewerFrame_ScrollChild","TOPLEFT",0,0)
		spot:SetPoint("TOPRIGHT","ZygorGuidesViewerFrame_ScrollChild","TOPRIGHT",0,0)
	else
		spot:SetPoint("TOPLEFT",_G['ZygorGuidesViewerFrame_Spot'..(num-1)],"BOTTOMLEFT",0,-ZGV.STEP_SPACING)
		spot:SetPoint("TOPRIGHT",_G['ZygorGuidesViewerFrame_Spot'..(num-1)],"BOTTOMRIGHT",0,-ZGV.STEP_SPACING)
		--frame:SetPoint("TOPLEFT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMLEFT",0,-STEP_SPACING)
		--frame:SetPoint("TOPRIGHT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMRIGHT",0,-STEP_SPACING)
	end
end

function ZygorGuidesViewerFrame_ActionButton_OnEnter(self)
	--if InCombatLockdown() then return end
	--self:SetFrameStrata("DIALOG")
	--self:SetWidth(32)
	--self:SetHeight(32)
	--select(2,self:GetAnimationGroups()):Stop()
	--select(1,self:GetAnimationGroups()):Play()
	--ZGV:Debug("enter "..self:GetName().." "..(self:GetAttribute("type") or "nil"))
	local link
	if self:GetAttribute("type")=="item" then
		link = select(2,GetItemInfo(self:GetAttribute("item") or 0)) or "item:"..(self.goal.itemid or 0)
		if not link then return end
		GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
		GameTooltip:SetHyperlink(link)
		GameTooltip:Show()
	elseif self:GetAttribute("type")=="spell" then
		GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
		GameTooltip:SetSpellByID(self.spellid or 0)
		GameTooltip:Show()
	--[[
	elseif self:GetAttribute("type")=="macro" then
		GameTooltip:SetOwner(self,"ANCHOR_PRESERVE")
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOMRIGHT",self,"TOPLEFT")
		GameTooltip:SetText(self.goal.macrosrc)
		GameTooltip:Show()
	--]]
	end
end

function ZygorGuidesViewerFrame_ActionButton_OnLeave(self)
	--if InCombatLockdown() then return end
	--self:SetWidth(15)
	--self:SetHeight(15)
	--self:SetFrameStrata("MEDIUM")
	if (GameTooltip:GetOwner()==self) then
		--ZGV:Debug("HIDING in ActionButton_OnLeave")
		GameTooltip:Hide()
	end
	for s=1,20 do
		local sf=ZGV.stepframes[s]
		if sf then for l=1,30 do
			local lf=sf.lines[l]
			if lf then
				if lf:IsMouseOver() then ZGV:GoalOnEnter(lf.clicker) return end
			end
		end end
	end
	--ZGV:Debug("hide")
	--select(1,self:GetAnimationGroups()):Stop()
	--select(2,self:GetAnimationGroups()):Play()
end


local ZGVF
local Border
local GuideButton
local TitleBar

function ZygorGuidesViewerFrame_OnLoad(self)
	ZGVF = self
	Border = ZGVF.Border
	TitleBar = Border.TitleBar
	GuideButton = Border.Guides.GuideButton

	self:EnableMouseWheel(1)

	for i=1,20 do
		ZygorGuidesViewerFrame_Step_Setup(i)
	end

	Border.ProgressBar=ZygorGuidesViewer_ProgressBar -- Would never write the progress bar in xml again
	Border.ProgressBar.tex=ZygorGuidesViewer_ProgressBar_Texture
	Border.ProgressBar.text=ZygorGuidesViewer_ProgressBar_TextString

	Border.ProgressBar:ClearAllPoints()
	Border.ProgressBar:SetParent("ZygorGuidesViewerFrame")
	Border.ProgressBar:SetPoint("CENTER", ZygorGuidesViewerFrame_Scroll , "BOTTOM", 0,0)
	Border.ProgressBar:SetFrameLevel(ZygorGuidesViewerFrame:GetFrameLevel()+5)

	-- create action buttons

	ZGV.actionbuttons={}
	ZGV.petactionbuttons={}

	for i=1,30 do
		local name = 'ZygorGuidesViewerFrame_Act'..i

		local action = CreateFrame("CheckButton", name.."Action", UIParent, "SecureActionButtonTemplate")
		local petaction = CreateFrame("CheckButton", name.."PetAction", UIParent, "PetActionButtonTemplate")
		ZGV.actionbuttons[i]=action
		ZGV.petactionbuttons[i]=petaction

		action:RegisterForClicks("LeftButtonUp")

		action:SetFrameStrata("MEDIUM")
		action:SetToplevel(true)
		action:SetSize(15,15)
		action:SetScript("OnEnter", ZygorGuidesViewerFrame_ActionButton_OnEnter)
		action:SetScript("OnLeave", ZygorGuidesViewerFrame_ActionButton_OnLeave)
		action:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")

		action:SetID(i)
		petaction:SetID(i)

		action.tex = action:CreateTexture(name.."ActionIcon","OVERLAY")
		action.tex:SetAllPoints(action)
		action.tex:SetSize(15,15)

		petaction:SetFrameStrata("HIGH")
		petaction:SetWidth(15)
		petaction:SetHeight(15)
		_G[name..'PetActionNormalTexture2']:SetAlpha(0)
		--petaction:SetScript("OnClick",PetActionButton_OnClick) -- taint
		petaction:SetScript("OnDragStart",nil)
		--petaction:SetScript("OnReceiveDrag",nil) --doesn't work
		petaction:SetScript("OnEnter", ZygorGuidesViewerFrame_ActionButton_OnEnter)
		petaction:SetScript("OnLeave", ZygorGuidesViewerFrame_ActionButton_OnLeave)

		local cd = CreateFrame("Cooldown", name.."ActionCooldown", action, "CooldownFrameTemplate")
		action.cd = cd
		cd:SetPoint("CENTER", 0, -1)
		cd:SetAllPoints()
		cd:Hide()
	end

	--[[
	-- Map spots are DOWN for now. TODO skinify! Naaah, ignore.
	for i=1,20 do
		ZygorGuidesViewerFrame_Spot_Setup(i)
	end
	--]]


	-- scrollbar

	ZygorGuidesViewerFrame_Scroll:EnableMouseWheel(1)
	ZygorGuidesViewerFrame_Scroll:SetScript("OnMouseWheel",function(self,delta)
		--if ZGV.db.profile.showallsteps then
		--else
		--	ZygorGuidesViewer:SkipStep(-delta)
		--end
		ZygorGuidesViewerFrame_ScrollScrollBar:SetValue(ZygorGuidesViewerFrame_ScrollScrollBar:GetValue()-delta*3)
	end)
	ZygorGuidesViewerFrame_Scroll.SetVerticalScroll = function(val) ZGV:UpdateFrame() end

	ZGV.ChainCall(ZygorGuidesViewerFrame_ScrollScrollBar:CreateTexture("BACKGROUND")) :SetTexture(0,0,0,0.4) :SetPoint("TOPLEFT",ZygorGuidesViewerFrame_ScrollScrollBar,"TOPLEFT") :SetPoint("BOTTOMRIGHT",ZygorGuidesViewerFrame_ScrollScrollBar,"BOTTOMRIGHT")


	--local back=ZygorGuidesViewerFrame_Border:GetRegions()
	--back:SetBlendMode("ADD")

	Border.SetBackdropBorderColorRGB = function(self,col)
		self:SetBackdropBorderColor(col.r,col.g,col.b,col.a)
	end


	-- arrow holder tex coords:
	-- 862/1024,907/1024,124/512,169/512
	ZygorGuidesViewerFrame_ScrollScrollBarScrollUpButton:SetScript("OnClick",function(self,button) self:GetParent():SetValue(self:GetParent():GetValue()-1) end)
	ZygorGuidesViewerFrame_ScrollScrollBarScrollDownButton:SetScript("OnClick",function(self,button) self:GetParent():SetValue(self:GetParent():GetValue()+1) end)
	--ZygorGuidesViewerFrame_ScrollScrollBarThumbTexture:SetTexCoord(871/1024,896/1024,202/512,256/512)
	ZygorGuidesViewerFrame_ScrollScrollBarThumbTexture:SetWidth(12)
	ZygorGuidesViewerFrame_ScrollScrollBarThumbTexture:SetHeight(30)

	ZygorGuidesViewerFrame_Scroll.scrollBarHideable = 1

	ZygorGuidesViewerFrame_Border_Guides_PrevButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	ZygorGuidesViewerFrame_Border_Guides_NextButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	ZygorGuidesViewerFrame_Border_Guides_GuideBack_SectionTitle:SetFont(ZGV.Font,11)
	--ZygorGuidesViewerFrame_Border_SectionTitle:SetJustifyV("MIDDLE")

	--ZGVF.SmoothSetHeight = ZGVF_SetHeight


	-- flash

	local bg = self:CreateAnimationGroup()
	bg:SetLooping("NONE")
	local f = bg:CreateAnimation("Animation","ZygorGuidesViewerFrame_bdflash")
	self.bdflash = f
	f:SetDuration(1.0)
	if f.SetMaxFramerate then f:SetMaxFramerate(99) end  -- 4.1 PTR issue? is SetMaxFramerate gone?
	f:SetSmoothing("OUT")
	f:SetScript("OnUpdate",doborderrgb)
	f.target = ZygorGuidesViewerFrame_Border
	f.StartRGB = function(self,r,g,b,a,r2,g2,b2,a2)
		self.fromr,self.fromg,self.fromb,self.froma = r,g,b,a
		self.tor,self.tog,self.tob,self.toa = r2,g2,b2,a2
		self:Stop()
		self:Play()
	end

	ZGVF.ThinFlash:SetBackdrop({bgFile="Interface\\Buttons\\white8x8",edgeFile=ZGV.DIR.."\\Skins\\glowborder", tile = true, edgeSize=32, tileSize = 128, insets = { left = 20, right = 20, top = 20, bottom = 20 }})
	ZGVF.ThinFlash:SetBackdropColor(1,1,1,0.5)
	ZGVF.ThinFlash:SetAlpha(0.0)


	self.mouseCount=0
	self.leftCount=0

	self.oldxPos,self.oldyPos = 0,0
end

function ZygorGuidesViewerFrame_OnHide()
	if not ZGV.Frame then return end
	ZGV:Frame_OnHide()
end

function ZygorGuidesViewerFrame_OnShow()
	if not ZGV.Frame then return end
	ZGV:Frame_OnShow()
	if ZGV.DEV then ZygorGuidesViewerFrame_DevLabel:Show() else ZygorGuidesViewerFrame_DevLabel:Hide() end
end

--border showing delay
local delay=1.5

local fadespeed=0.15
local xPos,yPos
local stepframe,line

local throttle=0

local updatetime=1/30

local profile

function ZygorGuidesViewerFrame_OnUpdate(self,elapsed)
	if not profile then profile=ZGV.db.profile end
	--[[
	if not self.aligned then
		self.aligned=true
		ZGV:AlignFrame()
	end

	if ZGV.temp_scansize then
		local scale = self:GetScale()
		local left,top,bottom,right = self:GetLeft(),self:GetTop(),self:GetBottom(),self:GetRight()
		ZGV:Debug(("In OnUpdate: %.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))
		ZGV.temp_scansize=false
	end
	--]]

	if ZGV.delayFlash and ZGV.delayFlash==2 then
		ZGV.delayFlash = 3
	end

	throttle=throttle+elapsed ; if throttle<updatetime then return end ; elapsed=throttle ; throttle=0

	if ZGV.framemoving then
		--ZygorGuidesViewer:UpdateFrame(nil,true)
		ZGV:UpdateFrameCurrent()
	end

	local locked = ZGV.db.profile.windowlocked

	-- auto-hide border
	if profile.hideborder and ZGV.CurrentGuide then
		-- never hide while the window is being moved
		if ZGV.framemoving then
			self.leftCount=0
		end

		--if ZGV.db.profile.windowlocked then
			xPos,yPos = GetCursorPosition()
			if xPos~=self.oldxPos or yPos~=self.oldyPos then self.mouseCount=0 end
			self.oldxPos,self.oldyPos = xPos,yPos
		--end

		--if (  (locked and MouseIsOver(TitleBar,10,-10,-30,30))
		--   or (--[[not locked and]] MouseIsOver(ZGVF,0,0,-20,0))
		if MouseIsOver(ZGVF,0,0,-20,0) and ZGV.borderfadedout
		   and not profile.nevershowborder then
			self.mouseCount = self.mouseCount+elapsed
			self.leftCount=0
			if self.mouseCount>delay then
				UIFrameFadeIn(Border,fadespeed,0.0,profile.opacitymain)
				ZGV.borderfadedout=nil
			end
			GuideButton.delay=-2
		end

		if not MouseIsOver(self,10,-10,-30,30) then
			self.leftCount = self.leftCount+elapsed*2
			self.mouseCount=0
			if self.leftCount>delay and Border:GetAlpha()>0.05 and not ZGV.borderfadedout then
				UIFrameFadeOut(Border,fadespeed,profile.opacitymain,0.0)
				ZGV.borderfadedout=true
			end
		end

		if Border:GetAlpha()<0.05 then
			Border:Hide()
		else
			Border:Show()
		end
	else
		Border:Show()
		Border:SetAlpha(1)
	end

	--[[
	local gt=GetTime()-(ZygorGuidesViewerFrame_ThinFlash.starttime or 0)
	if gt>0 and ZygorGuidesViewerFrame_ThinFlash:IsShown() then
		local a = 0.5 - gt*3
		ZygorGuidesViewerFrame_ThinFlash:SetAlpha(a)
		if (a<0.01) then
			--ZygorGuidesViewerFrame_ThinFlash:Hide()
		end
	end
	--]]

	-- flash
	-- the regular code sets ZGV.delayFlash to 1 and then to 2; upon first update it gets promoted to 3, and only upon that is the flash fired
	-- this is to make sure it flashes after steps had time to rearrange themselves
	if ZGV.delayFlash and ZGV.delayFlash==3 then
		local ThinFlash = ZGVF.ThinFlash
		ThinFlash.flash:Stop()
		--if Border:IsVisible() then
		--else
			if profile.showcountsteps==0 then
				ThinFlash:ClearAllPoints()
				ThinFlash:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Scroll,"TOPLEFT",-18,18)
				local lastbottom=0
				for i=2,20 do
					if ZGV.stepframes[i]:IsVisible() then lastbottom=ZygorGuidesViewerFrame_Scroll:GetTop()-ZGV.stepframes[i]:GetBottom() end
				end
				if lastbottom>0 then
					lastbottom = ZygorGuidesViewerFrame_Scroll:GetHeight()-lastbottom
				end
				ThinFlash:SetPoint("BOTTOMRIGHT",ZygorGuidesViewerFrame_Scroll,"BOTTOMRIGHT",18 - 15,-18 + lastbottom)
			else
				ThinFlash:ClearAllPoints()
				ThinFlash:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Step1,"TOPLEFT",-18,18)
				ThinFlash:SetPoint("BOTTOMRIGHT",ZygorGuidesViewerFrame_Step1,"BOTTOMRIGHT",18,-18)
			end
			ThinFlash.flash:Play()
			--ZygorGuidesViewerFrame_ThinFlash.starttime = GetTime()+0.2
			ThinFlash:Show()
		--end
		ZGV.delayFlash = 0
	end


	--[[
	-- title button slide in
	local but = ZygorGuidesViewerFrame_Border_Guides_GuideButton
	if Border:IsShown() and (MouseIsOver(TitleBar,0,0,50,-50) or not ZGV.CurrentGuide) and not ZGV.loading then
		if locked then
			xPos,yPos = GetCursorPosition()
			if (not but.oldxPos or not but.oldyPos or xPos~=but.oldxPos or yPos~=but.oldyPos) and but.delay>0 then but.delay=0 end
			but.oldxPos,but.oldyPos = xPos,yPos
		end

		but.delay=(but.delay or 0)+elapsed * (locked and 2 or 4)
		if but.delay>1.5 or but.pos>0.01 then
			but.pos = but.pos + elapsed*4
			if but.pos>1 then but.pos=1 end
			local a = 3.14159+0.34159+(math.sin(but.pos*1.5708))*2.8
			but:Show()
			but:dorot(a)
		end
	end
	if but:IsShown() and not MouseIsOver(ZygorGuidesViewerFrame_Border_TitleBar,0,0,50,-50) and ZGV.CurrentGuide and not DropDownList1:IsShown() and not DropDownList2:IsShown() then
		if but.pos<0.01 then
			but:Hide()
			if but.delay>0 then but.delay=0 end
		else
			but.pos = but.pos - elapsed*4
			if but.pos<0 then but.pos=0 end
			local a = 3.14159+0.34159+(math.sin(but.pos*1.5708))*2.8
			but:dorot(a)
		end
	end
	--]]

	--[[
	if not ZGV.briefstepexpansion then ZGV.briefstepexpansion=0.01 end
	if not ZGV.briefstepexpansionspeed then ZGV.briefstepexpansionspeed=0 end
	local oldexpansion=ZGV.briefstepexpansion
	ZGV.briefstepexpansion = ZGV.briefstepexpansion + elapsed*ZGV.briefstepexpansionspeed
	if ZGV.briefstepexpansion>1 then ZGV.briefstepexpansion=1 end
	if ZGV.briefstepexpansion<0.01 then ZGV.briefstepexpansion=0.01 end
	if ZGV.briefstepexpansion~=oldexpansion then ZGV.frameNeedsUpdating = true end
	--]]

	for i=1,30 do
		local ex=ZGV.briefstepexpansionlines
		local sp=ZGV.briefstepexpansionspeedlines
		if not ex[i] then ex[i]=0.01 end
		if not sp[i] then sp[i]=0 end
		local oldexpansion=ex[i]
		ex[i] = ex[i] + elapsed*sp[i]
		if ex[i]>1 then ex[i]=1 end
		if ex[i]<0.01 then ex[i]=0.01 end
		if ex[i]~=oldexpansion then ZGV.frameNeedsUpdating = true end
	end

	-- title button flash
	if (not ZGV.CurrentGuide and not ZGV.loading) or ZGV.suggesting then
		GuideButton.flashing = true
		if not GuideButton.blink:IsPlaying() then GuideButton.blink:Play() end
		GuideButton:LockHighlight()
	else
		GuideButton.flashing = nil
		GuideButton.blink:Stop()
		GuideButton:UnlockHighlight()
	end

	if ZGV.frameNeedsUpdating then
		ZGV.frameNeedsUpdating=nil
		--ZGV:Debug("frameNeedsUpdating, so updating.")
		ZGV:UpdateFrame()
	end

	-- and now the FAST step surfing
	if ZGV.fastforward then
		ZGV.completionelapsed = ZGV.completionelapsed + elapsed
		if ZGV.completionelapsed>=ZGV.completioninterval then
			ZGV:TryToCompleteStep(true)
		end
	end

	for i=1,50 do
		local spot = ZGV.spotframes[i]
		if spot and spot:IsShown() then
			for l=1,30 do
				if spot.lines[l] and spot.lines[l].label.reenableHyperlinks then
					spot.lines[l].label:SetHyperlinksEnabled(true)
					spot.lines[l].label.reenableHyperlinks = nil
				end
			end
		end
	end


	-- step onenter/onleave replacement
	if profile.showbriefsteps then
		local hoverspeed = 1/profile.briefopentime
		local outspeed = 1/profile.briefclosetime   --nasty hack for easy different mouse cooldowns
		for i=1,50 do
			local stepf = ZGV.stepframes[i]
			if stepf and stepf:IsShown() then

				-- menu open? postpone.
				if DropDownList1 and DropDownList1:IsShown() and DropDownList1.dropdown==ZGVFMenu then break end

				-- over an action button? postpone ANY enters/leaves.
				local onaction=nil
				for j=1,30 do if ZGV.actionbuttons[j]:IsMouseOver() then onaction=true break end end
				if not onaction then for j=1,30 do if ZGV.petactionbuttons[j]:IsMouseOver() then onaction=true break end end end
				if onaction then break end

				if not stepf.mousecounter then stepf.mousecounter=0 end

				if stepf:IsMouseOver() then
					if stepf.mousecounter<0 then stepf.mousecounter=0 end
					stepf.mousecounter = (stepf.mousecounter or 0) + elapsed*hoverspeed
					if stepf.mousecounter>=0.99 then
						-- enter
						--ZGV.briefstepexpansionspeed = 5
						ZGV.briefstepexpansionspeedlines[stepf.num] = 5
					end
				else
					if stepf.mousecounter>1 then stepf.mousecounter=1 end
					stepf.mousecounter = (stepf.mousecounter or 0) - elapsed*outspeed
					if stepf.mousecounter<=0.001 then
						-- leave
						--ZGV.briefstepexpansionspeed = -5
						ZGV.briefstepexpansionspeedlines[stepf.num] = -5
					end
				end

			end
		end
	end
end


--[[
function ZGVFSectionDropDown_Initialize(frame,level,menulist)
	ZGV:InitializeDropDown(frame,level,menulist)
end

function ZGVFSectionDropDown_Func()
	ZGV:SetGuide(this.value)
--	ToggleDropDownMenu(1, nil, ZygorGuidesViewerFrame_SectionDropDown, ZygorGuidesViewerFrame, 0, 0);
end
--]]

function ZGVF_SetHeight(self,height)
	self.targetheight = height
	ZygorGuidesViewerFrame_size:Play()
end

function ZygorGuidesViewerFrame_OnSize(self)
	local ZGV = ZygorGuidesViewer
	if not ZGV or not ZGV.db then return end
	local width = self:GetWidth()

	ZygorGuidesViewerFrame_ScrollChild:SetWidth(ZGV.db.profile.showcountsteps==0 and width-39 or width-20)

	ZGV:UpdateFrame(true)
	ZGV:ResizeFrame()
	ZygorGuidesViewer_ProgressBar_SetUp()

	self.oldWidth=self:GetWidth()
	if ZGV.db.profile.showcountsteps==0 then
		ZGV.db.profile.fullheight = self:GetHeight()
	end
	--self.aligncount=4
end

function ZygorGuidesViewerFrame_HideTooltip(self)
	if (not self or GameTooltip:GetOwner()==self or GameTooltip:GetOwner()==ZGV.Frame) then
		--ZGV:Debug("HIDING in HideTooltip")
		GameTooltip:Hide()
	end
end

function ZygorGuidesViewerFrame_OnMouseWheel(self,delta)
	if IsControlKeyDown() then
		ZGV.db.profile.framescale = ZGV.db.profile.framescale + delta * 0.2
		if ZGV.db.profile.framescale<0.4 then ZGV.db.profile.framescale=0.4 end
		self:SetScale(ZGV.db.profile.framescale)
	end
end

-------------------------------------
-- Button handlers
-------------------------------------

function ZygorGuidesViewerFrame_LockButton_OnClick(self,button)
	ZygorGuidesViewer:SetOption("Display","windowlocked")
	if ZGV.optionpanels['display']:IsVisible() then ZGV:OpenOptions('display') end
	self:GetScript("OnEnter")(self)
end

function ZygorGuidesViewerFrame_LockButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L[ZGV.db.profile["windowlocked"] and 'frame_locked' or 'frame_unlocked'])
	GameTooltip:AddLine(L[ZGV.db.profile["windowlocked"] and 'frame_unlock' or 'frame_lock'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZygorGuidesViewerFrame_SettingsButton_OnClick(self,button)
	ZygorGuidesViewer:OpenOptions("display")
end

function ZygorGuidesViewerFrame_SettingsButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_settings'])
	GameTooltip:AddLine(L['frame_settings1'],0,1,0)
	--GameTooltip:AddLine(L['frame_settings2'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZygorGuidesViewerFrame_PrevButton_OnClick(self,button)
	if IsControlKeyDown() and not IsAltKeyDown() then
		ZygorGuidesViewer:FocusStep(1)
		ZGV.pause=nil
	else
		local count=IsShiftKeyDown() and 10 or 1
		for i=1,count do
			ZygorGuidesViewer:PreviousStep(button=="RightButton")
		end
	end
	if ZGV.db.profile.flipsounds then
		PlaySound("igMiniMapZoomIn")
	end
end

function ZygorGuidesViewerFrame_PrevButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_stepnav_prev'])
	GameTooltip:AddLine(L['frame_stepnav_prev_click'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_prev_right'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_prev_ctrl'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZygorGuidesViewerFrame_NextButton_OnClick(self,button)
	local count=IsShiftKeyDown() and 10 or 1
	for i=1,count do
		ZygorGuidesViewer:SkipStep(button=="RightButton")
	end
	if ZGV.db.profile.flipsounds then
		PlaySound("igMiniMapZoomIn")
	end
end

function ZygorGuidesViewerFrame_NextButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_stepnav_next'])
	GameTooltip:AddLine(L['frame_stepnav_next_click'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_next_right'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZygorGuidesViewerFrame_HelpButton_OnClick(self,button)
	if not ZGV.Tutorial.TooltipFrame or not ZGV.Tutorial.TooltipFrame:IsVisible() then
		ZGV.Tutorial:Run()
	end
end

function ZygorGuidesViewerFrame_HelpButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_helpbutton'])
	GameTooltip:AddLine(L['frame_helpbutton_desc'],0,1,0)
	GameTooltip:Show()
end
--------------------

function ZygorGuidesViewerFrame_ReportButton_OnClick(self,button)
	ZGV:BugReport()
end

function ZygorGuidesViewerFrame_ReportButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_reportbutton'])
	GameTooltip:AddLine(L['frame_reportbutton_desc'],0,1,0)
	GameTooltip:Show()
end
--------------------

function ZygorGuidesViewerFrame_Guides_QuestCleanupButton_OnClick(self,button)
	ZGV:ShowQuestCleanup()
end

function ZygorGuidesViewerFrame_Guides_QuestCleanupButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_questcleanupbutton'])
	GameTooltip:AddLine(L['frame_questcleanupbutton_desc'],0,1,0)
	GameTooltip:Show()
end
--]]

--------------------

function ZygorGuidesViewerFrame_ResizerLeft_OnMouseDown(self,button)
	if not ZygorGuidesViewer.db.profile.windowlocked then
		ZygorGuidesViewerFrame.sizedleft=ZygorGuidesViewerFrame:GetLeft()
		--ZygorGuidesViewerFrameMaster:StartSizing("LEFT")
		ZygorGuidesViewerFrame:StartSizing("LEFT")
	end
end

function ZygorGuidesViewerFrame_ResizerRight_OnMouseDown(self,button)
	if not ZGV.db.profile.windowlocked then ZygorGuidesViewerFrame:StartSizing("RIGHT") end
end

function ZygorGuidesViewerFrame_ResizerBottom_OnMouseDown(self,button)
	if not ZGV.db.profile.windowlocked and ZGV.db.profile.showcountsteps==0 then
		ZygorGuidesViewerFrame:StartSizing(ZGV.db.profile.resizeup and "TOP" or "BOTTOM")
	end
end

function ZygorGuidesViewerFrame_ResizerBottomLeft_OnMouseDown(self,button)
	if not ZGV.db.profile.windowlocked then
		ZygorGuidesViewerFrame:StartSizing(ZGV.db.profile.showcountsteps==0 and (ZGV.db.profile.resizeup and "TOPLEFT" or "BOTTOMLEFT") or "LEFT")
	end
end

function ZygorGuidesViewerFrame_ResizerBottomRight_OnMouseDown(self,button)
	if not ZGV.db.profile.windowlocked then
		ZygorGuidesViewerFrame:StartSizing(ZGV.db.profile.showcountsteps==0 and (ZGV.db.profile.resizeup and "TOPRIGHT" or "BOTTOMRIGHT") or "RIGHT")
	end
end


function ZygorGuidesViewerFrame_Resizers_OnMouseUp(self,button)
	--ZygorGuidesViewerFrameMaster:StopMovingOrSizing()
	ZygorGuidesViewerFrame:StopMovingOrSizing()
	ZygorGuidesViewer:ReanchorFrame()
	ZygorGuidesViewer:AlignFrame()
end

--------------------

function ZygorGuidesViewerFrame_Guides_MiniButton_OnClick(self,button)
	ZygorGuidesViewer:SetOption("Display","dispmodepri")
	if ZGV.optionpanels['display']:IsVisible() then ZGV:OpenOptions('display') end
	--ZGV:UpdateMiniMode()

	--if button=="LeftButton" then
	--	ZygorGuidesViewer:SetOption("Display","showcountsteps "..(ZGV.db.profile.showallsteps and ZGV.db.profile.showcountsteps or 0))
	--else
	--	ZygorGuidesViewer:OpenQuickSteps()
	--end
	self:GetScript("OnEnter")(self)
	ZygorGuidesViewer:ReanchorFrame()
	ZygorGuidesViewer:AlignFrame()
end

function ZygorGuidesViewerFrame_Guides_MiniButton_OnEnter(self,button)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L[ZGV.db.profile.dispmodepri and 'frame_dispprimary' or 'frame_dispsecondary'])
	GameTooltip:AddLine(L[ZGV.db.profile.dispmodepri and 'frame_dispgosecondary' or 'frame_dispgoprimary'],0,1,0)
	--GameTooltip:AddLine(L['frame_minright'],0,1,0)
	GameTooltip:Show()
end

---------------------

function ZygorGuidesViewerFrame_Guides_GuideButton_OnClick(self,button)
	local path
	if (ZGV.Menu and ZGV.Menu.Frame and ZGV.Menu.Frame:IsVisible() and ((button=="RightButton")==(ZGV.Menu.path=="SUGGESTED"))) then
		ZGV.Menu:Hide()
	else
		if button=="RightButton" and self.suggestedguide then
			ZGV:SetGuide(self.suggestedguide)
		else
			if button=="RightButton" then
				ZGV:OpenGuideMenu("SUGGESTED")
			else
				ZGV:OpenGuideMenu("HOME")
			end
		end
		--[[
		ZygorGuidesViewerFrame_Border_SectionDropDownButton:GetScript("OnClick")(ZygorGuidesViewerFrame_Border_SectionDropDownButton,arg1)
		--]]
	end
end

function ZygorGuidesViewerFrame_Guides_GuideButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_selectguide'])
	GameTooltip:AddLine(L['frame_selectguide_left'],0,1,0)
	local sug = ZGV:FindSuggestedGuides()
	self.suggestedguide = nil
	if #sug>1 then
		GameTooltip:AddLine(L['frame_selectguide_right2']:format(#sug),0,1,0)
	elseif #sug==1 then
		GameTooltip:AddLine(L['frame_selectguide_right1']:format(sug[1].title_short),0,1,0)
		self.suggestedguide = sug[1]
	end
	GameTooltip:Show()
end

---------------------

function ZygorGuidesViewerFrame_CloseButton_OnClick(self,button)
	HideUIPanel(ZygorGuidesViewerFrame)
end

---------------------
function ZygorGuidesViewerFrame_Scroll_OnUpdate(self)
	if self:GetVerticalScrollRange()==0 then
		--ZygorGuidesViewerFrameScroll_ScrollFill:Hide()
	else
		--ZygorGuidesViewerFrameScroll_ScrollFill:Show()
		if  ZGV.ForceScrollToCurrentStep then
			ZygorGuidesViewer:ScrollToCurrentStep()
		end
	end
end

function ZygorGuidesViewerFrame_Scroll_Slider_OnValueChanged(self,value)
	self:GetParent():SetVerticalScroll(value)
	ZygorGuidesViewer:UpdateFrame(true)
end

function ZygorGuidesViewerFrame_Stepnum_OnMouseWheel(self,delta)
	ZGV:Debug("step num wheel %d",delta)
	local count=IsShiftKeyDown() and 10 or 1
	for i=1,count do
		if delta>0 then
			ZygorGuidesViewer:PreviousStep()
		else
			ZygorGuidesViewer:SkipStep()
		end
	end
end

--[=[
-------------------------
local Rdown,Tdown
function ZygorGuidesViewerFrame_OnKeyDown(self,value)
	local propagate=true
--[[	ZGV:Print("down "..value)
	if value=="LCTRL" then
		propagate=false
	elseif value=="R" then
		propagate=false
		Rdown=true
	elseif value=="T" then
		propagate=false
		Tdown=true
	end
	if Rdown and Tdown then print("R + T") end
--]]
	self:SetPropagateKeyboardInput(propagate)
end

function ZygorGuidesViewerFrame_OnKeyUp(self,value)
	--[[
	ZGV:Print("up "..value)
	if (value=="R") then Rdown=false end
	if (value=="T") then Tdown=false end
	--]]
end
--]=]