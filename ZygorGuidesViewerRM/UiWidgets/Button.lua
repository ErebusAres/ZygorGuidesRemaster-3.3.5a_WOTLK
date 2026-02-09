local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.UI) then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local Button = {}
ZGV.UI:RegisterWidget("Button",Button)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 80
local DEFAULTHEIGHT = 20
local TEXTBUFFER = 5

--[[
	Class for a nice button. Shortcut for setting font/textcolor of the fontstring in the button.

	Size defaults to 80,20
	No text by default.
	Can automatically create a texture for the button by calling button:SetTexture()

	Sample Use:
		local button = CHAIN(ZGV.Ui:Create("Button",MYFRAME,"nameofButton"))
			:SetPoint("LEFT",25,0)
			:SetSize(100,50)
			:SetFont(FONTBOLD,20)
			:SetTextColor(1)
			:SetText("I am a button!")
			:SetScript("OnClick",func)
		.__END

	Known Issues:
		Only uses stealth skin.
		Does not do anything with sizing
		No tooltips available
--]]

function Button:New(parent,name)
	-- GuideBackdrop has a glow border by default. Hide it unless user wants it.

	local button = CHAIN(CreateFrame("Button", name, parent))
		:SetBackdrop(SkinData("ButtonBackdrop"))
		:SetBackdropColor(unpack(SkinData("ButtonColor")))
		:SetBackdropBorderColor(unpack(SkinData("ButtonBorderColor")))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetText(" ") -- Creates the fontstring for a button. Can't be nil or ""
		:RegisterForClicks("LeftButtonUp")
		-- No Highlight texture because it looks funny with text on the button.
		:SetScript("OnEnter",function(self) self:SetBackdropColor(unpack(SkinData("ButtonHighlightColor"))) end)
		:SetScript("OnLeave",function(self) self:SetBackdropColor(unpack(SkinData("ButtonColor"))) end)
	.__END

	button.savedSetText = button.SetText

	CHAIN(button:GetFontString())
		:SetFont(FONT,12)
		:SetTextColor(1.0,1.0,1.0)

	for f,fun in pairs(self) do
		button[f]=fun
	end

	return button
end

-- This can be used to make the button just big enough to hold the text. Updates the button size on text change.
-- Should be called before :SetText()
function Button:SetPerfectSizing(bool)
	self.matchSize = bool
end

-- A bunch of convience functions

function Button:SetFont(font,size)
	self:GetFontString():SetFont(font or FONT,size or 12)
	if self.matchSize then self:SetSize(self:GetStringWidth() + TEXTBUFFER,self:GetStringHeight() + TEXTBUFFER) end
end

function Button:SetTextColor(r,g,b,a)
	self:GetFontString():SetTextColor(r or 1, g or 1, b or 1, a or 1)
end

function Button:GetStringWidth()
	return self:GetFontString():GetStringWidth()
end

function Button:GetStringHeight()
	return self:GetFontString():GetStringHeight()
end

function Button:SetTexture(tex)
	if not tex then return end
	self.tex = CHAIN(self:CreateTexture())
		:SetAllPoints()
		:SetTexture(tex)
	.__END
end

function Button:SetText(text)
	self:savedSetText(text)
	if self.matchSize then self:SetSize(self:GetStringWidth() + TEXTBUFFER,self:GetStringHeight() + TEXTBUFFER) end
end

--[[
	Can be 4 or 8 arguments
--]]

function Button:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
	if not self.tex then return end

	if URx then
		self.tex:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
	else
		self.tex:SetTexCoord(ULx, ULy, LLx, LLy)--, URx, URy, LRx, LRy)
	end
end