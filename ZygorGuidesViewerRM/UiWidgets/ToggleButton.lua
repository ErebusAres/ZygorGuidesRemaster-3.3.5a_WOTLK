local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.UI) then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ToggleButton = {}
local ui = ZGV.UI
ui:RegisterWidget("ToggleButton",ToggleButton)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 10
local DEFAULTHEIGHT = 10
local TEXTBUTTONBONUS = 1

--[[
	Class for a nice button that toggles on and off.

	Many functions are overwritten so that you can call tB:funct() instead of searching through the different componets to set the correct obj.
	e.g tb:SetText() actually does tb.text:SetText()

	Sample Use:
		local toggleButton = CHAIN(ZGV.Ui:Create("ToggleButton",MYFRAME,"nameofButton"))
			:SetPoint("LEFT",25,0)
			:SetText("I am a button!")
		.__END

	Known Issues:
		Only uses stealth skin.
		Text to the right of the button does not wrap
		No tooltips available
--]]

function ToggleButton:New(parent,name)
	local button = CHAIN(ui:Create("Button",parent,name))
		:SetBackdropColor(unpack(SkinData("ToggleButtonBackdropColor")))
		:SetBackdropBorderColor(0,0,0,0) -- No Border
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		-- Get rid of OnEnter/Leave. Need a highlight texture not a backdrop color change because we overwrite that texture already.
		:SetScript("OnEnter",function() end)
		:SetScript("OnLeave",function() end)
		:SetScript("OnClick",function(me) me:Toggle(not me.curToggle) end)
	 .__END

	 button.hilitex = CHAIN(button:CreateTexture())
		:SetAllPoints()
		:SetTexture(unpack(SkinData("ToggleButtonHighlightColor")))
	.__END

	button:SetHighlightTexture(button.hilitex)

	-- TODO does not handle word wrapping.
	button.text=CHAIN(button:CreateFontString(nil,"ARTWORK"))
		:SetPoint("LEFT",button,"RIGHT",5,0)
		:SetFont(FONT,12)
		:SetTextColor(1,1,1,1)
		:SetText("Toggle Button with no text.")
	.__END

	-- Button that contains the text so that if you click the text it toggles the box too.
	button.textbutton = CHAIN(CreateFrame("Button",nil,button))
		-- We are invisible
		:SetHeight(DEFAULTHEIGHT + TEXTBUTTONBONUS)
		:SetPoint("LEFT",button,"RIGHT")
		:RegisterForClicks("LeftButtonUp")
		-- Make scripts behave like button's
		:SetScript("OnEnter",function() if button.canToggle and button:GetText() then button:LockHighlight() end end)
		:SetScript("OnLeave",function() if button.canToggle and button:GetText() then button:UnlockHighlight() end end)
		:SetScript("OnClick",function() if button:GetText()~="" then button:GetScript("OnClick")(button) end end)
	.__END

	button.savedSetSize = button.SetSize

	for f,fun in pairs(self) do
		button[f]=fun
	end

	-- initial settings
	button.canToggle = true
	button.curToggle = false

	return button
end

--[[
	Ran on button click
--]]

function ToggleButton:Toggle(set)
	 if not self.canToggle then return end

	self:SetToggle(set)
end

--[[
	True or false, bypass the .canToggle option because this is only called code side.

	Changes the color to orange/grey(default) based on T/F.

	Calls MyToggle after it is complete if additional works need to be done when a button is toggled.
--]]

function ToggleButton:SetToggle(set, nocallbacks)
	if set then
		-- Make it orange.
		self:SetBackdropColor(unpack(SkinData("AccentColor")))
	else
		-- Same as initial
		self:SetBackdropColor(unpack(SkinData("ToggleButtonBackdropColor")))
	end

	self.curToggle = set

	if self.MyToggle and type(self.MyToggle) == "function"  then self:MyToggle() end
	
	if not nocallbacks and self.callbacks then
		for _, callback in pairs(self.callbacks) do
			callback(self)
		end
	end
end

-- Allow callbacks
function ToggleButton:RegisterToggleCallback(callback)
	if not self.callbacks then
		self.callbacks={}
	end
	tinsert(self.callbacks, callback)
end



--[[
	function to be overwritten by user. So that pre/post hooking SetToggle is not needed.

	No arguments are passed except self.

	Called on SetToggle()
--]]

--[[
function ToggleButton:MyToggle()

end
--]]

--[[
	Can be set to prevent toggling from clicking the button. Can still set with :SetToggle(t)
--]]

function ToggleButton:CanToggle(set)
	self:EnableIf(set)
	self.canToggle = set
end

--[[
	Returns T/F. Use your imagination what the T/F mean.
--]]

function ToggleButton:IsToggled()
	return self.curToggle
end

--[[
	Overwrites the normal button:SetText and sets the text of the .text object for the toggle button instead.
--]]

function ToggleButton:SetText(text)
	if not text then return end
	self.text:SetText(text)
	self.textbutton:SetWidth(self.text:GetStringWidth() + 10)
end

function ToggleButton:SetFont(font,size)
	self.text:SetFont(font or FONT,size or 12)
end

function ToggleButton:SetTextColor(r,g,b,a)
	self.text:SetTextColor(r or 1, g or 1, b or 1, a or 1)
end

function ToggleButton:GetFont()
	return self.text:GetFont()
end

function ToggleButton:GetText()
	return self.text:GetText()
end

function ToggleButton:SetSize(x,y)
	self:savedSetSize(x,y)
	-- textbutton width is determined by text legnth. But height can change.
	self.textbutton:SetHeight(x+TEXTBUTTONBONUS)
end

function ToggleButton:SetWidth(x)
	self:SetSize(x,self:GetHeight())
end

function ToggleButton:SetHeight(y)
	self:SetSize(self:GetWidth(),y)
end