local ZGV = ZygorGuidesViewer
if not ZGV then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local HyperEditBox = {}
ZGV.UI:RegisterWidget("HyperEditBox",HyperEditBox)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 200
local DEFAULTHEIGHT = 12

--[[
	Class for a editbox to display a hyperlink in.

	Hyperlinks are only possible in editbox

	:SetMaxWidth sets the max length of the hyperlink, if it exceeds that then it truncates it.
	Otherwise when you set the text for the editbox it will automatically adjust the width to match the hyperlink

	Center justified by default. Might need to make it left justified.

	Tooltip defaults to bottomleft. Can overwrite OnHyperEnter if needed.

	Sample Use:
		local hyperedit = CHAIN(ui:Create("HyperEditBox",parent,name))
			:SetPoint("Left",parent)
			:MaxWidth(maxwidth)
			:SetText(myhyperlink)
		.__END

	Known Issues:

--]]

function HyperEditBox:New(parent,name)
	local edit=CHAIN(CreateFrame("EditBox",name,parent))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetFont(FONT,12)
		:SetJustifyH("CENTER")
		:SetHyperlinksEnabled(true)
		:Disable() -- You can't focus this but can hover it.
		:SetScript("OnHyperlinkEnter", function(self,...) self:OnHyperEnter(...) end)
		:SetScript("OnHyperlinkLeave", function(self,...) self:OnHyperLeave(...) end)
	.__END

	edit.maxWidth = DEFAULTWIDTH

	edit.savedSetText = edit.SetText

	for f,fun in pairs(self) do
		edit[f]=fun
	end

	return edit
end

--[[
	SetText is ovewritten because you need to set the position back to the start each time incase the
	item link exceeds the max width. If you don't the hyperlink won't work.

	A fontstring is created so we can figure out the length of the hyperlink. EditBoxes don't have :GetStringWidth()
	and we can't store the hyperlink in their fontobjects.
--]]

function HyperEditBox:SetText(hyperlink)
	CHAIN(self)
		:savedSetText(hyperlink)
		:SetCursorPosition(0)

	-- Could be optimized to not create a new fontstring for each time a text is set but that shouldn't happen that often.
	local f = CHAIN(self:CreateFontString(nil,"ARTWORK"))
		:SetFont(self:GetFont())
		:SetText(hyperlink)
	.__END

	local textlen = f:GetStringWidth() + 10 -- needs 10 extra to display full hyperlink

	if textlen > 10 and textlen < self.maxWidth then
		self:SetWidth(textlen)
	else
		self:SetWidth(self.maxWidth)
	end

end

function HyperEditBox:SetMaxWidth(width)
	if not (width and type(width)=="number") then return end

	self.maxWidth = width
end

function HyperEditBox:OnHyperEnter(linkData)
	CHAIN(GameTooltip)
		:SetOwner(self,"ANCHOR_BOTTOMLEFT")
		:SetHyperlink(linkData)
		:Show()
end

function HyperEditBox:OnHyperLeave()
	GameTooltip:Hide()
end