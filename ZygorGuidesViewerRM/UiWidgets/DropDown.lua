local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.UI) then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local G = _G

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local AceGUI = LibStub("AceGUI-3.0")

local DropDown = {}
local private = {}
DropDown.private = private

ZGV.UI:RegisterWidget("DropDown",DropDown)
local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 150

--[[
	Class for a zygor themed dropdown. Takes a AceGUI dropdown and then converts all of the UI to our theme.

	Sample Use:
		local DropDown = CHAIN(ZGV.UI:Create("DropDown",F2))
			:SetPoint("TOP",choT,"BOTTOM",0, -10)
			:SetText("Default!")
		.__END

		for i,text in pairs(tableoftextstrings) do
			DropDown:Add(text)
		end

		local curselected = DropDown:GetSelected()

	Known Issues:
		Can not assign a global name to the widget with :New. This name is assigned by Ace
		Some functionality might not have made it over from the Ace GUI. Might need to implement them as the appear.
--]]


function DropDown:New(parent)
	local dropdown = CHAIN(AceGUI:Create("Dropdown"))
		:SetWidth(DEFAULTWIDTH)
		:SetText("Dropdown Text")
	.__END

	local dd = dropdown.dropdown
	local df = dropdown.frame
	local dp = dropdown.pullout
	local dt = dropdown.text
	local db = dropdown.button

	-- Hide the preset template. Only way to get at it is with the globals.
	G[dd:GetName() .. "Left"]:Hide()
	G[dd:GetName() .. "Middle"]:Hide()
	G[dd:GetName() .. "Right"]:Hide()

	-- Old stuff is hidden so make it look Zygory
	CHAIN(df)
		:SetBackdrop(SkinData("DropDownBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownBackdropColor")))
		--:SetBackdropBorderColor(unpack(SkinData("DropDownColor")))
		:SetParent(parent)

	-- parent the pullout to use.
	dp:SetParent(dd)

	CHAIN(dp.frame)
		:SetBackdrop(SkinData("DropDownPulloutBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownPulloutColor")))
		:SetBackdropBorderColor(unpack(SkinData("DropDownPulloutBorderColor")))
		:SetParent(dd)

	-- Fix the text now.
	CHAIN(dt)
		:ClearAllPoints()
		:SetParent(df)
		:SetPoint("LEFT",5,0)
		:SetPoint("RIGHT",db,"LEFT",-5,0) -- Max to the right is the button.
		:SetJustifyH("LEFT")
		:SetFont(FONT,12)

	-- db is the actual button. db2 goes over the frame and also shows the pullout
	db:HookScript("OnClick",private.DropDown_Click)
	AssignButtonTexture(db,SkinData("TitleButtons"),11,16)

	for f,fun in pairs(self) do
		dropdown[f]=fun
	end

	item = AceGUI:Create("Dropdown-Item-Toggle")

	return dropdown
end

--[[
	Adds a new item to the pullout of the dropdown.

	Can pass a string OR a Dropdown-Item-Toggle.
	There are other types of items but they are not supported at this time.

	Applies a visual for a ToggleButton by overwriting the default check texture with our custom one.
--]]

function DropDown:Add(obj,callback)
	if not obj then return end

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

	-- Overwrite default because hooking it causes side effects of multiple hooks. Overwriting only causes an event to fire that isn't needed
	item.frame:SetScript("OnClick",private.PulloutItem_Click)

	-- Creates a grey backdrop next to the text. Looks like a toggle button
	item.zygorbackdrop = CHAIN(CreateFrame("Button", nil, item.frame)) --TODO: make these buttons change for Midnight.
		:SetBackdrop(SkinData("DropDownItemBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownItemColor")))
		:SetSize(8,8)
		:SetPoint("LEFT",item.frame,"LEFT",3,0)
	 .__END

	-- OverWrite the default check. This allows it to still be shown/hidden properly
	-- Note: In overwriting Parent is changed from item.frame
	item.check = CHAIN(item.zygorbackdrop:CreateTexture("OVERLAY"))
		:SetTexture(unpack(SkinData("AccentColor")))
		:SetAllPoints()
		:Hide()
	.__END

	item.callback = callback

	self.pullout:AddItem(item)
end

--[[
	Untoggles all the items in the pullout except the one that is selected.

	Also counts the string length and returns the longest one.
--]]

function DropDown:UpdatePullout()
	local text = self.text:GetText()
	local items = self.pullout.items
	if not items then return end

	local long = 0

	for i,item in ipairs(items) do
		-- max length
		local len = item.text:GetStringWidth()
		if len > long then long = len end

		-- Set value on all items based on if it is the selected one or not.
		item:SetValue(item.text:GetText() == text)
	end

	return long
end

--[[
	Returns the text string of the currently selected item.
--]]

function DropDown:GetSelected()
	return self.text:GetText()
end

function DropDown:Show()
	self.frame:Show()
end

function DropDown:Hide()
	self.frame:Hide()
end

function private.DropDown_Click(self,button)
	if not self.obj.open then return end

	local d = self.obj
	local len = d:UpdatePullout()

	d.pullout.frame:SetWidth(max(len + 45,d.frame:GetWidth()))
end

function private.PulloutItem_Click(self)
	local dp = self.obj.pullout
	local d = dp.parent.obj

	d:SetText(self.obj.text:GetText())

	glob = self

	if self.obj.callback then self.obj.callback(self.obj) end

	-- Close the dropdown box.
	d.button:Click()
end