local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

local MacroGuide = { name="ZygorMacro", body='/run print("I\'ve just found a bug in Zygor Macros.")', protectednames={},updateHandlers={}, icon="INV_MISC_QUESTIONMARK" }
ZGV.MacroGuideProto = MacroGuide
ZGV.MacroGuideProto_mt = { __index=MacroGuide }
local MacroGuide_RewireMacroPanel
local MacroGuide_MacroPanelRewired

-- A flag to see if we are currently dragging a macro from our previewer
MacroGuide.draggedMacro = nil
-- A flag to see if our last drag landed successfully
MacroGuide.draggedMacroLanded = nil
-- A flag to see if the macro we are dragging was a preview one, in other words, should we rename it back if something happens
MacroGuide.draggedIsPreview = nil

-- Show the macro tooltip upon entering the area
local function Macro_ActionButtonOnEnter(self)
	GameTooltip:SetOwner(self,"ANCHOR_TOPRIGHT") 
	GameTooltip:SetText(L["macro_tooltip"])
	GameTooltip:Show()
end

-- Tried to pick the macro on the cursor, creates it, if necessary
local function Macro_ActionButtonOnDrag(self)
	if not self.macroguide then return end
	-- Let's see if we're dragging a preview
	MacroGuide.draggedIsPreview=not self.macroguide:LocateMacro()
	
	-- If the macro exists, use it, otherwise rename the preview macro
	local mid=self.macroguide:LocateMacro() or EditMacro(GetMacroIndexByName("ZygorMacroPreview"),self.macroguide.name)
	PickupMacro(mid)
	self:SetAttribute("macro",mid) -- Make sure we're referencing the newlycreated one
	if (self.refreshfunc) then self:refreshfunc() end
	
	-- Making sure everybody knows what we are up for
	MacroGuide.draggedMacro = self.macroguide
	
	-- Making sure we receive word on it being reset
	self:RegisterEvent("CURSOR_UPDATE")
	self:RegisterEvent("ACTIONBAR_SLOT_CHANGED")
	
	-- If Macro Panel is here, let's make it redraw itself
	if MacroFrame and MacroFrame:IsShown() then
		MacroFrame_Update()
	end
end

-- Hide the tooltip for good
local function Macro_ActionButtonOnLeave(self)
	GameTooltip:Hide()
end

-- Oddly enough, UPDATE_MOUSEOVER_UNIT does not fire when mouseover target is cleared
-- TODO find a workaround
local function Macro_ActionButtonMouseOverFix(self)
	if not UnitExists("mouseover") then self:UpdateMacroIcon() end
	self.mouseovertimer=ZGV:ScheduleTimer(function() Macro_ActionButtonMouseOverFix(self) end,0.5)
end

-- Registering the button to receive various events
local function Macro_ActionButtonOnShow(self)
	self:UpdateMacroIcon()
	self:RegisterEvent("PLAYER_TARGET_CHANGED")
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	self:RegisterEvent("MODIFIER_STATE_CHANGED")
	self:RegisterEvent("PLAYER_FOCUS_CHANGED")
	Macro_ActionButtonMouseOverFix(self)
	-- Trying to detect whether the MacroFrame is shown
	if MacroFrame then
		if not MacroFrame:IsShown() then
			MacroFrame:Show()
			self.responsibleForMacroFrame=true -- Я тебя породил — я тебя и убью ©
		end
	end
end

-- Eliminating the overhead, no need for updates when hidden
local function Macro_ActionButtonOnHide(self)
	self:UnregisterEvent("PLAYER_TARGET_CHANGED")
	self:UnregisterEvent("UPDATE_MOUSEOVER_UNIT")
	self:UnregisterEvent("MODIFIER_STATE_CHANGED")
	self:UnregisterEvent("PLAYER_FOCUS_CHANGED")
	if self.mouseovertimer then ZGV:CancelTimer(self.mouseovertimer,true) end
	-- Hiding the MacroFrame if we have to
	if MacroFrame and self.responsibleForMacroFrame then
		MacroFrame:Hide() -- Doesn't really hurt if it's hidden already
		self.responsibleForMacroFrame=nil
	end
end

-- Detecting if the dragged macro has been canceled or properly landed somewhere
-- WARNING this may not work well with custom action bars, needs testing
local function Macro_DragAfterMathChecker(self)
	if not MacroGuide.draggedMacroLanded and MacroGuide.draggedIsPreview then
		-- Renaming the macro being dragged back to Preview
		EditMacro(self.macroguide:LocateMacro(),"ZygorMacroPreview")
	end
	
	-- Clearing the mess
	MacroGuide.draggedMacro=nil
	MacroGuide.draggedMacroLanded=nil
	MacroGuide.draggedIsPreview=nil
	self.macroguide:NotifyAboutUpdates()
	
	-- Updating the Macro Panel if needed
	if MacroFrame and MacroFrame:IsShown() then
		MacroFrame_Update()
	end
end

-- React to different events, mostly redraw the icon
local function Macro_ActionButtonOnEvent(self,event)
	if event=="CURSOR_UPDATE" then
		if not CursorHasMacro() then
			-- First comes the CURSOR_UPDATE then comes ACTIONBAR_SLOT_CHANGED
			-- Let's postpone the logic to the point after which we can reliably tell what happened
			ZGV:ScheduleTimer(function() Macro_DragAfterMathChecker(self) end,0.01)
			
			-- Removing the handler
			self:UnregisterEvent("CURSOR_UPDATE")
		end
	elseif event=="ACTIONBAR_SLOT_CHANGED" then
		-- Seems like somebody have landed our macro, let's note it
		MacroGuide.draggedMacroLanded=true
		
		-- Removing the handler
		self:UnregisterEvent("ACTIONBAR_SLOT_CHANGED")
	else
		ZGV:ScheduleTimer(function() self:UpdateMacroIcon() end,0.01) -- Making sure the icon update happens -AFTER- the state change
	end
end

-- Prepare an ActionButton to be used with out Macro System
function MacroGuide.ActionButtonPrepare(button,refreshfunc)
	button:RegisterForDrag("LeftButton")
	button:RegisterForClicks("AnyUp")
	button:SetAttribute("type","macro")
	-- OnDragStart seems to be causing graphical mayhem! TODO
	button:SetScript("OnDragStart",Macro_ActionButtonOnDrag)
	button:SetScript("OnEnter",Macro_ActionButtonOnEnter)
	button:SetScript("OnLeave",Macro_ActionButtonOnLeave)
	button:SetScript("OnEvent",Macro_ActionButtonOnEvent)
	button:SetScript("OnShow",Macro_ActionButtonOnShow)
	button:SetScript("OnHide",Macro_ActionButtonOnHide)
	button.refreshfunc=refreshfunc
	
	-- Rewiring the ingame macro editor
	if not MacroFrame then
		MacroFrame_LoadUI()
	end
	
	-- Bye-bye Blizzard's code
	if not MacroGuide_MacroPanelRewired() then
		MacroGuide_RewireMacroPanel()
	end
	
	-- Connect the macro 
	function button:SetMacro(mg)
		if not self.macroguide or self.macroguide~=mg then
			-- Basic setup
			self.macroguide=mg
			mg.linkedbutton=self
			DeleteMacro("ZygorMacroPreview")
			self:SetAttribute("macro",mg:LocateMacro() or mg:CreateMacro("preview"))
			self:SetAttribute("macrotext",nil)
			Macro_ActionButtonOnShow(self)
			
			-- Remembering the macroname in the protected list so that foreign agents 
			-- (Macro Panel) can tell whether we should be removed or not
			MacroGuide.protectednames[mg.name]=mg
			
			-- Registering the handlers for critical state updates
			if not mg.updateHandlers[MacroFrame] then
				mg.updateHandlers[MacroFrame]=function() if MacroFrame and MacroFrame:IsShown() then MacroFrame_Update() end end
			end
		end
	end
	
	-- Disconnect the macro
	function button:ClearMacro()
		if self.macroguide then
			MacroGuide.protectednames[self.macroguide.name]=nil
			self.macroguide.linkedbutton=nil
		end
		self.macroguide=nil
		self.icon:SetTexture("")
		DeleteMacro("ZygorMacroPreview")
		Macro_ActionButtonOnHide(self)
	end
	
	-- Update the icon
	function button:UpdateMacroIcon()
		if self.macroguide then
			local mid=self.macroguide:LocateMacro() or GetMacroIndexByName("ZygorMacroPreview")
			if mid then
				local _,texture=GetMacroInfo(mid)
				button.icon:SetTexture(texture)
			end
		end
	end
end

-- TODO super paranoia mode:
-- what if there's a macro with the same name but different text?

-- Tried to locate the Macro in the macros, returns nil if unsuccessful
function MacroGuide:LocateMacro()
	local macroid=GetMacroIndexByName(self.name)
	return macroid~=0 and macroid or nil
end

-- Find out whether the user has the macro or not
-- TODO: not only check name but also the content
function MacroGuide:MacroExists(location)
	assert(not location or location=="account" or location=="character")
	local mid=self:LocateMacro() or 0

	if not location then return mid~=0
	elseif location=="account" then return mid>0 and mid<=36 
	else return mid>36 and mid<=54 end
end

-- Try to create the macro, I don't care where but the per-character macros are preferred
-- If the parameter is set, we'll only try creating there. Possible values are "account" and "character"
function MacroGuide:CreateMacro(location)
	assert(not location or location=="account" or location=="character" or location=="preview")

	-- For preview macro we don't need to chose a location
	local preview
	if location=="preview" then macroname="ZygorMacroPreview" location=nil
	else macroname=self.name end
	
	if InCombatLockdown() then
		ZGV:Print(L["macro_error_combat"])
		return nil
	end
	
	local MAX_ACCOUNT_MACROS = MAX_ACCOUNT_MACROS or 36
	local MAX_CHARACTER_MACROS = MAX_CHARACTER_MACROS or 18
	
	-- All right, there may be times when a corresponding macro already exists, let's see about it
	local mid=GetMacroIndexByName(macroname)
	if mid~=0 then
		-- If the macro does not fall in the correct category, delete it and let it be regreated
		if mid<=MAX_ACCOUNT_MACROS and (location=="character") or (location=="account") then
			DeleteMacro(mid)
		else -- If it's okay, just edit it
			return EditMacro(mid,macroname,self.icon)
		end
	end
	
	local numAccountMacros, numCharacterMacros = GetNumMacros()
	-- TODO optimize this expression
	local oA=(numAccountMacros>=MAX_ACCOUNT_MACROS)
	local oC=(numCharacterMacros>=MAX_CHARACTER_MACROS)
	if (oA and location=="account") or (oC and location=="character") or (oA and oC and not location) then
		ZGV:Print(L["macro_error_overflow"]:format(location and (location.." ") or ""))
		return nil
	end
	
	-- Schedule the updates to everybody who could have been watching us
	ZGV:ScheduleTimer(function() self:NotifyAboutUpdates() end,0.01)
	
	-- Okay, sanity aside, let's do things
	return CreateMacro(macroname,self.icon,self.body,not location and (not oC) or (location=="character"))
end

-- Tell everybody displaying our state that it might have changed
function MacroGuide:NotifyAboutUpdates()
	for k,updatefunc in pairs(self.updateHandlers) do
		updatefunc()
	end
end

-- Just in case somebody wants it
function MacroGuide:DeleteMacro()
	-- Hold a second, somebody might be referencing us
	if self.linkedbutton then
		local but=self.linkedbutton
		DeleteMacro("ZygorMacroPreview") -- For sanity
		DeleteMacro(self.name) -- We could have just renamed of course, but this ensures that action bar will strip the icon as well
		but:SetAttribute("macro",self:CreateMacro("preview"))
	else -- Ah, no, just delete it
		DeleteMacro(self.name)
	end
	-- At any rate, we want to report our state to everbody in need no matter who the command came from
	self:NotifyAboutUpdates()
end

-- Look in the macro book for the same-named macros and update their body
-- Used as a part of localization process
function MacroGuide:Update()
	local mid=self:LocateMacro()
	if mid then
		local n,i,b=GetMacroInfo(mid)
		if self.body~=b and b:find("##") then
			if ZGV then ZGV:Print("Macro "..n.." updated.") end -- TODO localize
			EditMacro(mid,self.name,self.icon,self.body)
		end
	end
end

-- Place the macro on the bars
function MacroGuide:PlaceOnBar()
	if InCombatLockdown() then
		ZGV:Print(L["macro_error_combat"])
		return nil
	end
	
	local mid=self:LocateMacro()
	if mid then
		ClearCursor() -- Just in case
		PickupMacro(mid)
		-- Looking for a first unused slot
		local NUM_ACTIONBAR_BUTTONS=NUM_ACTIONBAR_BUTTONS or 6
		local NUM_ACTIONBAR_PAGES=NUM_ACTIONBAR_PAGES or 12
		for i=1,NUM_ACTIONBAR_PAGES*NUM_ACTIONBAR_BUTTONS do
			-- Here's a deal, the second action bar is not shown in default UI readily, let's only try to populate it if anything other fails
			local fix=0
			if i>NUM_ACTIONBAR_BUTTONS and i<=NUM_ACTIONBAR_BUTTONS*(NUM_ACTIONBAR_PAGES-1) then
				fix=NUM_ACTIONBAR_BUTTONS
			elseif i>NUM_ACTIONBAR_BUTTONS*(NUM_ACTIONBAR_PAGES-1) then
				fix=-NUM_ACTIONBAR_BUTTONS*(NUM_ACTIONBAR_PAGES-2)
			end
			if not GetActionInfo(i+fix) then
				PlaceAction(i+fix)
				return
			end
		end
		-- If we are still here, probably we overflooded the action bars
		ClearCursor()
		ZGV:Print(L['macro_error_bars_full'])
	end
end

-- Custom Macro Panel Handlers
-- WARNING this is -DIRECTLY- taken from Blizzard_MacroUI.lua because there's no way to insert an arbitary handler inside existing code
-- as soon as MacroUI updates we might need to rewrite it for good, but since MacroUI is never altered it's not the greater concern for now
-- Modified lines are commented with -- +
-- WARNING while it's unlikely, we may also cause disfunctions in addons trying to accomplish the same thing
-- aprotas says: well, this exactly happened @ 4.3 so, see how ugly it looks

-- We get to keep the original versions for some
local Old_MacroButtonClick
local Old_MacroDeleteButtonClick

local function Macro_UIMacroButtonOnClickDomestic(self, button)
	assert(Old_MacroButtonClick)
	
	if MacroGuide.draggedMacro then --  Not so fast, it was a drag event
		if (button=="LeftButton") then  
			--  Placing the new macro
			local MAX_ACCOUNT_MACROS = 36;
			local MAX_CHARACTER_MACROS = 18;
			local mac=MacroGuide.draggedMacro 
			local mid=MacroFrame.macroBase + self:GetID()
			MacroFrame_SelectMacro(mac:CreateMacro(mid <= MAX_ACCOUNT_MACROS and "account" or "character")) 
			
			-- Nice, now we have to inform everybody that the macro has landed
			MacroGuide.draggedMacroLanded=true
			ClearCursor()
			
			-- Some cleanup
			MacroFrame_Update()
			MacroPopupFrame:Hide()
			MacroFrameText:ClearFocus()
		end --  Else we don't really care
	else 
		Old_MacroButtonClick(self,button)
	end
end

local function Macro_UIMacroDeleteOnClickDomestic()
	assert(Old_MacroDeleteButtonClick)
	-- Let's see if we're trying to remove something that's under focus
	local selection=GetMacroInfo(MacroFrame.selectedMacro)
	
	if MacroGuide.protectednames[selection] then
		ZGV:Debug("User tried to remove the macro we're displaying. We won't allow this to happen")
		MacroGuide.protectednames[selection]:DeleteMacro() -- Safe call, will rename if we can't delete right now
		MacroFrameText:ClearFocus()
	else
		Old_MacroDeleteButtonClick()
	end
end

local function Macro_UIUpdateDomestic()
	local MAX_ACCOUNT_MACROS = 36;
	local MAX_CHARACTER_MACROS = 18;
	local NUM_MACROS_PER_ROW = 6;
	local NUM_MACRO_ICONS_SHOWN = 20;
	local NUM_ICONS_PER_ROW = 5;
	local NUM_ICON_ROWS = 4;
	local MACRO_ICON_ROW_HEIGHT = 36;

	local numMacros;
	local numAccountMacros, numCharacterMacros = GetNumMacros();
	local macroButtonName, macroButton, macroIcon, macroName;
	local name, texture, body;
	local selectedName, selectedBody, selectedIcon;

	if ( MacroFrame.macroBase == 0 ) then
		numMacros = numAccountMacros;
	else
		numMacros = numCharacterMacros;
	end

	-- Macro List
	local maxMacroButtons = max(MAX_ACCOUNT_MACROS, MAX_CHARACTER_MACROS);
	for i=1, maxMacroButtons do
		macroButtonName = "MacroButton"..i;
		macroButton = _G[macroButtonName];
		macroIcon = _G[macroButtonName.."Icon"];
		macroName = _G[macroButtonName.."Name"];
		
		if ( i <= MacroFrame.macroMax ) then -- +
			name, texture, body = GetMacroInfo(MacroFrame.macroBase + i);  -- +
			local hiddenName=MacroGuide.draggedMacro and MacroGuide.draggedMacro.name or "ZygorMacroPreview" -- +
			if ( i <= numMacros and name~=hiddenName ) then -- +
				-- +
				macroIcon:SetTexture(texture);
				macroName:SetText(name);
				-- + When the macro is dragged, disable regular buttons...
				(MacroGuide.draggedMacro and macroButton.Disable or macroButton.Enable)(macroButton); -- +
				-- Highlight Selected Macro
				if ( MacroFrame.selectedMacro and (i == (MacroFrame.selectedMacro - MacroFrame.macroBase)) ) then
					macroButton:SetChecked(1);
					MacroFrameSelectedMacroName:SetText(name);
					MacroFrameText:SetText(body);
					MacroFrameSelectedMacroButton:SetID(i);
					MacroFrameSelectedMacroButtonIcon:SetTexture(texture);
					MacroPopupFrame.selectedIconTexture = gsub( strupper(texture), "INTERFACE\\ICONS\\", "") -- +
				else
					macroButton:SetChecked(0);
				end
			else
				macroButton:SetChecked(0);
				macroIcon:SetTexture("");
				macroName:SetText("");
				-- + ... but enable empty ones
				(MacroGuide.draggedMacro and macroButton.Enable or macroButton.Disable)(macroButton); -- + 
			end
			macroButton:Show();
		else
			macroButton:Hide();
		end
	end

	-- Macro Details
	if ( MacroFrame.selectedMacro ~= nil ) then
		MacroFrame_ShowDetails();
		MacroDeleteButton:Enable();
	else
		MacroFrame_HideDetails();
		MacroDeleteButton:Disable();
	end
	
	--Update New Button
	if ( numMacros < MacroFrame.macroMax ) then
		MacroNewButton:Enable();
	else
		MacroNewButton:Disable();
	end

	-- Disable Buttons
	if ( MacroPopupFrame:IsShown() ) then
		MacroEditButton:Disable();
		MacroDeleteButton:Disable();
	else
		MacroEditButton:Enable();
		MacroDeleteButton:Enable();
	end

	if ( not MacroFrame.selectedMacro ) then
		MacroDeleteButton:Disable();
	end
end

MacroGuide_MacroPanelRewired=function()
	return MacroButton_OnClick == Macro_UIMacroButtonOnClickDomestic 
		and MacroFrame_Update == Macro_UIUpdateDomestic 
		and MacroFrame_DeleteMacro == Macro_UIMacroDeleteOnClickDomestic 
end

MacroGuide_RewireMacroPanel=function()
	MacroFrame_Update = Macro_UIUpdateDomestic 
		
	Old_MacroButtonClick=MacroButton_OnClick
	MacroButton_OnClick = Macro_UIMacroButtonOnClickDomestic
	
	Old_MacroDeleteButtonClick=MacroFrame_DeleteMacro
	MacroFrame_DeleteMacro = Macro_UIMacroDeleteOnClickDomestic
end
