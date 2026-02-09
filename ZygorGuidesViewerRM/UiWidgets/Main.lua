local ZGV = ZygorGuidesViewer
if not ZGV then return end

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

function UI.SkinData(property)
	local skin = "stealth"

	local r=ZGV.Skins.default.styles[skin][property] or ZGV.Skins.default.styles[skin].skin.defaultstyle[property]
	if r then
		if type(r)=="function" then -- if it's a function, call it.
			return r(self)
		else -- a property then
			return r
		end
	else
		error("Unknown property requested: "..property)
	end

	--return ZGV.CurrentSkinStyle:SkinData(property)
end

-- Takes a previous time and returns a string of how long it has been since that time.
-- TODO this probably needs a better home.

function UI.GetTimeStamp(lasttime)
	if not lasttime then lasttime = time() end
	if type(lasttime)~="number" then print("GetTimeStamp: needs a number", type(lasttime)) return end


	local time = floor(time() - lasttime)
	local s = ""

	if time >= 3600 then
		time = floor(time / 3600)
		if time == 1 then s = "%d hour ago" else s = "%d hours ago" end
	elseif time >= 60 then
		time = floor(time / 60)
		if time == 1 then s = "%d min ago" else s = "%d mins ago" end
	else
		s = "less than a min ago"
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