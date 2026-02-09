local ZGV = ZygorGuidesViewer
if not ZGV then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local EditBox = {}
ZGV.UI:RegisterWidget("EditBox",EditBox)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 200
local DEFAULTHEIGHT = 20
local BACKBUFFER = 10

--[[
	Class for a zygor themed EditBox.

	EditBoxes could have the backdrop built in but adding a seperate frame for it allows us more control of where the text appears inside the box.

	SetSize, SetHeight, and SetWidth are all overwritten to also adjust the size of the backdrop when used.

	Sample Use:
		local editbox = CHAIN(ui:Create("EditBox",parent,name))
			:SetPoint("Left",parent)
			:SetText("Default text")
			:SetScript("OnEnterPressed",function() dowork() end)
		.__END

	Known Issues:

	TODO:
		- Maybe create a label in here so by default you would have
			Label EditBox

			This would prevent possibly having to remake a label each time.


--]]

function EditBox:New(parent,name)

	local edit = CHAIN(CreateFrame("EditBox", name, parent))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetFont(FONT,12)
		:SetTextColor(0.0,0.0,0.0,1.0)
		:SetAutoFocus(false)
		:SetScript("OnEscapePressed",function(self) self:ClearFocus() end)
	.__END

	-- Could set the backdrop for the EditBox, but this gives more control of the font inside the box. Allows the font to start and end where we want.
	edit.back = CHAIN(CreateFrame("Frame","edit",edit))
		-- Edit boxes are always just white boxes
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetSize(DEFAULTWIDTH + BACKBUFFER,DEFAULTHEIGHT)
		:SetPoint("LEFT",edit,"LEFT",-4,0)
	.__END

	-- EditBox needs to be on top
	local level = edit:GetFrameLevel()
	edit:SetFrameLevel(level + 1 )
	edit.back:SetFrameLevel(level)

	edit.savedSetSize = edit.SetSize

	for f,fun in pairs(self) do
		edit[f]=fun
	end

	return edit
end

function EditBox:SetSize(x,y)
	self:savedSetSize(x,y)
	self.back:SetSize(x+BACKBUFFER,y)
end

function EditBox:SetWidth(x)
	self:SetSize(x,self:GetHeight())
end

function EditBox:SetHeight(y)
	self:SetSize(self:GetWidth(),y)
end