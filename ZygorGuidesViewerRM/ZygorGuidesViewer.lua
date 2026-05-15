--if not Cartographer and not Cartographer3 then
--	ChatFrame1:AddMessage("|cffff0000Zygor Guides Viewer requires Cartographer or Cartographer3")
--end

--local Rock = nil  -- keep the partial Rock compatibility for now, but don't actually use it.
--local Cartographer_Notes = nil
--local Cartographer = nil
--local Cartographer3 = nil

local me = LibStub("AceAddon-3.0"):NewAddon("ZygorGuidesViewer", "AceConsole-3.0","AceEvent-3.0","AceTimer-3.0")

--global export
ZygorGuidesViewer = me

ZGV = me
local ZGV = me

me.L = ZygorGuidesViewer_L("Main")
me.LS = ZygorGuidesViewer_L("G_string")

local L = me.L
local LI = me.LI
local LC = me.LC
local LQ = me.LQ
local LS = me.LS

local Gratuity = LibStub("LibGratuity-3.0")

me.registeredguides = {}
me.registeredmapspotsets = {}

do
	local frameIndex = CreateFrame and CreateFrame("Frame")
	if frameIndex and not frameIndex.SetShown then
		frameIndex.SetShown = function(self, shown)
			if shown then self:Show() else self:Hide() end
		end
	end
	local fontStringIndex = UIParent and UIParent.CreateFontString and getmetatable(UIParent:CreateFontString()).__index
	if fontStringIndex and not fontStringIndex.SetShown then
		fontStringIndex.SetShown = function(self, shown)
			if shown then self:Show() else self:Hide() end
		end
	end
	local textureIndex = UIParent and UIParent.CreateTexture and getmetatable(UIParent:CreateTexture()).__index
	if textureIndex and not textureIndex.SetShown then
		textureIndex.SetShown = function(self, shown)
			if shown then self:Show() else self:Hide() end
		end
	end
	local cooldownIndex = CreateFrame and CreateFrame("Cooldown")
	if cooldownIndex and not cooldownIndex.SetDrawSwipe then
		cooldownIndex.SetDrawSwipe = function() end
	end
end

local addonName = ...
local DIR = "Interface\\AddOns\\"..(addonName or "ZygorGuidesViewer")
ZGV.DIR = DIR
local SKINDIR = ""

-- GetItemQualityColor polyfill: 3.3.5a returns (r,g,b) but later versions return (r,g,b,hex)
do
	local origGetItemQualityColor = GetItemQualityColor
	GetItemQualityColor = function(quality)
		local r, g, b = origGetItemQualityColor(quality)
		local hex = format("ff%02x%02x%02x", (r or 1)*255, (g or 1)*255, (b or 1)*255)
		return r, g, b, hex
	end
end

-- API polyfills for 3.3.5a (methods added in later WoW versions)
do
	local texMeta = getmetatable(UIParent:CreateTexture()).__index
	if texMeta and not texMeta.SetColorTexture then
		texMeta.SetColorTexture = function(self, r, g, b, a)
			self:SetTexture(r, g, b, a)
		end
	end
	local frameMeta = getmetatable(UIParent).__index
	if frameMeta and not frameMeta.SetClipsChildren then
		frameMeta.SetClipsChildren = function() end -- noop
	end
end

-- math.round polyfill (not in Lua 5.1)
if not math.round then
	math.round = function(n) return math.floor(n + 0.5) end
end

-- Gold Guide compatibility shims (inline since external files may not load)
ZGV.Gold = {}
function ZGV:GetItemInfo(itemID)
	if itemID == nil or itemID == false then return end

	local itemType = type(itemID)
	if itemType == "string" then
		if itemID == "" then return end
		if itemID:match("^%d+$") then
			itemID = tonumber(itemID)
		end
	elseif itemType ~= "number" then
		return
	end

	if type(itemID) == "number" and itemID <= 0 then return end

	return GetItemInfo(itemID)
end
ZGV.Font = STANDARD_TEXT_FONT
ZGV.FontBold = STANDARD_TEXT_FONT
ZGV.IMAGESDIR = DIR .. "\\Skins"
ZGV.F = {}
ZGV._messages = {}
function ZGV:AddMessageHandler(msg, handler)
	if not self._messages[msg] then self._messages[msg] = {} end
	table.insert(self._messages[msg], handler)
end
function ZGV:SendMessage(msg, ...)
	if self._messages and self._messages[msg] then
		for _, handler in ipairs(self._messages[msg]) do handler(...) end
	end
end
function ZGV:AddEventHandler(event, handler)
	if self.RegisterEvent then self:RegisterEvent(event, handler) end
end
function ZGV.GetMoneyString(copper, colorize)
	if not copper or copper == 0 then return "0" end
	local g = math.floor(copper / 10000)
	local s = math.floor((copper % 10000) / 100)
	local c = copper % 100
	local r = ""
	if g > 0 then r = r .. g .. "g " end
	if s > 0 or g > 0 then r = r .. s .. "s " end
	r = r .. c .. "c"
	return r
end
function ZGV.HTMLColor(hex)
	if not hex then return 1,1,1,1 end
	hex = hex:gsub("^#","")
	local r = tonumber(hex:sub(1,2), 16) or 255
	local g = tonumber(hex:sub(3,4), 16) or 255
	local b = tonumber(hex:sub(5,6), 16) or 255
	local a = #hex >= 8 and (tonumber(hex:sub(7,8), 16) or 255) or 255
	return r/255, g/255, b/255, a/255
end
ZGV.F.HTMLColor = ZGV.HTMLColor
ZGV.F.AssignButtonTexture = function(button, texture, num, total)
	if not button or not texture then return end
	if total and total > 0 and num then
		local l, r = (num-1)/total, num/total
		-- Use CreateTextureWithCoords (3.3.5a compatible - creates texture object directly)
		button:SetNormalTexture(CreateTextureWithCoords(button, texture, l, r, 0, 0.25))
		button:SetPushedTexture(CreateTextureWithCoords(button, texture, l, r, 0.25, 0.5))
		button:SetHighlightTexture(CreateTextureWithCoords(button, texture, l, r, 0.5, 0.75))
	else
		button:SetNormalTexture(texture)
	end
end
function ZGV.CreateFrameWithBG(frameType, name, parent, template)
	local f = CreateFrame(frameType or "Frame", name, parent or UIParent, template)
	f:SetBackdrop({bgFile="Interface\\Buttons\\white8x8", edgeFile="Interface\\Buttons\\white8x8", tile=true, tileSize=16, edgeSize=1, insets={left=1,right=1,top=1,bottom=1}})
	f:SetBackdropColor(0.1,0.1,0.1,0.9)
	f:SetBackdropBorderColor(0.3,0.3,0.3,0.9)
	return f
end
function ZGV:GetPlayerPreciseLevel() return UnitLevel("player") or 1 end
if not ZGV.ShowDump then function ZGV:ShowDump(t,title) print((title or "Dump")..": "..tostring(t):sub(1,500)) end end
if not ZGV.RefreshOptions then function ZGV:RefreshOptions() end end
if not ZGV.Professions then ZGV.Professions = {} end
if not ZGV.Professions.GetSkill then
	ZGV.Professions.GetSkill = function(self, name)
		if ZGV.GetSkill then
			local skill = ZGV:GetSkill(name)
			if skill then return skill end
		end
		return {level = 0, max = 0, active = false, skillID = 0, parentskillID = 0, name = name or ""}
	end
end
if not ZGV.Professions.AllRecipes then ZGV.Professions.AllRecipes = {} end
if not ZGV.Professions.tradeskills then ZGV.Professions.tradeskills = {} end
if not ZGV.CacheSkills then function ZGV:CacheSkills() end end
if not ZGV.NotificationCenter then ZGV.NotificationCenter = {AddNotification=function() end} end
if not ZGV.GuideMenu then
	ZGV.GuideMenu = {
		Show = function(self, section)
			if ZGV.ToggleGuideManagerFrame then
				ZGV:ToggleGuideManagerFrame(section or "home")
			end
		end,
		Hide = function() end,
	}
end
-- ItemScore infrastructure shims for 3.3.5a
-- LE_ITEM_CLASS constants (may not exist in 3.3.5a)
if not LE_ITEM_CLASS_ARMOR then LE_ITEM_CLASS_ARMOR = 4 end
if not LE_ITEM_CLASS_WEAPON then LE_ITEM_CLASS_WEAPON = 2 end

-- GetMaxPlayerLevel (3.3.5a: always 80)
if not GetMaxPlayerLevel then
	GetMaxPlayerLevel = function() return 80 end
end

-- GetDetailedItemLevelInfo shim (3.3.5a: use GetItemInfo)
if not GetDetailedItemLevelInfo then
	GetDetailedItemLevelInfo = function(itemlink)
		local _,_,_,itemLevel = GetItemInfo(itemlink)
		return itemLevel, false, itemLevel
	end
end

-- GetItemUniqueness shim (3.3.5a: not available, return nil)
if not GetItemUniqueness then
	GetItemUniqueness = function(itemid) return nil, nil end
end

-- GetClassInfo shim (3.3.5a: not available as global)
if not GetClassInfo then
	local classInfoCache = {}
	GetClassInfo = function(classID)
		if classInfoCache[classID] then return unpack(classInfoCache[classID]) end
		-- Build from FillLocalizedClassList if available, or hardcode
		local classes = {"WARRIOR","PALADIN","HUNTER","ROGUE","PRIEST","DEATHKNIGHT","SHAMAN","MAGE","WARLOCK","DRUID"}
		local names = {LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] or "Warrior",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["PALADIN"] or "Paladin",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["HUNTER"] or "Hunter",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["ROGUE"] or "Rogue",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["PRIEST"] or "Priest",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] or "Death Knight",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] or "Shaman",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["MAGE"] or "Mage",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] or "Warlock",
			LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE["DRUID"] or "Druid"}
		if classID and classID >= 1 and classID <= 10 then
			classInfoCache[classID] = {names[classID], classes[classID], classID}
			return names[classID], classes[classID], classID
		end
		return nil, nil, nil
	end
end

-- ExplodeString: split string by delimiter
if not ZGV.ExplodeString then
	function ZGV.ExplodeString(delimiter, str)
		local result = {}
		for match in (str .. delimiter):gmatch("(.-)" .. delimiter:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1")) do
			table.insert(result, match)
		end
		return result
	end
end

-- ClassToNumber: map class tag to numeric ID
if not ZGV.ClassToNumber then
	ZGV.ClassToNumber = {
		WARRIOR = 1, PALADIN = 2, HUNTER = 3, ROGUE = 4, PRIEST = 5,
		DEATHKNIGHT = 6, SHAMAN = 7, MAGE = 8, WARLOCK = 9, DRUID = 10,
	}
end

-- NumberToClass: inverse map for fast lookup (must stay in sync with ClassToNumber)
if not ZGV.NumberToClass then
	ZGV.NumberToClass = {
		[1] = "WARRIOR", [2] = "PALADIN", [3] = "HUNTER", [4] = "ROGUE", [5] = "PRIEST",
		[6] = "DEATHKNIGHT", [7] = "SHAMAN", [8] = "MAGE", [9] = "WARLOCK", [10] = "DRUID",
	}
end

-- SpecByNumber: map class tag + spec index to spec name
if not ZGV.SpecByNumber then
	ZGV.SpecByNumber = {
		WARRIOR = {[1]="Arms", [2]="Fury", [3]="Prot"},
		PALADIN = {[1]="Holy", [2]="Protection", [3]="Retribution"},
		HUNTER = {[1]="Beast Mastery", [2]="Marksmanship", [3]="Survival"},
		ROGUE = {[1]="Assassination", [2]="Combat", [3]="Subtlety"},
		PRIEST = {[1]="Discipline", [2]="Holy", [3]="Shadow"},
		DEATHKNIGHT = {[1]="Blood", [2]="Frost", [3]="Unholy"},
		SHAMAN = {[1]="Elemental", [2]="Enhancement", [3]="Restoration"},
		MAGE = {[1]="Arcane", [2]="Fire", [3]="Frost"},
		WARLOCK = {[1]="Affliction", [2]="Demonology", [3]="Destruction"},
		DRUID = {[1]="Balance", [2]="Feral DPS", [3]="Feral TANK", [4]="Restoration"},
	}
end

-- UpdateCentral: simple handler queue processed each frame
if not ZGV.UpdateCentral then
	ZGV.UpdateCentral = {
		handlers = {},
		AddHandler = function(self, handler)
			table.insert(self.handlers, handler)
		end,
	}
	-- Create a frame that runs handlers each frame
	local ucFrame = CreateFrame("Frame")
	ucFrame:SetScript("OnUpdate", function()
		for _, handler in ipairs(ZGV.UpdateCentral.handlers) do
			handler()
		end
	end)
end

-- PopupHandler: simplified popup system for ItemScore
if not ZGV.PopupHandler then
	ZGV.PopupHandler = {
		NewPopup = function(self, name, popupType, style)
			local f = ZGV.CreateFrameWithBG("Frame", name, UIParent)
			f:SetFrameStrata("DIALOG")
			f:SetWidth(300)
			f:SetHeight(200)
			f:SetPoint("CENTER")
			f:EnableMouse(true)
			f:SetMovable(true)
			f:RegisterForDrag("LeftButton")
			f:SetScript("OnDragStart", f.StartMoving)
			f:SetScript("OnDragStop", f.StopMovingOrSizing)
			f:Hide()

			-- Logo (hidden by default)
			f.logo = f:CreateTexture()
			f.logo:SetSize(1,1)
			f.logo:SetPoint("TOP", f, "TOP", 0, -5)
			f.logo:Hide()

			-- Title/text
			f.text = f:CreateFontString(nil, "OVERLAY")
			f.text:SetFont(ZGV.Font, 13)
			f.text:SetWidth(f:GetWidth() - 20)
			f.text:SetPoint("TOP", f.logo, "BOTTOM", 0, -5)
			f.text:SetJustifyH("CENTER")

			-- Text2 for secondary text
			f.text2 = f:CreateFontString(nil, "OVERLAY")
			f.text2:SetFont(ZGV.Font, 11)
			f.text2:SetWidth(f:GetWidth() - 20)
			f.text2:SetJustifyH("CENTER")

			-- Accept button
			f.acceptbutton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
			f.acceptbutton:SetSize(100, 22)
			f.acceptbutton:SetText((L and L["popup_accept"]) or "Accept")
			f.acceptbutton:SetScript("OnClick", function() if f.OnAccept then f:OnAccept() end f:Hide() end)

			-- Decline button
			f.declinebutton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
			f.declinebutton:SetSize(100, 22)
			f.declinebutton:SetText((L and L["popup_decline"]) or "Decline")
			f.declinebutton:SetScript("OnClick", function() if f.OnDecline then f:OnDecline() end f:Hide() end)

			-- Position buttons
			f.acceptbutton:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 10, 10)
			f.declinebutton:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -10, 10)

			-- SetText method
			function f:SetText(t1, t2)
				if self.text then self.text:SetText(t1 or "") end
				if self.text2 then self.text2:SetText(t2 or "") end
			end

			-- Minimize stub
			f.private = {
				Minimize = function() end,
			}

			-- AdjustSize stub
			if not f.AdjustSize then
				f.AdjustSize = function(self)
					-- Auto-resize based on content
				end
			end

			return f
		end,
		GetNCTextureInfo = function(self, name)
			return "Interface\\Icons\\INV_Misc_QuestionMark", {0,1,0,1}
		end,
	}
end

-- NotificationCenter: upgrade stub to support ItemScore
if not ZGV.NotificationCenter.AddEntry then
	ZGV.NotificationCenter.AddEntry = function(self, name, title, text, ...) end
	ZGV.NotificationCenter.RemoveEntry = function(self, name) end
	ZGV.NotificationCenter.RemoveButton = function(self, name) end
	ZGV.NotificationCenter.EntryExists = function(self, name) return false end
	ZGV.NotificationCenter.GetTooltipPosition = function(self) return "ANCHOR_CURSOR", 0, 0 end
end

-- IsPlayerInCombat shim
if not ZGV.IsPlayerInCombat then
	function ZGV:IsPlayerInCombat()
		return UnitAffectingCombat("player")
	end
end

-- C_QuestLog shim for 3.3.5a
if not C_QuestLog then
	C_QuestLog = {}
end
if not C_QuestLog.IsQuestFlaggedCompleted then
	C_QuestLog.IsQuestFlaggedCompleted = function(questID)
		return IsQuestFlaggedCompleted and IsQuestFlaggedCompleted(questID) or false
	end
end
if not C_QuestLog.IsOnQuest then
	C_QuestLog.IsOnQuest = function(questID)
		-- Check quest log for this quest
		for i = 1, GetNumQuestLogEntries() do
			local _, _, _, _, _, _, _, questLogQuestID = GetQuestLogTitle(i)
			if questLogQuestID == questID then return true end
		end
		return false
	end
end

-- Dungeons table is created by Dungeons.lua, Data-WOTLK/Dungeons.lua provides the data

-- Stubs for retail systems not present in RM
do
	-- Helper: create a functional icon object that assigns WoW textures to buttons
	local function MakeIcon(texture, l, r, t, b)
		return {
			texcoord = {l or 0, r or 1, t or 0, b or 1},
			texture = texture,
			AssignToButton = function(self, button)
				if not button then return end
				if self.texture then
					button:SetNormalTexture(self.texture)
					local nt = button:GetNormalTexture()
					if nt and self.texcoord then nt:SetTexCoord(unpack(self.texcoord)) end
				end
			end,
			AssignToTexture = function(self, tex)
				if not tex then return end
				if self.texture then
					tex:SetTexture(self.texture)
					if self.texcoord then tex:SetTexCoord(unpack(self.texcoord)) end
				end
			end,
		}
	end

	-- Retail titlebuttons: Nx4 grid, NO padding
	-- Same texture used by both ButtonSets and F.AssignButtonTexture
	-- Column count = 32 (confirmed by Auctiontools calls: AssignButtonTexture(btn,tex,6,32))
	local TB = DIR.."\\Skins\\gold-titlebuttons"
	local TB_COLS = 64
	local function TBIcon(n)
		local l, r = (n-1)/TB_COLS, n/TB_COLS
		return {
			texture = TB,
			texcoord = {l, r, 0, 0.25},
			AssignToButton = function(self, button)
				if not button then return end
				button:SetNormalTexture(TB)
				button:SetPushedTexture(TB)
				button:SetHighlightTexture(TB)
				local nt = button:GetNormalTexture()
				local pt = button:GetPushedTexture()
				local ht = button:GetHighlightTexture()
				if nt then nt:SetTexCoord(l, r, 0, 0.25) end
				if pt then pt:SetTexCoord(l, r, 0.25, 0.5) end
				if ht then ht:SetTexCoord(l, r, 0.5, 0.75) ht:SetBlendMode("ADD") end
			end,
			AssignToTexture = function(self, tex)
				if not tex then return end
				tex:SetTexture(TB)
				tex:SetTexCoord(l, r, 0, 0.25)
			end,
		}
	end

	local defaultIcon = MakeIcon("Interface\\Icons\\INV_Misc_QuestionMark")

	-- Icon positions confirmed from Auctiontools-View.lua: close=6, settings=5, info=18, goldguide=22
	local titleButtons = {
		QUESTION = TBIcon(1), NOTIFICATIONS = TBIcon(2),
		LOCK_OFF = TBIcon(3), LOCK_ON = TBIcon(4),
		SETTINGS = TBIcon(5), CLOSE = TBIcon(6),
		DOTS = TBIcon(7), FRAME = TBIcon(8),
		STEP_PREV = TBIcon(9), STEP_NEXT = TBIcon(10),
		LOADGUIDE = TBIcon(11), QUESTCLEANUP = TBIcon(12),
		MORETABS = TBIcon(13), STEPREPORT = TBIcon(14),
		BUGREPORT = TBIcon(15), LIST = TBIcon(16),
		BURGER = TBIcon(17), INFO = TBIcon(18),
		DROPDOWN = TBIcon(19), SMALLX = TBIcon(20),
		INLINETRAVEL = TBIcon(21), GOLDGUIDE = TBIcon(22),
		ADDGUIDE = TBIcon(23), SHARE = TBIcon(24),
		MAPMARKER = TBIcon(25), CHANGEGUIDE = TBIcon(26),
		RIGHTRIGHT = TBIcon(27), PLUS = TBIcon(28),
		MINUS = TBIcon(29), RELOAD = TBIcon(30),
		FLASH = TBIcon(31), SEARCH = TBIcon(32),
		MINIMIZE = TBIcon(6), GEAR = TBIcon(5), LOAD = TBIcon(11),
	}

	-- GoldGuideIcons spritesheet: 8 columns x 2 rows
	local GGI = DIR.."\\Skins\\goldguideicons"
	local function GGIcon(col, row)
		return MakeIcon(GGI, (col-1)/8, col/8, (row-1)/2, row/2)
	end
	local goldGuideIcons = {
		GOLD = GGIcon(1,1), FARM = GGIcon(2,1), FARMING = GGIcon(2,1),
		GATHER = GGIcon(3,1), GATHERING = GGIcon(3,1),
		CRAFT = GGIcon(4,1), CRAFTING = GGIcon(4,1),
		AUCTION = GGIcon(5,1), AUCTIONS = GGIcon(5,1),
		QUEST = GGIcon(6,1), BASKET = GGIcon(7,1), SHOVEL = GGIcon(8,1),
	}
	-- Price status icons: goldpricestatusicons.tga is 16 columns x 1 row
	local statusTex = DIR.."\\Skins\\goldpricestatusicons"
	local function PriceIcon(n)
		return MakeIcon(statusTex, (n-1)/16, n/16, 0, 1)
	end
	local priceIcons = setmetatable({
		UP1      = PriceIcon(1),
		UP2      = PriceIcon(2),
		UP3      = PriceIcon(3),
		DOWN1    = PriceIcon(4),
		DOWN2    = PriceIcon(5),
		DOWN3    = PriceIcon(6),
		BULLET   = PriceIcon(7),
		CROSSH   = PriceIcon(8),
		NOPE     = PriceIcon(9),
		QUESTION = PriceIcon(10),
		DELETE   = PriceIcon(11),
		ADD      = PriceIcon(12),
	}, {__index = function() return defaultIcon end})

	if not ZGV.ButtonSets then
		ZGV.ButtonSets = {
			TitleButtons = setmetatable(titleButtons, {__index = function() return defaultIcon end}),
		}
		setmetatable(ZGV.ButtonSets, {__index = function() return setmetatable({}, {__index = function() return defaultIcon end}) end})
	end
	if not ZGV.IconSets then
		ZGV.IconSets = {
			Create = function() end,
			AuctionToolsPriceIcons = priceIcons,
			GoldGuideIcons = setmetatable(goldGuideIcons, {__index = function() return defaultIcon end}),
		}
		setmetatable(ZGV.IconSets, {__index = function() return setmetatable({}, {__index = function() return defaultIcon end}) end})
	end
	if not ZGV.GoldGuideIcons then
		ZGV.GoldGuideIcons = setmetatable(goldGuideIcons, {__index = function() return defaultIcon end})
	end
end
if not ZGV.PetBattle then
	ZGV.PetBattle = {
		GetPetFakeIdByLink = function() return nil end,
		GetPetFallbackId = function(self, id) return id end,
		GetPetBreedBySlot = function() return nil, nil end,
	}
end
if not ZGV.StackSizes then ZGV.StackSizes = {} end
ZGV.GuideMenuTier = ZGV.GuideMenuTier or "WLK"
if not ZGV.ItemLink or type(ZGV.ItemLink) ~= "table" then
	ZGV.ItemLink = {
		StripBlizzExtras = function(link) return link end,
		GetItemID = function(link)
			if not link then return nil end
			return tonumber(link:match("item:(%d+)"))
		end,
	}
end
ZGV.OrderedPairs = function(t)
	local keys = {} for k in pairs(t) do table.insert(keys,k) end
	table.sort(keys, function(a,b) if type(a)==type(b) then return a<b end return tostring(a)<tostring(b) end)
	local i = 0
	return function() i=i+1 local k=keys[i] if k~=nil then return k,t[k] end end
end
ZGV.OrderedPairsCleanFast = ZGV.OrderedPairs

-- Version flags for compatibility with retail code paths
ZGV.IsClassicWOTLK = true
ZGV.IsClassic = false
ZGV.IsClassicTBC = false
ZGV.IsRetail = false

-- API compatibility shims for retail-only functions
if not GetItemInfoInstant then
	GetItemInfoInstant = function(itemID)
		if itemID == nil or itemID == false or itemID == "" then return end
		local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice = GetItemInfo(itemID)
		return name, link, quality, iLevel, reqLevel, class, subclass
	end
end
if not C_Container then
	C_Container = {}
	C_Container.ContainerIDToInventoryID = function(bag)
		return ContainerIDToInventoryID and ContainerIDToInventoryID(bag) or (19 + bag)
	end
	C_Container.GetContainerNumSlots = function(bag)
		return GetContainerNumSlots and GetContainerNumSlots(bag) or 0
	end
	C_Container.GetContainerItemInfo = function(bag, slot)
		if GetContainerItemInfo then
			local texture, count, locked, quality, readable, lootable, link = GetContainerItemInfo(bag, slot)
			return {iconFileID=texture, stackCount=count, isLocked=locked, quality=quality, isReadable=readable, hasLoot=lootable, hyperlink=link}
		end
	end
	C_Container.GetContainerItemLink = function(bag, slot)
		return GetContainerItemLink and GetContainerItemLink(bag, slot)
	end
end
if not C_PetJournal then
	C_PetJournal = {}
	C_PetJournal.GetPetInfoBySpeciesID = function(speciesId)
		return nil, nil -- pets not available in 3.3.5a
	end
end

-- Skin system: registry + helpers
ZGV.SkinRegistry = {}
ZGV.SkinOrder = {}

function ZGV:RegisterSkin(id, data)
	data.id = id
	self.SkinRegistry[id] = data
	local found = false
	for _, v in ipairs(self.SkinOrder) do
		if v == id then
			found = true
			break
		end
	end
	if not found then
		table.insert(self.SkinOrder, id)
	end
end

function ZGV:GetSkin(id)
	return self.SkinRegistry[id]
end

function ZGV:GetCurrentSkin()
	local skinId = self.db and self.db.profile and self.db.profile.skinstyle
	if not skinId then
		local oldSkin = self.db and self.db.profile and self.db.profile.skin
		if oldSkin == "remaster" or not oldSkin then
			skinId = "remaster"
		else
			return nil
		end
	end
	if not self.SkinRegistry[skinId] then
		skinId = "remaster"
	end
	return self.SkinRegistry[skinId]
end

function ZGV:GetCurrentVariant()
	local skin = self:GetCurrentSkin()
	if not skin then return nil end
	local variantId = self.db and self.db.profile and self.db.profile.skinvariant
	if not variantId then
		local rc = self.db and self.db.profile and self.db.profile.remastercolor
		if rc == "goals" then rc = "goldaccent" end
		variantId = rc or skin.defaultVariant or "dark"
	end
	if skin.variants and skin.variants[variantId] then
		return variantId
	end
	return skin.defaultVariant
end

function ZGV:GetCurrentTheme()
	local skin = self:GetCurrentSkin()
	if not skin or not skin.theme then return nil end
	local theme = {}
	for k, v in pairs(skin.theme) do
		theme[k] = v
	end
	local variantId = self:GetCurrentVariant()
	if variantId and skin.variants and skin.variants[variantId] then
		local variant = skin.variants[variantId]
		if variant.themeOverrides then
			for k, v in pairs(variant.themeOverrides) do
				theme[k] = v
			end
		end
	end
	return theme
end

function ZGV:GetCurrentVariantColors()
	local skin = self:GetCurrentSkin()
	if not skin then return {0.9, 0.92, 0.98}, {0.08, 0.09, 0.12} end
	local variantId = self:GetCurrentVariant()
	if variantId and skin.variants and skin.variants[variantId] then
		local v = skin.variants[variantId]
		return v.text or {0.9, 0.92, 0.98}, v.back or {0.08, 0.09, 0.12}
	end
	return {0.9, 0.92, 0.98}, {0.08, 0.09, 0.12}
end

function ZGV:IsRemasterSkin()
	local skin = self:GetCurrentSkin()
	if skin then
		return skin.useRemasterFrames == true
	end
	return self.db and self.db.profile and self.db.profile.skin == "remaster"
end

function ZGV:BuildSkinDropdownValues()
	local values = {}
	for _, skinId in ipairs(self.SkinOrder) do
		local skin = self.SkinRegistry[skinId]
		if skin and skin.variants then
			for varId, varData in pairs(skin.variants) do
				local key = skinId .. "_" .. varId
				local label = varData.label or (skin.name .. " " .. varId)
				values[key] = label
			end
		elseif skin then
			values[skinId] = skin.dropdownLabel or skin.name
		end
	end
	values["legacy_blue"] = "|cff88b3ffBlue|r (legacy)"
	values["legacy_green"] = "|cff88ff88Green|r (legacy)"
	values["legacy_orange"] = "|cffffcc66Orange|r (legacy)"
	values["legacy_violet"] = "|cffff99ffViolet|r (legacy)"
	return values
end

function ZGV:ParseSkinDropdownKey(key)
	if not key then return "remaster", "dark" end
	if key:match("^legacy_") then
		local color = key:gsub("^legacy_", "")
		return "legacy", color
	end
	for _, skinId in ipairs(self.SkinOrder) do
		local prefix = skinId .. "_"
		if key:sub(1, #prefix) == prefix then
			local variantId = key:sub(#prefix + 1)
			return skinId, variantId
		end
	end
	return "remaster", "dark"
end

function ZGV:GetSkinDropdownKey()
	local skin = self:GetCurrentSkin()
	if not skin then
		local oldSkin = self.db and self.db.profile and self.db.profile.skin or "remaster"
		if oldSkin ~= "remaster" then
			return "legacy_" .. oldSkin
		end
		return "remaster_dark"
	end
	local variantId = self:GetCurrentVariant()
	if variantId then
		return skin.id .. "_" .. variantId
	end
	return skin.id
end

function ZGV:ApplySkinFromDropdownKey(key)
	local skinId, variantId = self:ParseSkinDropdownKey(key)
	if skinId == "legacy" then
		self.db.profile.skinstyle = nil
		self.db.profile.skinvariant = nil
		self.db.profile.skin = variantId
		self.db.profile.remastercolor = nil
		local legacyColors = {
			blue = {text = {0.7, 0.8, 1.0}, back = {0.08, 0.11, 0.24}},
			green = {text = {0.5, 1.0, 0.5}, back = {0.09, 0.20, 0.07}},
			orange = {text = {1.0, 0.8, 0.0}, back = {0.23, 0.11, 0.07}},
			violet = {text = {0.95, 0.65, 1.0}, back = {0.17, 0.07, 0.20}},
		}
		self.db.profile.skincolors = legacyColors[variantId] or legacyColors.blue
		return false
	end
	local skin = self.SkinRegistry[skinId]
	if not skin then
		skinId = "remaster"
		variantId = "dark"
		skin = self.SkinRegistry[skinId]
	end
	self.db.profile.skinstyle = skinId
	self.db.profile.skinvariant = variantId
	self.db.profile.skin = "remaster"
	self.db.profile.remastercolor = variantId
	if skin and skin.variants and skin.variants[variantId] then
		local v = skin.variants[variantId]
		self.db.profile.skincolors = {text = v.text, back = v.back}
	end
	return true
end

-- Register built-in skins
do
	local BACKDROP_SIMPLE = {
		bgFile = "Interface\\Buttons\\white8x8",
		edgeFile = "Interface\\Buttons\\white8x8",
		tile = true, tileSize = 16, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	}

	ZGV:RegisterSkin("remaster", {
		name = "Remaster",
		useRemasterFrames = true,
		theme = {
			frameBorder    = { 0.18, 0.18, 0.20, 0.92 },
			frameLight     = { 0.28, 0.28, 0.30, 0.18 },
			insetBg        = { 0.10, 0.10, 0.11, 0.95 },
			insetBorder    = { 0.20, 0.20, 0.22, 0.90 },
			buttonBack     = { 0.13, 0.13, 0.14, 0.95 },
			buttonHover    = { 0.19, 0.19, 0.21, 0.98 },
			buttonBorder   = { 0.27, 0.27, 0.30, 0.95 },
			separator      = { 0.32, 0.32, 0.35, 0.80 },
			textPrimary    = { 0.86, 0.86, 0.88, 1.00 },
			textMeta       = { 0.72, 0.72, 0.75, 0.90 },
		},
		variants = {
			dark = {
				label = "|cffcfd6e8Remaster Dark|r",
				text = { 0.90, 0.92, 0.98 },
				back = { 0.08, 0.09, 0.12 },
			},
			goldaccent = {
				label = "|cffebd199Remaster Gold Accent|r",
				text = { 0.92, 0.80, 0.50 },
				back = { 0.07, 0.08, 0.10 },
				themeOverrides = {
					frameBorder  = { 0.17, 0.15, 0.10, 0.88 },
					frameLight   = { 0.12, 0.10, 0.07, 0.42 },
					insetBg      = { 0.05, 0.05, 0.06, 0.97 },
					insetBorder  = { 0.22, 0.18, 0.10, 0.90 },
					buttonBack   = { 0.09, 0.08, 0.07, 0.96 },
					buttonHover  = { 0.22, 0.17, 0.08, 0.98 },
					buttonBorder = { 0.50, 0.40, 0.18, 0.95 },
					separator    = { 0.90, 0.74, 0.40, 0.62 },
					textPrimary  = { 0.92, 0.80, 0.50, 1.00 },
					textMeta     = { 0.78, 0.70, 0.55, 0.92 },
				},
				rootBackOverride = { 0.04, 0.04, 0.05 },
				headerBgOverride = { 0, 0, 0, 0.58 },
				toolbarBgOverride = { 0, 0, 0, 0.42 },
			},
			blue = {
				label = "|cff88b3ffRemaster Blue|r",
				text = { 0.70, 0.80, 1.00 },
				back = { 0.08, 0.11, 0.24 },
			},
			green = {
				label = "|cff88ff88Remaster Green|r",
				text = { 0.50, 1.00, 0.50 },
				back = { 0.09, 0.20, 0.07 },
			},
			orange = {
				label = "|cffffcc66Remaster Orange|r",
				text = { 1.00, 0.80, 0.00 },
				back = { 0.23, 0.11, 0.07 },
			},
			violet = {
				label = "|cffff99ffRemaster Violet|r",
				text = { 0.95, 0.65, 1.00 },
				back = { 0.17, 0.07, 0.20 },
			},
		},
		defaultVariant = "dark",
		layout = {
			headerHeight = 34, toolbarHeight = 28, footerHeight = 14,
			contentPadding = 10, rootPadding = 6,
			buttonSize = { 22, 20 }, guideButtonSize = { 70, 20 },
		},
		fonts = {
			title = { file = "\\Skins\\segoeuib.ttf", size = 13, fallback = "\\Skins\\segoeui.ttf" },
			meta  = { file = "\\Skins\\segoeui.ttf", size = 11 },
			step  = { file = "\\Skins\\segoeui.ttf", size = 11 },
		},
		goalColors = {
			incomplete  = { r = 0.18, g = 0.20, b = 0.25, a = 0.65 },
			progressing = { r = 0.18, g = 0.28, b = 0.35, a = 0.75 },
			complete    = { r = 0.12, g = 0.24, b = 0.20, a = 0.75 },
			impossible  = { r = 0.18, g = 0.18, b = 0.18, a = 0.60 },
			aux         = { r = 0.15, g = 0.22, b = 0.32, a = 0.60 },
			obsolete    = { r = 0.15, g = 0.22, b = 0.32, a = 0.60 },
			stepAlpha   = 0.2,
		},
		progressBar = {
			bg   = { 1, 1, 1, 0.10 },
			fill = { 0.28, 0.82, 0.36, 0.98 },
		},
		backdrops = {
			root = BACKDROP_SIMPLE, content = BACKDROP_SIMPLE, button = BACKDROP_SIMPLE,
		},
	})

end

ZYGORGUIDESVIEWER_COMMAND = "zygor"

ZYGORGUIDESVIEWERFRAME_TITLE = "ZygorGuidesViewer"

BINDING_HEADER_ZYGORGUIDES = L["name_plain"]
BINDING_NAME_ZYGORGUIDES_OPENGUIDE = L["binding_togglewindow"]
BINDING_NAME_ZYGORGUIDES_PREV = L["binding_prev"]
BINDING_NAME_ZYGORGUIDES_NEXT = L["binding_next"]

-- Gold Guide slash command
SLASH_ZYGORGOLD1 = "/zgold"
SLASH_ZGOLDSTATUS1 = "/zgoldstatus"
SLASH_ZGOLDVALIDATE1 = "/zgoldvalidate"
SLASH_ZGOLDROUTE1 = "/zgoldroute"
SLASH_ZGVLINEDEBUG1 = "/zgvlinedebug"
SlashCmdList["ZGOLDSTATUS"] = function()
	local scanData = ZGV.db and ZGV.db.factionrealm and ZGV.db.factionrealm.gold_scan_data
	local scanTime = ZGV.db and ZGV.db.factionrealm and ZGV.db.factionrealm.gold_scan_time
	local trends = ZGV.Gold and ZGV.Gold.servertrends
	local items = trends and trends.items
	local scanItems = scanData and scanData[1]
	local scanItemCount = 0
	if scanItems then for _ in pairs(scanItems) do scanItemCount = scanItemCount + 1 end end
	local trendItemCount = 0
	if items then for _ in pairs(items) do trendItemCount = trendItemCount + 1 end end
	print("|cffff8800=== Zygor Gold Status ===|r")
	print("  load_gold: " .. tostring(ZGV.db and ZGV.db.profile and ZGV.db.profile.load_gold))
	print("  Scan datasets: " .. (scanData and #scanData or "none"))
	print("  Scan[1] items: " .. scanItemCount)
	print("  Scan time: " .. (scanTime and scanTime[1] and date("%Y-%m-%d %H:%M", scanTime[1]) or "none"))
	print("  Trends date: " .. (trends and trends.date and date("%Y-%m-%d %H:%M", trends.date) or "none"))
	print("  Trend items: " .. trendItemCount)
	print("  Goldguide initialized: " .. tostring(ZGV.Goldguide ~= nil))
	print("  Gold.guides_loaded: " .. tostring(ZGV.Gold and ZGV.Gold.guides_loaded))
	local goldCount = 0
	local goldTitles = {}
	for _, guide in ipairs(ZGV.registeredguides) do
		if guide.type == "GOLD" then
			goldCount = goldCount + 1
			if goldCount <= 5 then table.insert(goldTitles, guide.title_short or guide.title) end
		end
	end
	print("  GOLD-type guides: " .. goldCount)
	if #goldTitles > 0 then print("  First 5: " .. table.concat(goldTitles, ", ")) end
	local chores = ZGV.Goldguide and ZGV.Goldguide.Chores
	if chores then
		print("  Farming chores: " .. #chores.Farming)
		print("  Gathering chores: " .. #chores.Gathering)
		print("  Crafting chores: " .. #chores.Crafting)
		print("  Auction chores: " .. #chores.Auctions)
	else
		print("  Chores: not initialized")
	end
end
local function zgold_joinpairs(tbl)
	local parts = {}
	for k,v in pairs(tbl or {}) do
		table.insert(parts, tostring(k) .. "=" .. tostring(v))
	end
	table.sort(parts)
	return table.concat(parts, ", ")
end

local function zgold_joinitems(items)
	local parts = {}
	for _,item in pairs(items or {}) do
		if item and item[1] then
			table.insert(parts, tostring(item[1]) .. "x" .. tostring(item[2] or 1))
		end
	end
	table.sort(parts)
	return table.concat(parts, ", ")
end

SlashCmdList["ZGOLDVALIDATE"] = function()
	local goldguide = ZGV.Goldguide
	if not (goldguide and goldguide.ValidateAllRoutes) then
		print("|cffff8800Zygor Gold Validate|r: Gold route validator is not available.")
		return
	end
	local summary = goldguide:ValidateAllRoutes()
	print("|cffff8800=== Zygor Gold Route Validation ===|r")
	print(("  Total routes: %d"):format(summary.total or 0))
	print(("  Clean: %d"):format(summary.ok or 0))
	print(("  Flagged: %d"):format(summary.flagged or 0))
	print(("  Failed: %d"):format(summary.failed or 0))
	local shown = 0
	for _,result in ipairs(summary.results or {}) do
		if not result.ok or #(result.warnings or {}) > 0 then
			shown = shown + 1
			local issue = result.issues and result.issues[1]
			local warning = result.warnings and result.warnings[1]
			print(("  %d. %s"):format(shown, tostring(result.title)))
			if issue then print("     issue: " .. issue) end
			if warning then print("     warn: " .. warning) end
			print(("     maps=%d items=%d collects=%d path=%d goto=%d click=%d kill=%d skill=%s"):format(
				result.mapCount or 0,
				result.headerItemCount or 0,
				result.goldcollectCount or 0,
				result.pathCount or 0,
				result.gotoCount or 0,
				result.clickCount or 0,
				result.killCount or 0,
				tostring(result.primarySkill or "-")
			))
			print(("     overlap=%d"):format(result.overlapCount or 0))
			if shown >= 12 then break end
		end
	end
	if shown == 0 then
		print("  No structurally suspicious routes found.")
	end
end

SlashCmdList["ZGOLDROUTE"] = function(msg)
	local query = tostring(msg or ""):gsub("^%s+",""):gsub("%s+$","")
	if query == "" then
		print("|cffff8800Zygor Gold Route|r: Usage: /zgoldroute <partial title>")
		return
	end
	local goldguide = ZGV.Goldguide
	if not (goldguide and goldguide.GetGoldRouteGuides and goldguide.ValidateRouteGuide) then
		print("|cffff8800Zygor Gold Route|r: Route inspection is not available.")
		return
	end
	local routes = goldguide:GetGoldRouteGuides()
	local lowered = string.lower(query)
	local matches = {}
	for _,guide in ipairs(routes or {}) do
		local title = guide.title_short or guide.title or ""
		if string.find(string.lower(title), lowered, 1, true) then
			table.insert(matches, guide)
		end
	end
	if #matches == 0 then
		print("|cffff8800Zygor Gold Route|r: No route matched '" .. query .. "'.")
		return
	end
	table.sort(matches, function(a,b) return tostring(a.title_short or a.title) < tostring(b.title_short or b.title) end)
	if #matches > 1 then
		print(("|cffff8800Zygor Gold Route|r: %d matches, showing first 5."):format(#matches))
		for i = 1, math.min(5,#matches) do
			print(("  %d. %s"):format(i, tostring(matches[i].title_short or matches[i].title)))
		end
	end
	local guide = matches[1]
	local result = goldguide:ValidateRouteGuide(guide)
	local header = guide.headerdata or {}
	local meta = header.meta or {}
	print("|cffff8800=== Zygor Gold Route ===|r")
	print("  Title: " .. tostring(guide.title_short or guide.title))
	print("  Maps: " .. table.concat(header.maps or {}, ", "))
	print("  Skillreq: " .. zgold_joinpairs(meta.skillreq))
	print("  Items: " .. zgold_joinitems(header.items))
	print(("  Structure: path=%d goto=%d click=%d kill=%d collects=%d overlap=%d"):format(
		result.pathCount or 0,
		result.gotoCount or 0,
		result.clickCount or 0,
		result.killCount or 0,
		result.goldcollectCount or 0,
		result.overlapCount or 0
	))
	print("  Result: " .. ((result.ok and #(result.warnings or {}) == 0) and "clean" or (result.ok and "flagged" or "failed")))
	for _,issue in ipairs(result.issues or {}) do
		print("  issue: " .. issue)
	end
	for _,warning in ipairs(result.warnings or {}) do
		print("  warn: " .. warning)
	end
end
SlashCmdList["ZGVLINEDEBUG"] = function()
	local ZGV = ZygorGuidesViewer
	if not ZGV or not ZGV.CurrentStep or not ZGV.stepframes then
		print("|cffff8800Zygor Line Debug|r: No active step.")
		return
	end
	local framenum = ZGV.CurrentStepframeNum
	local stepframe = framenum and ZGV.stepframes[framenum]
	if not stepframe or not stepframe.lines then
		print("|cffff8800Zygor Line Debug|r: No active step frame.")
		return
	end
	print("|cffff8800Zygor Line Debug|r: guide=" .. tostring(ZGV.CurrentGuideName) .. " step=" .. tostring(ZGV.CurrentStepNum) .. " frame=" .. tostring(framenum))
	for i = 1, 20 do
		local line = stepframe.lines[i]
		if line and line:IsShown() and line.label then
			local label = line.label
			local goal = line.goal
			local text = label.GetText and label:GetText() or ""
			local rowh = line.GetHeight and line:GetHeight() or 0
			local texth = label.GetStringHeight and label:GetStringHeight() or (label.GetHeight and label:GetHeight() or 0)
			local backh = (line.back and line.back.IsShown and line.back:IsShown() and line.back.GetHeight) and line.back:GetHeight() or 0
			local iconh = (line.icon and line.icon.IsShown and line.icon:IsShown() and line.icon.GetHeight) and line.icon:GetHeight() or 0
			local actionh = (line.actionHolder and line.actionHolder.IsShown and line.actionHolder:IsShown() and line.actionHolder.GetHeight) and line.actionHolder:GetHeight() or 0
			local actionshown = (line.action and line.action.IsShown and line.action:IsShown()) and 1 or 0
			local petshown = (line.petaction and line.petaction.IsShown and line.petaction:IsShown()) and 1 or 0
			print(("|cffffff00L%d|r row=%.1f text=%.1f back=%.1f icon=%.1f holder=%.1f action=%d pet=%d goal=%s text=%s"):format(
				i, rowh or 0, texth or 0, backh or 0, iconh or 0, actionh or 0, actionshown, petshown,
				goal and tostring(goal.action) or "-",
				tostring(text):gsub("|c%x%x%x%x%x%x%x%x",""):gsub("|r","")
			))
		end
	end
end
if not ZGV.OpenGoldGuide then
	function ZGV:OpenGoldGuide(tabname)
		if self.db and self.db.profile and not self.db.profile.load_gold then
			self.db.profile.load_gold = true
			print("|cffff8800Zygor Gold Guide|r: Enabled! Type /reload then open Gold Guide again.")
			return
		end

		local goldguide = self.Goldguide or (self.Gold and self.Gold.Goldguide)
		if not goldguide then
			print("|cffff8800Zygor Gold Guide|r: Not initialized. Try /reload first.")
			return
		end

		if goldguide.Initialise then
			goldguide:Initialise()
		elseif goldguide.ShowWindow then
			goldguide:ShowWindow()
		else
			print("|cffff8800Zygor Gold Guide|r: Not initialized. Try /reload first.")
			return
		end

		if tabname and goldguide.SetCurrentTab then
			goldguide:SetCurrentTab(tabname)
		end
	end
end

SlashCmdList["ZYGORGOLD"] = function(msg)
	if ZGV.OpenGoldGuide then
		ZGV:OpenGoldGuide()
	elseif ZGV.Goldguide and ZGV.Goldguide.ShowWindow then
		ZGV.Goldguide:ShowWindow()
	else
		print("|cffff8800Zygor Gold Guide|r: Not initialized. Try /reload first.")
	end
end

local _,_,_,ver = GetBuildInfo()
local WotLK = (ver>=30000)


local BZ = LibStub("LibBabble-Zone-3.0")
local BZL = BZ:GetUnstrictLookupTable()
local BZR = BZ:GetReverseLookupTable()
me.BZL = BZL
me.BZR = BZR
local BF = LibStub("LibBabble-Faction-3.0")
local BFL = BF:GetUnstrictLookupTable()
local BFR = BF:GetReverseLookupTable()
me.BFL = BFL
me.BFR = BFR

local _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math = _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math

--local Dewdrop = AceLibrary("Dewdrop-2.0")

me.LibTaxi = LibStub("LibTaxi-1.0")
me.LibRover = _G.LibRover or me.LibRover


me.icons = {
	["hilite"] = {	text = L["map_highlight"],		path = DIR.."\\Skin\\highlightmap",	width = 32, height = 32, alpha=1 },
	["hilitesquare"] = {	text = L["map_highlight"],		path = DIR.."\\Skin\\highlightmap_square",	width = 32, height = 32, alpha=1 },
}

me.CartographerDatabase = { }


me.startups = {}

-- Auto-sell grey items and auto-repair when visiting a merchant
tinsert(me.startups, {"AutoSellRepair", function(self)
	local merchantFrame = CreateFrame("Frame")
	merchantFrame:RegisterEvent("MERCHANT_SHOW")
	merchantFrame:SetScript("OnEvent", function()
		-- Auto-sell grey items
		if ZGV.db.profile.autosellgrey then
			local totalSold = 0
			for bag = 0, 4 do
				for slot = 1, GetContainerNumSlots(bag) do
					local link = GetContainerItemLink(bag, slot)
					if link then
						local _, _, quality, _, _, _, _, _, _, _, vendorPrice = GetItemInfo(link)
						if quality == 0 and vendorPrice and vendorPrice > 0 then
							local _, count = GetContainerItemInfo(bag, slot)
							totalSold = totalSold + (vendorPrice * (count or 1))
							UseContainerItem(bag, slot)
						end
					end
				end
			end
			if totalSold > 0 then
				ZGV:Print("Sold grey items for " .. ZGV.GetMoneyString(totalSold))
			end
		end

		-- Auto-repair
		if ZGV.db.profile.autorepair and ZGV.db.profile.autorepair > 1 and CanMerchantRepair() then
			local cost = GetRepairAllCost()
			if cost > 0 and cost <= GetMoney() then
				RepairAllItems()
				ZGV:Print("Repaired all items for " .. ZGV.GetMoneyString(cost))
			end
		end
	end)
end})

me.StepLimit = 20
me.stepframes = {}
me.spotframes = {}


local STEP_LINE_SPACING = 2
local MIN_HEIGHT=100
local ICON_INDENT=15
ZGV.ICON_INDENT=ICON_INDENT
local STEP_SPACING = 2
ZGV.STEP_SPACING=STEP_SPACING
ZGV.STEPMARGIN_X=3
ZGV.STEPMARGIN_Y=4

ZGV.MIN_STEP_HEIGHT=15

local FONT = STANDARD_TEXT_FONT
ZGV.BUTTONS_INLINE=true
local cos, sin, rad, deg = math.cos, math.sin, math.rad, math.deg
local atan2 = math.atan2
local MAPBUTTON_RADIUS = 78
local MAPBUTTON_DEFAULT_ANGLE = 225
local AB_SetInlineVisualShown

do
	local ACTION_BAR_MAX_BUTTONS = 5
	local ACTION_BAR_SIZE = 30
	local ACTION_BAR_PADDING = 3
	local ACTION_BAR_CLOSE_SIZE = 18
	local ACTION_BAR_DEFAULT_ICON = "Interface\\Icons\\INV_Misc_QuestionMark"
	local ACTION_BAR_CUSTOM_ICONS = ZGV.DIR.."\\Skins\\actionbar"
	local TALK_ICON = { file = ZGV.DIR.."\\Skin\\icons", coords = {12/16 + 0.006,13/16 - 0.006,0.08,0.92}, inset = -2, crop = 0.00 }
	local KILL_ICON = { file = ACTION_BAR_CUSTOM_ICONS, coords = {1/8,2/8,0,1}, inset = 2, crop = 0.02 }
	local SCRIPT_ICON = { file = ACTION_BAR_CUSTOM_ICONS, coords = {3/8,4/8,0,1}, inset = 2, crop = 0.02 }
	local ACTION_BAR_SNAP_Y = 5
	local ACTION_BAR_SNAP_THRESHOLD_X = 80
	local ACTION_BAR_SNAP_THRESHOLD_Y = 60
	local ACTION_BAR_BASE_SCALE = 0.8

	local function AB_WipeAttrs(button)
		if not button then return end
		button:SetAttribute("type", nil)
		button:SetAttribute("type1", nil)
		button:SetAttribute("spell", nil)
		button:SetAttribute("spell1", nil)
		button:SetAttribute("item", nil)
		button:SetAttribute("item1", nil)
		button:SetAttribute("macrotext", nil)
		button:SetAttribute("macro", nil)
		button:SetAttribute("macrotext1", nil)
		button.spellid = nil
		button.itemid = nil
		button.actionSpec = nil
	end

	local function AB_SafeName(name)
		if not name then return nil end
		name = tostring(name):gsub("\"", "")
		name = name:gsub("\r", " "):gsub("\n", " ")
		name = name:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
		return name
	end

	local function AB_GetSpellIcon(goal)
		return select(3, GetSpellInfo(goal.castspellid or goal.castspell)) or "Interface\\Icons\\Spell_Nature_FaerieFire"
	end

	local function AB_GetItemIcon(goal)
		return select(10, GetItemInfo(goal.useitemid or goal.useitem)) or "Interface\\Icons\\INV_Misc_Bag_08"
	end

	local function AB_GetMacroIcon(goal)
		if goal.macro then
			return select(2, GetMacroInfo(goal.macro))
		end
		return ACTION_BAR_DEFAULT_ICON
	end

	local function AB_ApplyIcon(texture, icon)
		if not texture then return end
		if type(icon) == "table" then
			texture:SetTexture(icon.file)
			if icon.coords then texture:SetTexCoord(unpack(icon.coords)) else texture:SetTexCoord(0,1,0,1) end
		else
			texture:SetTexture(icon or ACTION_BAR_DEFAULT_ICON)
			texture:SetTexCoord(0, 1, 0, 1)
		end
	end

	local function AB_ApplyBarIcon(texture, icon)
		if not texture then return end
		local inset = (type(icon) == "table" and icon.inset) or 3
		texture:ClearAllPoints()
		texture:SetPoint("TOPLEFT", texture:GetParent(), "TOPLEFT", inset, -inset)
		texture:SetPoint("BOTTOMRIGHT", texture:GetParent(), "BOTTOMRIGHT", -inset, inset)
		if type(icon) == "table" then
			texture:SetTexture(icon.file)
			if icon.coords then
				local l, r, t, b = unpack(icon.coords)
				local crop = icon.crop or 0.03
				local xinset = (r - l) * crop
				local yinset = (b - t) * crop
				texture:SetTexCoord(l + xinset, r - xinset, t + yinset, b - yinset)
			else
				texture:SetTexCoord(0.07, 0.93, 0.07, 0.93)
			end
		else
			texture:SetTexture(icon or ACTION_BAR_DEFAULT_ICON)
			texture:SetTexCoord(0.12, 0.88, 0.12, 0.88)
		end
	end

	local function AB_BuildTargetMacro(name, marker)
		if not name then return end
		local lines = {
			"/cleartarget",
			"/targetexact " .. name,
			"/target [noexists] " .. name,
		}
		if marker then
			lines[#lines + 1] = "/targetmarker [exists] " .. tostring(marker)
		end
		return table.concat(lines, "\n")
	end

	local function AB_SingularizeName(name)
		if not name or type(name) ~= "string" then return end
		if name:find("ies$") then
			return name:gsub("ies$", "y")
		end
		if name:find("sses$") or name:find("xes$") or name:find("zes$") or name:find("ches$") or name:find("shes$") then
			return name:gsub("es$", "")
		end
		if name:find("s$") and not name:find("ss$") then
			return name:gsub("s$", "")
		end
	end

	local function AB_BuildTargetMacroList(candidates, marker)
		if not candidates or #candidates == 0 then return end
		local seen, unique = {}, {}
		for _, name in ipairs(candidates) do
			if name and not seen[name] then
				seen[name] = true
				unique[#unique + 1] = name
			end
		end
		if #unique == 0 then return end
		local lines = { "/cleartarget" }
		for _, name in ipairs(unique) do
			lines[#lines + 1] = "/targetexact " .. name
		end
		for _, name in ipairs(unique) do
			lines[#lines + 1] = "/target [noexists] " .. name
		end
		if type(marker) == "number" then
			lines[#lines + 1] = "/targetmarker [exists] " .. tostring(marker)
		end
		return table.concat(lines, "\n"), unique
	end

	local function AB_GetMobCandidates(goal)
		if not goal or not goal.mobs then return end
		local candidates = {}
		for _, mob in ipairs(goal.mobs) do
			local name = mob and mob.name
			if mob and mob.id and ZGV.GetTranslatedNPC then
				name = ZGV:GetTranslatedNPC(mob.id) or name
			end
			name = AB_SafeName(name)
			if name then
				candidates[#candidates + 1] = name
			end
		end
		if #candidates == 0 then return end
		return candidates
	end

	local function AB_GetGoalFromCandidates(goal)
		if not goal or not goal.parentStep or not goal.parentStep.goals or not goal.num then return end
		local goals = goal.parentStep.goals
		local candidates = {}
		local function addMobs(fromGoal)
			if not fromGoal or fromGoal.action ~= "from" then return end
			local mobCandidates = AB_GetMobCandidates(fromGoal)
			if mobCandidates then
				for _, name in ipairs(mobCandidates) do
					candidates[#candidates + 1] = name
				end
			end
		end

		local found = false
		for i = goal.num - 1, 1, -1 do
			local sibling = goals[i]
			if sibling and sibling.action == "from" then
				addMobs(sibling)
				found = true
			elseif sibling and (sibling.action or sibling.text) then
				break
			end
		end
		if not found then
			for i = goal.num + 1, #goals do
				local sibling = goals[i]
				if sibling and sibling.action == "from" then
					addMobs(sibling)
					found = true
				elseif sibling and (sibling.action or sibling.text) then
					break
				end
			end
		end
		if #candidates == 0 then return end
		return candidates
	end

	local function AB_IsReliableKillTarget(goal, target, singular)
		if not goal then return false end
		if goal.targetid or goal.npcid then return true end
		local rawTarget = goal.actiontarget or goal.target
		if goal.questid and goal.objnum and goal.action == "kill" and rawTarget and goal.target
		and type(rawTarget) == "string" and type(goal.target) == "string"
		and rawTarget ~= goal.target then
			return false
		end
		if rawTarget and type(rawTarget) == "string" then
			local raw = rawTarget:lower():gsub("^%s+", ""):gsub("%s+$", "")
			if raw:find(" mob$") or raw:find(" mobs$") or raw:find(" enemy$") or raw:find(" enemies$") then
				return false
			end
		end
		local name = singular or target or rawTarget
		if not name or type(name) ~= "string" then return false end
		local lowered = name:lower():gsub("^%s+", ""):gsub("%s+$", "")
		local genericSuffixes = {
			" mob", " mobs",
			" enemy", " enemies",
			" creature", " creatures",
			" npc", " npcs",
			" target", " targets",
			" humanoid", " humanoids",
			" undead", " demons", " beasts",
		}
		for _, suffix in ipairs(genericSuffixes) do
			if lowered:sub(-#suffix) == suffix then
				return false
			end
		end
		if lowered == "mob" or lowered == "mobs" or lowered == "enemy" or lowered == "enemies" then
			return false
		end
		return true
	end

	AB_SetInlineVisualShown = function(button, shown)
		if not button then return end
		local overlay = button.overlay
		local icon = button.icon or (overlay and overlay.icon)
		if not overlay and not icon then return end
		if shown then
			if overlay then overlay:Show() end
			if icon then icon:Show() end
		else
			if overlay then overlay:Hide() end
			if icon then icon:Hide() end
		end
	end

	local INLINE_BUTTON_OVERLAY_MAX = 20

	local function AB_CreateInlineSecureOverlayButton(name, parent)
		local button = CreateFrame("CheckButton", name, parent, "SecureActionButtonTemplate")
		button:RegisterForClicks("AnyUp")
		button:SetNormalTexture("")
		button:SetPushedTexture("")
		button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		button:SetCheckedTexture(nil)
		button:SetPushedTextOffset(0, 0)
		button:SetScript("OnEnter", function(self)
			if me and me.ShowActionButtonTooltip then
				me:ShowActionButtonTooltip(self)
			end
		end)
		button:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
		button:SetScript("PostClick", function(self)
			if me and me.ActionButtons_HandlePostClick then
				me:ActionButtons_HandlePostClick(self)
			end
		end)
		button:Hide()
		return button
	end

	function me:InlineButtons_EnsureSecureOverlayRoot()
		if self.InlineSecureOverlayRoot then return self.InlineSecureOverlayRoot end
		local root = CreateFrame("Frame", "ZygorGuidesViewerInlineSecureOverlayRoot", UIParent)
		root:SetAllPoints(UIParent)
		root:SetFrameStrata("DIALOG")
		root:SetFrameLevel(200)
		root:EnableMouse(false)
		root.buttons = {}
		for i = 1, INLINE_BUTTON_OVERLAY_MAX do
			root.buttons[i] = AB_CreateInlineSecureOverlayButton("ZygorGuidesViewerInlineSecureOverlayButton" .. i, root)
		end
		root:Hide()
		self.InlineSecureOverlayRoot = root
		return root
	end

	function me:InlineButtons_ClearSecureOverlays()
		local root = self.InlineSecureOverlayRoot
		if not root or InCombatLockdown() then return end
		for _, button in ipairs(root.buttons or {}) do
			button:Hide()
			button:ClearAllPoints()
			AB_WipeAttrs(button)
			button.actionSpec = nil
			button.previewSubject = nil
		end
		root:Hide()
	end

	function me:InlineButtons_SuspendSecureOverlays()
		if InCombatLockdown() then return end
		self:InlineButtons_ClearSecureOverlays()
	end

	function me:InlineButtons_GetVisibleBindings()
		local bindings = {}
		for _, stepframe in ipairs(self.stepframes or {}) do
			if stepframe and stepframe:IsVisible() and stepframe.lines then
				for i = 1, 20 do
					local line = stepframe.lines[i]
					local holder = line and line.actionHolder
					local spec = line and line.inlineActionSpec
					if holder and spec and holder:IsShown() then
						bindings[#bindings + 1] = {
							holder = holder,
							spec = spec,
						}
						if #bindings >= INLINE_BUTTON_OVERLAY_MAX then
							return bindings
						end
					end
				end
			end
		end
		return bindings
	end

	function me:InlineButtons_ApplySecureOverlaySpec(button, spec, holder, root)
		if not button or not spec or not holder or not root then return end
		local holderScale = holder:GetEffectiveScale() or 1
		local rootScale = root:GetEffectiveScale() or 1
		local left = holder:GetLeft()
		local bottom = holder:GetBottom()
		if not left or not bottom then
			button:Hide()
			return
		end
		local width = (holder:GetWidth() or 0) * holderScale / rootScale
		local height = (holder:GetHeight() or 0) * holderScale / rootScale
		AB_WipeAttrs(button)
		button:ClearAllPoints()
		button:SetPoint("BOTTOMLEFT", root, "BOTTOMLEFT", left * holderScale / rootScale, bottom * holderScale / rootScale)
		button:SetWidth(width)
		button:SetHeight(height)
		button:SetAttribute("type", spec.type)
		if spec.type == "spell" then
			button:SetAttribute("spell", spec.spell)
			button.spellid = spec.spellid or spec.spell
		elseif spec.type == "item" then
			button:SetAttribute("item", spec.item)
			button.itemid = spec.itemid
		elseif spec.type == "macro" then
			if spec.macrotext then button:SetAttribute("macrotext", spec.macrotext) end
			if spec.macro then button:SetAttribute("macro", spec.macro) end
		end
		button.actionSpec = spec
		button.previewSubject = spec
		button:Show()
	end

	function me:InlineButtons_RefreshSecureOverlays(force)
		if not self:InlineButtonsEnabled() or not self.Frame or not self.Frame:IsShown() then
			self:InlineButtons_ClearSecureOverlays()
			return
		end
		if InCombatLockdown() and not force then
			self.pendingInlineCombatRefresh = true
			return
		end
		local bindings = self:InlineButtons_GetVisibleBindings()
		if #bindings == 0 then
			self:InlineButtons_ClearSecureOverlays()
			return
		end
		local root = self:InlineButtons_EnsureSecureOverlayRoot()
		local frame = self.Frame or ZygorGuidesViewerFrame
		root:SetFrameStrata(frame and frame:GetFrameStrata() or "DIALOG")
		root:SetFrameLevel((frame and frame:GetFrameLevel() or 10) + 80)
		for i, binding in ipairs(bindings) do
			self:InlineButtons_ApplySecureOverlaySpec(root.buttons[i], binding.spec, binding.holder, root)
		end
		for i = #bindings + 1, INLINE_BUTTON_OVERLAY_MAX do
			local button = root.buttons[i]
			if button then
				button:Hide()
				button:ClearAllPoints()
				AB_WipeAttrs(button)
				button.actionSpec = nil
				button.previewSubject = nil
			end
		end
		root:Show()
	end

	local function AB_BuildTargetMacroCandidates(...)
		local candidates, seen = {}, {}
		for i = 1, select("#", ...) do
			local name = select(i, ...)
			if type(name) == "number" then break end
			if name and not seen[name] then
				seen[name] = true
				candidates[#candidates + 1] = name
			end
		end
		if #candidates == 0 then return end
		local lines = { "/cleartarget" }
		for _, name in ipairs(candidates) do
			lines[#lines + 1] = "/targetexact " .. name
		end
		for _, name in ipairs(candidates) do
			lines[#lines + 1] = "/target [noexists] " .. name
		end
		local marker = select(select("#", ...), ...)
		if type(marker) == "number" then
			lines[#lines + 1] = "/targetmarker [exists] " .. tostring(marker)
		end
		return table.concat(lines, "\n"), candidates
	end

	function me:GetGoalActionTargetName(goal)
		if not goal then return end
		if goal.npcid then
			local npc = self:GetTranslatedNPC(goal.npcid)
			if npc then return AB_SafeName(npc) end
		end
		if goal.targetid then
			local target = self:GetTranslatedNPC(goal.targetid)
			if target then return AB_SafeName(target) end
		end
		if goal.npc then return AB_SafeName(goal.npc) end
		if goal.action == "kill" and goal.actiontarget then return AB_SafeName(goal.actiontarget) end
		if goal.target then return AB_SafeName(goal.target) end
	end

	function me:ActionButtonCanMark()
		if InCombatLockdown() or not UnitExists("target") then return false end
		return true
	end

	function me:ActionButtonMarkTarget(marker)
		if not self.db or not self.db.profile or not self.db.profile.actionbutton_enablemarkers then return false, "disabled" end
		if not marker then return false, "nomarker" end
		if not UnitExists("target") then
			if self.Debug then self:Debug("ActionButtons: marker skipped, no target selected.") end
			return false, "notarget"
		end
		if not self:ActionButtonCanMark() then
			if self.Debug then self:Debug("ActionButtons: marker skipped, invalid target state or combat lockdown.") end
			return false, "unavailable"
		end
		if GetRaidTargetIndex and GetRaidTargetIndex("target") == marker then
			return true, "already"
		end
		SetRaidTarget("target", marker)
		return true
	end

	function me:ActionButtons_MarkSpecTarget(spec)
		if not spec or not spec.marker then return false, "nomarker" end
		if not spec.target or not UnitExists("target") then return false, "notarget" end
		local targetName = UnitName("target")
		if targetName ~= spec.target then
			local matched
			if spec.targetaliases then
				for _, alias in ipairs(spec.targetaliases) do
					if alias == targetName then
						matched = true
						break
					end
				end
			end
			if not matched then return false, "wrongtarget" end
		end
		return self:ActionButtonMarkTarget(spec.marker)
	end

	function me:ActionButtons_HandlePostClick(button)
		if not button then return end
		local spec = button.actionSpec
		if not spec or (spec.kind ~= "talk" and spec.kind ~= "kill") or not spec.marker then return end
		self:ActionButtons_MarkSpecTarget(spec)
		if self.ScheduleTimer then
			self:ScheduleTimer(function()
				if button and button.actionSpec == spec then
					me:ActionButtons_MarkSpecTarget(spec)
				end
			end, 0.08)
			self:ScheduleTimer(function()
				if button and button.actionSpec == spec then
					me:ActionButtons_MarkSpecTarget(spec)
				end
			end, 0.20)
		end
	end

	function me:GetGoalActionSpec(goal)
		if not goal then return end
		local fromCandidates
		if goal.action == "from" then
			fromCandidates = AB_GetMobCandidates(goal)
		elseif goal.action == "kill" then
			fromCandidates = AB_GetGoalFromCandidates(goal)
		end
		if goal.actionselectable == false and not (fromCandidates and #fromCandidates > 0) then return end

		if (goal.useitemid or goal.useitem) and GetItemCount(goal.useitemid or goal.useitem) > 0 then
			return { kind = "item", type = "item", item = goal.useitemid and ("item:" .. goal.useitemid) or goal.useitem, itemid = goal.useitemid, icon = AB_GetItemIcon(goal), tooltip = "item", signature = "item:" .. tostring(goal.useitemid or goal.useitem) }
		end

		if goal.castspell and IsUsableSpell(goal.castspell) then
			return { kind = "spell", type = "spell", spell = goal.castspell, spellid = goal.castspellid, icon = AB_GetSpellIcon(goal), tooltip = "spell", signature = "spell:" .. tostring(goal.castspellid or goal.castspell) }
		end

		if goal.petaction then
			local num, name, subtext, tex = FindPetActionInfo(goal.petaction)
			if num then
				return { kind = "petaction", type = "macro", macrotext = "/click PetActionButton" .. num, icon = tex or ACTION_BAR_DEFAULT_ICON, petaction = num, tooltip = "petaction", tooltipName = name, tooltipSubtext = subtext, signature = "petaction:" .. tostring(num) }
			end
		end

		if goal.script then
			return { kind = "script", type = "macro", macro = "ZygorGuidesMacro" .. goal.num, icon = SCRIPT_ICON, tooltip = "script", signature = "script:" .. tostring(goal.num), fallbackicon = AB_GetMacroIcon(goal) }
		end

		if goal.action == "talk" then
			local target = self:GetGoalActionTargetName(goal)
			local macrotext = AB_BuildTargetMacro(target, 4)
			if macrotext then
				return { kind = "talk", type = "macro", macrotext = macrotext, icon = TALK_ICON, target = target, marker = 4, tooltip = "talk", signature = "talk:" .. tostring(goal.npcid or target) }
			end
		end

		if goal.action == "kill" then
			if fromCandidates and #fromCandidates > 0 then
				local macrotext, candidates = AB_BuildTargetMacroList(fromCandidates, 8)
				local canonical = candidates and candidates[1]
				if macrotext and canonical then
					return { kind = "kill", type = "macro", macrotext = macrotext, icon = KILL_ICON, target = canonical, targetaliases = candidates, marker = 8, tooltip = "kill", signature = "killfrom:" .. tostring(goal.questid or canonical) }
				end
			end
			local target = self:GetGoalActionTargetName(goal)
			local killTarget = goal.actiontarget or goal.target
			local singular = (not goal.targetid and killTarget) and AB_SingularizeName(killTarget) or nil
			if not AB_IsReliableKillTarget(goal, target, singular) then
				return
			end
			local macrotext, candidates = AB_BuildTargetMacroCandidates(target, singular, 8)
			local canonical = (candidates and candidates[#candidates]) or singular or target
			if macrotext then
				return { kind = "kill", type = "macro", macrotext = macrotext, icon = KILL_ICON, target = canonical, targetaliases = candidates, marker = 8, tooltip = "kill", signature = "kill:" .. tostring(goal.targetid or canonical) }
			end
		end

		if goal.action == "from" and fromCandidates and #fromCandidates > 0 then
			local macrotext, candidates = AB_BuildTargetMacroList(fromCandidates, 8)
			local canonical = candidates and candidates[1]
			if macrotext and canonical then
				return { kind = "kill", type = "macro", macrotext = macrotext, icon = KILL_ICON, target = canonical, targetaliases = candidates, marker = 8, tooltip = "kill", signature = "from:" .. tostring(canonical) }
			end
		end
	end

	function me:ShowActionButtonTooltip(button)
		if not button or not button.actionSpec then return end
		local spec = button.actionSpec
		if button:GetTop() and button:GetTop() > (UIParent:GetHeight() / 2) then
			GameTooltip:SetOwner(button, "ANCHOR_BOTTOM")
		else
			GameTooltip:SetOwner(button, "ANCHOR_TOP")
		end

		if spec.tooltip == "item" then
			local link = select(2, GetItemInfo(spec.itemid or button.itemid))
			if link then
				GameTooltip:SetHyperlink(link)
				GameTooltip:Show()
				return
			end
		end

		if spec.tooltip == "spell" then
			GameTooltip:SetSpellByID(spec.spellid or button.spellid)
			GameTooltip:Show()
			return
		end

		GameTooltip:AddLine(spec.label or L["actionbutton_bar_title_locked"])
		if spec.tooltip == "talk" and spec.target then GameTooltip:AddLine(L["actionbutton_tooltip_talk"]:format(spec.target), 1, 1, 1, true) end
		if spec.tooltip == "kill" and spec.target then GameTooltip:AddLine(L["actionbutton_tooltip_kill"]:format(spec.target), 1, 1, 1, true) end
		if spec.tooltip == "script" then GameTooltip:AddLine(L["actionbutton_tooltip_script"], 1, 1, 1, true) end
		if spec.tooltip == "petaction" then
			GameTooltip:AddLine(L["actionbutton_tooltip_petaction"], 1, 1, 1, true)
			if spec.tooltipName then GameTooltip:AddLine(spec.tooltipName, 0.8, 0.8, 0.8) end
			if spec.tooltipSubtext then GameTooltip:AddLine(spec.tooltipSubtext, 0.7, 0.7, 0.7) end
		end
		GameTooltip:Show()
	end

	function me:ApplyInlineActionSpec(spec, action, petaction, actname)
		if not action or not petaction then return false end
		local icon = action.icon or (actname and _G[actname .. "ActionIcon"])
		local peticon = petaction.icon or (actname and _G[actname .. "PetActionIcon"])

		action.actionSpec = nil
		action.previewSubject = nil
		action:Hide()
		AB_SetInlineVisualShown(action, false)
		petaction.actionSpec = nil
		petaction.previewSubject = nil
		petaction:Hide()
		AB_SetInlineVisualShown(petaction, false)
		if not spec then return false end

		if spec.kind == "petaction" then
			petaction.actionSpec = spec
			petaction.previewSubject = spec
			if peticon then peticon:SetTexture(spec.icon or ACTION_BAR_DEFAULT_ICON) end
			AB_SetInlineVisualShown(petaction, true)
			return "petaction"
		end

		action.actionSpec = spec
		action.previewSubject = spec
		AB_SetInlineVisualShown(action, true)
		if icon then AB_ApplyIcon(icon, spec.icon or spec.fallbackicon or ACTION_BAR_DEFAULT_ICON) end
		return "action"
	end

	function me:GetCurrentStepActionSpecs()
		local specs, seen = {}, {}
		if not self.CurrentStep then return specs end
		if self.CurrentStep.goals then
			for _, goal in ipairs(self.CurrentStep.goals) do
				if goal and (not goal.IsVisible or goal:IsVisible()) then
					local spec = self:GetGoalActionSpec(goal)
					if spec then
						spec.goal = goal
						spec.label = goal:GetText() or goal.action or spec.kind
						if spec.kind == "talk" or spec.kind == "kill" then
							if not seen[spec.signature] then
								seen[spec.signature] = true
								specs[#specs + 1] = spec
							end
						else
							specs[#specs + 1] = spec
						end
						if #specs >= ACTION_BAR_MAX_BUTTONS then break end
					end
				end
			end
		end
		return specs
	end

	function me:ActionButtons_SaveAnchor()
		local bar = self.ActionButtonBar
		if not bar or not self.db or not self.db.profile then return end
		if bar.snapped then
			self.db.profile.actionbuttonbar_anchor = { snapped = true, custom = true }
			return
		end
		local point, _, relPoint, x, y = bar:GetPoint(1)
		self.db.profile.actionbuttonbar_anchor = { point = point, relPoint = relPoint, x = x, y = y, custom = true, snapped = bar.snapped }
	end

	function me:ActionButtons_GetSnapFrame()
		if self.RemasterFrames and self.RemasterFrames.root then
			return self.RemasterFrames.root
		end
		return self.Frame or ZygorGuidesViewerFrame
	end

	function me:ActionButtons_GetSnapSide()
		return (self.db and self.db.profile and self.db.profile.actionbuttonbar_pinside) or "top"
	end

	function me:ActionButtons_AnchorToViewer(bar, frame)
		if not bar then return end
		frame = frame or self:ActionButtons_GetSnapFrame()
		if not frame then
			bar.snapped = false
			bar:SetPoint("CENTER", UIParent, "CENTER", 0, -180)
			return
		end
		bar.snapped = true
		local viewerScale = frame:GetEffectiveScale() or 1
		local barScale = bar:GetEffectiveScale() or 1
		local left = (frame:GetLeft() or 0) * viewerScale / barScale
		local right = (frame:GetRight() or 0) * viewerScale / barScale
		local top = (frame:GetTop() or 0) * viewerScale / barScale
		local bottom = (frame:GetBottom() or 0) * viewerScale / barScale
		local offset = 10
		local side = self:ActionButtons_GetSnapSide()
		if side == "bottom" then
			bar:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", left, bottom - offset)
		elseif side == "left" then
			bar:SetPoint("TOPRIGHT", UIParent, "BOTTOMLEFT", left - offset, top)
		elseif side == "right" then
			bar:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", right + offset, top)
		else
			bar:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, top + offset)
		end
	end

	function me:ActionButtons_IsNearSnap(frame, viewer)
		if not frame or not viewer then return false end
		local ssc = frame:GetEffectiveScale()
		local zsc = viewer:GetEffectiveScale()
		local left = (frame:GetLeft() or 0) * ssc
		local right = (frame:GetRight() or 0) * ssc
		local top = (frame:GetTop() or 0) * ssc
		local bottom = (frame:GetBottom() or 0) * ssc
		local viewerLeft = (viewer:GetLeft() or 0) * zsc
		local viewerRight = (viewer:GetRight() or 0) * zsc
		local viewerTop = (viewer:GetTop() or 0) * zsc
		local viewerBottom = (viewer:GetBottom() or 0) * zsc
		local centerX = (left + right) / 2
		local centerY = (top + bottom) / 2
		local viewerCenterX = (viewerLeft + viewerRight) / 2
		local viewerCenterY = (viewerTop + viewerBottom) / 2
		local withinViewerWidth = centerX >= (viewerLeft - ACTION_BAR_SNAP_THRESHOLD_X) and centerX <= (viewerRight + ACTION_BAR_SNAP_THRESHOLD_X)
		local withinViewerHeight = centerY >= (viewerBottom - ACTION_BAR_SNAP_THRESHOLD_Y) and centerY <= (viewerTop + ACTION_BAR_SNAP_THRESHOLD_Y)
		local side = self:ActionButtons_GetSnapSide()
		if side == "bottom" then
			return withinViewerWidth and centerY <= viewerCenterY and math.abs(top - (viewerBottom - 10 * zsc)) <= ACTION_BAR_SNAP_THRESHOLD_Y
		elseif side == "left" then
			return withinViewerHeight and centerX <= viewerCenterX and math.abs(right - (viewerLeft - 10 * zsc)) <= ACTION_BAR_SNAP_THRESHOLD_X
		elseif side == "right" then
			return withinViewerHeight and centerX >= viewerCenterX and math.abs(left - (viewerRight + 10 * zsc)) <= ACTION_BAR_SNAP_THRESHOLD_X
		else
			return withinViewerWidth and centerY >= viewerCenterY and math.abs(bottom - (viewerTop + 10 * zsc)) <= ACTION_BAR_SNAP_THRESHOLD_Y
		end
	end

	function me:ActionButtons_IsOverViewer(frame, viewer)
		if not frame or not viewer then return false end
		local ssc = frame:GetEffectiveScale()
		local zsc = viewer:GetEffectiveScale()
		local left = (frame:GetLeft() or 0) * ssc
		local right = (frame:GetRight() or 0) * ssc
		local top = (frame:GetTop() or 0) * ssc
		local bottom = (frame:GetBottom() or 0) * ssc
		local viewerLeft = (viewer:GetLeft() or 0) * zsc
		local viewerRight = (viewer:GetRight() or 0) * zsc
		local viewerTop = (viewer:GetTop() or 0) * zsc
		local viewerBottom = (viewer:GetBottom() or 0) * zsc
		return right >= viewerLeft and left <= viewerRight and top >= viewerBottom and bottom <= viewerTop
	end

	function me:ActionButtons_SnapNow(frame, viewer)
		if not frame or not viewer then return false end
		frame.snapped = self:ActionButtons_IsOverViewer(frame, viewer) or self:ActionButtons_IsNearSnap(frame, viewer)
		if frame.snapped then
			frame:ClearAllPoints()
			self:ActionButtons_AnchorToViewer(frame, viewer)
		end
		self:ActionButtons_SaveAnchor()
		return frame.snapped
	end

	function me:ActionButtons_PrepareForDrag(frame)
		if not frame then return end
		local ssc = frame:GetEffectiveScale()
		local left = (frame:GetLeft() or 0) * ssc
		local bottom = (frame:GetBottom() or 0) * ssc
		frame:ClearAllPoints()
		frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left / ssc, bottom / ssc)
	end

	function me:ActionButtons_BeginDrag(frame)
		if not frame then return end
		local ssc = frame:GetEffectiveScale()
		local left = (frame:GetLeft() or 0) * ssc
		local bottom = (frame:GetBottom() or 0) * ssc
		local cx, cy = GetCursorPosition()
		frame.dragCursorOffsetX = cx - left
		frame.dragCursorOffsetY = cy - bottom
		frame.draggingManual = true
	end

	function me:ActionButtons_UpdateManualDrag(frame)
		if not frame or not frame.draggingManual then return end
		local ssc = frame:GetEffectiveScale()
		local cx, cy = GetCursorPosition()
		local left = cx - (frame.dragCursorOffsetX or 0)
		local bottom = cy - (frame.dragCursorOffsetY or 0)
		frame:ClearAllPoints()
		frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left / ssc, bottom / ssc)
	end

	function me:ActionButtons_EndDrag(frame)
		if not frame then return end
		frame.draggingManual = nil
		frame.dragCursorOffsetX = nil
		frame.dragCursorOffsetY = nil
	end

	function me:ActionButtons_ApplyAnchor()
		local bar = self.ActionButtonBar
		if not bar then return end
		local anchor = self.db.profile.actionbuttonbar_anchor
		bar:ClearAllPoints()
		if anchor and anchor.custom then
			bar.snapped = not not anchor.snapped
			if bar.snapped then
				self:ActionButtons_AnchorToViewer(bar)
			else
				bar:SetPoint(anchor.point or "CENTER", UIParent, anchor.relPoint or "CENTER", anchor.x or 0, anchor.y or 0)
			end
			return
		end
		self:ActionButtons_AnchorToViewer(bar)
	end

	function me:ActionButtons_ApplyAnchorThrottled(elapsed)
		local bar = self.ActionButtonBar
		if not bar or not bar.snapped then return end
		bar.anchorThrottle = (bar.anchorThrottle or 0) + (elapsed or 0)
		if bar.anchorThrottle < 0.03 then return end
		bar.anchorThrottle = 0
		self:ActionButtons_ApplyAnchor()
	end

	function me:ActionButtons_Layout()
		local bar = self.ActionButtonBar
		if not bar then return end
		local profile = self.db.profile
		local size = profile.actionbuttonbar_size or ACTION_BAR_SIZE
		local spacing = profile.actionbuttonbar_spacing or ACTION_BAR_PADDING
		local shown = 0
		for i, button in ipairs(bar.buttons) do
			button:SetWidth(size) button:SetHeight(size)
			button:ClearAllPoints()
			button.overlay:ClearAllPoints()
			button.overlay:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
			button.overlay:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0)
			button.overlay.icon:ClearAllPoints()
			button.overlay.icon:SetPoint("TOPLEFT", button.overlay, "TOPLEFT", 3, -3)
			button.overlay.icon:SetPoint("BOTTOMRIGHT", button.overlay, "BOTTOMRIGHT", -3, 3)
			button.overlay.cooldown:ClearAllPoints()
			button.overlay.cooldown:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
			button.overlay.cooldown:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0)
			if i == 1 then
				button:SetPoint("TOPLEFT", bar, "TOPLEFT", ACTION_BAR_PADDING, -ACTION_BAR_PADDING)
			else
				button:SetPoint("LEFT", bar.buttons[i - 1], "RIGHT", spacing, 0)
			end
			if button:IsShown() then shown = shown + 1 end
		end
		if shown == 0 then shown = 1 end
		bar:SetScale((profile.actionbuttonbar_scale or 1) * ACTION_BAR_BASE_SCALE)
		bar:SetWidth((shown * size) + ((shown - 1) * spacing) + ACTION_BAR_PADDING * 2 + 25)
		bar:SetHeight(size + ACTION_BAR_PADDING * 2)
		bar.close:ClearAllPoints()
		bar.close:SetPoint("TOPRIGHT", bar, "TOPRIGHT", -4, -4)
	end

	function me:ActionButtons_UpdateDragState()
		local bar = self.ActionButtonBar
		if not bar then return end
		local locked = self.db.profile.actionbuttonbar_locked
		bar:EnableMouse(not locked)
		bar:SetMovable(not locked)
		if bar.close.SetShown then
			bar.close:SetShown(true)
		else
			bar.close:Show()
		end
	end

	function me:ActionButtons_ApplyTheme()
		local bar = self.ActionButtonBar
		if not bar or not self.db or not self.db.profile then return end

		local textc = self.db.profile.skincolors and self.db.profile.skincolors.text or {0.90, 0.92, 0.98}
		local backc = self.db.profile.skincolors and self.db.profile.skincolors.back or {0.08, 0.09, 0.12}
		local backalpha = self.db.profile.backopacity or 0.3
		local opacitymain = self.db.profile.opacitymain or 1.0
		local abTheme = ZGV:GetCurrentTheme()
		local abVariantId = ZGV:GetCurrentVariant()
		local abSkin = ZGV:GetCurrentSkin()
		local abVariantData = abSkin and abSkin.variants and abSkin.variants[abVariantId]
		local border = (abTheme and abTheme.frameBorder) or { 0.18, 0.18, 0.20, 0.92 }
		if abVariantData and abVariantData.rootBackOverride then
			backc = abVariantData.rootBackOverride
		end

		bar:SetAlpha(opacitymain)
		bar:SetBackdropColor(backc[1], backc[2], backc[3], backalpha)
		local barBorderAlpha = (backalpha <= 0.005) and 0 or (border[4] or 1)
		bar:SetBackdropBorderColor(border[1], border[2], border[3], barBorderAlpha)
		if bar.close and bar.close.x then
			bar.close.x:SetTextColor(textc[1], textc[2], textc[3], 0.95)
		end
	end

	function me:ActionButtons_BarMatchesSpecs(bar, specs)
		if not bar or not bar.buttons then return false end
		local liveCount = specs and #specs or 0
		local barCount = 0
		for i = 1, ACTION_BAR_MAX_BUTTONS do
			local button = bar.buttons[i]
			local barspec = button and button.actionSpec
			if barspec then
				barCount = barCount + 1
			end
			local livespec = specs and specs[i]
			if (not barspec) ~= (not livespec) then
				return false
			end
			if barspec and livespec then
				local barSig = barspec.signature or (barspec.kind .. ":" .. tostring(i))
				local liveSig = livespec.signature or (livespec.kind .. ":" .. tostring(i))
				if barSig ~= liveSig then
					return false
				end
			end
		end
		return barCount == liveCount
	end

	function me:ActionButtons_SetPendingCombatState(active)
		local bar = self.ActionButtonBar
		if not bar then return end
		if active then
			if bar.combatBlocker then
				bar.combatBlocker:ClearAllPoints()
				bar.combatBlocker:SetPoint("TOPLEFT", bar, "TOPLEFT", 0, 0)
				bar.combatBlocker:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 0, 0)
				bar.combatBlocker:Show()
			end
			bar:SetAlpha(0)
		else
			if bar.combatBlocker then
				bar.combatBlocker:Hide()
			end
			self:ActionButtons_ApplyTheme()
		end
	end

	function me:ActionButtons_CreateBar()
		if self.ActionButtonBar then return self.ActionButtonBar end
		local bar = CreateFrame("Frame", "ZygorGuidesViewerActionButtonBar", UIParent)
		bar:SetMovable(true)
		bar:SetClampedToScreen(true)
		bar:SetFrameStrata("LOW")
		bar:SetFrameLevel(10)
		bar:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = false,
			edgeSize = 12,
			insets = { left = 2, right = 2, top = 2, bottom = 2 },
		})
		bar:SetScript("OnDragStart", function(frame)
			if not me.db.profile.actionbuttonbar_locked then
				frame.snapped = false
				frame:SetClampedToScreen(false)
				me:ActionButtons_PrepareForDrag(frame)
				me:ActionButtons_BeginDrag(frame)
			end
		end)
		bar:SetScript("OnDragStop", function(frame)
			me:ActionButtons_EndDrag(frame)
			frame:SetClampedToScreen(true)
			local viewer = me:ActionButtons_GetSnapFrame()
			me:ActionButtons_SnapNow(frame, viewer)
		end)
		bar:SetScript("OnUpdate", function(frame, elapsed)
			if me.db.profile.actionbuttonbar_locked or InCombatLockdown() then return end
			if frame.draggingManual then
				me:ActionButtons_UpdateManualDrag(frame)
				return
			end
			if me.framemoving and frame.snapped and not frame:IsDragging() then
				me:ActionButtons_ApplyAnchorThrottled(elapsed)
			end
		end)
		bar:RegisterForDrag("LeftButton")
		bar.close = CreateFrame("Button", nil, bar)
		bar.close:SetWidth(ACTION_BAR_CLOSE_SIZE)
		bar.close:SetHeight(ACTION_BAR_CLOSE_SIZE)
		bar.close:SetNormalTexture("Interface\\Buttons\\WHITE8x8")
		bar.close:SetPushedTexture("Interface\\Buttons\\WHITE8x8")
		bar.close:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		bar.close:GetNormalTexture():SetVertexColor(0.08, 0.08, 0.08, 1)
		bar.close:GetPushedTexture():SetVertexColor(0.14, 0.14, 0.14, 1)
		bar.close.x = bar.close:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		bar.close.x:SetPoint("CENTER", 0, 0)
		bar.close.x:SetText("x")
		bar.close.x:SetTextColor(1, 1, 1, 0.95)
		bar.close:SetScript("OnClick", function()
			me.db.profile.actionbuttonbar_enabled = false
			LibStub("AceConfigRegistry-3.0"):NotifyChange("ZygorGuidesViewer")
			me:ActionButtons_Refresh(true)
		end)
		bar.combatBlocker = CreateFrame("Frame", nil, UIParent)
		bar.combatBlocker:SetFrameStrata(bar:GetFrameStrata())
		bar.combatBlocker:SetFrameLevel(bar:GetFrameLevel() + 50)
		bar.combatBlocker:EnableMouse(true)
		bar.combatBlocker:Hide()
		bar.buttons = {}
		for i = 1, ACTION_BAR_MAX_BUTTONS do
			local button = CreateFrame("CheckButton", "ZygorGuidesViewerActionButton" .. i, bar, "SecureActionButtonTemplate")
			button:RegisterForClicks("AnyUp")
			button:SetNormalTexture("Interface\\Buttons\\UI-Quickslot2")
			button:SetPushedTexture("Interface\\Buttons\\UI-Quickslot-Depress")
			button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
			button:SetCheckedTexture(nil)
			button:SetPushedTextOffset(0, 0)
			button.overlay = CreateFrame("Frame", nil, button)
			button.overlay:EnableMouse(false)
			button.overlay:SetAllPoints(button)
			button.overlay:SetFrameLevel(button:GetFrameLevel() + 1)
			button.overlay.icon = button.overlay:CreateTexture(nil, "BACKGROUND")
			button.overlay.cooldown = CreateFrame("Cooldown", button:GetName() .. "Cooldown", button, "CooldownFrameTemplate")
			if button.overlay.cooldown.SetDrawSwipe then
				button.overlay.cooldown:SetDrawSwipe(true)
			end
			button.overlay.cooldown:SetFrameLevel(button.overlay:GetFrameLevel() + 1)
			button.overlay.cooldown:SetAllPoints(button)
			button:SetScript("OnEnter", function(self) me:ShowActionButtonTooltip(self) end)
			button:SetScript("OnLeave", function() GameTooltip:Hide() end)
			button:SetScript("PostClick", function(self) me:ActionButtons_HandlePostClick(self) end)
			bar.buttons[i] = button
		end
		self.ActionButtonBar = bar
		self:ActionButtons_ApplyTheme()
		self:ActionButtons_ApplyAnchor()
		self:ActionButtons_UpdateDragState()
		return bar
	end

	function me:ActionButtons_ApplyButtonSpec(button, spec)
		AB_WipeAttrs(button)
		button.overlay.cooldown:Hide()
		if not spec then button.overlay:Hide() button:Hide() return end
		button:SetAttribute("type", spec.type)
		if spec.type == "spell" then
			button:SetAttribute("spell", spec.spell)
			button.spellid = spec.spellid or spec.spell
		elseif spec.type == "item" then
			button:SetAttribute("item", spec.item)
			button.itemid = spec.itemid
		elseif spec.type == "macro" then
			if spec.macrotext then button:SetAttribute("macrotext", spec.macrotext) end
			if spec.macro then button:SetAttribute("macro", spec.macro) end
		end
		button.actionSpec = spec
		AB_ApplyBarIcon(button.overlay.icon, spec.icon or spec.fallbackicon or ACTION_BAR_DEFAULT_ICON)
		button.overlay:Show()
		button:Show()
	end

	function me:ActionButtons_UpdateCooldowns()
		local bar = self.ActionButtonBar
		if not bar then return end
		for _, button in ipairs(bar.buttons) do
			local spec = button.actionSpec
			if spec and spec.kind == "spell" then
				local start, dur, en = GetSpellCooldown(spec.spellid or spec.spell)
				CooldownFrame_SetTimer(button.overlay.cooldown, start, dur, en)
				if start and start > 0 then button.overlay.cooldown:Show() else button.overlay.cooldown:Hide() end
			elseif spec and spec.kind == "item" then
				local start, dur, en = GetItemCooldown(spec.itemid or spec.item)
				CooldownFrame_SetTimer(button.overlay.cooldown, start, dur, en)
				if start and start > 0 then button.overlay.cooldown:Show() else button.overlay.cooldown:Hide() end
			else
				button.overlay.cooldown:Hide()
			end
		end
	end

	function me:ActionButtons_Refresh(force)
		local profile = self.db and self.db.profile
		if InCombatLockdown() then
			local bar = self.ActionButtonBar
			self.actionButtonsRefreshPending = true
			if bar then
				if not profile or not profile.actionbuttonbar_enabled or not self.Frame or not self.Frame:IsShown() then
					self:ActionButtons_SetPendingCombatState(true)
				else
					local specs = self:GetCurrentStepActionSpecs()
					local shouldShow = (not profile.actionbuttonbar_onlywhenneeded) or (#specs > 0)
					local matches = self:ActionButtons_BarMatchesSpecs(bar, specs)
					self:ActionButtons_SetPendingCombatState((not shouldShow) or (not matches))
					if shouldShow and matches then
						self:ActionButtons_UpdateCooldowns()
					end
				end
			end
			return
		end
		if not profile or not profile.actionbuttonbar_enabled then
			if self.ActionButtonBar then self.ActionButtonBar:Hide() end
			return
		end
		if not self.Frame or not self.Frame:IsShown() then
			if self.ActionButtonBar then self.ActionButtonBar:Hide() end
			return
		end
		self.actionButtonsRefreshPending = nil
		local bar = self:ActionButtons_CreateBar()
		self:ActionButtons_SetPendingCombatState(false)
		local specs = self:GetCurrentStepActionSpecs()
		for i = 1, ACTION_BAR_MAX_BUTTONS do
			self:ActionButtons_ApplyButtonSpec(bar.buttons[i], specs[i])
		end
		local shouldShow = (not self.db.profile.actionbuttonbar_onlywhenneeded) or (#specs > 0)
		self:ActionButtons_ApplyAnchor()
		self:ActionButtons_Layout()
		self:ActionButtons_UpdateDragState()
		if shouldShow then
			bar:Show()
			self:ActionButtons_UpdateCooldowns()
		else
			bar:Hide()
		end
	end

	function me:ActionButtons_ClickBinding(index)
		local bar = self.ActionButtonBar
		local button = bar and bar.buttons and bar.buttons[index]
		if button and button:IsVisible() then button:Click() end
	end

	function me:ActionButtons_ResetAnchor()
		if not self.db or not self.db.profile then return end
		self.db.profile.actionbuttonbar_anchor = { snapped = true, custom = true }
	end

	function me:ActionButtons_ValidateProfile()
		if not self.db or not self.db.profile then return end
		local profile = self.db.profile
		local validSides = { top = true, bottom = true, left = true, right = true }
		local validPoints = {
			TOPLEFT = true, TOP = true, TOPRIGHT = true,
			LEFT = true, CENTER = true, RIGHT = true,
			BOTTOMLEFT = true, BOTTOM = true, BOTTOMRIGHT = true,
		}

		if not validSides[profile.actionbuttonbar_pinside] then
			profile.actionbuttonbar_pinside = "top"
		end

		profile.actionbuttonbar_scale = tonumber(profile.actionbuttonbar_scale) or 1
		if profile.actionbuttonbar_scale < 0.5 then profile.actionbuttonbar_scale = 0.5 end
		if profile.actionbuttonbar_scale > 2 then profile.actionbuttonbar_scale = 2 end

		profile.actionbuttonbar_size = tonumber(profile.actionbuttonbar_size) or ACTION_BAR_SIZE
		if profile.actionbuttonbar_size < 24 then profile.actionbuttonbar_size = 24 end
		if profile.actionbuttonbar_size > 64 then profile.actionbuttonbar_size = 64 end

		profile.actionbuttonbar_spacing = tonumber(profile.actionbuttonbar_spacing) or ACTION_BAR_PADDING
		if profile.actionbuttonbar_spacing < 0 then profile.actionbuttonbar_spacing = 0 end
		if profile.actionbuttonbar_spacing > 20 then profile.actionbuttonbar_spacing = 20 end

		local anchor = profile.actionbuttonbar_anchor
		if type(anchor) ~= "table" then
			self:ActionButtons_ResetAnchor()
			return
		end

		local isOldDefault = anchor.point == "CENTER" and anchor.relPoint == "CENTER" and tonumber(anchor.x) == 0 and tonumber(anchor.y) == -180
		if isOldDefault then
			self:ActionButtons_ResetAnchor()
			return
		end

		if anchor.snapped == nil then
			anchor.snapped = false
		end
		if anchor.custom == nil then
			anchor.custom = true
		end

		if anchor.snapped then
			profile.actionbuttonbar_anchor = { snapped = true, custom = true }
			return
		end

		if not validPoints[anchor.point] or not validPoints[anchor.relPoint] then
			self:ActionButtons_ResetAnchor()
			return
		end

		anchor.x = tonumber(anchor.x)
		anchor.y = tonumber(anchor.y)
		if not anchor.x or not anchor.y then
			self:ActionButtons_ResetAnchor()
		end
	end

	function me:ActionButtons_ApplyProfile()
		if not self.db or not self.db.profile then return end
		self:ActionButtons_ValidateProfile()
		self:ActionButtons_CreateBar()
		self:ActionButtons_ApplyTheme()
		self:ActionButtons_ApplyAnchor()
		self:ActionButtons_UpdateDragState()
		self:ActionButtons_Refresh(true)
	end
end

function me:InlineButtonsEnabled()
	return not not (
		self.BUTTONS_INLINE
		and self.db and self.db.profile
		and self.db.profile.goalicons
		and self.db.profile.actionbuttonbar_enabled
		and self.db.profile.inlinebuttons_enabled ~= false
	)
end

local function NormalizeDegrees(angle)
	angle = tonumber(angle) or MAPBUTTON_DEFAULT_ANGLE
	angle = angle % 360
	if angle < 0 then
		angle = angle + 360
	end
	return angle
end

local function copyBackdrop(backdrop)
	if type(backdrop) ~= "table" then
		return nil
	end
	local out = {}
	for k, v in pairs(backdrop) do
		if type(v) == "table" then
			local t = {}
			for k2, v2 in pairs(v) do
				t[k2] = v2
			end
			out[k] = t
		else
			out[k] = v
		end
	end
	return out
end

local function captureFrameBackdrop(frame)
	if not frame or not frame.GetBackdrop then
		return nil
	end
	local backdrop = frame:GetBackdrop()
	if not backdrop then
		return nil
	end
	return {
		backdrop = copyBackdrop(backdrop),
		color = { frame:GetBackdropColor() },
		border = { frame:GetBackdropBorderColor() },
	}
end

local function applyFrameBackdrop(frame, data)
	if not frame or not data or not frame.SetBackdrop then
		return
	end
	if data.backdrop then
		frame:SetBackdrop(data.backdrop)
	end
	if data.color and frame.SetBackdropColor then
		frame:SetBackdropColor(unpack(data.color))
	end
	if data.border and frame.SetBackdropBorderColor then
		frame:SetBackdropBorderColor(unpack(data.border))
	end
end

local function captureFrameLayout(frame)
	if not frame or not frame.GetNumPoints then
		return nil
	end
	local points = {}
	for i = 1, frame:GetNumPoints() do
		points[i] = { frame:GetPoint(i) }
	end
	return {
		points = points,
		size = { frame:GetWidth(), frame:GetHeight() },
	}
end

local function applyFrameLayout(frame, data)
	if not frame or not data then
		return
	end
	if data.points then
		frame:ClearAllPoints()
		for _, point in ipairs(data.points) do
			frame:SetPoint(unpack(point))
		end
	end
	if data.size and data.size[1] and data.size[2] then
		frame:SetSize(data.size[1], data.size[2])
	end
end

local function safeSetFont(fontString, fontPath, size, flags)
	if not fontString or not fontString.SetFont then
		return false
	end
	local ok = pcall(fontString.SetFont, fontString, fontPath, size, flags)
	return ok
end

local function UseClientLocaleFont()
	local locale = GetLocale and GetLocale()
	return locale == "zhCN" or locale == "zhTW" or locale == "koKR"
end

local function safeSetRemasterFont(fontString, fontPath, size, flags)
	if UseClientLocaleFont() then
		return safeSetFont(fontString, STANDARD_TEXT_FONT, size, flags)
	end
	return safeSetFont(fontString, fontPath, size, flags)
end

function me:EnsureSectionTitleFont()
	local title = ZygorGuidesViewerFrame_Border_SectionTitle
	if not title or not title.GetFont then
		return
	end
	local font = title:GetFont()
	if font then
		return
	end
	local size = 11
	if self.db and self.db.profile and self:IsRemasterSkin() then
		size = 13
		if safeSetRemasterFont(title, ZGV.DIR.."\\Skins\\segoeuib.ttf", size) then
			return
		end
	end
	safeSetFont(title, STANDARD_TEXT_FONT, size)
end

function me:UpdateLegacyHeaderTitle(fullTitle)
	local titleFS = ZygorGuidesViewerFrame_Border_SectionTitle
	if not titleFS then return end
	local title = (fullTitle or ""):gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
	if title == "" then
		titleFS:SetText("")
		return
	end
	self:EnsureSectionTitleFont()
	titleFS:SetJustifyH("CENTER")
	titleFS:SetJustifyV("MIDDLE")
	local maxWidth = (titleFS.GetWidth and titleFS:GetWidth() or 0)
	if maxWidth < 80 and ZygorGuidesViewerFrame_Border_Top and ZygorGuidesViewerFrame_Border_Top.GetWidth then
		maxWidth = math.max(80, (ZygorGuidesViewerFrame_Border_Top:GetWidth() or 0) - 60)
	end
	if maxWidth < 80 then maxWidth = 220 end
	titleFS:SetWidth(maxWidth)

	self.LegacyHeaderMeasure = self.LegacyHeaderMeasure or UIParent:CreateFontString(nil, "ARTWORK")
	local measureFS = self.LegacyHeaderMeasure
	local fontPath, fontSize, fontFlags = titleFS:GetFont()
	local measureReady = false
	if fontPath then
		measureReady = safeSetFont(measureFS, fontPath, fontSize or 11, fontFlags)
	end
	if not measureReady then
		measureReady = safeSetFont(measureFS, "Interface\\Addons\\ZygorGuidesViewer\\skin\\antiquen.ttf", 11)
	end
	if not measureReady then
		measureReady = safeSetFont(measureFS, STANDARD_TEXT_FONT, 11)
	end
	if measureReady then
		pcall(measureFS.SetText, measureFS, "")
	end
	local function widthOf(text)
		if not measureReady then return 0 end
		local ok = pcall(measureFS.SetText, measureFS, text or "")
		if not ok then return 0 end
		return measureFS:GetStringWidth() or 0
	end
	local function fitWithEllipsis(text)
		local ell = "..."
		if widthOf(text) <= maxWidth then return text end
		if widthOf(ell) > maxWidth then return ell end
		local lo, hi, best = 1, #text, ell
		while lo <= hi do
			local mid = math.floor((lo + hi) / 2)
			local cand = string.sub(text, 1, mid)..ell
			if widthOf(cand) <= maxWidth then
				best = cand
				lo = mid + 1
			else
				hi = mid - 1
			end
		end
		return best
	end

	if widthOf(title) <= maxWidth then
		titleFS:SetHeight(16)
		titleFS:SetText(title)
		return
	end

	local words = {}
	for word in title:gmatch("%S+") do table.insert(words, word) end
	local bestA, bestB, bestScore
	if #words >= 2 then
		for i = 1, #words - 1 do
			local a = table.concat(words, " ", 1, i)
			local b = table.concat(words, " ", i + 1, #words)
			local wa, wb = widthOf(a), widthOf(b)
			if wa <= maxWidth and wb <= maxWidth then
				local score = math.abs(wa - wb)
				if not bestScore or score < bestScore then
					bestScore = score
					bestA, bestB = a, b
				end
			end
		end
	end
	if bestA and bestB then
		titleFS:SetHeight(30)
		titleFS:SetText(bestA.."\n"..bestB)
		return
	end

	local line1, splitAt = "", 0
	for i = 1, #words do
		local cand = table.concat(words, " ", 1, i)
		if widthOf(cand) <= maxWidth then
			line1, splitAt = cand, i
		else
			break
		end
	end
	if line1 == "" then
		line1 = fitWithEllipsis(title)
		splitAt = #words
	end
	local rest = ""
	if splitAt > 0 and splitAt < #words then
		rest = table.concat(words, " ", splitAt + 1, #words)
	else
		rest = string.sub(title, #line1 + 1):gsub("^%s+", "")
	end
	local line2 = fitWithEllipsis(rest ~= "" and rest or title)
	titleFS:SetHeight(30)
	titleFS:SetText(line1.."\n"..line2)
end

function me:GetCurrentGuideProgress()
	if not (self.CurrentGuide and self.CurrentGuide.steps and #self.CurrentGuide.steps > 0) then
		return 0, 0, 0
	end
	local total = #self.CurrentGuide.steps
	local current = tonumber(self.CurrentStepNum or 1) or 1
	if current < 1 then current = 1 end
	if current > total then current = total end
	local progress = total > 0 and (current / total) or 0
	return progress, current, total
end

function me:GetCompactGuideLayoutMetrics()
	local fontsize = (self.db and self.db.profile and self.db.profile.fontsize or 11)
	local metrics = {
		lineSpacing = STEP_LINE_SPACING,
		stepTopPadding = self.STEPMARGIN_Y,
		stepBottomPadding = self.STEPMARGIN_Y,
		progressReserve = 0,
		progressBottomOffset = 8,
		lastLineReserve = 0,
		iconHeight = math.max(fontsize * 1.18, 13),
		inlineButtonHeight = math.max(fontsize + 3, 14),
	}

	if self.db
	and self.db.profile
	and self:IsRemasterSkin()
	and self.db.profile.displaymode == "guide"
	and not self.db.profile.showallsteps
	then
		metrics.lineSpacing = 0
		metrics.stepTopPadding = 3
		metrics.stepBottomPadding = 3
		metrics.compactTextInset = 6
		if self.db.profile.showguideprogressbar ~= false then
			metrics.progressReserve = 14
		end
		metrics.progressBottomOffset = 6
		metrics.lastLineReserve = 0
		metrics.iconHeight = math.max(fontsize + 1, 12)
		metrics.inlineButtonHeight = math.max(metrics.iconHeight + 2, 14)
	end

	return metrics
end

function me:GetGuideProgressPadding()
	if self.CurrentGuide and self.db and self.db.profile and self.db.profile.displaymode == "guide" then
		return self:GetCompactGuideLayoutMetrics().progressReserve
	end
	return 0
end

function me:GetGuideProgressAnchorStepFrame()
	if not self.stepframes then return nil end
	local anchor
	for i = 1, (self.StepLimit or #self.stepframes) do
		local stepframe = self.stepframes[i]
		if stepframe and stepframe.stepnum and stepframe.IsShown and stepframe:IsShown() then
			anchor = stepframe
		end
	end
	if anchor then return anchor end
	if self.CurrentStepframeNum and self.stepframes[self.CurrentStepframeNum] then
		return self.stepframes[self.CurrentStepframeNum]
	end
	return nil
end

function me:GetVisibleStepContentHeight(limit)
	if self.db and self.db.profile and self:IsRemasterSkin() and not self.db.profile.showallsteps then
		local currentLimit = self.db.profile.showcountsteps or 1
		if currentLimit < 1 then currentLimit = 1 end
		if (not limit) or limit == currentLimit or limit == self.StepLimit then
			if self.compactContentHeight and self.compactContentHeight > 0 then
				return self.compactContentHeight
			end
		end
	end
	if not self.stepframes then return 0 end
	local firstVisible, lastVisible
	local sumHeight = 0
	local maxFrames = limit or self.StepLimit or #self.stepframes
	for i = 1, maxFrames do
		local stepframe = self.stepframes[i]
		if stepframe and stepframe.IsShown and stepframe:IsShown() then
			if not firstVisible then
				firstVisible = stepframe
			end
			lastVisible = stepframe
			if sumHeight > 0 then
				sumHeight = sumHeight + STEP_SPACING
			end
			sumHeight = sumHeight + (stepframe:GetHeight() or 0)
		end
	end
	if firstVisible and lastVisible then
		local top = firstVisible:GetTop()
		local bottom = lastVisible:GetBottom()
		if top and bottom and top > bottom then
			return top - bottom
		end
	end
	return sumHeight
end

function me:GetGuideStepContentWidth(frame)
	local width = 0
	if self.db and self.db.profile and self:IsRemasterSkin() then
		width = self:GetRemasterSettledStepFrameWidth()
	end
	if width <= 0 and frame and frame.GetWidth then
		width = frame:GetWidth() or 0
	end
	if self.db and self.db.profile and self:IsRemasterSkin() then
		local inset = 0
		if self.db.profile.displaymode == "guide" and not self.db.profile.showallsteps then
			inset = (self:GetCompactGuideLayoutMetrics().compactTextInset or 0) * 2
		end
		return math.max(width - self.ICON_INDENT - inset, 1)
	end
	return math.max(width - self.ICON_INDENT - 2 * self.STEPMARGIN_X, 1)
end

function me:GetRemasterSettledStepFrameWidth()
	local width = 0
	if ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScrollChild.GetWidth then
		width = ZygorGuidesViewerFrameScrollChild:GetWidth() or 0
	end
	if width <= 1 and ZygorGuidesViewerFrameScroll and ZygorGuidesViewerFrameScroll.GetWidth then
		local scrollbarPad = (self.db and self.db.profile and self.db.profile.showallsteps) and 39 or 20
		width = math.max((ZygorGuidesViewerFrameScroll:GetWidth() or 0) - scrollbarPad, 1)
	end
	return width
end

function me:GetRemasterWrappedTextPadding(text, textheight)
	if not self.db
	or not self.db.profile
	or not self:IsRemasterSkin()
	or self.db.profile.displaymode ~= "guide"
	then
		return 0
	end
	if not text then return 0 end
	local multiline = false
	if text.GetNumLines and (text:GetNumLines() or 0) > 1 then
		multiline = true
	elseif text.GetLineHeight and textheight then
		local lineHeight = text:GetLineHeight() or 0
		if lineHeight > 0 and textheight > lineHeight + 0.5 then
			multiline = true
		end
	end
	return multiline and 3 or 0
end

function me:RequestRemasterCompactRelayout()
	if not self.db
	or not self.db.profile
	or not self:IsRemasterSkin()
	or self.db.profile.displaymode ~= "guide"
	or self.db.profile.showallsteps
	then
		return
	end
	if self.pendingRemasterCompactRelayout then return end
	self.pendingRemasterCompactRelayout = true
	local function runRelayout()
		if not ZGV then return end
		ZGV.pendingRemasterCompactRelayout = nil
		if not (ZGV.Frame and ZGV.Frame:IsShown()) then return end
		if not ZGV.db
		or not ZGV.db.profile
		or not ZGV:IsRemasterSkin()
		or ZGV.db.profile.displaymode ~= "guide"
		or ZGV.db.profile.showallsteps
		then
			return
		end
		if ZGV.remasterCompactRelayoutInProgress then return end
		ZGV.remasterCompactRelayoutInProgress = true
		ZGV:RelayoutRemasterCompactVisibleSteps()
		if ZGV.ResizeFrame then ZGV:ResizeFrame() end
		ZGV.remasterCompactRelayoutInProgress = nil
	end
	if self.ScheduleTimer then
		self:ScheduleTimer(runRelayout, 0)
	else
		runRelayout()
	end
end

function me:ApplyGuideLineLabelLayout(lineframe)
	if not lineframe or not lineframe.label then return end
	local label = lineframe.label
	local x = lineframe.labelOffsetX or ZGV.ICON_INDENT
	local y = lineframe.labelOffsetY or 0
	local rightInset = 0
	if self.db
	and self.db.profile
	and self:IsRemasterSkin()
	and self.db.profile.displaymode == "guide"
	and not self.db.profile.showallsteps
	then
		local inset = self:GetCompactGuideLayoutMetrics().compactTextInset or 0
		x = x + inset
		rightInset = inset
	end
	label:ClearAllPoints()
	label:SetPoint("TOPLEFT", x, y)
	label:SetPoint("TOPRIGHT", -rightInset, y)
	if self.db
	and self.db.profile
	and self:IsRemasterSkin()
	and self.db.profile.displaymode == "guide"
	and not self.db.profile.showallsteps
	then
		label:SetJustifyV("TOP")
	else
		label:SetJustifyV("MIDDLE")
	end
end

function me:GetCompactLineVisualHeight(stepdata, lineframe)
	if not lineframe then return 0 end

	local goal = lineframe.goal
	if goal and goal.routegroup and lineframe.icon and lineframe.icon.IsShown and lineframe.icon:IsShown() and lineframe.icon.GetHeight then
		return lineframe.icon:GetHeight() or 0
	end
	return 0
end

function me:RelayoutRemasterCompactVisibleSteps()
	if not self.db
	or not self.db.profile
	or not self:IsRemasterSkin()
	or self.db.profile.displaymode ~= "guide"
	or self.db.profile.showallsteps
	then
		return
	end
	if not self.stepframes then return end

	local compactMetrics = self:GetCompactGuideLayoutMetrics()
	local totalheight = 0
	local visibleframes = 0

	for _, frame in ipairs(self.stepframes) do
		if frame and frame.IsShown and frame:IsShown() then
			local stepdata = frame.step
			if stepdata and frame.lines then
				local visibleLineNums = {}
				for l = 1, 20 do
					local lineframe = frame.lines[l]
					if lineframe and lineframe.IsShown and lineframe:IsShown() and lineframe.label then
						visibleLineNums[#visibleLineNums + 1] = l
					end
				end

				if #visibleLineNums > 0 then
					local height = 0
					for idx, lineNum in ipairs(visibleLineNums) do
						local lineframe = frame.lines[lineNum]
						local text = lineframe.label
						local contentWidth = self:GetGuideStepContentWidth(frame)
						text:SetWidth(contentWidth)
						local textheight = text.GetStringHeight and text:GetStringHeight() or text:GetHeight() or 0
						local textpadding = self:GetRemasterWrappedTextPadding(text, textheight)
						local hasVisibleInlineControl =
							(lineframe.actionHolder and lineframe.actionHolder.IsShown and lineframe.actionHolder:IsShown())
							or (lineframe.action and lineframe.action.IsShown and lineframe.action:IsShown())
							or (lineframe.petaction and lineframe.petaction.IsShown and lineframe.petaction:IsShown())
						local lineheight
						if hasVisibleInlineControl then
							lineheight = math.max((textheight or 0) + textpadding, self:GetCompactLineVisualHeight(stepdata, lineframe))
						else
							lineheight = (textheight or 0) + textpadding
						end
						if compactMetrics.lastLineReserve and compactMetrics.lastLineReserve > 0 and idx == #visibleLineNums then
							lineheight = lineheight + compactMetrics.lastLineReserve
						end
						if text.SetHeight then
							text:SetHeight(textheight or 0)
						end
						lineframe:SetHeight(lineheight)
						height = height + (height > 0 and compactMetrics.lineSpacing or 0) + lineheight
					end

					local compactTopPadding = compactMetrics.stepTopPadding or 0
					local compactBottomPadding = compactMetrics.stepBottomPadding or 0
					if height < self.MIN_STEP_HEIGHT then
						frame.lines[1]:SetPoint("TOPLEFT", ZGV.STEPMARGIN_X, -(self.MIN_STEP_HEIGHT - height) / 2 - 0.6)
						frame.lines[1]:SetPoint("TOPRIGHT", -ZGV.STEPMARGIN_X, -(self.MIN_STEP_HEIGHT - height) / 2 - 0.6)
						height = self.MIN_STEP_HEIGHT
					else
						frame.lines[1]:SetPoint("TOPLEFT", frame, ZGV.STEPMARGIN_X, -compactTopPadding)
						frame.lines[1]:SetPoint("TOPRIGHT", frame, -ZGV.STEPMARGIN_X, -compactTopPadding)
					end
					frame.guideProgressBaseHeight = height + compactTopPadding + compactBottomPadding
					frame:SetHeight(frame.guideProgressBaseHeight)
				end
			end

			if visibleframes > 0 then
				totalheight = totalheight + STEP_SPACING
			end
			totalheight = totalheight + (frame:GetHeight() or 0)
			visibleframes = visibleframes + 1
		end
	end

	self.compactContentHeight = totalheight

	if ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScroll then
		local scrollHeight = ZygorGuidesViewerFrameScroll:GetHeight() or 0
		local childHeight = math.max((self.compactContentHeight or 0) + 4, scrollHeight)
		ZygorGuidesViewerFrameScrollChild:SetHeight(childHeight)
		if ZygorGuidesViewerFrameScrollScrollBar then
			if childHeight > scrollHeight + 2 then
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
	end
end

function me:EnsureGuideProgressWidgets()
	if not ZygorGuidesViewerFrame then return end

	if not self.GuideProgressBar then
		local bar = CreateFrame("Frame", "ZGVGuideProgressBar", ZygorGuidesViewerFrame)
		bar:SetHeight(4)
		bar:SetFrameLevel(ZygorGuidesViewerFrame:GetFrameLevel() + 6)

		local bg = bar:CreateTexture(nil, "BORDER")
		bg:SetAllPoints(bar)
		if bg.SetColorTexture then
			bg:SetColorTexture(1, 1, 1, 0.12)
		else
			bg:SetTexture(1, 1, 1, 0.12)
		end
		bar.bg = bg

		local fill = bar:CreateTexture(nil, "ARTWORK")
		fill:SetPoint("TOPLEFT", bar, "TOPLEFT", 0, 0)
		fill:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", 0, 0)
		fill:SetWidth(0)
		if fill.SetColorTexture then
			fill:SetColorTexture(0.20, 0.72, 0.28, 0.95)
		else
			fill:SetTexture(0.20, 0.72, 0.28, 0.95)
		end
		bar.fill = fill
		bar:Hide()
		self.GuideProgressBar = bar
	end
end

function me:UpdateGuideProgressWidgets()
	self:EnsureGuideProgressWidgets()
	local progress, current, total = self:GetCurrentGuideProgress()
	local bar = self.GuideProgressBar
	if not bar then return end

	local show = total > 0 and self.CurrentGuide and self.db and self.db.profile and self.db.profile.displaymode == "guide" and self.db.profile.showguideprogressbar ~= false
	local stepframe = self:GetGuideProgressAnchorStepFrame()
	if not show or not stepframe or not stepframe:IsShown() then
		bar:Hide()
		return
	end

	local parentFrame = ZygorGuidesViewerFrame or self.Frame or stepframe
	bar:SetParent(parentFrame)
	bar:ClearAllPoints()
	if self.db and self.db.profile and self:IsRemasterSkin() and not self.db.profile.showallsteps then
		local metrics = self:GetCompactGuideLayoutMetrics()
		local footerFrame = self.RemasterFrames and self.RemasterFrames.footer
		local scrollFrame = ZygorGuidesViewerFrameScroll
		if footerFrame and footerFrame.IsShown and not footerFrame:IsShown() then
			footerFrame = nil
		end
		local contentFrame = footerFrame or (self.RemasterFrames and self.RemasterFrames.content) or parentFrame
		if footerFrame then
			local leftInset, rightInset = self.STEPMARGIN_X, self.STEPMARGIN_X
			if scrollFrame and scrollFrame.GetLeft and scrollFrame.GetRight and footerFrame.GetLeft and footerFrame.GetRight then
				local scrollLeft, scrollRight = scrollFrame:GetLeft(), scrollFrame:GetRight()
				local footerLeft, footerRight = footerFrame:GetLeft(), footerFrame:GetRight()
				if scrollLeft and scrollRight and footerLeft and footerRight then
					leftInset = math.max(scrollLeft - footerLeft, 0)
					rightInset = math.max(footerRight - scrollRight, 0)
				end
			end
			bar:SetPoint("LEFT", footerFrame, "LEFT", leftInset, 0)
			bar:SetPoint("RIGHT", footerFrame, "RIGHT", -rightInset, 0)
			bar:SetPoint("CENTER", footerFrame, "CENTER", 0, 0)
		else
			if scrollFrame then
				bar:SetPoint("BOTTOMLEFT", scrollFrame, "BOTTOMLEFT", 0, metrics.progressBottomOffset)
				bar:SetPoint("BOTTOMRIGHT", scrollFrame, "BOTTOMRIGHT", 0, metrics.progressBottomOffset)
			else
				bar:SetPoint("BOTTOMLEFT", contentFrame, "BOTTOMLEFT", self.STEPMARGIN_X, metrics.progressBottomOffset)
				bar:SetPoint("BOTTOMRIGHT", contentFrame, "BOTTOMRIGHT", -self.STEPMARGIN_X, metrics.progressBottomOffset)
			end
		end
	else
		bar:SetPoint("BOTTOMLEFT", stepframe, "BOTTOMLEFT", ZGV.STEPMARGIN_X, 8)
		bar:SetPoint("BOTTOMRIGHT", stepframe, "BOTTOMRIGHT", -ZGV.STEPMARGIN_X, 8)
	end
	bar:SetFrameStrata(parentFrame:GetFrameStrata())
	bar:SetFrameLevel(stepframe:GetFrameLevel() + 20)

	if bar.bg then
		local pbSkin = ZGV:GetCurrentSkin()
		local pbColors = pbSkin and pbSkin.progressBar
		if self.db and self.db.profile and self:IsRemasterSkin() then
			local bgc = pbColors and pbColors.bg or {1, 1, 1, 0.10}
			if bar.bg.SetColorTexture then
				bar.bg:SetColorTexture(bgc[1], bgc[2], bgc[3], bgc[4])
			else
				bar.bg:SetTexture(bgc[1], bgc[2], bgc[3], bgc[4])
			end
		else
			if bar.bg.SetColorTexture then
				bar.bg:SetColorTexture(1, 1, 1, 0.12)
			else
				bar.bg:SetTexture(1, 1, 1, 0.12)
			end
		end
	end

	if bar.fill then
		local pbSkin2 = ZGV:GetCurrentSkin()
		local pbColors2 = pbSkin2 and pbSkin2.progressBar
		if self.db and self.db.profile and self:IsRemasterSkin() then
			local fillc = pbColors2 and pbColors2.fill or {0.28, 0.82, 0.36, 0.98}
			if bar.fill.SetColorTexture then
				bar.fill:SetColorTexture(fillc[1], fillc[2], fillc[3], fillc[4])
			else
				bar.fill:SetTexture(fillc[1], fillc[2], fillc[3], fillc[4])
			end
		else
			if bar.fill.SetColorTexture then
				bar.fill:SetColorTexture(0.20, 0.72, 0.28, 0.95)
			else
				bar.fill:SetTexture(0.20, 0.72, 0.28, 0.95)
			end
		end
	end

	bar:Show()
	local width = bar:GetWidth() or 0
	if width <= 0 and stepframe and stepframe.GetWidth then
		width = math.max((stepframe:GetWidth() or 0) - 2 * ZGV.STEPMARGIN_X, 0)
	end
	local fillWidth = math.max(0, math.min(width, width * progress))
	bar.fill:SetWidth(fillWidth)
end


function me:UpdateRemasterHeader()
	if not self.RemasterFrames then
		return
	end
	local frames = self.RemasterFrames
	if not frames.headerTitle or not frames.headerMeta then
		return
	end
	local function fitRemasterHeaderTitle(fullTitle)
		local titleFS = frames.headerTitle
		local header = frames.header
		if not titleFS or not header then
			if titleFS and titleFS.SetText then
				pcall(titleFS.SetText, titleFS, fullTitle or "")
			end
			return
		end
		local function ensureTitleFont()
			local fp = titleFS.GetFont and titleFS:GetFont()
			if fp then return true end
			if safeSetRemasterFont(titleFS, ZGV.DIR.."\\Skins\\segoeuib.ttf", 13) then return true end
			if safeSetRemasterFont(titleFS, ZGV.DIR.."\\Skins\\segoeui.ttf", 13) then return true end
			if safeSetFont(titleFS, STANDARD_TEXT_FONT, 13) then return true end
			local ok = pcall(titleFS.SetFontObject, titleFS, "GameFontNormalSmall")
			if ok and titleFS.GetFont and titleFS:GetFont() then return true end
			return safeSetFont(titleFS, STANDARD_TEXT_FONT, 13)
		end
		local function setTitleText(text)
			if not ensureTitleFont() then return end
			pcall(titleFS.SetText, titleFS, text or "")
		end

		local maxWidth = math.max(80, (header:GetWidth() or 0) - 70)
		titleFS:ClearAllPoints()
		titleFS:SetPoint("CENTER", header, "CENTER", 0, 0)
		titleFS:SetJustifyH("CENTER")
		titleFS:SetJustifyV("MIDDLE")
		titleFS:SetWidth(maxWidth)

		frames.headerTitleMeasure = frames.headerTitleMeasure or UIParent:CreateFontString(nil, "ARTWORK")
		local measureFS = frames.headerTitleMeasure
		local measureReady = false
		local fontPath, fontSize, fontFlags = titleFS:GetFont()
		if fontPath then
			measureReady = safeSetFont(measureFS, fontPath, fontSize or 13, fontFlags)
		else
			measureReady = safeSetRemasterFont(measureFS, ZGV.DIR.."\\Skins\\segoeuib.ttf", 13)
		end
		if not measureReady then
			measureReady = safeSetFont(measureFS, STANDARD_TEXT_FONT, 13)
		end
		if measureReady then
			pcall(measureFS.SetText, measureFS, "")
		end

		local function widthOf(text)
			if not measureReady then
				return 0
			end
			local ok = pcall(measureFS.SetText, measureFS, text or "")
			if not ok then
				return 0
			end
			return measureFS:GetStringWidth() or 0
		end

		local title = (fullTitle or ""):gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
		if title == "" then
			titleFS:SetHeight(16)
			setTitleText("")
			return
		end

		if widthOf(title) <= maxWidth then
			titleFS:SetHeight(16)
			setTitleText(title)
			return
		end

		local words = {}
		for word in title:gmatch("%S+") do
			table.insert(words, word)
		end

		local bestA, bestB, bestScore
		if #words >= 2 then
			for i = 1, #words - 1 do
				local a = table.concat(words, " ", 1, i)
				local b = table.concat(words, " ", i + 1, #words)
				local wa = widthOf(a)
				local wb = widthOf(b)
				if wa <= maxWidth and wb <= maxWidth then
					local score = math.abs(wa - wb)
					if not bestScore or score < bestScore then
						bestScore = score
						bestA, bestB = a, b
					end
				end
			end
		end

		if bestA and bestB then
			titleFS:SetHeight(30)
			setTitleText(bestA.."\n"..bestB)
			return
		end

		local ell = "..."
		local function fitWithEllipsis(text)
			if widthOf(text) <= maxWidth then
				return text
			end
			if widthOf(ell) > maxWidth then
				return ell
			end
			local lo, hi = 1, #text
			local best = ell
			while lo <= hi do
				local mid = math.floor((lo + hi) / 2)
				local cand = string.sub(text, 1, mid)..ell
				if widthOf(cand) <= maxWidth then
					best = cand
					lo = mid + 1
				else
					hi = mid - 1
				end
			end
			return best
		end

		local line1 = ""
		local splitAt = 0
		for i = 1, #words do
			local cand = table.concat(words, " ", 1, i)
			if widthOf(cand) <= maxWidth then
				line1 = cand
				splitAt = i
			else
				break
			end
		end

		if line1 == "" then
			local lo, hi = 1, #title
			while lo <= hi do
				local mid = math.floor((lo + hi) / 2)
				local cand = string.sub(title, 1, mid)
				if widthOf(cand) <= maxWidth then
					line1 = cand
					lo = mid + 1
				else
					hi = mid - 1
				end
			end
		end

		local rest = ""
		if splitAt > 0 and splitAt < #words then
			rest = table.concat(words, " ", splitAt + 1, #words)
		else
			rest = string.sub(title, #line1 + 1):gsub("^%s+", "")
		end
		local line2 = fitWithEllipsis(rest ~= "" and rest or title)
		titleFS:SetHeight(30)
		setTitleText(line1.."\n"..line2)
	end

	local title = ""
	if self.loading then
		title = "Loading Guides"
	elseif self.CurrentGuide and self.CurrentGuide.title_short then
		title = self.CurrentGuide.title_short
	elseif self.CurrentGuide and self.CurrentGuide.title then
		title = self.CurrentGuide.title
	end
	if not title or title == "" then
		if self.CurrentGuide then
			title = L["frame_title_default"]
		else
			title = L["gb_no_guide_selected"]
		end
	end
	fitRemasterHeaderTitle(title or "")
	local stepText = ""
	if self.loading then
		stepText = "  Loading  "
	elseif self.CurrentGuide and self.CurrentGuide.steps then
		local total = #self.CurrentGuide.steps
		local current = self.CurrentStepNum or 1
		stepText = string.format("Step %d / %d", current, total)
	elseif self.CurrentGuide then
		stepText = "Step ?"
	else
		stepText = ""
	end
	if frames.headerMeta then
		frames.headerMeta:SetText("")
	end
	if frames.stepLabel then
		frames.stepLabel:SetText(stepText)
	end
	self:UpdateGuideProgressWidgets()
end

function me:EnsureRemasterFrames()
	if self.RemasterFrames then
		return self.RemasterFrames
	end
	if not ZygorGuidesViewerFrame then
		return nil
	end
	local frames = {}

	local root = CreateFrame("Frame", "ZGVRemasterFrame", ZygorGuidesViewerFrame)
	root:SetAllPoints(ZygorGuidesViewerFrame)
	root:SetFrameStrata(ZygorGuidesViewerFrame:GetFrameStrata() or "MEDIUM")
	root:SetFrameLevel(ZygorGuidesViewerFrame:GetFrameLevel() + 5)
	root:EnableMouse(true)
	root:SetMovable(true)
	root:RegisterForDrag("LeftButton")
	if ZygorGuidesViewerFrameMaster then
		ZygorGuidesViewerFrameMaster:SetMovable(true)
		ZygorGuidesViewerFrameMaster:EnableMouse(true)
	end
	local function remasterStartDrag()
		if ZGV and ZGV.framemoving then return end
		if not ZygorGuidesViewer.db.profile["windowlocked"] and ZygorGuidesViewerFrameMaster then
			ZygorGuidesViewerFrameMaster:SetMovable(true)
			ZygorGuidesViewerFrameMaster:StartMoving()
			ZygorGuidesViewer.framemoving = true
		end
	end
	local function remasterStopDrag()
		if ZGV and not ZGV.framemoving then return end
		if ZygorGuidesViewerFrameMaster then
			ZygorGuidesViewerFrameMaster:StopMovingOrSizing()
		end
		ZGV.framemoving = nil
		if ZGV.ActionButtons_ApplyAnchor then ZGV:ActionButtons_ApplyAnchor() end
		if ZGV.TargetPreview_ApplyAnchor then ZGV:TargetPreview_ApplyAnchor() end
	end
	frames.startDrag = remasterStartDrag
	frames.stopDrag = remasterStopDrag
	root:SetScript("OnDragStart", remasterStartDrag)
	root:SetScript("OnDragStop", remasterStopDrag)
	root:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not ZGV.framemoving then remasterStartDrag() end
	end)
	root:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and ZGV.framemoving then remasterStopDrag() end
	end)
	root:SetBackdrop({
		bgFile = "Interface\\Buttons\\white8x8",
		edgeFile = "Interface\\Buttons\\white8x8",
		tile = true,
		tileSize = 16,
		edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	root:SetBackdropColor(0.07, 0.07, 0.08, 0.95)
	root:SetBackdropBorderColor(0.12, 0.12, 0.14, 0.9)
	root:Hide()
	frames.root = root

	local header = CreateFrame("Frame", nil, root)
	header:SetHeight(34)
	header:SetPoint("TOPLEFT", root, "TOPLEFT", 6, -6)
	header:SetPoint("TOPRIGHT", root, "TOPRIGHT", -6, -6)
	header:SetFrameLevel(root:GetFrameLevel() + 3)
	header:EnableMouse(true)
	header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", remasterStartDrag)
	header:SetScript("OnDragStop", remasterStopDrag)
	header:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not ZGV.framemoving then remasterStartDrag() end
	end)
	header:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and ZGV.framemoving then remasterStopDrag() end
	end)
	frames.header = header

	local headerBg = header:CreateTexture(nil, "BORDER")
	headerBg:SetAllPoints(header)
	headerBg:SetTexture(1, 1, 1, 0.08)
	frames.headerBg = headerBg

	local separator = header:CreateTexture(nil, "BORDER")
	separator:SetHeight(1)
	separator:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -2)
	separator:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", 0, -2)
	separator:SetTexture(1, 1, 1, 0.12)
	frames.separator = separator

	local toolbar = CreateFrame("Frame", nil, root)
	toolbar:SetHeight(28)
	toolbar:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -6)
	toolbar:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", 0, -6)
	toolbar:SetFrameLevel(root:GetFrameLevel() + 3)
	toolbar:EnableMouse(true)
	toolbar:RegisterForDrag("LeftButton")
	toolbar:SetScript("OnDragStart", remasterStartDrag)
	toolbar:SetScript("OnDragStop", remasterStopDrag)
	toolbar:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not ZGV.framemoving then remasterStartDrag() end
	end)
	toolbar:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and ZGV.framemoving then remasterStopDrag() end
	end)
	frames.toolbar = toolbar

	local toolbarBg = toolbar:CreateTexture(nil, "BORDER")
	toolbarBg:SetAllPoints(toolbar)
	toolbarBg:SetTexture(1, 1, 1, 0.06)
	frames.toolbarBg = toolbarBg

	local content = CreateFrame("Frame", nil, root)
	content:SetPoint("TOPLEFT", toolbar, "BOTTOMLEFT", 0, -10)
	content:SetPoint("BOTTOMRIGHT", root, "BOTTOMRIGHT", -6, 8)
	content:SetFrameLevel(root:GetFrameLevel() + 1)
	content:EnableMouse(true)
	content:RegisterForDrag("LeftButton")
	content:SetScript("OnDragStart", remasterStartDrag)
	content:SetScript("OnDragStop", remasterStopDrag)
	content:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not ZGV.framemoving then remasterStartDrag() end
	end)
	content:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and ZGV.framemoving then remasterStopDrag() end
	end)
	content:SetBackdrop({
		bgFile = "Interface\\Buttons\\white8x8",
		edgeFile = "Interface\\Buttons\\white8x8",
		tile = true,
		tileSize = 16,
		edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	content:SetBackdropColor(0.10, 0.10, 0.11, 0.9)
	content:SetBackdropBorderColor(0.12, 0.12, 0.14, 0.8)
	frames.content = content

	local footer = CreateFrame("Frame", nil, root)
	footer:SetHeight(14)
	footer:SetFrameLevel(root:GetFrameLevel() + 2)
	local footerBg = footer:CreateTexture(nil, "BACKGROUND")
	footerBg:SetAllPoints(footer)
	footerBg:SetTexture(1, 1, 1, 0.04)
	frames.footerBg = footerBg
	frames.footer = footer

	local footerSeparator = footer:CreateTexture(nil, "BORDER")
	footerSeparator:SetHeight(1)
	footerSeparator:SetPoint("TOPLEFT", footer, "TOPLEFT", 0, 0)
	footerSeparator:SetPoint("TOPRIGHT", footer, "TOPRIGHT", 0, 0)
	footerSeparator:SetTexture(1, 1, 1, 0.10)
	frames.footerSeparator = footerSeparator

	local title = header:CreateFontString(nil, "ARTWORK")
	title:SetPoint("LEFT", header, "LEFT", 8, 0)
	title:SetJustifyH("LEFT")
	title:SetTextColor(0.92, 0.94, 0.98, 1)
	if not safeSetRemasterFont(title, ZGV.DIR.."\\Skins\\segoeuib.ttf", 13)
		and not safeSetRemasterFont(title, ZGV.DIR.."\\Skins\\segoeui.ttf", 13) then
		safeSetFont(title, STANDARD_TEXT_FONT, 13)
	end
	frames.headerTitle = title

	local meta = header:CreateFontString(nil, "ARTWORK")
	meta:SetPoint("RIGHT", header, "RIGHT", -10, 0)
	meta:SetJustifyH("RIGHT")
	meta:SetTextColor(0.70, 0.75, 0.85, 1)
	if not safeSetRemasterFont(meta, ZGV.DIR.."\\Skins\\segoeui.ttf", 11) then
		safeSetFont(meta, STANDARD_TEXT_FONT, 11)
	end
	frames.headerMeta = meta

	local function styleButton(button, text, w, h)
		button:SetSize(w or 22, h or 20)
		button:SetText(text or "")
		button:SetNormalFontObject("GameFontHighlightSmall")
		button:SetHighlightFontObject("GameFontHighlightSmall")
		button:SetBackdrop({
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true,
			tileSize = 16,
			edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		})
		button.remasterBackColor = { 0.14, 0.15, 0.18, 0.9 }
		button.remasterHoverColor = { 0.20, 0.21, 0.26, 0.95 }
		button.remasterBorderColor = { 0.22, 0.24, 0.28, 0.9 }
		button:SetBackdropColor(unpack(button.remasterBackColor))
		button:SetBackdropBorderColor(unpack(button.remasterBorderColor))
		button:SetScript("OnEnter", function(selfBtn)
			local c = selfBtn.remasterHoverColor or { 0.20, 0.21, 0.26, 0.95 }
			selfBtn:SetBackdropColor(c[1], c[2], c[3], c[4] or 1)
		end)
		button:SetScript("OnLeave", function(selfBtn)
			local c = selfBtn.remasterBackColor or { 0.14, 0.15, 0.18, 0.9 }
			selfBtn:SetBackdropColor(c[1], c[2], c[3], c[4] or 1)
		end)
	end
	local function styleCompositeButton(button, textureName)
		button:SetText("")
		local darkDir = "Interface\\AddOns\\"..(addonName or "ZygorGuidesViewer").."\\Skin\\rm_dark\\"
		if not button.rmDarkBG then
			button.rmDarkBG = button:CreateTexture(nil, "BACKGROUND")
			button.rmDarkBG:SetAllPoints(button)
		end
		button.rmDarkBG:SetTexture(nil)
		if not button.rmDarkArrow then
			button.rmDarkArrow = button:CreateTexture(nil, "ARTWORK")
			button.rmDarkArrow:SetAllPoints(button)
		end
		button.rmDarkArrow:SetTexture(darkDir..textureName)
		button.rmDarkArrow:SetBlendMode("BLEND")
	end
	local function tipColor()
		local probe = L and (L['frame_stepnav_prev_click'] or L['frame_stepnav_next_click'])
		if type(probe) == "string" then
			local code = probe:match("^(|cff%x%x%x%x%x%x)")
			if code then return code end
		end
		return "|cffddff00"
	end
	local function tipClick(text)
		return tipColor().."Click|r "..text
	end
	local function tipRight(text)
		return tipColor().."Right-click|r "..text
	end

	local guideButton = CreateFrame("Button", "ZGVRemasterGuideButton", toolbar)
	styleButton(guideButton, L["frame_tab_guides"], 70, 20)
	guideButton:SetPoint("LEFT", toolbar, "LEFT", 8, 0)
	guideButton:SetScript("OnClick", function(selfBtn, button)
		if button == "RightButton" then
			if ZGV and ZGV.ToggleGuideManagerFrame then
				ZGV:ToggleGuideManagerFrame("home")
			elseif ZGV and ZGV.OpenGuideMenu then
				ZGV:OpenGuideMenu()
			end
		else
			if ZGV and ZGV.OpenGuideMenu then
				ZGV:OpenGuideMenu()
			elseif ZGV and ZGV.OpenQuickMenu then
				ZGV:OpenQuickMenu()
			end
		end
	end)
	guideButton:RegisterForClicks("LeftButtonUp","RightButtonUp")
	guideButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(L["frame_toolbar_guides"])
		GameTooltip:AddLine(tipClick(L["frame_toolbar_guides_click"]))
		GameTooltip:AddLine(tipRight(L["frame_toolbar_guides_right"]))
		GameTooltip:Show()
	end)
	guideButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
	frames.guideButton = guideButton

	local prevButton = CreateFrame("Button", "ZGVRemasterPrevButton", toolbar)
	styleButton(prevButton, "<", 20, 20)
	styleCompositeButton(prevButton, "LeftArrow-WithBG")
	prevButton:SetPoint("LEFT", guideButton, "RIGHT", 8, 0)
	prevButton:SetScript("OnClick", function(selfBtn, button)
		if ZygorGuidesViewer then
			ZygorGuidesViewer:SkipStep(-1, button == "RightButton")
			if ZygorGuidesViewer.db.profile.flipsounds then
				PlaySound("igMiniMapZoomIn")
			end
		end
	end)
	prevButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_BOTTOMRIGHT")
		GameTooltip:SetText(ZygorGuidesViewer.L['frame_stepnav_prev'])
		GameTooltip:AddLine(ZygorGuidesViewer.L['frame_stepnav_prev_click'],0,1,0)
		GameTooltip:AddLine(ZygorGuidesViewer.L['frame_stepnav_prev_right'],0,1,0,1)
		GameTooltip:Show()
	end)
	prevButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
	prevButton:RegisterForClicks("LeftButtonUp","RightButtonUp")
	frames.prevButton = prevButton

	local nextButton = CreateFrame("Button", "ZGVRemasterNextButton", toolbar)
	styleButton(nextButton, ">", 20, 20)
	styleCompositeButton(nextButton, "RightArrow-WithBG")
	nextButton:SetPoint("LEFT", prevButton, "RIGHT", 4, 0)
	nextButton:SetScript("OnClick", function(selfBtn, button)
		if ZygorGuidesViewer then
			ZygorGuidesViewer:SkipStep(1, button == "RightButton")
			if ZygorGuidesViewer.db.profile.flipsounds then
				PlaySound("igMiniMapZoomIn")
			end
		end
	end)
	nextButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_BOTTOMLEFT")
		GameTooltip:SetText(ZygorGuidesViewer.L['frame_stepnav_next'])
		GameTooltip:AddLine(ZygorGuidesViewer.L['frame_stepnav_next_click'],0,1,0,1)
		GameTooltip:AddLine(ZygorGuidesViewer.L['frame_stepnav_next_right'],0,1,0,1)
		GameTooltip:Show()
	end)
	nextButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
	nextButton:RegisterForClicks("LeftButtonUp","RightButtonUp")
	frames.nextButton = nextButton

	local stepLabel = toolbar:CreateFontString(nil, "ARTWORK")
	stepLabel:SetPoint("LEFT", nextButton, "RIGHT", 8, 0)
	stepLabel:SetJustifyH("LEFT")
	stepLabel:SetTextColor(0.78, 0.82, 0.9, 1)
	if not safeSetRemasterFont(stepLabel, ZGV.DIR.."\\Skins\\segoeui.ttf", 11) then
		safeSetFont(stepLabel, STANDARD_TEXT_FONT, 11)
	end
	frames.stepLabel = stepLabel

	local closeButton = CreateFrame("Button", "ZGVRemasterCloseButton", header)
	styleButton(closeButton, "X", 20, 20)
	styleCompositeButton(closeButton, "X-WithBG")
	closeButton:SetPoint("RIGHT", header, "RIGHT", -8, 0)
	closeButton:SetScript("OnClick", function()
		HideUIPanel(ZygorGuidesViewerFrame)
	end)
	closeButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(L["frame_toolbar_close"])
		GameTooltip:AddLine(tipClick(L["frame_toolbar_close_click"]))
		GameTooltip:Show()
	end)
	closeButton:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frames.closeButton = closeButton

	local settingsButton = CreateFrame("Button", "ZGVRemasterSettingsButton", toolbar)
	styleButton(settingsButton, "S", 20, 20)
	styleCompositeButton(settingsButton, "Gear-WithBG")
	settingsButton:SetPoint("RIGHT", toolbar, "RIGHT", -8, 0)
	settingsButton:SetScript("OnClick", function(selfBtn, button)
		if button == "RightButton" then
			if ZGV and ZGV.ToggleGuideManagerFrame then
				ZGV:ToggleGuideManagerFrame("options")
			else
				ZygorGuidesViewer:OpenOptions()
			end
		else
			ZygorGuidesViewer:OpenQuickMenu(selfBtn)
		end
	end)
	settingsButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	settingsButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(L["frame_toolbar_settings"])
		GameTooltip:AddLine(tipClick(L["frame_toolbar_settings_click"]))
		GameTooltip:AddLine(tipRight(L["frame_toolbar_settings_right"]))
		GameTooltip:Show()
	end)
	settingsButton:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frames.settingsButton = settingsButton

	local miniButton = CreateFrame("Button", "ZGVRemasterMiniButton", toolbar)
	styleButton(miniButton, "M", 20, 20)
	styleCompositeButton(miniButton, "Menu-WithBG")
	miniButton:SetPoint("RIGHT", settingsButton, "LEFT", -6, 0)
	miniButton:SetScript("OnClick", function(selfBtn, button)
		if button == "LeftButton" then
			ZygorGuidesViewer:OpenQuickSteps()
		else
			if ZGV and ZGV.OpenGuideManagerStepDisplay then
				ZGV:OpenGuideManagerStepDisplay()
			elseif ZygorGuidesViewer and ZygorGuidesViewer.OpenStepDisplayOptions then
				ZygorGuidesViewer:OpenStepDisplayOptions()
			else
				ZygorGuidesViewer:SetOption("StepDisplay","showcountsteps "..(ZGV.db.profile.showallsteps and ZGV.db.profile.showcountsteps or 0))
			end
		end
	end)
	miniButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	miniButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(L["frame_toolbar_stepview"])
		if ZGV and ZGV.db and ZGV.db.profile then
			GameTooltip:AddLine(tipClick(L["frame_toolbar_stepview_setcount"]))
			GameTooltip:AddLine(tipRight((L["frame_toolbar_stepview_options"] or "to open Step Display options")))
		end
		GameTooltip:Show()
	end)
	miniButton:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frames.miniButton = miniButton

	local lockButton = CreateFrame("Button", "ZGVRemasterLockButton", toolbar)
	styleButton(lockButton, "L", 20, 20)
	styleCompositeButton(lockButton, "Unlocked-Lock-WithBG")
	lockButton:SetPoint("RIGHT", miniButton, "LEFT", -6, 0)
	lockButton:SetScript("OnClick", function()
		ZygorGuidesViewer:ToggleWindowLock()
	end)
	lockButton:SetScript("OnEnter", function(selfBtn)
		GameTooltip:SetOwner(selfBtn, "ANCHOR_TOPRIGHT")
		if ZygorGuidesViewer.db.profile["windowlocked"] then
			GameTooltip:SetText(L["frame_toolbar_unlock"])
			GameTooltip:AddLine(tipClick(L["frame_toolbar_unlock_click"]))
		else
			GameTooltip:SetText(L["frame_toolbar_lock"])
			GameTooltip:AddLine(tipClick(L["frame_toolbar_lock_click"]))
		end
		GameTooltip:Show()
	end)
	lockButton:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	frames.lockButton = lockButton

	self.RemasterFrames = frames
	return frames
end

local function LayoutRemasterFrames(frames, resizeup, showFooter, footerHeight)
	if not frames or not frames.root or not frames.header or not frames.toolbar or not frames.content then return end
	frames.header:ClearAllPoints()
	frames.toolbar:ClearAllPoints()
	frames.content:ClearAllPoints()
	if frames.footer then
		frames.footer:ClearAllPoints()
		frames.footer:SetHeight(footerHeight or 14)
	end
	if resizeup then
		frames.header:SetPoint("BOTTOMLEFT", frames.root, "BOTTOMLEFT", 6, 6)
		frames.header:SetPoint("BOTTOMRIGHT", frames.root, "BOTTOMRIGHT", -6, 6)
		frames.toolbar:SetPoint("BOTTOMLEFT", frames.header, "TOPLEFT", 0, 6)
		frames.toolbar:SetPoint("BOTTOMRIGHT", frames.header, "TOPRIGHT", 0, 6)
		frames.content:SetPoint("TOPLEFT", frames.root, "TOPLEFT", 6, -6)
		if showFooter and frames.footer then
			frames.footer:SetPoint("BOTTOMLEFT", frames.toolbar, "TOPLEFT", 0, 0)
			frames.footer:SetPoint("BOTTOMRIGHT", frames.toolbar, "TOPRIGHT", 0, 0)
			frames.content:SetPoint("BOTTOMRIGHT", frames.footer, "TOPRIGHT", 0, 0)
		else
			frames.content:SetPoint("BOTTOMRIGHT", frames.toolbar, "TOPRIGHT", 0, 10)
		end
		if frames.separator then
			frames.separator:ClearAllPoints()
			frames.separator:SetHeight(1)
			frames.separator:SetPoint("BOTTOMLEFT", frames.header, "TOPLEFT", 0, 2)
			frames.separator:SetPoint("BOTTOMRIGHT", frames.header, "TOPRIGHT", 0, 2)
		end
	else
		frames.header:SetPoint("TOPLEFT", frames.root, "TOPLEFT", 6, -6)
		frames.header:SetPoint("TOPRIGHT", frames.root, "TOPRIGHT", -6, -6)
		frames.toolbar:SetPoint("TOPLEFT", frames.header, "BOTTOMLEFT", 0, -6)
		frames.toolbar:SetPoint("TOPRIGHT", frames.header, "BOTTOMRIGHT", 0, -6)
		frames.content:SetPoint("TOPLEFT", frames.toolbar, "BOTTOMLEFT", 0, -10)
		if showFooter and frames.footer then
			frames.footer:SetPoint("BOTTOMLEFT", frames.root, "BOTTOMLEFT", 6, 8)
			frames.footer:SetPoint("BOTTOMRIGHT", frames.root, "BOTTOMRIGHT", -6, 8)
			frames.content:SetPoint("BOTTOMRIGHT", frames.footer, "TOPRIGHT", 0, 0)
		else
			frames.content:SetPoint("BOTTOMRIGHT", frames.root, "BOTTOMRIGHT", -6, 8)
		end
		if frames.separator then
			frames.separator:ClearAllPoints()
			frames.separator:SetHeight(1)
			frames.separator:SetPoint("TOPLEFT", frames.header, "BOTTOMLEFT", 0, -2)
			frames.separator:SetPoint("TOPRIGHT", frames.header, "BOTTOMRIGHT", 0, -2)
		end
	end
	if frames.footer then
		if showFooter then
			frames.footer:Show()
		else
			frames.footer:Hide()
		end
	end
	if frames.footerSeparator then
		frames.footerSeparator:ClearAllPoints()
		frames.footerSeparator:SetPoint("TOPLEFT", frames.footer, "TOPLEFT", 0, 0)
		frames.footerSeparator:SetPoint("TOPRIGHT", frames.footer, "TOPRIGHT", 0, 0)
	end
end


local math_modf=math.modf
math.round=function(n) local x,y=math_modf(n) return n>0 and (y>=0.5 and x+1 or x) or (y<=-0.5 and x-1 or x) end
local round=math.round

function me:OnInitialize() 

--	if not ZygorGuidesViewerMiniFrame then error("Zygor Guide Viewer step frame not loaded.") end
	if not ZygorGuidesViewerFrame then error("Zygor Guide Viewer frame not loaded.") end
	
	self.db = LibStub("AceDB-3.0"):New("ZygorGuidesViewerSettings")

	self:Debug ("Initializing...")

	self:Options_RegisterDefaults()
	
	--self.db:SetProfile("char/"..UnitName("player").." - "..GetRealmName())

	self:Options_DefineOptions()

	self.optionsprofile = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)

	if IsShiftKeyDown() then
		self.db.char.maint_startguides = false
		self.db.char.maint_queryquests = false
		self.db.char.maint_fetchquestdata = false
		self.db.char.maint_fetchitemdata = false
		ZygorGuidesViewerMaintenanceFrame_StartGuides:SetChecked(self.db.char.maint_startguides)
		ZygorGuidesViewerMaintenanceFrame_QueryQuests:SetChecked(self.db.char.maint_queryquests)
		ZygorGuidesViewerMaintenanceFrame_FetchQuestData:SetChecked(self.db.char.maint_fetchquestdata)
		ZygorGuidesViewerMaintenanceFrame_FetchItemData:SetChecked(self.db.char.maint_fetchitemdata)

		ZygorGuidesViewerMaintenanceFrame:Show()
	else
		self.db.char.maint_startguides = true
		self.db.char.maint_queryquests = true
		self.db.char.maint_fetchquestdata = true
		self.db.char.maint_fetchitemdata = true
	end

	self.db.char.completedQuests=nil --wipe and flush

	self.CurrentStepNum = self.db.char.step
	self.CurrentGuideName = self.db.char.guidename

	self.QuestCacheTime = 0
	self.QuestCacheUndertimeRepeats = 0
	self.StepCompletion = {}
	self.recentlyAcceptedQuests = {}
	--self.recentlyCompletedQuests = {}
	self.LastSkip = 1

	self.instantQuests = {}
	self.dailyQuests = self.dailyQuests or {}

	self.completionelapsed = 0
	self.completionintervallong = 1.0
	self.completionintervalmin = 0.01
	self.completioninterval = self.completionintervallong

	self:ClearRecentActivities() -- just to make sure they're not nils

	--self.AutoskipTemp = true

	self.Frame = ZygorGuidesViewerFrame

	self.frameNeedsResizing = 0

	self.Frame:SetScale(self.db.profile.framescale)
	self:UpdateLocking()
	self:ReanchorFrame()

	self.TomTomWaypoints = {}

	self.quests = {}
	self.questsbyid = {}
	self.reputations = {}

	self.bandwidth = 0

	--LibSimpleOptions.AddOptionsPanel("Zygor's Guide",function(self) MakeOptionsControls(self,ZGV.options,ZGV) end)
	--LibSimpleOptions.AddSuboptionsPanel("Zygor's Guide",ZGV.options.args.map.name, function(self) MakeOptionsControls(self,ZGV.options.args.map,ZGV) end)
	--LibSimpleOptions.AddSuboptionsPanel("Zygor's Guide",ZGV.options.args.addons.name, function(self) MakeOptionsControls(self,ZGV.options.args.addons,ZGV) end)
	--LibSimpleOptions.AddSlashCommand("Zygor's Guide","/zygoropt")

	self:Options_SetupConfig()
	self.blizConfigPending = true

--	self:Echo(L["initialized"])
	self:Debug ("Initialized.")

	-- Hide internal waypoint marker frames from minimap button collectors (Carbonite, bag addons, etc.).
	if not self._minimapGetChildrenPatched then
		local trueMinimapGetChildren = Minimap and Minimap.GetChildren
		if trueMinimapGetChildren then
			Minimap.GetChildren = function(frame)
				local res = { trueMinimapGetChildren(frame) }
				for i=#res,1,-1 do
					local child = res[i]
					if child and child.isZygorWaypoint then
						table.remove(res, i)
					end
				end
				return unpack(res)
			end
			self._minimapGetChildrenPatched = true
		end
	end


	self.deferredWorldStartupPending = true

	if ZygorTalentAdvisor and ZygorTalentAdvisor.revision > self.revision then
		self.revision = ZygorTalentAdvisor.revision
		self.version = ZygorTalentAdvisor.version
		self.date = ZygorTalentAdvisor.date
	end

	if self.LocaleFont then FONT=self.LocaleFont end
	
	-- home detection, fire-and-forget style.
	hooksecurefunc("ConfirmBinder",function() ZygorGuidesViewer.recentlyHomeChanged=true end)
end

function me:OnEnable()
	self:Debug("enabling")

	if self.db.profile["visible"] then self:ToggleFrame() end

	self:ApplyMapButtonPosition()
	ZygorGuidesViewerMapIcon:Show()

	self:UpdateMapButton()
	self:UpdateSkin()
	self.optionalUiProfilePending = true

	self:Debug("enabled")

	self:AddEvent("UNIT_INVENTORY_CHANGED")
	self:AddEvent("BAG_UPDATE","LiveProgressEvent")
	self:AddEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH","LiveProgressEvent")
	self:AddEvent("CHAT_MSG_COMBAT_XP_GAIN","LiveProgressEvent")
	self:AddEvent("QUEST_LOG_UPDATE","LiveProgressEvent")
	self:AddEvent("QUEST_WATCH_UPDATE","LiveProgressEvent")

	-- combat detection for hiding in combat
	self:AddEvent("PLAYER_REGEN_DISABLED")
	self:AddEvent("PLAYER_REGEN_ENABLED")

	self:AddEvent("SPELL_UPDATE_COOLDOWN")

	self:AddEvent("PLAYER_CONTROL_GAINED")  -- try to force current zone updates; should prevent GoTo lines from locking up after a taxi flight

	--self.startuptimer = self:ScheduleRepeatingTimer("StartupTimer", 0.1)

	self.LibRover = self.LibRover or _G.LibRover
	if self.db.profile.travel_use_librover and self.db.profile.pathfinding and self.LibRover and self.LibRover.DoStartup and not self.LibRover.ready and not self.LibRover.startup_thread then
		self.LibRover:DoStartup()
	end

	-- startup 'modules'
	for i,startup in ipairs(self.startups) do
		if type(startup) == "function" then
			startup(self)
		elseif type(startup) == "table" and type(startup[2]) == "function" then
			startup[2](self)
		end
	end

	self.deferredWorldStartupPending = true

	-- Travel Advisor (lightweight cross-zone routing, no heavy node graph)
	-- Initialized in Waypoints.lua

	self.Log.entries = self.db.char.debuglog
	self.Log:Add("Viewer started. ---------------------------")

	self.ConditionEnv:_Setup()

	-- waiting for QUEST_LOG_UPDATE for true initialization...
	--self:QueryQuests()

	if ZGV_DEV then ZGV_DEV() end
end

function me:EnsureOptionalUIProfile(force)
	if not force and not self.optionalUiProfilePending then return end
	self.optionalUiProfilePending = nil
	if self.ActionButtons_ApplyProfile then
		self:ActionButtons_ApplyProfile()
	end
	if self.TargetPreview_ApplyProfile then
		self:TargetPreview_ApplyProfile()
	end
end

function me:EnsureDeferredWorldStartup(force)
	if not force and not self.deferredWorldStartupPending then return end
	self.deferredWorldStartupPending = nil
	if self.LibTaxi then
		if not self.db.char.taxis then self.db.char.taxis = {} end
		self.LibTaxi:Startup(self.db.char.taxis)
	end
	if self.Pointer then self.Pointer:Startup() end
	if self.Foglight then self.Foglight:Startup() end
	self:SetWaypointAddon(self.db.profile.waypointaddon)
	self:PruneNPCs()
end

function me:OnDisable()
--	self:UnregisterAllEvents()
	UnsetWaypointAddon()

	ZygorGuidesViewerMapIcon:Hide()
	self.Frame:Hide()
	if self.ActionButtonBar then self.ActionButtonBar:Hide() end
end



-- my event handling. Multiple handlers allowed, just for the heck of it.

local meta_newtables = {__index = function(tbl, key) tbl[key] = {} return tbl[key] end}
me.Events=setmetatable({},meta_newtables)
function me:AddEvent(event,func)
	tinsert(self.Events[event],func or true)
	if #self.Events[event]==1 then self:RegisterEvent(event,"EventHandler") end
end
function me:EventHandler(event,...)
	for i,hand in ipairs(self.Events[event]) do
		local func
		if type(hand)=="function" then
			func=hand
		elseif type(hand)=="string" then
			func=self[hand]
			assert(func,"No function "..hand.." in event handler!")
		elseif hand==true then
			func=self[event]
			assert(func,"No function "..event.." in event handler!")
		end
		func(self,event,...)
	end
end



function me:OnFirstQuestLogUpdate()
	if not self.guidesloaded then return end -- let the OnGuidesLoaded func call us.
	if self.questLogInitialized then return end

	if self.db.char["starting"] then
		self:Print("First start! Finding proper starter section.")
		local i = self:FindDefaultGuide()
		if i then
			self.db.char.guidename = self.registeredguides[i].title
			self.db.char.step = 1
			self.Frame:Show()
		end
		self.db.char["starting"] = false
	end

	if ZGV.db.char.maint_startguides then
		self:SetGuide(self.db.char.guidename,self.db.char.step)
	end

	self.frameNeedsResizing = 1
	self:AlignFrame()
	self:UpdateFrame(true)
	self.questLogInitialized = true
	if self.deferredWorldStartupPending and self.ScheduleTimer then
		self:ScheduleTimer(function()
			if ZGV and ZGV.EnsureDeferredWorldStartup and ZGV.questLogInitialized then
				ZGV:EnsureDeferredWorldStartup()
			end
		end, 0.20)
	elseif self.deferredWorldStartupPending and self.EnsureDeferredWorldStartup then
		self:EnsureDeferredWorldStartup()
	end
	if self.optionalUiProfilePending and self.Frame and self.Frame:IsShown() and self.ScheduleTimer then
		self:ScheduleTimer(function()
			if ZGV and ZGV.EnsureOptionalUIProfile and ZGV.Frame and ZGV.Frame:IsShown() and ZGV.questLogInitialized then
				ZGV:EnsureOptionalUIProfile()
			end
		end, 0.20)
	end
end

function me:GetGuideByTitle(title)
	for i,v in ipairs(self.registeredguides) do
		if v.title==title then return v end
	end
end

function me:IsGuideParsed(guideOrTitle)
	local guide = guideOrTitle
	if type(guideOrTitle)=="string" then
		guide = self:GetGuideByTitle(guideOrTitle)
	elseif type(guideOrTitle)=="number" then
		guide = self.registeredguides[guideOrTitle]
	end
	return guide and guide.parsed or false
end

me.parsedGuideCacheLimit = 3
me._parsedGuideTouchCounter = me._parsedGuideTouchCounter or 0

function me:MarkGuideRecentlyParsed(guide)
	if not guide then return end
	self._parsedGuideTouchCounter = (self._parsedGuideTouchCounter or 0) + 1
	guide._parsedTouch = self._parsedGuideTouchCounter
end

function me:UnloadParsedGuide(guide)
	if not guide or not guide.parsed then return false end
	if self.CurrentGuide and guide == self.CurrentGuide then return false end
	if guide._parsing then return false end
	guide.steps = nil
	guide.labels = nil
	guide.parsed = false
	return true
end

function me:TrimParsedGuideCache()
	local limit = tonumber(self.parsedGuideCacheLimit or 3) or 3
	if limit < 1 then limit = 1 end

	local protected = {}
	if self.CurrentGuide then
		protected[self.CurrentGuide] = true
		if self.CurrentGuide.prev then
			local prevGuide = self:GetGuideByTitle(self.CurrentGuide.prev)
			if prevGuide and prevGuide.parsed then protected[prevGuide] = true end
		end
		if self.CurrentGuide.next then
			local nextGuide = self:GetGuideByTitle(self.CurrentGuide.next)
			if nextGuide and nextGuide.parsed then protected[nextGuide] = true end
		end
	end

	local parsed = {}
	for _,guide in ipairs(self.registeredguides) do
		if guide and guide.parsed and guide.steps then
			tinsert(parsed,guide)
		end
	end
	if #parsed <= limit then return end

	table.sort(parsed,function(a,b)
		return (a._parsedTouch or 0) < (b._parsedTouch or 0)
	end)

	local keep = #parsed
	for _,guide in ipairs(parsed) do
		if keep <= limit then break end
		if not protected[guide] and self:UnloadParsedGuide(guide) then
			keep = keep - 1
		end
	end
end

function me:EnsureGuideParsed(guideOrTitle,allowRetry)
	local guide = guideOrTitle
	if type(guideOrTitle)=="string" then
		guide = self:GetGuideByTitle(guideOrTitle)
	elseif type(guideOrTitle)=="number" then
		guide = self.registeredguides[guideOrTitle]
	end
	if not guide then return nil,false end
	if guide.parsed then return guide,true end
	if guide.parse_failed and not allowRetry then return guide,false end
	if not guide.rawdata then
		guide.parsed = true
		guide.parse_failed = nil
		self:MarkGuideRecentlyParsed(guide)
		return guide,true
	end

	guide._parsing = true
	local status,parsed,err,line,linedata = pcall(self.ParseEntry,self,guide.rawdata)
	guide._parsing = nil
	if status and parsed then
		for k,v in pairs(parsed) do guide[k]=v end
		guide.parsed=true
		guide.parse_failed=nil
		self:MarkGuideRecentlyParsed(guide)
		self:TrimParsedGuideCache()
		return guide,true
	end

	if not status then err=parsed end
	if err then
		self:Print(L["message_errorloading_full"]:format(guide.title,line or 0,linedata or "???",err))
	else
		self:Print(L["message_errorloading_brief"]:format(guide.title))
	end
	guide.parse_failed=true
	return guide,false
end

function me:GetRememberedGuideStep(title)
	if not title or not self.db or not self.db.char then return nil end
	self.db.char.guide_progress = self.db.char.guide_progress or {}
	local rec = self.db.char.guide_progress[title]
	if rec and rec.step and rec.step > 0 then
		return rec.step
	end
	local history = self.db.char.guides_history or {}
	for i = #history, 1, -1 do
		local h = history[i]
		if h and h.full == title and h.step and h.step > 0 then
			return h.step
		end
	end
	return nil
end

function me:SetGuide(name,step,temp)
	if not name then return end
	self:Debug("SetGuide "..tostring(type(name)=="table" and (name.title or "table") or name).." ("..tostring(step))

	local guide
	if type(name)=="table" then
		-- Guide object passed directly (e.g. from Gold Guide)
		guide = name
	elseif type(name)=="number" then
		local num = name
		if self.registeredguides[num] then
			guide = self.registeredguides[num]
		else
			self:Print("Cannot find guide number: "..num)
			--return false
		end
	else
		guide = self:GetGuideByTitle(name)
		if not guide then
			self:Print("Cannot find guide: "..tostring(name))
			self:Debug("Cannot find guide: "..tostring(name))
			return false
		end
	end

	--if guide.is_stored then guide = self.db.global.storedguides[name] end

	if guide and not guide.steps then
		guide = self:EnsureGuideParsed(guide,true)
	end

	if guide and guide.steps then
		--self.MapNotes = _G["ZygorGuides_"..faction.."Mapnotes"]
		local name = guide.title

		self.CurrentGuide = guide
		self:MarkGuideRecentlyParsed(self.CurrentGuide)

		self:Print(L["message_loadedguide"]:format(name))

		self.CurrentGuideIsTemporary = temp

		self.CurrentGuideName = name
		if not temp then
			self.db.char.guidename = name
		end

		if not step then
			step = self:GetRememberedGuideStep(name) or 1
		end


		if #self.CurrentGuide.steps<step then
			step = 1
		end

		self:QuestTracking_ResetDailies(true)

		self:Debug("Guide loaded: "..name)
		
		self:FocusStep(step)
		self:TrimParsedGuideCache()

		ZygorGuidesViewerFrame_Border_GuideButton:UnlockHighlight()
	else
		if not (guide and guide.parse_failed) then
			self:Print(L["message_missingguide"]:format(name))
		end
		self.db.char['guide'] = nil
		self.db.char['step'] = nil
		self.CurrentGuide = nil
	end

	self:UpdateFrame(true)
end

function me:FindDefaultGuide()
	for i,guide in ipairs(self.registeredguides) do
		if guide.defaultfor and self:RaceClassMatch(guide.defaultfor,true) then return i end
	end
	return nil
end

-- function me:SearchForCompleteableGoal() --removed

function me:ClearRecentActivities()
	self.recentlyVisitedCoords = {}
	self.recentlyCompletedGoals = {}
	self.recentlyAcceptedQuests = {}
	self.recentlyStickiedGoals = {}
	self.stepFirstGotoReached = {}
	self.recentGoalProgress = {}
	self.recentCooldownsPulsing = {}
	self.recentCooldownsStarted = {}
	self.recentlyHomeChanged = false
	self.recentlyDiscoveredFlightpath = false
	self.recentlyLearnedRecipes = {}
	self.recentKills = {}
	self.completedQuestTitles = {}
end

function me:FocusStep(num,quiet)
	if not num or num<=0 then return end
	if not self.CurrentGuide then return end
	if not self.CurrentGuide.steps then
		self:EnsureGuideParsed(self.CurrentGuide)
	end
	if not self.CurrentGuide.steps then return end
	if num>#self.CurrentGuide.steps then return end

	if self:InlineButtonsEnabled() and InCombatLockdown() and self.inlineRenderedStepNum then
		self.pendingInlineCombatRefresh = true
	end

	self:Debug("FocusStep "..num..(quiet and " (quiet)" or ""))

	self.CurrentStepNum = num
	if not self.CurrentGuideIsTemporary then
		self.db.char.step = num
		self.db.char.guide_progress = self.db.char.guide_progress or {}
		self.db.char.guide_progress[self.CurrentGuideName] = {
			step = num,
			updated = time(),
		}
	end
	self.CurrentStep = self.CurrentGuide["steps"][num]

	self:ClearRecentActivities()

	-- Abort any pending LibRover pathfinding from previous step
	if self.ClearLibRoverPath then self:ClearLibRoverPath() end

	self.CurrentStep:PrepareCompletion()

	self.stepchanged = true

	for i,goal in ipairs(self.CurrentStep.goals) do
		if goal:IsComplete() then self.recentlyCompletedGoals[goal]=true end
	end

	if not quiet then
		--self:HighlightCurrentStep()

		self:StopFlashAnimation()
		self.frameNeedsResizing = self.frameNeedsResizing + 1
		self:UpdateFrame(true)
		self:ScrollToCurrentStep()
		self:UpdateCooldowns()
		local isRemasterCompactGuide = self.db
			and self.db.profile
			and self:IsRemasterSkin()
			and self.db.profile.displaymode == "guide"
			and not self.db.profile.showallsteps
		if self.ScheduleTimer and not isRemasterCompactGuide then
			self:ScheduleTimer(function()
				if ZGV and ZGV.UpdateFrameCurrent then
					ZGV:UpdateFrameCurrent()
					if ZGV.ActionButtons_Refresh then ZGV:ActionButtons_Refresh(true) end
					if ZGV.TargetPreview_Refresh then ZGV:TargetPreview_Refresh(true) end
				end
			end, 0.05)
			self:ScheduleTimer(function()
				if ZGV and ZGV.UpdateFrameCurrent then
					ZGV:UpdateFrameCurrent()
					if ZGV.ActionButtons_Refresh then ZGV:ActionButtons_Refresh(true) end
					if ZGV.TargetPreview_Refresh then ZGV:TargetPreview_Refresh(true) end
				end
			end, 0.20)
		end

		self:UpdateCartographerExport()
		self:SetWaypoint()
	end
	--self:UpdateMinimapArrow(true)

	local stepcomplete,steppossible,stepmanual = self.CurrentStep:IsComplete()
	if self.pause then
		if (self.db.profile.skipimpossible and not steppossible and not stepmanual)
		or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
		or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable()) then
			stepcomplete=true
			--self.pause=nil
		end
		self.LastSkip=1
		if not stepcomplete then
			self:Debug("unpausing")
			self.pause=nil
		end
	end
	--and self.LastSkip~=0) then self.AutoskipTemp=false else self.AutoskipTemp=true end

	-- add to last-guides history
	local history = self.db.char.guides_history
	local foundIndex
	for i,g in ipairs(history) do
		if g.full==self.CurrentGuideName then
			-- update
			g.step=num
			foundIndex=i
			break
		end
	end
	if foundIndex then
		-- Keep history truly "recent": move touched guide to the end.
		local touched = tremove(history, foundIndex)
		tinsert(history, touched)
	else
		tinsert(history,{full=self.CurrentGuideName,short=self.CurrentGuide.title_short,step=num})
		if #history>self.db.profile.guidesinhistory then tremove(history,1) end
	end

	self:AnimateGears()
end

function me:FocusStepQuiet(num)
	return self:FocusStep(num,true)
end

--- A quest is 'interesting' if any follow-ups to it appear anywhere in the guides and they're not gray.
function me:GetMentionedFollowups(questid)
	local q,f
	local live = {questid}
	local fups = {}
	local lev
	while #live>0 do
		q = tremove(live,1)
		lev = self.mentionedQuests[q]
		if lev then tinsert(fups,{q,lev}) end

		f = self.RevChains[q]
		if f then
			for i=1,#f do
				tinsert(live,f[i])
			end
		end
	end
	return fups
end

-- A quest's "maximum chained level" can be safely cached, I guess.
function me:CacheMentionedFollowups()
	local f,maxlev
	self.maxQuestLevels = {}
	for qid=1,30000 do
		if self.mentionedQuests[qid] then
			f=ZGV:GetMentionedFollowups(qid)
			maxlev=0
			for i=1,#f do
				if f[i][2]>maxlev then maxlev=f[i][2] end
			end
			self.maxQuestLevels[qid]=maxlev
		end
	end
end

function me:ListMentionedQuests()
	self.mentionedQuests = {}
	local guide = self:FindDefaultGuide()
	if guide then guide=self.registeredguides[guide] else return end
	while guide do
		if not guide.quests and not guide.parse_failed then
			self:EnsureGuideParsed(guide)
		end
		if guide.quests then for qid,lev in pairs(guide.quests) do self.mentionedQuests[qid]=lev end end
		guide.quests=nil

		guide = self:GetGuideByTitle(guide.next)
	end
	self:TrimParsedGuideCache()
end
	
--- Attempt to complete current step.
-- 09-09-24: 
function me:TryToCompleteStep(force)
	if not self.CurrentStep then return end
	local triedStepBefore = self.lasttriedstep
	local wasCompletedBefore = self.lastwascompleted
	local previousGoalStateSig = self.lastCurrentStepGoalStateSig

	-- prevent overtime checks
	if self.completionelapsed<=self.completioninterval and not force then
		self.completionelapsed=self.completionelapsed+0.1
		return
	end
	self.completionelapsed = 0
	if self.questAutoAdvancePauseUntil and GetTime and GetTime() < self.questAutoAdvancePauseUntil then
		return
	end

	-- frame hidden? bail.
	if not self.Frame:IsVisible() or self.Frame:GetAlpha()<0.1 then return end
	--if InCombatLockdown() then return end

	--local skipped=0
	--local updated

	local stepcomplete,steppossible,stepmanual = self.CurrentStep:IsComplete()

	local completing = stepcomplete

	local function TryJumpFromCurrentStep()
		if not self.CurrentStep then return false end
		for _,goal in ipairs(self.CurrentStep.goals) do
			local nextdest = goal.next or self.CurrentStep.next
			if nextdest and goal:IsVisible() then
				local jumpnow = false
				if goal:IsCompleteable() then
					local complete = goal:IsComplete()
					jumpnow = complete and true or false
				else
					jumpnow = true
				end
				if jumpnow then
					local stepnum,guidename = self.CurrentStep:GetJumpDestination(nextdest)
					if not guidename then return false end
					if guidename~=self.CurrentGuideName then
						if self:GetGuideByTitle(guidename) then
							self:SetGuide(guidename,stepnum or 1)
							return true
						end
						return false
					end
					if not stepnum then return false end
					if stepnum<1 then stepnum=1 end
					if stepnum>#self.CurrentGuide.steps then stepnum=#self.CurrentGuide.steps end
					if stepnum~=self.CurrentStepNum then
						self:FocusStep(stepnum)
						return true
					end
				end
			end
		end
		return false
	end

	-- smart skipping: treat impossible or skippable as completed
	if (self.db.profile.skipimpossible and not steppossible and not stepmanual)
	or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
	or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable()) then
		completing=true
		--self.pause=nil
	end

	if not completing then
		self.pause=nil
		self.completioninterval = self.completionintervallong
	end

	if self.pause then
		self.completioninterval = self.completionintervallong
		self.LastSkip = 1
	else
		if completing then
			if self.CurrentStep and self.CurrentStep.condition_until and not self.CurrentStep.condition_until() then
				self:Debug("Repeating step "..self.CurrentStepNum.." until condition: "..tostring(self.CurrentStep.condition_until_raw))
				self:FocusStep(self.CurrentStepNum)
				return
			end
			if TryJumpFromCurrentStep() then return end
			--self.recentlyCompletedQuests = {} -- forget it! We're skipping the step, already.
			self:Debug("Skipping step: "..self.CurrentStepNum.." ("..(stepcomplete and "complete" or (steppossible and "possible?" or "impossible"))..")")

			if self.lasttriedstep and self.lasttriedstep==self.CurrentStep and not self.lastwascompleted then
				--newly completed!
				PlaySound(self.db.profile.completesound)
				if self.db.profile.flashborder then
					self.delayFlash=1
				end
			end

			self:SkipStep(self.LastSkip,true)
			self.fastforward=true

			self.completioninterval = self.completioninterval * 0.9
			if self.completioninterval<self.completionintervalmin then self.completioninterval=self.completionintervalmin end
			--skipped=skipped+1
			--if skipped>100 then break end

			--self:UpdateFrame()
			--updated=true

			--self.completioninterval = self.completionshortinterval


			--ZygorGuidesViewerFrame_CoverFlash_blink:Play()

			--stepcomplete = self.CurrentStep:IsComplete()
		else
			self.completioninterval = self.completionintervallong
			self.pause=nil
			self.fastforward=nil
			self.LastSkip = 1
			--self.completioninterval = self.completionlonginterval
		end

		--[[
		if updated and not self.db.profile.showallsteps then
			self.stepframes[1].slideup:Play()
		end
		--]]

		--if not stepcomplete then self.AutoskipTemp=true end

		--if not updated then self:UpdateFrame() end
	end

	local goalStateSig
	if self.CurrentStep and self.CurrentStep.goals then
		local parts = {}
		for gi,goal in ipairs(self.CurrentStep.goals) do
			if goal:IsVisible() then
				local status,detail = goal:GetStatus()
				parts[#parts+1] = gi .. ":" .. tostring(status) .. ":" .. tostring(detail)
			end
		end
		goalStateSig = table.concat(parts, "|")
	end

	local stepStateChanged =
		(triedStepBefore ~= self.CurrentStep)
		or (wasCompletedBefore ~= stepcomplete)
		or (self.frameNeedsUpdating and true or false)

	if stepStateChanged then
		self:UpdateFrame()
		-- Keep arrow target synced when the visible step state actually changed.
		self:SetWaypoint()
	elseif previousGoalStateSig ~= goalStateSig then
		-- Goal text such as "(#/x)" lives in the full step-line rebuild, not the
		-- current-step color/icon pass. Refresh the viewer without re-pointing the
		-- arrow when only per-goal progress changed.
		self:UpdateFrame()
		if self.CurrentStep and self.CurrentStep.goals then
			for _,goal in ipairs(self.CurrentStep.goals) do
				if goal.routegroup and goal:IsVisible() then
					self:SetWaypoint()
					break
				end
			end
		end
	end

	self.lasttriedstep = self.CurrentStep
	self.lastwascompleted = stepcomplete
	self.lastCurrentStepGoalStateSig = goalStateSig
end



function me:InitializeDropDown(frame)
	if not self.guidesloaded then return end

	local guides = ZygorGuidesViewer.registeredguides
	
	if not guides then return end
	
	for i,guide in ipairs(guides) do

--		ChatFrame1:AddMessage(section)
		local info = {}
		info.text = guide.title
		info.value = guide.title
		info.func = ZGVFSectionDropDown_Func
		if (self.CurrentGuideName == guide.title) then
			info.checked = 1
		else
			info.checked = nil
		end
		info.button = 1
--		if (i == 1) then
--			info.isTitle = 1
--		end
		UIDropDownMenu_AddButton(info)
	end
	UIDropDownMenu_SetText(frame, self.CurrentGuideName)
end


function me:UpdateLocking()
	-- remove mouse activity in lock mode
	local locked = self.db.profile["windowlocked"]
	--self:Debug("lock mode: "..tostring(locked))

	ZygorGuidesViewerFrame_Border_TitleBar:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottom:EnableMouse(not locked)

	ZygorGuidesViewerFrameScroll:EnableMouseWheel(not locked)

	if self.stepframes then
		for s,st in ipairs(self.stepframes) do
			st:EnableMouse(not locked)
		--[[
			for l,ln in ipairs(st.lines) do
				ln.clicker:EnableMouse(not locked)
			end
		]]
		end
	end

	-- lock button
	if self.db.profile["windowlocked"] then
		ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexCoord(0.375,0.500,0.00,0.25)
		ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexCoord(0.375,0.500,0.25,0.50)
		ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexCoord(0.375,0.500,0.50,0.75)
	else
		ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexCoord(0.250,0.375,0.00,0.25)
		ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexCoord(0.250,0.375,0.25,0.50)
		ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexCoord(0.250,0.375,0.50,0.75)
	end

	if self:IsRemasterSkin() and self.RemasterFrames and self.RemasterFrames.lockButton then
		local btn = self.RemasterFrames.lockButton
		btn:SetNormalTexture(nil)
		btn:SetPushedTexture(nil)
		btn:SetHighlightTexture(nil)
		btn:SetText("")
		if btn.rmDarkArrow then
			local darkDir = "Interface\\AddOns\\"..(addonName or "ZygorGuidesViewer").."\\Skin\\rm_dark\\"
			btn.rmDarkArrow:SetTexture(darkDir..(locked and "Locked-Lock-WithBG" or "Unlocked-Lock-WithBG"))
			btn.rmDarkArrow:SetBlendMode("BLEND")
		end
	end

	if self.db.profile["showallsteps"] then
		ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexCoord(0.000,0.125,0.0,0.25)
		ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexCoord(0.000,0.125,0.25,0.5)
		ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexCoord(0.000,0.125,0.50,0.75)
	else
		ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexCoord(0.125,0.250,0.00,0.25)
		ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexCoord(0.125,0.250,0.25,0.50)
		ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexCoord(0.125,0.250,0.50,0.75)
	end
end

function me:StopFlashAnimation()
	if not self.stepframes[1] then return end
	for s=1,20 do
		if not (self.stepframes[s] and self.stepframes[s].lines) then break end
		for i=1,20,1 do
			local anim_w2g = self.stepframes[s].lines[i].anim_w2g
			if not anim_w2g then break end
			anim_w2g:Stop()
		end
	end
end

--[[
function me:HideCooldown(arg)
	arg.cooldown:Hide()
	self.recentCooldownsPulsing[goal] = 2
end
--]]

function me:UpdateCooldowns()
	--self:Debug("UpdateCooldowns")
	if not self.CurrentStep then return end
	local stepframe = self.stepframes[self.CurrentStepframeNum]
	if not stepframe then return end
	for i=1,20,1 do
		local line = stepframe.lines[i]
		local cooldown = line and line.cooldown
		local goal = line.goal
		if goal and goal:IsActionable() then
			--cooldown:Show()
			--self:Debug("goal "..i.." actionable")
			if goal.castspell or goal.castspellid then
				local start,dur,en = GetSpellCooldown(goal.castspellid or goal.castspell)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
				--self:Debug(("spell: %d,%d,%d"):format(start,dur,en))
			elseif goal.useitem or goal.useitemid then
				local start,dur,en = GetItemCooldown(goal.useitemid or goal.useitem)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
				--self:Debug(("item: %d,%d,%d"):format(start,dur,en))
			elseif goal.petaction then
				local num,name,x,tex
				if type(goal.petaction)=="number" then
					num = goal.petaction
				else
					num,name,x,tex = FindPetActionInfo(goal.petaction)
				end
				local start,dur,en = GetPetActionCooldown(num)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
			else
				cooldown:Hide()
			end
		else
			cooldown:Hide()
		end
	end
	if self.ActionButtons_UpdateCooldowns then
		self:ActionButtons_UpdateCooldowns()
	end
end

local function gradient(a,b,p)
	return a+(b-a)*p
end

local function fromRGBA(ob)
	return ob.r,ob.g,ob.b,ob.a
end

local function fromRGB_a(ob,a)
	return ob.r,ob.g,ob.b,a
end

local function fromRGBmul_a(ob,mul,a)
	return ob.r*mul,ob.g*mul,ob.b*mul,a
end

local function fromRGB(ob)
	return ob.r,ob.g,ob.b
end

--local function gradientRGBA(f,t,p)  --removed

--function me:

function me:SetDisplayMode(mode)
	self.db.profile.displaymode=mode
	self:UpdateFrame(true)
end

local Tpi=6.2832
local cardinals = {"N","NW","W","SW","S","SE","E","NE","N"}
local function GetCardinalDirName(angle)
	for i=1,9 do
		if Tpi*((i*2)-1)/16>angle then return cardinals[i] end
	end
end
function GetCardinalDirNum(angle)
	while angle<0 do angle=angle+Tpi end
	while angle>Tpi do angle=angle-Tpi end
	local ret=1
	for i=1,16 do
		if Tpi*((i*2)-1)/32>angle then ret=i break end
	end
	return ret
end

local itemsources={"vendor","drop","ore","herb","skin"}

local gold_ox,gold_oy=0,0

function me:UpdateFrame(full,onupdate,nonsecure_only)
	if full then self.stepchanged=true end

	if not self.Frame or not self.Frame:IsVisible() then return end

	nonsecure_only = nonsecure_only or (InCombatLockdown() and self:InlineButtonsEnabled())

	self.compactContentHeight = nil

	if self:InlineButtonsEnabled() and InCombatLockdown() and self.inlineRenderedStepNum and self.inlineRenderedStepNum ~= self.CurrentStepNum then
		self.pendingInlineCombatRefresh = true
	end

	self:EnsureSectionTitleFont()
	if self.db and self.db.profile and self:IsRemasterSkin() then
		if not self.remasterApplied then
			self:ApplyRemasterSkin()
		end
		self:UpdateRemasterHeader()
		local remasterFrames = self:EnsureRemasterFrames()
		local compactMetrics = self:GetCompactGuideLayoutMetrics()
		local compactGuide = self.db
			and self.db.profile
			and self.db.profile.displaymode == "guide"
			and not self.db.profile.showallsteps
		local showProgressFooter = compactGuide and self.db.profile.showguideprogressbar ~= false
		LayoutRemasterFrames(
			remasterFrames,
			self.db and self.db.profile and self.db.profile.resizeup,
			showProgressFooter,
			showProgressFooter and math.max(compactMetrics.progressReserve, 8) or 0
		)
		if ZygorGuidesViewerFrameScroll and remasterFrames and remasterFrames.content then
			ZygorGuidesViewerFrameScroll:ClearAllPoints()
			ZygorGuidesViewerFrameScroll:SetParent(remasterFrames.content)
			ZygorGuidesViewerFrameScroll:SetPoint("TOPLEFT", remasterFrames.content, "TOPLEFT", 0, -2)
			ZygorGuidesViewerFrameScroll:SetPoint("BOTTOMRIGHT", remasterFrames.content, "BOTTOMRIGHT", -2, 2)
			ZygorGuidesViewerFrameScroll:SetFrameLevel(remasterFrames.content:GetFrameLevel() + 2)
			ZygorGuidesViewerFrameScroll:Show()
		end
		if ZygorGuidesViewerFrame_Skipper then
			ZygorGuidesViewerFrame_Skipper:Hide()
			ZygorGuidesViewerFrame_Skipper.mustbevisible = nil
		end
		if ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScroll then
			ZygorGuidesViewerFrameScrollChild:SetParent(ZygorGuidesViewerFrameScroll)
			ZygorGuidesViewerFrameScrollChild:ClearAllPoints()
			ZygorGuidesViewerFrameScrollChild:SetPoint("TOPLEFT", ZygorGuidesViewerFrameScroll, "TOPLEFT", 0, 0)
			ZygorGuidesViewerFrameScrollChild:SetPoint("TOPRIGHT", ZygorGuidesViewerFrameScroll, "TOPRIGHT", 0, 0)
			ZygorGuidesViewerFrameScrollChild:SetFrameLevel(ZygorGuidesViewerFrameScroll:GetFrameLevel() + 1)
		end
		if self.stepframes and ZygorGuidesViewerFrameScrollChild then
			for _, step in ipairs(self.stepframes) do
				if step and step.SetParent then
					step:SetParent(ZygorGuidesViewerFrameScrollChild)
					step:SetFrameLevel(ZygorGuidesViewerFrameScrollChild:GetFrameLevel() + 1)
				end
			end
		end
		if self.spotframes and ZygorGuidesViewerFrameScrollChild then
			for _, spot in ipairs(self.spotframes) do
				if spot and spot.SetParent then
					spot:SetParent(ZygorGuidesViewerFrameScrollChild)
					spot:SetFrameLevel(ZygorGuidesViewerFrameScrollChild:GetFrameLevel() + 1)
				end
			end
		end
		if ZygorGuidesViewerFrameScroll and ZygorGuidesViewerFrameScrollScrollBar then
			local range = ZygorGuidesViewerFrameScroll:GetVerticalScrollRange() or 0
			if range > 0 and self.db.profile.showallsteps then
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
		if self.CurrentGuide and self.db.profile.displaymode ~= "guide" then
			self.db.profile.displaymode = "guide"
		end
		if self.db.profile.showcountsteps and self.db.profile.showcountsteps < 1 then
			self.db.profile.showcountsteps = 1
		end
		if ZygorGuidesViewerFrameScrollChild then
			ZygorGuidesViewerFrameScrollChild:Show()
		end
		if ZygorGuidesViewerFrameScroll and ZygorGuidesViewerFrameScrollScrollBar then
			local range = ZygorGuidesViewerFrameScroll:GetVerticalScrollRange() or 0
			if range > 0 and self.db.profile.showallsteps then
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
	end

	self:UpdateGuideProgressWidgets()

	--if InCombatLockdown() then return end
	--[[
	--		self.Frame:SetAlpha(0.5)
		return
	else
	--		self.Frame:SetAlpha(1.0)
	end
	--]]

	--self:Debug("updatemini")

	--if ZygorGuidesViewerMiniFrame_bdflash:IsPlaying() and not ZygorGuidesViewerMiniFrame_bdflash:IsDone() then return end

	local minh = 0

	if self.loading then

		self:UpdateLegacyHeaderTitle("")
		ZygorGuidesViewerFrame_MissingText:Show()
		ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_loading']:format((self.loadprogress or 0)*100))

	elseif self.db.profile.displaymode=="guide" then
		if self.CurrentGuide and self.CurrentGuide.steps then

			-- hide spot frames, if visible
			if self.spotframes[1] and self.spotframes[1]:IsVisible() then for i,spotframe in ipairs(self.spotframes) do spotframe:Hide() end end

			if self.db.profile.showallsteps then
				if ZygorGuidesViewerFrameScrollScrollBar:GetValue()<1 then ZygorGuidesViewerFrameScrollScrollBar:SetValue(self.CurrentStepNum) end
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end

			if full then
				ZygorGuidesViewerFrameScrollScrollBar:SetMinMaxValues(1,#self.CurrentGuide.steps>0 and #self.CurrentGuide.steps or 1)
				ZygorGuidesViewerFrame_Skipper_Step:SetText(self.CurrentStepNum)
				self:UpdateLegacyHeaderTitle(self.CurrentGuide.title_short)
			end

			--ZygorGuidesViewerFrame_Border_TitleBar_PrevButton:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_NextButton:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_Step:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_StepText:SetText(self.CurrentStepNum)
			--ZygorGuidesViewerFrame_Border_TitleBar_StepText:Show()

			ZygorGuidesViewerFrameScroll:Show()
			ZygorGuidesViewerFrame_MissingText:Hide()

			local totalheight = 0

			local frame
			local stepnum,stepdata

			if self:IsRemasterSkin() and ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScroll then
				local sw = ZygorGuidesViewerFrameScroll:GetWidth() or 0
				if sw > 20 then
					local scrollbarPad = self.db.profile.showallsteps and 39 or 20
					local desiredWidth = math.max(sw - scrollbarPad, 1)
					if math.abs((ZygorGuidesViewerFrameScrollChild:GetWidth() or 0) - desiredWidth) > 1 then
						ZygorGuidesViewerFrameScrollChild:SetWidth(desiredWidth)
						self:RequestRemasterCompactRelayout()
					end
				end
			end

			local firststep = self.db.profile.showallsteps and math.floor(ZygorGuidesViewerFrameScrollScrollBar:GetValue()) or self.CurrentStepNum
			if firststep<1 then firststep=1 end
			local laststep = self.db.profile.showallsteps and #self.CurrentGuide.steps or self.CurrentStepNum+self.db.profile.showcountsteps-1

			--self:Debug("first step "..firststep..", last step "..laststep)
			-- run through buttons and assign steps for them

			local nomoredisplayed=false
			
			for stepbuttonnum = 1,self.StepLimit do repeat
				--frame = _G['ZygorGuidesViewerFrame_Step'..stepbuttonnum]
				frame = self.stepframes[stepbuttonnum]
				if not frame or not frame.lines or not frame.lines[1] or not frame.lines[1].icon then
					ZygorGuidesViewerFrame_Step_Setup(stepbuttonnum)
					frame = self.stepframes[stepbuttonnum]
				end
				if not frame then break end

				stepnum = firststep + stepbuttonnum - 1
				
				-- show this button at all?
				if stepnum>=firststep and stepnum<=laststep and stepnum<=#self.CurrentGuide.steps then
					local stepdata = self.CurrentGuide.steps[stepnum]
					assert(stepdata,"UpdateFrame: No data for step "..stepnum)

					if nomoredisplayed then
						frame:Hide()
						break --continue
					end

					--[[
					if not self.stepchanged and not stepdata:NeedsUpdating() or (nomoredisplayed and not frame:IsVisible()) then
						break --continue
					end
					--]]
					--print("Displaying step "..stepnum)

					frame.stepnum = stepnum
					frame.step = stepdata
					--#### position step frame

					if self:IsRemasterSkin() then
						local stepFrameWidth = self:GetRemasterSettledStepFrameWidth()
						if stepFrameWidth > 1 then
							frame:SetWidth(stepFrameWidth)
						end
					else
						frame:SetWidth(self.db.profile.showallsteps and ZygorGuidesViewerFrameScrollChild:GetWidth() or ZygorGuidesViewerFrameScroll:GetWidth()) -- this is needed so the text lines below can access proper widths
					end

					-- out of screen space? bail.
					-- but only in all steps mode!
					local top=frame:GetTop()
					local bottom=ZygorGuidesViewerFrameScroll:GetBottom()
					if self.db.profile.showallsteps and top and bottom and top<bottom then
						frame:Hide()
						nomoredisplayed=true
						break --continue!
					end

					--#### fill it with text

					local changed,dirty = stepdata:Translate()
					if dirty then
						self.frameNeedsUpdating=true
						self:SetWaypoint()
					end

					local line=1
					local maxlines = #frame.lines

					if stepdata.requirement or self.db.profile.stepnumbers then
						local numbertext = self.db.profile.stepnumbers and L['step_num']:format(stepnum)
						local reqraw = stepdata.requirement
						local reqdisplay = type(reqraw)=="table" and table.concat(reqraw,L["stepreqor"]) or tostring(reqraw)
						local reqtext = reqraw and ((stepdata:AreRequirementsMet() and "|cff44aa44" or "|cffbb0000") .. "(" .. reqdisplay:gsub("!([a-zA-Z ]+)",L["req_not"]:format("%1")) .. ")")
						local leveltext = (stepdata.level and stepdata.level>0 and self.db.profile.stepnumbers) and L['step_level']:format(stepdata.level or "?")

						frame.lines[line].labelOffsetX = 0
						frame.lines[line].labelOffsetY = 0
						self:ApplyGuideLineLabelLayout(frame.lines[line])
						frame.lines[line].label:SetText((numbertext or "")..(leveltext or "")..(reqtext or ""))
						--frame.lines[line].label:SetMultilineIndent(1)
						frame.lines[line].goal = nil
						frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
						line=line+1
					else
						frame.lines[line].labelOffsetX = ZGV.ICON_INDENT
						frame.lines[line].labelOffsetY = 0
						self:ApplyGuideLineLabelLayout(frame.lines[line])
						frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
					end

					if stepdata:AreRequirementsMet() or self.db.profile.showwrongsteps then
						--#### insert goals

						local routefocus = nil
						if not self.db.profile.disablerouteloopstacking then
							for _,rgoal in ipairs(stepdata.goals) do
								if rgoal.routegroup and rgoal:GetStatus()~="hidden" then
									routefocus = rgoal
									if not rgoal:IsComplete() then break end
								end
							end
						end

						for i,goal in ipairs(stepdata.goals) do

							if goal:GetStatus()~="hidden" then
								if routefocus and goal.routegroup and goal~=routefocus then
									-- Compact route/loop display: show only the current active point.
								else
								--steptext = steptext .. ("  "):rep(goal.indent or 0) .. goal:GetText() .. "|n"
								local indent = ("  "):rep(goal.indent or 0)
								--local goaltxt = goal:GetText(stepnum>=self.CurrentStepNum)
								local goaltxt = goal:GetText(true)
								local effective_tip = goal.tooltip
								if routefocus and goal==routefocus and not self.db.profile.disablerouteloopstacking and goal.routesharedtip and not effective_tip then
									effective_tip = goal.routesharedtip
								end
								goal._display_tooltip = effective_tip
								if goal==routefocus and goal.action~="goto" then
									local routeicon = "Interface\\AddOns\\ZygorGuidesViewerRM\\Arrows\\Midnight\\arrow.tga"
									local loopicon = "Interface\\Buttons\\UI-RefreshButton"
									local iconpath = (goal.routekind=="loop") and loopicon or routeicon
									local rtag = " |T"..iconpath..":14:14:0:0|t"
									goaltxt = goaltxt .. rtag
								end
								if goaltxt~="?" or (goal.action=="info") then
									if line>maxlines or not frame.lines[line] then break end
									if goal.action=="info" then
										frame.lines[line].labelOffsetX = ZGV.ICON_INDENT
										frame.lines[line].labelOffsetY = 2
										self:ApplyGuideLineLabelLayout(frame.lines[line])
										frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
										frame.lines[line].label:SetText(indent.."|cffeeeecc"..goal.info.."|r")
										frame.lines[line].goal = nil
									else
										local link = ((effective_tip and not self.db.profile.tooltipsbelow) or (goal.x and not self.db.profile.windowlocked) or goal.image) and " |cffdd44ff*|r" or ""

										frame.lines[line].labelOffsetX = ZGV.ICON_INDENT
										frame.lines[line].labelOffsetY = 0
										self:ApplyGuideLineLabelLayout(frame.lines[line])
										frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
										frame.lines[line].label:SetText(indent..goaltxt..link)
										frame.lines[line].goal = goal
									end
									line=line+1
									--frame.lines[line].label:SetMultilineIndent(1)

									if self.db.profile.tooltipsbelow and effective_tip then
										if line>maxlines or not frame.lines[line] then break end
										frame.lines[line].labelOffsetX = ZGV.ICON_INDENT
										frame.lines[line].labelOffsetY = 2
										self:ApplyGuideLineLabelLayout(frame.lines[line])
										frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
										frame.lines[line].label:SetText(indent.."|cffeeeecc"..effective_tip.."|r")
										--frame.lines[line].label:SetMultilineIndent(1)
										frame.lines[line].goal = nil
										line=line+1
									end
								end -- no text, no line!

								-- 'or' between or-positive goals
								-- not anymore
								--[[
								if goal.orlogic and i<#stepdata.goals and stepdata.goals[i+1].orlogic then
									frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
									frame.lines[line].label:SetText(indent.."|cffeeeecc"..L['stepgoal_or'].."|r")
									--frame.lines[line].label:SetMultilineIndent(1)
									frame.lines[line].goal = nil
									line=line+1
								end
								--]]
								end
							end
						end

						--[[ -- no more
						-- info line
						if stepdata.info then
							frame.lines[line].label:SetText("|cffeeeecc"..stepdata.info.."|r")
							--frame.lines[line].label:SetMultilineIndent(0)
							frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
							frame.lines[line].goal = nil
							line=line+1
						end
						--]]

						-- (level #)
						--[[
						if self.db.profile.showsteplevels then
							frame.lines[line].label:SetText()
							frame.lines[line].goal = nil
							line=line+1
						end
						--]]
					end

					local TMP_TRUNCATE = true
					local heightleft = 400
					if self.db.profile.showallsteps and TMP_TRUNCATE then
						if stepbuttonnum>1 then
							local stepbottom = self.stepframes[stepbuttonnum-1]:GetBottom()
							local scrollbottom = ZygorGuidesViewerFrameScroll:GetBottom()
							if stepbottom and scrollbottom then
								heightleft = stepbottom-scrollbottom - 2*self.STEPMARGIN_Y - 5
							else
								heightleft = 0
								self:Debug("Error in step height calculation! step "..stepbuttonnum.." stepbottom="..tostring(stepbottom).." scrollbottom="..tostring(scrollbottom)..", forcing update")
								self.frameNeedsUpdating=true
							end
						end
					
						if heightleft<self.MIN_STEP_HEIGHT then
							frame:Hide()
							nomoredisplayed=true
							break --continue
						end
					end

					local height=0
					local compactMetrics = self:GetCompactGuideLayoutMetrics()
					local compactLineSpacing = compactMetrics.lineSpacing
					--frame.goallines={}
					local textheight
					frame.truncated=nil
					local abort
					for l=1,20 do
						local lineframe = frame.lines[l]
						local text = lineframe.label
						if l<line and not frame.truncated then
							local contentWidth = self:GetGuideStepContentWidth(frame)
							text:SetWidth(contentWidth)
							if text.SetHeight then
								text:SetHeight(300)
							end
							textheight = text.GetStringHeight and text:GetStringHeight() or text:GetHeight()
							if textheight and textheight > 0 and text.SetHeight then
								text:SetHeight(textheight)
							end
							local textpadding = self:GetRemasterWrappedTextPadding(text, textheight)
							local lineheight = (textheight or 0) + textpadding
							local iconheight = self:GetCompactLineVisualHeight(stepdata, lineframe)
							if iconheight > lineheight then
								lineheight = iconheight
							end
							if compactMetrics.lastLineReserve and compactMetrics.lastLineReserve > 0 and l == (line - 1) then
								lineheight = lineheight + compactMetrics.lastLineReserve
							end
							if text and text.SetHeight then
								text:SetHeight(textheight or 0)
							end
							height = height + (height>0 and compactLineSpacing or 0) + lineheight
							--text:SetWidth(ZygorGuidesViewerFrameScroll:GetWidth()-30)

							if TMP_TRUNCATE and self.db.profile.showallsteps and height>heightleft then
								lineframe.goal=nil
								if l<=2 then
									abort=true
									break
								else
									frame.truncated=true
									frame.lines[l-1].label:SetText("   . . .")
									frame.lines[l-1].goal=nil
									lineframe:Hide()
									height=height-lineheight-compactLineSpacing
								end
							else
								lineframe:Show()
								--if lineframe.goal then frame.goallines[lineframe.goal.num]=lineframe end
								lineframe:SetHeight(lineheight)
							end

						else
							lineframe:Hide()
							lineframe.goal = nil
							lineframe.labelOffsetX = nil
							lineframe.labelOffsetY = nil
						end
					end

					if abort then
						frame:Hide()
						nomoredisplayed=true
						break --continue
					end


					--#### display it properly

					local compactTopPadding = compactMetrics.stepTopPadding
					local compactBottomPadding = compactMetrics.stepBottomPadding
					if height<self.MIN_STEP_HEIGHT then
						frame.lines[1]:SetPoint("TOPLEFT",ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
						frame.lines[1]:SetPoint("TOPRIGHT",-ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
						height=self.MIN_STEP_HEIGHT
					else
						frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-compactTopPadding)
						frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-compactTopPadding)
					end
					if not frame.truncated or not TMP_TRUNCATE then
						frame.guideProgressBaseHeight = height + compactTopPadding + compactBottomPadding
					else
						frame.guideProgressBaseHeight = heightleft + compactTopPadding + compactBottomPadding
					end
					frame:SetHeight(frame.guideProgressBaseHeight)

					--end


					-- current step stuff

					if stepbuttonnum>1 then totalheight = totalheight + STEP_SPACING end
					totalheight = totalheight + frame:GetHeight()

					--[[
					if self.db.profile.showallsteps and totalheight>ZygorGuidesViewerFrameScroll:GetHeight() then
						nomoredisplayed=true
						frame:Hide()
						break --continue
					end
					--]]

					if self.db.profile.showallsteps and frame.truncated then
						nomoredisplayed=true
					end


					--oookay, frame is visible, let's fill it for real
					frame:Show()

					if stepdata~=self.CurrentStep then
						for l=1,20 do
							frame.lines[l].back:Hide()
							frame.lines[l].icon:Hide()
						end
					end

					if stepnum==self.CurrentStepNum then
						--frame:EnableMouse(0)
						--frame:SetScript("OnClick",nil)
					else
						--frame:EnableMouse(1)
					end

					if self.db.profile.showallsteps then
						frame:SetAlpha(stepnum<self.CurrentStepNum and 0.4 or 1.0)
					else
						if stepbuttonnum==1 then
							frame:SetAlpha(1.0)
						else
							frame:SetAlpha(0.8-0.4*((stepbuttonnum-1)/(self.db.profile.showcountsteps-1)))
						end
					end

					if stepnum==self.CurrentStepNum then
						frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border_active", edgeSize = 16 })
					else
						frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border", edgeSize = 16 })
					end

					local goalcolors = self:GetEffectiveGoalColors()
					if stepdata:AreRequirementsMet() then
						if stepdata:IsComplete() then
							frame:SetBackdropColor(fromRGBmul_a(goalcolors.goalbackcomplete,0.5,self.db.profile.stepbackalpha))
							--frame:SetBackdropColor(0,0.7,0,0.5)
							frame.border:SetBackdropBorderColor(1,1,1,1)
						elseif (self.db.profile.showobsolete and stepdata:IsObsolete()) then
							frame:SetBackdropColor(fromRGBmul_a(goalcolors.goalbackobsolete,0.5,self.db.profile.stepbackalpha))
							frame.border:SetBackdropBorderColor(1,1,1,1)
						elseif (self.db.profile.skipauxsteps and stepdata:IsAuxiliarySkippable()) then
							frame:SetBackdropColor(fromRGBmul_a(goalcolors.goalbackaux,0.5,self.db.profile.stepbackalpha))
							frame.border:SetBackdropBorderColor(1,1,1,1)
						else
							frame:SetBackdropColor(0.0,0.0,0.0,self.db.profile.stepbackalpha)
							frame.border:SetBackdropBorderColor(1,1,1,1)
						end
					else
						local inc = goalcolors.goalbackincomplete
						frame:SetBackdropColor(inc.r*0.5,inc.g*0.5,inc.b*0.5,self.db.profile.stepbackalpha)
						frame.border:SetBackdropBorderColor(inc.r,inc.g,inc.b,0.5)
					end

					if self.db.profile.hidestepborders then
						frame.border:Hide()
					else
						frame.border:Show()
					end

					--text:Show()

				else	-- not showing this one

					if frame then
						frame:Hide()
						--[[
						local prename = "ZygorGuidesViewerFrame_Step"..stepnum.."_Text"
						for line=1,10 do
							local text = _G[prename..line]
							text:SetHeight(0.1)
						end
						--]]
						--[[
						frame:SetHeight(0)
						frame:ClearAllPoints()
						frame:SetPoint("TOPLEFT")
						--]]
					end
				end
			until true end

			self.compactContentHeight = totalheight

			self.stepchanged=false

			if self:IsRemasterSkin() and ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScroll then
				local scrollHeight = ZygorGuidesViewerFrameScroll:GetHeight() or 0
				local contentHeight = self.compactContentHeight or self:GetVisibleStepContentHeight(self.StepLimit)
				local childHeight = math.max(contentHeight + 4, scrollHeight)
				ZygorGuidesViewerFrameScrollChild:SetHeight(childHeight)
				if ZygorGuidesViewerFrameScrollScrollBar then
					if childHeight > scrollHeight + 2 then
						ZygorGuidesViewerFrameScrollScrollBar:Show()
					else
						ZygorGuidesViewerFrameScrollScrollBar:Hide()
					end
				end
			end

			self:UpdateFrameCurrent(nonsecure_only)
			if self.db
			and self.db.profile
			and self:IsRemasterSkin()
			and self.db.profile.displaymode == "guide"
			and not self.db.profile.showallsteps
			then
				self:RelayoutRemasterCompactVisibleSteps()
			end

			-- set minimum frame size to one step
			minh = self.stepframes[1]:GetHeight() + 40

			if not self:IsRemasterSkin() then
				ZygorGuidesViewerFrame_Skipper:Show()
				ZygorGuidesViewerFrame_Skipper.mustbevisible=true
			else
				ZygorGuidesViewerFrame_Skipper:Hide()
				ZygorGuidesViewerFrame_Skipper.mustbevisible=nil
			end

			--self:HighlightCurrentStep()

			-- steps displayed, clear the remaining slots

		else -- no current guide?

			self:UpdateLegacyHeaderTitle("")

			--ZygorGuidesViewerFrame_LocationLabel:Hide()
			--ZygorGuidesViewerFrame_LevelLabel:Hide()
			ZygorGuidesViewerFrame_MissingText:Show()

			--ZygorGuidesViewerFrame_Divider2:Hide()

			local guides = self:GetGuides()
			if #guides>0 then
				ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_notselected'])
			else
				ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_notloaded'])
			end
		end

	elseif self.db.profile.displaymode=="gold" then

		local x,y = GetPlayerMapPosition("player")
		local d = GetPlayerFacing()
		if x==gold_ox and y==gold_oy and d==gold_od and not full then return end
		gold_ox,gold_oy,gold_od = x,y,d

		-- get rid of tooltips, before they get messed up
		if ZGV.hasTooltipOverSpotLink then GameTooltip:Hide() ZGV.hasTooltipOverSpotLink=nil end

		-- hide step frames, if visible
		if self.stepframes[1]:IsVisible() then for i,stepframe in ipairs(self.stepframes) do stepframe:Hide() end end

		local spots
		if self.db.profile.golddistmode==1 then spots = ZGV:GetMapSpotsInRange()
		elseif self.db.profile.golddistmode==2 then spots = ZGV:GetMapSpotsInZone()
		else spots = ZGV:GetAllMapSpots()
		end

		if #spots>0 then
			if full then
				ZygorGuidesViewerFrameScroll:Show()
				ZygorGuidesViewerFrame_MissingText:Hide()
				if ZygorGuidesViewerFrameScrollScrollBar:GetValue()<1 then ZygorGuidesViewerFrameScrollScrollBar:SetValue(1) end
				ZygorGuidesViewerFrameScrollScrollBar:Show()
				ZygorGuidesViewerFrameScrollScrollBar:SetMinMaxValues(1,#spots)
				if ZygorGuidesViewerFrame_Skipper then ZygorGuidesViewerFrame_Skipper:Hide() end
				self:UpdateLegacyHeaderTitle("Gold Spots")
			end

		else -- no gold guides or no spots in range
			ZygorGuidesViewerFrameScroll:Hide()
			ZygorGuidesViewerFrame_MissingText:Show()

			if #self.registeredmapspotsets>0 then
				ZygorGuidesViewerFrame_MissingText:SetText(L['gold_missing_nospotsinrange'])
			else
				ZygorGuidesViewerFrame_MissingText:SetText(L['gold_missing_noguidesloaded'])
			end
		end

		local totalheight = 0

		local frame
		local spotnum

		local firstspot = math.floor(ZygorGuidesViewerFrameScrollScrollBar:GetValue())
		if firstspot<1 then firstspot=1 end
		local lastspot = #spots

		--self:Debug("first step "..firststep..", last step "..laststep)
		-- run through buttons and assign steps for them

		local nomoredisplayed=false
		
		for spotbuttonnum = 1,self.StepLimit do repeat
			--frame = _G['ZygorGuidesViewerFrame_Step'..stepbuttonnum]
				frame = self.spotframes[spotbuttonnum]
			assert(frame,"Out of spot frames at "..spotbuttonnum)
			
			spotnum = firstspot + spotbuttonnum - 1
			
			-- show this button at all?
			if spotnum>=firstspot and spotnum<=lastspot and spotnum<=#spots then
				local spotdata = spots[spotnum]
				assert(spotdata,"UpdateFrame: No data for spot "..spotnum)

				if nomoredisplayed then
					frame:Hide()
					break --continue
				end

				frame.spotnum = spotnum
				frame.spot = spotdata

				--#### position step frame

				frame:SetWidth(ZygorGuidesViewerFrameScrollChild:GetWidth()) -- this is needed so the text lines below can access proper widths

				-- out of screen space? bail.
				-- but only in all steps mode!
				local top=frame:GetTop()
				local bottom=ZygorGuidesViewerFrameScroll:GetBottom()
				if top and bottom and top<bottom then
					frame:Hide()
					nomoredisplayed=true
					break --continue!
				end

				--#### fill it with text

				-- no translation here
				--[[
				local changed,dirty = stepdata:Translate()
				if dirty then self.frameNeedsUpdating=true end
				--]]

				local line=1

				assert(frame.lines[line],"Out of lines ("..line..") in spot frame "..spotbuttonnum)

				frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
				
				-- cardinal names
				--frame.lines[line].label:SetText(("|cffffbb00%s|r (%s %s)"):format(spotdata.title or "?",ZGV.FormatDistance(spotdata.waypoint.minimapFrame.dist),GetCardinalDirName(Astrolabe:GetDirectionToIcon(spotdata.waypoint.minimapFrame))))

				-- icons
				local dirnum=GetCardinalDirNum(-Astrolabe:GetDirectionToIcon(spotdata.waypoint.minimapFrame) + GetPlayerFacing())-1 --:30:30:0:0:32:32:0:0:0:0
				local dirnum2=dirnum>8 and 16-dirnum or dirnum
				local arrow = ("|Tinterface\\addons\\ZygorGuidesViewer\\skin\\arrow-mini-multi:20:20:0:0:32:512:%d:%d:%d:%d|t"):format(dirnum>8 and 32 or 0,dirnum>8 and 0 or 32,dirnum2*32,(dirnum2+1)*32)
				frame.lines[line].label:SetText(("%s |cffffbb00%s|r (%s)"):format(arrow, spotdata.title or "?",ZGV.FormatDistance(spotdata.waypoint.minimapFrame.dist)))
				
				line=line+1

				--[[
				frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
				frame.lines[line].label:SetText(("|cffffff00%s %s,%s|r"):format(spotdata.map,spotdata.x,spotdata.y))
				line=line+1
				--]]

				if (spotdata.desc) then
					frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
					frame.lines[line].label:SetText(("%s"):format(spotdata.desc))
					line=line+1
				end


				if spotdata.objects then
					for s,source in ipairs(itemsources) do
						local objs = spotdata:GetObjectsOfType(source,true)
						if objs then
							local mobs = source=="drop" and spotdata.mobs
							local mobtext
							if mobs then
								mobtext = ""
								for i,mob in ipairs(spotdata.mobs) do
									if #mobtext>0 then mobtext = mobtext .. ", " end
									mobtext = mobtext .. mob.name
								end
							elseif spotdata.vendorid then
								mobtext = spotdata.vendor
							end
							
							--[[
							-- all in one line; tidy but impractical
							local header = L['gold_header_'..source]:format(mobtext or "mob")
							local str=""
							for o,obj in ipairs(objs) do
								if not obj.hidden then
									if obj.item.id then
										str = str .. "|Hitem:"..obj.item.id.."|h"..(obj.icon or "item").."|h "
									else
										str = str .. " ["..obj.item.name.."]"
									end
								end
							end

							if #str>0 then
								frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
								--frame.lines[line].label:SetText("<html><body><p>"..("|cffdddd66%s |r%s"):format(header,str).."</p></body></html>")
								frame.lines[line].label:SetText(("|cffdddd66%s |r%s"):format(header,str))
								line=line+1
							end
							--]]

							local goodobjs = {}
							for o,obj in ipairs(objs) do
								if not obj.hidden then
									tinsert(goodobjs,obj)
								end
							end

							if #goodobjs then
								frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
								--frame.lines[line].label:SetText("<html><body><p>"..("|cffdddd66%s |r%s"):format(header,str).."</p></body></html>")
								frame.lines[line].label:SetText(("|cffdddd66%s|r"):format(L['gold_header_'..source]:format(mobtext or "mob")))
								line=line+1

								for o,obj in ipairs(goodobjs) do
									local str
									if obj.item.id then
										str = "|Hitem:"..obj.item.id.."|h"..(obj.icon or "item").." "..(obj.string or "?").."|h "
									else
										str = obj.item.name
									end

									if obj.toohard then str = "|cffff0000"..str.."|r" end

									frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize*1.0))
									frame.lines[line].label:SetText(str)
									frame.lines[line].label:SetHyperlinksEnabled(false)
									frame.lines[line].label.reenableHyperlinks=true
									line=line+1

								end
							end
						end
					end
				end

				local TMP_TRUNCATE = true
				local heightleft = 400
				if TMP_TRUNCATE then
					if spotbuttonnum>1 then
						local spotbottom = self.spotframes[spotbuttonnum-1]:GetBottom()
						local scrollbottom = ZygorGuidesViewerFrameScroll:GetBottom()
						if spotbottom and scrollbottom then
							heightleft = spotbottom-scrollbottom - 2*self.STEPMARGIN_Y - 5
						else
							heightleft = 0
							self:Debug("Error in spot height calculation! spot "..spotbuttonnum.." spotbottom="..tostring(spotbottom).." scrollbottom="..tostring(scrollbottom)..", forcing update")
							--self.frameNeedsUpdating=true
						end
					end
				
					if heightleft<self.MIN_STEP_HEIGHT then
						frame:Hide()
						nomoredisplayed=true
						break --continue
					end
				end

				local height=0
				--frame.goallines={}
				local textheight
				frame.truncated=nil
				local abort

				for l=1,20 do
					local lineframe = frame.lines[l]
					local text = lineframe.label
					if l<line and not frame.truncated then
						text:SetWidth(frame:GetWidth()-ICON_INDENT-2*ZGV.STEPMARGIN_X)
						
						-- old non-HTML stuff
						--textheight = text:GetHeight()
						textheight = text:GetRegions():GetHeight()
						text:SetHeight(textheight)

						height = height + (height>0 and STEP_LINE_SPACING or 0) + textheight
						--text:SetWidth(ZygorGuidesViewerFrameScroll:GetWidth()-30)

						if TMP_TRUNCATE and height>heightleft then
							if l<=2 then
								abort=true
								break
							else
								frame.truncated=true
								frame.lines[l-1].label:SetText("   . . .")
								lineframe:Hide()
								height=height-textheight-STEP_LINE_SPACING
							end
						else
							lineframe:Show()
							--if lineframe.goal then frame.goallines[lineframe.goal.num]=lineframe end
							lineframe:SetHeight(textheight+STEP_LINE_SPACING)
						end

					else
						lineframe:Hide()
					end
				end

				if abort then
					frame:Hide()
					nomoredisplayed=true
					break --continue
				end

				--self:Print(("spot %d, height %s"):format(spotbuttonnum,height))

				--#### display it properly

				if height<self.MIN_STEP_HEIGHT then
					frame.lines[1]:SetPoint("TOPLEFT",ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
					frame.lines[1]:SetPoint("TOPRIGHT",-ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
					height=self.MIN_STEP_HEIGHT
				else
					frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
					frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
				end

				if not frame.truncated or not TMP_TRUNCATE then
					frame:SetHeight(height + 3*self.STEPMARGIN_Y)
				else
					frame:SetHeight(heightleft + 2*self.STEPMARGIN_Y)
				end

				--end

				if spotbuttonnum>1 then totalheight = totalheight + STEP_SPACING end
				totalheight = totalheight + frame:GetHeight()


				if frame.truncated then
					nomoredisplayed=true
				end

				--oookay, frame is visible, let's fill it for real
				frame:Show()

				frame:SetBackdropColor(0.0,0.0,0.0,self.db.profile.stepbackalpha)

				if self.db.profile.hidestepborders then
					frame.border:Hide()
				else
					frame.border:Show()
					frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border_active", edgeSize = 16 })
					frame.border:SetBackdropBorderColor(1,1,1,1)
				end

				ZygorGuidesViewerFrame_Skipper:Hide()
				ZygorGuidesViewerFrame_Skipper.mustbevisible=false

				--text:Show()

			else	-- not showing this one

				if frame then
					frame:Hide()
					--[[
					local prename = "ZygorGuidesViewerFrame_Step"..stepnum.."_Text"
					for line=1,10 do
						local text = _G[prename..line]
						text:SetHeight(0.1)
					end
					--]]
					--[[
					frame:SetHeight(0)
					frame:ClearAllPoints()
					frame:SetPoint("TOPLEFT")
					--]]
				end
			end
		until true end

	self.stepchanged=false

	-- set minimum frame size to one step
	minh = self.spotframes[1]:GetHeight() + 40

		--self:HighlightCurrentStep()

		-- steps displayed, clear the remaining slots

	
		--ZygorGuidesViewerFrame_Border_TitleBar_PrevButton:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_NextButton:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_Step:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_StepText:SetText(self.CurrentStepNum)
		--ZygorGuidesViewerFrame_Border_TitleBar_StepText:Show()

	end

	if minh<100 then minh=100 end
	self.Frame:SetMinResize(260,minh)
	if self.Frame:GetHeight()<minh-0.01 then self.Frame:SetHeight(minh) end

	local relayoutFrame = self.Frame or ZygorGuidesViewerFrame
	local relayoutOldHeight = relayoutFrame and relayoutFrame.GetHeight and relayoutFrame:GetHeight() or 0
	self:ResizeFrame()
	if nonsecure_only
	and not onupdate
	and self.db
	and self.db.profile
	and self:IsRemasterSkin()
	and self.db.profile.displaymode == "guide"
	and not self.db.profile.showallsteps
	then
		self.pendingCombatNonsecureRelayoutPass = 1
	end
	if self.db
	and self.db.profile
	and self:IsRemasterSkin()
	and self.db.profile.displaymode == "guide"
	and not self.db.profile.showallsteps
	and not self.compactHeightRelayoutInProgress
	then
		local relayoutNewHeight = relayoutFrame and relayoutFrame.GetHeight and relayoutFrame:GetHeight() or 0
		if math.abs((relayoutNewHeight or 0) - (relayoutOldHeight or 0)) > 0.5 then
			self.compactHeightRelayoutInProgress = true
			self:UpdateFrame(true)
			self.compactHeightRelayoutInProgress = nil
			return
		end
	end
	self:UpdateGuideProgressWidgets()

	if self.ActionButtons_Refresh then
		self:ActionButtons_Refresh(true)
	end
	if self.TargetPreview_Refresh then
		self:TargetPreview_Refresh(true)
	end

	if self.delayFlash and self.delayFlash>0 then
		self.delayFlash=2 --ready to flash!
		--ZygorGuidesViewerFrame_bdflash:StartRGB(1,1,1,1,0,1,0,1)
	end
end

function me:ClearFrameCurrent()
	self.actionsvisible = false
	if InCombatLockdown() then return end
	for _,stepframe in ipairs(self.stepframes or {}) do
		for i=1,20 do
			local line = stepframe and stepframe.lines and stepframe.lines[i]
			local action = line and line.action
			local petaction = line and line.petaction
			local cooldown = line and line.cooldown
			local actionholder = line and line.actionHolder
			if line then line.inlineActionSpec = nil end
			if action then action.actionSpec = nil action.previewSubject = nil action:Hide() AB_SetInlineVisualShown(action, false) end
			if petaction then petaction.actionSpec = nil petaction.previewSubject = nil petaction:Hide() AB_SetInlineVisualShown(petaction, false) end
			if cooldown then cooldown:Hide() end
			if actionholder then actionholder:Hide() end
		end
	end
	self.inlineRenderedStepNum = nil
	self:InlineButtons_ClearSecureOverlays()
	if self.ActionButtons_Refresh then
		self:ActionButtons_Refresh(true)
	end
end

function me:HideInlineActionHolders()
	self.actionsvisible = false
	self.inlineRenderedStepNum = nil
	for _,stepframe in ipairs(self.stepframes or {}) do
		for i=1,20 do
			local line = stepframe and stepframe.lines and stepframe.lines[i]
			local action = line and line.action
			local petaction = line and line.petaction
			local cooldown = line and line.cooldown
			local actionholder = line and line.actionHolder
			if line then line.inlineActionSpec = nil end
			if action then action.actionSpec = nil action.previewSubject = nil action:Hide() AB_SetInlineVisualShown(action, false) end
			if petaction then petaction.actionSpec = nil petaction.previewSubject = nil petaction:Hide() AB_SetInlineVisualShown(petaction, false) end
			if cooldown then cooldown:Hide() end
			if actionholder then actionholder:Hide() end
		end
	end
	if not InCombatLockdown() then
		self:InlineButtons_ClearSecureOverlays()
	end
end

local actionicon={
	["accept"]=5,
	["turnin"]=6,
	["kill"]=7,
	["get"]=8,
	["collect"]=8,
	["buy"]=8,
	["goal"]=9,
	["home"]=10,
	["fpath"]=11,
	["goto"]=12,
	["talk"]=13
}
setmetatable(actionicon,{__index=function() return 2 end})


function me:UpdateFrameCurrent(nonsecure_only)
	-- current step!

	if self.CurrentStep then	-- hey, it may be missing, if the whole guide is for another class

		--local mapped = self.CurrentStep.x

		--[[
		if ZGV.db.profile.colorborder then
			local done,possible = ZGV.CurrentStep:IsComplete()
			if done then		ZygorGuidesViewerFrame_Border:SetBackdropBorderColorRGB(ZGV.db.profile.goalbackcomplete)
			elseif possible then	ZygorGuidesViewerFrame_Border:SetBackdropBorderColorRGB(ZGV.db.profile.goalbackincomplete)
			else			ZygorGuidesViewerFrame_Border:SetBackdropBorderColor(0.7,0.7,0.7,1)
			end
		else ZygorGuidesViewerFrame_Border:SetBackdropBorderColor(0.7,0.7,0.7,1)
		end
		--]]

		--[[
		ZygorGuidesViewerFrame_ActiveStep:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
							    edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
							    tile = true, tileSize = 16, edgeSize = 16, 
							    insets = { left = 4, right = 4, top = 4, bottom = 4 }})
		--]]
		
		--[[
		if self.CurrentStep.requirement then
			ZygorGuidesViewerFrame_ActiveStep_Line0:SetText((self.CurrentStep:AreRequirementsMet() and "|cff88cc88" or "|cffbb0000") .. "(" .. table.concat(self.CurrentStep.requirement,L["stepreqor"]) .. ")")
			height = height + ZygorGuidesViewerFrame_ActiveStep_Line0:GetHeight()+STEP_LINE_SPACING
			ZygorGuidesViewerFrame_ActiveStep_Line1:ClearAllPoints()
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_ActiveStep_Line0,"BOTTOMLEFT",-ICON_INDENT,-STEP_LINE_SPACING)
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPRIGHT",ZygorGuidesViewerFrame_ActiveStep_Line0,"BOTTOMRIGHT",0,-STEP_LINE_SPACING)
			ZygorGuidesViewerFrame_ActiveStep_Line0:Show()
		else
			ZygorGuidesViewerFrame_ActiveStep_Line1:ClearAllPoints()
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_ActiveStep)
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPRIGHT",ZygorGuidesViewerFrame_ActiveStep)
			ZygorGuidesViewerFrame_ActiveStep_Line0:Hide()
		end
		--]]

		local name, line,label,icon,back,clicker,anim_w2g,anim_w2r,action,petaction,cooldown, lastlabel
		local height = 0
		local inlineSeenActionSignatures = {}

		if not self.stepframes[1].stepnum then return end

		local framenum = (self.CurrentStepNum - self.stepframes[1].stepnum + 1)
		if framenum<1 or framenum>self.StepLimit then
			self.CurrentStepframeNum = nil
			return self:ClearFrameCurrent()
		else
			self.CurrentStepframeNum = framenum
		end

		local stepframe = self.stepframes[framenum]
		if not stepframe.lines[1].icon then
			ZygorGuidesViewerFrame_Step_Setup(framenum)
		end

		if not stepframe:IsVisible() then
			return self:ClearFrameCurrent()
		end

		if self:InlineButtonsEnabled() and InCombatLockdown() and self.inlineRenderedStepNum ~= self.CurrentStepNum then
			self.pendingInlineCombatRefresh = true
		end

		--textline(1):ClearAllPoints()
		--textline(1):SetPoint("TOPLEFT",stepframe,"TOPLEFT",0,self.CurrentStep.requirement and -textline(1):GetHeight()-STEP_LINE_SPACING or 0)
		--textline(1):SetPoint("TOPRIGHT",stepframe,"TOPRIGHT",0,self.CurrentStep.requirement and -textline(1):GetHeight()-STEP_LINE_SPACING or 0)

		if self:InlineButtonsEnabled() then
			self.actionsvisible = false
		end

		local compactInlineSize
		local defaultInlineSize = math.max((self.db and self.db.profile and self.db.profile.fontsize or 11) + 4, 15)
		if self.db
		and self.db.profile
		and self:IsRemasterSkin()
		and self.db.profile.displaymode == "guide"
		and not self.db.profile.showallsteps
		then
			compactInlineSize = self:GetCompactGuideLayoutMetrics().inlineButtonHeight or 12
		end

		local function PositionInlineHolder(holder, row, size)
			if not holder then return end
			holder:SetWidth(size)
			holder:SetHeight(size)
			holder:ClearAllPoints()
			if self.db
			and self.db.profile
			and self:IsRemasterSkin()
			and self.db.profile.displaymode == "guide"
			and not self.db.profile.showallsteps
			then
				holder:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
			else
				holder:SetPoint("LEFT", row, "LEFT", 0, 0)
			end
			holder:Show()
		end

		local function HideInlineVisuals(lineRef, actionRef, petactionRef, cooldownRef, holderRef)
			if lineRef then lineRef.inlineActionSpec = nil end
			if actionRef then
				actionRef.actionSpec = nil
				actionRef.previewSubject = nil
				actionRef:Hide()
				AB_SetInlineVisualShown(actionRef, false)
			end
			if petactionRef then
				petactionRef.actionSpec = nil
				petactionRef.previewSubject = nil
				petactionRef:Hide()
				AB_SetInlineVisualShown(petactionRef, false)
			end
			if cooldownRef then cooldownRef:Hide() end
			if holderRef then holderRef:Hide() end
		end

		for stepIndex, otherStepframe in ipairs(self.stepframes or {}) do
			if stepIndex ~= framenum and otherStepframe and otherStepframe.lines then
				for lineIndex = 1, 20 do
					local otherLine = otherStepframe.lines[lineIndex]
					HideInlineVisuals(
						otherLine,
						otherLine and otherLine.action,
						otherLine and otherLine.petaction,
						otherLine and otherLine.cooldown,
						otherLine and otherLine.actionHolder
					)
				end
			end
		end

		for i=1,20,1 do  -- update all lines
			--local linenum = (self.CurrentStep.requirement and i+1 or i)

			line = stepframe.lines[i]
			if not line then break end
			label = line.label
			icon = line.icon
			back = line.back
			clicker = line.clicker
			anim_w2g = line.anim_w2g
			anim_w2r = line.anim_w2r

			local actname = line.actionBaseName or (((stepframe and stepframe.GetName and stepframe:GetName()) or ("ZygorGuidesViewerFrame_Step"..framenum)).."_Line"..i)
			line.actionBaseName = actname
			local inlineEnabled = self:InlineButtonsEnabled()
			action = line.action
			petaction = line.petaction
			cooldown = line.cooldown
			local actionholder = line.actionHolder
			line.inlineActionSpec = nil
			if actionholder then
				actionholder:SetFrameStrata(line:GetFrameStrata())
				actionholder:SetFrameLevel(line:GetFrameLevel()+15)
			end

			if line.goal then

				local goal = line.goal
				local compactSingleStep = self.db
					and self.db.profile
					and self:IsRemasterSkin()
					and self.db.profile.displaymode == "guide"
					and not self.db.profile.showallsteps

				lastlabel = label

				--steptext = ("  "):rep(goal.indent or 0)
				--if i==1 then steptext = steptext .. self.CurrentStepNum .. ". " end
				--steptext = steptext .. goal:GetText(true)

				--steptext = string.gsub(steptext,"\t([a-z]+\. )","\t|cffffff88%1|r")
				--steptext = string.gsub(steptext,"\t",">")

				do
					local vis
					local spec
					if self.GetGoalActionSpec then
						spec = self:GetGoalActionSpec(goal)
						if spec and goal.buttonicon then
							spec.icon = goal.buttonicon
						end
						if spec and (spec.kind == "talk" or spec.kind == "kill") then
							if inlineSeenActionSignatures[spec.signature] then
								spec = nil
							else
								inlineSeenActionSignatures[spec.signature] = true
							end
						end
					end
					if inlineEnabled and (spec or goal:IsActionable()) then
						local actionIcon = action and (action.icon or (actname and _G[actname.."ActionIcon"]))
						local petActionIcon = petaction and (petaction.icon or (actname and _G[actname.."PetActionIcon"]))

						if spec and self.ApplyInlineActionSpec then
							vis = self:ApplyInlineActionSpec(spec, action, petaction, actname)
							if vis == "petaction" and petaction then
								petaction:Show()
								line.inlineActionSpec = spec
								if actionholder then
									PositionInlineHolder(actionholder, line, compactInlineSize or defaultInlineSize)
								end
								self.actionsvisible = true
								vis = nil
							elseif vis == "action" and action then
								line.inlineActionSpec = spec
								vis = true
							end
						elseif goal.castspell and goal.castspellid then
							if not action then
								vis = nil
							else
								action.actionSpec = nil
								action.previewSubject = nil
								AB_SetInlineVisualShown(action, true)
								if actionIcon then actionIcon:SetTexture(select(3, GetSpellInfo(goal.castspellid or goal.castspell)) or "Interface\\Icons\\Spell_Nature_FaerieFire") end
								vis = true
							end
						elseif goal.useitem or goal.useitemid then
							if not action then
								vis = nil
							else
								action.actionSpec = nil
								action.previewSubject = nil
								AB_SetInlineVisualShown(action, true)
								if actionIcon then actionIcon:SetTexture(select(10, GetItemInfo(goal.useitemid or goal.useitem)) or "Interface\\Icons\\INV_Misc_Bag_08") end
								vis = true
							end
						elseif goal.script then
							if not action then
								vis = nil
							else
								action.actionSpec = nil
								action.previewSubject = nil
								AB_SetInlineVisualShown(action, true)
								if actionIcon then actionIcon:SetTexture(select(2, GetMacroInfo(goal.macro))) end
								vis = true
							end
						elseif goal.petaction then
							local num, _, _, tex = FindPetActionInfo(goal.petaction)
							if num and petaction then
								petaction.actionSpec = nil
								petaction.previewSubject = nil
								if petActionIcon then petActionIcon:SetTexture(tex) end
								AB_SetInlineVisualShown(petaction, true)
								petaction:Show()
								if inlineEnabled then
									if actionholder then
										PositionInlineHolder(actionholder, line, compactInlineSize or defaultInlineSize)
									end
									self.actionsvisible = true
								end
							else
								if petaction then
									petaction:Hide()
									AB_SetInlineVisualShown(petaction, false)
								end
							end
						else
							HideInlineVisuals(line, action, petaction, cooldown, actionholder)
						end

						if vis and action then
							action:Show()
							if inlineEnabled then
								if actionholder then
									PositionInlineHolder(actionholder, line, compactInlineSize or defaultInlineSize)
								end
								action:SetAllPoints(actionholder or line)
								if petaction then petaction:SetAllPoints(actionholder or line) end
								self.actionsvisible = true
							end
						end
					else
						HideInlineVisuals(line, action, petaction, cooldown, actionholder)
					end

					-- cooldown flasher
					local DoCooldown = function (cooldown,start,dur,en)
						if not cooldown then return end
						CooldownFrame_SetTimer(cooldown, start, dur, en)

						-- is this useless or what
						if not InCombatLockdown() then
							if dur>0 then
								--cooldown:Show()
								--self.recentCooldownsPulsing[goal] = nil
								--self.recentCooldownsStarted[goal] = 1
								--self:Debug("pulse: showing")
							else
								--[[
								if not self.recentCooldownsPulsed[goal] and not self.recentCooldownsPulsed[goal] then
									self.recentCooldownPulses[goal] = self:ScheduleTimer("HideCooldown",1.0,{goal=goal,cooldown=cooldown})
									self:Debug("pulse: not pulsed, pulsing now and delaying")
								end

								if self.recentCooldownsStarted[goal] and self.recentCooldownsPulsing[goal] and self.recentCooldownsPulsing[goal]==1 then
									cooldown:Show()
									self:Debug("pulse: showing, awaiting delayed hiding")
								else
									cooldown:Hide()
								end
								--]]
							end
						else
							--cooldown:Show()
						end
					end
				end

				local status,detail = goal:GetStatus()
				local is_routegoal = goal.routegroup
				local route_icon = (goal.routekind=="loop")
					and "Interface\\AddOns\\ZygorGuidesViewerRM\\Skins\\route-marker-loop.tga"
					or "Interface\\AddOns\\ZygorGuidesViewerRM\\Skins\\route-marker-arrowup.tga"
				local function set_goal_icon(defaultIndex,desaturate)
					if is_routegoal and status~="complete" then
						icon:SetTexture(route_icon)
						icon:SetTexCoord(0,1,0,1)
					else
						icon:SetTexture(ZGV.DIR.."\\Skin\\icons")
						icon:SetIcon(defaultIndex)
					end
					icon:SetDesaturated(not not desaturate)
					icon:SetVertexColor(1,1,1,1)
				end

				if status=="passive" then

					if goal.action=="talk" then
						set_goal_icon(actionicon[goal.action],false)
					else
						set_goal_icon(1,false)
					end
					back:SetVertexColor(0.0,0.0,0.0,0)

				elseif status=="incomplete" then
				
					local progress = type(detail)=="number" and detail or 0

					local gc = self:GetEffectiveGoalColors()
					local inc=gc.goalbackincomplete
					local pro=gc.goalbackprogressing
					local com=gc.goalbackcomplete
					local a = inc.a
					local r,g,b = self.gradient3(self.db.profile.goalbackprogress and progress*0.7 or 0,  inc.r,inc.g,inc.b, pro.r,pro.g,pro.b, com.r,com.g,com.b, 0.5)

					--local r,g,b,a = gradientRGBA(self.db.profile.goalbackincomplete,self.db.profile.goalbackcomplete,self.db.profile.goalbackprogress and progress*0.7 or 0)

					if goal.action~="goto" and progress>(self.recentGoalProgress[goal] or 1) then
						if self.db.profile.goalupdateflash and self.frameNeedsResizing==0 then
							anim_w2r.r,anim_w2r.g,anim_w2r.b,anim_w2r.a = r,g,b,a
							anim_w2r:Play()
							self:Debug("Animating progress: "..goal:GetText())
						end
					end
					set_goal_icon(actionicon[goal.action],false)
					if anim_w2r:IsDone() or not anim_w2r:IsPlaying() then
						back:SetVertexColor(r,g,b,a)
					end
					self.recentGoalProgress[goal] = progress

				elseif status=="complete" then

					if not self.recentlyCompletedGoals[goal] then
						self.recentlyCompletedGoals[goal]=true
						if self.db.profile.goalcompletionflash or self.db.profile.goalupdateflash and self.frameNeedsResizing==0 then
							anim_w2g:Play()
							self:Debug("Animating completion.")
						end

						-- if a goal just completed, unpause.
						self.pause=nil
					end
					set_goal_icon(3,false)
					if anim_w2g:IsDone() or not anim_w2g:IsPlaying() then
						back:SetVertexColor(fromRGBA(self:GetEffectiveGoalColors().goalbackcomplete))
					end

				elseif status=="impossible" then

					--impossible!
					set_goal_icon(actionicon[goal.action],true)
					back:SetVertexColor(fromRGBA(self:GetEffectiveGoalColors().goalbackimpossible))

				elseif status=="obsolete" then
					
					--icon:SetIcon(actionicon[goal.action])
					--icon:SetDesaturated(false)
					back:SetVertexColor(fromRGBA(self:GetEffectiveGoalColors().goalbackobsolete))
				
				end

				local iconsize = math.max(self.db.profile.fontsize * 1.45, 15)
				if self.db
				and self.db.profile
				and self:IsRemasterSkin()
				and self.db.profile.displaymode == "guide"
				and not self.db.profile.showallsteps
				then
					iconsize = self:GetCompactGuideLayoutMetrics().iconHeight or iconsize
				end
				if goal.routegroup and goal.routekind=="loop" and status~="complete" then
					iconsize = iconsize*0.82
				end
				icon:SetWidth(iconsize)
				icon:SetHeight(iconsize)
				icon:ClearAllPoints()
				if compactSingleStep then
					icon:SetPoint("TOPLEFT", line, "TOPLEFT", 0, 0)
				else
					icon:SetPoint("LEFT", line, "LEFT", 0, 0)
				end
				back:ClearAllPoints()
				back:SetPoint("TOPLEFT")
				back:SetPoint("BOTTOMRIGHT")
				if self.db.profile.goalbackgrounds then back:Show() else back:Hide() end
				if self.db.profile.goalicons then icon:Show() icon:SetAlpha(1.0) else icon:Hide() end

				if self:InlineButtonsEnabled() then
					if (action and action:IsShown()) or (petaction and petaction:IsShown()) then icon:Hide() end
				end

				if compactSingleStep then
					local hasVisibleInlineControl =
						(action and action:IsShown())
						or (petaction and petaction:IsShown())
						or (actionholder and actionholder:IsShown())
					if not hasVisibleInlineControl and label and label.GetStringHeight then
						local compactTextHeight = math.max((label:GetStringHeight() or 0), 1)
						line:SetHeight(compactTextHeight)
					end
				end
				
				--clicker:Show()

				--height = height + line:GetHeight()
			else
				icon:Hide()
				back:Hide()
				HideInlineVisuals(line, action, petaction, cooldown, actionholder)
				--label:SetText("")
				--label:SetHeight(0)
				
				--line:SetHeight(0)  -- NO. This breaks stuff.
				-- but... it's necessary..!
				
				--line:SetHeight(0)
				--cooldown:Hide()
			end
		end

		if lastlabel then
			--ZygorGuidesViewerFrame_Divider2:SetPoint("TOPLEFT",lastlabel,"BOTTOMLEFT",-15,-4)
		end

		--ZygorGuidesViewerFrame_TextTitle:SetText(self.CurrentStep.title or "")
		--if ZygorGuidesViewerFrame_TextTitle:GetRight() then ZygorGuidesViewerFrame_TextTitle:SetWidth(ZygorGuidesViewerFrame_TextTitle:GetRight()-ZygorGuidesViewerFrame_TextTitle:GetLeft()) end

		--[[
		ZygorGuidesViewerFrame_TextInfo:SetText(self.CurrentStep.info or "")
		if ZygorGuidesViewerFrame_TextInfo:GetRight() then ZygorGuidesViewerFrame_TextInfo:SetWidth(ZygorGuidesViewerFrame_TextInfo:GetRight()-ZygorGuidesViewerFrame_TextInfo:GetLeft()) end
		--ZygorGuidesViewerFrame_TextInfo:SetPoint("TOPLEFT",self.CurrentStep.title and ZygorGuidesViewerFrame_TextTitle or ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)
		ZygorGuidesViewerFrame_TextInfo:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)

		ZygorGuidesViewerFrame_TextInfo2:SetText(self.CurrentStep.info2 or "")
		if ZygorGuidesViewerFrame_TextInfo2:GetRight() then ZygorGuidesViewerFrame_TextInfo2:SetWidth(ZygorGuidesViewerFrame_TextInfo2:GetRight()-ZygorGuidesViewerFrame_TextInfo2:GetLeft()) end
		--ZygorGuidesViewerFrame_TextInfo2:SetPoint("TOPLEFT",self.CurrentStep.info and ZygorGuidesViewerFrame_TextInfo or (self.CurrentStep.title and ZygorGuidesViewerFrame_TextTitle or ZygorGuidesViewerFrame_Divider2),"BOTTOMLEFT",0,-2)
		ZygorGuidesViewerFrame_TextInfo2:SetPoint("TOPLEFT",self.CurrentStep.info and ZygorGuidesViewerFrame_TextInfo or ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)

		height = height + ZygorGuidesViewerFrame_TextInfo:GetHeight() + ZygorGuidesViewerFrame_TextInfo2:GetHeight()
		--]]

		-- aaand anchor it.


		--ZygorGuidesViewerFrame_ActiveStep:SetHeight(height)

		--ZygorGuidesViewerFrame_ActiveStep:ClearAllPoints()

		--local t = getglobal("ZygorGuidesViewerFrame_Step"..(self.CurrentStepNum))
		--ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",t,"TOPLEFT")
		--ZygorGuidesViewerFrame_ActiveStep:SetPoint("BOTTOMRIGHT",t,"BOTTOMRIGHT")

		--[[
		if self.db.profile.showallsteps then
			if self.CurrentStepNum==1 then
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",ZygorGuidesViewerFrameScrollChild,"TOPLEFT",0,-STEP_SPACING)
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",ZygorGuidesViewerFrameScrollChild,"TOPRIGHT",0,-STEP_SPACING)
			else
				local t = getglobal("ZygorGuidesViewerFrame_Step"..(self.CurrentStepNum-1))
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",t,"BOTTOMLEFT",0,-STEP_SPACING)
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",t,"BOTTOMRIGHT",0,-STEP_SPACING)
			end
		else
			-- it's all alone
			ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",ZygorGuidesViewerFrameScrollChild,"TOPLEFT",0,-STEP_SPACING)
			ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",ZygorGuidesViewerFrameScrollChild,"TOPRIGHT",0,-STEP_SPACING)
		end
		--]]
		if self.ActionButtons_Refresh then
			self:ActionButtons_Refresh()
		end
		if self:InlineButtonsEnabled() and not nonsecure_only then
			self:InlineButtons_RefreshSecureOverlays()
		elseif self:InlineButtonsEnabled() then
			self.pendingInlineCombatRefresh = true
		end
		self.inlineRenderedStepNum = self.CurrentStepNum
	end
end

function me:SetFrameScale(scale)
	scale = self.db.profile.framescale
	frame:SetScale(scale)
end

function me:ReanchorFrame()
	local frame = self.Frame
	local framemaster = frame:GetParent()
	local upsideup = not self.db.profile.resizeup

	frame:ClearAllPoints()
	if upsideup then
		--frame:SetPoint("TOP",nil,"TOP",(left+right)/2-(uiwidth/2/scale),top-uiheight/scale)
		--frame:SetPoint("TOP",frame:GetParent(),"BOTTOMLEFT",left+width/2,top)
		frame:SetPoint("TOPLEFT",framemaster,"TOPLEFT",0,0)
		frame:SetClampRectInsets(0,0,-25,0)
	else
		--frame:SetPoint("BOTTOM",nil,"BOTTOM",(left+right)/2-(uiwidth/2/scale),bottom)
		--frame:SetPoint("BOTTOM",frame:GetParent(),"BOTTOMLEFT",left+width/2,bottom)
		frame:SetPoint("BOTTOMLEFT",framemaster,"BOTTOMLEFT",0,0)
		frame:SetClampRectInsets(0,0,0,25)
	end
end

function me:AlignFrame()
	if self.db and self.db.profile and self:IsRemasterSkin() then
		if self.ApplyRemasterSkin then
			self:ApplyRemasterSkin(self.visualSkinRefreshOnly)
		end
		return
	end
	--self:Debug("aligning frame")
	--print("align")
	local frame = self.Frame
	local framemaster = frame:GetParent()

	--[[
	if not frame.aligned then return end
	--if ZGV.stepframes[1].slideup:IsPlaying() then self.delayedalign=true return end

	local scale = frame:GetScale()

	local left,top,bottom,right = frame:GetLeft(),frame:GetTop(),frame:GetBottom(),frame:GetRight()
	--self:Debug(table.concat({math.floor(left),math.floor(right),math.floor(top),math.floor(bottom)},","))
	local width = frame:GetWidth()

	self:Debug(("%.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	-- regain 100% scale
	left=left*scale  right=right*scale  bottom=bottom*scale  top=top*scale  width=width*scale

	self:Debug(("Scaled: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(left,top,bottom,right))

	--]]
	local scale = self.db.profile.framescale

	local width = frame:GetWidth()
	local height = frame:GetHeight()

	-- enter local scale
	--left=left/scale  right=right/scale  bottom=bottom/scale  top=top/scale  width=width/scale

	--self:Debug(("Now %.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	--self.temp_scansize=true

	--[[
	if not self.temp_aligncounter then self.temp_aligncounter=0 end
	self.temp_aligncounter=self.temp_aligncounter+1
	if self.temp_aligncounter==1 then a=1/nil end
	--]]

	frame:SetAlpha(self.db.profile.opacitymain)

	local upsideup = not self.db.profile.resizeup

	local UP_TOPLEFT = upsideup and "TOPLEFT" or "BOTTOMLEFT"
	local UP_BOTTOMLEFT = upsideup and "BOTTOMLEFT" or "TOPLEFT"
	local UP_BOTTOM = upsideup and "BOTTOM" or "TOP"
	local UP_TOPRIGHT = upsideup and "TOPRIGHT" or "BOTTOMRIGHT"
	local UP_BOTTOMRIGHT = upsideup and "BOTTOMRIGHT" or "TOPRIGHT"
	local UP = upsideup and 1 or -1

	local UPcoords = function(x1,x2,y1,y2)
		if upsideup then
			return x1,x2,y1,y2
		else
			return x1,x2,y2,y1
		end
	end

	local minimized = self.db.profile.hideborder and self.borderfadedout

	if upsideup then
		framemaster:SetClampRectInsets(0,(width-40)*scale,-45*scale,(-height+55)*scale)
	else
		framemaster:SetClampRectInsets(0,(width-40)*scale,-height*scale,40*scale)
	end

	ZygorGuidesViewerFrame_Border:SetBackdrop({
		--bgFile="Interface\\AddOns\\ZygorGuidesViewer\\Skin\\leavesofsteel_bgr",  -- 3.3.3 BLIZZARD TEXTURE FAIL
		bgFile = "Interface/Tooltips/UI-Tooltip-Background", --instead
		tileSize=128,
		tile=true,
		insets={top=upsideup and 20 or 0,right=0,left=0,bottom=upsideup and 0 or 0}
	})

	-- fix for evil background... wtf.
	ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)

	ZygorGuidesViewerFrame_Skipper:ClearAllPoints()
	ZygorGuidesViewerFrame_Skipper:SetPoint(UP_TOPLEFT,self.Frame,-23,-27*UP)

	ZygorGuidesViewerFrame_Border_SectionTitle:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border_Top,UP_TOPLEFT,30,-5*UP+1)
	ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMRIGHT,-30,10*UP+1)

	ZygorGuidesViewerFrame_Border_TitleBar:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TitleBar:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border,UP_TOPLEFT,0,11*UP)
	ZygorGuidesViewerFrame_Border_TitleBar:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,0,-25*UP)

	ZygorGuidesViewerFrame_Border_LockButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPLEFT,8,-13*UP)
	ZygorGuidesViewerFrame_Border_MiniButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,-40,-5*UP)
	ZygorGuidesViewerFrame_Border_SettingsButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPLEFT,40,-5*UP)
	ZygorGuidesViewerFrame_Border_CloseButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,5,-2*UP)
	
	--ntx:SetTexCoord(731/1024,850/1024,76/512,145/512)
	--ptx:SetTexCoord(731/1024,850/1024,211/512,280/512)
	--htx:SetTexCoord(731/1024,850/1024,346/512,415/512)
	ZygorGuidesViewerFrame_Border_GuideButton.upsideup = upsideup
	ZygorGuidesViewerFrame_Border_GuideButton:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_GuideButton:SetPoint(UP_BOTTOM,ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,-58,-19*UP)
	
	if minimized then
		ZygorGuidesViewerFrame_Skipper:Hide()
		ZygorGuidesViewerFrame_Border:Hide()
	else
		if self.db.profile.displaymode=="guide" then
			ZygorGuidesViewerFrame_Skipper:Show()
		else
			ZygorGuidesViewerFrame_Skipper:Hide()
		end
		ZygorGuidesViewerFrame_Border:Show()
	end


	--ZygorGuidesViewerFrame_TitleBar_SectionTitle:SetPoint(TOPLEFT,60,-4*UP)
	--ZygorGuidesViewerFrame_TitleBar_SectionTitle:SetPoint(BOTTOMRIGHT,-60,0)

	-- first line according to up/down orientation, the rest follows
	ZygorGuidesViewerFrameScroll:ClearAllPoints()
	ZygorGuidesViewerFrameScroll:SetPoint(UP_TOPLEFT,self.Frame,UP_TOPLEFT,10,-28*UP)
	ZygorGuidesViewerFrameScroll:SetPoint(UP_BOTTOMRIGHT,self.Frame,-10,10*UP)

	-- resizers
	ZygorGuidesViewerFrame_ResizerBottom:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottom:SetPoint(UP_BOTTOMLEFT,10,0)
	ZygorGuidesViewerFrame_ResizerBottom:SetPoint(UP_TOPRIGHT,self.Frame,UP_BOTTOMRIGHT,-10,10*UP)
	ZygorGuidesViewerFrame_ResizerBottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottomLeft:SetPoint(UP_BOTTOMLEFT,0,0)
	ZygorGuidesViewerFrame_ResizerBottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottomRight:SetPoint(UP_BOTTOMRIGHT,0,0)

	--local back=ZygorGuidesViewerFrame_Border:GetRegions()

	-- textures
	ZygorGuidesViewerFrame_Border_TopLeft:SetWidth(100)
	ZygorGuidesViewerFrame_Border_TopLeft:SetHeight(100*1.225)
	ZygorGuidesViewerFrame_Border_TopLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TopLeft:SetPoint(UP_TOPLEFT,-35,16*UP)
	ZygorGuidesViewerFrame_Border_TopLeft:SetTexCoord(UPcoords(0.095703125,0.2900390625,0.12109375,0.59765625))

	ZygorGuidesViewerFrame_Border_Gear1:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear1:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,10,-32*UP)
	ZygorGuidesViewerFrame_Border_Gear2:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear2:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,4,-15*UP)
	ZygorGuidesViewerFrame_Border_Gear3:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear3:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,20,-56*UP)

	ZygorGuidesViewerFrame_Border_TopRight:SetWidth(100)
	ZygorGuidesViewerFrame_Border_TopRight:SetHeight(100*1.225)
	ZygorGuidesViewerFrame_Border_TopRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TopRight:SetPoint(UP_TOPRIGHT,35,16*UP)
	ZygorGuidesViewerFrame_Border_TopRight:SetTexCoord(UPcoords(0.515625,0.7099609375,0.12109375,0.59765625))

	ZygorGuidesViewerFrame_Border_BottomLeft:SetWidth(22)
	ZygorGuidesViewerFrame_Border_BottomLeft:SetHeight(22)
	ZygorGuidesViewerFrame_Border_BottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_BottomLeft:SetPoint(UP_BOTTOMLEFT,-3,-4*UP)
	ZygorGuidesViewerFrame_Border_BottomLeft:SetTexCoord(UPcoords(161/1024,204/1024,385/512,428/512))

	ZygorGuidesViewerFrame_Border_BottomRight:SetWidth(22)
	ZygorGuidesViewerFrame_Border_BottomRight:SetHeight(22)
	ZygorGuidesViewerFrame_Border_BottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_BottomRight:SetPoint(UP_BOTTOMRIGHT,3,-4*UP)
	ZygorGuidesViewerFrame_Border_BottomRight:SetTexCoord(UPcoords(204/1024,161/1024,385/512,428/512))

	ZygorGuidesViewerFrame_Border_Top:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Top:SetHeight(35)
	ZygorGuidesViewerFrame_Border_Top:SetPoint(UP_TOPLEFT,28,11*UP)
	ZygorGuidesViewerFrame_Border_Top:SetPoint(UP_TOPRIGHT,-25,11*UP)
	local tx = ZygorGuidesViewerFrame_Border_Top:GetTexture()
	ZygorGuidesViewerFrame_Border_Top:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Top:SetTexture(tx,true)
	ZygorGuidesViewerFrame_Border_Top:SetTexCoord(UPcoords(0,1,0,1))

	ZygorGuidesViewerFrame_Border_Left:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Left:SetPoint(UP_TOPLEFT,-1,-85*UP)
	ZygorGuidesViewerFrame_Border_Left:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMLEFT,9,10*UP)
	tx = ZygorGuidesViewerFrame_Border_Left:GetTexture()
	ZygorGuidesViewerFrame_Border_Left:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Left:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Right:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Right:SetPoint(UP_TOPRIGHT,1,-35*UP)
	ZygorGuidesViewerFrame_Border_Right:SetPoint(UP_BOTTOMLEFT,self.Frame,UP_BOTTOMRIGHT,-9,10*UP)
	ZygorGuidesViewerFrame_Border_Right:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Right:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Bottom:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Bottom:SetPoint(UP_TOPLEFT,self.Frame,UP_BOTTOMLEFT,13,10*UP)
	ZygorGuidesViewerFrame_Border_Bottom:SetPoint(UP_BOTTOMRIGHT,-13,-5*UP)
	ZygorGuidesViewerFrame_Border_Bottom:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Bottom:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Logo:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_Bottom,"CENTER",0,0)

	-- flash stuff... this is a royal PITA.
	ZygorGuidesViewerFrame_Border_Flash_Top:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Top:SetHeight(80)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMLEFT,10,-8*UP)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMRIGHT,0,-8*UP)
	local tx = ZygorGuidesViewerFrame_Border_Flash_Top:GetTexture()
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexture(tx,true)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexCoord(UPcoords(0,1,0,1))

	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetWidth(125)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetHeight(139)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_TopLeft,UP_BOTTOMRIGHT,7,3*UP)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetTexCoord(UPcoords(62/1024,311/1024,23/512,300/512))

	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetWidth(130)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetHeight(90)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_TopRight,UP_BOTTOMLEFT,-13,51*UP)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetTexCoord(UPcoords(505/1024,760/1024,28/512,200/512))

	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetWidth(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetHeight(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetPoint(UP_TOPRIGHT,ZygorGuidesViewerFrame_Border_BottomLeft,UP_TOPRIGHT,20,20*UP)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetTexCoord(UPcoords(121/1024,244/1024,345/512,468/512))

	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetWidth(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetHeight(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border_BottomRight,UP_TOPLEFT,-20,20*UP)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetTexCoord(UPcoords(244/1024,121/1024,345/512,468/512))

	ZygorGuidesViewerFrame_Border_Flash_Left:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Left:SetPoint(UP_TOPLEFT,-17,-85*UP)
	ZygorGuidesViewerFrame_Border_Flash_Left:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMLEFT,9,10*UP)

	ZygorGuidesViewerFrame_Border_Flash_Right:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Right:SetPoint(UP_TOPLEFT,self.Frame,UP_TOPRIGHT,-10,-35*UP)
	ZygorGuidesViewerFrame_Border_Flash_Right:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMRIGHT,16,10*UP)
	ZygorGuidesViewerFrame_Border_Flash_Right:SetTexCoord(1,0, 1,1, 0,0, 0,1)

	ZygorGuidesViewerFrame_Border_Flash_Bottom:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetPoint(UP_TOPLEFT,self.Frame,UP_BOTTOMLEFT,13,9*UP)
	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMRIGHT,-13,-15*UP)
	--	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(UPcoords(1,0,0,0,1,1,0,1))
	if upsideup then
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(1,0,0,0,1,1,0,1)
	else
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(0,0,1,0,0,1,1,1)
	end

	ZygorGuidesViewerFrame_Border_Flash_Logo:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_Logo,"CENTER")
end

function me:UpdateSkin(visualOnly)
	local preserveHidden = false
	if self.db and self.db.profile and self.db.profile.hideborder then
		preserveHidden = self.borderfadedout == true
		if not preserveHidden and ZygorGuidesViewerFrame_Border then
			preserveHidden = (not ZygorGuidesViewerFrame_Border:IsShown()) or ((ZygorGuidesViewerFrame_Border:GetAlpha() or 1) < 0.05)
		end
		if not preserveHidden and self.RemasterFrames and self.RemasterFrames.toolbar then
			preserveHidden = (not self.RemasterFrames.toolbar:IsShown()) or ((self.RemasterFrames.toolbar:GetAlpha() or 1) < 0.05)
		end
	end

	SKINDIR = DIR.."\\Skin\\"..self.db.profile.skin

	ZygorGuidesViewerFrame_Border_GuideButton.ntx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_up")
	ZygorGuidesViewerFrame_Border_GuideButton.ptx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_down")
	ZygorGuidesViewerFrame_Border_GuideButton.htx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_hi")

	ZygorGuidesViewerFrame_Border_TopLeft:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_TopRight:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_BottomLeft:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_BottomRight:SetTexture(SKINDIR.."\\leavesofsteel")
	if ZygorGuidesViewerFrame_Border_Left then
		ZygorGuidesViewerFrame_Border_Left:SetTexture(DIR.."\\Skin\\leavesofsteel_border")
	end
	if ZygorGuidesViewerFrame_Border_Right then
		ZygorGuidesViewerFrame_Border_Right:SetTexture(DIR.."\\Skin\\leavesofsteel_border")
	end
	if ZygorGuidesViewerFrame_Border_Bottom then
		ZygorGuidesViewerFrame_Border_Bottom:SetTexture(DIR.."\\Skin\\leavesofsteel_border")
	end

	ZygorGuidesViewerFrame_Border_Logo:SetTexture(SKINDIR.."\\zglogo")
	if ZygorGuidesViewerFrame_Border_Gear1 then
		ZygorGuidesViewerFrame_Border_Gear1:SetTexture(DIR.."\\Skin\\leavesofsteel_gear1")
	end
	if ZygorGuidesViewerFrame_Border_Gear2 then
		ZygorGuidesViewerFrame_Border_Gear2:SetTexture(DIR.."\\Skin\\leavesofsteel_gear2")
	end
	if ZygorGuidesViewerFrame_Border_Gear3 then
		ZygorGuidesViewerFrame_Border_Gear3:SetTexture(DIR.."\\Skin\\leavesofsteel_gear3")
	end

	ZygorGuidesViewerFrame_Skipper_PrevButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_PrevButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_PrevButton.htx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_CloseButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_CloseButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_CloseButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_SettingsButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_SettingsButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_SettingsButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerMapIcon.ntx:SetTexture(SKINDIR.."\\zglogo")
	ZygorGuidesViewerMapIcon.ptx:SetTexture(SKINDIR.."\\zglogo")
	ZygorGuidesViewerMapIcon.htx:SetTexture(SKINDIR.."\\zglogo")
	self:ApplyMapButtonPosition()

	ZygorGuidesViewerFrame_Border_Top:SetTexture(SKINDIR.."\\leavesofsteel_top")
	if ZygorGuidesViewerFrame_Border_Flash_Top then
		ZygorGuidesViewerFrame_Border_Flash_Top:SetTexture(DIR.."\\Skin\\leavesofsteel_top_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_Left then
		ZygorGuidesViewerFrame_Border_Flash_Left:SetTexture(DIR.."\\Skin\\leavesofsteel_border_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_Right then
		ZygorGuidesViewerFrame_Border_Flash_Right:SetTexture(DIR.."\\Skin\\leavesofsteel_border_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_Bottom then
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexture(DIR.."\\Skin\\leavesofsteel_border_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_TopLeft then
		ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetTexture(DIR.."\\Skin\\leavesofsteel_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_TopRight then
		ZygorGuidesViewerFrame_Border_Flash_TopRight:SetTexture(DIR.."\\Skin\\leavesofsteel_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_BottomLeft then
		ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetTexture(DIR.."\\Skin\\leavesofsteel_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_BottomRight then
		ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetTexture(DIR.."\\Skin\\leavesofsteel_flash")
	end
	if ZygorGuidesViewerFrame_Border_Flash_Logo then
		ZygorGuidesViewerFrame_Border_Flash_Logo:SetTexture(DIR.."\\Skin\\leavesofsteel_flash")
	end

	ZygorGuidesViewerFrame_Border_SectionTitle:SetTextColor(unpack(self.db.profile.skincolors.text))

	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetNormalTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.00,0.25))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetPushedTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.25,0.50))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetDisabledTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.75,1.00))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetHighlightTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.50,0.75))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetNormalTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.00,0.25))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetPushedTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.25,0.50))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetDisabledTexture	(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.75,1.00))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetHighlightTexture	(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.50,0.75))
	if ZygorGuidesViewerFrameScrollScrollBarThumbTexture then
		ZygorGuidesViewerFrameScrollScrollBarThumbTexture:SetTexture(SKINDIR.."\\leavesofsteel")
	end
	if ZygorGuidesViewerFrameScrollScrollBarTrackerTexture then
		ZygorGuidesViewerFrameScrollScrollBarTrackerTexture:SetTexture(SKINDIR.."\\leavesofsteel")
	end

	self.visualSkinRefreshOnly = visualOnly and true or nil

	if self:IsRemasterSkin() then
		self:ApplyRemasterSkin(visualOnly)
	else
		self:RestoreLegacySkin()
	end

	if self.ApplyFrameLayout and not visualOnly then
		self:ApplyFrameLayout()
	end

	self:UpdateLocking()
	if not visualOnly then
		self:AlignFrame()
		self:ResizeFrame()
	end
	if self.RefreshAutoHideBorderState and not visualOnly then
		self:RefreshAutoHideBorderState()
	end
	if preserveHidden and self.ForceHideBorderNow then
		self:ForceHideBorderNow()
		if not visualOnly then
			self:ScheduleTimer(function()
				if ZGV and ZGV.ForceHideBorderNow then ZGV:ForceHideBorderNow() end
			end, 0.05)
			self:ScheduleTimer(function()
				if ZGV and ZGV.ForceHideBorderNow then ZGV:ForceHideBorderNow() end
			end, 0.15)
		end
	end

	self.visualSkinRefreshOnly = nil
end

function me:ApplyRemasterSkin(visualOnly)
	if not self.framesLoaded or not ZygorGuidesViewerFrame or not ZygorGuidesViewerFrame_Border then
		return
	end
	local remasterFrames = self:EnsureRemasterFrames()
	if not visualOnly then
		local compactMetrics = self:GetCompactGuideLayoutMetrics()
		local compactGuide = self.db
			and self.db.profile
			and self.db.profile.displaymode == "guide"
			and not self.db.profile.showallsteps
		local showProgressFooter = compactGuide and self.db.profile.showguideprogressbar ~= false
		LayoutRemasterFrames(
			remasterFrames,
			self.db and self.db.profile and self.db.profile.resizeup,
			showProgressFooter,
			showProgressFooter and math.max(compactMetrics.progressReserve, 8) or 0
		)
		if ZygorGuidesViewerFrameMaster and ZygorGuidesViewerFrame then
			ZygorGuidesViewerFrame:ClearAllPoints()
			if self.db and self.db.profile and self.db.profile.resizeup then
				ZygorGuidesViewerFrame:SetPoint("BOTTOMLEFT", ZygorGuidesViewerFrameMaster, "BOTTOMLEFT", 0, 0)
			else
				ZygorGuidesViewerFrame:SetPoint("TOPLEFT", ZygorGuidesViewerFrameMaster, "TOPLEFT", 0, 0)
			end
		end
	end
	if self.remasterDefaultsCaptured then
		-- already captured
	else
		self.remasterDefaultsCaptured = true
		self.RemasterDefaults = {}
		self.RemasterDefaults.border = captureFrameBackdrop(ZygorGuidesViewerFrame_Border)
		self.RemasterDefaults.borderAlpha = ZygorGuidesViewerFrame_Border and ZygorGuidesViewerFrame_Border:GetAlpha() or 1
		self.RemasterDefaults.textures = {}
		local texNames = {
			"ZygorGuidesViewerFrame_Border_TopLeft",
			"ZygorGuidesViewerFrame_Border_TopRight",
			"ZygorGuidesViewerFrame_Border_Left",
			"ZygorGuidesViewerFrame_Border_Right",
			"ZygorGuidesViewerFrame_Border_Bottom",
			"ZygorGuidesViewerFrame_Border_BottomLeft",
			"ZygorGuidesViewerFrame_Border_BottomRight",
			"ZygorGuidesViewerFrame_Border_Top",
			"ZygorGuidesViewerFrame_Border_Logo",
			"ZygorGuidesViewerFrame_Border_Gear1",
			"ZygorGuidesViewerFrame_Border_Gear2",
			"ZygorGuidesViewerFrame_Border_Gear3",
			"ZygorGuidesViewerFrame_Border_Flash_Top",
			"ZygorGuidesViewerFrame_Border_Flash_Left",
			"ZygorGuidesViewerFrame_Border_Flash_Right",
			"ZygorGuidesViewerFrame_Border_Flash_Bottom",
			"ZygorGuidesViewerFrame_Border_Flash_TopLeft",
			"ZygorGuidesViewerFrame_Border_Flash_TopRight",
			"ZygorGuidesViewerFrame_Border_Flash_BottomLeft",
			"ZygorGuidesViewerFrame_Border_Flash_BottomRight",
			"ZygorGuidesViewerFrame_Border_Flash_Logo",
		}
		for _, name in ipairs(texNames) do
			local tex = _G[name]
			if tex and tex.GetAlpha then
				self.RemasterDefaults.textures[name] = { alpha = tex:GetAlpha(), texture = tex.GetTexture and tex:GetTexture() or nil }
			end
		end

		self.RemasterDefaults.layout = {
			scroll = captureFrameLayout(ZygorGuidesViewerFrameScroll),
			titlebar = captureFrameLayout(ZygorGuidesViewerFrame_Border_TitleBar),
			skipper = captureFrameLayout(ZygorGuidesViewerFrame_Skipper),
			buttons = {
				close = captureFrameLayout(ZygorGuidesViewerFrame_Border_CloseButton),
				settings = captureFrameLayout(ZygorGuidesViewerFrame_Border_SettingsButton),
				lock = captureFrameLayout(ZygorGuidesViewerFrame_Border_LockButton),
				mini = captureFrameLayout(ZygorGuidesViewerFrame_Border_MiniButton),
			},
			scrollParent = ZygorGuidesViewerFrameScroll and ZygorGuidesViewerFrameScroll:GetParent() or nil,
			skipperParent = ZygorGuidesViewerFrame_Skipper and ZygorGuidesViewerFrame_Skipper:GetParent() or nil,
			closeParent = ZygorGuidesViewerFrame_Border_CloseButton and ZygorGuidesViewerFrame_Border_CloseButton:GetParent() or nil,
			settingsParent = ZygorGuidesViewerFrame_Border_SettingsButton and ZygorGuidesViewerFrame_Border_SettingsButton:GetParent() or nil,
			lockParent = ZygorGuidesViewerFrame_Border_LockButton and ZygorGuidesViewerFrame_Border_LockButton:GetParent() or nil,
			miniParent = ZygorGuidesViewerFrame_Border_MiniButton and ZygorGuidesViewerFrame_Border_MiniButton:GetParent() or nil,
		}
		if self.db and self.db.profile then
			self.RemasterDefaults.goalcolors = {
				goalbackincomplete = self.db.profile.goalbackincomplete,
				goalbackprogressing = self.db.profile.goalbackprogressing,
				goalbackcomplete = self.db.profile.goalbackcomplete,
				goalbackimpossible = self.db.profile.goalbackimpossible,
				goalbackaux = self.db.profile.goalbackaux,
				goalbackobsolete = self.db.profile.goalbackobsolete,
				stepbackalpha = self.db.profile.stepbackalpha,
			}
		end
	end

	if remasterFrames and remasterFrames.root then
		remasterFrames.root:Show()
	end
	if remasterFrames and remasterFrames.content then
		remasterFrames.content:Show()
	end
	if self.RefreshAutoHideBorderState and remasterFrames and not visualOnly then
		self:RefreshAutoHideBorderState()
	elseif remasterFrames then
		if remasterFrames.header then remasterFrames.header:Show() end
		if remasterFrames.separator then remasterFrames.separator:Show() end
		if remasterFrames.toolbar then remasterFrames.toolbar:Show() end
	end

	if ZygorGuidesViewerFrame_MissingText and remasterFrames and remasterFrames.content then
		ZygorGuidesViewerFrame_MissingText:SetParent(remasterFrames.content)
		if not visualOnly then
			ZygorGuidesViewerFrame_MissingText:ClearAllPoints()
			ZygorGuidesViewerFrame_MissingText:SetPoint("TOPLEFT", remasterFrames.content, "TOPLEFT", 5, -10)
			ZygorGuidesViewerFrame_MissingText:SetPoint("TOPRIGHT", remasterFrames.content, "TOPRIGHT", -5, -10)
			ZygorGuidesViewerFrame_MissingText:SetPoint("BOTTOM", remasterFrames.content, "BOTTOM", 0, 5)
		end
		if ZygorGuidesViewerFrame_MissingText.SetDrawLayer then
			ZygorGuidesViewerFrame_MissingText:SetDrawLayer("OVERLAY")
		end
	end

	-- apply user settings to remaster visuals
	if self.db and self.db.profile and remasterFrames then
		local textc = self.db.profile.skincolors and self.db.profile.skincolors.text or {0.9, 0.92, 0.98}
		local backc = self.db.profile.skincolors and self.db.profile.skincolors.back or {0.08, 0.09, 0.12}
		local backalpha = self.db.profile.backopacity or 0.3
		local opacitymain = self.db.profile.opacitymain or 1.0
		local function setTexColor(tex, r, g, b, a)
			if not tex then return end
			if tex.SetColorTexture then
				tex:SetColorTexture(r, g, b, a or 1)
			else
				tex:SetTexture(r, g, b, a or 1)
			end
		end

		local theme = ZGV:GetCurrentTheme() or {
			frameBorder = { 0.18, 0.18, 0.20, 0.92 },
			frameLight = { 0.28, 0.28, 0.30, 0.18 },
			insetBg = { 0.10, 0.10, 0.11, 0.95 },
			insetBorder = { 0.20, 0.20, 0.22, 0.90 },
			buttonBack = { 0.13, 0.13, 0.14, 0.95 },
			buttonHover = { 0.19, 0.19, 0.21, 0.98 },
			buttonBorder = { 0.27, 0.27, 0.30, 0.95 },
			separator = { 0.32, 0.32, 0.35, 0.80 },
			textPrimary = { 0.86, 0.86, 0.88, 1.00 },
			textMeta = { 0.72, 0.72, 0.75, 0.90 },
		}
		local skinData = ZGV:GetCurrentSkin()
		local currentVariantId = ZGV:GetCurrentVariant()
		local currentVariantData = skinData and skinData.variants and skinData.variants[currentVariantId]
		if remasterFrames.root then
			remasterFrames.root:SetAlpha(opacitymain)
			local rootc = (currentVariantData and currentVariantData.rootBackOverride) or backc
			remasterFrames.root:SetBackdropColor(rootc[1], rootc[2], rootc[3], backalpha)
			local rootBorderAlpha = (backalpha <= 0.005) and 0 or (theme.frameBorder[4] or 1)
			remasterFrames.root:SetBackdropBorderColor(theme.frameBorder[1], theme.frameBorder[2], theme.frameBorder[3], rootBorderAlpha)
		end
		if remasterFrames.content then
			local ib = theme.insetBg or backc
			local ia = math.min(1, (theme.insetBg[4] or 0.95) * (backalpha / 0.3))
			remasterFrames.content:SetBackdropColor(ib[1], ib[2], ib[3], ia)
			local contentBorderAlpha = (backalpha <= 0.005) and 0 or (theme.insetBorder[4] or 1)
			remasterFrames.content:SetBackdropBorderColor(theme.insetBorder[1], theme.insetBorder[2], theme.insetBorder[3], contentBorderAlpha)
		end
		if remasterFrames.headerBg then
			local headerOverride = currentVariantData and currentVariantData.headerBgOverride
			if headerOverride then
				setTexColor(remasterFrames.headerBg, headerOverride[1], headerOverride[2], headerOverride[3], headerOverride[4] or 1)
			else
				local c = theme.frameLight
				setTexColor(remasterFrames.headerBg, c[1], c[2], c[3], c[4] or 1)
			end
		end
		if remasterFrames.toolbarBg then
			local toolbarOverride = currentVariantData and currentVariantData.toolbarBgOverride
			if toolbarOverride then
				setTexColor(remasterFrames.toolbarBg, toolbarOverride[1], toolbarOverride[2], toolbarOverride[3], toolbarOverride[4] or 1)
			else
				local c = theme.frameLight
				setTexColor(remasterFrames.toolbarBg, c[1], c[2], c[3], (c[4] or 1) * 0.8)
			end
		end
		if remasterFrames.separator then
			local c = theme.separator or theme.frameBorder
			setTexColor(remasterFrames.separator, c[1], c[2], c[3], c[4] or 1)
		end
		if remasterFrames.headerTitle then
			local c = theme.textPrimary or textc
			remasterFrames.headerTitle:SetTextColor(c[1], c[2], c[3], c[4] or 1)
		end
		if remasterFrames.headerMeta then
			local c = theme.textMeta or textc
			remasterFrames.headerMeta:SetTextColor(c[1], c[2], c[3], c[4] or 0.85)
		end
		if remasterFrames.stepLabel then
			local c = theme.textPrimary or textc
			remasterFrames.stepLabel:SetTextColor(c[1], c[2], c[3], c[4] or 1)
		end
		local function applyButtonTheme(button)
			if not button then return end
			button.remasterBackColor = theme.buttonBack
			button.remasterHoverColor = theme.buttonHover
			button.remasterBorderColor = theme.buttonBorder
			button:SetBackdropColor(theme.buttonBack[1], theme.buttonBack[2], theme.buttonBack[3], theme.buttonBack[4] or 1)
			button:SetBackdropBorderColor(theme.buttonBorder[1], theme.buttonBorder[2], theme.buttonBorder[3], theme.buttonBorder[4] or 1)
		end

		applyButtonTheme(remasterFrames.guideButton)
		applyButtonTheme(remasterFrames.prevButton)
		applyButtonTheme(remasterFrames.nextButton)
		applyButtonTheme(remasterFrames.closeButton)
		applyButtonTheme(remasterFrames.settingsButton)
		applyButtonTheme(remasterFrames.miniButton)
		applyButtonTheme(remasterFrames.lockButton)
	end

	local function hideTexture(name)
		local tex = _G[name]
		if tex then
			if tex.SetAlpha then
				tex:SetAlpha(0)
			end
			if tex.Hide then
				tex:Hide()
			end
		end
	end

	hideTexture("ZygorGuidesViewerFrame_Border_TopLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_TopRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Logo")
	hideTexture("ZygorGuidesViewerFrame_Border_Left")
	hideTexture("ZygorGuidesViewerFrame_Border_Right")
	hideTexture("ZygorGuidesViewerFrame_Border_BottomLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_BottomRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Top")
	hideTexture("ZygorGuidesViewerFrame_Border_Bottom")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Top")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Left")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Right")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Bottom")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_TopLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_TopRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_BottomLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_BottomRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Logo")

	if ZygorGuidesViewerFrame_Border_Logo and ZygorGuidesViewerFrame_Border_Logo.SetTexture then
		ZygorGuidesViewerFrame_Border_Logo:SetTexture(ZGV.DIR.."\\Skins\\zygorlogo2")
		ZygorGuidesViewerFrame_Border_Logo:SetAlpha(1)
	end

	hideTexture("ZygorGuidesViewerFrame_Border_Gear1")
	hideTexture("ZygorGuidesViewerFrame_Border_Gear2")
	hideTexture("ZygorGuidesViewerFrame_Border_Gear3")

	if ZygorGuidesViewerFrame_Border_SectionTitle then
		ZygorGuidesViewerFrame_Border_SectionTitle:SetAlpha(0)
	end

	if ZygorGuidesViewerFrame_Border_TitleBar then
		ZygorGuidesViewerFrame_Border_TitleBar:SetHeight(26)
	end

	if not visualOnly and ZygorGuidesViewerFrameScroll and remasterFrames and remasterFrames.content then
		ZygorGuidesViewerFrameScroll:ClearAllPoints()
		ZygorGuidesViewerFrameScroll:SetParent(remasterFrames.content)
		ZygorGuidesViewerFrameScroll:SetPoint("TOPLEFT", remasterFrames.content, "TOPLEFT", 10, -10)
		ZygorGuidesViewerFrameScroll:SetPoint("BOTTOMRIGHT", remasterFrames.content, "BOTTOMRIGHT", -10, 10)
		ZygorGuidesViewerFrameScroll:SetFrameLevel(remasterFrames.content:GetFrameLevel() + 2)
		ZygorGuidesViewerFrameScroll:Show()
		ZygorGuidesViewerFrameScroll:EnableMouse(true)
		ZygorGuidesViewerFrameScroll:RegisterForDrag("LeftButton")
		local startDrag = remasterFrames.startDrag
		local stopDrag = remasterFrames.stopDrag
		ZygorGuidesViewerFrameScroll:SetScript("OnDragStart", startDrag)
		ZygorGuidesViewerFrameScroll:SetScript("OnDragStop", stopDrag)
		ZygorGuidesViewerFrameScroll:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" and startDrag then startDrag() end
		end)
		ZygorGuidesViewerFrameScroll:SetScript("OnMouseUp", function(self, button)
			if button == "LeftButton" and stopDrag then stopDrag() end
		end)
		if ZygorGuidesViewerFrameScrollScrollBar then
			ZygorGuidesViewerFrameScrollScrollBar:ClearAllPoints()
			ZygorGuidesViewerFrameScrollScrollBar:SetPoint("TOPRIGHT", remasterFrames.content, "TOPRIGHT", -4, -12)
			ZygorGuidesViewerFrameScrollScrollBar:SetPoint("BOTTOMRIGHT", remasterFrames.content, "BOTTOMRIGHT", -4, 12)
			ZygorGuidesViewerFrameScrollScrollBar:SetFrameLevel(remasterFrames.content:GetFrameLevel() + 2)
			ZygorGuidesViewerFrameScrollScrollBar:Hide()
		end
		if ZygorGuidesViewerFrameScrollChild and remasterFrames.content.GetWidth then
			local cw = remasterFrames.content:GetWidth() or 0
			if cw > 40 then
				local scrollbarPad = (self.db and self.db.profile and self.db.profile.showallsteps) and 39 or 20
				ZygorGuidesViewerFrameScrollChild:SetWidth(math.max(cw - scrollbarPad, 1))
				self:RequestRemasterCompactRelayout()
			end
		end
		if ZygorGuidesViewerFrameScrollChild then
			ZygorGuidesViewerFrameScrollChild:ClearAllPoints()
			ZygorGuidesViewerFrameScrollChild:SetPoint("TOPLEFT", ZygorGuidesViewerFrameScroll, "TOPLEFT", 0, 0)
			ZygorGuidesViewerFrameScrollChild:SetPoint("TOPRIGHT", ZygorGuidesViewerFrameScroll, "TOPRIGHT", 0, 0)
			ZygorGuidesViewerFrameScrollChild:SetFrameLevel(ZygorGuidesViewerFrameScroll:GetFrameLevel() + 1)
		end
		if self.stepframes and ZygorGuidesViewerFrameScrollChild then
			for _, step in ipairs(self.stepframes) do
				if step and step.SetParent then
					step:SetParent(ZygorGuidesViewerFrameScrollChild)
					step:SetFrameLevel(ZygorGuidesViewerFrameScrollChild:GetFrameLevel() + 1)
				end
			end
		end
		if self.spotframes and ZygorGuidesViewerFrameScrollChild then
			for _, spot in ipairs(self.spotframes) do
				if spot and spot.SetParent then
					spot:SetParent(ZygorGuidesViewerFrameScrollChild)
					spot:SetFrameLevel(ZygorGuidesViewerFrameScrollChild:GetFrameLevel() + 1)
				end
			end
		end
		if ZygorGuidesViewerFrameScrollScrollBar and not self.remasterScrollHooked then
			local function updateScrollBarVisibility()
				local range = ZygorGuidesViewerFrameScroll:GetVerticalScrollRange() or 0
				if ZGV.db and ZGV.db.profile and ZGV.db.profile.showallsteps and range > 0 then
					ZygorGuidesViewerFrameScrollScrollBar:Show()
				else
					ZygorGuidesViewerFrameScrollScrollBar:Hide()
				end
			end
			ZygorGuidesViewerFrameScroll:HookScript("OnShow", updateScrollBarVisibility)
			ZygorGuidesViewerFrameScroll:HookScript("OnSizeChanged", updateScrollBarVisibility)
			if ZygorGuidesViewerFrameScrollChild then
				ZygorGuidesViewerFrameScrollChild:HookScript("OnSizeChanged", updateScrollBarVisibility)
			end
			self.remasterScrollHooked = true
			updateScrollBarVisibility()
		end
	end

	if ZygorGuidesViewerFrame_Skipper then
		ZygorGuidesViewerFrame_Skipper:Hide()
		ZygorGuidesViewerFrame_Skipper.mustbevisible = nil
	end
	if ZygorGuidesViewerFrame_Border_CloseButton then
		ZygorGuidesViewerFrame_Border_CloseButton:Hide()
	end
	if ZygorGuidesViewerFrame_Border_SettingsButton then
		ZygorGuidesViewerFrame_Border_SettingsButton:Hide()
	end
	if ZygorGuidesViewerFrame_Border_MiniButton then
		ZygorGuidesViewerFrame_Border_MiniButton:Hide()
	end
	if ZygorGuidesViewerFrame_Border_LockButton then
		ZygorGuidesViewerFrame_Border_LockButton:Hide()
	end

	if ZygorGuidesViewerFrame_Border_GuideButton then
		ZygorGuidesViewerFrame_Border_GuideButton:Hide()
	end
	if ZygorGuidesViewerFrame_Border_Flash then
		ZygorGuidesViewerFrame_Border_Flash:Hide()
	end
	if ZygorGuidesViewerFrame_ThinFlash then
		ZygorGuidesViewerFrame_ThinFlash:Hide()
	end
	if ZygorGuidesViewerFrame_Border then
		ZygorGuidesViewerFrame_Border:SetAlpha(0)
		ZygorGuidesViewerFrame_Border:Hide()
	end
	if ZygorGuidesViewerFrame then
		ZygorGuidesViewerFrame:SetAlpha(1)
		ZygorGuidesViewerFrame:EnableMouse(true)
	end

	if self.db and self.db.profile then
		local skinData = ZGV:GetCurrentSkin()
		local gc = skinData and skinData.goalColors or nil
		if not self.db.profile.goalbackincomplete then self.db.profile.goalbackincomplete = gc and gc.incomplete or { r = 0.18, g = 0.20, b = 0.25, a = 0.65 } end
		if not self.db.profile.goalbackprogressing then self.db.profile.goalbackprogressing = gc and gc.progressing or { r = 0.18, g = 0.28, b = 0.35, a = 0.75 } end
		if not self.db.profile.goalbackcomplete then self.db.profile.goalbackcomplete = gc and gc.complete or { r = 0.12, g = 0.24, b = 0.20, a = 0.75 } end
		if not self.db.profile.goalbackimpossible then self.db.profile.goalbackimpossible = gc and gc.impossible or { r = 0.18, g = 0.18, b = 0.18, a = 0.6 } end
		if not self.db.profile.goalbackaux then self.db.profile.goalbackaux = gc and gc.aux or { r = 0.15, g = 0.22, b = 0.32, a = 0.6 } end
		if not self.db.profile.goalbackobsolete then self.db.profile.goalbackobsolete = gc and gc.obsolete or { r = 0.15, g = 0.22, b = 0.32, a = 0.6 } end
		if self.db.profile.stepbackalpha == nil then self.db.profile.stepbackalpha = gc and gc.stepAlpha or 0.2 end
	end

	-- On reload, some layers can momentarily reappear before OnUpdate runs.
	-- If auto-hide is enabled, force hidden immediately at remaster-apply time.
	if self.db and self.db.profile and self.db.profile.hideborder and self.ForceHideBorderNow then
		self:ForceHideBorderNow()
	end
	self:RequestRemasterCompactRelayout()
	self.remasterApplied = true
end

function me:RestoreLegacySkin()
	if not self.framesLoaded or not ZygorGuidesViewerFrame or not ZygorGuidesViewerFrame_Border then
		return
	end
	if not self.RemasterDefaults then
		return
	end
	if self.RemasterDefaults.border then
		applyFrameBackdrop(ZygorGuidesViewerFrame_Border, self.RemasterDefaults.border)
	end
	if self.RemasterDefaults.textures then
		for name, data in pairs(self.RemasterDefaults.textures) do
			local tex = _G[name]
			if tex and data then
				if data.texture and tex.SetTexture then
					tex:SetTexture(data.texture)
				end
				if data.alpha and tex.SetAlpha then
					tex:SetAlpha(data.alpha)
				end
				if tex.Show then
					tex:Show()
				end
			end
		end
	end

	if self.RemasterDefaults.layout then
		if self.RemasterDefaults.layout.scrollParent and ZygorGuidesViewerFrameScroll then
			ZygorGuidesViewerFrameScroll:SetParent(self.RemasterDefaults.layout.scrollParent)
		end
		if self.RemasterDefaults.layout.skipperParent and ZygorGuidesViewerFrame_Skipper then
			ZygorGuidesViewerFrame_Skipper:SetParent(self.RemasterDefaults.layout.skipperParent)
		end

		applyFrameLayout(ZygorGuidesViewerFrameScroll, self.RemasterDefaults.layout.scroll)
		applyFrameLayout(ZygorGuidesViewerFrame_Border_TitleBar, self.RemasterDefaults.layout.titlebar)
		applyFrameLayout(ZygorGuidesViewerFrame_Skipper, self.RemasterDefaults.layout.skipper)
		if self.RemasterDefaults.layout.buttons then
			applyFrameLayout(ZygorGuidesViewerFrame_Border_CloseButton, self.RemasterDefaults.layout.buttons.close)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_SettingsButton, self.RemasterDefaults.layout.buttons.settings)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_LockButton, self.RemasterDefaults.layout.buttons.lock)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_MiniButton, self.RemasterDefaults.layout.buttons.mini)
		end
	end

	if ZygorGuidesViewerFrame_Skipper then
		ZygorGuidesViewerFrame_Skipper:Show()
	end

	if self.RemasterFrames then
		if self.RemasterFrames.root then
			self.RemasterFrames.root:Hide()
		end
		if self.RemasterFrames.header then
			self.RemasterFrames.header:Hide()
		end
		if self.RemasterFrames.separator then
			self.RemasterFrames.separator:Hide()
		end
		if self.RemasterFrames.toolbar then
			self.RemasterFrames.toolbar:Hide()
		end
		if self.RemasterFrames.content then
			self.RemasterFrames.content:Hide()
		end
		if self.RemasterFrames.headerTitle then
			self.RemasterFrames.headerTitle:Hide()
		end
		if self.RemasterFrames.headerMeta then
			self.RemasterFrames.headerMeta:Hide()
		end
		if self.RemasterFrames.guideButton then
			self.RemasterFrames.guideButton:Hide()
		end
		if self.RemasterFrames.prevButton then
			self.RemasterFrames.prevButton:Hide()
		end
		if self.RemasterFrames.nextButton then
			self.RemasterFrames.nextButton:Hide()
		end
		if self.RemasterFrames.stepLabel then
			self.RemasterFrames.stepLabel:Hide()
		end
		if self.RemasterFrames.closeButton then
			self.RemasterFrames.closeButton:Hide()
		end
		if self.RemasterFrames.settingsButton then
			self.RemasterFrames.settingsButton:Hide()
		end
		if self.RemasterFrames.miniButton then
			self.RemasterFrames.miniButton:Hide()
		end
		if self.RemasterFrames.lockButton then
			self.RemasterFrames.lockButton:Hide()
		end
	end

	if ZygorGuidesViewerFrame_Border_GuideButton then
		ZygorGuidesViewerFrame_Border_GuideButton:Show()
	end
	if ZygorGuidesViewerFrame_Border_CloseButton then
		ZygorGuidesViewerFrame_Border_CloseButton:Show()
	end
	if ZygorGuidesViewerFrame_Border_SettingsButton then
		ZygorGuidesViewerFrame_Border_SettingsButton:Show()
	end
	if ZygorGuidesViewerFrame_Border_LockButton then
		ZygorGuidesViewerFrame_Border_LockButton:Show()
	end
	if ZygorGuidesViewerFrame_Border_MiniButton then
		ZygorGuidesViewerFrame_Border_MiniButton:Show()
	end
	if ZygorGuidesViewerFrame_Border_TitleBar then
		ZygorGuidesViewerFrame_Border_TitleBar:Show()
	end
	if ZygorGuidesViewerFrame_Border_Gear1 then
		ZygorGuidesViewerFrame_Border_Gear1:Show()
	end
	if ZygorGuidesViewerFrame_Border_Gear2 then
		ZygorGuidesViewerFrame_Border_Gear2:Show()
	end
	if ZygorGuidesViewerFrame_Border_Gear3 then
		ZygorGuidesViewerFrame_Border_Gear3:Show()
	end
	if ZygorGuidesViewerFrame_Border_Flash then
		ZygorGuidesViewerFrame_Border_Flash:Show()
	end
	if ZygorGuidesViewerFrame_ThinFlash then
		ZygorGuidesViewerFrame_ThinFlash:Show()
	end
	if ZygorGuidesViewerFrame_Border then
		if self.RemasterDefaults and self.RemasterDefaults.borderAlpha then
			ZygorGuidesViewerFrame_Border:SetAlpha(self.RemasterDefaults.borderAlpha)
		else
			ZygorGuidesViewerFrame_Border:SetAlpha(1)
		end
		ZygorGuidesViewerFrame_Border:Show()
	end
	if ZygorGuidesViewerFrame then
		ZygorGuidesViewerFrame:SetAlpha(1)
		ZygorGuidesViewerFrame:EnableMouse(true)
	end
	if self.stepframes then
		for _, step in ipairs(self.stepframes) do
			if step and step.SetParent then
				step:SetParent(ZygorGuidesViewerFrame)
			end
		end
	end
	if self.spotframes then
		for _, spot in ipairs(self.spotframes) do
			if spot and spot.SetParent then
				spot:SetParent(ZygorGuidesViewerFrame)
			end
		end
	end

	if ZygorGuidesViewerFrame_Border_SectionTitle then
		ZygorGuidesViewerFrame_Border_SectionTitle:SetAlpha(1)
	end

	if ZygorGuidesViewerFrame_MissingText then
		ZygorGuidesViewerFrame_MissingText:SetParent(ZygorGuidesViewerFrame)
		ZygorGuidesViewerFrame_MissingText:ClearAllPoints()
		ZygorGuidesViewerFrame_MissingText:SetPoint("TOPLEFT", ZygorGuidesViewerFrame, "TOPLEFT", 5, -30)
		ZygorGuidesViewerFrame_MissingText:SetPoint("TOPRIGHT", ZygorGuidesViewerFrame, "TOPRIGHT", -5, -30)
		ZygorGuidesViewerFrame_MissingText:SetPoint("BOTTOM", ZygorGuidesViewerFrame, "BOTTOM", 0, 5)
	end

	if self.RemasterDefaults and self.RemasterDefaults.goalcolors and self.db and self.db.profile then
		for k, v in pairs(self.RemasterDefaults.goalcolors) do
			self.db.profile[k] = v
		end
	end
	self.remasterApplied = false
end

function me:ResizeFrame()
	if self.db and self.db.profile and self:IsRemasterSkin() then
		if ZGV and ZGV.framemoving then
			return
		end
		if ZygorGuidesViewerFrame and not ZygorGuidesViewerFrame:IsShown() then
			return
		end
		local minHeight = self.db.profile.showallsteps and 220 or 118
		if self.loading or (self.db.profile.displaymode == "guide" and (not self.CurrentGuide or not self.CurrentGuide.steps)) then
			minHeight = math.max(minHeight, 146)
		end
		if self.db.profile.displaymode == "guide" and not self.db.profile.showallsteps then
			local count = self.db.profile.showcountsteps or 1
			if count < 1 then count = 1 end
			local contentHeight = self:GetVisibleStepContentHeight(count)
			local compactMetrics = self:GetCompactGuideLayoutMetrics()
			local showProgressFooter = self.db.profile.showguideprogressbar ~= false
			local extra = 40
				if self.RemasterFrames and self.RemasterFrames.header and self.RemasterFrames.toolbar then
					local headerh = self.RemasterFrames.header:GetHeight() or 34
					local toolbarh = self.RemasterFrames.toolbar:GetHeight() or 28
					local footerh = showProgressFooter and (compactMetrics.progressReserve or 0) or 0
					if showProgressFooter and self.RemasterFrames.footer and self.RemasterFrames.footer.IsShown and self.RemasterFrames.footer:IsShown() then
						footerh = self.RemasterFrames.footer:GetHeight() or footerh
					end
					local scrollPad = 4
					if self.db.profile.resizeup then
						local topPad = 6
						local toolbarToHeader = 6
						local bottomPad = 6
						extra = headerh + toolbarh + footerh + topPad + toolbarToHeader + bottomPad + scrollPad
					else
						local topPad = 6
						local headerToToolbar = 6
						local toolbarToContent = 10
						local bottomPad = 8
						extra = headerh + toolbarh + footerh + topPad + headerToToolbar + toolbarToContent + bottomPad + scrollPad
					end
				end
			local height = contentHeight + extra
			if height < MIN_HEIGHT then height = MIN_HEIGHT end
			if height < minHeight then height = minHeight end
			if ZygorGuidesViewerFrame then
				if InCombatLockdown() and math.abs((ZygorGuidesViewerFrame:GetHeight() or 0) - height) > 0.5 then
					self.forceRemasterRelayout = true
				end
				ZygorGuidesViewerFrame:SetHeight(height)
			end
			if self.RemasterFrames then
				LayoutRemasterFrames(
					self.RemasterFrames,
					self.db.profile.resizeup,
					showProgressFooter,
					showProgressFooter and math.max(compactMetrics.progressReserve, 8) or 0
				)
			end
			if ZygorGuidesViewerFrameScrollChild and ZygorGuidesViewerFrameScroll then
				local scrollHeight = ZygorGuidesViewerFrameScroll:GetHeight() or 0
				ZygorGuidesViewerFrameScrollChild:SetHeight(math.max(contentHeight + 4, scrollHeight))
			end
			if not self.remasterCompactRelayoutInProgress then
				self:RequestRemasterCompactRelayout()
			end
		else
			if ZygorGuidesViewerFrame then
				local targetHeight = self.db.profile.fullheight or ZygorGuidesViewerFrame:GetHeight() or minHeight
				if self.db.profile.showallsteps and targetHeight < 400 then targetHeight = 400 end
				if targetHeight < minHeight then targetHeight = minHeight end
				if ZygorGuidesViewerFrame:GetHeight() < targetHeight then
					ZygorGuidesViewerFrame:SetHeight(targetHeight)
				end
			end
		end
		if ZygorGuidesViewerFrameScroll and ZygorGuidesViewerFrameScrollScrollBar then
			local range = ZygorGuidesViewerFrameScroll:GetVerticalScrollRange() or 0
			if range > 0 and self.db.profile.showallsteps then
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
		return
	end
	--autosize
	--if (self.db.profile.autosize) then
	--print("resize")
	if self.frameNeedsResizing and self.frameNeedsResizing>0 then self.frameNeedsResizing = self.frameNeedsResizing - 1 end
	if self.frameNeedsResizing>0 then return nil end
	if not self.db then return end

	if ZygorGuidesViewerFrame_Border_Bottom:GetRect() then
		local xsize = select(3,ZygorGuidesViewerFrame_Border_Bottom:GetRect())/200
		local ysize = select(4,ZygorGuidesViewerFrame_Border_Left:GetRect())/100
		local ysize2 = select(4,ZygorGuidesViewerFrame_Border_Right:GetRect())/100
		ZygorGuidesViewerFrame_Border_Left:SetTexCoord(0.2,0.8,0,1*ysize)
		ZygorGuidesViewerFrame_Border_Right:SetTexCoord(0.2,0.8,0,1*ysize2)
		ZygorGuidesViewerFrame_Border_Bottom:SetTexCoord(0,-xsize,1,-xsize,0,xsize,1,xsize)
	end
	
	ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)


	--self:Debug("resizing from "..tostring(ZygorGuidesViewerFrame:GetHeight()))

	if self.db.profile.showallsteps or self.db.profile.displaymode=="gold" then
		ZygorGuidesViewerFrameScrollScrollBar:Show()
	else
		-- only autoresize when showing ONE step. If we have many steps, the user handles resizing.
		ZygorGuidesViewerFrameScrollScrollBar:Hide()
		--if not self.CurrentStepNum or not _G['ZygorGuidesViewerFrame_Step'..self.CurrentStepNum] then return end
		local height = 0
		for i=1,self.db.profile.showcountsteps do
			if i>1 then height = height + STEP_SPACING end
			height = height + self.stepframes[i]:GetHeight()
		end

		height = height + 40
		--self:Debug("Height "..height.."  min "..MIN_HEIGHT)
		if height < MIN_HEIGHT then height=MIN_HEIGHT end
		self.Frame:SetHeight(height)
	end


	--self:Debug(("%d %d"):format(left,bottom))
--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_Text:GetHeight()+35)
	

--	if ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop() then
		--ZygorGuidesViewerFrame_Resize.max = ZygorGuidesViewerFrame_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35
		--ZygorGuidesViewerFrame_Resize:Stop()
		--ZygorGuidesViewerFrame_Resize:Play()

--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35)
--	end

--	end
end

function me:GoalProgress(goal)
	return "epic fail"
end


function me:ScrollToCurrentStep()
--	if self.ForceScrollToCurrentStep and self.CurrentStep then
--		self.ForceScrollToCurrentStep = false
		if self.CurrentStep and self.db.profile.displaymode=="guide" then

			local height=0
			local step
			if self.db.profile.showallsteps then
				local topstep = self.stepframes[1].stepnum
				if not topstep then return end
				if self.stepframes[1].stepnum>self.CurrentStepNum --above
				or (topstep+self.StepLimit-1<self.CurrentStepNum) --way below
--				or (ZygorGuidesViewerFrame_Step1:GetTop()-_G['ZygorGuidesViewerFrame_Step'..(self.CurrentStepNum-topstep+1)]:GetBottom()+STEP_SPACING>ZygorGuidesViewerFrameScroll:GetHeight()) --barely offscreen
				or not self.stepframes[self.CurrentStepNum-topstep+1]:IsShown()
				or self.stepframes[self.CurrentStepNum-topstep+1].truncated
				then
					ZygorGuidesViewerFrameScrollScrollBar:SetValue(self.CurrentStepNum)
					ZygorGuidesViewerFrameScrollScrollBar:Show()
				end
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
--	else
--		self.ForceScrollToCurrentStep = true
--	end
end

function me:IsVisible()
	return self.Frame:IsVisible()
end

function me:SetVisible(info,onoff)
	if not onoff and self:IsVisible() then self:ToggleFrame() end
	if onoff and not self:IsVisible() then self:ToggleFrame() end
end

function me:ToggleFrame()
	if self:IsVisible() then
		self.actionsvisible = false
		self.inlineRenderedStepNum = nil
		self.pendingInlineCombatRefresh = nil
		self.pendingShowRelayoutPass = nil
		if not InCombatLockdown() then
			self:InlineButtons_SuspendSecureOverlays()
		end
		if not InCombatLockdown() then
			self:ClearFrameCurrent()
		end
		if self.ActionButtonBar then self.ActionButtonBar:Hide() end
		if self.TargetPreviewPane then self.TargetPreviewPane:Hide() end
		self.Frame:Hide()
	else
		self.suspendRemasterShowRefresh = true
		self.preparedFrameShow = true
		self.actionsvisible = false
		self.inlineRenderedStepNum = nil
		self.pendingInlineCombatRefresh = nil
		self.pendingShowRelayoutPass = 1
		self.Frame:Show()
		self:UpdateFrame(true)
		self:AlignFrame()
		if not InCombatLockdown() then
			self:InlineButtons_RefreshSecureOverlays(true)
		end
		if self.ActionButtons_Refresh then self:ActionButtons_Refresh(true) end
		if self.TargetPreview_Refresh then self:TargetPreview_Refresh(true) end
	end
end

function me:IsDefaultFitting(default)
	-- deprecated?
	local _,race = UnitRace("player")
	local _,class = UnitClass("player")
	if (class=="DEATHKNIGHT") then race=class end
	default=default:upper()
	race=race:upper()
	class=class:upper()
	return race==default or class==default or race.." "..class==default
end

--- Checks if the player's race/class matches the requirements.
-- @param requirement May be a string or a table of strings (which are then ORed).
-- @return true if matching, false if not.
function me:RaceClassMatch(fit,dkfix)
	if type(fit)=="table" then
		for i,v in ipairs(fit) do if self:RaceClassMatch(v) then return true end end
		return false --otherwise
	end

	local _,race = UnitRace("player")
	local _,class = UnitClass("player")
	race=race:upper()
	class=class:upper()
	if dkfix and class=="DEATHKNIGHT" then race="BLAH" end
	fit=fit:upper()
	local neg=false
	if fit:sub(1,1)=="!" then
		neg=true
		fit=fit:sub(2)
	end
	local ret = (race==fit or class==fit or race.." "..class==fit)
	if neg then return not ret else return ret end
end

function me:RaceClassMatchList(list)
	list=list..","
	local st,en=1
	for fit in list:gmatch("(.-),") do
		if self:RaceClassMatch(fit) then return true end
	end
end

function me:SkipStep(delta,fast)
	if not self.CurrentGuide then return end

	if self:InlineButtonsEnabled() and InCombatLockdown() then
		self.pendingInlineCombatRefresh = true
	end

	local skipped=0
	local atstart = false

	if self.completioninterval > self.completionintervallong then self.completioninterval = self.completionintervallong end

	self.completionelapsed=0
	repeat
		self:Debug("SkipStep "..delta.." "..(fast and 'fast' or ''))
		local i = self.CurrentStepNum+delta
		if i<1 then
			--if self.CurrentGuideName==1 then return end		-- first section? bail.
			if self.CurrentGuide.defaultfor then 
				atstart=true
				break
			end		-- no skipping back from a starter section.

			--local default = self:FindDefaultGuide()

			if self.CurrentGuide['prev'] then
				self:SetGuide(self.CurrentGuide['prev'])
			else
				local founddef = false
				for i,v in ipairs(self.registeredguides) do
					if v.next==self.CurrentGuideName and (not v.defaultfor or self:RaceClassMatch(v.defaultfor)) then
						self:SetGuide(i)
						founddef=true
						break
					end
				end
				if not founddef then
					atstart=true
					break
				end
			end

			--[[
			if self.CurrentGuide.defaultfor and self.CurrentGuide.defaultfor ~= race then		-- wrong default section? move to ours.
				self:SetGuide(default)
			end
			--]]
			i=#(self.CurrentGuide["steps"])
		end
		if i>#self.CurrentGuide["steps"] or (delta>0 and self.CurrentStep.finish) then
			if self.CurrentGuide['next'] then
				self:SetGuide(self.CurrentGuide['next'])
				i=1
			else
				-- no next? capping
				if self.CurrentStep.finish then
					-- capped
					self.pause=true
					return
				else
					-- cap it
					self.CurrentStep = { num=self.CurrentStepNum+1, parentGuide=self.CurrentStep.parentGuide, finish=true }
					self.CurrentStep.goals={ [1]={ num=1, action="", text="This guide is now complete.", parentStep=self.CurrentStep } }
					setmetatable(self.CurrentStep,ZGV.StepProto_mt)
					setmetatable(self.CurrentStep.goals[1],ZGV.GoalProto_mt)
					tinsert(self.CurrentGuide.steps,self.CurrentStep)
				end
			end
		end
		
		self.pause=not fast
		self.fastforward=fast
		
		self.LastSkip = delta
		self:Debug("LastSkip "..self.LastSkip)

		self:FocusStepQuiet(i) --quiet!
		skipped=skipped+1
		if skipped>10000 then error("Looping on skipping! guide "..self.CurrentGuideName.." step "..i) end
	until self.CurrentStep:AreRequirementsMet()

	if atstart then
		self.pause=true
		self.fastforward=false
	end

	self:FocusStep(self.CurrentStepNum)
end

function me:Print(s)
	if not self.db or not self.db.profile or not self.db.profile.mute_chat then
		ChatFrame1:AddMessage(L['name']..": "..tostring(s))
	end
end

function me:AnimateGears()
	if ZygorGuidesViewerFrame_Border:IsVisible() then
		ZygorGuidesViewerFrame_Border_Gear1_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear1_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear1_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear1.tangle = self.CurrentStepNum*(-11)
		ZygorGuidesViewerFrame_Border_Gear1_turn2:Play()

		ZygorGuidesViewerFrame_Border_Gear2_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear2_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear2_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear2.tangle = self.CurrentStepNum*(65)
		ZygorGuidesViewerFrame_Border_Gear2_turn2:Play()

		ZygorGuidesViewerFrame_Border_Gear3_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear3_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear3_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear3.tangle = self.CurrentStepNum*(85)
		ZygorGuidesViewerFrame_Border_Gear3_turn2:Play()
	end
end


local function dumpquest(quest)
	local s = ("%d. \"%s\" ##%d (lv=%d%s):\n"):format(quest.index,quest.title,quest.id,quest.level,quest.complete and ", complete" or "")
	for i,goal in ipairs(quest.goals) do
		s = s .. ("... %d. \"%s\" (%s, %s/%s%s)\n"):format(i,goal.leaderboard,goal.type,goal.num,goal.needed,goal.complete and ", complete" or "")
	end
	return s
end



function me:UNIT_INVENTORY_CHANGED(event,unit)
	if unit=="player" then
		self:TryToCompleteStep(true)
	end
end

function me:LiveProgressEvent()
	if not self.CurrentStep then return end
	if not self.Frame or not self.Frame:IsVisible() then return end
	self:TryToCompleteStep(true)
end

local blobstate=nil
function me:PLAYER_REGEN_DISABLED()
	--ZygorGuidesViewerFrame_Cover:Show()
	--ZygorGuidesViewerFrame_Cover:EnableMouse(true)
	self:UpdateCooldowns()
	self:InlineButtons_SuspendSecureOverlays()
	self.pendingInlineCombatRefresh = true
	self.pendingCombatNonsecureRelayoutPass = nil
	if self.db.profile.hideincombat then
		if self.Frame:IsVisible() then
			UIFrameFadeOut(self.Frame,0.5,1.0,0.0)
			self.hiddenincombat = true
		end
	end

	blobstate = WorldMapBlobFrame:IsShown()
	WorldMapBlobFrame:SetParent(nil)
	--WorldMapBlobFrame:ClearAllPoints()
	WorldMapBlobFrame:Hide()
	WorldMapBlobFrame.Hide = function() blobstate=nil end
	WorldMapBlobFrame.Show = function() blobstate=true end
end

function me:PLAYER_REGEN_ENABLED()
	--ZygorGuidesViewerFrame_Cover:Hide()
	--ZygorGuidesViewerFrame_Cover:EnableMouse(false)
	local pendingSkipDelta = self.pendingCombatSkipDelta
	local pendingSkipFast = self.pendingCombatSkipFast
	self.pendingCombatSkipDelta = nil
	self.pendingCombatSkipFast = nil
	local pendingStepNum = self.pendingCombatStepNum
	local pendingStepQuiet = self.pendingCombatStepQuiet
	self.pendingCombatStepNum = nil
	self.pendingCombatStepQuiet = nil
	if self.CurrentStep then self.CurrentStep:PrepareCompletion() end
	local pendingCombatRefresh = self.pendingInlineCombatRefresh
	self.pendingInlineCombatRefresh = nil
	self.pendingCombatNonsecureRelayoutPass = nil
	if pendingSkipDelta then
		self:SkipStep(pendingSkipDelta, pendingSkipFast)
	elseif pendingStepNum then
		self:FocusStep(pendingStepNum, pendingStepQuiet)
	elseif pendingCombatRefresh then
		self:UpdateFrame(true)
	else
		self:UpdateFrameCurrent()
	end
	self:UpdateCooldowns()
	if self.ActionButtons_Refresh then
		self:ActionButtons_Refresh(true)
	end
	if self:InlineButtonsEnabled() then
		self:InlineButtons_RefreshSecureOverlays(true)
	end
	if self.hiddenincombat then
		UIFrameFadeIn(self.Frame,0.5,0.0,1.0)
	end
	self.hiddenincombat = nil

	self:UpdateLocking()

	WorldMapBlobFrame:SetParent(WorldMapFrame)
	--WorldMapBlobFrame:SetAllPoints(WorldMapDetailFrame)
	WorldMapBlobFrame.Hide = nil
	WorldMapBlobFrame.Show = nil
	if blobstate then WorldMapBlobFrame:Show() end
end

function me:SPELL_UPDATE_COOLDOWN()
	--self:Debug("Updating cooldowns")
	self:UpdateFrameCurrent()
	self:UpdateCooldowns()
end

function me:PLAYER_CONTROL_GAINED()
	GetRealZoneText()
	self:TryToCompleteStep(true)
	self:SetWaypoint()
end

function me:FindData(array,what,data)
	if not (type(array)=="table") then return nil end
	local i,d
	for i,d in pairs(array) do if d[what]==data then return d end end
end

function me:NewQuestEvent(questTitle,id)
	self:Debug("New Quest: "..(questTitle or "?").." id "..(id or "?"))
	if not id or not questTitle then return end
	--[[
	if self.db.profile.debug then
		for index,quest in pairs(self.quests) do if quest.title==questTitle then
			print(dumpquest(quest))
		end end
	end
	--]]

	self.recentlyAcceptedQuests[questTitle]=true
	self.recentlyAcceptedQuests[id]=true

	if self.Writer then self.Writer:NotifyQuest("NEW",id,questTitle) end
end

function me:CompletedQuestEvent(questTitle,id,daily)
	self:Debug("Completed Quest: "..tostring(questTitle)..", id: "..tostring(id))

	--[[
	if not id then
		for qid,title in pairs(self.db.global.instantDailies) do
			if title==questTitle then id=qid daily=true end
		end
	end
	--]]

	self.completingQuest = nil

	if id then
		self.completedQuests[id]=true
		--self.recentlyCompletedQuests[id]=true
		--if daily then self.db.char.completedDailies[id]=time() end

		if self.CurrentGuide and self.CurrentGuide.daily and daily then self.db.char.permaCompletedDailies[id]=true end
	else
		self.completedQuestTitles[questTitle]=true
		QueryQuestsCompleted() -- start a re-fetch, just in case
		--self.recentlyCompletedQuests[questTitle]=true
		--if daily then self.db.char.completedDailies[questTitle]=time() end
	end
	
	if self.Writer then self.Writer:NotifyQuest("COMPLETED",id,questTitle) end
end

function me:LostQuestEvent(questTitle,id,surelyComplete)
	self:Debug("Lost Quest: "..tostring(questTitle)..", id: "..tostring(id)..", complete: "..tostring(surelyComplete))
	
	-- NO sure-completing. A quest may well be abandoned while complete.
	surelyComplete = false

	--[[
	if (tostring(self.completingQuest)==questTitle or surelyComplete) then
		self.db.char.completedQuests[questTitle]=true
		if id then self.db.char.completedQuests[id]=true end
		self.completingQuest = nil
	end
	--]]

	if self.Writer then self.Writer:NotifyQuest("LOST",id,questTitle) end
end



function me:Frame_OnShow()
	PlaySound("igQuestLogOpen")
	--ZygorGuidesViewerFrame_Filter()
	--[[
	if UnitFactionGroup("player")=="Horde" then
		ZygorGuidesViewerFrameTitleAlliance:Hide()
	else
		ZygorGuidesViewerFrameTitleHorde:Hide()
	end
	--]]
	self.db.profile.visible = not not self.Frame:IsVisible()
	if self.preparedFrameShow then
		self.preparedFrameShow = nil
	else
		self:UpdateFrame(true)
		self:AlignFrame()
	end
	self.deferBorderAutoHideUntil = GetTime() + 0.35
	local preserveHidden = self.db and self.db.profile and self.db.profile.hideborder and self.borderfadedout
	if not preserveHidden then
		self.borderfadedout = nil
	end
	if preserveHidden and self.ForceHideBorderNow then
		self:ForceHideBorderNow()
	elseif self.RefreshAutoHideBorderState and not self.suspendRemasterShowRefresh then
		self:RefreshAutoHideBorderState()
		if not self:IsRemasterSkin() then
			-- Re-apply once shortly after show to catch post-layout frame updates on reload.
			self:ScheduleTimer(function()
				if ZGV and ZGV.RefreshAutoHideBorderState then
					ZGV:RefreshAutoHideBorderState()
					if ZGV.db and ZGV.db.profile and ZGV.db.profile.hideborder and ZGV.ForceHideBorderNow then
						local hovered = MouseIsOver(ZygorGuidesViewerFrame,10,-10,-30,30)
						if ZygorGuidesViewerFrame_Border_TitleBar then
							hovered = hovered or MouseIsOver(ZygorGuidesViewerFrame_Border_TitleBar,10,-10,-30,30)
						end
						if not hovered then ZGV:ForceHideBorderNow() end
					end
				end
			end, 0.1)
		end
	end
	if self.suspendRemasterShowRefresh then
		self.suspendRemasterShowRefresh = nil
	end
	if self.optionalUiProfilePending and not self.questLogInitialized then
		-- Startup-visible viewer: wait until the initial guide/quest-log restore is complete.
	elseif self.optionalUiProfilePending and self.ScheduleTimer then
		self:ScheduleTimer(function()
			if ZGV and ZGV.EnsureOptionalUIProfile and ZGV.Frame and ZGV.Frame:IsShown() then
				ZGV:EnsureOptionalUIProfile()
			end
		end, 0.05)
	elseif self.optionalUiProfilePending and self.EnsureOptionalUIProfile then
		self:EnsureOptionalUIProfile()
	end

	if self.db.profile.hidearrowwithguide then
		self:SetWaypoint()
	end
end

function me:Frame_OnHide()
	PlaySound("igQuestLogClose")
	self.db.profile.visible = not not self.Frame:IsVisible()
	if not InCombatLockdown() then
		self:InlineButtons_SuspendSecureOverlays()
		for _,stepframe in ipairs(self.stepframes or {}) do
			for i=1,20,1 do
				local line = stepframe and stepframe.lines and stepframe.lines[i]
				local action = line and line.action
				local petaction = line and line.petaction
				local cooldown = line and line.cooldown
				local actionholder = line and line.actionHolder
				if line then line.inlineActionSpec = nil end
				if action then action.actionSpec = nil action.previewSubject = nil action:Hide() AB_SetInlineVisualShown(action, false) end
				if petaction then petaction.actionSpec = nil petaction.previewSubject = nil petaction:Hide() AB_SetInlineVisualShown(petaction, false) end
				if cooldown then cooldown:Hide() end
				if actionholder then actionholder:Hide() end
			end
		end
	end

	-- this is a HELL ugly hack.
	-- "Do not hide when it's the World Map that hid us".
	if self.db.profile.hidearrowwithguide
	and not WorldMapFrame.blockWorldMapUpdate -- this would mean we're enlarging the small map
	and not debugstack():find("TOGGLEWORLDMAP") -- UGLY hack
	then
		self:Debug("Hiding arrow with guide")
		self:SetWaypoint(false)
	end
end


function me:GoalOnClick(goalframe,button)
	local stepframe = goalframe:GetParent():GetParent()
	if not self.db.profile.showallsteps and stepframe.step~=self.CurrentStep then return end -- no clicking on non-current steps in compact mode
	--if stepframe:GetScript("OnClick") then stepframe:GetScript("OnClick")(stepframe,button) end

	local goal = goalframe:GetParent().goal
	if not goal then return end
	--local num=goalframe.goalnum
	self:Debug("goal clicked "..tostring(goal.num))
	--local goal = self.CurrentStep.goals[num]
	if button=="LeftButton" then
		if goal.action=="confirm" then
			self.recentlyStickiedGoals[goal]=true
			self.pause=nil
			self.LastSkip=1
			-- Allow confirm+next jumps to fire immediately on click instead of
			-- waiting for the autoskip tick.
			local function TryGoalJump(g,force)
				if not g or not g.parentStep or not g.parentStep.GetJumpDestination then return false end
				local nextdest = g.next or g.parentStep.next
				if not nextdest then return false end
				if not g:IsVisible() then return false end
				local jumpnow = false
				if force then
					jumpnow = true
				elseif g:IsCompleteable() then
					local complete = g:IsComplete()
					jumpnow = complete and true or false
				else
					jumpnow = true
				end
				if not jumpnow then return false end

				local stepnum,guidename = g.parentStep:GetJumpDestination(nextdest)
				if not guidename then return false end
				if guidename~=self.CurrentGuideName then
					if self:GetGuideByTitle(guidename) then
						self:SetGuide(guidename,stepnum or 1)
						return true
					end
					return false
				end
				if not stepnum then return false end
				if stepnum<1 then stepnum=1 end
				if self.CurrentGuide and stepnum>#self.CurrentGuide.steps then stepnum=#self.CurrentGuide.steps end
				if stepnum~=self.CurrentStepNum then
					self:FocusStep(stepnum)
					return true
				end
				return false
			end

			-- Prefer clicked goal jump.
			if TryGoalJump(goal) then return end
			-- Fallback: if user clicked another line in the same step, still honor
			-- any completed visible next-goal in the step.
			local step = goal.parentStep
			if step and step.goals then
				for _,g in ipairs(step.goals) do
					if TryGoalJump(g) then return end
				end
				-- Last resort: confirm clicks are explicit user intent to advance.
				-- If completion state is stale, still honor visible step-local next tags.
				for _,g in ipairs(step.goals) do
					if TryGoalJump(g,true) then return end
				end
			end
			self:UpdateFrame()
		elseif goal.x and not goal.force_noway then
			self:SetWaypoint(goal.num)
		elseif goal.questid then
			--if InCombatLockdown() then return end
			if self.questsbyid[goal.questid] and WorldMap_OpenToQuest then -- 3.3.0
				WorldMap_OpenToQuest(goal.questid)
				local done,posX,posY,obj = QuestPOIGetIconInfo(goal.questid)
				if posX or posY then
					local q = self.questsbyid[goal.questid]
					local title
					if q then title=q.title end
					self:Debug("Setting waypoint to POI: "..posX.." "..posY)
					self:SetWaypoint(posX*100,posY*100,title)
				end
			end
			local max = self.maxQuestLevels[goal.questid]
			local qname = goal.quest or (goal.questid and tostring(goal.questid)) or "?"
			self:Print("Quest \""..qname.."\" (#"..tostring(goal.questid).."): done at level "..tostring(goal.parentStep.level)..", reaches to level "..tostring(max))
			local mentioned = me:GetMentionedFollowups(goal.questid)
			if #mentioned>1 then
				local s=""
				for i=2,#mentioned do
					if #s>0 then s=s.."\n" end
					s=s.."\""..(me:GetQuestData(mentioned[i][1]) or "?").."\" (#"..tostring(mentioned[i][1])..") at level "..mentioned[i][2]
				end
				self:Print("Follow-ups:\n"..s)
			else
				self:Print("No follow-ups.")
			end
		end
	else
		if self.recentlyCompletedGoals[goal] then
			self.recentlyCompletedGoals[goal]=false
			self.recentlyStickiedGoals[goal]=false
			self.recentlyVisitedCoords[goal]=false
			if goal.quest and IsShiftKeyDown() then
				self.completedQuests[goal.quest]=nil
				if goal.questid then self.completedQuests[goal.questid]=nil end
				self:Print("Marking quest '"..goal.quest.."'"..(goal.questid and " (#"..goal.questid..")" or "").." as not completed.")
			else
				self:Print("Marking step as incomplete.")
			end
		else
			--self.recentlyCompletedGoals[goal]=true
			self.recentlyStickiedGoals[goal]=true
			if goal.quest and IsShiftKeyDown() then
				self.completedQuests[goal.quest]=true
				if goal.questid then self.completedQuests[goal.questid]=true end
				self:Print("Marking quest '"..goal.quest.."'"..(goal.questid and " (#"..goal.questid..")" or "").." as completed.")
			end
		end
		self.pause=nil
		self.LastSkip=1
		--self.AutoskipTemp = true
		self:UpdateFrame()
	end
end

function me:GoalOnEnter(goalframe)
	local goal = goalframe:GetParent().goal
	if not goal then return end

	local wayline,infoline,image

	local tooltip = goal._display_tooltip or goal.tooltip
	if tooltip and not self.db.profile.tooltipsbelow then
		infoline = "|cff00ff00"..tooltip.."|r"
	end
	if goal.x and goal.y and goal.map then
		-- if locked or force_noway, then no clicking, bare info.
		if self.db.profile.windowlocked or goal.force_noway then
			wayline = L['tooltip_waypoint_coords']:format(goal.map.." "..goal.x..";"..goal.y)
		else
			wayline = L['tooltip_waypoint']:format(goal.map.." "..goal.x..";"..goal.y)
		end
	end

	if goal.image then
		image = DIR.."\\Images\\"..goal.image..".tga"
	end

	if infoline or wayline or image then
		GameTooltip:SetOwner(goalframe,"ANCHOR_TOPRIGHT")
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM",goalframe,"TOP")
		GameTooltip:SetText(goal:GetText())

		local lines=1
		if infoline then
			GameTooltip:AddLine(infoline,0,1,0)
			if _G['GameTooltipTextLeft'..lines]:GetWidth()>300 then _G['GameTooltipTextLeft'..lines]:SetWidth(300) end
			lines=lines+1
		end
		if wayline then
			GameTooltip:AddLine(wayline,0,1,0)
			if _G['GameTooltipTextLeft'..lines]:GetWidth()>300 then _G['GameTooltipTextLeft'..lines]:SetWidth(300) end
			lines=lines+1
		end
		GameTooltip:Show()
		if image then
			local img

			--[[
			local img = _G['GameTooltipZygorImage']
			if not img then
				img = GameTooltip:CreateTexture("GameTooltipZygorImage","ARTWORK")
			end
			--]]
			img = GameTooltipTexture1
			GameTooltip:AddLine(" ")
			GameTooltip:AddTexture(image)
			img:ClearAllPoints()
			img:SetPoint("TOPLEFT",_G['GameTooltipTextLeft'..lines],"BOTTOMLEFT")
			--img:SetTexture(image)
			img:SetWidth(128)
			img:SetHeight(128)
			img:Show()
			GameTooltip:Show()
			GameTooltip:SetHeight(150 + lines*20)
		end
	end
end

function me:GoalOnLeave(goalframe,num)
	GameTooltip:Hide()
end


local function insert_guides(arr,guides)
	local data
	for i,guide in ipairs(guides) do
		data = ZGV:GetGuideByTitle(guide.full)
		local item = {
			text = guide.step and L['menu_last_entry']:format(guide.short or "?",guide.step) or (guide.short or "?"),
			checked = function() return ZGV.CurrentGuideName==guide.full end,
			func = function()  CloseDropDownMenus()  ZGV:SetGuide(guide.full,guide.step) end,
			tooltipTitle = data and data.description and guide.short,
			tooltipText = data and data.description,
			tooltipOnButton = true,
		}
		tinsert(arr,item)
	end
end

local function group_to_array(group)
	local arr = {}
	for i,group in ipairs(group.groups) do
		local item = {
			text = group.name,
			hasArrow = true,
			menuList = group_to_array(group),
			keepShownOnClick = true,
			func = function(self) _G[self:GetName().."Check"]:Hide() end,
			--notCheckable = true
		}
		--if #item.menuTable>0 then
			tinsert(arr,item)
		--end
	end
	insert_guides(arr,group.guides)
	return arr
end

local function BuildDropDown_GuideMenu(level,value)
	local self=ZGV
	--[[
	local menu = { }

	menu = group_to_array(self.registered_groups)
	EasyMenu(menu,ZGVFMenu,"ZygorGuidesViewerFrame_Border_TitleBar",30,10,"MENU",3)
	--]]
end

function me:OpenGuideMenu()
	--Dewdrop:Register(ZygorGuidesViewerFrame_Border_TitleBar, 'children', BuildDropDown_GuideMenu, 'point', "TOPRIGHT", 'relativePoint', "RIGHT", 'dontHook', true)
	--Dewdrop:Open(ZygorGuidesViewerFrame_Border_TitleBar)

	-- basic guides
	local menu = group_to_array(self.registered_groups)

	-- history
	tinsert(menu,{ text=L['menu_last'],isTitle=true })
	insert_guides(menu,self.db.char.guides_history)

	-- display!
	UIDropDownMenu_SetAnchor(ZGVFMenu, -50, 15, "TOPRIGHT", ZygorGuidesViewerFrame_Border_TitleBar, "BOTTOMRIGHT")
	--local backdrop = DropDownList1:GetBackdrop()
	--backdrop.edgeSize=16
	--DropDownList1:SetBackdrop(backdrop)
	EasyMenu(menu,ZGVFMenu,nil,30,10,"MENU",3)
	UIDropDownMenu_SetWidth(ZGVFMenu, 300)
	-- Clamp the root dropdown so it always opens fully on-screen near UI edges.
	local root = _G.DropDownList1
	if root and root.IsShown and root:IsShown() and root.GetLeft and root.GetRight then
		root:SetClampedToScreen(true)
		local left,right = root:GetLeft(), root:GetRight()
		local top,bottom = root:GetTop(), root:GetBottom()
		local pleft,pright = UIParent:GetLeft() or 0, UIParent:GetRight() or GetScreenWidth()
		local ptop,pbottom = UIParent:GetTop() or GetScreenHeight(), UIParent:GetBottom() or 0
		if left and right and top and bottom then
			local nx, ny = left, top
			local pad = 6
			if left < pleft + pad then nx = pleft + pad end
			if right > pright - pad then nx = nx - (right - (pright - pad)) end
			if top > ptop - pad then ny = ptop - pad end
			if bottom < pbottom + pad then ny = ny + ((pbottom + pad) - bottom) end
			root:ClearAllPoints()
			root:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", nx, ny)
		end
	end
end

function me:ToggleWindowLock()
	if not (self.db and self.db.profile) then return end
	self.db.profile.windowlocked = not self.db.profile.windowlocked
	self:UpdateLocking()
end

function me:SetHideBorder(value)
	if not (self.db and self.db.profile) then return end
	local v = not not value
	self.db.profile.hideborder = v
	ZGV.borderfadedout = nil
	if self.RefreshAutoHideBorderState then
		self:RefreshAutoHideBorderState()
	end
	if not v then
		if ZygorGuidesViewerFrame_Border then
			ZygorGuidesViewerFrame_Border:Show()
			ZygorGuidesViewerFrame_Border:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
		end
		if ZygorGuidesViewerFrame_Skipper and ZygorGuidesViewerFrame_Skipper.mustbevisible then
			ZygorGuidesViewerFrame_Skipper:Show()
			ZygorGuidesViewerFrame_Skipper:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
		end
	end
end

function me:ToggleHideBorder()
	self:SetHideBorder(not (self.db and self.db.profile and self.db.profile.hideborder))
end

function me:SetResizeUp(value)
	if not (self.db and self.db.profile) then return end
	self.db.profile.resizeup = not not value
	self.forceRemasterRelayout = true
	self:ReanchorFrame()
	self:Debug("size up? "..tostring(self.db.profile.resizeup))
	self:AlignFrame()
	self:UpdateFrame(true)
	if self.ActionButtons_ApplyAnchor then self:ActionButtons_ApplyAnchor() end
	if self.TargetPreview_ApplyAnchor then self:TargetPreview_ApplyAnchor() end
	self.pendingResizeDirectionRelayoutPass = 1
end

function me:ToggleResizeUp()
	self:SetResizeUp(not (self.db and self.db.profile and self.db.profile.resizeup))
end

function me:SetHideInCombat(value)
	if not (self.db and self.db.profile) then return end
	self.db.profile.hideincombat = not not value
	if self.db.profile.hideincombat and InCombatLockdown and InCombatLockdown() then
		if self.Frame and self.Frame:IsVisible() then
			UIFrameFadeOut(self.Frame,0.5,1.0,0.0)
			self.hiddenincombat = true
		end
	elseif not self.db.profile.hideincombat and self.hiddenincombat and self.Frame then
		UIFrameFadeIn(self.Frame,0.5,0.0,1.0)
		self.hiddenincombat = nil
	end
end

function me:ToggleHideInCombat()
	self:SetHideInCombat(not (self.db and self.db.profile and self.db.profile.hideincombat))
end

function me:OpenQuickMenu(anchor)
	local menu = {
		--[[
		{
			text = L['opt_group_window'],
			isTitle = true,
		},
		--]]
		{
			text = L['opt_hideborder'],
			tooltipTitle = L['opt_hideborder'],
			tooltipText = L["opt_hideborder_desc"],
			checked = function() return self.db.profile.hideborder end,
			func = function() self:ToggleHideBorder() end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_windowlocked'],
			tooltipTitle = L['opt_windowlocked'],
			tooltipText = L['opt_windowlocked_desc'],
			checked = function()  return self.db.profile.windowlocked end,
			func = function()  self:ToggleWindowLock()  end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_miniresizeup'],
			tooltipTitle = L['opt_miniresizeup'],
			func = function() self:ToggleResizeUp() end,
			checked = function() return self.db.profile.resizeup end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_hideincombat'],
			tooltipTitle = L['opt_hideincombat'],
			tooltipText = L['opt_hideincombat_desc'],
			checked = function()  return self.db.profile.hideincombat  end,
			func = function()  self:ToggleHideInCombat()  end,
			keepShownOnClick = true,
		},
		--[[
		{
			name = L['opt_group_step'],
			isTitle = true,
		},
		{
			text = L["opt_do_searchforgoal"],
			notCheckable = true,
			func = function() ZGV:SearchForCompleteableGoal() end
		}
		--]]
	}

	-- Gear Advisor submenu
	table.insert(menu, { text = "", notCheckable = true, disabled = true }) -- separator
	table.insert(menu, {
		text = "|cffffd200Gear Advisor|r",
		notCheckable = true,
		hasArrow = true,
		menuList = {
			{
				text = "Enable Gear Advisor",
				checked = function() return self.db.profile.autogear end,
				func = function()
					self.db.profile.autogear = not self.db.profile.autogear
					if ZGV.ItemScore and ZGV.ItemScore.GearFinder and ZGV.ItemScore.GearFinder.UpdateSystemTab then
						ZGV.ItemScore.GearFinder:UpdateSystemTab()
					end
				end,
				keepShownOnClick = true,
			},
			{
				text = "Show ItemScore on Tooltips",
				checked = function() return self.db.profile.itemscore_tooltips end,
				func = function() self.db.profile.itemscore_tooltips = not self.db.profile.itemscore_tooltips end,
				keepShownOnClick = true,
			},
			{
				text = "Auto-equip Upgrades",
				checked = function() return self.db.profile.autogearauto end,
				func = function() self.db.profile.autogearauto = not self.db.profile.autogearauto end,
				keepShownOnClick = true,
			},
			{
				text = "Auto-sell Grey Items",
				checked = function() return self.db.profile.autosellgrey end,
				func = function() self.db.profile.autosellgrey = not self.db.profile.autosellgrey end,
				keepShownOnClick = true,
			},
			{ text = "", notCheckable = true, disabled = true },
			{
				text = "Gear Advisor Settings...",
				notCheckable = true,
				func = function() self:OpenOptions("gear") end,
			},
			{
				text = "Edit Stat Weights...",
				notCheckable = true,
				func = function() self:OpenOptions("itemscore") end,
			},
		},
	})

	if anchor then
		UIDropDownMenu_SetAnchor(ZGVFMenu, 0, 0, "TOPRIGHT", anchor, "BOTTOMRIGHT")
		EasyMenu(menu,ZGVFMenu,nil,0,0,"MENU",3)
	else
		EasyMenu(menu,ZGVFMenu,"ZygorGuidesViewerFrame_Border_SettingsButton",0,0,"MENU",3)
	end
end

function me:OpenQuickSteps()
	local menu = {
		{
			text=L["opt_showcountsteps"],
			isTitle = true,
		},
		{
			text=L["opt_showcountsteps_all"],
			func=function() self:SetOption("StepDisplay","showcountsteps 0") end,
			checked=function() return self.db.profile.showallsteps end,
		},
		{
			text='1',
			func=function() self:SetOption("StepDisplay","showcountsteps 1") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==1 end,
		},
		{
			text='2',
			func=function() self:SetOption("StepDisplay","showcountsteps 2") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==2 end,
		},
		{
			text='3',
			func=function() self:SetOption("StepDisplay","showcountsteps 3") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==3 end,
		},
		{
			text='4',
			func=function() self:SetOption("StepDisplay","showcountsteps 4") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==4 end,
		},
		{
			text='5',
			func=function() self:SetOption("StepDisplay","showcountsteps 5") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==5 end,
		},
	}

	EasyMenu(menu,ZGVFMenu,"cursor",0,0,"MENU",3)
end

local function split(str,sep)
	local fields = {}
	str = str..sep
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

local function FindGroup(self,title)
	local path = split(title,"\\")

	-- create one
	local group=self
	for i=1,#path do
		local found = false
		for n,gr in ipairs(group.groups) do
			if gr.name==path[i] then
				found=true
				group=gr
			end
		end
		if not found then
			tinsert(group.groups,{name=path[i],groups={},guides={}})
			group=group.groups[#group.groups]
		end
	end
	return group
end

me.registered_groups = { groups={},guides={}}
me.registered_includes = {}
me.mutexes = me.mutexes or {}

-- Compatibility shim for legacy guide/include files that guard duplicate loads.
function me:DoMutex(name)
	if not name then return false end
	if self.mutexes[name] then return true end
	self.mutexes[name] = true
	return false
end

function me:RegisterInclude(name,data)
	if not name or not data then return end
	self.registered_includes[name] = data
end

function me:NormalizeRealmName(name)
	if type(name) ~= "string" then return nil end
	local normalized = name:gsub("^%s+",""):gsub("%s+$","")
	if normalized == "" then return nil end
	normalized = normalized:lower():gsub("[%s%-'`]+","")
	if normalized == "" then return nil end
	return normalized
end

function me:GuideRealmMatches(realmTag)
	if type(realmTag) ~= "string" then return true end
	realmTag = realmTag:gsub("^%s+",""):gsub("%s+$","")
	if realmTag == "" then return true end

	local playerRealm = self:NormalizeRealmName((GetRealmName and GetRealmName()) or "")
	if not playerRealm then return true end

	local hadToken = false
	for token in realmTag:gmatch("([^,;|]+)") do
		hadToken = true
		local normalizedToken = self:NormalizeRealmName(token)
		if normalizedToken and normalizedToken == playerRealm then
			return true
		end
	end

	-- Support plain single-value tags without separators.
	if not hadToken then
		local normalizedTag = self:NormalizeRealmName(realmTag)
		return not normalizedTag or normalizedTag == playerRealm
	end

	return false
end

function me:RegisterGuide(title,data,extra)
	local function DeriveGuideType(guideTitle, guideHeader)
		local headerType = guideHeader and guideHeader.type
		if headerType and headerType ~= "" then
			local normalized = tostring(headerType):lower()
			if normalized == "gold" then return "GOLD" end
			if normalized == "professions" then return "profession" end
			return normalized
		end
		if guideTitle:match("^GOLD") or guideTitle:match("^Gold") or guideTitle:match("Farming") or guideTitle:match("Gathering") or guideTitle:match("Gold Runs") then
			return "GOLD"
		elseif guideTitle:match("^Leveling") then
			return "leveling"
		elseif guideTitle:match("^Dungeon") or guideTitle:match("^Gear") then
			return "dungeon"
		elseif guideTitle:match("^Dailies") or guideTitle:match("^Daily") then
			return "daily"
		elseif guideTitle:match("^Profession") then
			return "profession"
		elseif guideTitle:match("^Reputation") then
			return "reputation"
		elseif guideTitle:match("^Title") then
			return "title"
		elseif guideTitle:match("^Event") then
			return "event"
		elseif guideTitle:match("^Pets") or guideTitle:match("^Mount") or guideTitle:match("^Hunter Pet") then
			return "petsmounts"
		end
	end

	local header
	if type(data)=="string" and self.ParseHeader then
		local ok,parsedHeader = pcall(self.ParseHeader,self,data)
		if ok and type(parsedHeader)=="table" then
			header = parsedHeader
		end
	end
	local guideRealm = type(header)=="table" and header.realm or nil
	if guideRealm and guideRealm ~= "" and not self:GuideRealmMatches(guideRealm) then
		return
	end

	local group,tit = title:match("^(.*)\\+(.-)$")
	if group then
		group = FindGroup(self.registered_groups,group)
	else
		group = self.registered_groups
	end

	local stack = debugstack and debugstack() or ""
	local isRetailImport = stack:find("Guides\\Retail\\", 1, true) and true or nil
	local guide = {['title']=title,['title_short']=tit or title,['rawdata']=data,['extra']=extra,realm=guideRealm,parsed=false,parse_failed=nil,is_retail_import=isRetailImport}

	if header then
		guide.headerdata = header
		if header.author then guide.author = header.author end
		if header.image then guide.image = header.image end
		if header.next then guide.next = header.next end
		if header.startlevel then guide.startlevel = header.startlevel end
		if header.endlevel then guide.endlevel = header.endlevel end
		if header.defaultfor then guide.defaultfor = header.defaultfor end
		if header.faction then guide.faction = header.faction end
		guide.type = DeriveGuideType(title, header)
	end

	-- Support retail-style guide registration: RegisterGuide("TITLE", {meta=..., items=..., maps=...}, [[steps]])
	if type(data) == "table" then
		guide.headerdata = data
		guide.rawdata = extra or ""
		guide.extra = nil
		-- Extract metadata from retail table format into flat guide fields
		if data.author then guide.author = data.author end
		if data.image then guide.image = data.image end
		if data.next then guide.next = data.next end
		if data.startlevel then guide.startlevel = data.startlevel end
		if data.endlevel then guide.endlevel = data.endlevel end
		if data.defaultfor then guide.defaultfor = data.defaultfor end
		if data.faction then guide.faction = data.faction end
		guide.type = DeriveGuideType(title, data)
	end
	if not guide.rawdata or guide.rawdata == "" then
		guide.parsed = true
	end

	tinsert(group.guides,{full=title,short=tit or title,num=#self.registeredguides+1})
	tinsert(self.registeredguides,guide)
end

me.registered_mapspotset_groups = { groups={},guides={}}

function me:RegisterMapSpots(title,data)
	local group,tit = title:match("^(.*)\\+(.-)$")
	if group then
		group = FindGroup(self.registered_mapspotset_groups,group)
	else
		group = self.registered_mapspotset_groups
	end

	local set = self.MapSpotSetProto:NewRaw(title,tit or title,data)

	tinsert(group.guides,{full=title,short=tit or title,num=#self.registeredmapspotsets+1})
	tinsert(self.registeredmapspotsets,set)
end

--[[
function me:UnregisterGuide(name)
	local data
	if type(name)=="number" then
		if self.registeredguides[name] then
			data = self.registeredguides[name].data
			table.remove(self.registeredguides,name)
			self:Print("Unregistered guide number: "..name)
		else
			self:Print("Cannot find guide number: "..name)
			return false
		end
	else
		local i,v
		for i,v in ipairs(self.registeredguides) do
			if v.title==name then
				data = v
				table.remove(self.registeredguides,i)
				self:Print("Unregistered guide: "..name)
			end
		end
		if not data then
			self:Print("Cannot find guide: "..name)
			return false
		end
	end
	if data.is_stored then
		self.db.global.storedguides[name] = nil
		self:Print("Removed stored data for: "..name)
	end
	return true
end
--]]

function me:Startup()
	if self.guidesloaded then return end
	if me:ParseGuides() then
		self:OnGuidesLoaded()
	end
end

function me:OnGuidesLoaded()
	self.Log:Add("Guides loaded. -----")

	self:QueryQuests()

	self:ListMentionedQuests()
	self:CacheMentionedFollowups()

	self.completiontimer = self:ScheduleRepeatingTimer("TryToCompleteStep", 0.1)
	--self.notetimer = self:ScheduleRepeatingTimer("SetWaypoint", 1)
	self.dailytimer = self:ScheduleRepeatingTimer("QuestTracking_ResetDailies", 5)

	--self:CancelTimer(self.startuptimer,true)

	self.pause = true

	self:Print(L['welcome_guides']:format(#self.registeredguides))

	self:UpdateFrame(true)

	self:OnFirstQuestLogUpdate()
end

function me:ParseGuides()
	if not self.db.char.maint_startguides then return true end
	self.loading=true

	if self.db and self.db.char and self.db.char.guidename then
		local currentGuide = self:GetGuideByTitle(self.db.char.guidename)
		if currentGuide and currentGuide.rawdata and not currentGuide.parsed and not currentGuide.parse_failed then
			self:EnsureGuideParsed(currentGuide,true)
		end
	end

	if #self.registeredmapspotsets>0 then
		for i,guide in ipairs(self.registeredmapspotsets) do
			if guide.rawdata then
				local status,parsedset,err,line,linedata = pcall(self.MapSpotSetProto.ParseRaw,guide)
				if status then
					self.loadprogress = i/#self.registeredmapspotsets
					guide:Show()
				else
					if not status then err=parsedset line=0 linedata="" end
					if err then
						self:Print(L["message_errorloading_full"]:format(guide.title,line,linedata,err))
					else
						self:Print(L["message_errorloading_brief"]:format(guide.title))
					end
					guide.rawdata=nil
				end
				self:UpdateFrame(true)
				return false
			end
		end

		local tab1 = self.Frame.Border.Gears.Tab1
		tab1:SetPoint("LEFT",self.Frame.Border,"TOPLEFT",65,-12)
		tab1:SetText(L["frame_tab_guides"])
		tab1:SetNormalFontObject(ZGVFTabFont)
		--PanelTemplates_TabResize(self.Tab1,0);
		--_G[self.Tab1:GetName().."HighlightTexture"]:SetWidth(self.Tab1:GetTextWidth() + 20);
		tab1:SetScript("OnClick",function() ZGV:SetDisplayMode("guide") end)
		tab1:Show()

		local tab2 = self.Frame.Border.Gears.Tab2
		tab2:SetPoint("LEFT",tab1,"RIGHT")
		tab2:SetText(L["frame_tab_spots"])
		tab2:SetNormalFontObject(ZGVFTabFont)
		--ZGVFrameTab2Text:SetText("Spots")
		--PanelTemplates_TabResize(self.Tab2,0);
		--_G[self.Tab2:GetName().."HighlightTexture"]:SetWidth(self.Tab2:GetTextWidth() + 20);
		tab2:SetScript("OnClick",function() ZGV:SetDisplayMode("gold") end)
		tab2:Show()
	end

	self.loading=nil
	self.guidesloaded=true
	return true
end

--[[
function me:RegisterStoredGuides()
	local k,v
	for k,v in pairs(self.db.global.storedguides) do
		table.insert(self.registeredguides,{title=k,data=v,is_stored=true})
		self:Print("Retrieved guide "..k.." from storage.")
	end
end
--]]

function me:UpdateMapButton()
	self:ApplyMapButtonPosition()
	if self.db.profile.showmapbutton then ZygorGuidesViewerMapIcon:Show() else ZygorGuidesViewerMapIcon:Hide() end
end

function me:GetMapButtonAngle()
	if self.db and self.db.profile then
		return NormalizeDegrees(self.db.profile.mapbuttonangle)
	end
	return MAPBUTTON_DEFAULT_ANGLE
end

function me:ApplyMapButtonPosition(angle)
	if not ZygorGuidesViewerMapIcon or not Minimap then return end
	angle = NormalizeDegrees(angle or self:GetMapButtonAngle())
	local x = cos(rad(angle)) * MAPBUTTON_RADIUS
	local y = sin(rad(angle)) * MAPBUTTON_RADIUS
	ZygorGuidesViewerMapIcon:ClearAllPoints()
	ZygorGuidesViewerMapIcon:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

function me:SetMapButtonAngle(angle)
	angle = NormalizeDegrees(angle)
	if self.db and self.db.profile then
		self.db.profile.mapbuttonangle = angle
	end
	self:ApplyMapButtonPosition(angle)
end

function me:StartMapButtonDrag(button)
	if not button then return end
	button.isDragging = true
	self:UpdateMapButtonDrag(button)
end

function me:UpdateMapButtonDrag(button)
	button = button or ZygorGuidesViewerMapIcon
	if not button or not button.isDragging or not Minimap then return end
	local minimapX, minimapY = Minimap:GetCenter()
	if not minimapX or not minimapY then return end
	local cursorX, cursorY = GetCursorPosition()
	local scale = UIParent:GetEffectiveScale()
	cursorX = cursorX / scale
	cursorY = cursorY / scale
	local dx = cursorX - minimapX
	local dy = cursorY - minimapY
	if dx == 0 and dy == 0 then return end
	local angle = deg(atan2(dy, dx))
	self:SetMapButtonAngle(angle)
end

function me:StopMapButtonDrag(button)
	button = button or ZygorGuidesViewerMapIcon
	if not button then return end
	self:UpdateMapButtonDrag(button)
	button.isDragging = nil
	self:ApplyMapButtonPosition()
end

function me:GetGuides()
	if not ZygorGuidesViewer or not ZygorGuidesViewer.db or not ZygorGuidesViewer.registeredguides then return {} end
	local t = {}
	for i,data in ipairs(ZygorGuidesViewer.registeredguides) do
		t[i]=data.title
	end
	return t
end

function me.GetGuidesRev()
	if not ZygorGuidesViewer or not ZygorGuidesViewer.db or not ZygorGuidesViewer.registeredguides then return {} end
	local t = {}
	for i,data in ipairs(ZygorGuidesViewer.registeredguides) do
		t[data.title]=i
	end
	return t
end

-- function me:Search(s) --removed
-- function me:Find(s) --removed


local function tostr(val)
	if type(val)=="string" then
		return '"'..val..'"'
	elseif type(val)=="number" then
		return tostring(val)
	elseif not val then
		return "nil"
	elseif type(val)=="boolean" then
		return tostring(val).." ["..type(val).."]"
	end
end

local function superconcat(table,glue)
	local s=""
	for i=1,#table do
		if #s>0 then s=s..glue end
		s=s..tostring(table[i])
	end
	return s
end

local function anytostring(s)
	if type(s)=="table" then
		return superconcat(s,",")
	else
		return tostring(s)
	end
end

function me:BugReport(maint)
	if not self.dumpFrame then self:CreateDumpFrame() end

	HideUIPanel(InterfaceOptionsFrame)
	HideUIPanel(ZygorGuidesViewerMaintenanceFrame)

	local s = ""
	s = ("Zygor Guides Viewer v%s\n"):format(self.version)
	s = s .. "\n"
	s = s .. ("Guide: %s\nStep: %d\n"):format(tostr(self.CurrentGuideName),tostr(self.CurrentStepNum))
	
	if maint then
		s = s .. "\nMAINTENANCE OPTIONS THAT WERE ENABLED PROPERLY: ______________\nMAINTENANCE OPTION THAT CAUSED DISCONNECTION: _______________\n\n"
	end

	local step = self.CurrentStep
	if step then
		for k,v in pairs(step) do
			if k~="goals" and k~="num" and k~="L"
			and k~="isobsolete" and k~="isauxiliary"
			and type(v)~="function" then
				s = s .. ("  %s: %s\n"):format(k,anytostring(v))
			end
		end
		s = s .. ("  (completed: %s, auxiliary: %s, obsolete: %s)\n"):format(step:IsComplete() and "YES" or "no", step:IsAuxiliary() and "YES" or "no", step:IsObsolete() and "YES" or "no")

		s = s .. "Goals: \n"

		for i,goal in ipairs(step.goals) do
			s = s .. ("%d. %s %s\n"):format(i,(". "):rep(goal.indent),goal.text and "\""..goal.text.."\"" or "<"..goal:GetText()..">")
			for k,v in pairs(goal) do
				if k~="map" and k~="x" and k~="y" and k~="dist" 
				and k~="indent" and k~="text" and k~="parentStep" and k~="num" and k~="status"
				and k~="useitem" and k~="useitemid"
				and k~="castspell" and k~="castspellid"
				and k~="quest" and k~="questid" and k~="questreqs"
				and k~="mobs"
				and k~="target" and k~="targetid" and k~="objnum"
				and type(v)~="function" then
					s = s .. ("    %s: %s\n"):format(k,anytostring(v))
				end
			end
			if goal.x or goal.y or goal.action=="goto" then
				s = s .. ("    map: %s %s,%s"):format(goal.map or "unknown",goal.x or "nil",goal.y or "nil")
				if goal.dist then s = s .. ("  +/- %s"):format(goal.dist) end
				s = s .. "\n"
			end
			if goal.useitemid or goal.useitem then
				s = s .. ("   useitem: \"%s\"  ##%s"):format(tostring(goal.useitem),tostring(goal.useitemid))
				if goal.useitemid then
					local a={GetItemInfo(goal.useitemid)}
					s = s .. ("  GetItemInfo(%d) == %s\n"):format(goal.useitemid,superconcat(a,","))
				elseif goal.useitem then
					local a={GetItemInfo(goal.useitem)}
					s = s .. ("  GetItemInfo(\"%s\") == %s\n"):format(goal.useitem,superconcat(a,","))
				end
			end
			if goal.castspellid or goal.castspell then
				s = s .. ("   castspell: \"%s\"  ##%s"):format(tostring(goal.castspell),tostring(goal.castspellid))
				if goal.castspellid then
					local a={GetSpellInfo(goal.castspellid)}
					s = s .. ("  GetSpellInfo(%d) == %s\n"):format(goal.castspellid,superconcat(a,","))
				elseif goal.castspell then
					local a={GetSpellInfo(goal.castspell)}
					s = s .. ("  GetSpellInfo(\"%s\") == %s\n"):format(goal.castspell,superconcat(a,","))
				end
			end
			if goal.quest or goal.questid then
				s = s .. ("    quest: \"%s\" ##%d"):format(tostring(goal.quest),tostring(goal.questid))
				if goal.questid then
					local questdata = self.questsbyid[goal.questid]
					if goal.objnum then
						if questdata then
							local goaltext = questdata.goals[goal.objnum].item
							if not goaltext then goaltext="???" end
							s = s .. (" goal %d: \"%s\""):format(goal.objnum,goaltext)
						else
							s = s .. (" goal %d"):format(goal.objnum)
						end
					else
						s = s .. (" (no goal)")
					end
					if questdata then
						s = s .. "  - quest \""..questdata['title'].."\" ##"..questdata['id'].." in log "
					else
						s = s .. "  - quest not in log "
					end
					if self.completedQuests[goal.questid] then
						s = s .. "(id: completed)"
					else
						s = s .. "(id: not completed)"
						if self.completedQuestTitles[goal.quest] then
							s = s .. " (title: completed)"
						else
							s = s .. " (title: not completed)"
						end
					end
				end
				s = s .. "\n"
			end
			if goal.target then
				s = s .. ("    target: \"%s\""):format(goal.target)
				if goal.targetid then
					s = s .. (" ##%d\n"):format(goal.targetid)
				end
				s = s .. "\n"
			end
			if goal.mobs then
				s = s .. "    mobs: "
				for k,v in ipairs(goal.mobs) do
					s = s .. v.name .. "  "
				end
				s = s .. "\n"
			end
			if goal.questreqs and #goal.questreqs>0 then
				s = s .. "    questreqs: "..superconcat(goal.questreqs,",").."\n"
			end
			if goal.condition_visible then
				s = s .. "    visibility condition: "..goal.condition_visible_raw.."\n"
			end

			if goal:IsCompleteable() then
				local comp,poss = goal:IsComplete()
				s = s .. ("    (complete: %s, possible: %s, auxiliary: %s, obsolete: %s)\n"):format(comp and "YES" or "no", poss and "YES" or "no", step:IsAuxiliary() and "YES" or "no", step:IsObsolete() and "YES" or "no")
			else
				s = s .. "    (not completeable)\n"
			end

			s = s .. "    Status: "..goal:GetStatus().."\n"
		end
		s = s .. "\n"
	else
		s = s .. "No current step loaded.\n\n"
	end

	s = s .. "--- Player information ---\n"
	s = s .. ("Race: %s  Class: %s  Level: %d\n"):format(select(2,UnitRace("player")),select(2,UnitClass("player")),UnitLevel("player"))
	local x,y = GetPlayerMapPosition("player")
	s = s .. ("Position: realzone:'%s' x:%g,y:%g (zone:'%s' subzone:'%s' minimapzone:'%s')\n"):format(GetRealZoneText(),x*100,y*100,GetZoneText(),GetSubZoneText(),GetMinimapZoneText())
	if GetLocale()~="enUS" then
		s = s .. ("    enUS: realzone:'%s' zone:'%s' subzone:'%s' minimapzone:'%s')\n"):format(BZR[GetRealZoneText()],BZR[GetZoneText()],BZR[GetSubZoneText()] or "("..GetSubZoneText()..")",BZR[GetMinimapZoneText()] or "("..GetMinimapZoneText()..")")
		s = s .. ("Locale: %s\n"):format(GetLocale())
	end
	s = s .. "\n"



	s = s .. "-- Cached quest log --\n"
	for index,quest in pairs(self.quests) do
		s = s .. dumpquest(quest)
	end
	s = s .. "\n"

	s = s .. "-- Cached quest log, by ID --\n"
	for id,quest in pairs(self.questsbyid) do
		s = s .. ("#%d: %s\n"):format(id,quest.title)
	end
	s = s .. "\n"

	s = s .. "-- Items --\n"
	local inventory={}
	for bag=-2,4 do
		for slot=1,GetContainerNumSlots(bag) do
			local item = GetContainerItemLink(bag,slot)
			if item then
				local id,name = string.match(item,"item:(.-):.-|h%[(.-)%]")
				local tex,count = GetContainerItemInfo(bag,slot)
				tinsert(inventory,("    %s ##%d x%d\n"):format(name,id,count))
			end
		end
	end
	table.sort(inventory)
	s = s .. table.concat(inventory,"")
	s = s .. "\n"

	s = s .. "-- Buffs/debuffs --\n"
	for i=1,30 do
		local name,_,tex = UnitBuff("player",i)
		if name then s=s..("%s (\"%s\")\n"):format(name,tex) end
	end
	for i=1,30 do
		local name,_,tex = UnitDebuff("player",i)
		if name then s=s..("%s (\"%s\")\n"):format(name,tex) end
	end
	s = s .. "\n"

	s = s .. "-- Pet action bar --\n"
	for i=1,12 do
		local name,_,tex = GetPetActionInfo(i)
		if name then s=s..("%d. %s (\"%s\")\n"):format(i,name,tex) end
	end
	s = s .. "\n"

	s = s .. "-- Flight Paths --\n"
	if self.LibTaxi then
		s = s .. table.concat(TableKeys(self.db.char.taxis)," , ")
	end
	s = s .. "\n\n"

	s = s .. "-- Options --\n"
	s = s .. "Profile:\n"
	for k,v in pairs(self.db.profile) do s = s .. "  "..k.." = "..anytostring(v).."\n" end
	s = s .. "\n"

	--s = s .. self:DumpVal(self.quests,0,4,true)
	--self:Print(s)
	s = s .. "-- Log --\n"
	s = s .. self.Log:Dump(100)


	self.dumpFrame.editBox:SetText(s)
	local title = maint and "Zygor Guides Viewer" or (self.CurrentGuideName or L["report_notitle"])
	local author = maint and "zygor@zygorguides.com" or (self.CurrentGuide and self.CurrentGuide.author or L["report_noauthor"])
	self.dumpFrame.title:SetText(L["report_title"]:format(title,author))
	ShowUIPanel(self.dumpFrame)
	self.dumpFrame.editBox:HighlightText(0)
	self.dumpFrame.editBox:SetFocus(true)
end

function me:DumpVal(val,lev,maxlev,nofun)
	if not lev then lev=1 end
	if not maxlev then maxlev=1 end

	if lev>maxlev then return ("...") end
	local s = ""
	if type(val)=="string" then
		s = ('"%s"'):format(val)
	elseif type(val)=="number" then
		s = ("%s"):format(tostring(val))
	elseif type(val)=="function" then
		s = ("")
	elseif type(val)=="table" then
		s = "\n"
		for k,v in pairs(val) do
			if type(k)~="string" or not k:find("^parent")
			then
				if type(v)~="function" then
					s = s .. ("   "):rep(lev) .. ("%s=%s"):format(k,self:DumpVal(v,lev+1,maxlev,nofun))
				elseif not nofun then
					s = s .. ("   "):rep(lev) .. ("%s(function)\n"):format(k)
				end
			end
		end
	end

	return s.."\n"
end


-- misc:

function me:CreateDumpFrame()
	local name = "ZygorGuidesViewer_DumpFrame"

	local frame = CreateFrame("Frame", name, UIParent)
	self.dumpFrame = frame
	frame:SetBackdrop({
	bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
	edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 5, bottom = 3 }
	})
	frame:SetBackdropColor(0,0,0,1)
	frame:SetWidth(500)
	frame:SetHeight(400)
	frame:SetPoint("CENTER", UIParent, "CENTER")
	frame:Hide()
	frame:SetFrameStrata("DIALOG")
	tinsert(UISpecialFrames, name)
	
	local scrollArea = CreateFrame("ScrollFrame", name.."Scroll", frame, "UIPanelScrollFrameTemplate")
	scrollArea:SetPoint("TOPLEFT", frame, "TOPLEFT", 8, -50)
	scrollArea:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 8)

	local editBox = CreateFrame("EditBox", nil, frame)
	editBox:SetMultiLine(true)
	editBox:SetMaxLetters(99999)
	editBox:EnableMouse(true)
	editBox:SetAutoFocus(false)
	editBox:SetFontObject(ChatFontSmall)
	editBox:SetWidth(400)
	editBox:SetHeight(270)
	editBox:SetScript("OnEscapePressed", function() frame:Hide() end)
	self.dumpFrame.editBox = editBox
	
	scrollArea:SetScrollChild(editBox)
	
	local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", frame, "TOPRIGHT")

	local title = frame:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
	self.dumpFrame.title = title
	title:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -10)
	title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", -30, -45)
	title:SetJustifyH("CENTER")
	title:SetJustifyV("TOP")

end

local math_floor = math.floor
local function round(num, digits)
	-- banker's rounding
	local mantissa = 10^digits
	local norm = num*mantissa
	norm = norm + 0.5
	local norm_f = math_floor(norm)
	if norm == norm_f and (norm_f % 2) ~= 0 then
		return (norm_f-1)/mantissa
	end
	return norm_f/mantissa
end
function me:Test (arg1,arg2)
	local a={GetMapZones(GetCurrentMapContinent())}
	local x,y = GetPlayerMapPosition("player")
	local id = round(x*10000, 0) + round(y*10000, 0)*10001
	self:Print("You're in "..a[GetCurrentMapZone()].." at Cart2 coords "..id)
end

function me:Echo (s)
	--if not self.db.profile.silent then 
	self:Print(tostring(s))
	--end
end

function me:Debug (s)
	self.Log:Add(s)
	if self and self.db and self.db.profile and self.db.profile.debug then
		self.DebugI = (self.DebugI or 0) + 1
		self:Echo('|cffaaaaaa#' .. self.DebugI .. ': ' .. tostring(s))
	end
end


function me:GetQuestData(qid)
	if not self.db.char.maint_fetchquestdata then return nil end
	Gratuity:SetHyperlink("|Hquest:"..qid..":1|h[q]|h")

	local n = Gratuity:NumLines()
	if n <= 0 then return end

	local title, objs

	for i = 1,n do
		local line = Gratuity:GetLine(i):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("[\n\t]", " ")
		if i == 1 then
			title = line
		else
			local line=line:match("^%s+%- (.+)$")
			if line then
				local o, n = line:match("^(.-) x.?.?(%d+)$")
				if not o then o = line end
				if not objs then
					objs = {}
				end
				table.insert(objs,o)
			end
		end
	end

	return title, objs
end

function me:GetItemData(itemid,n)
	if not self.db.char.maint_fetchitemdata then return nil end
	if not itemid then return end
	Gratuity:SetHyperlink("|Hitem:"..itemid..":0:0:0:0:0:0:0:0|h[q]|h")

	local n = Gratuity:NumLines()
	if n <= 0 then return end

	local title, objs

	local line = Gratuity:GetLine(1)
	line = line:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("[\n\t]", " ")
	if line==RETRIEVING_ITEM_INFO then
		return
	else
		return line
	end
end

-- HACKS
function me:ListQuests(from,to)
	local CQI=Cartographer_QuestInfo
	local qlog = ""
	for i=from,to do
		local level = CQI:PeekQuest(i)
		--if not level then level=0 end
		if level then
			local title,_,_,_,nobjs = CQI:GetQuestText(i,level)
			--if not title then title = CQI:GetQuestText(i,level) end -- well, they said to repeat it...
			--self:Print(i..": |cff808080|Hquest:"..i..":"..level.."|h["..tostring(title).."]|h|r "..(type(objs)=="table" and "{"..table.concat(nobjs,",").."}" or ""))
			qlog = qlog .. i..": "..tostring(title)..(type(nobjs)=="table" and " {"..table.concat(nobjs,",").."}" or "") .. "|n"
		end
	end
	if Chatter then
		Chatter:GetModule("Chat Copy").editBox:SetText(qlog)
		Chatter:GetModule("Chat Copy").editBox:HighlightText(0)
		Chatter:GetModule("Chat Copy").frame:Show()
	end
end

function me:GetTranslatedNPC(num)
	if not ZygorGuidesNPCs then return end
	local s=ZygorGuidesNPCs[num]
	if not s then return end
	local name,desc = s:match(".|(.-)|(.*)")
	if desc=="" then desc=nil end
	return name,desc
end

function me:PruneNPCs()
	if not ZygorGuidesNPCs then return end
	local faction,_ = UnitFactionGroup("player")
	if not faction then return end
	local badf = (faction=="Alliance") and "H" or "A"
	for i,d in pairs(ZygorGuidesNPCs) do
		if d:sub(1,1)==badf then ZygorGuidesNPCs[i]=nil end
	end
end

function me:ReloadTranslation()
	for i,guide in ipairs(self.registeredguides) do
		for s,step in ipairs(guide.steps or {}) do
			for g,goal in ipairs(step.goals) do
				goal.L=false
			end
		end
	end
end

-- used for steps and goals
--[[
function me.ConditionTrue(subject,case)
	if not subject.conditions then return false end
	local f=subject.conditions[case]
	if type(f)=="function" then
		return f()
	elseif type(f)=="string" then
		f=subject.conditions[f]
		assert(type(f)=="function","What? This step has cross-referencing conditions? wtf.")
		return not f()
	end
end
--]]

function me.gradient3(perc,ar,ag,ab,br,bg,bb,cr,cg,cb, middle)
	if perc == 1 then
		return cr,cg,cb
	elseif perc==0 then
		return ar,ag,ab
	else
		if perc<=middle then
			perc=perc/middle
			return ar+(br-ar)*perc, ag+(bg-ag)*perc, ab+(bb-ab)*perc
		else
			perc=(perc-middle)/(1-middle)
			return br+(cr-br)*perc, bg+(cg-bg)*perc, bb+(cb-bb)*perc
		end
	end
end

local COLORBLIND_PALETTES = {
	protan = {
		arrow = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.619608,0.450980} },
		dist  = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.619608,0.450980} },
		goals = {
			goalbackincomplete = {r=0.22,g=0.34,b=0.78,a=0.72},
			goalbackprogressing= {r=0.50,g=0.44,b=0.78,a=0.74},
			goalbackcomplete   = {r=0.16,g=0.74,b=0.82,a=0.76},
			goalbackimpossible = {r=0.30,g=0.30,b=0.30,a=0.62},
			goalbackaux        = {r=0.30,g=0.48,b=0.72,a=0.62},
			goalbackobsolete   = {r=0.30,g=0.48,b=0.72,a=0.62},
		},
	},
	deutan = {
		arrow = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.800000,0.474510,0.654902} },
		dist  = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.800000,0.474510,0.654902} },
		goals = {
			goalbackincomplete = {r=0.55,g=0.32,b=0.76,a=0.72},
			goalbackprogressing= {r=0.70,g=0.48,b=0.56,a=0.74},
			goalbackcomplete   = {r=0.16,g=0.66,b=0.86,a=0.76},
			goalbackimpossible = {r=0.30,g=0.30,b=0.30,a=0.62},
			goalbackaux        = {r=0.34,g=0.45,b=0.72,a=0.62},
			goalbackobsolete   = {r=0.34,g=0.45,b=0.72,a=0.62},
		},
	},
	tritan = {
		arrow = { bad={0.835294,0.368627,0.000000}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.447059,0.698039} },
		dist  = { bad={0.835294,0.368627,0.000000}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.447059,0.698039} },
		goals = {
			goalbackincomplete = {r=0.74,g=0.30,b=0.24,a=0.72},
			goalbackprogressing= {r=0.70,g=0.32,b=0.55,a=0.74},
			goalbackcomplete   = {r=0.24,g=0.70,b=0.30,a=0.76},
			goalbackimpossible = {r=0.30,g=0.30,b=0.30,a=0.62},
			goalbackaux        = {r=0.58,g=0.34,b=0.56,a=0.62},
			goalbackobsolete   = {r=0.58,g=0.34,b=0.56,a=0.62},
		},
	},
	global = {
		arrow = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.619608,0.450980} },
		dist  = { bad={0.000000,0.447059,0.698039}, mid={0.901961,0.623529,0.000000}, good={0.000000,0.619608,0.450980} },
	},
}

function me:GetColorblindMode()
	local m = self.db and self.db.profile and self.db.profile.colorblindmode
	if m=="protan" or m=="deutan" or m=="tritan" or m=="global" or m=="custom" then return m end
	return "off"
end

function me:GetColorblindPalette()
	return COLORBLIND_PALETTES[self:GetColorblindMode()]
end

function me:GetArrowColorGradient()
	local profile = self.db and self.db.profile
	if profile and self:GetColorblindMode()=="custom" then
		local far = profile.arrowcolorcustom_far or {r=1.0,g=0.0,b=0.0}
		local mid = profile.arrowcolorcustom_mid or {r=0.8,g=0.7,b=0.0}
		local near = profile.arrowcolorcustom_near or {r=0.0,g=1.0,b=0.0}
		return {
			bad = {far.r or 1.0, far.g or 0.0, far.b or 0.0},
			mid = {mid.r or 0.8, mid.g or 0.7, mid.b or 0.0},
			good = {near.r or 0.0, near.g or 1.0, near.b or 0.0},
		}
	end
	local p = self:GetColorblindPalette()
	if p and p.arrow then return p.arrow end
	return { bad={1.0,0.0,0.0}, mid={0.8,0.7,0.0}, good={0.0,1.0,0.0} }
end

function me:GetDistanceColorGradient()
	local profile = self.db and self.db.profile
	if profile and self:GetColorblindMode()=="custom" then
		local far = profile.arrowcolorcustom_far or {r=1.0,g=0.0,b=0.0}
		local mid = profile.arrowcolorcustom_mid or {r=0.8,g=0.7,b=0.0}
		local near = profile.arrowcolorcustom_near or {r=0.0,g=1.0,b=0.0}
		return {
			bad = {far.r or 1.0, far.g or 0.0, far.b or 0.0},
			mid = {mid.r or 0.8, mid.g or 0.7, mid.b or 0.0},
			good = {near.r or 0.0, near.g or 1.0, near.b or 0.0},
		}
	end
	local p = self:GetColorblindPalette()
	if p and p.dist then return p.dist end
	return { bad={1.0,0.5,0.4}, mid={1.0,0.9,0.5}, good={0.7,1.0,0.6} }
end

function me:GetEffectiveGoalColors()
	local p = self:GetColorblindPalette()
	if p and p.goals then return p.goals end
	return {
		goalbackincomplete = self.db.profile.goalbackincomplete,
		goalbackprogressing= self.db.profile.goalbackprogressing,
		goalbackcomplete   = self.db.profile.goalbackcomplete,
		goalbackimpossible = self.db.profile.goalbackimpossible,
		goalbackaux        = self.db.profile.goalbackaux,
		goalbackobsolete   = self.db.profile.goalbackobsolete,
	}
end

--hooksecurefunc("WorldMapFrame_UpdateQuests",function() if not InCombatLockdown() then text=nil end end)
--hooksecurefunc("QuestInfo_Display",function() if not InCombatLockdown() then shownFrame=nil bottomShownFrame=nil end end)
