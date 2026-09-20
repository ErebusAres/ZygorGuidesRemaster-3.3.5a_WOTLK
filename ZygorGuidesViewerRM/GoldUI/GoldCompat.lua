-- GoldCompat.lua: Compatibility shims for retail functions used by Gold Guide
-- Provides missing ZGV methods that the gold system expects from the retail addon.

local ZGV = ZGV
if not ZGV then return end

-- GetItemInfo wrapper - retail ZGV wraps the WoW API
if not ZGV.GetItemInfo then
	function ZGV:GetItemInfo(itemID)
		return GetItemInfo(itemID)
	end
end

-- Money formatting
if not ZGV.GetMoneyString then
	function ZGV.GetMoneyString(copper, colorize)
		if not copper or copper == 0 then return "0" end
		local gold = floor(copper / 10000)
		local silver = floor((copper % 10000) / 100)
		local cop = copper % 100
		local s = ""
		if gold > 0 then
			s = s .. (colorize and "|cffffd700" or "") .. gold .. (colorize and "|r" or "") .. "g "
		end
		if silver > 0 or gold > 0 then
			s = s .. (colorize and "|cffc7c7cf" or "") .. silver .. (colorize and "|r" or "") .. "s "
		end
		s = s .. (colorize and "|cffeda55f" or "") .. cop .. (colorize and "|r" or "") .. "c"
		return s
	end
end

-- HTML color helper: converts "#rrggbbaa" to r,g,b,a floats
if not ZGV.HTMLColor then
	function ZGV.HTMLColor(hex)
		if not hex then return 1,1,1,1 end
		hex = hex:gsub("^#","")
		local r = tonumber(hex:sub(1,2), 16) or 255
		local g = tonumber(hex:sub(3,4), 16) or 255
		local b = tonumber(hex:sub(5,6), 16) or 255
		local a = #hex >= 8 and (tonumber(hex:sub(7,8), 16) or 255) or 255
		return r/255, g/255, b/255, a/255
	end
end

-- Font references
if not ZGV.Font then ZGV.Font = STANDARD_TEXT_FONT end
if not ZGV.FontBold then ZGV.FontBold = STANDARD_TEXT_FONT end

-- Images directory
if not ZGV.IMAGESDIR then ZGV.IMAGESDIR = ZGV.DIR .. "\\Skins" end

-- F table (localized format strings used by some UI)
if not ZGV.F then ZGV.F = {} end

-- Message system (simple event bus)
if not ZGV._messages then ZGV._messages = {} end

if not ZGV.AddMessageHandler then
	function ZGV:AddMessageHandler(msg, handler)
		if not self._messages[msg] then self._messages[msg] = {} end
		table.insert(self._messages[msg], handler)
	end
end

if not ZGV.SendMessage then
	function ZGV:SendMessage(msg, ...)
		if self._messages and self._messages[msg] then
			for _, handler in ipairs(self._messages[msg]) do
				handler(...)
			end
		end
	end
end

if not ZGV.AddEventHandler then
	function ZGV:AddEventHandler(event, handler)
		-- Use AceEvent if available
		if self.RegisterEvent then
			self:RegisterEvent(event, handler)
		end
	end
end

-- ShowDump: debug dump display
if not ZGV.ShowDump then
	function ZGV:ShowDump(text, title)
		if DEFAULT_CHAT_FRAME then
			DEFAULT_CHAT_FRAME:AddMessage((title or "Dump") .. ": " .. tostring(text):sub(1, 500))
		end
	end
end

-- CreateFrameWithBG: creates a frame with a solid background
if not ZGV.CreateFrameWithBG then
	function ZGV.CreateFrameWithBG(parent, name, strata, level)
		local f = CreateFrame("Frame", name, parent or UIParent)
		if strata then f:SetFrameStrata(strata) end
		if level then f:SetFrameLevel(level) end
		f:SetBackdrop({
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true, tileSize = 16, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		})
		f:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
		f:SetBackdropBorderColor(0.3, 0.3, 0.3, 0.9)
		return f
	end
end

-- IsItemBound: check if item is soulbound
if not ZGV.IsItemBound then
	function ZGV.IsItemBound(bag, slot)
		-- Simple check using tooltip scanning
		return false -- conservative default
	end
end

-- ItemLink: get item link from ID
if not ZGV.ItemLink then
	function ZGV.ItemLink(itemID)
		local _, link = GetItemInfo(itemID)
		return link
	end
end

-- OrderedPairs: iterate table in sorted key order
if not ZGV.OrderedPairs then
	function ZGV.OrderedPairs(t)
		local keys = {}
		for k in pairs(t) do table.insert(keys, k) end
		table.sort(keys, function(a,b)
			if type(a) == type(b) then return a < b end
			return tostring(a) < tostring(b)
		end)
		local i = 0
		return function()
			i = i + 1
			local k = keys[i]
			if k ~= nil then return k, t[k] end
		end
	end
end

-- OrderedPairsCleanFast: same as OrderedPairs for our purposes
if not ZGV.OrderedPairsCleanFast then
	ZGV.OrderedPairsCleanFast = ZGV.OrderedPairs
end

-- ArrayToStringColor: format array with colors
if not ZGV.ArrayToStringColor then
	function ZGV.ArrayToStringColor(arr, color)
		if not arr then return "" end
		local s = ""
		for i, v in ipairs(arr) do
			if #s > 0 then s = s .. ", " end
			s = s .. tostring(v)
		end
		if color then s = color .. s .. "|r" end
		return s
	end
end

-- GetPlayerPreciseLevel: return player level
if not ZGV.GetPlayerPreciseLevel then
	function ZGV:GetPlayerPreciseLevel()
		return UnitLevel("player") or 1
	end
end

-- RefreshOptions: refresh the options UI (noop if not available)
if not ZGV.RefreshOptions then
	function ZGV:RefreshOptions() end
end

-- OpenOptions: open addon options
if not ZGV.OpenOptions then
	function ZGV:OpenOptions()
		if InterfaceOptionsFrame and InterfaceOptionsFrame.Show then
			InterfaceOptionsFrame:Show()
		end
	end
end

-- Professions stub if not loaded yet
if not ZGV.Professions then
	ZGV.Professions = {}
end

-- CacheSkills stub
if not ZGV.CacheSkills then
	function ZGV:CacheSkills() end
end

-- Debug wrapper
if not ZGV.Debug then
	function ZGV:Debug(...) end
end

-- NotificationCenter stub
if not ZGV.NotificationCenter then
	ZGV.NotificationCenter = {
		AddNotification = function() end,
	}
end

-- GuideMenu stub (for Gold Guide integration with guide browser)
if not ZGV.GuideMenu then
	ZGV.GuideMenu = {}
end

-- Gold namespace init
if not ZGV.Gold then
	ZGV.Gold = {}
end

if not ZGV.OpenGoldGuide then
	function ZGV:OpenGoldGuide(tabname)
		if self.db and self.db.profile and not self.db.profile.load_gold then
			self.db.profile.load_gold = true
			print(ZGV_T("|cffff8800Zygor Gold Guide|r: Enabled! Type /reload then open Gold Guide again."))
			return
		end

		local goldguide = self.Goldguide or (self.Gold and self.Gold.Goldguide)
		if not goldguide then
			print(ZGV_T("|cffff8800Zygor Gold Guide|r: Not initialized. Try /reload first."))
			return
		end

		if goldguide.Initialise then
			goldguide:Initialise()
		elseif goldguide.ShowWindow then
			goldguide:ShowWindow()
		else
			print(ZGV_T("|cffff8800Zygor Gold Guide|r: Not initialized. Try /reload first."))
			return
		end

		if tabname and goldguide.SetCurrentTab then
			goldguide:SetCurrentTab(tabname)
		end
	end
end

-- Slash command: /zgold to open Gold Guide
SLASH_ZYGORGOLD1 = "/zgold"
SlashCmdList["ZYGORGOLD"] = function(msg)
	ZGV:OpenGoldGuide()
end
