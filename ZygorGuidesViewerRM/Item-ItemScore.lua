local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local G = _G
local FONT = ZGV.Font or STANDARD_TEXT_FONT
local FONTBOLD = ZGV.FontBold or STANDARD_TEXT_FONT

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local Gratuity = LibStub("LibGratuity-3.0")

local ItemScore = ZGV.ItemScore

local function branded_tooltip_header(label)
	return ("|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r %s:"):format(label)
end

local function branded_chat_prefix(label)
	return ("|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00%s:|r"):format(label)
end

local function round_score(value)
	if not value then return 0 end
	if value >= 0 then
		return math.floor(value * 10 + 0.5) / 10
	else
		return math.ceil(value * 10 - 0.5) / 10
	end
end

local function get_positive_weight_total(statweights)
	local total = 0
	if statweights then
		for _, value in pairs(statweights) do
			value = tonumber(value) or 0
			if value > 0 then total = total + value end
		end
	end
	return total > 0 and total or 1
end

local function get_active_score_weight_total()
	return get_positive_weight_total(ItemScore and ItemScore.ActiveRuleSet and ItemScore.ActiveRuleSet.stats)
end

local function normalize_display_score(score, weightTotal)
	if ZGV.db and ZGV.db.profile and ZGV.db.profile.itemscore_tooltip_normalize_score then
		score = (score or 0) / (weightTotal or get_active_score_weight_total())
	end
	return score or 0
end

local function format_static_score(score, weightTotal)
	local rounded = round_score(normalize_display_score(score, weightTotal))
	return string.format("%.1f", rounded)
end

local function color_score_text(score, weightTotal)
	return "|cffdddddd" .. format_static_score(score, weightTotal) .. "|r"
end

local function clamp_display_percent(percent)
	if not percent then return nil end
	if percent >= 100 then return 99.99 end
	if percent <= -100 then return -99.99 end
	return percent
end

local function get_tooltip_value_mode()
	local mode = ZGV.db and ZGV.db.profile and ZGV.db.profile.itemscore_tooltip_value_mode or "comparison"
	if mode ~= "score" and mode ~= "both" then mode = "comparison" end
	return mode
end

local function format_tooltip_comparison(comparison)
	if not comparison then return "|cffcccccc0.0|r" end
	local roundedDelta = round_score(comparison.deltaScore or 0)
	local color = roundedDelta < 0 and "|cffff0000" or (roundedDelta > 0 and "|cff00ff00" or "|cffcccccc")
	local deltaText = roundedDelta == 0 and "0.0" or string.format("%+.1f", roundedDelta)
	local line = color .. deltaText .. "|r"
	local displayPercent = clamp_display_percent(comparison.percent)
	if displayPercent and roundedDelta ~= 0 and not comparison.armorFallback and math.abs(displayPercent) >= 0.05 then
		line = line .. " " .. color .. "(" .. string.format((L["gearfinder_upgrade_percent_short"] or "%+.1f%%"), displayPercent) .. ")|r"
	end
	if comparison.armorFallback and roundedDelta > 0 then
		line = line .. " |cff88ccff(Armor)|r"
	end
	return line
end

local function format_tooltip_value(comparison, score, weightTotal)
	local mode = get_tooltip_value_mode()
	if mode == "score" then
		return color_score_text(score, weightTotal)
	elseif mode == "both" then
		return color_score_text(score, weightTotal) .. " | " .. format_tooltip_comparison(comparison)
	end
	return format_tooltip_comparison(comparison)
end

if not ItemScore then return end
LibStub("AceHook-3.0"):Embed(ItemScore)

local item_weapon_types = ItemScore.Item_Weapon_Types
local item_armor_types = ItemScore.Item_Armor_Types
local item_gem_types = ItemScore.Item_Gem_Types

-- Pawn compatibility tables (optional, for import/export)
ItemScore.Gear_PawnToZygor = ItemScore.Gear_PawnToZygor or {}
ItemScore.KeywordsPawnToRules = ItemScore.KeywordsPawnToRules or {}
ItemScore.Gear_ZygorToPawn = ItemScore.Gear_ZygorToPawn or {}

local ItemCache = {}
ItemScore.ItemCache = ItemCache
ItemScore.Items = ItemScore.Items or {}
ItemScore.PendingLootRolls = ItemScore.PendingLootRolls or {}
ItemScore.MasterLootNoticeCooldown = 10
ItemScore.MasterLootRecent = ItemScore.MasterLootRecent or {}
ItemScore.MasterLootSession = ItemScore.MasterLootSession or {}
ItemScore.PendingMasterLootNotice = ItemScore.PendingMasterLootNotice or false

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.

local function strip_link(itemlink)
	local _,itemstring,_ = itemlink:match("(.*)item:([0-9-:]*)(.*)")
	if itemstring then
		-- Strip all :0: to :: repeatedly until stable
		local result = itemstring
		local prev
		repeat
			prev = result
			result = result:gsub(":0:", "::")
		until result == prev
		-- Also strip trailing :0 sequences
		result = result:gsub(":0$", ":")
		return "item:"..result
	end
	return false
end
ItemScore.strip_link = strip_link

local function add_stat(stats, statname, value)
	if not statname then return end
	value = tonumber(value)
	if not value then return end
	stats[statname] = (stats[statname] or 0) + value
end

local function copy_stats(source)
	local target = {}
	if not source then return target end
	for key, value in pairs(source) do
		target[key] = value
	end
	return target
end

local function copy_selected_stats(source, allowed)
	local target = {}
	if not source or not allowed then return target end
	for key in pairs(allowed) do
		if source[key] ~= nil then
			target[key] = source[key]
		end
	end
	return target
end

local function normalize_label(value)
	if not value then return nil end
	value = tostring(value):gsub("^%s+", ""):gsub("%s+$", ""):lower()
	value = value:gsub("%s+", " ")
	value = value:gsub("%-$", "")
	return value
end

local function is_test_item_name(name)
	if not name then return false end
	return name:find("^QA Test") ~= nil
		or name:find("^QA ") ~= nil
		or name:find("^Test ") ~= nil
		or name == "Bland Blade"
		or name == "Frostmourne Art Demo"
end

local TYPE_CLASS_ALIASES = {
	armor = LE_ITEM_CLASS_ARMOR,
	weapon = LE_ITEM_CLASS_WEAPON,
}

local EQUIPPABLE_INV_TYPES = {
	INVTYPE_AMMO = true,
	INVTYPE_HEAD = true,
	INVTYPE_NECK = true,
	INVTYPE_SHOULDER = true,
	INVTYPE_BODY = true,
	INVTYPE_CHEST = true,
	INVTYPE_ROBE = true,
	INVTYPE_WAIST = true,
	INVTYPE_LEGS = true,
	INVTYPE_FEET = true,
	INVTYPE_WRIST = true,
	INVTYPE_HAND = true,
	INVTYPE_FINGER = true,
	INVTYPE_TRINKET = true,
	INVTYPE_CLOAK = true,
	INVTYPE_WEAPON = true,
	INVTYPE_SHIELD = true,
	INVTYPE_2HWEAPON = true,
	INVTYPE_WEAPONMAINHAND = true,
	INVTYPE_WEAPONOFFHAND = true,
	INVTYPE_HOLDABLE = true,
	INVTYPE_RANGED = true,
	INVTYPE_THROWN = true,
	INVTYPE_RANGEDRIGHT = true,
	INVTYPE_RELIC = true,
	TYPE = true,
}

local NON_GEAR_INV_TYPES = {
	INVTYPE_AMMO = true,
	INVTYPE_BODY = true,
	INVTYPE_TABARD = true,
}

local NON_GEAR_WEAPON_SUBTYPES = {
	["miscellaneous"] = true,
}

local DB_STRUCTURAL_STATS = {
	ARMOR = true,
	BLOCK_VALUE = true,
	DAMAGE_PER_SECOND = true,
	EMPTY_SOCKET_BLUE = true,
	EMPTY_SOCKET_META = true,
	EMPTY_SOCKET_PRISMATIC = true,
	EMPTY_SOCKET_RED = true,
	EMPTY_SOCKET_YELLOW = true,
}

local SOCKET_STAT_KEYS = {
	EMPTY_SOCKET_BLUE = true,
	EMPTY_SOCKET_META = true,
	EMPTY_SOCKET_PRISMATIC = true,
	EMPTY_SOCKET_RED = true,
	EMPTY_SOCKET_YELLOW = true,
}

local DB_SOCKET_COLOR_TO_STAT = {
	[1] = "EMPTY_SOCKET_META",
	[2] = "EMPTY_SOCKET_RED",
	[4] = "EMPTY_SOCKET_YELLOW",
	[8] = "EMPTY_SOCKET_BLUE",
}

local SOCKET_STAT_TO_COLOR = {
	EMPTY_SOCKET_BLUE = "BLUE",
	EMPTY_SOCKET_META = "META",
	EMPTY_SOCKET_PRISMATIC = "PRISMATIC",
	EMPTY_SOCKET_RED = "RED",
	EMPTY_SOCKET_YELLOW = "YELLOW",
}

local SOCKET_COLOR_LABELS = {
	BLUE = "blue",
	META = "meta",
	PRISMATIC = "prismatic",
	RED = "red",
	YELLOW = "yellow",
}

local FAMILY_ALIASES = {
	SWORD = {"sword","swords"},
	TH_SWORD = {"two-handed sword","two-handed swords"},
	AXE = {"axe","axes"},
	TH_AXE = {"two-handed axe","two-handed axes"},
	MACE = {"mace","maces"},
	TH_MACE = {"two-handed mace","two-handed maces"},
	TH_STAFF = {"staff","staves"},
	DAGGER = {"dagger","daggers"},
	FIST = {"fist weapon","fist weapons"},
	TH_POLE = {"polearm","polearms"},
	BOW = {"bow","bows"},
	GUN = {"gun","guns"},
	CROSSBOW = {"crossbow","crossbows"},
	WAND = {"wand","wands"},
	THROWN = {"thrown"},
	FISHPOLE = {"fishing pole","fishing poles"},
	CLOTH = {"cloth"},
	LEATHER = {"leather"},
	MAIL = {"mail"},
	PLATE = {"plate","plate mail"},
	SHIELD = {"shield","shields"},
	JEWELERY = {"miscellaneous","misc", "jewelry", "jewellery"},
}

local canonical_family_lookup
local function build_canonical_family_lookup()
	if canonical_family_lookup then return canonical_family_lookup end
	canonical_family_lookup = {}
	for family, skillName in pairs(ItemScore.SkillNames or {}) do
		local normalized = normalize_label(skillName)
		if normalized then canonical_family_lookup[normalized] = family end
	end
	for family, aliases in pairs(FAMILY_ALIASES) do
		for _, alias in ipairs(aliases) do
			canonical_family_lookup[normalize_label(alias)] = family
		end
	end
	return canonical_family_lookup
end

local function resolve_item_class_id(itemType)
	if not itemType then return nil end
	local classID = TYPE_CLASS_ALIASES[normalize_label(itemType)]
	if classID then return classID end
	local upper = tostring(itemType):upper()
	if upper == "ARMOR" then return LE_ITEM_CLASS_ARMOR end
	if upper == "WEAPON" then return LE_ITEM_CLASS_WEAPON end
	return nil
end

local function resolve_item_family(itemClassID, itemSubType)
	if not itemSubType then return nil, nil end
	local family = build_canonical_family_lookup()[normalize_label(itemSubType)]
	if not family then return nil, nil end
	if itemClassID == LE_ITEM_CLASS_ARMOR then
		for id, name in pairs(ItemScore.Item_Armor_Types or {}) do
			if name == family then return family, id end
		end
	elseif itemClassID == LE_ITEM_CLASS_WEAPON then
		for id, name in pairs(ItemScore.Item_Weapon_Types or {}) do
			if name == family then return family, id end
		end
	end
	return family, nil
end

local function resolve_family_from_equip_loc(itemEquipLoc)
	if itemEquipLoc == "INVTYPE_SHIELD" then return "SHIELD", 6 end
	if itemEquipLoc == "INVTYPE_HOLDABLE" then return "OFFHAND", nil end
	if itemEquipLoc == "INVTYPE_THROWN" then return "THROWN", 16 end
	if itemEquipLoc == "INVTYPE_RANGED" or itemEquipLoc == "INVTYPE_RANGEDRIGHT" then return "MISCARM", nil end
	return nil, nil
end

local DB_SLOT_TO_INVTYPE = {
	Back = "INVTYPE_CLOAK",
	Chest = "INVTYPE_CHEST",
	Finger = "INVTYPE_FINGER",
	Feet = "INVTYPE_FEET",
	Hands = "INVTYPE_HAND",
	Head = "INVTYPE_HEAD",
	HeldOffHand = "INVTYPE_HOLDABLE",
	Holdable = "INVTYPE_HOLDABLE",
	Legs = "INVTYPE_LEGS",
	MainHand = "INVTYPE_WEAPONMAINHAND",
	Neck = "INVTYPE_NECK",
	OffHand = "INVTYPE_WEAPONOFFHAND",
	OneHand = "INVTYPE_WEAPON",
	Ranged = "INVTYPE_RANGED",
	RangedRight = "INVTYPE_RANGEDRIGHT",
	Relic = "INVTYPE_RELIC",
	Robe = "INVTYPE_ROBE",
	Shield = "INVTYPE_SHIELD",
	Shoulder = "INVTYPE_SHOULDER",
	Shirt = "INVTYPE_BODY",
	Tabard = "INVTYPE_TABARD",
	Thrown = "INVTYPE_THROWN",
	Trinket = "INVTYPE_TRINKET",
	TwoHand = "INVTYPE_2HWEAPON",
	Waist = "INVTYPE_WAIST",
	Wrist = "INVTYPE_WRIST",
}

local RELIC_NAME_FAMILY_OVERRIDES = {
	["venture co. lightning rod"] = "TOTEM",
	["venture co. flame slicer"] = "TOTEM",
	["tome of the lightbringer"] = "LIBRAM",
	["blessed book of nagrand"] = "LIBRAM",
	["harold's rejuvenating broach"] = "IDOL",
}

local DB_STAT_MAP = {
	agility = "AGILITY",
	armorPenetration = "ARMOR_PENETRATION",
	attackPower = "ATTACK_POWER",
	blockRating = "BLOCK",
	blockValue = "BLOCK_VALUE",
	critRating = "CRIT",
	defenseRating = "DEFENSE_SKILL",
	dodgeRating = "DODGE",
	expertiseRating = "EXPERTISE",
	feralAttackPower = "FERAL_ATTACK_POWER",
	hasteRating = "HASTE",
	hitRating = "HIT",
	intellect = "INTELLECT",
	mp5 = "MANA_REGENERATION",
	parryRating = "PARRY",
	rangedAttackPower = "RANGED_ATTACK_POWER",
	spellPenetration = "SPELL_PENETRATION",
	spellPower = "SPELL_POWER",
	spirit = "SPIRIT",
	stamina = "STAMINA",
	strength = "STRENGTH",
}

local DB_CLASS_BITS = {
	{1, "WARRIOR"},
	{2, "PALADIN"},
	{4, "HUNTER"},
	{8, "ROGUE"},
	{16, "PRIEST"},
	{64, "SHAMAN"},
	{128, "MAGE"},
	{256, "WARLOCK"},
	{1024, "DRUID"},
	{2048, "DEATHKNIGHT"},
}

local DB_RACE_BITS = {
	{1, "Human", "HUMAN"},
	{2, "Orc", "ORC"},
	{4, "Dwarf", "DWARF"},
	{8, "NightElf", "NIGHTELF"},
	{16, "Scourge", "UNDEAD"},
	{32, "Tauren", "TAUREN"},
	{64, "Gnome", "GNOME"},
	{128, "Troll", "TROLL"},
	{512, "BloodElf", "BLOODELF"},
	{1024, "Draenei", "DRAENEI"},
}

local ARMOR_FAMILY_ORDER
local bit_band = (bit and bit.band) or (bit32 and bit32.band)
local missing_itemdb_warnings = {}
local missing_itemdb_pending = {}
local missing_itemdb_flush_timer = nil
local MISSING_ITEMDB_WARN_MAX_ID = 69999
ItemScore.DBStats = ItemScore.DBStats or { primed = 0, dbonly = 0, live = 0, missing = 0 }
local db_primed_seen = {}
local db_only_seen = {}
local db_live_seen = {}

local function bump_db_counter(counter, itemID)
	if not itemID then return end
	local seen
	if counter == "primed" then
		seen = db_primed_seen
	elseif counter == "dbonly" then
		seen = db_only_seen
	elseif counter == "live" then
		seen = db_live_seen
	end
	if seen then
		if seen[itemID] then return end
		seen[itemID] = true
	end
	ItemScore.DBStats[counter] = (ItemScore.DBStats[counter] or 0) + 1
end

local function db_mask_to_classes(mask)
	if not mask or mask == -1 or not bit_band then return nil end
	local classes = {}
	for _, data in ipairs(DB_CLASS_BITS) do
		if bit_band(mask, data[1]) ~= 0 then
			local localized = (LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE[data[2]])
				or (LOCALIZED_CLASS_NAMES_FEMALE and LOCALIZED_CLASS_NAMES_FEMALE[data[2]])
				or data[2]
			classes[#classes + 1] = localized
		end
	end
	if #classes == 0 then return nil end
	return table.concat(classes, ", ")
end

local function normalize_race_token(value)
	if not value then return nil end
	return tostring(value):gsub("%s+", ""):gsub("_", ""):upper()
end

local function db_mask_allows_race(mask, raceName, raceToken)
	if not mask or not bit_band then return true end
	mask = tonumber(mask)
	if not mask or mask == -1 then return true end
	local wantedName = normalize_race_token(raceName)
	local wantedToken = normalize_race_token(raceToken)
	for _, data in ipairs(DB_RACE_BITS) do
		if bit_band(mask, data[1]) ~= 0 then
			if wantedName == normalize_race_token(data[2]) or wantedToken == normalize_race_token(data[2])
				or wantedName == normalize_race_token(data[3]) or wantedToken == normalize_race_token(data[3]) then
				return true
			end
		end
	end
	return false
end

local function flush_missing_itemdb_warnings()
	missing_itemdb_flush_timer = nil
	if #missing_itemdb_pending == 0 then return end

	table.sort(missing_itemdb_pending)
	local count = #missing_itemdb_pending
	local preview = {}
	for i = 1, math.min(count, 5) do
		preview[#preview + 1] = tostring(missing_itemdb_pending[i])
	end

	local message
	if count == 1 then
		message = ("Equippable item ID [%s] not present in database. Please let the dev know."):format(preview[1])
	else
		message = ("%d equippable item IDs not present in database: %s"):format(count, table.concat(preview, ", "))
		if count > #preview then
			message = message .. (", +" .. (count - #preview) .. " more")
		end
		message = message .. ". Please let the dev know."
	end

	wipe(missing_itemdb_pending)
	if ZGV and ZGV.Print then
		ZGV:Print(message)
	else
		print(branded_chat_prefix("Gear"), message)
	end
end

local function should_warn_missing_itemdb(itemLinkOrID, itemID)
	if not itemID then return false end
	itemID = tonumber(itemID)
	if not itemID or itemID > MISSING_ITEMDB_WARN_MAX_ID then
		return false
	end
	local _, _, _, _, _, _, _, _, equipLoc = GetItemInfo(itemLinkOrID or itemID)
	if not equipLoc or equipLoc == "" then
		return false
	end
	if not EQUIPPABLE_INV_TYPES[equipLoc] then
		return false
	end
	if NON_GEAR_INV_TYPES[equipLoc] then
		return false
	end
	return true
end

local function warn_missing_itemdb(itemLinkOrID, itemID)
	if not itemID or missing_itemdb_warnings[itemID] then return end
	if not should_warn_missing_itemdb(itemLinkOrID, itemID) then return end
	missing_itemdb_warnings[itemID] = true
	ItemScore.DBStats.missing = (ItemScore.DBStats.missing or 0) + 1
	missing_itemdb_pending[#missing_itemdb_pending + 1] = itemID
	if not missing_itemdb_flush_timer and ZGV and ZGV.ScheduleTimer then
		missing_itemdb_flush_timer = ZGV:ScheduleTimer(flush_missing_itemdb_warnings, 0.5)
	elseif not missing_itemdb_flush_timer then
		flush_missing_itemdb_warnings()
	end
end

local function build_db_stats(dbitem)
	local stats = {}
	if not dbitem then return stats end
	local dbstats = dbitem.st or {}
	local remapArmorPenToSpellPower = false
	local remapMp5ToArmorPen = false
	local remapSpellPenToBlockValue = false
	if dbstats.armorPenetration then
		local hasCasterMarkers = dbstats.intellect or dbstats.spirit or dbstats.mp5 or dbstats.spellPenetration
			or dbstats.spellPower or dbstats.hitRating or dbstats.critRating or dbstats.hasteRating
		local hasPhysicalMarkers = dbstats.strength or dbstats.agility or dbstats.attackPower or dbstats.rangedAttackPower or dbstats.feralAttackPower
			or dbstats.expertiseRating or dbstats.defenseRating or dbstats.dodgeRating or dbstats.parryRating or dbstats.blockRating or dbstats.blockValue
		local casterSlot = dbitem.s == "Finger" or dbitem.s == "Neck" or dbitem.s == "Back" or dbitem.s == "Trinket"
			or dbitem.s == "HeldOffHand" or dbitem.s == "Holdable" or dbitem.s == "Ranged" or dbitem.s == "RangedRight"
			or dbitem.s == "Head" or dbitem.s == "Shoulder" or dbitem.s == "Chest" or dbitem.s == "Robe"
			or dbitem.s == "Wrist" or dbitem.s == "Wrists" or dbitem.s == "Hands" or dbitem.s == "Waist" or dbitem.s == "Legs" or dbitem.s == "Feet"
			or dbitem.s == "Shield"
		local casterShield = dbitem.s == "Shield" and (dbstats.intellect or dbstats.spirit or dbstats.mp5 or dbstats.spellPenetration)
		if hasCasterMarkers and casterSlot and not hasPhysicalMarkers and (dbitem.s ~= "Shield" or casterShield) then
			remapArmorPenToSpellPower = true
		end
	end
	if dbstats.mp5 then
		local hasCasterMarkers = dbstats.intellect or dbstats.spirit or dbstats.spellPenetration or dbstats.spellPower
		local hasPhysicalMarkers = dbstats.strength or dbstats.agility or dbstats.attackPower or dbstats.rangedAttackPower or dbstats.feralAttackPower
			or dbstats.expertiseRating or dbstats.hitRating or dbstats.critRating or dbstats.hasteRating
			or dbstats.defenseRating or dbstats.dodgeRating or dbstats.parryRating or dbstats.blockRating or dbstats.blockValue
		local physicalSlot = dbitem.s == "Finger" or dbitem.s == "Neck" or dbitem.s == "Back" or dbitem.s == "Trinket"
			or dbitem.s == "Head" or dbitem.s == "Shoulder" or dbitem.s == "Chest" or dbitem.s == "Robe"
			or dbitem.s == "Wrist" or dbitem.s == "Wrists" or dbitem.s == "Hands" or dbitem.s == "Waist" or dbitem.s == "Legs" or dbitem.s == "Feet"
			or dbitem.s == "OneHand" or dbitem.s == "MainHand" or dbitem.s == "OffHand" or dbitem.s == "TwoHand"
			or dbitem.s == "Ranged" or dbitem.s == "RangedRight"
		local knownPhysicalArmorPenTrinket = dbitem.s == "Trinket" and dbitem.n and (
			dbitem.n == "Deathbringer's Will"
			or dbitem.n == "Sharpened Twilight Scale"
			or dbitem.n == "Banner of Victory"
		)
		if ((physicalSlot and hasPhysicalMarkers) or knownPhysicalArmorPenTrinket) and not hasCasterMarkers then
			remapMp5ToArmorPen = true
		end
	end
	if dbstats.spellPenetration then
		local hasCasterCore = dbstats.intellect or dbstats.spirit or dbstats.spellPower or dbstats.mp5
		local hasTankOrPhysical = dbstats.strength or dbstats.agility or dbstats.attackPower or dbstats.rangedAttackPower or dbstats.feralAttackPower
			or dbstats.expertiseRating or dbstats.hitRating or dbstats.critRating or dbstats.hasteRating
			or dbstats.defenseRating or dbstats.dodgeRating or dbstats.parryRating or dbstats.blockRating or dbstats.blockValue
		if hasTankOrPhysical and not hasCasterCore then
			remapSpellPenToBlockValue = true
		end
	end
	if dbitem.st then
		for dbkey, blizzkey in pairs(DB_STAT_MAP) do
			if dbstats[dbkey] then
				if dbkey == "armorPenetration" and remapArmorPenToSpellPower then
					add_stat(stats, "SPELL_POWER", dbstats[dbkey])
				elseif dbkey == "mp5" and remapMp5ToArmorPen then
					add_stat(stats, "ARMOR_PENETRATION", dbstats[dbkey])
				elseif dbkey == "spellPenetration" and remapSpellPenToBlockValue then
					add_stat(stats, "BLOCK_VALUE", dbstats[dbkey])
				else
					add_stat(stats, blizzkey, dbstats[dbkey])
				end
			end
		end
	end
	if dbitem.ar and dbitem.ar > 0 then
		add_stat(stats, "ARMOR", dbitem.ar)
	end
	if dbitem.bk and dbitem.bk > 0 then
		add_stat(stats, "BLOCK_VALUE", dbitem.bk)
	end
	if dbitem.w and dbitem.w[1] and dbitem.w[2] and dbitem.w[7] then
		local avgDmg = (dbitem.w[1] + dbitem.w[2]) / 2
		local delay = dbitem.w[7] / 1000
		if delay > 0 then
			add_stat(stats, "DAMAGE_PER_SECOND", avgDmg / delay)
		end
	end
	if dbitem.so then
		for _, socketColor in ipairs(dbitem.so) do
			local socketStat = DB_SOCKET_COLOR_TO_STAT[socketColor] or "EMPTY_SOCKET_PRISMATIC"
			add_stat(stats, socketStat, 1)
		end
	end
	return stats
end

function ItemScore:GetItemDetailsFromDB(itemLinkOrID)
	local itemID
	if type(itemLinkOrID) == "number" then
		itemID = itemLinkOrID
	else
		itemID = ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemLinkOrID)
	end
	if not itemID then return nil end

	local dbsource = ZygorItemDB and ZygorItemDB.items and ZygorItemDB.items[tonumber(itemID)]
	if not dbsource then return nil end

	local meta = self.GearFinderItemMeta and self.GearFinderItemMeta[tonumber(itemID)] or nil
	local equiploc = (meta and meta.equipLoc) or DB_SLOT_TO_INVTYPE[dbsource.s]
	local family = meta and meta.family or nil
	if not family and equiploc then
		family = select(1, resolve_family_from_equip_loc(equiploc))
	end
	if family == "MISCARM" or family == "OFFHAND" then
		family = nil
	end

	local itemClassID, itemSubClassID
	if family and ARMOR_FAMILY_ORDER[family] then
		itemClassID = LE_ITEM_CLASS_ARMOR
		for id, name in pairs(item_armor_types or {}) do
			if name == family then
				itemSubClassID = id
				break
			end
		end
	elseif family then
		for id, name in pairs(item_weapon_types or {}) do
			if name == family then
				itemClassID = LE_ITEM_CLASS_WEAPON
				itemSubClassID = id
				break
			end
		end
	end

	local itemlink = type(itemLinkOrID) == "string" and (strip_link(itemLinkOrID) or ("item:" .. itemID)) or ("item:" .. itemID)
	local itemlinkfull = type(itemLinkOrID) == "string" and itemLinkOrID or itemlink

	return {
		stats = build_db_stats(dbsource),
		itemlink = itemlink,
		itemid = itemID,
		itemlinkfull = itemlinkfull,
		minlevel = dbsource.rl,
		type = equiploc,
		equiploc = equiploc,
		class = itemClassID,
		subclass = itemSubClassID,
		family = family,
		subtype = dbsource.s,
		quality = dbsource.q,
		validated = false,
		texture = GetItemIcon and GetItemIcon(itemID) or nil,
		itemlvl = dbsource.i,
		playerclass = db_mask_to_classes(dbsource.cl),
		allowableRaceMask = dbsource.rc,
		playerspec = nil,
		requires_detail = nil,
		needs_exact_stats = ((dbsource.rp and dbsource.rp ~= 0) or (dbsource.sc and dbsource.sc ~= 0)) and true or false,
		needs_live_scan = true,
		name = (meta and meta.name) or dbsource.n,
		ignore_for_gear = is_test_item_name((meta and meta.name) or dbsource.n),
		fromdb = true,
	}
end

function ItemScore:GetResolvedItemDetails(itemLinkOrID)
	local item = self:GetItemDetails(itemLinkOrID)
	if item and (item.needs_exact_stats or item.needs_live_scan) then
		local refreshed = self:GetItemDetailsQueued((type(itemLinkOrID) == "string" and itemLinkOrID) or item.itemlinkfull or item.itemlink, true)
		if refreshed and not refreshed.needs_exact_stats and not refreshed.needs_live_scan then
			return refreshed
		end
	end
	return item or self:GetItemDetailsFromDB(itemLinkOrID)
end

local function item_needs_live_resolution(item)
	return item and (item.needs_exact_stats or item.needs_live_scan) and true or false
end

function ItemScore:IsItemPendingResolution(itemOrLink)
	if not itemOrLink then return false end
	local item = type(itemOrLink) == "table" and itemOrLink or self:GetResolvedItemDetails(itemOrLink)
	return item_needs_live_resolution(item)
end

function ItemScore:GetResolvedItemDetailsReady(itemOrLink)
	local item = self:GetResolvedItemDetails(itemOrLink)
	if item and not item_needs_live_resolution(item) then
		return item
	end
	return nil, item
end

local TWO_HANDED_WEAPON_FAMILIES = {
	AXE = "TH_AXE",
	MACE = "TH_MACE",
	SWORD = "TH_SWORD",
}

local function canonicalize_weapon_handedness(family, equipLoc)
	if equipLoc == "INVTYPE_2HWEAPON" then
		return TWO_HANDED_WEAPON_FAMILIES[family] or family
	end
	return family
end

local function get_item_family(item)
	if not item then return nil end
	local equipLoc = item.equiploc or item.type
	local equipFamily = resolve_family_from_equip_loc(equipLoc)
	if equipFamily and equipFamily ~= "MISCARM" and equipFamily ~= "OFFHAND" then return equipFamily end
	if item.family then return canonicalize_weapon_handedness(item.family, equipLoc) end
	if (item.equiploc == "INVTYPE_RANGED" or item.equiploc == "INVTYPE_RANGEDRIGHT") and ItemScore and ItemScore.playerclass then
		if ItemScore.playerclass == "PRIEST" or ItemScore.playerclass == "MAGE" or ItemScore.playerclass == "WARLOCK" then
			return "WAND"
		end
	end
	if item.name then
		local normalizedName = normalize_label(item.name)
		if normalizedName then
			if item.equiploc == "INVTYPE_RELIC" and RELIC_NAME_FAMILY_OVERRIDES[normalizedName] then
				return RELIC_NAME_FAMILY_OVERRIDES[normalizedName]
			end
			if normalizedName:find("wand", 1, true) then return "WAND" end
			if normalizedName:find("crossbow", 1, true) then return "CROSSBOW" end
			if normalizedName:find("rifle", 1, true) or normalizedName:find("gun", 1, true) then return "GUN" end
			if normalizedName:find("bow", 1, true) or normalizedName:find("long rifle", 1, true) then return "BOW" end
			if normalizedName:find("thrown", 1, true) then return "THROWN" end
			if normalizedName:find("polearm", 1, true) or normalizedName:find("halberd", 1, true) or normalizedName:find("glaive", 1, true) or normalizedName:find("lance", 1, true) or normalizedName:find("pike", 1, true) or normalizedName:find("spear", 1, true) then return "TH_POLE" end
			if normalizedName:find("staff", 1, true) or normalizedName:find("stave", 1, true) then return "TH_STAFF" end
			if normalizedName:find("dagger", 1, true) then return "DAGGER" end
			if normalizedName:find("sword", 1, true) then return canonicalize_weapon_handedness(normalizedName:find("two%-hand", 1) and "TH_SWORD" or "SWORD", equipLoc) end
			if normalizedName:find("axe", 1, true) then return canonicalize_weapon_handedness(normalizedName:find("two%-hand", 1) and "TH_AXE" or "AXE", equipLoc) end
			if normalizedName:find("mace", 1, true) or normalizedName:find("hammer", 1, true) then return canonicalize_weapon_handedness(normalizedName:find("two%-hand", 1) and "TH_MACE" or "MACE", equipLoc) end
			if normalizedName:find("fist", 1, true) or normalizedName:find("claw", 1, true) then return "FIST" end
			if normalizedName:find("idol", 1, true) then return "IDOL" end
			if normalizedName:find("totem", 1, true) then return "TOTEM" end
			if normalizedName:find("sigil", 1, true) then return "SIGIL" end
			if normalizedName:find("libram", 1, true) then return "LIBRAM" end
		end
	end
	if item.subtype then
		local normalizedSubtype = normalize_label(item.subtype)
		if normalizedSubtype then
			for family, aliases in pairs(FAMILY_ALIASES) do
				for _, alias in ipairs(aliases) do
					local normalizedAlias = normalize_label(alias)
					if normalizedAlias and (normalizedSubtype == normalizedAlias or normalizedSubtype:find(normalizedAlias, 1, true)) then
						return canonicalize_weapon_handedness(family, equipLoc)
					end
				end
			end
		end
		local subtypeFamily = select(1, resolve_item_family(item.class, item.subtype))
		if subtypeFamily then return canonicalize_weapon_handedness(subtypeFamily, equipLoc) end
	end
	if item.class == LE_ITEM_CLASS_ARMOR then
		return item_armor_types[item.subclass]
	elseif item.class == LE_ITEM_CLASS_WEAPON then
		return canonicalize_weapon_handedness(item_weapon_types[item.subclass], equipLoc)
	end
	return nil
end

ARMOR_FAMILY_ORDER = {
	CLOTH = 1,
	LEATHER = 2,
	MAIL = 3,
	PLATE = 4,
}

local CLASS_MAX_ARMOR_FAMILY = {
	WARRIOR = "PLATE",
	PALADIN = "PLATE",
	DEATHKNIGHT = "PLATE",
	HUNTER = "MAIL",
	SHAMAN = "MAIL",
	ROGUE = "LEATHER",
	DRUID = "LEATHER",
	MAGE = "CLOTH",
	WARLOCK = "CLOTH",
	PRIEST = "CLOTH",
}

-- Maximum trainable weapon proficiencies in Wrath 3.3.5a. Keep this class-level
-- guard independent of spec weights so unusable weapons never reach scoring.
local CLASS_WEAPON_FAMILIES = {
	DEATHKNIGHT = {AXE=true, TH_AXE=true, MACE=true, TH_MACE=true, TH_POLE=true, SWORD=true, TH_SWORD=true, SIGIL=true},
	DRUID = {DAGGER=true, FIST=true, MACE=true, TH_MACE=true, TH_POLE=true, TH_STAFF=true, IDOL=true},
	HUNTER = {AXE=true, TH_AXE=true, BOW=true, CROSSBOW=true, DAGGER=true, FIST=true, GUN=true, TH_POLE=true, TH_STAFF=true, SWORD=true, TH_SWORD=true, THROWN=true},
	MAGE = {DAGGER=true, TH_STAFF=true, SWORD=true, WAND=true},
	PALADIN = {AXE=true, TH_AXE=true, MACE=true, TH_MACE=true, TH_POLE=true, SWORD=true, TH_SWORD=true, SHIELD=true, LIBRAM=true},
	PRIEST = {DAGGER=true, MACE=true, TH_STAFF=true, WAND=true},
	ROGUE = {AXE=true, BOW=true, CROSSBOW=true, DAGGER=true, FIST=true, GUN=true, MACE=true, SWORD=true, THROWN=true},
	SHAMAN = {AXE=true, TH_AXE=true, DAGGER=true, FIST=true, MACE=true, TH_MACE=true, TH_STAFF=true, SHIELD=true, TOTEM=true},
	WARLOCK = {DAGGER=true, TH_STAFF=true, SWORD=true, WAND=true},
	WARRIOR = {AXE=true, TH_AXE=true, BOW=true, CROSSBOW=true, DAGGER=true, FIST=true, GUN=true, MACE=true, TH_MACE=true, TH_POLE=true, TH_STAFF=true, SWORD=true, TH_SWORD=true, THROWN=true, SHIELD=true},
}

local STANDARD_WEAPON_FAMILIES = {}
for _, families in pairs(CLASS_WEAPON_FAMILIES) do
	for family in pairs(families) do
		STANDARD_WEAPON_FAMILIES[family] = true
	end
end

local function class_can_use_standard_family(classToken, family, level)
	if not classToken or not family then return nil end
	if STANDARD_WEAPON_FAMILIES[family] then
		local classFamilies = CLASS_WEAPON_FAMILIES[classToken]
		if not classFamilies then return nil end
		return classFamilies[family] and true or false
	end
	local wantedRank = ARMOR_FAMILY_ORDER[family]
	if not wantedRank then return nil end
	local maxFamily = CLASS_MAX_ARMOR_FAMILY[classToken]
	local maxRank = maxFamily and ARMOR_FAMILY_ORDER[maxFamily]
	if not maxRank then return false end
	if family == "MAIL" and (classToken == "HUNTER" or classToken == "SHAMAN") and (tonumber(level) or 0) < 40 then
		return false
	end
	if family == "PLATE" and classToken ~= "DEATHKNIGHT" and (tonumber(level) or 0) < 40 then
		return false
	end
	return wantedRank <= maxRank
end

local function get_item_slot_info(item)
	if not item or not item.type or item.type == "" then
		return nil, nil, false, false, "not equipment"
	end
	if not EQUIPPABLE_INV_TYPES[item.type] then
		return nil, nil, false, false, "unsupported slot"
	end
	local slot_1, slot_2, twohander = ItemScore:GetValidSlots(item)
	if not slot_1 then
		return nil, nil, false, false, "unsupported slot"
	end
	return slot_1, slot_2, twohander or false, true, "ok"
end

local function item_is_gear(item)
	if not item or not item.type or NON_GEAR_INV_TYPES[item.type] then
		return false
	end
	if item.class == LE_ITEM_CLASS_WEAPON and item.subtype then
		local normalizedSubtype = normalize_label(item.subtype)
		if normalizedSubtype and NON_GEAR_WEAPON_SUBTYPES[normalizedSubtype] then
			return false
		end
	end
	local _, _, _, equippable = get_item_slot_info(item)
	return equippable and true or false
end

local function debug_bool(value)
	if value == nil then return "nil" end
	return tostring(value)
end

local function debug_num(value)
	return value == nil and "nil" or tostring(value)
end

local function debug_text(value)
	if value == nil or value == "" then return "nil" end
	value = tostring(value):gsub("|c........", ""):gsub("|r", "")
	if value:len() > 92 then value = value:sub(1, 89) .. "..." end
	return value
end

local function debug_color_string(fontString)
	if not fontString or not fontString.GetTextColor then return "nil" end
	local r, g, b = fontString:GetTextColor()
	if not r then return "nil" end
	return ("%03d,%03d,%03d"):format((r or 0) * 255, (g or 0) * 255, (b or 0) * 255)
end

local function tooltip_font_string_is_red(fontString)
	if not fontString or not fontString.GetTextColor then return false end
	local r, g, b = fontString:GetTextColor()
	if not r then return false end
	return r >= 0.75 and (g or 0) <= 0.25 and (b or 0) <= 0.25
end

local function tooltip_line_marks_unusable_item_subtype(lineNumber)
	if not Gratuity or not Gratuity.vars then return false end
	local rightLine = Gratuity.vars.Rlines and Gratuity.vars.Rlines[lineNumber]
	if not rightLine or not rightLine.GetText or not rightLine:GetText() then return false end
	if not tooltip_font_string_is_red(rightLine) then return false end

	local leftLine = Gratuity.vars.Llines and Gratuity.vars.Llines[lineNumber]
	local leftText = leftLine and leftLine.GetText and leftLine:GetText()
	if not leftText or leftText == "" then return false end

	-- WotLK item tooltips put slot on the left and armor/weapon subtype on the right
	-- near the top. A red right-side subtype means the character cannot equip it.
	return lineNumber <= 3
end

local function debug_api_call(func, ...)
	if not func then return "n/a" end
	local result = {pcall(func, ...)}
	if not result[1] then return "err:" .. debug_text(result[2]) end
	table.remove(result, 1)
	for i = 1, #result do result[i] = debug_text(result[i]) end
	return table.concat(result, ",")
end

local function debug_extract_itemlink(input)
	input = tostring(input or ""):gsub("^%s+", ""):gsub("%s+$", "")
	if input == "" and GetMouseFocus then
		local focus = GetMouseFocus()
		if focus and focus.GetParent then
			local parent = focus:GetParent()
			if parent and parent.GetName and parent:GetName() == "ItemRefTooltip" and ItemRefTooltip and ItemRefTooltip.GetItem then
				local _, link = ItemRefTooltip:GetItem()
				if link then return link end
			end
		end
	end
	local link = input:match("|H(item:[^|]+)|h") or input:match("(item:%-?%d+[^%s]*)")
	if link then return link end
	local id = tonumber(input:match("^(%d+)$")) or tonumber(input:match("item:(%d+)")) or tonumber(input:match("(%d+)"))
	if id then return "item:" .. id end
	return nil
end

function ItemScore:GetGearDebugLines(input)
	local itemlink = debug_extract_itemlink(input)
	if not itemlink then
		return nil, "Usage: /zgvgearbug item:2399, /zgvgearpop item:2399, or shift-click an item link."
	end
	itemlink = strip_link(itemlink) or itemlink
	local itemID = ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemlink)
	local dbsource = itemID and ZygorItemDB and ZygorItemDB.items and ZygorItemDB.items[tonumber(itemID)]
	local gii = {ZGV:GetItemInfo(itemlink)}
	local dbitem = self:GetItemDetailsFromDB(itemlink)
	local queued = self:GetItemDetailsQueued(itemlink, true)
	local item = self:GetResolvedItemDetails(itemlink) or queued or dbitem
	local validity = self:GetItemValidity(itemlink)
	local verbose = {}
	local score, scored, scoreComment = self:GetItemScore(itemlink, verbose)
	local slot_1, slot_2, twohander, equippable, slotReason = item and get_item_slot_info(item)
	local family = item and get_item_family(item)
	local standardAllowed = class_can_use_standard_family(self.playerclass, family, self.playerlevel)
	local comparison = slot_1 and self.Upgrades and self.Upgrades.GetUpgradeComparison and self.Upgrades:GetUpgradeComparison(slot_1, item)
	local equip1 = slot_1 and GetInventoryItemLink and GetInventoryItemLink("player", slot_1)
	local equip2 = slot_2 and GetInventoryItemLink and GetInventoryItemLink("player", slot_2)
	local blizzStats = (GetItemStats and (GetItemStats(itemlink) or GetItemStats(item and item.itemlinkfull or itemlink))) or nil
	local blizzStatCount = 0
	if blizzStats then for _ in pairs(blizzStats) do blizzStatCount = blizzStatCount + 1 end end

	local lines = {}
	lines[#lines + 1] = "Zygor Gear Debug: start. Copy all lines below and the item tooltip if visible."
	lines[#lines + 1] = ("ZGD 1/9 input=%s id=%s locale=%s player=%s/%s level=%s build=%s"):format(debug_text(itemlink), debug_num(itemID), debug_text(GetLocale and GetLocale()), debug_text(self.playerclass), debug_text(self.playerclassName), debug_num(self.playerlevel), debug_num(ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build))
	lines[#lines + 1] = ("ZGD 2/9 DB found=%s name=%s slot=%s q=%s ilvl=%s req=%s cl=%s rc=%s armor=%s weapon=%s"):format(debug_bool(dbsource ~= nil), debug_text(dbsource and dbsource.n), debug_text(dbsource and dbsource.s), debug_num(dbsource and dbsource.q), debug_num(dbsource and dbsource.i), debug_num(dbsource and dbsource.rl), debug_num(dbsource and dbsource.cl), debug_num(dbsource and dbsource.rc), debug_num(dbsource and dbsource.ar), debug_bool(dbsource and dbsource.w ~= nil))
	lines[#lines + 1] = ("ZGD 3/9 GII name=%s type=%s subtype=%s equip=%s q=%s ilvl=%s req=%s tex=%s"):format(debug_text(gii[1]), debug_text(gii[6]), debug_text(gii[7]), debug_text(gii[9]), debug_num(gii[3]), debug_num(gii[4]), debug_num(gii[5]), debug_num(gii[10]))
	lines[#lines + 1] = ("ZGD 4/9 item name=%s fromdb=%s pending=%s exact=%s class=%s subclass=%s family=%s subtype=%s equip=%s tipUnusable=%s"):format(debug_text(item and item.name), debug_bool(item and item.fromdb), debug_bool(item and item.needs_live_scan), debug_bool(item and item.needs_exact_stats), debug_num(item and item.class), debug_num(item and item.subclass), debug_text(family), debug_text(item and item.subtype), debug_text(item and (item.equiploc or item.type)), debug_bool(item and item.unusable_by_tooltip))
	lines[#lines + 1] = ("ZGD 5/9 validity valid=%s final=%s code=%s reason=%s equippable=%s slotReason=%s slot1=%s slot2=%s 2h=%s classFamilyAllowed=%s"):format(debug_bool(validity and validity.valid), debug_bool(validity and validity.final), debug_text(validity and validity.code), debug_text(validity and validity.reason), debug_bool(equippable), debug_text(slotReason), debug_num(slot_1), debug_num(slot_2), debug_bool(twohander), debug_bool(standardAllowed))
	lines[#lines + 1] = ("ZGD 6/9 score=%s scored=%s comment=%s armor=%s dps=%s blizzStats=%s"):format(debug_num(score), debug_bool(scored), debug_text(scoreComment), debug_num(item and item.stats and item.stats.ARMOR), debug_num(item and item.stats and item.stats.DAMAGE_PER_SECOND), debug_num(blizzStatCount))
	lines[#lines + 1] = ("ZGD 7/9 APIs usable=%s equippable=%s canEquip=%s equip1=%s equip2=%s"):format(debug_api_call(IsUsableItem, itemlink), debug_api_call(IsEquippableItem, itemlink), debug_api_call(CanEquipItem, itemlink), debug_text(equip1), debug_text(equip2))
	lines[#lines + 1] = ("ZGD cmp slot=%s candidate=%s baseline=%s delta=%s pct=%s state=%s new=%s armorFallback=%s"):format(debug_num(slot_1), debug_num(comparison and comparison.candidateScore), debug_num(comparison and comparison.baselineScore), debug_num(comparison and comparison.deltaScore), debug_num(comparison and comparison.percent), debug_text(comparison and comparison.state), debug_bool(comparison and comparison.isNewItem), debug_bool(comparison and comparison.armorFallback))

	Gratuity:SetHyperlink(itemlink)
	local lineCount = Gratuity:NumLines() or 0
	lines[#lines + 1] = ("ZGD 8/9 tooltipLines=%s scanner=%s"):format(debug_num(lineCount), debug_text(Gratuity.vars and Gratuity.vars.tooltip and Gratuity.vars.tooltip:GetName()))
	for i = 1, math.min(lineCount, 8) do
		local left, right = Gratuity:GetLine(i)
		local lfs = Gratuity.vars and Gratuity.vars.Llines and Gratuity.vars.Llines[i]
		local rfs = Gratuity.vars and Gratuity.vars.Rlines and Gratuity.vars.Rlines[i]
		lines[#lines + 1] = ("ZGD tip %d L[%s]=%s R[%s]=%s"):format(i, debug_color_string(lfs), debug_text(left), debug_color_string(rfs), debug_text(right))
	end
	if verbose[1] then
		lines[#lines + 1] = ("ZGD 9/9 scoreDetail=%s | %s | %s"):format(debug_text(verbose[1]), debug_text(verbose[2]), debug_text(verbose[3]))
	else
		lines[#lines + 1] = "ZGD 9/9 scoreDetail=none"
	end
	return lines
end

function ItemScore:DebugGearItem(input)
	local lines, err = self:GetGearDebugLines(input)
	if not lines then
		print(branded_chat_prefix("Gear Debug") .. " " .. err)
		return
	end
	for _, line in ipairs(lines) do
		print(line)
	end
end

function ItemScore:ShowGearDebugPopup(input)
	local lines, err = self:GetGearDebugLines(input)
	if not lines then
		print(branded_chat_prefix("Gear Debug") .. " " .. err)
		return
	end
	local text = table.concat(lines, "\n")
	local frame = self.GearDebugPopup
	if not frame then
		frame = CreateFrame("Frame", "ZGVGearDebugPopup", UIParent)
		frame:SetFrameStrata("DIALOG")
		frame:SetWidth(720)
		frame:SetHeight(420)
		frame:SetPoint("CENTER")
		frame:SetBackdrop({
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			tile = true, tileSize = 32, edgeSize = 32,
			insets = { left = 11, right = 12, top = 12, bottom = 11 }
		})
		frame:EnableMouse(true)
		frame:SetMovable(true)
		frame:RegisterForDrag("LeftButton")
		frame:SetScript("OnDragStart", frame.StartMoving)
		frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

		local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		title:SetPoint("TOPLEFT", 18, -16)
		title:SetText("Zygor Gear Debug")
		frame.title = title

		local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
		close:SetPoint("TOPRIGHT", -4, -4)
		frame.close = close

		local scroll = CreateFrame("ScrollFrame", "ZGVGearDebugPopupScroll", frame, "UIPanelScrollFrameTemplate")
		scroll:SetPoint("TOPLEFT", 18, -46)
		scroll:SetPoint("BOTTOMRIGHT", -34, 46)
		frame.scroll = scroll

		local edit = CreateFrame("EditBox", nil, scroll)
		edit:SetMultiLine(true)
		edit:SetAutoFocus(false)
		edit:SetFontObject(ChatFontNormal)
		edit:SetWidth(650)
		edit:SetScript("OnEscapePressed", function() frame:Hide() end)
		scroll:SetScrollChild(edit)
		frame.edit = edit

		local hint = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		hint:SetPoint("BOTTOMLEFT", 18, 18)
		hint:SetText("Click text, Ctrl+A, Ctrl+C to copy.")
		frame.hint = hint

		self.GearDebugPopup = frame
	end
	frame.edit:SetText(text)
	frame.edit:HighlightText()
	frame.edit:SetFocus()
	frame:Show()
end

function ItemScore:RegisterDebugSlashCommands()
	if self.DebugSlashRegistered then return end
	SLASH_ZGVGEARBUG1 = "/zgvgearbug"
	SLASH_ZGVGEARBUG2 = "/zgvitemdebug"
	SLASH_ZGVGEARPOP1 = "/zgvgearpop"
	SlashCmdList["ZGVGEARBUG"] = function(msg)
		if ZGV and ZGV.ItemScore and ZGV.ItemScore.DebugGearItem then
			ZGV.ItemScore:DebugGearItem(msg)
		end
	end
	SlashCmdList["ZGVGEARPOP"] = function(msg)
		if ZGV and ZGV.ItemScore and ZGV.ItemScore.ShowGearDebugPopup then
			ZGV.ItemScore:ShowGearDebugPopup(msg)
		end
	end
	self.DebugSlashRegistered = true
end

function ItemScore:RegisterRoleSlashCommands()
	if self.RoleSlashRegistered then return end
	SLASH_ZYGORTANK1 = "/zygortank"
	SLASH_ZYGORTANK2 = "/ztank"
	SLASH_ZYGORDPS1 = "/zygordps"
	SLASH_ZYGORDPS2 = "/zdps"
	SLASH_ZYGORHEAL1 = "/zygorheal"
	SLASH_ZYGORHEAL2 = "/zheal"
	SLASH_ZYGORHEAL3 = "/zygorhealer"
	SLASH_ZYGORHEAL4 = "/zhealer"
	SLASH_ZYGORSUPPORT1 = "/zygorsupport"
	SLASH_ZYGORSUPPORT2 = "/zsupport"
	SLASH_ZYGORSUPPORT3 = "/zygorsup"
	SLASH_ZYGORSUPPORT4 = "/zsup"
	SLASH_ZYGORROLE1 = "/zygorrole"
	SLASH_ZYGORROLE2 = "/zrole"
	SlashCmdList["ZYGORTANK"] = function()
		if ZGV and ZGV.ItemScore then ZGV.ItemScore:SetGearRole("tank") end
	end
	SlashCmdList["ZYGORDPS"] = function()
		if ZGV and ZGV.ItemScore then ZGV.ItemScore:SetGearRole("dps") end
	end
	SlashCmdList["ZYGORHEAL"] = function()
		if ZGV and ZGV.ItemScore then ZGV.ItemScore:SetGearRole("heal") end
	end
	SlashCmdList["ZYGORSUPPORT"] = function()
		if ZGV and ZGV.ItemScore then ZGV.ItemScore:SetGearRole("support") end
	end
	SlashCmdList["ZYGORROLE"] = function(msg)
		if not (ZGV and ZGV.ItemScore) then return end
		msg = tostring(msg or ""):lower():match("^%s*(.-)%s*$")
		if msg == "tank" or msg == "dps" or msg == "heal" or msg == "healer" or msg == "support" or msg == "sup" or msg == "auto" then
			ZGV.ItemScore:SetGearRole(msg)
		else
			local groupKey = ZGV.ItemScore:GetActiveTalentGroupKey()
			local override = ZGV.ItemScore:GetActiveBuildOverrideBuild(ZGV.ItemScore.playerclass, groupKey)
			local activeBuild = override or (ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build)
			local activeName = ZGV.ItemScore:GetBuildName(ZGV.ItemScore.playerclass, activeBuild, ZGV.ItemScore.playerlevel)
			ZGV:Print(("Gear Advisor: talent group %d uses %s. Commands: /ztank, /zdps, /zheal, /zsupport, or /zrole auto."):format(groupKey, activeName))
		end
	end
	self.RoleSlashRegistered = true
end

local function clamp_display_percent(percent)
	if not percent then return nil end
	if percent >= 100 then return 99.99 end
	if percent <= -100 then return -99.99 end
	return percent
end

local function get_class_tag(classRef)
	if type(classRef) == "string" then return classRef end
	if type(classRef) == "number" then
		if ZGV.NumberToClass and ZGV.NumberToClass[classRef] then
			return ZGV.NumberToClass[classRef]
		end
		if ZGV.ClassToNumber then
			for tag, id in pairs(ZGV.ClassToNumber) do
				if id == classRef then
					return tag
				end
			end
		end
	end
	return nil
end

function ItemScore:IsKnownWeightClass(classToken)
	return classToken and self.rules and self.rules[classToken] and true or false
end

function ItemScore:GetCustomClassToken()
	return "CUSTOM"
end

function ItemScore:GetCustomClassID()
	return (ZGV.ClassToNumber and ZGV.ClassToNumber[self:GetCustomClassToken()]) or 11
end

function ItemScore:NotifyCustomWeightFallback(originalClass, originalBuild, reason)
	ZGV.db.char.gear_custom_fallback_notices = ZGV.db.char.gear_custom_fallback_notices or {}
	local groupKey = self.GetActiveTalentGroupKey and self:GetActiveTalentGroupKey() or 1
	local noticeKey = ("%s:%s:%s:%s"):format(tostring(originalClass or "?"), tostring(originalBuild or "?"), tostring(groupKey or "?"), tostring(reason or "?"))
	if ZGV.db.char.gear_custom_fallback_notices[noticeKey] then return end
	ZGV.db.char.gear_custom_fallback_notices[noticeKey] = true

	local message = ("Gear Advisor: Unknown class/spec detected (%s %s). Gear scoring has been set to Custom weights. You can adjust Custom weights in Gear Advisor > Stat Weights."):format(tostring(originalClass or "unknown"), tostring(originalBuild or "?"))
	if ZGV and ZGV.Print then
		ZGV:Print(message)
	else
		print(branded_chat_prefix("Gear Advisor") .. " " .. message)
	end
end
	
function ItemScore:Initialise()
	-- apply lower armor types as viable
	for class,classrules in pairs(ItemScore.rules) do
		for spec,rule in pairs(classrules) do
			local stats = rule["stats"]
			local types = rule["itemtypes"]

			stats.DAMAGE_PER_SECOND = stats.DPS stats.DPS = nil -- Switch DPS to the full string.

			-- players use only final armor types, so no fallbacks to lower ones anymore

			types["JEWELERY"] = 1 -- rings, trinkets, necklaces
		end
	end

	-- register all needed events
	self.eventFrame=CreateFrame("Frame")
	ZGV.ChainCall(self.eventFrame)
		:RegisterEvent("LOADING_SCREEN_DISABLED")

		:RegisterEvent("PLAYER_LEVEL_UP")
		:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
		:RegisterEvent("BAG_UPDATE")
		:RegisterEvent("MAIL_INBOX_UPDATE")
		:RegisterEvent("MAIL_CLOSED")
		:RegisterEvent("GET_ITEM_INFO_RECEIVED")
		:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		:RegisterEvent("BANKFRAME_OPENED")
		:RegisterEvent("BANKFRAME_CLOSED")
		:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
		:RegisterEvent("START_LOOT_ROLL")
		:RegisterEvent("CANCEL_LOOT_ROLL")
		:RegisterEvent("LOOT_OPENED")
		:RegisterEvent("LOOT_CLOSED")

		:RegisterEvent("PLAYER_REGEN_DISABLED")
		:RegisterEvent("PLAYER_REGEN_ENABLED")

		:SetScript("OnEvent",function(self,event,...) ItemScore:OnEvent(event,...) end)
		:Show()

	-- 3.3.5a: use talent/skill events instead of retail spec events
	self.eventFrame:RegisterEvent("CHARACTER_POINTS_CHANGED")
	-- Some 3.3.5a cores update the talent window without firing CHARACTER_POINTS_CHANGED.
	-- Register this defensively because unsupported custom-core events can raise an error.
	pcall(self.eventFrame.RegisterEvent, self.eventFrame, "PLAYER_TALENT_UPDATE")
	self.eventFrame:RegisterEvent("SKILL_LINES_CHANGED")


	ZGV.UpdateCentral:AddHandler(ItemScore.ItemDetailsHandler)


	ZGV:AddMessageHandler("ZGV_STEP_FINALISED",ItemScore.OnEvent)
	ZGV:AddMessageHandler("LIBROVER_TRAVEL_REPORTED",ItemScore.OnEvent)
	ItemScore:RegisterDebugSlashCommands()
	ItemScore:RegisterRoleSlashCommands()

	-- create item popup
	ItemScore.Upgrades:CreatePopup()

	-- set up initial data
	ItemScore:RefreshUserData()

	self.Initialised = true
end

-- Fallback build used before talent-based spec detection is meaningful.
-- Baseline source: Wowhead WotLK Classic class leveling overviews (accessed 2026-04-20).
-- This fallback is only for pre-talent / no-points-spent states, so where a guide suggests
-- an early-level split, prefer the early-game recommendation over the end-to-end spec.
ItemScore.LevelingBuildFallback = {
	WARRIOR = 1,
	PALADIN = 3,
	HUNTER = 1,
	ROGUE = 2,
	PRIEST = 1,
	DEATHKNIGHT = 3,
	SHAMAN = 2,
	MAGE = 3,
	WARLOCK = 1,
	DRUID = 2,
}

function ItemScore:GetFallbackBuildForClass(classToken)
	if not self:IsKnownWeightClass(classToken) then return 1 end
	return (classToken and self.LevelingBuildFallback[classToken]) or 1
end

function ItemScore:GetActiveTalentGroup()
	if not GetActiveTalentGroup then return nil end
	local candidates = {
		function() return GetActiveTalentGroup() end,
		function() return GetActiveTalentGroup(false, false) end,
	}
	for _, getter in ipairs(candidates) do
		local ok, group = pcall(getter)
		if ok and tonumber(group) and tonumber(group) > 0 then
			return tonumber(group)
		end
	end
	return nil
end

function ItemScore:GetTalentState(classToken, level)
	level = tonumber(level) or 0
	local fallbackBuild = self:GetFallbackBuildForClass(classToken)
	local activeTalentGroup = self:GetActiveTalentGroup()
	local treePoints = {}
	local bestTree, bestPoints, totalPoints = fallbackBuild, 0, 0
	local numTabs = GetNumTalentTabs and GetNumTalentTabs() or 0

	for i = 1, numTabs do
		local pointsSpent
		if activeTalentGroup and activeTalentGroup > 0 then
			local ok, _, _, groupedPoints = pcall(GetTalentTabInfo, i, false, false, activeTalentGroup)
			if ok then pointsSpent = tonumber(groupedPoints) end
		end

		-- A few private-server cores expose GetActiveTalentGroup but return zero points
		-- when talentGroup is supplied. The no-group form still describes the active spec,
		-- so use it when it provides better data instead of falling back to a leveling build.
		do
			local ok, _, _, defaultPoints = pcall(GetTalentTabInfo, i)
			defaultPoints = ok and tonumber(defaultPoints) or nil
			if defaultPoints and (not pointsSpent or defaultPoints > pointsSpent) then
				pointsSpent = defaultPoints
			end
		end
		pointsSpent = tonumber(pointsSpent) or 0
		treePoints[i] = pointsSpent
		totalPoints = totalPoints + pointsSpent
		if pointsSpent > bestPoints then
			bestPoints = pointsSpent
			bestTree = i
		end
	end

	local availablePoints
	if UnitCharacterPoints then
		local ok, value = pcall(UnitCharacterPoints, "player")
		if ok then
			availablePoints = tonumber(value)
		end
	end

	local preTalentState = false
	local uncertain = false
	if level < 10 then
		preTalentState = true
	elseif totalPoints == 0 then
		if level == 10 then
			preTalentState = true
		elseif availablePoints and availablePoints > 0 then
			preTalentState = true
		else
			uncertain = true
		end
	end

	return {
		activeTalentGroup = activeTalentGroup,
		treePoints = treePoints,
		bestTree = bestTree,
		bestPoints = bestPoints,
		totalPoints = totalPoints,
		availablePoints = availablePoints,
		preTalentState = preTalentState,
		uncertain = uncertain,
	}
end

function ItemScore:ClearPreTalentOverride()
	ZGV.db.char.gear_pre_talent_override_build = nil
	ZGV.db.char.gear_pre_talent_override_explicit = nil
end

function ItemScore:GetActiveBuildOverrideTable()
	ZGV.db.char.gear_active_build_override_by_group = ZGV.db.char.gear_active_build_override_by_group or {}
	return ZGV.db.char.gear_active_build_override_by_group
end

function ItemScore:GetActiveTalentGroupKey()
	return tonumber(self:GetActiveTalentGroup()) or 1
end

function ItemScore:ClearActiveBuildOverride(groupKey)
	local overrides = self:GetActiveBuildOverrideTable()
	if groupKey then
		overrides[tonumber(groupKey) or 1] = nil
	elseif ZGV.db.char.gear_active_build_override_by_group then
		wipe(ZGV.db.char.gear_active_build_override_by_group)
	end
	ZGV.db.char.gear_active_build_override_enabled = nil
	ZGV.db.char.gear_active_build_override_build = nil
end

function ItemScore:SetActiveBuildOverride(buildNum, groupKey)
	buildNum = tonumber(buildNum)
	if not buildNum then return end
	groupKey = tonumber(groupKey) or self:GetActiveTalentGroupKey()
	self:GetActiveBuildOverrideTable()[groupKey] = buildNum
	ZGV.db.char.gear_active_build_override_enabled = true
	ZGV.db.char.gear_active_build_override_build = buildNum
end

function ItemScore:GetActiveBuildOverrideBuild(classToken, groupKey)
	if not classToken or classToken ~= self.playerclass then return nil, false end
	groupKey = tonumber(groupKey) or self:GetActiveTalentGroupKey()
	local overrideBuild = tonumber(self:GetActiveBuildOverrideTable()[groupKey])
	local classRules = self.rules and self.rules[classToken]
	if classRules and overrideBuild and classRules[overrideBuild] then
		return overrideBuild, true
	end
	if overrideBuild then
		self:ClearActiveBuildOverride(groupKey)
	end
	return nil, false
end

function ItemScore:GetActiveBuildSourceLabel()
	if self.activeBuildUsesCustomFallback then
		return "Custom weights"
	end
	if self:GetActiveBuildOverrideBuild(self.playerclass, self:GetActiveTalentGroupKey()) then
		return "Overridden build"
	end
	return "Detected build"
end

function ItemScore:GetPreTalentOverrideBuild(classToken, level, talentState)
	if not ZGV.db.char.gear_pre_talent_override_explicit then return nil, false end
	if not classToken or classToken ~= self.playerclass then return nil, false end
	talentState = talentState or self:GetTalentState(classToken, level)
	if not talentState or not talentState.preTalentState then return nil, false end
	local overrideBuild = tonumber(ZGV.db.char.gear_pre_talent_override_build)
	local classRules = self.rules and self.rules[classToken]
	if classRules and overrideBuild and classRules[overrideBuild] then
		return overrideBuild, true
	end
	self:ClearPreTalentOverride()
	return nil, false
end

function ItemScore:GetResolvedBuild(classToken, level, buildNum)
	level = tonumber(level) or level
	local classRules = classToken and self.rules and self.rules[classToken]
	if not classRules then
		return buildNum or 1, false
	end
	local fallbackBuild = self:GetFallbackBuildForClass(classToken)
	if level and level < 10 then
		return classRules[fallbackBuild] and fallbackBuild or 1, true
	end
	if buildNum and classRules[buildNum] then
		return buildNum, false
	end
	return classRules[fallbackBuild] and fallbackBuild or 1, false
end

function ItemScore:DetectActiveBuild(classToken, level)
	local fallbackBuild = self:GetFallbackBuildForClass(classToken)
	local classRules = classToken and self.rules and self.rules[classToken]
	local talentState = self:GetTalentState(classToken, level)
	if not classToken or talentState.preTalentState then
		return fallbackBuild, true
	end
	local activeTalentGroup = talentState.activeTalentGroup
	local pointsTree = talentState.totalPoints > 0 and talentState.bestTree or nil
	local pointsFallback = talentState.totalPoints > 0 and false or nil

	-- Druid Feral specialization detection
	if classToken == "DRUID" and pointsTree == 2 then
		-- Check points in Thick Hide talent (position 11 in Feral tree)
		local _, _, pointsThickHide = GetTalentInfo(2, 11, false, false, activeTalentGroup)
		
		-- 2+ points in this talent = Tank build
		if pointsThickHide and pointsThickHide >= 2 then
			return 3, false
		else
			return 2, false
		end
	end

	if pointsTree and classRules and classRules[pointsTree] then
		return pointsTree, pointsFallback
	end

	if GetPrimaryTalentTree then
		local tree
		if activeTalentGroup then
			local ok, result = pcall(GetPrimaryTalentTree, false, false, activeTalentGroup)
			if ok and tonumber(result) and tonumber(result) > 0 then
				tree = tonumber(result)
			end
		end
		if not tree then
			local ok, result = pcall(GetPrimaryTalentTree, false, false)
			if ok and tonumber(result) and tonumber(result) > 0 then
				tree = tonumber(result)
			end
		end
		if tree and classRules and classRules[tree] then
			return tree, false
		end
	end
	return fallbackBuild, true
end

function ItemScore:GetGearRoleBuild(role)
	role = tostring(role or ""):lower()
	if role == "healer" or role == "support" or role == "sup" then role = "heal" end
	local classToken = self.playerclass or select(2, UnitClass("player"))
	local state = self:GetTalentState(classToken, self.playerlevel or UnitLevel("player"))
	local tree = tonumber(state and state.bestTree)

	if classToken == "DEATHKNIGHT" and tree and tree >= 1 and tree <= 3 then
		if role == "tank" then return tree + 3 end
		if role == "dps" then return tree end
		return nil, "Death Knights do not have a healing Gear Advisor profile."
	end
	if classToken == "DRUID" then
		if role == "tank" then return 3 end
		if role == "heal" then return 4 end
		if role == "dps" then return tree == 1 and 1 or 2 end
	end
	if classToken == "PALADIN" then
		if role == "tank" then return 2 end
		if role == "heal" then return 1 end
		if role == "dps" then return 3 end
	end
	if classToken == "WARRIOR" then
		if role == "tank" then return 3 end
		if role == "dps" then return tree == 1 and 1 or 2 end
	end
	if classToken == "PRIEST" then
		if role == "heal" then return (tree == 1 or tree == 2) and tree or 2 end
		if role == "dps" then return 3 end
	end
	if classToken == "SHAMAN" then
		if role == "heal" then return 3 end
		if role == "dps" then return (tree == 1 or tree == 2) and tree or 2 end
	end
	if role == "dps" and (classToken == "HUNTER" or classToken == "ROGUE" or classToken == "MAGE" or classToken == "WARLOCK") then
		return (tree and tree >= 1 and tree <= 3) and tree or self:GetFallbackBuildForClass(classToken)
	end
	return nil, ("No %s Gear Advisor profile is available for %s."):format(role, tostring(self.playerclassName or classToken or "this class"))
end

function ItemScore:SetGearRole(role)
	role = tostring(role or ""):lower()
	if role == "healer" or role == "support" or role == "sup" then role = "heal" end
	local groupKey = self:GetActiveTalentGroupKey()
	if role == "auto" then
		self:ClearActiveBuildOverride(groupKey)
		if self.GearFinder and self.GearFinder.ClearResults then self.GearFinder:ClearResults() end
		self:DelayedRefreshUserData()
		self:NotifyStatWeightsOptionsChanged()
		ZGV:Print(("Gear Advisor: talent group %d returned to automatic build detection."):format(groupKey))
		return true
	end
	if role ~= "tank" and role ~= "dps" and role ~= "heal" then return false end

	local buildNum, reason = self:GetGearRoleBuild(role)
	local classRules = self.rules and self.rules[self.playerclass]
	if not buildNum or not (classRules and classRules[buildNum]) then
		ZGV:Print("Gear Advisor: " .. tostring(reason or "No matching role profile is available for this build."))
		return false
	end

	self:SetActiveBuildOverride(buildNum, groupKey)
	ZGV.db.char.gear_active_build = buildNum
	ZGV.db.char.gear_selected_class = self.playerclassNum
	ZGV.db.char.gear_selected_build = buildNum
	ZGV.db.char.gear_weights_initialized = true
	ZGV.db.char.gear_weights_manual_class = true
	self:RefreshAfterWeightChange(self.playerclass, buildNum)
	self:NotifyStatWeightsOptionsChanged()
	ZGV:Print(("Gear Advisor: talent group %d now uses %s."):format(groupKey, self:GetBuildName(self.playerclass, buildNum, self.playerlevel)))
	return true
end

function ItemScore:GetBuildName(classRef, buildNum, level, usesFallback)
	local classToken, classNum = classRef, nil
	if type(classRef) == "number" then
		classNum = classRef
		classToken = get_class_tag(classNum)
	elseif type(classRef) == "string" then
		classNum = ZGV.ClassToNumber and ZGV.ClassToNumber[classRef]
	end
	local resolvedBuild = buildNum
	local classRules = classToken and self.rules and self.rules[classToken]
	if classToken and (not resolvedBuild or not classRules or not classRules[resolvedBuild]) then
		resolvedBuild = self:GetResolvedBuild(classToken, level, buildNum)
		usesFallback = true
	end
	local buildLabel = (classNum and self.Builds and self.Builds[classNum] and self.Builds[classNum][resolvedBuild])
		or (classToken and ZGV.SpecByNumber and ZGV.SpecByNumber[classToken] and ZGV.SpecByNumber[classToken][resolvedBuild])
	local fallbackBuild = classToken and self:GetFallbackBuildForClass(classToken) or 1
	if not buildLabel and classToken then
		resolvedBuild = self:GetResolvedBuild(classToken, level, fallbackBuild)
		buildLabel = (classNum and self.Builds and self.Builds[classNum] and self.Builds[classNum][resolvedBuild])
			or (classToken and ZGV.SpecByNumber and ZGV.SpecByNumber[classToken] and ZGV.SpecByNumber[classToken][resolvedBuild])
			or ("Spec "..tostring(resolvedBuild or 1))
		usesFallback = true
	end
	buildLabel = buildLabel or ("Spec "..tostring(resolvedBuild or 1))
	if usesFallback then
		return buildLabel .. " (Leveling baseline)"
	end
	return buildLabel
end

local BIS_CATEGORY_ORDER = {
	pre_raid = 0,
	t7 = 1,
	t8 = 2,
	t9 = 3,
	t10 = 4,
	rs = 5,
	final = 6,
}

local BIS_CATEGORY_LABEL = {
	pre_raid = "Pre-Raid BIS",
	t7 = "T7 BIS",
	t8 = "T8 BIS",
	t9 = "T9 BIS",
	t10 = "T10 BIS",
	rs = "RS BIS",
	final = "Final BIS",
}

local function bis_slot_list_contains(list, itemID)
	if not list or not itemID then return false end
	for _, candidateID in ipairs(list) do
		if tonumber(candidateID) == tonumber(itemID) then
			return true
		end
	end
	return false
end

function ItemScore:GetCurrentBISPhaseRank()
	local phases = ZGV and ZGV.Dungeons and ZGV.Dungeons.Phases
	local highest = nil
	if phases then
		for i = 1, 5 do
			if phases["wotlk"..i] then
				highest = i
			end
		end
	end
	return highest or 0
end

function ItemScore:GetBISAnnotation(itemID, slot, buildNum, classToken)
	itemID = tonumber(itemID)
	slot = tonumber(slot)
	classToken = classToken or self.playerclass
	buildNum = self:GetResolvedBuild(classToken, self.playerlevel, buildNum or (ZGV and ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build))
	if not itemID or not slot or not classToken then return nil end

	local classData = self.BISData and self.BISData[classToken]
	local buildData = classData and classData[buildNum]
	if not buildData then return nil end

	local currentRank = self:GetCurrentBISPhaseRank()
	local bestCurrentCategory, bestCurrentRank = nil, -1
	local nextFutureCategory, nextFutureRank = nil, math.huge

	for category, slotMap in pairs(buildData) do
		local rank = BIS_CATEGORY_ORDER[category]
		local candidates = slotMap and slotMap[slot]
		if rank and candidates and bis_slot_list_contains(candidates, itemID) then
			if rank <= currentRank and rank > bestCurrentRank then
				bestCurrentCategory, bestCurrentRank = category, rank
			elseif rank > currentRank and rank < nextFutureRank then
				nextFutureCategory, nextFutureRank = category, rank
			end
		end
	end

	if bestCurrentCategory then
		return {
			category = bestCurrentCategory,
			label = BIS_CATEGORY_LABEL[bestCurrentCategory] or "BIS",
			filled = true,
			future = false,
			final = bestCurrentCategory == "final",
			build = buildNum,
			class = classToken,
		}
	end

	if nextFutureCategory then
		return {
			category = nextFutureCategory,
			label = BIS_CATEGORY_LABEL[nextFutureCategory] or "BIS",
			filled = false,
			future = true,
			final = nextFutureCategory == "final",
			build = buildNum,
			class = classToken,
		}
	end

	return nil
end

function ItemScore:IsEquippedBIS(slot, buildNum, classToken)
	slot = tonumber(slot)
	classToken = classToken or self.playerclass
	buildNum = self:GetResolvedBuild(classToken, self.playerlevel, buildNum or (ZGV and ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build))
	if not slot or not classToken then return false, nil end
	if self:GetCurrentBISPhaseRank() < BIS_CATEGORY_ORDER.rs then
		return false, nil
	end

	local classData = self.BISData and self.BISData[classToken]
	local buildData = classData and classData[buildNum]
	local finalSlot = buildData and buildData.final and buildData.final[slot]
	if not finalSlot then
		return false, nil
	end

	local equippedLink = GetInventoryItemLink("player", slot)
	local equippedID = equippedLink and ZGV.ItemLink and ZGV.ItemLink.GetItemID(equippedLink)
	if equippedID and bis_slot_list_contains(finalSlot, equippedID) then
		return true, {
			category = "final",
			label = "Final BIS Equipped",
			filled = true,
			future = false,
			final = true,
			build = buildNum,
			class = classToken,
		}
	end

	return false, nil
end

function ItemScore:GetRuleSourceInfo(classRef, buildNum)
	local classToken = get_class_tag(classRef)
	if not classToken then return nil end
	local classSources = self.RuleSources and self.RuleSources[classToken]
	return classSources and classSources[buildNum] or nil
end

function ItemScore:GetRuleSourceLabel(classRef, buildNum)
	local meta = self:GetRuleSourceInfo(classRef, buildNum)
	if not meta then return "Unverified local baseline" end
	if meta.mode == "normalized_priority" then
		return ("%s (normalized stat-priority baseline)"):format(meta.label or "Curated baseline")
	end
	return meta.label or "Curated baseline"
end

local function copy_simple_table(source)
	local out = {}
	if not source then return out end
	for k, v in pairs(source) do out[k] = v end
	return out
end

function ItemScore:BuildRuleContext(classToken, buildNum, level)
	local resolvedBuild, usesFallback = self:GetResolvedBuild(classToken, level, buildNum)
	local rules = self.rules and self.rules[classToken] and self.rules[classToken][resolvedBuild]
	if not rules then return nil end

	local context = {
		classToken = classToken,
		buildNum = resolvedBuild,
		usesFallback = usesFallback,
		playerlevel = level,
		playerclassName = self.playerclassName,
		playerclass = self.playerclass,
		playerraceName = self.playerraceName,
		playerraceToken = self.playerraceToken,
		playerspecName = self:GetBuildName(classToken, resolvedBuild, level, usesFallback),
		ActiveRuleSet = {
			itemtypes = copy_simple_table(rules.itemtypes),
			stats = copy_simple_table(rules.stats),
			caps = copy_simple_table(rules.caps),
		},
	}

	local saved_vars_prefix = "gear_"..classToken.."_"..tostring(resolvedBuild).."_"
	for _, stat in pairs(self.Keywords or {}) do
		if ZGV.db.profile[saved_vars_prefix..(stat.blizz)] then
			context.ActiveRuleSet.stats[stat.blizz] = tonumber(ZGV.db.profile[saved_vars_prefix..(stat.blizz)] or 0)
		end
	end

	local lowestPositive
	for _, weight in pairs(context.ActiveRuleSet.stats) do
		if weight and weight > 0 then
			if not lowestPositive or weight < lowestPositive then
				lowestPositive = weight
			end
		end
	end
	context.whiteScoreWeight = (lowestPositive or 1) * 0.1
	return context
end

local WOTLK_SOCKET_GEM_CANDIDATES = {
	RED = {
		{SPELL_POWER = 23},
		{STRENGTH = 20},
		{AGILITY = 20},
		{ARMOR_PENETRATION = 20},
		{EXPERTISE = 20},
		{PARRY = 20},
		{ATTACK_POWER = 40},
		{RANGED_ATTACK_POWER = 40},
		{SPELL_POWER = 12, HIT = 10},
		{SPELL_POWER = 12, CRIT = 10},
		{SPELL_POWER = 12, HASTE = 10},
		{SPELL_POWER = 12, INTELLECT = 10},
		{SPELL_POWER = 12, SPIRIT = 10},
		{SPELL_POWER = 12, MANA_REGENERATION = 5},
		{STRENGTH = 10, HIT = 10},
		{STRENGTH = 10, CRIT = 10},
		{AGILITY = 10, HIT = 10},
		{AGILITY = 10, CRIT = 10},
	},
	YELLOW = {
		{INTELLECT = 20},
		{HIT = 20},
		{CRIT = 20},
		{HASTE = 20},
		{DEFENSE_SKILL = 20},
		{DODGE = 20},
		{SPELL_POWER = 12, HIT = 10},
		{SPELL_POWER = 12, CRIT = 10},
		{SPELL_POWER = 12, HASTE = 10},
		{SPELL_POWER = 12, INTELLECT = 10},
		{HIT = 10, STAMINA = 15},
		{CRIT = 10, STAMINA = 15},
		{HASTE = 10, STAMINA = 15},
		{CRIT = 10, SPIRIT = 10},
		{HASTE = 10, SPIRIT = 10},
		{DEFENSE_SKILL = 10, STAMINA = 15},
		{DODGE = 10, STAMINA = 15},
	},
	BLUE = {
		{STAMINA = 30},
		{SPIRIT = 20},
		{MANA_REGENERATION = 10},
		{SPELL_PENETRATION = 25},
		{SPELL_POWER = 12, SPIRIT = 10},
		{SPELL_POWER = 12, MANA_REGENERATION = 5},
		{HIT = 10, STAMINA = 15},
		{CRIT = 10, STAMINA = 15},
		{HASTE = 10, STAMINA = 15},
		{CRIT = 10, SPIRIT = 10},
		{HASTE = 10, SPIRIT = 10},
		{DEFENSE_SKILL = 10, STAMINA = 15},
		{DODGE = 10, STAMINA = 15},
		{PARRY = 10, STAMINA = 15},
	},
	META = {},
}
WOTLK_SOCKET_GEM_CANDIDATES.PRISMATIC = {}
for _, socketColor in ipairs({"RED", "YELLOW", "BLUE"}) do
	for _, candidate in ipairs(WOTLK_SOCKET_GEM_CANDIDATES[socketColor]) do
		WOTLK_SOCKET_GEM_CANDIDATES.PRISMATIC[#WOTLK_SOCKET_GEM_CANDIDATES.PRISMATIC + 1] = candidate
	end
end

local function socket_scoring_enabled()
	return not (ZGV.db and ZGV.db.profile and ZGV.db.profile.itemscore_score_sockets == false)
end

local function get_effective_stat_weight(statname, statweights, caps, playerlevel)
	local statweight = statweights[statname] or 0
	if caps and caps[statname] then
		local current_rating = ItemScore:GetEquippedStatValue(statname)
		if (current_rating > caps[statname]) or playerlevel < GetMaxPlayerLevel() then
			statweight = statweight / 2
		end
	end
	return statweight
end

local function score_socket_candidate(candidate, statweights, caps, playerlevel)
	local score = 0
	for statname, amount in pairs(candidate) do
		score = score + amount * get_effective_stat_weight(statname, statweights, caps, playerlevel)
	end
	return score
end

local function score_socket_color(color, statweights, caps, playerlevel)
	local candidates = WOTLK_SOCKET_GEM_CANDIDATES[color]
	local bestScore = 0
	if not candidates then return bestScore end
	for _, candidate in ipairs(candidates) do
		local score = score_socket_candidate(candidate, statweights, caps, playerlevel)
		if score > bestScore then
			bestScore = score
		end
	end
	return bestScore
end

local function get_item_socket_score(item, statweights, caps, playerlevel)
	if not socket_scoring_enabled() or not item or not item.stats then return 0 end
	local score = 0
	local details = {}
	for statname, statvalue in pairs(item.stats) do
		local color = SOCKET_STAT_TO_COLOR[ItemScore:NormaliseStatName(statname)]
		if color then
			local count = tonumber(statvalue) or 0
			local socketScore = score_socket_color(color, statweights, caps, playerlevel)
			if count > 0 and socketScore > 0 then
				score = score + socketScore * count
				details[#details + 1] = ("%s %.1f"):format(SOCKET_COLOR_LABELS[color] or color:lower(), socketScore * count)
			end
		end
	end
	return score, table.concat(details, ", ")
end

-- Armor is a useful fallback for early, statless gear, but it should not
-- outweigh class-relevant stats once an item has any other attributes.
-- Rulesets that explicitly weight ARMOR (tank profiles) are unaffected.
local function item_has_non_armor_stats(item)
	if not item or not item.stats then return false end
	for statname, value in pairs(item.stats) do
		if (tonumber(value) or 0) ~= 0 and ItemScore:NormaliseStatName(statname) ~= "ARMOR" then
			return true
		end
	end
	return false
end

function ItemScore:GetItemScoreForContext(itemlink, context)
	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then return -1, false, "no info yet" end
	if not context or not context.ActiveRuleSet then return -1, false, "no context" end

	local stats = item.stats
	local score = 0
	local statweights = context.ActiveRuleSet.stats
	local caps = context.ActiveRuleSet.caps

	for statname, statvalue in pairs(stats) do
		statname = ItemScore:NormaliseStatName(statname)
		if not SOCKET_STAT_KEYS[statname] then
			local statweight = get_effective_stat_weight(statname, statweights, caps, context.playerlevel)
			score = score + statvalue * statweight
		end
	end
	score = score + get_item_socket_score(item, statweights, caps, context.playerlevel)

	if not statweights.ARMOR and not item_has_non_armor_stats(item) then
		score = score + (item.stats.ARMOR or 0) * context.whiteScoreWeight
	end
	if not statweights.DAMAGE_PER_SECOND then
		score = score + (item.stats.DAMAGE_PER_SECOND or 0) * context.whiteScoreWeight
	end

	if item.class == LE_ITEM_CLASS_ARMOR and item.type ~= "INVTYPE_CLOAK" then
		local types = context.ActiveRuleSet.itemtypes
		local subclass = get_item_family(item)
		local limit = types[subclass] or 0
		if limit < 0 then
			if context.playerlevel >= (-limit + 10) then
				score = score * 0.5
			elseif context.playerlevel >= -limit then
				score = score * 0.9
			end
		end
	end

	return score, true, "scored ok"
end

function ItemScore:GetContextScoreWeightTotal(context)
	return get_positive_weight_total(context and context.ActiveRuleSet and context.ActiveRuleSet.stats)
end

function ItemScore:GetItemValidityForContext(itemlink, future, context)
	if not context then return {valid = false, final = false, reason = "No context", code = "missing_context"} end
	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then return {valid = false, final = false, reason = "No info", code = "missing_info"} end

	local slot_1, slot_2, twohander, equippable, slotReason = get_item_slot_info(item)
	if not equippable then
		return {valid = false, final = true, reason = slotReason or "not equipment", code = "slot", item = item}
	end

	if item.ignore_for_gear then
		return {valid = false, final = true, reason = "test item", code = "test_item", item = item}
	end

	if item.unusable_by_tooltip then
		return {valid = false, final = true, reason = "unsupported item type", code = "tooltip_subtype", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
	end

	if item.playerclass then
		local validclass = false
		for _, v in pairs(ZGV.ExplodeString(", ", item.playerclass)) do
			if v == context.playerclassName then
				validclass = true
				break
			end
		end
		if not validclass then
			return {valid = false, final = true, reason = "wrong class", code = "class", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
		end
	end

	if not db_mask_allows_race(item.allowableRaceMask, context.playerraceName, context.playerraceToken) then
		return {valid = false, final = true, reason = "wrong race", code = "race", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
	end

	if item.playerspec and item.playerspec ~= context.playerspecName then
		return {valid = false, final = true, reason = "wrong spec", code = "spec", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
	end

	if not future and item.minlevel and item.minlevel > context.playerlevel then
		return {valid = false, final = true, reason = ("required level %d to equip"):format(item.minlevel), code = "level", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
	end

	if item.equiploc == "INVTYPE_SHIELD" and context.ActiveRuleSet and context.ActiveRuleSet.itemtypes and context.ActiveRuleSet.itemtypes.SHIELD == nil then
		return {
			valid = false,
			final = true,
			reason = "unsupported item type",
			code = "shield",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	local fallbackFamily = get_item_family(item)
	local standardFamilyAllowed = class_can_use_standard_family(context.classToken or context.playerclass, fallbackFamily, context.playerlevel)
	if standardFamilyAllowed == false then
		return {
			valid = false,
			final = true,
			reason = "unsupported item type",
			code = "class_family",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if fallbackFamily and context.ActiveRuleSet and context.ActiveRuleSet.itemtypes then
		local useable_since_level = context.ActiveRuleSet.itemtypes[fallbackFamily] or (item.type == "INVTYPE_CLOAK" and 1)
		if useable_since_level == nil and fallbackFamily ~= "JEWELERY" and fallbackFamily ~= "COSMETIC" then
			return {
				valid = false,
				final = true,
				reason = "unsupported item type",
				code = "family",
				item = item,
				slot = slot_1,
				slot_2 = slot_2,
				twohander = twohander,
			}
		end
		if useable_since_level and not future and useable_since_level > 0 and context.playerlevel < useable_since_level then
			return {valid = false, final = true, reason = ("required level %d to use"):format(useable_since_level), code = "fallback_level", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander}
		end
	end

	return {valid = true, final = true, reason = "ok", code = "ok", item = item, slot = slot_1, slot_2 = slot_2, twohander = twohander, family = fallbackFamily}
end

local function context_get_normalized_stat_value(item, statname)
	if not item or not item.stats then return 0 end
	local total = 0
	for key, value in pairs(item.stats) do
		if ItemScore:NormaliseStatName(key) == statname then
			total = total + (tonumber(value) or 0)
		end
	end
	return total
end

function ItemScore:GetUpgradeComparisonForContext(slot, newitem, context, secondnewitem)
	local candidateScore = newitem and (select(1, self:GetItemScoreForContext(newitem.itemlink, context)) or 0) or 0
	local baselineScore = 0
	local currentLink = GetInventoryItemLink("player", slot)
	local current = currentLink and ItemScore:GetResolvedItemDetails(currentLink)
	local hasBaselineItem = currentLink and true or false
	if currentLink then
		baselineScore = select(1, self:GetItemScoreForContext(currentLink, context)) or 0
	end

	if secondnewitem and (slot == INVSLOT_MAINHAND or slot == INVSLOT_OFFHAND) then
		candidateScore = candidateScore + (select(1, self:GetItemScoreForContext(secondnewitem.itemlink, context)) or 0)
		local mh = GetInventoryItemLink("player", INVSLOT_MAINHAND)
		local oh = GetInventoryItemLink("player", INVSLOT_OFFHAND)
		hasBaselineItem = (mh and true) or (oh and true) or false
		baselineScore = (mh and (select(1, self:GetItemScoreForContext(mh, context)) or 0) or 0) + (oh and (select(1, self:GetItemScoreForContext(oh, context)) or 0) or 0)
	end

	local armorFallback = false
	if newitem and newitem.class == LE_ITEM_CLASS_ARMOR and newitem.type ~= "INVTYPE_CLOAK" then
		local candidateHasStats = item_has_non_armor_stats(newitem)
		local currentIsArmor = current and current.class == LE_ITEM_CLASS_ARMOR
		local currentHasStats = current and item_has_non_armor_stats(current)
		if not candidateHasStats and (not current or (currentIsArmor and not currentHasStats)) then
			candidateScore = context_get_normalized_stat_value(newitem, "ARMOR")
			baselineScore = current and context_get_normalized_stat_value(current, "ARMOR") or 0
			armorFallback = true
		end
	end

	local deltaScore = candidateScore - baselineScore
	local isNewItem = not hasBaselineItem
	local percent = (not isNewItem and baselineScore and baselineScore > 0) and ((candidateScore * 100 / baselineScore) - 100) or nil
	local state = "sidegrade"
	if isNewItem then
		state = "new"
	elseif deltaScore > 0 then
		state = armorFallback and "armor_upgrade" or "upgrade"
	elseif deltaScore < 0 then
		state = "downgrade"
	end
	return {
		candidateScore = candidateScore,
		baselineScore = baselineScore,
		deltaScore = deltaScore,
		percent = percent,
		isNewItem = isNewItem,
		state = state,
		armorFallback = armorFallback,
		context = context,
	}
end

function ItemScore:EnsureSelectedWeightTarget(forceReset)
	local classToken = self.playerclass or (select(2, UnitClass("player")))
	local classNum = self.playerclassNum or (classToken and ZGV.ClassToNumber and ZGV.ClassToNumber[classToken]) or 1
	local level = tonumber(self.playerlevel) or UnitLevel("player")
	local activeBuild = tonumber(ZGV.db.char.gear_active_build) or self:GetResolvedBuild(classToken, level, nil)
	local selectedClass = tonumber(ZGV.db.char.gear_selected_class)
	local selectedBuild = tonumber(ZGV.db.char.gear_selected_build)
	local selectedClassToken = get_class_tag(selectedClass)
	local needsInit = forceReset or not ZGV.db.char.gear_weights_initialized or not selectedClass or not selectedClassToken or not ZGV.db.char.gear_weights_manual_class

	if needsInit then
		ZGV.db.char.gear_selected_class = classNum
		ZGV.db.char.gear_selected_build = activeBuild
		ZGV.db.char.gear_weights_initialized = true
	elseif selectedClassToken then
		-- Only validate that the build index actually exists in the rules table.
		-- CRITICAL: Do NOT use GetResolvedBuild here. It forces fallback builds
		-- based on player level (<10 always falls back), which overrides the
		-- user's manual selection in the Options UI. We want the UI to show
		-- exactly what the user picked, regardless of character level.
	local classRules = self.rules and self.rules[selectedClassToken]
	if classRules then
			if not selectedBuild or not classRules[selectedBuild] then
				local fallbackBuild = self:GetFallbackBuildForClass(selectedClassToken)
				ZGV.db.char.gear_selected_build = classRules[fallbackBuild] and fallbackBuild or 1
			end
		end
	elseif selectedClassToken then
		ZGV.db.char.gear_selected_class = self:GetCustomClassID()
		ZGV.db.char.gear_selected_build = 1
	end

	return ZGV.db.char.gear_selected_class, ZGV.db.char.gear_selected_build
end

function ItemScore:UpdateConfig()
	self:EnsureSelectedWeightTarget()
	self:DelayedRefreshUserData()
end

function ItemScore:IsLiveWeightTarget(classToken, buildNum)
	classToken = get_class_tag(classToken) or classToken
	buildNum = tonumber(buildNum)
	if not classToken or not buildNum then return false end

	local playerClass = self.playerclass or (select(2, UnitClass("player")))
	local activeBuild = tonumber(ZGV.db.char.gear_active_build)
	local activeBuildOverride = self:GetActiveBuildOverrideBuild(playerClass, self:GetActiveTalentGroupKey())
	if activeBuildOverride then
		activeBuild = activeBuildOverride
	end
	return classToken == playerClass and activeBuild == buildNum
end

function ItemScore:RefreshAfterWeightChange(classToken, buildNum)
	if classToken and buildNum and not self:IsLiveWeightTarget(classToken, buildNum) then
		return
	end
	if self.GearFinder and self.GearFinder.ClearResults then
		self.GearFinder:ClearResults()
	end
	self:DelayedRefreshUserData()
end

function ItemScore:NotifyStatWeightsOptionsChanged()
	local ACR = LibStub and LibStub("AceConfigRegistry-3.0", true)
	if ACR and ACR.NotifyChange then
		ACR:NotifyChange("ZygorGuidesViewer-ItemScore")
	end
	if self.StatWeightsOptionsRefreshTimer and ZGV.CancelTimer then
		ZGV:CancelTimer(self.StatWeightsOptionsRefreshTimer)
		self.StatWeightsOptionsRefreshTimer = nil
	end
	if ZGV and ZGV.ScheduleTimer then
		self.StatWeightsOptionsRefreshTimer = ZGV:ScheduleTimer(function()
			self.StatWeightsOptionsRefreshTimer = nil
			if tonumber(ZGV.db.char.gear_selected_class) == self.playerclassNum then
				ZGV.db.char.gear_selected_build = tonumber(ZGV.db.char.gear_active_build) or ZGV.db.char.gear_selected_build
			end
			local ACR2 = LibStub and LibStub("AceConfigRegistry-3.0", true)
			if ACR2 and ACR2.NotifyChange then
				ACR2:NotifyChange("ZygorGuidesViewer-ItemScore")
			end
			local gm = ZGV and ZGV.GuideManagerStandaloneFrame
			if gm and gm:IsShown() and gm.currentSection == "options" and gm.currentOptionsApp == "ZygorGuidesViewer-ItemScore" then
				gm.currentOptionsApp = "ZygorGuidesViewer-ItemScore"
				if ZGV.db and ZGV.db.profile then
					ZGV.db.profile.guidebrowseroptionsapp = "ZygorGuidesViewer-ItemScore"
				end
				if gm.SetSection then
					gm:SetSection("options")
				elseif gm.RenderOptionsApp then
					gm:RenderOptionsApp("ZygorGuidesViewer-ItemScore")
				end
			end
		end, 0.7)
	end
end

function ItemScore:CancelPendingBagScan()
	if self.BagScanTimer and ZGV.CancelTimer then
		ZGV:CancelTimer(self.BagScanTimer)
		self.BagScanTimer = nil
	end
end

function ItemScore:CancelPendingEquipRescore()
	if self.EquipTimer and ZGV.CancelTimer then
		ZGV:CancelTimer(self.EquipTimer)
		self.EquipTimer = nil
	end
end

function ItemScore:ScheduleBagAcquisitionScan(delay)
	if self.EquipTimer then return end
	if self.BagScanTimer then return end
	self.BagScanTimer = ZGV:ScheduleTimer(function()
		self.BagScanTimer = nil
		self.Upgrades:ScanRecentBagAcquisitions()
	end, delay or 0.25)
end

function ItemScore:ScheduleEquipRescore(delay)
	self:CancelPendingBagScan()
	if self.EquipTimer then return end
	self.EquipTimer = ZGV:ScheduleTimer(function()
		self.EquipTimer = nil
		self.Upgrades:ScoreEquippedItems()
	end, delay or 0.5)
end

function ItemScore:OnEvent(event,arg1,arg2,...)
	if not self.Initialised then return end
	if event == "PLAYER_LEVEL_UP" or event == "CHARACTER_POINTS_CHANGED" or event == "PLAYER_TALENT_UPDATE" or event == "ACTIVE_TALENT_GROUP_CHANGED" then
		-- using timer as delay, since in the same frame PLAYER_LEVEL_UP player is still on previous level
		-- and to run it only once, as both PLU and PSC can fire more than once
		ItemScore:DelayedRefreshUserData()
		if event == "ACTIVE_TALENT_GROUP_CHANGED" then
			ItemScore:NotifyStatWeightsOptionsChanged()
		end
	elseif event == "SKILL_LINES_CHANGED" then -- on classic, skills changed, so user may have learned new weapon skill
		ItemScore:GetEquipmentSkills()
	elseif event == "LOADING_SCREEN_DISABLED" then -- user logged in, see what upgrades we have
		if ItemScore.GearFinder and ItemScore.GearFinder.MarkWorldLoaded then
			ItemScore.GearFinder:MarkWorldLoaded()
		end
		ItemScore:DelayedRefreshUserData()
		ItemScore.LoginRefreshTimer = ItemScore.LoginRefreshTimer or ZGV:ScheduleTimer(function()
			ItemScore.LoginRefreshTimer = nil
			ItemScore:DelayedRefreshUserData()
		end,1.5)
		ItemScore:ScheduleEquipRescore(0.5)
	elseif event == "BAG_UPDATE" or event == "MAIL_INBOX_UPDATE" or event == "MAIL_CLOSED" then -- 3.3.5a-safe bag/mail hooks; debounce to one scan
		ItemScore:ScheduleBagAcquisitionScan(0.25)
	elseif event == "BANKFRAME_OPENED" then
		ItemScore.Upgrades:SetBankOpen(true)
		ItemScore:ScheduleEquipRescore(0.1)
	elseif event == "BANKFRAME_CLOSED" then
		ItemScore.Upgrades:SetBankOpen(false)
		ItemScore:ScheduleEquipRescore(0.1)
	elseif event == "PLAYERBANKSLOTS_CHANGED" then
		if ItemScore.Upgrades:IsBankOpen() then
			ItemScore:ScheduleEquipRescore(0.1)
		end
	elseif event == "PLAYER_EQUIPMENT_CHANGED"
		or event=="ZGV_STEP_FINALISED"  or event=="LIBROVER_TRAVEL_REPORTED" or event=="GET_ITEM_INFO_RECEIVED" -- step finished loading, or travel route updated, see if we have useless quest equip or portkey
		then 
		-- on timer to run it only once, since equip/unequip fires both events, and we would get spammed
		ItemScore:ScheduleEquipRescore(0.5)
	elseif event == "PLAYER_REGEN_DISABLED" then -- combat started, kill all upgrade popups
		if ItemScore.Upgrades.EquipPopup then ItemScore.Upgrades.EquipPopup:Hide() end
		if ZGV.NotificationCenter then ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup") end
	elseif event == "PLAYER_REGEN_ENABLED" then -- combat ended, check if anything is waiting for equip
		ItemScore.Upgrades:ProcessPossibleUpgrades()
	elseif event == "START_LOOT_ROLL" then
		ItemScore:QueueLootRollMarker(arg1)
	elseif event == "CANCEL_LOOT_ROLL" then
		ItemScore:HideLootRollMarker(arg1)
	elseif event == "LOOT_OPENED" then
		ItemScore:HandleMasterLootOpened()
	elseif event == "LOOT_CLOSED" then
		ItemScore:ResetMasterLootSession()
	end

	if event == "PLAYER_EQUIPMENT_CHANGED" then
		ItemScore.GearFinder:ClearResults()
	end
	if event == "GET_ITEM_INFO_RECEIVED" then
		for rollID in pairs(ItemScore.PendingLootRolls) do
			ItemScore:RefreshLootRollMarker(rollID)
		end
		if ItemScore.PendingMasterLootNotice and GetLootMethod and GetLootMethod() == "master" then
			ItemScore.PendingMasterLootNotice = false
			ItemScore:HandleMasterLootOpened()
		end
		if ItemScore.GearFinder and ItemScore.GearFinder.HadUnresolvedItems and ItemScore.GearFinder.MainFrame and ItemScore.GearFinder.MainFrame:IsVisible() then
			ItemScore.GearFinder:ScheduleItemInfoRefresh()
		end
	end
end

function ItemScore:ResetMasterLootSession()
	wipe(self.MasterLootSession)
end

function ItemScore:BuildMasterLootSourceKey(slot)
	local source = nil
	if GetLootSourceInfo then
		local ok, s1, s2 = pcall(GetLootSourceInfo, slot)
		if ok then
			if s1 and s1 ~= "" then
				source = tostring(s1)
				if s2 and s2 ~= "" then
					source = source .. ":" .. tostring(s2)
				end
			end
		end
	end
	return source or ("slot:%s"):format(tostring(slot))
end

function ItemScore:BuildMasterLootNoticeKey(slot, itemlink)
	local stripped = strip_link(itemlink) or itemlink or "nil"
	return ("%s|%s"):format(self:BuildMasterLootSourceKey(slot), stripped)
end

function ItemScore:HasMasterLootAnnouncement(slot, itemlink)
	local now = GetTime and GetTime() or 0
	local cooldown = self.MasterLootNoticeCooldown or 10
	local key = self:BuildMasterLootNoticeKey(slot, itemlink)

	for existingKey, stamp in pairs(self.MasterLootRecent) do
		if not stamp or (now - stamp) > cooldown then
			self.MasterLootRecent[existingKey] = nil
		end
	end

	if self.MasterLootSession[key] then return false end
	local lastSeen = self.MasterLootRecent[key]
	if lastSeen and (now - lastSeen) < cooldown then return false end
	return key
end

function ItemScore:MarkMasterLootAnnouncement(key)
	if not key then return end
	self.MasterLootSession[key] = true
	self.MasterLootRecent[key] = GetTime and GetTime() or 0
end

function ItemScore:GetMasterLootBaselineLink(validity, comparison)
	local upgrades = self.Upgrades
	if not upgrades or not validity then return nil end

	local slot = validity.slot
	local slot_2 = validity.slot_2

	if comparison and comparison.weaponSlot then
		slot = comparison.weaponSlot
	end

	if slot then
		local current = upgrades:GetEquippedItemData(slot)
		if current and current.itemlink then return current.itemlink end
	end
	if slot_2 then
		local current = upgrades:GetEquippedItemData(slot_2)
		if current and current.itemlink then return current.itemlink end
	end
	return nil
end

function ItemScore:FormatMasterLootNotice(itemlink, validity, comparison)
	if not (itemlink and validity and comparison) then return nil end

	local roundedDelta = round_score(comparison.deltaScore or 0)
	if roundedDelta <= 0 then return nil end

	local parts = {
		branded_chat_prefix("Gear Advisor"),
		itemlink,
		("|cff44ff44%s|r"):format(roundedDelta == 0 and "0.0" or string.format("%+.1f", roundedDelta)),
	}

	local displayPercent = clamp_display_percent(comparison.percent)
	if displayPercent and roundedDelta ~= 0 and not comparison.armorFallback and math.abs(displayPercent) >= 0.05 then
		parts[#parts + 1] = ("|cff44ff44(" .. (L["gearfinder_upgrade_percent_short"] or "%+.1f%%") .. ")|r"):format(displayPercent)
	end
	if comparison.armorFallback and roundedDelta > 0 then
		parts[#parts + 1] = "|cff88ccff(Armor)|r"
	end

	if ZGV.db and ZGV.db.profile and ZGV.db.profile.masterloot_compare then
		local baselineLink = self:GetMasterLootBaselineLink(validity, comparison)
		if baselineLink then
			parts[#parts + 1] = "|cffffaa00vs|r"
			parts[#parts + 1] = baselineLink
		end
	end

	return table.concat(parts, " ")
end

function ItemScore:GetMasterLootComparison(itemlink, item, validity)
	if not (itemlink and item and validity and validity.valid and self.Upgrades) then return nil end
	local stripped = strip_link(itemlink) or itemlink

	if item.class == LE_ITEM_CLASS_WEAPON then
		self.Upgrades:ResetWeaponQueue("onlytemp")
		if self.Upgrades:QueueWeapon(stripped) then
			local mh, oh, th = self.Upgrades:ProcessWeaponQueue()
			if th and th.itemlink == stripped then
				local comparison = self.Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, th)
				if comparison then comparison.weaponSlot = INVSLOT_MAINHAND end
				return comparison
			elseif mh and mh.itemlink == stripped then
				local comparison = self.Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, mh, oh)
				if comparison then comparison.weaponSlot = INVSLOT_MAINHAND end
				return comparison
			elseif oh and oh.itemlink == stripped then
				local comparison = self.Upgrades:GetUpgradeComparison(INVSLOT_OFFHAND, oh, mh)
				if comparison then comparison.weaponSlot = INVSLOT_OFFHAND end
				return comparison
			end
		end
	end

	return self:GetLootRollComparison(itemlink, item, validity)
end

function ItemScore:HandleMasterLootOpened()
	if not (ZGV and ZGV.db and ZGV.db.profile and ZGV.db.profile.autogear and ZGV.db.profile.masterloot_notices) then return end
	if not GetLootMethod or not GetNumLootItems or not GetLootSlotLink then return end

	local method = GetLootMethod()
	if method ~= "master" then return end

	for slot = 1, (GetNumLootItems() or 0) do
		local itemlink = GetLootSlotLink(slot)
		local noticeKey = itemlink and self:HasMasterLootAnnouncement(slot, itemlink)
		if itemlink and noticeKey then
			local item = self:GetResolvedItemDetails(itemlink) or self:GetItemDetailsQueued(itemlink, true)
			if item then
				if item_needs_live_resolution(item) then
					self.PendingMasterLootNotice = true
				else
					local validity = self:GetItemValidity(itemlink)
					if validity and not validity.final then
						self.PendingMasterLootNotice = true
					elseif validity and validity.valid and validity.code ~= "slot" then
						local comparison = self:GetMasterLootComparison(itemlink, item, validity)
						if comparison and (comparison.deltaScore or 0) > 0 then
							local message = self:FormatMasterLootNotice(itemlink, validity, comparison)
							if message and DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
								self:MarkMasterLootAnnouncement(noticeKey)
								DEFAULT_CHAT_FRAME:AddMessage(message)
							elseif message then
								self:MarkMasterLootAnnouncement(noticeKey)
								print(message)
							end
						end
					end
				end
			else
				self.PendingMasterLootNotice = true
				
				if UnitAffectingCombat("player") then
					-- Do not scan items during combat to prevent frame drops
					-- Automatically retry once combat ends
					ZGV:RegisterEventOnce("PLAYER_REGEN_ENABLED", function()
						if ItemScore.PendingMasterLootNotice then
							ItemScore.PendingMasterLootNotice = false
							ItemScore:HandleMasterLootOpened()
						end
					end)
					return
				end

				-- No combat, schedule scan with safe delay
				if ZGV.ScheduleTimer then
					ZGV:ScheduleTimer(function()
						if GetLootMethod and GetLootMethod() == "master" then
							ItemScore:HandleMasterLootOpened()
						end
					end, 0.5)
				end
			end
		end
	end
end

function ItemScore:GetLootRollFrame(rollID)
	for i = 1, (NUM_GROUP_LOOT_FRAMES or 4) do
		local frame = _G["GroupLootFrame"..i]
		if frame and frame.rollID == rollID then
			return frame
		end
	end
end

function ItemScore:GetLootRollAnchor(frame)
	if not frame then return end
	local name = frame.GetName and frame:GetName()
	return frame.IconFrame
		or frame.Icon
		or (name and _G[name.."IconFrame"])
		or (name and _G[name.."Icon"])
		or frame
end

function ItemScore:GetOrCreateLootRollMarker(frame)
	if not frame then return end
	if frame.ZGVRollMarker then return frame.ZGVRollMarker end

	local anchor = self:GetLootRollAnchor(frame) or frame
	local marker = CreateFrame("Frame", nil, frame)
	marker:SetFrameStrata("TOOLTIP")
	marker:SetFrameLevel((frame:GetFrameLevel() or 1) + 20)
	marker:SetSize(14, 14)
	marker:Hide()

	marker.glow = marker:CreateFontString(nil, "ARTWORK")
	marker.glow:SetFont(FONTBOLD, 16, "THICKOUTLINE")
	marker.glow:SetAllPoints(marker)
	marker.glow:SetJustifyH("CENTER")
	marker.glow:SetJustifyV("MIDDLE")
	marker.glow:SetTextColor(1, 1, 1, 0.22)

	marker.symbol = marker:CreateFontString(nil, "OVERLAY")
	marker.symbol:SetFont(FONTBOLD, 12, "OUTLINE")
	marker.symbol:SetAllPoints(marker)
	marker.symbol:SetJustifyH("CENTER")
	marker.symbol:SetJustifyV("MIDDLE")

	marker:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", -1, -1)
	frame.ZGVRollMarker = marker
	return marker
end

function ItemScore:HideLootRollMarker(rollID)
	self.PendingLootRolls[rollID] = nil
	local frame = self:GetLootRollFrame(rollID)
	if frame and frame.ZGVRollMarker then
		frame.ZGVRollMarker:Hide()
	end
end

function ItemScore:GetLootRollComparison(itemlink, item, validity)
	if not (self.Upgrades and item and validity and validity.valid) then return nil end
	local stripped = strip_link(itemlink) or itemlink

	if item.class == LE_ITEM_CLASS_WEAPON then
		self.Upgrades:ResetWeaponQueue("onlytemp")
		if self.Upgrades:QueueWeapon(stripped) then
			local mh, oh, th = self.Upgrades:ProcessWeaponQueue()
			if th and th.itemlink == stripped then
				return self.Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, th)
			elseif mh and mh.itemlink == stripped then
				return self.Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, mh, oh)
			elseif oh and oh.itemlink == stripped then
				return self.Upgrades:GetUpgradeComparison(INVSLOT_OFFHAND, oh, mh)
			end
		end
	end

	local bestComparison
	local slot_1, slot_2 = validity.slot or item.slot, validity.slot_2 or item.slot_2
	if slot_1 then
		bestComparison = self.Upgrades:GetUpgradeComparison(slot_1, item)
	end
	if slot_2 then
		local secondComparison = self.Upgrades:GetUpgradeComparison(slot_2, item)
		if secondComparison and (not bestComparison or (secondComparison.deltaScore or 0) > (bestComparison.deltaScore or 0)) then
			bestComparison = secondComparison
		end
	end
	return bestComparison
end

function ItemScore:RefreshLootRollMarker(rollID, attempt)
	attempt = attempt or 0
	if not (ZGV.db and ZGV.db.profile and ZGV.db.profile.autogear) then
		return self:HideLootRollMarker(rollID)
	end

	local frame = self:GetLootRollFrame(rollID)
	if not frame then return false end

	local itemlink = GetLootRollItemLink and GetLootRollItemLink(rollID)
	if not itemlink then return false end

	local item = self:GetResolvedItemDetails(itemlink)
	if not item then item = self:GetItemDetailsQueued(itemlink, true) end
	if not item then
		if attempt < 10 and ZGV.ScheduleTimer then
			self.PendingLootRolls[rollID] = true
			ZGV:ScheduleTimer(function() ItemScore:RefreshLootRollMarker(rollID, attempt + 1) end, 0.2)
		end
		return false
	end

	local marker = self:GetOrCreateLootRollMarker(frame)
	if not marker then return false end

	if item_needs_live_resolution(item) then
		marker:Hide()
		if attempt < 15 and ZGV.ScheduleTimer then
			self.PendingLootRolls[rollID] = true
			ZGV:ScheduleTimer(function() ItemScore:RefreshLootRollMarker(rollID, attempt + 1) end, 0.3)
		end
		return false
	end

	local validity = self:GetItemValidity(itemlink)
	if not validity.final then
		marker:Hide()
		if attempt < 10 and ZGV.ScheduleTimer then
			self.PendingLootRolls[rollID] = true
			ZGV:ScheduleTimer(function() ItemScore:RefreshLootRollMarker(rollID, attempt + 1) end, 0.2)
		end
		return false
	end

	if validity.code == "slot" then
		marker:Hide()
		self.PendingLootRolls[rollID] = nil
		return true
	end

	if not validity.valid then
		marker.glow:SetText("x")
		marker.symbol:SetText("x")
		marker.symbol:SetTextColor(1.0, 0.10, 0.10)
		marker:Show()
		self.PendingLootRolls[rollID] = nil
		return true
	end

	local comparison = self:GetLootRollComparison(itemlink, item, validity)
	if not comparison then
		marker:Hide()
		self.PendingLootRolls[rollID] = nil
		return true
	end

	if comparison.isNewItem or (comparison.deltaScore or 0) > 0 or (comparison.armorFallback and (comparison.deltaScore or 0) > 0) then
		marker.glow:SetText("+")
		marker.symbol:SetText("+")
		marker.symbol:SetTextColor(0.20, 1.00, 0.20)
		marker:Show()
	elseif (comparison.deltaScore or 0) < 0 then
		marker.glow:SetText("-")
		marker.symbol:SetText("-")
		marker.symbol:SetTextColor(1.00, 0.25, 0.25)
		marker:Show()
	else
		marker.glow:SetText("")
		marker:Hide()
	end

	self.PendingLootRolls[rollID] = nil
	return true
end

function ItemScore:QueueLootRollMarker(rollID)
	if not rollID then return end
	self.PendingLootRolls[rollID] = true
	self:RefreshLootRollMarker(rollID, 0)
	if ZGV.ScheduleTimer then
		ZGV:ScheduleTimer(function() ItemScore:RefreshLootRollMarker(rollID, 1) end, 0.05)
	end
end

function ItemScore:DelayedRefreshUserData()
	if ItemScore.RefreshInProgress then
		ItemScore.RefreshPending = true
		return
	end
	ItemScore.RefreshTimer = ItemScore.RefreshTimer or ZGV:ScheduleTimer(function() 
		ItemScore:RefreshUserData()
		-- TODO: outleveled heirloom popup
	end,0.5)
end

function ItemScore:RefreshUserData()
	if ItemScore.RefreshInProgress then
		ItemScore.RefreshPending = true
		ItemScore.RefreshTimer = nil
		return
	end

	ItemScore.RefreshTimer = nil
	ItemScore.RefreshInProgress = true
	ItemScore.RefreshPending = false

	local ok, err = pcall(function()
		ItemScore:GetEquipmentSkills()
		ItemScore:SetStatWeights()
		ItemScore.Upgrades:ScoreEquippedItems()
	end)

	ItemScore.RefreshInProgress = false

	if ItemScore.RefreshPending then
		ItemScore.RefreshPending = false
		-- Cancel existing timer if running to prevent stacking calls
		if ItemScore.RefreshTimer then
			ZGV:CancelTimer(ItemScore.RefreshTimer)
		end
		-- Schedule refresh with safe delay to let client finish processing events
		-- 1.0s delay prevents recursion loops and gives server time to send item data
		ItemScore.RefreshTimer = ZGV:ScheduleTimer(function()
			ItemScore:DelayedRefreshUserData()
		end, 1.0)
	end

	if not ok then
		error(err)
	end
end

function ItemScore:QueueActiveBuildRetry()
	if self.ActiveBuildRetryTimer or not ZGV.ScheduleTimer then return end
	self.ActiveBuildRetryTimer = ZGV:ScheduleTimer(function()
		self.ActiveBuildRetryTimer = nil
		self:DelayedRefreshUserData()
	end,1.0)
end

function ItemScore:EnsureActiveRuleSet()
	if self.ActiveRuleSet and self.ActiveRuleSet.stats and self.ActiveRuleSet.itemtypes and self.playerclass then
		return true
	end
	self:SetStatWeights(self.playerclass, nil, self.playerlevel)
	return self.ActiveRuleSet and self.ActiveRuleSet.stats and self.ActiveRuleSet.itemtypes and true or false
end

function ItemScore:SetStatWeights(playerclass,playerspec,playerlevel)
	self.playerclass = playerclass or (select(2,UnitClass("player")))
	self.playerclassName = (select(1,UnitClass("player")))
	self.playerraceName, self.playerraceToken = UnitRace("player")
	local originalClassToken = self.playerclass
	local originalClassName = self.playerclassName
	local usingCustomClassFallback = false
	if not self:IsKnownWeightClass(self.playerclass) then
		usingCustomClassFallback = true
		self.unknownServerClassToken = originalClassToken
		self.unknownServerClassName = originalClassName
		self.playerclass = self:GetCustomClassToken()
		self.playerclassName = "Custom"
	end
	self.playerclassNum = (self.playerclass and ZGV.ClassToNumber and ZGV.ClassToNumber[self.playerclass]) or self:GetCustomClassID()
	local fakeLevel = tonumber(ZGV.db.char.fakelevel or 0) or 0
	self.playerlevel = tonumber(playerlevel) or ((fakeLevel > 0 and fakeLevel) or UnitLevel("player"))
	self.playerfaction = UnitFactionGroup("player")

	-- 3.3.5a: detect spec from talent tree point distribution
	self.playeristank = self.playerclass=="DRUID" or self.playerclass=="PALADIN" or self.playerclass=="WARRIOR" or self.playerclass=="DEATHKNIGHT"
	self.playerishealer = self.playerclass=="DRUID" or self.playerclass=="SHAMAN" or self.playerclass=="PRIEST" or self.playerclass=="PALADIN"
	local previousActiveBuild = tonumber(ZGV.db.char.gear_active_build)
	local activeTalentGroupKey = self:GetActiveTalentGroupKey()
	local talentState = self:GetTalentState(self.playerclass, self.playerlevel)
	local detectedBuild, usingFallbackBuild = self:DetectActiveBuild(self.playerclass, self.playerlevel)
	local activeBuildOverride = self:GetActiveBuildOverrideBuild(self.playerclass, activeTalentGroupKey)
	local preTalentOverrideBuild = self:GetPreTalentOverrideBuild(self.playerclass, self.playerlevel, talentState)
	local fallbackUntrusted = usingFallbackBuild and (tonumber(self.playerlevel) or 0) >= 10 and not talentState.preTalentState and talentState.uncertain
	if not talentState.preTalentState and ZGV.db.char.gear_pre_talent_override_explicit then
		self:ClearPreTalentOverride()
	end
	if activeBuildOverride then
		ZGV.db.char.gear_active_build = activeBuildOverride
		usingFallbackBuild = false
	elseif preTalentOverrideBuild then
		ZGV.db.char.gear_active_build = preTalentOverrideBuild
		usingFallbackBuild = false
	elseif fallbackUntrusted and previousActiveBuild and self.rules[self.playerclass] and self.rules[self.playerclass][previousActiveBuild] then
		ZGV.db.char.gear_active_build = previousActiveBuild
		usingFallbackBuild = false
	else
		ZGV.db.char.gear_active_build = detectedBuild
		ZGV.db.char.gear_active_build = self:GetResolvedBuild(self.playerclass, self.playerlevel, ZGV.db.char.gear_active_build)
	end
	if fallbackUntrusted then
		self:QueueActiveBuildRetry()
	end
	-- CRITICAL: Do not override the user's manual UI selection during background refreshes.
	-- Only sync selected_build to active_build on initial setup before the user has interacted
	-- with the dropdowns. Once gear_weights_initialized is set, preserve the manual choice.
	if not ZGV.db.char.gear_weights_initialized then
		ZGV.db.char.gear_selected_build = ZGV.db.char.gear_active_build
	end
	self:EnsureSelectedWeightTarget()
	self.activeBuildUsesOverride = activeBuildOverride and true or false
	self.activeBuildUsesPreTalentOverride = preTalentOverrideBuild and true or false
	self.activeBuildUsesFallback = usingFallbackBuild
	self.activeBuildUsesCustomFallback = usingCustomClassFallback
	self.playerspecName = self:GetBuildName(self.playerclass, ZGV.db.char.gear_active_build, self.playerlevel, usingFallbackBuild)
	ItemScore.Upgrades.BadUpgrades = ZGV.db.char.badupgrade

	-- create a copy so that the arrays in datatables are left untouched, as we will need them to handle custom weights resets
	self.ActiveRuleSet = {
		itemtypes = {},
		stats = {},
		primary = {},
		caps = {},
	}

	local active_set = ZGV.db.char.gear_active_build

	-- Copy values from our rules
	if ItemScore.rules[self.playerclass] and ItemScore.rules[self.playerclass][active_set] then
		for i,v in pairs(ItemScore.rules[self.playerclass][active_set].itemtypes) do self.ActiveRuleSet.itemtypes[i]=v end
		for i,v in pairs(ItemScore.rules[self.playerclass][active_set].stats) do self.ActiveRuleSet.stats[i]=v end
		if ItemScore.rules[self.playerclass][active_set].caps then
			for i,v in pairs(ItemScore.rules[self.playerclass][active_set].caps) do self.ActiveRuleSet.caps[i]=v end
		end
	else
		local fallbackClass = self:IsKnownWeightClass(self.playerclass) and self.playerclass or self:GetCustomClassToken()
		local fallbackBuild = self:GetResolvedBuild(fallbackClass, self.playerlevel, 1)
		local fallbackRule = ItemScore.rules[fallbackClass] and ItemScore.rules[fallbackClass][fallbackBuild]
		if fallbackRule then
			self:NotifyCustomWeightFallback(originalClassToken or self.playerclass, active_set, "missing_ruleset")
			self.playerclass = fallbackClass
			self.playerclassNum = (ZGV.ClassToNumber and ZGV.ClassToNumber[fallbackClass]) or self:GetCustomClassID()
			ZGV.db.char.gear_active_build = fallbackBuild
			active_set = fallbackBuild
			for i,v in pairs(fallbackRule.itemtypes) do self.ActiveRuleSet.itemtypes[i]=v end
			for i,v in pairs(fallbackRule.stats) do self.ActiveRuleSet.stats[i]=v end
			if fallbackRule.caps then
				for i,v in pairs(fallbackRule.caps) do self.ActiveRuleSet.caps[i]=v end
			end
		else
			self:NotifyCustomWeightFallback(originalClassToken or self.playerclass, active_set, "missing_ruleset")
		end
	end

	if usingCustomClassFallback then
		self:NotifyCustomWeightFallback(originalClassToken, active_set, "unknown_class")
	end

	-- Update stats with users profile
	local saved_vars_prefix = "gear_"..self.playerclass.."_"..tostring(active_set).."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		if ZGV.db.profile[saved_vars_prefix..(stat.blizz)] then
			self.ActiveRuleSet.stats[(stat.blizz)]= tonumber(ZGV.db.profile[saved_vars_prefix..(stat.blizz)] or 0)
		end
	end

	-- Set dual wield 
	ItemScore:SetDualWield()

	-- record lowest statweight for scoring armor/dps
	self.whiteScoreWeight = nil
	for i,v in pairs(self.ActiveRuleSet.stats) do
		if v>0 then
			if not self.whiteScoreWeight or self.whiteScoreWeight>v then
				self.whiteScoreWeight = v
			end
		end
	end

	if not self.whiteScoreWeight then self.whiteScoreWeight=1 end -- in case user statweights are wiped clean
	self.whiteScoreWeight = self.whiteScoreWeight * 0.1

	-- if anything in user info has changed, all cached scores are no longer valid, and item stats could have changed due to level scaling
	-- Instead of wiping the entire cache and re-parsing everything, just invalidate calculated scores only
	-- This prevents massive memory churn and GC spikes on spec/level changes
	for link,item in pairs(ItemCache) do
		item.scored = nil
		item.score = nil
		item.comparison = nil
	end

	ItemScore.GearFinder:ClearResults()
end

-- converts ITEM_MOD_CRIT_RATING_SHORT to CRIT
local name_cache = {}
function ItemScore:NormaliseStatName(statname)
	if name_cache[statname] then return name_cache[statname] end

	-- primary and secondary stats
	statname = statname:gsub("_RATING_SHORT$","")
	statname = statname:gsub("_SHORT$","")
	statname = statname:gsub("^ITEM_MOD_","")

	-- tertiary stats
	statname = statname:gsub("^CR_","")

	-- element resist gear
	statname = statname:gsub("_NAME$","")
	
	-- specific case: armor
	if statname=="RESISTANCE0" then statname="ARMOR" end

	name_cache[statname] = statname
	return statname
end

ItemScore.GetItemDetailsQueue = {}
function ItemScore:GetItemDetails(itemlink,callback,force)
	if not itemlink then return end
	itemlink = strip_link(itemlink)
	if not itemlink then return end

	local item = ItemCache[itemlink]
	if not item then
		local dbitem = self:GetItemDetailsFromDB(itemlink)
		if dbitem then
			bump_db_counter("primed", dbitem.itemid)
			ItemCache[itemlink] = dbitem
			table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
			return dbitem
		end
		local itemID = ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemlink)
		warn_missing_itemdb(itemlink, itemID)
		table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
		return
	end
	if callback and item_needs_live_resolution(item) then
		table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
	end
	return item
end

function ItemScore:ItemDetailsHandler()
	if ItemScore.GetItemDetailsQueue[1] then
		local itemlink,callback,force = unpack(table.remove(ItemScore.GetItemDetailsQueue,1))
		local item = ItemScore:GetItemDetailsQueued(itemlink,force)
		if not item then
			table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
			return
		end
		if callback and type(callback)=="function" then callback(item) end
	end
end

local SKIP_CACHE = false
function ItemScore:GetItemDetailsQueued(itemlink,force)
	if not itemlink then return false end
	local itemlinkfull = itemlink
	itemlink = strip_link(itemlink)
	if not itemlink then return false end
	local itemID = ZGV.ItemLink.GetItemID(itemlink)
	local dbitem = itemID and self:GetItemDetailsFromDB(itemlinkfull)

	-- if item is not yet cached, grab its data
	if not ItemCache[itemlink] or SKIP_CACHE or force then
		local requires_detail
		-- that is a new one
		local itemName, itemLink2, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, texture = ZGV:GetItemInfo(itemlink)
		
		-- Pre-flight cache check: for suffix/random-enchant items GetItemInfo may return nil
		-- until the server pushes data. Trigger a tooltip scan to populate cache and exit safely.
		if not itemName then
			if not dbitem then
				warn_missing_itemdb(itemlink, itemID)
				Gratuity:SetHyperlink(itemlink)
				return false
			end
			bump_db_counter("dbonly", itemID)
		end
		
		itemName = itemName or (dbitem and dbitem.name)
		itemRarity = itemRarity or (dbitem and dbitem.quality)
		itemLevel = itemLevel or (dbitem and dbitem.itemlvl)
		itemMinLevel = itemMinLevel or (dbitem and dbitem.minlevel)
		itemEquipLoc = (itemEquipLoc and itemEquipLoc ~= "" and itemEquipLoc) or (dbitem and dbitem.equiploc) or ""
		texture = texture or (dbitem and dbitem.texture)

		local itemlvl = itemLevel
		local itemClassID = resolve_item_class_id(itemType) or (dbitem and dbitem.class)
		local itemFamily, itemSubClassID = resolve_item_family(itemClassID, itemSubType)
		if not itemFamily then
			local equipFamily, equipSubClassID = resolve_family_from_equip_loc(itemEquipLoc)
			if equipFamily then
				itemFamily = equipFamily
				itemSubClassID = itemSubClassID or equipSubClassID
			end
		end
		itemFamily = itemFamily or (dbitem and dbitem.family)
		itemSubClassID = itemSubClassID or (dbitem and dbitem.subclass)

		if itemEquipLoc=="" then -- not equipment, don't bother parsing tooltip
			ItemCache[itemlink] = { 
				stats = copy_stats(dbitem and dbitem.stats), 
				itemlink = itemlink,
				itemid = itemID,
				itemlinkfull = itemlinkfull,
				class = itemClassID,
				subclass = itemSubClassID,
				family = itemFamily,
				subtype = itemSubType or (dbitem and dbitem.subtype),
				equiploc = itemEquipLoc,
				quality = itemRarity,
				validated = false,
				texture = texture,
				itemlvl = itemlvl,
				minlevel = itemMinLevel,
				name = itemName,
				playerclass = dbitem and dbitem.playerclass,
				allowableRaceMask = dbitem and dbitem.allowableRaceMask,
				needs_exact_stats = false,
				needs_live_scan = false,
			}
			return ItemCache[itemlink]
		end

		local item = {}

		-- class, spec check, and level check. we need to scan tooltip for those. meh.
		local playerclass, playerspec
		local unusable_by_tooltip
		local canScanTooltip = true
		Gratuity:SetHyperlink(itemlink)
		if Gratuity:NumLines()==0 then
			if not dbitem then return false end
			canScanTooltip = false
		end

		local stats
		if canScanTooltip then
			-- Once we can scan live item data, rebuild the statline from Blizzard data
			-- and tooltip parsing so dirty imported DB stats do not leak into comparisons.
			stats = copy_selected_stats(dbitem and dbitem.stats, DB_STRUCTURAL_STATS)
		else
			stats = copy_stats(dbitem and dbitem.stats)
		end
		local tooltip = {}

		-- use blizz GetItemStats to get sockets, since tooltip scanning would only detect empty ones
		local blizzstats = GetItemStats(itemlinkfull) or GetItemStats(itemlink)
		local blizz_present_normalized = {}
		for statname in pairs(stats) do
			blizz_present_normalized[ItemScore:NormaliseStatName(statname)] = true
		end
		if blizzstats then
			if dbitem then
				bump_db_counter("live", itemID)
			end
			-- DB keys are canonical (ARMOR), while GetItemStats uses aliases
			-- (RESISTANCE0_NAME). Merge by canonical name to avoid double scoring.
			-- Live totals replace stale DB values, including lower/zero values;
			-- retain fallbacks only for stats the API omits.
			local liveStats = {}
			for i,v in pairs(blizzstats) do
				if type(v) == "number" then
					local name = ItemScore:NormaliseStatName(i)
					-- Some clients expose two aliases for the same total.
					liveStats[name] = math.max(liveStats[name] or v, v)
				end
			end
			for name,value in pairs(liveStats) do
				stats[name] = value
				blizz_present_normalized[name] = true
			end
		end

		if canScanTooltip then
			for num=1,Gratuity:NumLines() do
				local line=Gratuity:GetLine(num)

				if not line then return false end
				if line==RETRIEVING_ITEM_INFO then return false end

				if ItemScore.SaveTooltip then table.insert(tooltip,line) end
				if tooltip_line_marks_unusable_item_subtype(num) then
					unusable_by_tooltip = true
				end

				line = line:gsub("|c........",""):gsub("|r","") -- strip color codes, if any

				if ITEM_CLASSES_ALLOWED then
					local found_class = line:match( gsub(ITEM_CLASSES_ALLOWED,"%%s","(.*)"))
					if found_class then playerclass = found_class end
				end

				-- 3.3.5a: ITEM_REQ_SPECIALIZATION global does not exist in this client.
				-- Fallback to localized pattern matching to prevent nil-pointer crashes.
				if line:find(L["Requires"] .. " ") then
					local requirement = line:match(L["Requires"] .. " (.+)")
					if requirement then
						requires_detail = requirement
					end
				end

				local socket_bonus = ITEM_SOCKET_BONUS and line:match( ITEM_SOCKET_BONUS:gsub("%%s","(.*)"))
				local set_bonus = ITEM_SET_BONUS_GRAY and line:match( ITEM_SET_BONUS_GRAY:gsub("%%s","(.*)"))
				local set2_bonus = ITEM_SET_BONUS and line:match( ITEM_SET_BONUS:gsub("%%s","(.*)"))
				if socket_bonus or set_bonus or set2_bonus then line="" end

				local line = (ITEM_SPELL_TRIGGER_ONEQUIP and line:gsub(ITEM_SPELL_TRIGGER_ONEQUIP.." ","") or line):lower()
				local matchedThisLine = {}
				for _,statdata in pairs(ItemScore.Keywords) do
					local coveredByBlizzard = false
					if statdata.multi then
						for _,multiname in ipairs(statdata.multi) do
							if blizz_present_normalized[ItemScore:NormaliseStatName(multiname)] then
								coveredByBlizzard = true
								break
							end
						end
					else
						coveredByBlizzard = blizz_present_normalized[ItemScore:NormaliseStatName(statdata.blizz)] and true or false
					end
					if not coveredByBlizzard and not matchedThisLine[statdata.blizz] then
						for _,regex in ipairs(statdata.regexs) do
							local sign,value = line:match(regex)
							if sign and not value then value = sign end

							if statdata.boolean and sign then
								value="1"
							end

							if value then
								value = value:gsub(",",".")
								if sign=="-" then value=value*(-1) end
								if statdata.multi then
									for _,multiname in ipairs(statdata.multi) do
										add_stat(stats, multiname, value)
									end
								else
									add_stat(stats, statdata.blizz, value)
								end
								matchedThisLine[statdata.blizz] = true
								break
							end
						end
					end
				end
			end
		end

		-- ok, got everything, cache it
		ItemCache[itemlink] = { 
			stats = stats, 
			itemlink = itemlink,
			itemid = itemID,
			itemlinkfull = itemlinkfull,
			minlevel = itemMinLevel,
			type = itemEquipLoc,
			equiploc = itemEquipLoc,
			class = itemClassID,
			subclass = itemSubClassID,
			family = itemFamily,
			subtype = itemSubType or (dbitem and dbitem.subtype),
			quality = itemRarity,
			validated = false,
			texture = texture,
			itemlvl = itemlvl,
			playerclass = playerclass or (dbitem and dbitem.playerclass),
			allowableRaceMask = dbitem and dbitem.allowableRaceMask,
			playerspec = playerspec,
			requires_detail = requires_detail,
			unusable_by_tooltip = unusable_by_tooltip,
			name = itemName,
			needs_exact_stats = false,
			needs_live_scan = false,
			fromdb = dbitem and true or false,
		}

		if ItemScore.SaveTooltip then ItemCache[itemlink].tooltip = tooltip end


		local slot_1, slot_2, twohander = get_item_slot_info(ItemCache[itemlink])
		ItemCache[itemlink].slot = slot_1
		ItemCache[itemlink].slot_2 = slot_2
		ItemCache[itemlink].twohander = twohander

	end

	if ItemCache[itemlink] and not (ItemCache[itemlink].itemlinkfull and ItemCache[itemlink].itemlinkfull:match("%[")) then -- in case we get a mangled (stripped) full link, try to rebuild it now
		local itemName,newfulllink = ZGV:GetItemInfo(itemlink) 
		if newfulllink then
			ItemCache[itemlink].itemlinkfull = newfulllink
		end
	end

	return ItemCache[itemlink]
end

-- function ItemScore:GetValidSlots(item) in flavour specific files

-- calculates item score based on item stats and current weights. result is cached
-- params:
--	itemlink - string - item that we are checking
-- return:
--	score - int - -1 or score of given item
--	success - bool - was item scored at all
--	comment - string - description
function ItemScore:GetItemScore(itemlink,verbose)
	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then return -1, -1, false, "no info yet" end
	if not self:EnsureActiveRuleSet() then return -1, false, "no active rules" end

	local stats = item.stats
	local score = 0
	local statweights = self.ActiveRuleSet.stats
	local caps = self.ActiveRuleSet.caps

	-- calculate score based on stats
	for statname,statvalue in pairs(stats) do
		statname = ItemScore:NormaliseStatName(statname)
		if not SOCKET_STAT_KEYS[statname] then
			local statweight = get_effective_stat_weight(statname, statweights, caps, self.playerlevel)
			score = score + statvalue*statweight

			if verbose then table.insert(verbose,("  + |cff00ff00%.1f * %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format(statvalue,statname, statweight, statvalue*statweight))  end
		end
	end

	local socketScore, socketDetails = get_item_socket_score(item, statweights, caps, self.playerlevel)
	if socketScore > 0 then
		score = score + socketScore
		if verbose then table.insert(verbose,("  + |cff00ff00sockets %s|r: |cffffffff%.1f|r"):format(socketDetails, socketScore)) end
	end

	-- add dps and armor at minimal weight, unless proper statweights for them exist
	if not statweights.ARMOR and not item_has_non_armor_stats(item) then
		if verbose then table.insert(verbose,("  + |cff00ff00%.1f extra %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format((item.stats.ARMOR or 0),RESISTANCE0_NAME, self.whiteScoreWeight, (item.stats.ARMOR or 0)*self.whiteScoreWeight ))  end
		score = score + (item.stats.ARMOR or 0)*self.whiteScoreWeight 
	end
	if not statweights.DAMAGE_PER_SECOND then 
		if verbose then table.insert(verbose,("  + |cff00ff00%.1f extra %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format((item.stats.DAMAGE_PER_SECOND or 0),ITEM_MOD_DAMAGE_PER_SECOND_SHORT, self.whiteScoreWeight, (item.stats.DAMAGE_PER_SECOND or 0)*self.whiteScoreWeight ))  end
		score = score + (item.stats.DAMAGE_PER_SECOND or 0)*self.whiteScoreWeight 
	end

	-- adjust armor weights
	if item.class == LE_ITEM_CLASS_ARMOR and item.type~="INVTYPE_CLOAK" then
		if verbose then table.insert(verbose,("  ? |cff00ff00Is armor|r"))  end 
		local types = self.ActiveRuleSet.itemtypes
		local subclass = get_item_family(item)
		local limit = types[subclass] or 0
		if verbose then table.insert(verbose,("  ? |cff00ff00limit "..limit.." level "..self.playerlevel.."|r"))  end 
		-- if limit is below 0, item is good only till given level, with 10 level grace
		if limit < 0 then 
			if verbose then table.insert(verbose,("  ? |cff00ff00Has limit|r"))   end
			if self.playerlevel >= (-limit+10) then
				if verbose then table.insert(verbose,"  ? |cff00ff00Has limit, past grace|r") end  
				-- we are over the 10 level grace period, undervalue heavily. I mean, come on, farm a little...
				score = score * 0.5
			elseif self.playerlevel >= -limit then
				if verbose then table.insert(verbose,"  ? |cff00ff00Has limit, grace period|r") end  
				 -- we are within grace period, undervalue slightly
				 score = score * 0.9
				-- allows all classes to transition to final armor type after specified level
			end
		end

	end

	-- heirloom protection is now done in upgrades get_upgrade

	-- record scores
	item.score = score

	if verbose then 
		table.insert(verbose,("score %f"):format(score))
		table.insert(verbose,("comment %s"):format("scored ok"))
	end

	return score, true, "scored ok"
end

-- checks if given item is a heirloom that should be protected
-- params:
--	itemlink - string - item that we are checking
-- return:
--	is_protected - bool - whenever item is heirloom not outleveled by user
--	max_level - int - up to what level this item is valid heirloom
function ItemScore:GetHeirloomInfo(itemlink)
	-- in shadowland heirlooms no longer give exp bonus, so we are not protecting them anymore unless player asks for it
	do return ZGV.db.profile.autogear_keepheirlooms, 60 end

	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then return false,0 end
	if item.quality ~= 7 then return false,0 end

	local itemid = item.itemid
	local max_level = 60 -- default for all looms

	-- if it is one of items with hardcoded max levels
	max_level =  ItemScore.FixedLevelHeirloom[itemid] or max_level
		
	for bonus,_ in pairs(ZGV.ItemLink.GetItemBonuses(itemlink)) do
		max_level = math.max(max_level,ItemScore.HeirloomBonuses[tonumber(bonus)])
	end
	
	return self.playerlevel < max_level, max_level
end

function ItemScore:GetItemValidity(itemlink, future)
	if not itemlink then
		return {valid = false, final = false, reason = "No itemlink", code = "missing_link"}
	end
	if not self:EnsureActiveRuleSet() then
		return {valid = false, final = false, reason = "No active rules", code = "missing_rules"}
	end

	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then
		return {valid = false, final = false, reason = "No info", code = "missing_info"}
	end

	local slot_1, slot_2, twohander, equippable, slotReason = get_item_slot_info(item)
	if not equippable then
		return {
			valid = false,
			final = true,
			reason = slotReason or "not equipment",
			code = "slot",
			item = item,
		}
	end

	if item.ignore_for_gear then
		return {
			valid = false,
			final = true,
			reason = "test item",
			code = "test_item",
			item = item,
		}
	end

	if item.unusable_by_tooltip then
		return {
			valid = false,
			final = true,
			reason = "unsupported item type",
			code = "tooltip_subtype",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if item.playerclass then
		local validclass = false
		for _, v in pairs(ZGV.ExplodeString(", ", item.playerclass)) do
			if v == self.playerclassName then
				validclass = true
				break
			end
		end
		if not validclass then
			return {
				valid = false,
				final = true,
				reason = "wrong class",
				code = "class",
				item = item,
				slot = slot_1,
				slot_2 = slot_2,
				twohander = twohander,
			}
		end
	end

	if not db_mask_allows_race(item.allowableRaceMask, self.playerraceName, self.playerraceToken) then
		return {
			valid = false,
			final = true,
			reason = "wrong race",
			code = "race",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if item.playerspec and item.playerspec ~= self.playerspecName then
		return {
			valid = false,
			final = true,
			reason = "wrong spec",
			code = "spec",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if not future and item.minlevel and item.minlevel > self.playerlevel then
		return {
			valid = false,
			final = true,
			reason = ("required level %d to equip"):format(item.minlevel),
			code = "level",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if item.equiploc == "INVTYPE_SHIELD" and self.ActiveRuleSet and self.ActiveRuleSet.itemtypes and self.ActiveRuleSet.itemtypes.SHIELD == nil then
		return {
			valid = false,
			final = true,
			reason = "unsupported item type",
			code = "shield",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	local fallbackFamily = get_item_family(item)
	local standardFamilyAllowed = class_can_use_standard_family(self.playerclass, fallbackFamily, self.playerlevel)
	if standardFamilyAllowed == false then
		return {
			valid = false,
			final = true,
			reason = "unsupported item type",
			code = "class_family",
			item = item,
			slot = slot_1,
			slot_2 = slot_2,
			twohander = twohander,
		}
	end

	if fallbackFamily and self.ActiveRuleSet and self.ActiveRuleSet.itemtypes then
		local useable_since_level = self.ActiveRuleSet.itemtypes[fallbackFamily] or (item.type=="INVTYPE_CLOAK" and 1)
		if useable_since_level == nil and fallbackFamily ~= "JEWELERY" and fallbackFamily ~= "COSMETIC" then
			return {
				valid = false,
				final = true,
				reason = "unsupported item type",
				code = "family",
				item = item,
				slot = slot_1,
				slot_2 = slot_2,
				twohander = twohander,
			}
		end
		if useable_since_level and not future and useable_since_level > 0 and self.playerlevel < useable_since_level then
			return {
				valid = false,
				final = true,
				reason = ("required level %d to use"):format(useable_since_level),
				code = "fallback_level",
				item = item,
				slot = slot_1,
				slot_2 = slot_2,
				twohander = twohander,
			}
		end
	end

	return {
		valid = true,
		final = true,
		reason = "ok",
		code = "ok",
		item = item,
		slot = slot_1,
		slot_2 = slot_2,
		twohander = twohander,
		family = fallbackFamily,
	}
end


-- checks if item can be equipped by player at the moment. result is cached
-- params:
--	itemlink - string
--	future - anything - for checks for future upgrades. if set, level restriction is not checked
-- returns: 
--	is valid - bool - is item valid for current player
--	is final - bool - was validity really checked (and not skipped due to no gii info)
--	comment - string - verbose description of result
function ItemScore:IsValidItem(itemlink, future)
	if not itemlink then return false, false, "No itemlink" end

	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if not item then return false, false, "No info" end

	local verdict = self:GetItemValidity(itemlink, future)
	item.slot = verdict.slot or item.slot
	item.slot_2 = verdict.slot_2 or item.slot_2
	if verdict.twohander ~= nil then item.twohander = verdict.twohander end
	item.validated = verdict.final and true or false
	item.valid = verdict.valid and true or false
	item.validstatus = verdict.reason or "No info"
	return item.valid, verdict.final, item.validstatus
end

-- 3.3.5a: gem scoring functions removed (retail-only feature)

-- returns items equipped by requested type, used by items-quest
-- params:
--	equiptype - int - invtype constant of type to check
-- returns
--	itemlink - string - itemlink of item in first possible slot
--	itemlink2 - string, optional - itemlink of item in second possible slot
function ItemScore:GetItemByType(equiptype)
	local s1, s2 = get_slots_by_type(equiptype)

	local itemlink1,itemlink2
	if s1 then itemlink1 = GetInventoryItemLink("player",s1) end
	if s2 then itemlink2 = GetInventoryItemLink("player",s2) end

	return itemlink1 and itemlink1:match("item[:%d]+"),itemlink2 and itemlink2:match("item[:%d]+"), itemlink1,itemlink2
end

-- returns items equipped in requested type, used by pointer
-- params:
--	slotid - int - invslot constant
-- returns
--	itemlink - string - itemlink of item in given slot
--	itemid - string - itemid of item in given slot
function ItemScore:GetItemInSlot(slotid)
	local itemlink = GetInventoryItemLink("player",slotid)
	if itemlink then
		return itemlink:match("item[:%d]+"), tonumber(itemlink:match("item:(%d+)"))
	end
end

-- 3.3.5a: Azerite powers do not exist
-- Stub function for compatibility
function ItemScore:GetAzeritePowers(itemlink)
	return {}, false
end



-- set of functions to add zygor item info to tooltip
local function ItemScore_SetTooltipData(tooltip, tooltipobj)
	if not ZGV.db.profile.autogear then return end
	if not ZGV.db.profile.itemscore_tooltips then return end
	tooltipobj=tooltipobj or GameTooltip -- we patch either gametooltip or itemreftooltip

	if not ItemScore.TooltipPatched then
		local itemName,originalLink = tooltipobj:GetItem()
		if not originalLink then ItemScore.TooltipPatched = true return end

		local function refresh_tooltip()
			if not tooltipobj or not tooltipobj:IsVisible() then return end
			local _, currentLink = tooltipobj:GetItem()
			if not currentLink or ItemScore.strip_link(currentLink) ~= ItemScore.strip_link(originalLink) then return end

			ItemScore.TooltipPatched = false

			if tooltipobj == GameTooltip then
				local owner = GameTooltip:GetOwner()
				if owner then
					local onEnter = owner:GetScript("OnEnter")
					if onEnter then
						local ok = pcall(onEnter, owner)
						if ok then return end
					end
				end
				local _, link = GameTooltip:GetItem()
				if link and GameTooltip.SetHyperlink then
					pcall(GameTooltip.SetHyperlink, GameTooltip, link)
				end
			elseif tooltipobj == ItemRefTooltip then
				local _, link = ItemRefTooltip:GetItem()
				if link and ItemRefTooltip.SetHyperlink then
					pcall(ItemRefTooltip.SetHyperlink, ItemRefTooltip, link)
				end
			else
				local _, link = tooltipobj:GetItem()
				if link and tooltipobj.SetHyperlink then
					pcall(tooltipobj.SetHyperlink, tooltipobj, link)
				end
			end
		end

		local item = ItemScore:GetResolvedItemDetails(originalLink) or ItemScore:GetItemDetails(originalLink, refresh_tooltip, true)
		if not item then
			-- Item not cached yet - queued for async parse. Tooltip will refresh via callback once data arrives.
			ItemScore.TooltipPatched = true
			return
		end
		if ItemScore:IsItemPendingResolution(item) then
			ItemScore:GetItemDetails(originalLink, refresh_tooltip, true)
			ItemScore.TooltipPatched = true
			return
		end

		local fulllink = originalLink
		local itemlink = item.itemlink
		if not item_is_gear(item) then
			ItemScore.TooltipPatched = true
			return
		end

		local score, success, scorecomment = ItemScore:GetItemScore(itemlink)
		if not success then ItemScore.TooltipPatched  = true return end

		local valid, final, validcomment = ItemScore:IsValidItem(itemlink)
		if not final then ItemScore.TooltipPatched  = true return end
		local debugVerdict = nil
		if ZGV.db and ZGV.db.profile and ZGV.db.profile.debug_display then
			debugVerdict = ItemScore:GetItemValidity(itemlink)
		end

		local heirloom_protected,heirloom_max = ItemScore:GetHeirloomInfo(itemlink)
		
		local slot_1,slot_2 = item.slot, item.slot_2
		local equipped_item_1, equipped_item_2
		if slot_1 then 
			equipped_item_1 = ItemScore.Upgrades:GetEquippedItemData(slot_1)
		end
		if slot_2 then 
			equipped_item_2 = ItemScore.Upgrades:GetEquippedItemData(slot_2) 
		end

		local function add_upgrade_line(slotinfo, equipped_item, slotid)
			local comparison = ItemScore.Upgrades:GetUpgradeComparison(slotid, item)
			local line = "|r " .. slotinfo .. format_tooltip_value(comparison, score, get_active_score_weight_total())
			tooltip:AddLine(line)
		end

		local function add_context_upgrade_line(prefix, comparison)
			if not comparison then return end
			local contextWeightTotal = ItemScore:GetContextScoreWeightTotal(comparison.context)
			local line = "|r " .. prefix .. format_tooltip_value(comparison, comparison.candidateScore, contextWeightTotal)
			tooltip:AddLine(line)
		end

		if valid then
			if slot_1 or slot_2 then -- valid equippable item, show comparison info even if weighted score is zero
				local mh, oh, th
				if item.class == LE_ITEM_CLASS_WEAPON then
					ItemScore.Upgrades:ResetWeaponQueue("onlytemp")
					ItemScore.Upgrades:QueueWeapon(itemlink)
					mh, oh, th = ItemScore.Upgrades:ProcessWeaponQueue()
				end

				tooltip:AddLine(" ")
				tooltip:AddLine(branded_tooltip_header("ItemScore"))
				tooltip:AddLine(("|cffcccccc%s:|r %s"):format(ItemScore:GetActiveBuildSourceLabel(), ItemScore:GetBuildName(ItemScore.playerclass, ZGV.db.char.gear_active_build, ItemScore.playerlevel, ItemScore.activeBuildUsesFallback)))
				if debugVerdict then
					tooltip:AddLine(("|cff8888ffdebug:|r eq=%s subtype=%s family=%s valid=%s code=%s"):format(
						tostring(item.equiploc or item.type or "nil"),
						tostring(item.subtype or "nil"),
						tostring(get_item_family(item) or "nil"),
						tostring(debugVerdict.valid),
						tostring(debugVerdict.code or "nil")
					))
				end
				local slotinfo1 = slot_2 and "Slot 1: " or ""
				local slotinfo2 = slot_2 and "Slot 2: " or ""

				if ZGV.db.profile.itemscore_tooltips_allbuilds then
					local classToken = ItemScore.playerclass
					local classNum = ItemScore.playerclassNum
					local level = ItemScore.playerlevel
					local builds = (ItemScore.Builds and classNum and ItemScore.Builds[classNum]) or {}
					for buildNum, _ in ipairs(builds) do
						local context = ItemScore:BuildRuleContext(classToken, buildNum, level)
						if context then
							local verdict = ItemScore:GetItemValidityForContext(itemlink, nil, context)
							local prefix = ("|cffcccccc%s:|r "):format(ItemScore:GetBuildName(classToken, buildNum, level, context.usesFallback))
							if not verdict.valid then
								tooltip:AddLine(prefix .. "|cffff3333x|r Unusable")
							else
								local comparison = nil
								if verdict.slot then
									comparison = ItemScore:GetUpgradeComparisonForContext(verdict.slot, item, context)
								end
								if verdict.slot_2 then
									local secondComparison = ItemScore:GetUpgradeComparisonForContext(verdict.slot_2, item, context)
									if secondComparison and (not comparison or (secondComparison.deltaScore or 0) > (comparison.deltaScore or 0)) then
										comparison = secondComparison
									end
								end
								if comparison then
									add_context_upgrade_line(prefix, comparison)
								else
									local contextScore = select(1, ItemScore:GetItemScoreForContext(itemlink, context))
									tooltip:AddLine(prefix .. format_tooltip_value(nil, contextScore or 0, ItemScore:GetContextScoreWeightTotal(context)))
								end
							end
						end
					end
				else
					-- item in slot 1
					add_upgrade_line(slotinfo1, equipped_item_1, slot_1)

					if slot_2 and equipped_item_2.score then
						add_upgrade_line(slotinfo2, equipped_item_2, slot_2)
					elseif slot_2 then
						add_upgrade_line(slotinfo2, equipped_item_2, slot_2)
					end
				end
			end
			-- 3.3.5a: gem socket suggestions removed
		else
			if item.type~="" then
				tooltip:AddLine(" ")
				tooltip:AddLine(branded_tooltip_header("ItemScore"))
				tooltip:AddLine(("|cffcccccc%s:|r %s"):format(ItemScore:GetActiveBuildSourceLabel(), ItemScore:GetBuildName(ItemScore.playerclass, ZGV.db.char.gear_active_build, ItemScore.playerlevel, ItemScore.activeBuildUsesFallback)))
				if debugVerdict then
					tooltip:AddLine(("|cff8888ffdebug:|r eq=%s subtype=%s family=%s valid=%s code=%s"):format(
						tostring(item.equiploc or item.type or "nil"),
						tostring(item.subtype or "nil"),
						tostring(get_item_family(item) or "nil"),
						tostring(debugVerdict.valid),
						tostring(debugVerdict.code or "nil")
					))
				end
				tooltip:AddLine("|cffff3333Unusable|r")
			end
		end

		ItemScore.TooltipPatched  = true
	end
	if tooltipobj==ItemRefTooltip then ItemRefTooltip:Show() end -- update to new height, have to do it by hand since IRT is called just once
end
local function ItemScore_ClearTooltipData(tooltip, ...) ItemScore.TooltipPatched = false end

-- functions that support itemscore/gearfinder options panel
function ItemScore:UsesCustomWeights(class,spec)
	local statset = ZGV.ItemScore.rules[class][spec].stats
	local prefix = 'gear_'..class..'_'..spec..'_'
	local profile = ZGV.db.profile

	for index=1,#ZGV.ItemScore.Keywords do
		local statname = ZGV.ItemScore.Keywords[index].blizz

		if not profile[prefix..statname] and statset[statname] then
		
		elseif tonumber(profile[prefix..statname]) and not statset[statname] then
			return true
		elseif tonumber(profile[prefix..statname]) and tonumber(statset[statname])~=tonumber(profile[prefix..statname]) then
			return true
		end
	end
	return false
end

function ItemScore:GetEquipmentSkills()
	if not ItemScore.Skills then ItemScore.Skills = {} end
	table.wipe(ItemScore.Skills)

	if not ItemScore.SkillNamesRev then ItemScore.SkillNamesRev = {} end
	if not ItemScore.SkillNames then ItemScore.SkillNames = {} end

	-- Ensure ItemCache exists to prevent nil-pointer errors during early initialization
	if ItemCache then
		-- Instead of wiping the entire cache and re-parsing everything, just invalidate calculated scores only
		-- This prevents massive memory churn and GC spikes on skill changes
		for link, item in pairs(ItemCache) do
			item.scored = nil
			item.score = nil
			item.comparison = nil
		end
	end

	for i=1, GetNumSkillLines() do
		local skillName, _, _, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType = GetSkillLineInfo(i);
		local skillTag = ItemScore.SkillNamesRev[skillName]
		if skillTag then
			ItemScore.Skills[skillTag] = skillRank
		end
	end
end

function ItemScore:GetEquippedStatValue(statname)
	local result = 0
	for slotID,item in pairs(ZGV.ItemScore.Upgrades.EquippedItems) do 
		local details = ItemScore:GetResolvedItemDetails(item.itemlink)
		if details then
			for sname,svalue in pairs(details.stats) do
				local name = ItemScore:NormaliseStatName(sname)
				if name==statname then
					result = result + svalue
				end
			end
		end
	end
	return result
end


function ItemScore:ImportPawn(datastring)
	if not datastring then return end
	local unknowns = false

	if not datastring:find("Pawn: v1:") then 
		ZGV:Print("Import: Incorrect pawn string") 
		return
	end

	datastring = datastring:gsub(" [)]",""):gsub("(.*): ","")

	local stattable = {}
	for statstring in string.gmatch(datastring, "([^,]+)") do
		local statname,statval = statstring:match("(%w+)=([-0-9%.]+)")
		if statname and statval then
			stattable[statname] = (tonumber(statval)~=0 and statval or nil)
		end
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] and not ItemScore.KeywordsPawnToRules[statname] then
			unknowns = true
			stattable[statname]=nil
		end
	end

	if unknowns then
		ZGV:Print("Import: Some of Pawn stat names are not supported by Zygor, and have been skipped.") 
	end

	local classNum = tonumber(ZGV.db.char.gear_selected_class) or self.playerclassNum or 1
	local tag = get_class_tag(classNum)
	local build = tonumber(ZGV.db.char.gear_selected_build) or tonumber(ZGV.db.char.gear_active_build) or 1
	if not tag then return end
	local groupname = 'gear_'..tag..'_'..build.."_"

	for index,stat in pairs(ZGV.ItemScore.Keywords) do -- wipe
		ZGV.db.profile[groupname..stat.blizz] = "0"
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] then
			ZGV.db.profile[groupname..ItemScore.KeywordsPawnToRules[statname]] = statval
		end
	end
end

function ItemScore:ExportPawn(datastring)
	local class = tonumber(ZGV.db.char.gear_selected_class) or self.playerclassNum or 1
	local spec = tonumber(ZGV.db.char.gear_selected_build) or tonumber(ZGV.db.char.gear_active_build) or 1
	local tag = get_class_tag(class)
	local name = (LOCALIZED_CLASS_NAMES_MALE and tag and LOCALIZED_CLASS_NAMES_MALE[tag]) or (LOCALIZED_CLASS_NAMES_FEMALE and tag and LOCALIZED_CLASS_NAMES_FEMALE[tag]) or tostring(tag)
	if not tag then return end
	local specname = ZGV.SpecByNumber[tag][spec] -- values taken from parser.lua classtalents
	local ruleset = ItemScore.rules[tag][spec]

	local returnstring = '( Pawn: v1: "Zygor: '
	returnstring = returnstring..name..' '..specname..'": '

	local data = {}

	--[[
	for namez,namep in pairs(ItemScore.Gear_ZygorToPawn) do
		if not ruleset.itemtypes[namez] then
			table.insert(data,namep.."=-1000000")
		else
			table.insert(data,namep.."="..ruleset.itemtypes[namez])
		end
	end
	--]]

	local playermask = "gear_"..tag.."_"..spec.."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		local value = ZGV.db.profile[playermask..(stat.blizz)] or ruleset.stats[stat.blizz]
		if tonumber(value) then
			table.insert(data,stat.pawn.."="..value)
		end
	end
	
	returnstring = returnstring.." "..table.concat(data, ", ") 
	returnstring = returnstring..")"

	ZGV.ItemScore.lastPawnString = returnstring
end

tinsert(ZGV.startups,{"ItemScore",function(self)
	ZGV.db.char.badupgrade = ZGV.db.char.badupgrade or {}

	local ok, err

	ok, err = pcall(ItemScore.SetData, ItemScore)
	if not ok then ZGV:Print("|cffff0000ItemScore SetData error:|r "..tostring(err)) end

	ok, err = pcall(ItemScore.Initialise, ItemScore)
	if not ok then ZGV:Print("|cffff0000ItemScore Initialise error:|r "..tostring(err)) end

	ok, err = pcall(function() ItemScore.GearFinder:Initialise() end)
	if not ok then ZGV:Print("|cffff0000GearFinder Initialise error:|r "..tostring(err)) end

	-- 3.4.3: re-enabled tooltip hooks (LibGratuity fix resolved corruption)
	pcall(GameTooltip.HookScript, GameTooltip, "OnTooltipSetItem", ItemScore_SetTooltipData)
	pcall(GameTooltip.HookScript, GameTooltip, "OnTooltipCleared", ItemScore_ClearTooltipData)
	pcall(ItemRefTooltip.HookScript, ItemRefTooltip, "OnTooltipCleared", ItemScore_ClearTooltipData)
	if GameTooltip.SetHyperlink then pcall(hooksecurefunc, GameTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,GameTooltip) end) end
	if ItemRefTooltip.SetHyperlink then pcall(hooksecurefunc, ItemRefTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,ItemRefTooltip) end) end

	if Gratuity and Gratuity.vars and Gratuity.vars.tooltip then
		Gratuity.vars.tooltip:HookScript("OnTooltipSetItem", function() 
			local itemName,itemlink = Gratuity.vars.tooltip:GetItem()
			if itemlink then 
				ItemScore:GetItemDetails(itemlink,nil,"force") 
			end
		end)
	end
end})
