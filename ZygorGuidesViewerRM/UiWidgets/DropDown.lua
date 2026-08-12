local ZGV = ZGV

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local G = _G

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local AceGUI = LibStub("AceGUI-3.0-Z", true) or LibStub("AceGUI-3.0")

local DropDown = {}
local private = {}
DropDown.private = private

ZGV.UI:RegisterWidget("DropDown",DropDown)
local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 150

--[[
	Class for a zygor themed dropdown. Takes a AceGUI dropdown and then converts all of the UI to our theme.

	Style 1/nil	= Orange button
	Style 2		= gray button and bordered

	Sample Use:
		local DropDown = CHAIN(ZGV.UI:Create("DropDown",F2))
			:SetPoint("TOP",choT,"BOTTOM",0, -10)
			:SetText("Default!")
		.__END

		for i,text in pairs(tableoftextstrings) do
			DropDown:AddItem(text)
		end

		local curselected = DropDown:GetCurrentSelectedItem()

	Known Issues:
		Can not assign a global name to the widget with :New. This name is assigned by Ace
		Some functionality might not have made it over from the Ace GUI. Might need to implement them as the appear.
--]]


function DropDown:New(parent,style,frameLevel,multi)
	style = style or 1

	local dropdownObj = CHAIN(AceGUI:Create("Dropdown"))
		:SetWidth(DEFAULTWIDTH)
		:SetText("")
		:SetMultiselect(multi)
	.__END

	local dropdown = dropdownObj.dropdown
	local dropdownFrame = dropdownObj.frame
	local dropdownPullout = dropdownObj.pullout
	local dropdownText = dropdownObj.text
	local dropdownButton = dropdownObj.button
	local dropdownButtonCover = dropdownObj.button_cover
	local frameBackdrop, frameBackdropColor, frameBackdropEdgeColor

	if style == 1 then
		frameBackdrop, frameBackdropColor = "DropDownBackdrop1", "DropDownBackdrop1Color"
	elseif style == 2 then
		frameBackdrop, frameBackdropColor, frameBackdropEdgeColor = "DropDownBackdrop2", "DropDownBackdrop2Color", "DropDownBackdrop2BorderColor"
	else
		error(("Style %s not supported"):format(style))
	end

	-- Hide the preset template textures (Blizzard dropdown chrome)
	if dropdown.Left then dropdown.Left:Hide() end
	if dropdown.Middle then dropdown.Middle:Hide() end
	if dropdown.Right then dropdown.Right:Hide() end
	-- Also hide any unnamed child textures from standard AceGUI dropdown
	if dropdown.GetRegions then
		for _, region in pairs({dropdown:GetRegions()}) do
			if region.GetObjectType and region:GetObjectType() == "Texture" then
				region:Hide()
			end
		end
	end

	-- Old stuff is hidden so make it look Zygory
	CHAIN(dropdownFrame)
		:SetBackdrop(SkinData(frameBackdrop))
		:SetBackdropColor(unpack(SkinData(frameBackdropColor)))
		:SetParent(parent)

	if frameBackdropEdgeColor then dropdownFrame:SetBackdropBorderColor(unpack(SkinData(frameBackdropEdgeColor))) end

	if frameLevel then dropdownFrame:SetFrameLevel(frameLevel) end	-- Since everything else gets parented to this, just set this framelevel then rest will follow.

	-- parent the pullout to use.
	dropdownPullout:SetParent(dropdown)
	
	-- ReSkin the pullout
	CHAIN(dropdownPullout.frame)
		:SetBackdrop(SkinData("DropDownPulloutBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownPulloutColor")))
		:SetBackdropBorderColor(unpack(SkinData("DropDownPulloutBorderColor")))
		:SetClampedToScreen(true)
		:SetParent(dropdown)

	-- Fix the text now.
	CHAIN(dropdownText)
		:ClearAllPoints()
		:SetParent(dropdownFrame)
		:SetPoint("LEFT",5,0)
		:SetPoint("RIGHT",dropdownButton,"LEFT",-5,0) -- Max to the right is the button.
		:SetJustifyH("LEFT")
		:SetFont(FONT,12)

	-- dropdownButton is the actual button. dropdownButtonCover goes over the frame and also shows the pullout
	CHAIN(dropdownButton)
		:HookScript("OnClick",private.DropDown_Click)
		:ClearAllPoints()									-- Button seemed off before
		:SetPoint("TOPRIGHT",dropdownFrame,"TOPRIGHT")
	
	if style == 1 then
		ZGV.ButtonSets.TitleButtons.DROPDOWN:AssignToButton(dropdownButton)
	elseif style == 2 then
		-- Gets a texture then a gray backdrop
		ZGV.ButtonSets.TitleButtons.DROPDOWN:AssignToButton(dropdownButton)

		CHAIN(dropdownButton)
			:SetBackdrop(SkinData("DropDownButtonBackdrop2"))
			:SetBackdropColor(unpack(SkinData("DropDownButtonBackdrop2Color")))
	end

	if dropdownButtonCover then dropdownButtonCover:HookScript("OnClick",private.DropDown_Click) end

	for f,fun in pairs(self) do
		dropdownObj[f]=fun
	end

	return dropdownObj
end

--[[
	Adds a new item to the pullout of the dropdown.

	Can pass a string OR a Dropdown-Item-Toggle.
	There are other types of items but they are not supported at this time.

	Applies a visual for a ToggleButton by overwriting the default check texture with our custom one.

	Can add a callback for when an item is clicked.
--]]

function DropDown:AddItem(obj,value,callback, tooltip)
	if not obj then return end
	value = value==nil and true or value		-- nil/true = true, false = false

	local item
	if type(obj) == "number" then obj = tostring(obj) end
	if type(obj) == "string" then
		item = AceGUI:Create("Dropdown-Item-Toggle")
		item:SetText(obj)
	elseif type(obj) == "table" and obj.type == "Dropdown-Item-Toggle" then
		item = obj
	else
		error("Can not add to dropdown. Needs to be string or Dropdown-Item-Toggle.")
	end

	-- Overwrite default because default does not close pullout and allows for multiple clicks at once, which we don't want.
	item.frame:SetScript("OnClick",private.PulloutItem_Click)

	if tooltip then
		item.frame:SetScript("OnEnter", function()
			GameTooltip:ClearAllPoints()
			GameTooltip:SetOwner(item.frame:GetParent(), self.tooltipPos)
			GameTooltip:SetFrameLevel(item.frame:GetParent():GetFrameLevel()+1) -- Ensure we are on top.
			GameTooltip:AddLine(tooltip)
			GameTooltip:Show()
		end)
		
		item.frame:SetScript("OnLeave", function()
			GameTooltip:ClearAllPoints()
			GameTooltip:Hide()
		end)
	end
	
	-- Creates a grey backdrop next to the text. Looks like a toggle button
	item.zygorbackdrop = CHAIN(ZGV.CreateFrameWithBG("Button", nil, item.frame)) --TODO: make these buttons change for Midnight.
		:SetBackdrop(SkinData("DropDownItemBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownItemColor")))
		:SetSize(8,8)
		:SetPoint("LEFT",item.frame,"LEFT",3,0)
	 .__END

	-- OverWrite the default check. This allows it to still be shown/hidden properly
	-- Note: In overwriting Parent is changed from item.frame
	item.check = CHAIN(item.zygorbackdrop:CreateTexture("OVERLAY"))
		:SetColorTexture(unpack(SkinData("Accent")))
		:SetAllPoints()
		:Hide()
	.__END

	item.userdata.value = value
	item.callback = callback

	self.pullout:AddItem(item)

	return item
end

--[[
	Adds a tooltip that shows/hides when the main part of the dropdown is hovered over.
--]]
function DropDown:AddTooltip(pos,text)
	local dropdownFrame = self.frame
	local dropdownButton = self.button
	local dropdownButtonCover = self.button_cover
	self.tooltipPos = pos
	
	local function showTooltip(self)
		GameTooltip:SetOwner(dropdownFrame,pos)

		GameTooltip:ClearAllPoints()
		GameTooltip:ClearLines()
		GameTooltip:SetText(text)
	end

	local function hideTooltip(self)
		GameTooltip:Hide()
	end

	dropdownButton:HookScript("OnEnter",showTooltip)
	--dropdownButtonCover:HookScript("OnEnter",showTooltip)
	dropdownButton:HookScript("OnLeave",hideTooltip)
	--dropdownButtonCover:HookScript("OnLeave",hideTooltip)
end

--[[
	Untoggles all the items in the pullout except the one that is selected.

	Also counts the string length and returns the longest one.
--]]

function DropDown:UpdatePulloutSize()
	local items = self.pullout.items
	if not items then return end

	local maxlen = 0
	local totalheight = 0

	for i,item in ipairs(items) do
		-- Get the max length
		totalheight = item.frame:GetHeight() + totalheight
		local len = item.text:GetStringWidth()
		if len > maxlen then maxlen = len end

		-- Only 1 item is selected at a time.
		if not self.multiselect then
			item:SetValue(self.pullout.curItemSelected == item)
		end
	end
	
	-- Change the size of the frames inside of the pullout to make less space above and below items
	self.pullout.itemFrame:SetHeight(totalheight)
	self.pullout.frame:SetHeight(totalheight + 5)	-- + 5 to make sure it is bigger than scrollstuff
	self.pullout.scrollFrame:SetPoint("TOPLEFT", self.pullout.frame, "TOPLEFT", 6, -1)
	self.pullout.scrollFrame:SetPoint("BOTTOMRIGHT", self.pullout.frame, "BOTTOMRIGHT", -6, 1)

	return maxlen
end

--[[
	Returns the item of that is currently selected. Can get it's text and value from .text:GetText and .value
--]]

function DropDown:GetCurrentSelectedItem()
	return self.pullout.curItemSelected
end

function DropDown:GetCurrentSelectedItemValue()
	return self.pullout.curItemSelected.userdata.value
end

function DropDown:SetCurrentSelectedItem(item)
	assert(item and item.type=="Dropdown-Item-Toggle", "Invalid item")

	if item.disabled then return end

	self.pullout.curItemSelected = item

	-- Set the text of the dropdown to the text of the item
	self:SetText(item.text:GetText())
end

function DropDown:SetCurrentSelectedByValue(value)
	local pullout = self.pullout
	local items = pullout.items

	for i,item in ipairs(items) do
		if item.userdata.value == value then
			self:SetCurrentSelectedItem(item)
			break
		end
	end
end

function DropDown:Show()
	self.frame:Show()
end

function DropDown:Hide()
	self.frame:Hide()
end

function DropDown:SetSize(width,height)
	self:SetWidth(width)
	self:SetHeight(height)
end

-- If something custom needs done on Width set can use this. No need atm
--[[
function DropDown:OnWidthSet(width)
	
end
--]]

--[[
	Called on SetHeight by AceGui. Need to adjust the button height when this is called.
--]]
function DropDown:OnHeightSet(height)
	local button = self.button
	button:SetSize(height,height)
end

function private.DropDown_Click(self,button)
	if not self.obj.open then return end

	local dropdownObj = self.obj
	local maxItemLen = dropdownObj:UpdatePulloutSize()
	
	-- Set the width of the pullout frame. Either the width of the dropdown, or the width of the longest time. 45 is just extra needed room found from testing it
	dropdownObj.pullout.frame:SetWidth(max(maxItemLen + 45,dropdownObj.frame:GetWidth()))
end

--[[
	Overwrites the default Pullout Item OnClick. Copies some code from AceGuiWidget-Dropdown-Item
--]]

function private.PulloutItem_Click(this)
	local self = this.obj					-- This is the item.
	local pullout = self.pullout
	local dropdownObj = pullout.parent.obj

	dropdownObj:SetCurrentSelectedItem(self)

	-- Close the dropdown box if it is open. If it is closed then don't open because it was a click from code.
	if dropdownObj.open then
		dropdownObj.button:Click()
	end
	
	-- Call any callbacks that were set. It is assumed there is only 1 per item.
	if self.callback then self:callback() end
end
