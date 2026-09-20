local ZGV = ZGV

local L = ZGV.L
local CHAIN = ZGV.ChainCall

local UI = {}
local widgets = {}

ZGV.UI = UI
UI.widgets = widgets

--[[
	Returns a widget of type uiType
	@param uiType - String of the type of widget
	@param parent - parent of the widget. Can also be set later
	@param name - Global name of the widget if possible.
--]]

function UI:Create(uiType,parent,name,...)
	if not uiType or type(uiType)~="string" then return end
	uiType = uiType:upper()

	if not self.widgets[uiType] then error(uiType.." is not a valid ui type.") end

	return self.widgets[uiType]:New(parent,name,...)
end

--[[
	Register each widget so they are available in one place for use.
	@param name - Name used when attempting to create the widget.
	@param widget - The actual widget object
--]]

function UI:RegisterWidget(name,widget)
	if not (name and widget) then return end
	name = name:upper()

	self.widgets[name] = widget
end

--[[
	Stealth only for now.
--]]

do
	local SIMPLE_BACKDROP = {bgFile="Interface\\Buttons\\white8x8", edgeFile="Interface\\Buttons\\white8x8", tile=true, tileSize=16, edgeSize=1, insets={left=1,right=1,top=1,bottom=1}}
	local SKINDATA_DEFAULTS = {
		-- Core backdrops
		Backdrop = SIMPLE_BACKDROP,
		BackdropColor = {0.10, 0.10, 0.12, 0.95},
		BackdropBorderColor = {0.20, 0.20, 0.22, 0.90},
		MainBackdrop = SIMPLE_BACKDROP,
		MainBackdropColor = {0.08, 0.08, 0.10, 0.95},
		MainBackdropBorderColor = {0.20, 0.20, 0.22, 0.90},
		SecBackdrop = SIMPLE_BACKDROP,
		SecBackdropColor = {0.12, 0.12, 0.14, 0.95},
		TriBackdropColor = {0.14, 0.14, 0.16, 0.90},
		DarkBorder = {0.15, 0.15, 0.18, 0.90},
		Accent = {0.90, 0.74, 0.40, 1.00},
		-- Gold Guide
		GoldguideBackdrop = SIMPLE_BACKDROP,
		GoldguideBackdropColor = {0.10, 0.10, 0.12, 0.95},
		GoldguideBackdropBorderColor = {0.20, 0.20, 0.22, 0.90},
		GoldguideHeaderFooterColor = {0.14, 0.14, 0.16, 0.95},
		MoneyBackdrop = SIMPLE_BACKDROP,
		MoneyBackdropColor = {0.10, 0.10, 0.12, 0.90},
		MoneyBackdropBorderColor = {0.25, 0.25, 0.28, 0.90},
		-- Search
		SearchBackdrop = SIMPLE_BACKDROP,
		SearchEditBackdropColor = {0.12, 0.12, 0.14, 0.95},
		SearchEditBorderColor = {0.25, 0.25, 0.28, 0.90},
		SearchEditTextColor = {0.90, 0.90, 0.92, 1.00},
		-- Auction tools
		AuctionToolsHeaderFooterBackground = {0.14, 0.14, 0.16, 0.95},
		AuctionToolsMargin = 5,
		-- Progress bar
		ProgressBarBackdrop = SIMPLE_BACKDROP,
		ProgressBarBackdropColor = {0.10, 0.10, 0.12, 0.90},
		ProgressBarBackdropBorderColor = {0.20, 0.20, 0.22, 0.90},
		ProgressBarColor = {0.28, 0.82, 0.36, 0.98},
		ProgressBarHeight = 14,
		ProgressBarWidth = 200,
		ProgressBarTexture = {0.2, 0.2, 0.2, 1},
		ProgressBarTextureFile = "Interface\\Buttons\\white8x8",
		ProgressBarTextureFileOffset = {0, 1, 0, 1},
		ProgressBarDecorUse = false,
		ProgressBarDecorFileOffset = {0, 1, 0, 1},
		ProgressBarCaps = false,
		ProgressBarCapsColor = {1, 1, 1, 1},
		-- Dropdown
		DropDownBackdrop1 = SIMPLE_BACKDROP,
		DropDownBackdrop1Color = {0.12, 0.12, 0.14, 0.95},
		DropDownBackdrop2 = SIMPLE_BACKDROP,
		DropDownBackdrop2Color = {0.14, 0.14, 0.16, 0.95},
		DropDownBackdrop2BorderColor = {0.25, 0.25, 0.28, 0.90},
		DropDownButtonBackdrop2 = SIMPLE_BACKDROP,
		DropDownButtonBackdrop2Color = {0.14, 0.14, 0.16, 0.95},
		DropDownPulloutBackdrop = SIMPLE_BACKDROP,
		DropDownPulloutColor = {0.10, 0.10, 0.12, 0.98},
		DropDownPulloutBorderColor = {0.25, 0.25, 0.28, 0.95},
		DropDownItemBackdrop = SIMPLE_BACKDROP,
		DropDownItemColor = {0.12, 0.12, 0.14, 0.95},
		-- Scrollbar
		ScrollBackColor = {0.08, 0.08, 0.10, 0.80},
		ScrollBarColor = {0.30, 0.30, 0.32, 0.90},
		ScrollBarTexture = "Interface\\Buttons\\white8x8",
		ScrollBarArrowsTexture = ZGV.DIR.."\\Skins\\scroll-arrows",
		ScrollBarDecorHeight = 0,
		-- Buttons
		ButtonBackdrop1 = SIMPLE_BACKDROP,
		ButtonBackdrop2 = SIMPLE_BACKDROP,
		ButtonColor1 = {0.14, 0.14, 0.16, 0.95},
		ButtonColor2 = {0.18, 0.18, 0.20, 0.95},
		ButtonBorderColor1 = {0.25, 0.25, 0.28, 0.90},
		ButtonHighlightColor1 = {0.22, 0.22, 0.26, 0.98},
		ButtonHighlightColor2 = {0.26, 0.26, 0.30, 0.98},
		-- Radio
		RadioOn = "Interface\\Buttons\\UI-CheckBox-Check",
		RadioOff = "Interface\\Buttons\\UI-AutoCastableOverlay",
		-- Title
		TitleButtons = ZGV.DIR and (ZGV.DIR.."\\Skins\\gold-titlebuttons") or "",
		TitleLogo = ZGV.DIR and (ZGV.DIR.."\\Skins\\zygorlogo2") or "",
		UseOpacity = false,
	}
	function UI.SkinData(property,...)
		if ZGV.CurrentSkinStyle and ZGV.CurrentSkinStyle.GetProp then
			local val = ZGV.CurrentSkinStyle:GetProp(property,...)
			if val ~= nil then return val end
		end
		return SKINDATA_DEFAULTS[property]
	end
end

-- Takes a previous time and returns a string of how long it has been since that time.
-- TODO this probably needs a better home.

function UI.GetTimeStamp(lasttime)
	if not lasttime then lasttime = time() end
	if type(lasttime)~="number" then print("GetTimeStamp: needs a number", type(lasttime)) return end


	local time = floor(time() - lasttime)
	local s = ""

	if time >= 3600*24 then
		time = floor(time / (3600*24))
		if time == 1 then s = ZGV_T("%d day ago") else s = ZGV_T("%d days ago") end
	elseif time >= 3600 then
		time = floor(time / 3600)
		if time == 1 then s = ZGV_T("%d hour ago") else s = ZGV_T("%d hours ago") end
	elseif time >= 60 then
		time = floor(time / 60)
		if time == 1 then s = ZGV_T("%d min ago") else s = ZGV_T("%d mins ago") end
	else
		s = ZGV_T("less than a min ago")
		--if time == 1 then s = "%d sec ago" else s = "%d secs ago" end
	end

	--local s = FriendsFrame_GetLastOnline(lasttime)
	--return ("%s ago"):format(s)
	return s:format(time)
end

--[[

local function buildframestart()
	BuildFrame = CHAIN(CreateFrame("Frame","Build",UIParent))
			:SetBackdrop(SkinData("Backdrop"))
			:SetBackdropColor(unpack(SkinData("BackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("BackdropBorderColor")))
			:SetPoint("LEFT",100,0)
			:SetSize(250,100)
			:SetMovable(true) :SetClampedToScreen(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:StartMoving() end)
			:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
			:Show()
	.__END
end

tinsert(ZGV.startups,function(self)
	buildframestart()

	local button = CHAIN(ZGV.UI:Create("Button",BuildFrame,"But"))
		:SetPoint("LEFT",25,0)
		:SetText("Text Set")
		:SetFont(FONTBOLD,12)
		:SetTextColor(1,0,0)

end)

--]]
