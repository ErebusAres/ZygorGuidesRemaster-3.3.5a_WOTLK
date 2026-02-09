--[[
	Slidebar AddOn for World of Warcraft (tm)
	Version: 5.15.5383 (LikeableLyrebird)
	Revision: $Id: SlideMain.lua 312 2011-06-14 07:33:25Z brykrys $
	URL: http://auctioneeraddon.com/dl/

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
]]

--[[
	This Library has been modified(butchered) for the use in conjection with Zygor Guides.

--]]

local LIBRARY_VERSION_MAJOR = "ZygorSlideBar"
local LIBRARY_VERSION_MINOR = 10
local lib = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end

local name,addon = ...

local SlideBarConfig

addon.SlideBar = lib

if not lib.private then
	lib.private = {}
end

local private = lib.private
local frame

--[[  API FUNCTIONS ]]--

-- Return the version of the current bar library
function lib.GetVersion()
	return LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR;
end

-- Capture the bar and stop it from closing (must release!)
function lib.Capture()
	frame.PopTimer = 0.01
	frame.PopDirection = 1
	frame.captured = true
end

-- Release the bar if you have captured it
function lib.Release()
	if not frame.captured then return end
	frame.PopTimer = 0.75
	frame.PopDirection = -1
	frame.captured = nil
end

-- Capture the bar and stop it from closing before object
function lib.WaitFor(object)
	frame.PopTimer = 0.01
	frame.PopDirection = 1
	frame.captured = object
end

-- Add a button to the bar, where:
--   id = the id for this button (you will use this to reference the button).
--   texture = the path to your button's texture.
--   priority = determines your button's position in the list (lower numbers = earlier).
--   globalname = if specified, sets your button's "frame name".
--   quiet = stops nsidebar from popping open to let the user know there's a new button.
--   time = time to have the slide bar slide out. Defaults to 1.5
--   texcoords = extra information to cut a texture if there are multiple textures in a single file.
function lib.AddButton(id, texture, priority, globalname, quiet, time, dataobj, texcoords)
	assert(type(id)=="string", "ButtonId must be a string")

	local button

	if not frame.buttons[id] then
		button = CreateFrame("Button", globalname, frame)
		button.frame = frame
		button.dataobj = dataobj
		button.texcoords = texcoords
		button:SetPoint("TOPLEFT", frame, "TOPLEFT", 0,0)
		button:SetWidth(30)
		button:SetHeight(30)
		button:RegisterForClicks("LeftButtonUp","RightButtonUp")
		button:SetScript("OnMouseDown", function (self, ...) private.MouseDown(self.frame, self, ...) end)
		button:SetScript("OnMouseUp", function (self, ...) private.MouseUp(self.frame, self, ...) end)
		button:SetScript("OnEnter", function (self, ...) private.PopOut(self.frame, self, ...) 
			if dataobj and dataobj.OnEnter then 
				dataobj.OnEnter(self) 
				--GameTooltip:Hide() 
			end 
		end)
		button:SetScript("OnLeave", function (self, ...) private.PopBack(self.frame, self, ...) 
			if dataobj and dataobj.OnLeave then 
				dataobj.OnLeave(self) 
			end 
		end)
		button.icon = button:CreateTexture("", "BACKGROUND")
		button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
		button.icon:SetPoint("TOPLEFT", button, "TOPLEFT", 0,0)
		button.icon:SetWidth(30)
		button.icon:SetHeight(30)
		button.id = id
		frame.buttons[id] = button
	else
		button = frame.buttons[id]
	end
	if texture then
		button.icon:SetTexture(texture)
		if texcoords then
			button.icon:SetTexCoord(unpack(texcoords))
		end
	end
	--LDB textures
	if dataobj then
		dataobj.button = button
		if dataobj.OnClick then
			button:SetScript("OnClick", dataobj.OnClick)
		end
		if dataobj.icon then
			button.icon:SetTexture(dataobj.icon)
			if texcoords then
				button.icon:SetTexCoord(unpack(texcoords))
			end
			--check the desaturated method.  true if icon starts in a desaturated state
			if dataobj.iconDesaturated then
				button.icon:SetDesaturated(true)
			end
		end
	end
	if priority or not button.priority then
		button.priority = priority or 200
	end
	button.removed = nil
	button:Show()

	if quiet then
		lib.ApplyLayout()
	else
		-- Show people that the button has popped in
		lib.FlashOpen(time or 1.5)
	end
	return button
end

-- Returns an iterator over the button list (id, button)
function lib.IterateButtons()
	return pairs(frame.buttons)
end

-- Gets the button with the associated id (if it exists)
function lib.GetButton(id)
	return frame.buttons[id]
end

-- Removes the button with the associated id from the bar
function lib.RemoveButton(id)
	local button = frame.buttons[id]
	if not button then return end

	button:Hide()
	frame.buttons[id].removed = true
	lib.ApplyLayout()
end

-- Causes the button to be displayed (persists across sessions)
function lib.ShowButton(id)
	local button = frame.buttons[id]
	assert(button, "ButtonId "..id.." does not exist")
	SlideBarConfig[id..".hide"] = nil
	lib.ApplyLayout()
end

-- Causes the button to be hidden (persists across sessions)
function lib.HideButton(id)
	local button = frame.buttons[id]
	assert(button, "ButtonId "..id.." does not exist")
	SlideBarConfig[id..".hide"] = 1
	lib.ApplyLayout()
end

-- Causes the bar to flash open for a given number of seconds
function lib.FlashOpen(delay)
	private:PerformOpen()
	-- Schedule a close in 1.5 seconds
	frame.PopTimer = delay or 1.5
	frame.PopDirection = -1
end

-- Updates the bar's buttons and position, where
--   useLayout = if set, uses the cached layout, otherwise regenerates it;
--               if you hide, show, add or remove buttons, you should regenerate.
function lib.ApplyLayout(useLayout)
	local vis = SlideBarConfig.visibility or "0"
	local wide = SlideBarConfig.maxWidth or 12
	local side = SlideBarConfig.anchor or "top"
	local position = SlideBarConfig.position or UIParent:GetWidth()/2
	local active = SlideBarConfig.enabled or (not ZGV.db.profile.sb_enabled and "0") or "1"

	for k,v in pairs(SlideBarConfig) do
		if not private.lastConfig[k] or private.lastConfig[k] ~= v then
			useLayout = false
		end
		private.lastConfig[k] = v
	end

	position = tonumber(position) or 180
	wide = tonumber(wide)
	side = side:lower()

	if not active or active == "0" or active == 0 then
		active = false
	else
		active = true
	end

	if not active then
		frame:Hide()
		return
	end

	if not lib.private.layout then
		lib.private.layout = {}
		useLayout = false
	end
	local layout = lib.private.layout

	if not useLayout then
		for i = 1, #layout do table.remove(layout) end
		for id, button in pairs(frame.buttons) do
			if not button.removed
			and not SlideBarConfig[id..".hide"] then
				table.insert(layout, button)
			elseif button:IsShown() then
				button:Hide()
			end
		end

		if (#layout == 0) then
			frame:Hide()
			return
		end

		table.sort(layout, private.buttonSort)
	end

	if (#layout == 0) then
		frame:Hide()
		return
	end

	local width = wide
	if (#layout < wide) then width = #layout end
	local height = math.floor((#layout - 1) / wide) + 1

	local distance = 9
	if (frame.isOpen) then
		distance = width * 32 + 10
		if (frame:GetAlpha() < 1) then
			UIFrameFadeIn(frame, 0.25, frame:GetAlpha(), 1)
		end
	elseif (vis == "1") then
		if (frame:GetAlpha() > 0.2) then
			UIFrameFadeOut(frame, 1.5, frame:GetAlpha(), 0.2)
		end
	end

	frame:ClearAllPoints()
	if (side == "top") then
		frame:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", position, -1*distance)
	elseif (side == "bottom") then
		frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", position, distance)
	elseif (side == "left") then
		frame:SetPoint("TOPRIGHT", UIParent, "TOPLEFT", distance, -1*position)
	elseif (side == "right") then
		frame:SetPoint("TOPLEFT", UIParent, "TOPRIGHT", -1*distance, -1*position)
	end

	if (useLayout) then return end

	frame.Tab:ClearAllPoints()
	if (side == "top" or side == "bottom") then
		frame:SetWidth(height * 32 + 10)
		frame:SetHeight(width * 32 + 18)
		if (side == "top") then
			frame.Tab:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 5, 5)
			frame.Tab:SetPoint("RIGHT", frame, "RIGHT", -5, 0)
		else
			frame.Tab:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -5)
			frame.Tab:SetPoint("RIGHT", frame, "RIGHT", -5, 0)
		end
		frame.Tab:SetHeight(3)
	else
		frame:SetWidth(width * 32 + 18)
		frame:SetHeight(height * 32 + 10)
		if (side == "right") then
			frame.Tab:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -5)
			frame.Tab:SetPoint("BOTTOM", frame, "BOTTOM", 0, 5)
		else
			frame.Tab:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -5, -5)
			frame.Tab:SetPoint("BOTTOM", frame, "BOTTOM", 0, 5)
		end
		frame.Tab:SetWidth(3)
	end
	frame:Show()

	local button
	for pos = 1, #layout do
		button = layout[pos]
		pos = pos - 1
		local row = math.floor(pos / wide)
		local col = pos % wide

		if (row == 0) then width = col end

		button:ClearAllPoints()
		if (side == "right") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", col*32+10, 0-(row*32+5))
		elseif (side == "left") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", col*32+10, 0-(row*32+5))
		elseif (side == "bottom") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", row*32+5, 0-(col*32+10))
		elseif (side == "top") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", row*32+5, 0-(col*32+10))
		end

		if not button:IsShown() then
			button:Show()
		end
	end
end

--[[  END OF API FUNCTIONS ]]--

-- Private functions and variables follow, you shouldn't need to fiddle with these.

-- Setup our main frame (or reuse the old one)

frame = CreateFrame("Frame", "", UIParent)
frame:SetScript("OnEvent", function(self, event, arg, ...)
	if event == "PLAYER_LOGIN" then
		private.startCounter = 10
		frame:UnregisterEvent("PLAYER_LOGIN")
	elseif event=="ADDON_LOADED" and lib and not lib.started and ZGV  and ZGV.db then
		lib:DoStartup()
	end
end)

if lib then
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:RegisterEvent("ADDON_LOADED")

	lib.frame = frame
end

local function SkinData(property)
	if ZGV.CurrentSkinStyle.id=="midnight" and property=="Backdrop" then
		return {
				bgFile = "Interface/Tooltips/UI-Tooltip-Background",
				edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
				tile = true, tileSize = 32, edgeSize = 16,
				insets = { left = 4, right = 4, top = 4, bottom = 4 }
			}
	else
		return ZGV.CurrentSkinStyle:SkinData(property)
	end
end

function lib:UpdateSkin()
	lib.frame:SetBackdrop(SkinData("Backdrop"))
	lib.frame:SetBackdropColor(unpack(SkinData("BackdropColor")))
	lib.frame:SetBackdropBorderColor(unpack(SkinData("BackdropBorderColor")))
end

function lib:DoStartup()
	if ZGV.NotificationCenter then ZGV.SlideBar = nil lib = nil return end

	if lib.started then return end
	lib.started=true

	if not ZGV.db.profile.slidebarconfig then
		SlideBarConfig = {}
	else
		SlideBarConfig = ZGV.db.profile.slidebarconfig
	end

	lib.Config = SlideBarConfig

	local frame = lib.frame

	frame:SetToplevel(true)
	--frame:SetClampedToScreen(true)
	frame:SetFrameStrata("TOOLTIP")
	frame:SetHitRectInsets(-3, -3, -3, -3)
	lib:UpdateSkin()
	frame:EnableMouse(true)
	frame:SetScript("OnEnter", function(...) private.PopOut(...) end)
	frame:SetScript("OnLeave", function(...) private.PopBack(...) end)
	frame:SetScript("OnMouseDown", function(...) private.BeginMove(...) end)
	frame:SetScript("OnMouseUp", function(...) private.EndMove(...) end)
	frame:SetScript("OnUpdate", function(...) private.Popper(...) end)

	frame.Tab = frame:CreateTexture()
	frame.Tab:SetTexture(0.9,0.4,0.1)
	frame.buttons = {}
end

private.lastConfig = {}

-- Functions to start and stop the sidebar drag
function private:BeginMove(...)
	if SlideBarConfig.locked == "1" or ZGV.db.profile.sb_locked then return end
	local button = ...
	if button == "LeftButton" then
		frame:SetClampedToScreen(true)
		private.moving = true
	end
end

function private:EndMove(...)
	if private.moving then
		frame:SetClampedToScreen(false)
		private.moving = nil
	end
end

-- Checks to see if the argument is a button
function private.IsButton(button)
	if not button then return end
	if type(button) ~= "table" then return end
	if button.id and button.icon then return true end
end

-- Functions to control the popping in and out of the bar
function private:PopOut(...)
	local button = ...
	self.PopTimer = 0.15
	self.PopDirection = 1
	if private.IsButton(button) then -- this is a button
		if button.texcoords then
			local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = button.icon:GetTexCoord()
			button.icon:SetTexCoord(ULx*.975, ULy*.975, LLx*.975, LLy*.975, URx*.975, URy*.975, LRx*.975, LRy*.975)
		else
			button.icon:SetTexCoord(0.05, 0.95, 0.05, 0.95)
		end
		if button.OnEnter then button:OnEnter(select(2, ...)) end
	end
end

function private:PopBack(...)
	local button = ...
	self.PopTimer = 0.75
	self.PopDirection = -1
	if private.IsButton(button) then -- this is a button
		if button.texcoords then
			button.icon:SetTexCoord(unpack(button.texcoords))
		else
			button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
		end
		
		if button.OnLeave then button:OnLeave(select(2, ...)) end
	end
end

function private:PerformOpen(useLayout)
	-- Pop Out
	frame.PopDirection = nil
	frame:ClearAllPoints()
	frame.isOpen = true
	lib.ApplyLayout(useLayout)
	for _,button in ipairs(frame.buttons) do
		if button.OnOpen then button:OnOpen() end
	end
end

function private:PerformClose(useLayout)
	-- Pop Back
	frame.PopDirection = nil
	frame:ClearAllPoints()
	frame.isOpen = false
	lib.ApplyLayout(useLayout)
	for _,button in ipairs(frame.buttons) do
		if button.OnOpen then button:OnClose() end
	end
end

function private:Popper(...)
	local duration = ...
	if private.moving then
		local side, pos = private.boxMover()
		SlideBarConfig.anchor = side
		SlideBarConfig.position = pos
		lib.ApplyLayout(true)
		return
	end
	if self.PopDirection then
		self.PopTimer = self.PopTimer - duration
		if self.PopTimer < 0 then
			if self.PopDirection > 0 then
				private:PerformOpen(true)
			else
				if frame.captured
				and type(frame.captured) == "table"
				and frame.captured:IsShown() then
					frame.captured = nil
				end
				if not frame.captured then
					private:PerformClose(true)
				end
			end
		end
	end

	if private.startCounter then
		private.startCounter = private.startCounter - 1
		if private.startCounter == 0 then
			lib.FlashOpen(5)
			private.startCounter = nil
		end
	end
end

-- Functions to make the icon enlarge/shrink when the mouse moves over it
function private:MouseDown(...)
	local button = ...
	if button then
		if button.texcoords then
			local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = button.icon:GetTexCoord()
			button.icon:SetTexCoord(ULx*.985, ULy*.985, LLx*.985, LLy*.985, URx*.985, URy*.985, LRx*.985, LRy*.985)
		else
			button.icon:SetTexCoord(0, 1, 0, 1)
		end
	end
	if self.MouseDown then self:MouseDown(...) end
end

function private:MouseUp(...)
	local button = ...
	if button then
		if button.texcoords then
			local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = unpack(button.texcoords)
			button.icon:SetTexCoord(ULx*.975, ULy*.975, LLx*.975, LLy*.975, URx*.975, URy*.975, LRx*.975, LRy*.975)
		else
			button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
		end
	end
	if self.MouseUp then self:MouseUp(...) end
end

-- Command processor
function private.CommandHandler(msg)
	local vis = SlideBarConfig.visibility or "0"
	local wide = SlideBarConfig.maxWidth or 12
	local side = SlideBarConfig.anchor or "right"
	local position = SlideBarConfig.position or "180"
	local active = SlideBarConfig.enabled or "1"

	if not active or active=="0" or active=="" then
		active = false
	else
		active = true
	end

	local save = false
	if (not msg or msg == "") then msg = "help" end
	local a, b, c = strsplit(" ", msg:lower())
	if (a == "help") then
		DEFAULT_CHAT_FRAME:AddMessage("/nsb top | left | bottom | right  |cff1020ff Set the anchor for the sidebar |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb config  |cff1020ff Display the GUI to show or hide buttons|r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb <n>  |cff1020ff Set the position for the sidebar |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb fadeout | nofade  |cff1020ff Set whether the sidebar fades or not |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb size <n>  |cff1020ff Set the number of icons before the bar wraps |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb lock | unlock  |cff1020ff enab |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb reset  |cff1020ff Reset the bar to factory defaults |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb off | on | toggle  |cff1020ff Disable/Enable/Toggle bar's visibility |r")
		return
	end

	if a == "lock" then
		ZGV.db.profile.sb_locked = true
		save = true
	elseif a == "unlock" then
		ZGV.db.profile.sb_locked = false
		save = true
	end

	if a == "reset" then
		wipe(SlideBarConfig)
		save = true
	end

	if (a == "top")
	or (a == "left")
	or (a == "bottom")
	or (a == "right") then
		SlideBarConfig.anchor = a
		save = true
		if (tonumber(b)) then
			a, b, c = b, nil, nil
		end
	end
	if (tonumber(a)) then
		SlideBarConfig.position = math.min(math.abs(tonumber(a)), 1200)
		save = true
	end
	if (a == "fadeout" or a == "fade") then
		SlideBarConfig.visibility = "1"
		save = true
	elseif (a == "nofade") then
		SlideBarConfig.visibility = "0"
		save = true
	end
	if (a == "size") then
		if (tonumber(b)) then
			wide = math.floor(tonumber(b))
			if (wide < 1) then wide = 1 end
			SlideBarConfig.maxWidth = wide
			save = true
		end
	end

	if (a == "on") then
		ZGV.db.profile.sb_enabled = true
		save = true
	elseif (a == "off") then
		ZGV.db.profile.sb_enabled = false
		save = true
	elseif (a == "toggle") then
		if active then
			ZGV.db.profile.sb_enabled = false
		else
			ZGV.db.profile.sb_enabled = true
		end
		save = true
	end
	if (a == "config") then
		InterfaceOptionsFrame_OpenToCategory(frame.config)
	end
	if (save) then
		lib.ApplyLayout()
	end
end

-- Function to sort the buttons by priority during the layout phase
function private.buttonSort(a, b)
	if (a.priority ~= b.priority) then
		return a.priority < b.priority
	end
	return a.id < b.id
end

-- Function to work out where along the edge of the screen to position the bar
local SWITCH_TEXELS = 100 -- number of texels to do edge switches at
function private.boxMover()
	local curX, curY = GetCursorPosition()
	local uiScale = UIParent:GetEffectiveScale()
	local uiWidth, uiHeight = UIParent:GetWidth(), UIParent:GetHeight()
	curX, curY = curX / uiScale, curY / uiScale

	local anchor = SlideBarConfig.anchor or "right"

	if anchor == "top" and curY < uiHeight - SWITCH_TEXELS
	or anchor == "bottom" and curY > SWITCH_TEXELS then
		if curX < SWITCH_TEXELS then
			anchor = "left"
		elseif curX > uiWidth - SWITCH_TEXELS  then
			anchor = "right"
		end
	elseif anchor == "left" and curX > SWITCH_TEXELS
	or anchor == "right" and curX < uiWidth - SWITCH_TEXELS then
		if curY < SWITCH_TEXELS then
			anchor = "bottom"
		elseif curY > uiHeight - SWITCH_TEXELS  then
			anchor = "top"
		end
	end

	local pos
	if anchor == "top" or anchor == "bottom" then
		pos = curX
	else
		pos = uiHeight - curY
	end

	return anchor, pos - 16
end