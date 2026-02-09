local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Popup = { ["private"] = {} }
local PopupHandler = { ["Popup"] = Popup }
local L = ZGV.L
local CHAIN = ZGV.ChainCall

ZGV.PopupHandler = PopupHandler
ZGV.Poup = ZGV.PopupHandler
PopupHandler.Queue = {}
PopupHandler.IsPopupVisible = false

local table,string,tonumber,tostring,ipairs,pairs,setmetatable = table,string,tonumber,tostring,ipairs,pairs,setmetatable

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local MAXWIDTH=350

local round = math.round

--[[
	Once a popup is created, you can modifiy the apperance as it however you see fit.

	Functions that can be overwritten:
		Popup:OnAccept()
		Popup:OnDecline()
		Popup:OnEscape()
		Popup:OnMinimize()
		Popup:AdjustSize()
		Popup:OnSettings()
		Popup:OnClose() --should not be needed most of the time
		Popup:SetText(text,text2) --Shouldn't be needed

	If none of these are overwritten then it will be just a very generic popup that hides itself when anything is done.

]]

local popupTypes = {
	["sis"] = 0,
	["monk"] = 1,
	["dungeon"] = 2,
	["mount"] = 3,
	["gear"] = 4,
	["panda"] = 5,
	["loot"] = 6,
	["default"] = 7,
}

function PopupHandler:NewPopup(name,ptype,skin)
	assert(name, "All popups must have a name")
	assert(popupTypes[ptype], "All popups must have a type. Use default if it doesn't matter.")

	local popup = PopupHandler:CreatePopup(name,skin)

	for f,fun in pairs(Popup) do
		popup[f]=fun
	end

	popup.type = ptype

	return popup
end

--Functions that can and should be overwritten when a popup is made.

function Popup:OnAccept()
	self:Debug("No custom Accept Function was given")
end

function Popup:OnDecline()
	self:Debug("No custom Decline Function was given")
end

function Popup:OnEscape()
	self:Debug("No custom Escape Function was given")
end

-- text,tooltipText,priority,poptime,removetime,quiet

-- notifcationText is what is displayed next to the icon in the NC --required
-- tooltipText can also be a function or a string or nil to use notifcationText
-- priority handles the order of icons in NC
-- poptime is how long it should toast
-- removetime will remove the icon after a set time. Seconds or nil
-- quiet will make it not toast
function Popup:returnMinimizeSettings()
	self:Debug("No custom Minimize Function was given")

	local notifcationText = "Generic Popup Notification"
	local tooltipText = "Click to show the generic popup again"
	local priority = 100
	local removetime = nil
	local poptime = 0.5
	local quiet = nil
	--local onShow = function...

	return notifcationText,tooltipText,priority,poptime,removetime,quiet,onShow
end

function Popup:OnClose()
	self:Debug("No custom Close Function was given")
end

function Popup:AdjustSize()
	local offsets = 10 + 10 + 5 --Logo and top + text and buttons + buttons and bottom
	local height = offsets + self.text:GetStringHeight() + self.text2:GetStringHeight() + self.logo:GetHeight() + self.acceptbutton:GetHeight()
	local minWidth = self.acceptbutton:GetWidth() + self.declinebutton:GetWidth() + self.settings:GetWidth()
	local width = min(max(minWidth,self.text:GetStringWidth()) + 50 , MAXWIDTH)

	self:Debug("No custom AdjustSize Function was given x:"..width.." y:"..height)

	self:SetSize(width,height)
end

function Popup:OnSettings()
	self:Debug("No custom Settings Function was given")
	ZGV:OpenOptions("notification") --Opens to notifications where popups are handled.
end

function Popup:SetText(text,text2)
	self.text:SetText(text)
	self.text2:SetText(text2)
	self:AdjustSize()
end

function Popup:Show() --Overwrite show... !!!! Real show is saved in SavedShow
	ZGV.PopupHandler:QueuePush(self)
end

--These should not be touched by anything else.

function Popup.private:Accept(popup)
	popup:Debug("Accept pressed")

	popup:OnAccept()

	popup.private:Hide(popup)
end

function Popup.private:Decline(popup)
	popup:Debug("Decline pressed")

	popup:OnDecline()

	popup.private:Hide(popup)
end

function Popup.private:Escape(popup)
	popup:Debug("Escape pressed")

	popup:OnEscape()

	popup.private:Hide(popup)
end

function Popup.private:Hide(popup)
	popup:Debug("Hiding")
	--Popup:OnHide is still hooked so that we don't have to prehook it like we do Show
	popup:Hide() --simple just hide it. Functioned incase we want to do anything else later.
end

--  time = amount of time to fade out popups in.
--  hideDelay = time between automatically hiding popups
function Popup.private:Minimize(popup,time,hideDelay)
	time = time or 0.5

	if time==0 then --time is 0 so don't bother with UIFrameFadeOut. Just alpha 0 and hide it soon. Not instantly because it triggers the next popup to show up then.
		popup:SetAlpha(0.0)
		ZGV:ScheduleTimer(function() popup:Hide() end, hideDelay or 1.0)
	else
		UIFrameFadeOut(popup,time,popup:GetAlpha(),0.0) --Fade out in .5 then hide in 1.0s because this doesn't hide it automatically.
		ZGV:ScheduleTimer(function() popup:Hide() end, 1.0)
	end

	local onClick = function()
		popup.shownFromNC=true
		popup:Show()
	end

	local texture,texcoords = PopupHandler:GetNCTextureInfo(popup.type)

	local text,tooltipText,priority,poptime,removetime,quiet,OnOpen = popup:returnMinimizeSettings()
	--function Notification.AddButton(id, text, texture, texcoords, onClick, tooltip,  priority, poptime, removetime, quiet,onShow )

	ZGV.NotificationCenter.AddButton(
		popup:GetName(),
		text,
		texture,
		texcoords,
		onClick,
		tooltipText,
		priority or 10,
		poptime,
		removetime,
		quiet,
		OnOpen,
		popup.type)

	popup:Debug("Popup Minimized. Getting sent to NC")
end

function Popup.private:Close(popup)
	popup:Debug("Popup Closed")

	StaticPopup_DisplayedFrames[6]=nil
	popup.hideOnEscape = nil

	ZGV.PopupHandler.IsPopupVisible = false --Update this here because  Popup:Hide gets covered by
	ZGV.PopupHandler.CurrentPopup = nil
	ZGV:ScheduleTimer(function() ZGV.PopupHandler:QueuePop() end,.5) --pop the next popup in the queue.
end

function Popup.private:Settings(popup)
	popup:Debug("Default settings pressed. Going to Notifications")

	popup:OnSettings()
end

--Creating the popup and handling of the queue and some utility functions for popups.

function PopupHandler:CreatePopup(name,skin)
	ZGV.PopupHandler:Debug("Creating a Popup")

	local function SkinData(property)
		if skin then
			local r=ZGV.Skins.default.styles[skin][property] or ZGV.Skins.default.styles[skin].skin.defaultstyle[property]
			if r then
				if type(r)=="function" then -- if it's a function, call it.
					return r(self)
				else -- a property then
					return r
				end
			else
				--error("Unknown property requested: "..propertyname)
			end
		else
			return ZGV.CurrentSkinStyle:SkinData(property)
		end
	end

	local popup = CHAIN(CreateFrame("Frame",name,UIParent)) --This is the object we will be returning
		:SetBackdrop(SkinData("Backdrop"))
		:SetBackdropColor(unpack(SkinData("BackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("BackdropBorderColor")))
		:SetSize(375,150) -- The height can change later.
		:SetAlpha(ZGV.db.profile.opacitymain) --This only gets set once per popup. --TODO it should be able to change dynamically.
		:SetPoint("TOP",0,-50)
		:SetClampedToScreen(true) :EnableMouse(true) :RegisterForDrag("LeftButton") :SetMovable(true)
		:SetFrameStrata("HIGH")
		:Hide()

		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:SetScript("OnShow", function(self)
			self:AdjustSize()
			StaticPopup_DisplayedFrames[6]=self
			self.hideOnEscape=true

			ZGV.PopupHandler.IsPopupVisible = true
			ZGV.PopupHandler.CurrentPopup = self
		end)-- tricking the game to think a static popup is displayed so that escape works correctly.
		:SetScript("OnHide", function(self)
			for i=1,#ZGV.PopupHandler.Queue do
				if ZGV.PopupHandler.Queue[i] == self then tremove(ZGV.PopupHandler.Queue,i) end
			end
			self.private:Close(self)
		end)

	.__END

	popup.logo = CHAIN(popup:CreateTexture()) :SetPoint("TOP",0,-10) :SetSize(135,31) :SetTexture(SkinData("TitleLogo")) .__END

	--Text can be at the longest 350 before wrapping, if it is shorter then width gets adjusted later

	popup.text=CHAIN(popup:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",popup.logo,"BOTTOM",0,0)
		:SetWidth(MAXWIDTH)
		:SetFont(FONT,ZGV.db.profile.fontsecsize) --text is set later --TODO make font size change dynamically
		:SetText("This is a Zygor Popup with no text...")
	.__END

	popup.text2=CHAIN(popup:CreateFontString(nil,"ARTWORK")) --Not needed in most popups, but is used in SIS
		:SetPoint("TOP",popup.text,"BOTTOM")
		:SetWidth(MAXWIDTH)
		:SetFont(FONTBOLD,ZGV.db.profile.fontsize+2) --text is set later
	.__END

	popup.declinebutton = CHAIN(CreateFrame("Button", nil, popup)) --TODO: make these buttons change for Midnight.
		:SetPoint("BOTTOMLEFT",popup,"BOTTOM",5,5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0.3,0.3,0.3)
		:SetSize(80,20)
		:SetText(L['static_decline'])
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() popup.private:Decline(popup) end)
	 .__END
	popup.declinebutton:GetFontString():SetFont(FONTBOLD,ZGV.db.profile.fontsize)

	popup.acceptbutton = CHAIN(CreateFrame("Button", nil, popup))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOM",-5,5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3)
		:SetSize(80,20)
		:SetText(L['static_accept'])
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() popup.private:Accept(popup) end)
	.__END
	popup.acceptbutton:GetFontString():SetFont(FONTBOLD,ZGV.db.profile.fontsize)

	popup.settings = CHAIN(CreateFrame("Button",nil,popup))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOMRIGHT",-10,5) :SetSize(15,15)
		:SetScript("OnClick",function() popup.private:Settings(popup) end) --Meaning to pass nothing into OpenOptions, want to see notifications tab.
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(L['static_settings_tip']) :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	ZGV.AssignButtonTexture(popup.settings,(SkinData("TitleButtons")),5,16)

	popup.minimize = CHAIN(CreateFrame("Button",nil,popup))
			:SetPoint("TOPRIGHT",popup,"TOPRIGHT",-5,-5) :SetSize(15,15)
			:SetScript("OnClick",function() popup.private:Minimize(popup) end)
			:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(L['static_minimize_tip']) :Show() end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	ZGV.AssignButtonTexture(popup.minimize,(SkinData("TitleButtons")),6,16)

	hooksecurefunc("StaticPopup_EscapePressed",function() if popup.hideOnEscape then popup.private:Escape(popup) end end)

	popup.SavedShow = popup.Show --Save show... Good idea....
	popup.noMinimize = 1		-- TODO notification Center not in yet.

	return popup
end

function PopupHandler:TestForPositionAdjustment(popup)
	local nc = ZGV.NotificationCenter

	if not nc then return end

	if not nc.frame:IsVisible() or --disabled or not shown
	nc.config.anchor~='top' then return end --NC is not on top.

	if popup:GetTop() > nc.frame:GetBottom() and
	 ( popup:GetRight() > nc.frame:GetLeft() or
	   popup:GetLeft() < popup:GetRight() ) then

		local pos, _, pos2, x , y = popup:GetPoint(1)
		local diff = popup:GetTop() - nc.frame:GetBottom() + 10 -- difference and 10 extra

		popup:Debug("Shifting down "..diff.." units")

		popup:ClearAllPoints()
		popup:SetPoint(pos,UIParent,pos,x,y - diff)
	end
end

--[[
	Skips using the Queue... DANGER

	Used by Gear System because it manages it's own queue.
--]]

function PopupHandler:ShowPopup(popup)
	if not popup then return end

	popup:Debug("Showing this popup now.")

	-- Don't show minimize button if we not suppose to or no NC
	popup.minimize:SetShown( not popup.noMinimize and ZGV.db.profile.n_nc_enabled )

	self:TestForPositionAdjustment(popup)

	popup:SavedShow() --Show was overwrote and saved here.
	popup:SetAlpha(ZGV.db.profile.opacitymain) -- alpha may have been changed.
end

function PopupHandler:QueuePop() --popups are shown here.
	if not self.Queue or #self.Queue < 1 or self.IsPopupVisible then return end
	local popup = tremove(self.Queue,1)

	popup:Debug("Showing this popup now.")

	if not ZGV.NotificationCenter then
		popup.minimize:SetShown(nil)
	else
		popup.minimize:SetShown( not popup.noMinimize and ZGV.db.profile.n_nc_enabled ) --Don't show minimize button if we not suppose to or no NC
	end

	PopupHandler:TestForPositionAdjustment(popup)

	popup:SavedShow() --Show was overwrote and saved here.
	popup:SetAlpha(ZGV.db.profile.opacitymain) -- alpha may have been changed.

	if ZGV.NotificationCenter and not popup.shownFromNC and
	  ( ZGV.NotificationCenter.ButtonIsShown(popup:GetName()) or --popup is already on the NC bar, so just update it with a toast
	 (ZGV.db.profile.n_nc_no_popups and popup.minimize:IsShown()) ) then --We don't want to see any popups, just send everything to the NC center. Unless you are not allowed.
		popup:Debug("Getting automatically sent to Notification Center")
		popup.private:Minimize(popup,0,3) -- Send to NC with instantly fading it. But wait 3 seconds to show/minimize the next popup.
	elseif ZGV.db.profile.n_popup_hideall and not ZGV.Frame:IsVisible() then
		-- Will suppress all popups if suppose to. BUT if they are still allowing us to send them to the NC then do that first.
		popup:Debug("Suppressed. ZGVF Hidden")
		popup.private:Hide(popup)
	end

	popup.shownFromNC = nil
end

function PopupHandler:QueuePush(popup)
	popup:Debug("pushed to be shown later")
	tinsert(self.Queue,popup)
	if not self.IsPopupVisible then self:QueuePop() end
end


function PopupHandler:GetNCTextureInfo(popupType)
	if not popupType then self:Debug("No Popup type given. going to use default") popupType = "default" end

	local texture,texcoords

	--if popupType == "default" then
	--	texture = ZGV.DIR.."\\Skins\\Default\\Stealth\\zglogo_circ.tga"
	--	texcoords = {0,1,0,.25}
	--else

	texture = ZGV.DIR.."\\Skins\\icons-notificationcenter"

	local typeNum = popupTypes[popupType]
	if not typeNum then assert("No popup type for "..popupType) end

	texcoords = {.125*(typeNum),.125*(typeNum+1),0,1}
	--end

	return texture,texcoords
end

function Popup:Debug(...)
	local str = ...
	PopupHandler:Debug(self:GetName(),str)
end

function PopupHandler:Debug(...)
	local str = ...
	ZGV:Debug("&popup "..str..": "..(select(2,...) or "") ) --little ugly..
end