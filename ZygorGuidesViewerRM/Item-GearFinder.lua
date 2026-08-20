local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore) then return end

-- GLOBAL ZygorGearFinder

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui and ui.SkinData

local GEARFINDER_BUTTON_HEIGHT = 54
local GEARFINDER_BUTTON_GAP = 2
local GEARFINDER_MAX_COLUMN_ROWS = 9
local GEARFINDER_MIN_HEIGHT = 48 + 5 + (GEARFINDER_MAX_COLUMN_ROWS * GEARFINDER_BUTTON_HEIGHT) + ((GEARFINDER_MAX_COLUMN_ROWS - 1) * GEARFINDER_BUTTON_GAP) + 108 + 8

local function GF_GetSlotLabel(slotKey, fallback)
	return _G[slotKey] or fallback
end

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop
local completedQuestsCache = {}
local function IsQuestFlaggedCompleted(questID)
	if _G.IsQuestFlaggedCompleted then
		return _G.IsQuestFlaggedCompleted(questID)
	end
	if GetQuestsCompleted then
		wipe(completedQuestsCache)
		GetQuestsCompleted(completedQuestsCache)
		return completedQuestsCache[questID] and true or false
	end
	return false
end

local ItemScore = ZGV.ItemScore
local GearFinder = {}
ItemScore.GearFinder = GearFinder
ItemScore.Items = {}
GearFinder.ITEM_RESOLVE_RETRY_LIMIT = 60
GearFinder.STARTUP_ITEM_INFO_GRACE = 6
local cancel_gearfinder_timer
local queue_fallback_candidate

local function get_time()
	return GetTime and GetTime() or (debugprofilestop and debugprofilestop() / 1000) or 0
end

local function GF_FormatFinderSummary(slotID, item, change, secondnewitem)
	local upgrades = ItemScore and ItemScore.Upgrades
	if not upgrades or not upgrades.FormatUpgradeSummary then return nil end
	return upgrades:FormatUpgradeSummary(slotID, item, change, secondnewitem)
end

local function GF_GetEncounterLabel(encounterId, fallbackBossName)
	if encounterId and _G.EJ_GetEncounterInfo then
		local name = EJ_GetEncounterInfo(encounterId)
		if name and name ~= "" then
			return name
		end
	end
	return fallbackBossName or " "
end

local GF_StaticBossNames = {
	[23953]="Prince Keleseth",[23954]="Ingvar the Plunderer",[24200]="Skarvald the Constructor",
	[25462]="The Lich King",
	[26529]="Meathook",[26530]="Salramm the Fleshcrafter",[26532]="Chrono-Lord Epoch",[26533]="Mal'Ganis",
	[26630]="Trollgore",[26631]="Novos the Summoner",[26632]="The Prophet Tharon'ja",[26668]="Svala Sorrowgrave",
	[26687]="Gortok Palehoof",[26693]="Skadi the Ruthless",[26723]="Keristrasza",[26731]="Grand Magus Telestra",
	[26763]="Anomalus",[26794]="Ormorok the Tree-Shaper",[26798]="Commander Kolurg",[26861]="King Ymiron",
	[27447]="Varos Cloudstrider",[27483]="King Dred",[27654]="Drakos the Interrogator",[27655]="Mage-Lord Urom",
	[27656]="Ley-Guardian Eregos",[27975]="Maiden of Grief",[27977]="Krystallus",[27978]="Sjonnir The Ironshaper",
	[28234]="The Tribunal of Ages",[28546]="Ionar",[28586]="General Bjarngrim",[28587]="Volkhan",
	[28684]="Krik'thir the Gatewatcher",[28859]="Malygos",[28921]="Hadronox",[28923]="Loken",[29120]="Anub'arak",
	[29266]="Xevozz",[29304]="Slad'ran",[29305]="Moorabi",[29306]="Gal'darah",[29307]="Drakkari Colossus",
	[29308]="Prince Taldaram",[29309]="Elder Nadox",[29310]="Jedoga Shadowseeker",[29311]="Herald Volazj",
	[29312]="Lavanthor",[29313]="Ichoron",[29314]="Zuramat the Obliterator",[29315]="Erekem",[29316]="Moragg",
	[29932]="Eck the Ferocious",[30258]="Amanitar",[31125]="Archavon the Stone Watcher",[31134]="Cyanigosa",
	[32273]="Infinite Corruptor",[34705]="Faction Champions",[34928]="Argent Confessor Paletress",[35119]="Eadric the Pure",
	[35451]="The Black Knight",[36477]="Krick and Ick",[36494]="Forgemaster Garfrost",[36497]="Bronjahm",
	[36502]="Devourer of Souls",[36658]="Scourgelord Tyrannus",[38112]="Falric",[38113]="Marwyn",
	[52240]="Argent Confessor Paletress",
}

local GF_StaticItemBossNames = {
	[47218]="Argent Confessor Paletress",
	[49801]="Forgemaster Garfrost",
	[49802]="Forgemaster Garfrost",
	[49803]="Forgemaster Garfrost",
	[49804]="Forgemaster Garfrost",
	[49805]="Forgemaster Garfrost",
	[49806]="Forgemaster Garfrost",
	[49807]="Krick and Ick",
	[49808]="Krick and Ick",
	[49809]="Krick and Ick",
	[49810]="Krick and Ick",
	[49811]="Krick and Ick",
	[49812]="Krick and Ick",
	[49813]="Scourgelord Tyrannus",
	[49816]="Scourgelord Tyrannus",
	[49817]="Scourgelord Tyrannus",
	[49818]="Scourgelord Tyrannus",
	[49819]="Scourgelord Tyrannus",
	[49820]="Scourgelord Tyrannus",
	[49821]="Scourgelord Tyrannus",
	[49822]="Scourgelord Tyrannus",
	[49823]="Scourgelord Tyrannus",
	[49824]="Scourgelord Tyrannus",
	[49825]="Scourgelord Tyrannus",
	[49826]="Scourgelord Tyrannus",
	[50227]="Forgemaster Garfrost",
	[50228]="Forgemaster Garfrost",
	[50229]="Forgemaster Garfrost",
	[50230]="Forgemaster Garfrost",
	[50233]="Forgemaster Garfrost",
	[50234]="Forgemaster Garfrost",
	[50235]="Krick and Ick",
	[50262]="Krick and Ick",
	[50263]="Krick and Ick",
	[50264]="Krick and Ick",
	[50265]="Krick and Ick",
	[50266]="Krick and Ick",
	[50259]="Scourgelord Tyrannus",
	[50267]="Scourgelord Tyrannus",
	[50268]="Scourgelord Tyrannus",
	[50269]="Scourgelord Tyrannus",
	[50270]="Scourgelord Tyrannus",
	[50271]="Scourgelord Tyrannus",
	[50272]="Scourgelord Tyrannus",
	[50273]="Scourgelord Tyrannus",
	[50283]="Scourgelord Tyrannus",
	[50284]="Scourgelord Tyrannus",
	[50285]="Scourgelord Tyrannus",
	[50286]="Scourgelord Tyrannus",
}

local cachedBossNameById
local function GF_GetBossNameLookup()
	if cachedBossNameById then return cachedBossNameById end
	cachedBossNameById = {}
	for _, dungeondata in pairs((ZGV.ItemScore and ZGV.ItemScore.Items) or {}) do
		if type(dungeondata) == "table" then
			for _, bossdata in pairs(dungeondata) do
				if type(bossdata) == "table" and bossdata.boss and bossdata.name and bossdata.name ~= "" then
					local bossID = tonumber(bossdata.boss)
					if bossID and not cachedBossNameById[bossID] then
						cachedBossNameById[bossID] = bossdata.name
					end
				end
			end
		end
	end
	return cachedBossNameById
end

local function GF_GetBossNameFromID(bossID, fallbackBossName)
	if type(bossID) == "table" then
		for _, id in ipairs(bossID) do
			local name = GF_GetBossNameFromID(id)
			if name and name ~= "" then
				return name
			end
		end
	end
	local normalizedBossID = tonumber(bossID) or bossID
	if normalizedBossID and ZGV.GetTranslatedNPC then
		local name = ZGV:GetTranslatedNPC(normalizedBossID)
		if name and name ~= "" then
			return name
		end
	end
	if normalizedBossID and GF_StaticBossNames[normalizedBossID] then
		return GF_StaticBossNames[normalizedBossID]
	end
	if normalizedBossID then
		local lookup = GF_GetBossNameLookup()
		local lookedUp = lookup and lookup[normalizedBossID]
		if lookedUp and lookedUp ~= "" then
			return lookedUp
		end
	end
	if fallbackBossName and fallbackBossName ~= "" then
		return fallbackBossName
	end
	return nil
end

local function GF_IsPositiveComparison(comparison)
	return comparison and (comparison.isNewItem or (comparison.deltaScore or 0) > 0)
end

local function GF_StripLink(itemlink)
	if not itemlink then return nil end
	if ItemScore and ItemScore.strip_link then
		return ItemScore.strip_link(itemlink) or itemlink
	end
	local _, itemstring = tostring(itemlink):match("(.*)item:([0-9-:]*)(.*)")
	if itemstring then
		local result = itemstring
		local prev
		repeat
			prev = result
			result = result:gsub(":0:", "::")
		until result == prev
		result = result:gsub(":0$", ":")
		return "item:" .. result
	end
	return itemlink
end

local function GF_GetItemID(itemlink)
	if type(itemlink) == "number" then return itemlink end
	if ZGV.ItemLink and ZGV.ItemLink.GetItemID then
		local itemid = ZGV.ItemLink.GetItemID(itemlink)
		if itemid then return tonumber(itemid) end
	end
	return tonumber(tostring(itemlink or ""):match("item:(%d+)") or tostring(itemlink or ""):match("^(%d+)$"))
end

local function GF_IsKnownClientItem(itemlink)
	local itemid = GF_GetItemID(itemlink)
	if not itemid then return true end
	if (GearFinder.CurrentExpansion or 2) <= 2 and itemid > 55000 then
		return false, "post-WotLK item id"
	end
	return true
end

local function GF_EvaluateUpgrade(itemlink, future)
	if not itemlink then return false, nil, 0, 0, "no link" end
	itemlink = GF_StripLink(itemlink) or itemlink
	if not itemlink then return false, nil, 0, 0, "no link" end

	local is_upgrade, slot, change, score, comment, futurevalid, slot_2, change_2 = ItemScore.Upgrades:IsUpgrade(itemlink, future)
	if is_upgrade then
		return is_upgrade, slot, change, score, comment, futurevalid, slot_2, change_2
	end

	if ItemScore.Upgrades.BadUpgrades and ItemScore.Upgrades.BadUpgrades[itemlink] then
		return false, slot, change or 0, score or 0, comment or "rejected", futurevalid, slot_2, change_2
	end

	local item = ItemScore:GetResolvedItemDetails(itemlink) or ItemScore:GetItemDetailsQueued(itemlink, true) or ItemScore:GetItemDetailsFromDB(itemlink)
	if not item then
		return false, slot, change or 0, score or 0, comment or "pending details", futurevalid, slot_2, change_2
	end

	local scored, success = ItemScore:GetItemScore(itemlink)
	if success then
		item.score = scored
	elseif item.score == nil then
		return false, slot, change or 0, score or 0, comment or "not scored", futurevalid, slot_2, change_2
	end

	local validity = ItemScore:GetItemValidity(itemlink, future)
	if not (validity and validity.valid) then
		return false, validity and validity.slot or slot, 0, item.score or score or 0, validity and validity.reason or comment or "not valid", futurevalid, validity and validity.slot_2 or slot_2, change_2
	end

	local function positive_comparison(slotid)
		if not slotid then return nil end
		if ItemScore.Upgrades.CanUseUniqueItem and not ItemScore.Upgrades:CanUseUniqueItem(itemlink, slotid) then return nil end
		local comparison = ItemScore.Upgrades:GetUpgradeComparison(slotid, item)
		if comparison and (comparison.isNewItem or (tonumber(comparison.deltaScore) or 0) > 0) then
			return comparison
		end
		return nil
	end

	local comparison_1 = positive_comparison(validity.slot or item.slot)
	local comparison_2 = positive_comparison(validity.slot_2 or item.slot_2)
	local delta_1 = comparison_1 and (tonumber(comparison_1.deltaScore) or 0) or nil
	local delta_2 = comparison_2 and (tonumber(comparison_2.deltaScore) or 0) or nil
	local primary_slot = validity.slot or item.slot
	local secondary_slot = validity.slot_2 or item.slot_2

	if comparison_1 and comparison_2 then
		return true, primary_slot, delta_1, item.score or score or 0, "ok db comparison", false, secondary_slot, delta_2
	elseif comparison_1 then
		return true, primary_slot, delta_1, item.score or score or 0, "ok db comparison"
	elseif comparison_2 then
		return true, secondary_slot, delta_2, item.score or score or 0, "ok db comparison"
	end

	return false, primary_slot, 0, item.score or score or 0, comment or "not upgrade"
end

local function GF_ShouldIncludeCandidate(itemlink, future)
	if not itemlink then return false end
	local verdict = ItemScore:GetItemValidity(itemlink, future)
	return verdict and verdict.valid and true or false
end

local function GF_IsCuratedSourceKey(dungeonKey)
	return type(dungeonKey) == "string" and dungeonKey:find("\\", 1, true) ~= nil
end

local function GF_GetBossDropItems(bossdata, player)
	if type(bossdata) ~= "table" then return nil end

	local player_items = bossdata[player] or bossdata["ALL"]
	if player_items then return player_items end

	local flat = {}
	for k,v in pairs(bossdata) do
		if type(k) == "number" then
			flat[#flat + 1] = v
		end
	end
	if #flat > 0 then return flat end

	return nil
end

local function GF_IsPhaseActive(phase)
	if not phase then return true end
	if ZGV.IsClassicWOTLK and type(phase) == "string" and phase:match("^wotlk%d") then
		return true
	end
	return ZGV.Dungeons and ZGV.Dungeons.Phases and ZGV.Dungeons.Phases[phase]
end

local function GF_GetFactionVendor(source)
	if type(source) ~= "table" or type(source.vendors) ~= "table" then return nil end
	local faction = (UnitFactionGroup and UnitFactionGroup("player")) or GearFinder.playerfaction or "Alliance"
	return source.vendors[faction] or source.vendors.Neutral
end

local function GF_NormalizeProfessionName(name)
	if not name then return nil end
	return tostring(name):lower():gsub("[^a-z]", "")
end

local function GF_GetPlayerProfessionSkills()
	local skills = {}
	if GetProfessions and GetProfessionInfo then
		local p1, p2, archaeology, fishing, cooking, firstAid = GetProfessions()
		local professionIndexes = { p1, p2, archaeology, fishing, cooking, firstAid }
		for _, index in ipairs(professionIndexes) do
			if index then
				local name, icon, rank = GetProfessionInfo(index)
				local normalized = GF_NormalizeProfessionName(name)
				if normalized then skills[normalized] = tonumber(rank) or 0 end
			end
		end
	end
	if GetNumSkillLines and GetSkillLineInfo then
		for i = 1, GetNumSkillLines() do
			local skillName, header, isExpanded, skillRank = GetSkillLineInfo(i)
			local normalized = GF_NormalizeProfessionName(skillName)
			if normalized then
				skills[normalized] = math.max(skills[normalized] or 0, tonumber(skillRank) or 0)
			end
		end
	end
	return skills
end

local function GF_GetPlayerProfessionSkill(profession)
	local normalized = GF_NormalizeProfessionName(profession)
	if not normalized then return 0 end
	GearFinder.PlayerProfessionSkills = GearFinder.PlayerProfessionSkills or GF_GetPlayerProfessionSkills()
	return GearFinder.PlayerProfessionSkills[normalized] or 0
end

local function GF_PlayerKnowsSpell(spellID)
	if not spellID then return false end
	if IsSpellKnown and IsSpellKnown(spellID) then return true end
	if IsPlayerSpell and IsPlayerSpell(spellID) then return true end
	local spellName = GetSpellInfo and GetSpellInfo(spellID)
	if not spellName or not GetNumSpellTabs or not GetSpellTabInfo or not GetSpellName then return false end
	local bookType = BOOKTYPE_SPELL or "spell"
	for tab = 1, GetNumSpellTabs() do
		local name, texture, offset, numSpells = GetSpellTabInfo(tab)
		offset = tonumber(offset) or 0
		numSpells = tonumber(numSpells) or 0
		for i = offset + 1, offset + numSpells do
			local ok, knownName = pcall(GetSpellName, i, bookType)
			if ok and knownName == spellName then return true end
		end
	end
	return false
end

local function GF_GetPlayerProfessionSpecializations()
	local specs = {}
	local known = {
		spellfire_tailoring = 26797,
		mooncloth_tailoring = 26798,
		shadoweave_tailoring = 26801,
		dragonscale_leatherworking = 10656,
		elemental_leatherworking = 10658,
		tribal_leatherworking = 10660,
	}
	for key, spellID in pairs(known) do
		if GF_PlayerKnowsSpell(spellID) then specs[key] = true end
	end
	return specs
end

local function GF_HasPlayerProfessionSpecialization(specialization)
	if not specialization then return true end
	GearFinder.PlayerProfessionSpecializations = GearFinder.PlayerProfessionSpecializations or GF_GetPlayerProfessionSpecializations()
	return GearFinder.PlayerProfessionSpecializations[specialization] and true or false
end

local function GF_CompactMapKeys(map)
	if type(map) ~= "table" then return "" end
	local keys = {}
	for key, value in pairs(map) do
		if value and type(value) == "number" and value > 0 then
			keys[#keys + 1] = ("%s:%d"):format(tostring(key), value)
		elseif value then
			keys[#keys + 1] = tostring(key)
		end
	end
	table.sort(keys)
	return table.concat(keys, ",")
end

local function GF_IsValidVendorSource(source)
	if not source then return false, "missing source" end
	if ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_currency_rewards == false then
		return false, "currency filtered out"
	end
	if source.expansionLevel and source.expansionLevel > (GearFinder.CurrentExpansion or 2) then
		return false, "no expansion " .. source.expansionLevel
	end
	if (tonumber(ItemScore.playerlevel) or 0) >= 80 and source.expansionLevel and source.expansionLevel < 2 then
		return false, "old expansion currency filtered out"
	end
	if source.minLevel and source.minLevel > (ItemScore.playerlevel or 0) then
		return false, "need level " .. source.minLevel
	end
	if not GF_IsPhaseActive(source.phase) then
		return false, "phase inactive"
	end
	return true
end

local function GF_IsValidCraftedSource(source)
	if not source then return false, "missing crafted source" end
	if ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_items == false then
		return false, "crafted filtered out"
	end
	local playerLevel = tonumber(ItemScore.playerlevel) or 0
	local tierProgression = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_tier_progression_mode == true
	if playerLevel >= 80 then
		if source.expansionLevel and source.expansionLevel < 2 then
			return false, "crafted old expansion filtered out"
		end
		if source.category == "leveling" then
			return false, "crafted leveling filtered out at max level"
		end
		if tierProgression and source.category == "raid" then
			return false, "crafted raid filtered out by progression"
		end
		if tierProgression and source.category == "pvp" then
			return false, "crafted pvp filtered out by progression"
		end
	end
	if (source.category == "leveling" or source.category == "pvp") and ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_leveling_items == false then
		return false, "crafted leveling filtered out"
	end
	if source.category == "pvp" and ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_pvp_items == false then
		return false, "crafted pvp filtered out"
	end
	if source.expansionLevel and source.expansionLevel > (GearFinder.CurrentExpansion or 2) then
		return false, "no expansion " .. source.expansionLevel
	end
	if source.minLevel and source.minLevel > (ItemScore.playerlevel or 0) then
		return false, "need level " .. source.minLevel
	end
	if not GF_IsPhaseActive(source.phase) then
		return false, "phase inactive"
	end
	return true
end

local function GF_IsValidCraftedItem(source, itemSource)
	if type(source) ~= "table" then return false, "missing crafted source" end
	itemSource = itemSource or {}
	local professionOnly = itemSource.professionOnly
	if professionOnly == nil then professionOnly = source.professionOnly end
	local bind = itemSource.bind or source.bind
	if professionOnly or bind == "bop" then
		local profession = itemSource.profession or source.profession
		local minSkill = tonumber(itemSource.minSkill or source.minSkill) or 0
		local playerSkill = GF_GetPlayerProfessionSkill(profession)
		if playerSkill < minSkill then
			return false, ("need %s %d"):format(tostring(profession or "profession"), minSkill)
		end
	end
	local specialization = itemSource.specialization or source.specialization
	if specialization and not GF_HasPlayerProfessionSpecialization(specialization) then
		return false, ("need %s"):format(tostring(specialization))
	end
	local minLevel = tonumber(itemSource.minLevel or source.minLevel) or 0
	if minLevel > (tonumber(ItemScore.playerlevel) or 0) then
		return false, ("need level %d"):format(minLevel)
	end
	return true
end

local function GF_HasAnySourceEnabled()
	local profile = ZGV.db and ZGV.db.profile
	if not profile or profile.autogear == false then return false end
	if profile.gear_1 then return true end
	if profile.gear_2 then return true end
	if profile.gear_3 or profile.gear_4 then return true end
	if profile.gear_5 or profile.gear_6 then return true end
	if profile.gear_currency_rewards ~= false then return true end
	if profile.gear_crafted_items ~= false then return true end
	return false
end

local function GF_AddVendorFields(item, itemdata)
	if not item or not itemdata then return item end
	item.sourceType = itemdata.sourceType
	item.vendorSource = itemdata.vendorSource
	item.vendorSourceName = itemdata.vendorSourceName
	item.currency = itemdata.currency
	item.currencyItem = itemdata.currencyItem
	item.cost = itemdata.cost
	item.vendorName = itemdata.vendorName
	item.vendorLocation = itemdata.vendorLocation
	item.vendorShortLocation = itemdata.vendorShortLocation
	item.vendorWaypoint = itemdata.vendorWaypoint
	item.profession = itemdata.profession
	item.minProfessionSkill = itemdata.minProfessionSkill
	item.craftedMinLevel = itemdata.minLevel
	item.professionOnly = itemdata.professionOnly
	item.bind = itemdata.bind
	item.recipeName = itemdata.recipeName
	item.sourceNote = itemdata.sourceNote
	item.craftedCategory = itemdata.craftedCategory
	item.professionSpecialization = itemdata.professionSpecialization
	return item
end

local function GF_FormatVendorLine(upgrade)
	local cost = tonumber(upgrade.cost)
	local currency = upgrade.currency or "currency"
	local location = upgrade.vendorShortLocation or upgrade.vendorLocation
	local costText
	if cost and cost > 0 then
		costText = ("%d %s"):format(cost, currency)
	else
		costText = currency
	end
	if location and location ~= "" then
		return ("%s - %s"):format(costText, location)
	end
	return costText
end

local function GF_FormatVendorLocation(upgrade)
	local vendor = upgrade.vendorName or upgrade.vendorSourceName or "Vendor"
	return ("%s - Dalaran"):format(vendor)
end

local function GF_FormatCraftedLocation(upgrade)
	local profession = upgrade.profession or upgrade.vendorSourceName or "Profession"
	return ("Crafted: %s"):format(profession)
end

local function GF_FormatCraftedLine(upgrade)
	local profession = upgrade.profession or "profession"
	local skill = tonumber(upgrade.minProfessionSkill) or 0
	local bind = upgrade.bind
	local professionOnly = upgrade.professionOnly or bind == "bop"
	local specialization = upgrade.professionSpecialization
	local suffix = ""
	if upgrade.craftedCategory == "pvp" then
		suffix = " - PvP starter"
	elseif upgrade.craftedCategory == "raid" then
		suffix = " - raid craft"
	elseif upgrade.craftedCategory == "pre_raid" then
		suffix = " - pre-raid craft"
	elseif upgrade.craftedCategory == "leveling" then
		suffix = " - leveling craft"
	end
	if professionOnly then
		if specialization and skill > 0 then return ("Requires %s %d (%s)%s"):format(profession, skill, specialization, suffix) end
		if specialization then return ("Requires %s (%s)%s"):format(profession, specialization, suffix) end
		if skill > 0 then return ("Requires %s %d%s"):format(profession, skill, suffix) end
		return ("Requires %s%s"):format(profession, suffix)
	end
	if skill > 0 then return ("Made by %s %d%s"):format(profession, skill, suffix) end
	return ("Made by %s%s"):format(profession, suffix)
end

local function GF_FormatSpecialSource(upgrade)
	local special = upgrade and upgrade.special
	if not special or special == "" then return nil end
	if special:find("Tribunal of Ages") then return "Tribunal Chest" end
	return special
end

local GF_StaticItemSourceLabels = {
	[37655] = "Tribunal Chest",
	[37730] = "Boss: Commander Kolurg",
}

local function GF_FormatStaticItemSource(upgrade)
	local itemid = upgrade and tonumber(upgrade.itemid)
	return itemid and GF_StaticItemSourceLabels[itemid] or nil
end

local function GF_GetSourceTooltipLines(upgrade)
	if not upgrade then return nil end
	local lines = {}
	if upgrade.sourceType == "currency" then
		local costLine = GF_FormatVendorLine(upgrade)
		lines[#lines + 1] = "Source: Currency reward"
		lines[#lines + 1] = "Cost: " .. costLine
		if upgrade.vendorName then lines[#lines + 1] = "Vendor: " .. upgrade.vendorName end
		if upgrade.vendorLocation then lines[#lines + 1] = "Location: " .. upgrade.vendorLocation end
	elseif upgrade.sourceType == "crafted" then
		lines[#lines + 1] = "Source: Crafted item"
		lines[#lines + 1] = GF_FormatCraftedLine(upgrade)
		if upgrade.professionSpecialization then
			lines[#lines + 1] = "Specialization: " .. upgrade.professionSpecialization
		end
		if upgrade.bind == "bop" or upgrade.professionOnly then
			lines[#lines + 1] = "Bind: Profession-only"
		elseif upgrade.bind == "boe" then
			lines[#lines + 1] = "Bind: Tradeable craft"
		end
	end
	return lines[1] and lines or nil
end

local function GF_GetDungeonLeafName(dungeonName)
	if not dungeonName then return nil end
	return tostring(dungeonName):match("([^\\]+)$")
end

local function GF_NormalizeDungeonName(name)
	if not name then return nil end
	name = tostring(name)
	name = name:gsub("%s*%([Hh]eroic%)$", "")
	name = name:gsub("^The%s+", "")
	name = name:gsub("%s+", " ")
	return name:lower()
end

local GF_GUIDE_HERO_IMAGE_DIR = ZGV.DIR.."\\Skins\\GuideImages\\"
local GF_GUIDE_HERO_KEYWORDS = {
	{ "blackfathom", "ashenvale" },
	{ "blackrock", "burningsteppes" },
	{ "dire maul", "feralas" },
	{ "gnomeregan", "lochmodan" },
	{ "maraudon", "desolace" },
	{ "ragefire", "tanaris" },
	{ "razorfen", "tanaris" },
	{ "scarlet monastery", "duskwood" },
	{ "scholomance", "duskwood" },
	{ "shadowfang", "duskwood" },
	{ "stratholme", "duskwood" },
	{ "deadmines", "westfall" },
	{ "stockade", "elwynn" },
	{ "atal'hakkar", "swampofsorrows" },
	{ "uldaman", "badlands" },
	{ "wailing caverns", "ashenvale" },
	{ "zul'farrak", "tanaris" },
	{ "molten core", "burningsteppes" },
	{ "blackwing lair", "burningsteppes" },
	{ "ruins of ahn'qiraj", "silithus" },
	{ "temple of ahn'qiraj", "silithus" },
	{ "ahn'qiraj", "silithus" },
	{ "world bosses", "winterspring" },
	{ "zul'gurub", "stranglethorn" },
	{ "hellfire", "hellfire" },
	{ "blood furnace", "hellfire" },
	{ "shattered halls", "hellfire" },
	{ "slave pens", "zangarmarsh" },
	{ "underbog", "zangarmarsh" },
	{ "steamvault", "zangarmarsh" },
	{ "auchenai", "terokkar" },
	{ "sethekk", "terokkar" },
	{ "shadow labyrinth", "terokkar" },
	{ "mana-tombs", "terokkar" },
	{ "old hillsbrad", "tanaris" },
	{ "black morass", "tanaris" },
	{ "botanica", "netherstorm" },
	{ "mechanar", "netherstorm" },
	{ "arcatraz", "netherstorm" },
	{ "magisters", "terokkar" },
	{ "black temple", "shadowmoon" },
	{ "gruul", "bladesedge" },
	{ "hyjal", "tanaris" },
	{ "karazhan", "duskwood" },
	{ "magtheridon", "hellfire" },
	{ "serpentshrine", "zangarmarsh" },
	{ "sunwell", "terokkar" },
	{ "tempest keep", "netherstorm" },
	{ "zul'aman", "terokkar" },
	{ "icecrown", "icecrown" },
	{ "pit of saron", "icecrown" },
	{ "forge of souls", "icecrown" },
	{ "halls of reflection", "icecrown" },
	{ "trial of the champion", "stormpeaks" },
	{ "trial of the crusader", "stormpeaks" },
	{ "violet hold", "dragonblight" },
	{ "nexus", "borean" },
	{ "oculus", "borean" },
	{ "utgarde", "howling" },
	{ "gundrak", "zuldrak" },
	{ "drak'tharon", "grizzlyhills" },
	{ "azjol", "dragonblight" },
	{ "ahn'kahet", "dragonblight" },
	{ "halls of lightning", "stormpeaks" },
	{ "halls of stone", "stormpeaks" },
	{ "ulduar", "stormpeaks" },
	{ "eye of eternity", "borean" },
	{ "malygos", "borean" },
	{ "vault of archavon", "dragonblight" },
	{ "archavon", "dragonblight" },
	{ "culling of stratholme", "dragonblight" },
	{ "naxxramas", "dragonblight" },
	{ "obsidian sanctum", "dragonblight" },
	{ "ruby sanctum", "dragonblight" },
	{ "onyxia", "burningsteppes" },
}

local function GF_ResolveFooterImage(dungeonGuide, dungeon)
	local hay = ""
	if dungeonGuide then
		hay = ((dungeonGuide.title or "") .. " " .. (dungeonGuide.title_short or ""))
	end
	if dungeon and dungeon.name then
		hay = hay .. " " .. dungeon.name
	end
	hay = string.lower(hay)
	for _, entry in ipairs(GF_GUIDE_HERO_KEYWORDS) do
		if string.find(hay, entry[1], 1, true) then
			return GF_GUIDE_HERO_IMAGE_DIR .. entry[2] .. ".blp"
		end
	end
	if dungeonGuide and dungeonGuide.image and dungeonGuide.image ~= "" then
		return dungeonGuide.image
	end
	return nil
end

local function GF_GetFallbackFooterImageForLevel(level)
	level = tonumber(level) or 80
	local image
	if level < 20 then
		image = "elwynn"
	elseif level < 30 then
		image = "redridge"
	elseif level < 40 then
		image = "stranglethorn"
	elseif level < 50 then
		image = "tanaris"
	elseif level < 58 then
		image = "winterspring"
	elseif level < 62 then
		image = "hellfire"
	elseif level < 64 then
		image = "zangarmarsh"
	elseif level < 66 then
		image = "terokkar"
	elseif level < 68 then
		image = "nagrand"
	elseif level < 70 then
		image = "netherstorm"
	elseif level < 72 then
		image = "borean"
	elseif level < 74 then
		image = "howling"
	elseif level < 76 then
		image = "dragonblight"
	elseif level < 78 then
		image = "zuldrak"
	elseif level < 80 then
		image = "stormpeaks"
	else
		image = "icecrown"
	end
	return GF_GUIDE_HERO_IMAGE_DIR .. image .. ".blp"
end

local function GF_GetDungeonData(ident)
	local dungeons = ZGV.Dungeons
	if not dungeons then return nil end
	return dungeons[ident] or (dungeons.hardcoded_dungeons and dungeons.hardcoded_dungeons[ident]) or nil
end

local function GF_ResolveDungeonIdent(dungeonId, instanceId, dungeonName, heroic)
	local dungeons = ZGV.Dungeons
	if not dungeons then return dungeonId end

	local candidates = {}
	if instanceId ~= nil then
		candidates[#candidates + 1] = instanceId
		if heroic and type(instanceId) == "number" then
			candidates[#candidates + 1] = tostring(instanceId) .. "H"
		end
	end

	for _, candidate in ipairs(candidates) do
		if GF_GetDungeonData(candidate) then
			return candidate
		end
	end

	local leafName = GF_GetDungeonLeafName(dungeonName)
	if not leafName or not dungeons.hardcoded_dungeons then return dungeonId end
	local wantedName = GF_NormalizeDungeonName(leafName)

	for ident, data in pairs(dungeons.hardcoded_dungeons) do
		local difficulty = data and data.difficulty
		local matchesDifficulty
		if heroic then
			matchesDifficulty = difficulty == 2 or tostring(ident):match("H$")
		else
			matchesDifficulty = difficulty == 1 or difficulty == 3 or difficulty == 4 or difficulty == 14
		end
		if data and GF_NormalizeDungeonName(data.name) == wantedName and matchesDifficulty then
			return ident
		end
	end

	return dungeonId
end

local WOTLK_CATCHUP_DUNGEONS = {
	[650] = true, ["650H"] = true, -- Trial of the Champion
	[632] = true, ["632H"] = true, -- The Forge of Souls
	[658] = true, ["658H"] = true, -- Pit of Saron
	[668] = true, ["668H"] = true, -- Halls of Reflection
}

-- remove all non-player class drops, and all bosses that do not drop anything for player
function GearFinder:TrimDatabase() 
	local player = ZGV.ItemScore.playerclass

	for i,instance in pairs(ZygorGuidesViewer.ItemScore.Items) do
		for bossindex,boss in pairs(instance) do
			if type(boss)=="table" then
				local player_items = GF_GetBossDropItems(boss, player)
				for classindex,class in pairs(boss) do
					if type(class)=="table" then -- strip non quest drops for classes other than current
						if classindex~=player and classindex~="quest" then
							boss[classindex]=nil
						end
					end
				end
				if not player_items or #player_items==0 then -- strip bosses that do not offer anything to current class
					instance[bossindex]=nil
				end
			end
		end
	end
end

-- checks if gear from specific dungeon can be suggested
--	dungeon - int - dungeon id, as used in ZGV.Dungeons
--	instance - int - dungeon id, as used in ZGV.Dungeons
-- returns:
--	valid - bool - can be suggested now
--	future - bool - may contains upgrades later (level, ilvl, attunment)
--	ident - string or int - identificator of dungeon
--	maxscale - int - maximum level up to which drops are scaled
--	mythic - bool - is this a mythic dungeon
--	comment - string - verbose message
function GearFinder:IsValidDungeon(dungeon, instanceId, dungeonName, heroic)
	local ident = GF_ResolveDungeonIdent(dungeon, instanceId, dungeonName, heroic)
	if ident==0 and instanceId then ident="e_"..instanceId end

	local dungeon = GF_GetDungeonData(ident)

	if not dungeon then return false, false, ident, 0, false, false, "no dungeon" end
	if dungeon.phase and not GF_IsPhaseActive(dungeon.phase) then return false, false, ident, 0, false, false, "phase inactive" end

	-- 3.3.5a: no Chromie Time, no Mythic+
	local maxScaleLevel = dungeon.maxScaleLevel or 80

	-- handle permanent rejects
	if dungeon.max_level and dungeon.max_level<ItemScore.playerlevel then return false, false, ident, 0, false, false, "instance disabled" end
	if dungeon.expansionLevel>GearFinder.CurrentExpansion then return false, false, ident, 0, false, false, "no expansion " ..dungeon.expansionLevel end
	if (tonumber(ItemScore.playerlevel) or 0) >= 80 and dungeon.expansionLevel and dungeon.expansionLevel < 2 then return false, false, ident, 0, false, false, "old expansion filtered out" end
	if ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_tier_progression_mode == true and WOTLK_CATCHUP_DUNGEONS[ident] then return false, false, ident, 0, false, false, "catch-up dungeon filtered out" end
	if dungeon.difficulty and not ZGV.db.profile["gear_"..dungeon.difficulty] then return false, false, ident, 0, false, false, "instance filtered out"..dungeon.difficulty end

	if dungeon.isHoliday then return false, false, ident, 0, false, false, "holiday dungeons not supported" end
	if dungeon.minLevel and dungeon.minLevel > (ItemScore.playerlevel+GearFinder.FUTURE_DUNGEONS_LIMIT) then return false, false, ident, 0, false, false, "need way higher level "..dungeon.minLevel end
	if dungeon.minLevel and dungeon.minLevel < (ItemScore.playerlevel-GearFinder.PAST_DUNGEONS_LIMIT) then return false, false, ident, 0, false, false, "outleveled "..dungeon.minLevel end
	if maxScaleLevel < (ItemScore.playerlevel-GearFinder.PAST_DUNGEONS_LIMIT) then return false, false, ident, 0, false, false, "outleveled "..maxScaleLevel..":"..(ItemScore.playerlevel-GearFinder.PAST_DUNGEONS_LIMIT)  end

	-- 3.3.5a: no LFG dungeon joinable check, no mythic
	local mythic = false
	local mythicplus = false

	-- handle future rejects
	if dungeon.minLevel and dungeon.minLevel > ItemScore.playerlevel then return false, true, ident, dungeon.maxScaleLevel, mythic, mythicplus, "need higher level" end
	-- 3.3.5a: no player ilvl system, skip min_ilevel check

	-- attunements
	if dungeon.attunement_achieve then
		local _,_,_,complete = GetAchievementInfo(dungeon.attunement_achieve)
		if not complete then return false, true, ident, maxScaleLevel, mythic, mythicplus, "attunement needed" end
	end	
	if dungeon.attunement_quest and not IsQuestFlaggedCompleted(dungeon.attunement_quest) then return false, true, ident, maxScaleLevel, mythic, mythicplus, "attunement needed" end
	if dungeon.attunement_queston and not (IsQuestFlaggedCompleted(dungeon.attunement_queston) or ZGV.Parser.ConditionEnv.haveq(dungeon.attunement_queston)) then return false, true, ident, maxScaleLevel, mythic, mythicplus, "attunement needed" end

	return true, true, ident, maxScaleLevel, mythic, mythicplus, "ok"
end

GearFinder.UpgradeQueue = {
	[INVSLOT_MAINHAND] = {},
	[INVSLOT_OFFHAND] = {},
	[INVSLOT_HEAD] = {},
	[INVSLOT_NECK] = {},
	[INVSLOT_SHOULDER] = {},
	[INVSLOT_BACK] = {},
	[INVSLOT_CHEST] = {},
	[INVSLOT_WRIST] = {},
	[INVSLOT_HAND] = {},
	[INVSLOT_WAIST] = {},
	[INVSLOT_LEGS] = {},
	[INVSLOT_FEET] = {},
	[INVSLOT_FINGER1] = {},
	[INVSLOT_FINGER2] = {},
	[INVSLOT_TRINKET1] = {},
	[INVSLOT_TRINKET2] = {},
}

GearFinder.FallbackQueue = {
	[INVSLOT_MAINHAND] = {},
	[INVSLOT_OFFHAND] = {},
	[INVSLOT_HEAD] = {},
	[INVSLOT_NECK] = {},
	[INVSLOT_SHOULDER] = {},
	[INVSLOT_BACK] = {},
	[INVSLOT_CHEST] = {},
	[INVSLOT_WRIST] = {},
	[INVSLOT_HAND] = {},
	[INVSLOT_WAIST] = {},
	[INVSLOT_LEGS] = {},
	[INVSLOT_FEET] = {},
	[INVSLOT_FINGER1] = {},
	[INVSLOT_FINGER2] = {},
	[INVSLOT_TRINKET1] = {},
	[INVSLOT_TRINKET2] = {},
}

if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
	GearFinder.UpgradeQueue[INVSLOT_RANGED] = {}
	GearFinder.FallbackQueue[INVSLOT_RANGED] = {}
end

GearFinder.DebugSlotStats = {}
GearFinder.DebugSlotReject = {}

local function reset_debug_slot_stats()
	table.wipe(GearFinder.DebugSlotStats)
	table.wipe(GearFinder.DebugSlotReject)
	for slot in pairs(GearFinder.UpgradeQueue) do
		GearFinder.DebugSlotStats[slot] = {
			seen = 0,
			resolved = 0,
			valid = 0,
			upgrades = 0,
			fallback = 0,
			meta = 0,
		}
	end
end

local function add_slot_debug(slot, field, amount)
	local stats = GearFinder.DebugSlotStats and GearFinder.DebugSlotStats[slot]
	if not stats then return end
	stats[field] = (stats[field] or 0) + (amount or 1)
end

local function set_slot_reject(slot, reason)
	if not slot then return end
	GearFinder.DebugSlotReject[slot] = tostring(reason or "")
end

local function set_slot_compare_reject(slot, item)
	if not slot or not item or not ItemScore or not ItemScore.Upgrades or not ItemScore.Upgrades.GetUpgradeComparison then return end
	local comparison = ItemScore.Upgrades:GetUpgradeComparison(slot, item)
	if not comparison then return end
	local delta = tonumber(comparison.deltaScore) or 0
	local candidate = tonumber(comparison.candidateScore) or 0
	local baseline = tonumber(comparison.baselineScore) or 0
	if comparison.isNewItem then
		set_slot_reject(slot, ("reject: new item score %.1f"):format(candidate))
	elseif delta <= 0 then
		set_slot_reject(slot, ("reject: score %.1f <= %.1f"):format(candidate, baseline))
	else
		set_slot_reject(slot, ("reject: delta %.1f"):format(delta))
	end
end

local function get_slot_debug_reason(slot)
	local stats = GearFinder.DebugSlotStats and GearFinder.DebugSlotStats[slot]
	if GearFinder.LastError then
		return ("ERR %s"):format(tostring(GearFinder.LastError):sub(1, 30))
	end
	local reject = GearFinder.DebugSlotReject and GearFinder.DebugSlotReject[slot]
	if reject and reject ~= "" then
		return reject
	end
	if not stats then return "DBG:no-data" end
	return ("S%d R%d V%d M%d F%d U%d"):format(
		stats.seen or 0,
		stats.resolved or 0,
		stats.valid or 0,
		stats.meta or 0,
		stats.fallback or 0,
		stats.upgrades or 0
	)
end

local function safe_get_item_details(itemlink)
	local ok, result = pcall(function()
		return ItemScore:GetItemDetails(itemlink) or ItemScore:GetItemDetailsQueued(itemlink, true) or ItemScore:GetItemDetailsFromDB(itemlink)
	end)
	if not ok then
		return nil, result
	end
	return result, nil
end

-- those slots should not have the same item suggested
local slot_pairs = {
	[INVSLOT_MAINHAND] = INVSLOT_OFFHAND,
	[INVSLOT_FINGER1] = INVSLOT_FINGER2,
	[INVSLOT_TRINKET1] = INVSLOT_TRINKET2,
}

local distinct_slot_pairs = {
	[INVSLOT_FINGER1] = INVSLOT_FINGER2,
	[INVSLOT_TRINKET1] = INVSLOT_TRINKET2,
}

local reverse_distinct_slot_pairs = {}
for first, second in pairs(distinct_slot_pairs) do
	reverse_distinct_slot_pairs[second] = first
end

local function get_distinct_pair_partner(slot)
	return distinct_slot_pairs[slot] or reverse_distinct_slot_pairs[slot]
end

local function get_candidate_item_id(item)
	if not item then return nil end
	if item.itemid then return tonumber(item.itemid) end
	return GF_GetItemID(item.itemlinkfull or item.itemlink)
end

local function is_candidate_equipped_in_slot(slot, itemid)
	if not slot or not itemid then return false end
	local upgrades = ItemScore and ItemScore.Upgrades
	if not upgrades or not upgrades.GetEquippedItemData then return false end
	local equipped = upgrades:GetEquippedItemData(slot)
	if not equipped then return false end
	local equippedID = tonumber(equipped.itemid) or GF_GetItemID(equipped.itemlink)
	return equippedID and equippedID == itemid or false
end

local function is_candidate_already_equipped_for_slot(slot, item)
	local itemid = get_candidate_item_id(item)
	if not itemid then return false end
	if is_candidate_equipped_in_slot(slot, itemid) then return true end
	local partner = get_distinct_pair_partner(slot)
	return partner and is_candidate_equipped_in_slot(partner, itemid) or false
end

local function queue_upgrade_candidate(slot, item)
	if not slot or not item or not GearFinder.UpgradeQueue[slot] then return false end
	if is_candidate_already_equipped_for_slot(slot, item) then
		set_slot_reject(slot, "reject: already equipped")
		return false
	end
	table.insert(GearFinder.UpgradeQueue[slot], item)
	add_slot_debug(slot, "upgrades")
	return true
end

local function is_known_negative_fallback(slot, item)
	if not slot or not item or not ItemScore or not ItemScore.Upgrades or not ItemScore.Upgrades.GetUpgradeComparison then return false end
	local comparison = ItemScore.Upgrades:GetUpgradeComparison(slot, item)
	local delta = comparison and tonumber(comparison.deltaScore)
	return delta and delta < 0 or false
end

local function is_known_positive_fallback(slot, item)
	if not slot or not item or not ItemScore or not ItemScore.Upgrades or not ItemScore.Upgrades.GetUpgradeComparison then return false end
	local comparison = ItemScore.Upgrades:GetUpgradeComparison(slot, item)
	local delta = comparison and tonumber(comparison.deltaScore)
	return (comparison and comparison.isNewItem) or (delta and delta > 0) or false
end

-- checks if gearfounder got upgrades for all slots, so that we may skip looking for future upgrades
-- no params
-- returns
--	bool - are all slots filled
local function are_all_slots_filled()
	for slot,data in pairs(GearFinder.UpgradeQueue) do
		if not next(data) then
			return false
		end
	end
	return true
end

local function same_finder_candidate(a, b)
	if not a or not b then return false end
	local aid = get_candidate_item_id(a)
	local bid = get_candidate_item_id(b)
	if aid and bid then return aid == bid end
	local alink = strip_link(a.itemlinkfull or a.itemlink)
	local blink = strip_link(b.itemlinkfull or b.itemlink)
	return alink and blink and alink == blink or false
end

local function get_queue_delta_candidate(entry)
	return (entry and tonumber(entry.deltascore)) or (entry and tonumber(entry.score)) or -math.huge
end

local function enforce_distinct_pair_results(pairset)
	for first, second in pairs(pairset) do
		local first_queue = GearFinder.UpgradeQueue[first]
		local second_queue = GearFinder.UpgradeQueue[second]
		if first_queue and second_queue then
			while first_queue[1] and second_queue[1] and same_finder_candidate(first_queue[1], second_queue[1]) do
				local firstAlt = first_queue[2]
				local secondAlt = second_queue[2]
				if secondAlt and not firstAlt then
					table.remove(second_queue, 1)
				elseif firstAlt and not secondAlt then
					table.remove(first_queue, 1)
				elseif firstAlt and secondAlt then
					local firstLoss = get_queue_delta_candidate(first_queue[1]) - get_queue_delta_candidate(firstAlt)
					local secondLoss = get_queue_delta_candidate(second_queue[1]) - get_queue_delta_candidate(secondAlt)
					if secondLoss <= firstLoss then
						table.remove(second_queue, 1)
					else
						table.remove(first_queue, 1)
					end
				else
					table.remove(second_queue, 1)
				end
			end
		end
	end
end

local function get_equipped_item_level(slot)
	local upgrades = ItemScore and ItemScore.Upgrades
	if not upgrades or not upgrades.GetEquippedItemData then return 0 end
	local equipped = upgrades:GetEquippedItemData(slot)
	local details = equipped and equipped.itemlink and ItemScore:GetItemDetails(equipped.itemlink)
	return details and details.itemlvl or 0
end

local function get_fallback_metric(item)
	if not item then return 0 end
	return (tonumber(item.itemlvl) or 0) * 1000 + (tonumber(item.score) or 0)
end

local function get_upgrade_step(slot, item)
	if not slot or not item then return math.huge end
	local baseline = get_equipped_item_level(slot)
	local candidate = tonumber(item.itemlvl) or 0
	if candidate <= 0 then return math.huge end
	if baseline <= 0 then return candidate end
	local delta = candidate - baseline
	if delta <= 0 then return math.huge end
	return delta
end

local function clone_item_entry(item)
	if not item then return nil end
	local copy = {}
	for key, value in pairs(item) do
		copy[key] = value
	end
	if item.stats then
		copy.stats = {}
		for statKey, statValue in pairs(item.stats) do
			copy.stats[statKey] = statValue
		end
	end
	return copy
end

local PHASE_PRIORITY = {
	wotlk1 = 1,
	wotlk2 = 2,
	wotlk3 = 3,
	wotlk4 = 4,
	wotlk5 = 5,
}

local function get_progression_priority(item)
	if item and item.sourceType == "currency" then return 0, 0, 0, 0, 0 end
	if item and item.sourceType == "crafted" then
		if item.craftedCategory == "pre_raid" or item.craftedCategory == "leveling" then return 1, 0, 0, 0, 0 end
		if item.craftedCategory == "raid" then return 55, 0, 0, 0, 0 end
		if item.craftedCategory == "pvp" then return 56, 0, 0, 0, 0 end
		if item.bind == "boe" then return 2, 0, 0, 0, 0 end
		if item.professionOnly or item.bind == "bop" then return 3, 0, 0, 0, 0 end
		return 2, 0, 0, 0, 0
	end

	local dungeon = item and item.ident and GF_GetDungeonData(item.ident)
	if not dungeon then return 99, 99, 99, 99, 99 end

	local difficulty = tonumber(dungeon.difficulty) or 99
	local phase = PHASE_PRIORITY[(item and item.phase) or dungeon.phase] or 99
	local minLevel = tonumber(dungeon.minLevel) or 0
	local levelGap = math.max(0, minLevel - (tonumber(ItemScore.playerlevel) or 0))
	local ident = item.ident
	local tier

	if dungeon.expansionLevel == 2 and WOTLK_CATCHUP_DUNGEONS[ident] then
		tier = difficulty == 1 and 50 or 51
	elseif difficulty == 1 then
		tier = 10
	elseif difficulty == 2 then
		tier = 20
	elseif difficulty >= 3 then
		tier = 30 + (phase * 10) + math.max(0, difficulty - 3)
	else
		tier = 90
	end

	return tier, phase, difficulty, levelGap, minLevel
end

local function get_access_priority(item)
	if item and item.sourceType == "currency" then return 0, 0, 0, 0, 0 end
	if item and item.sourceType == "crafted" then
		if item.craftedCategory == "pvp" then return 4, 0, 0, 0, 0 end
		if item.craftedCategory == "raid" then return 4, 1, 0, 0, 0 end
		if item.bind == "boe" then return 2, 0, 0, 0, 0 end
		if item.professionOnly or item.bind == "bop" then return 3, 0, 0, 0, 0 end
		return 2, 0, 0, 0, 0
	end
	local dungeon = item and item.ident and GF_GetDungeonData(item.ident)
	if not dungeon then return 5, 99, 99, 99, 99 end
	local difficulty = tonumber(dungeon.difficulty) or 99
	local contentBucket = difficulty >= 3 and 4 or 1
	local phase = PHASE_PRIORITY[(item and item.phase) or dungeon.phase] or 99
	local minLevel = tonumber(dungeon.minLevel) or 0
	local levelGap = math.max(0, minLevel - (tonumber(ItemScore.playerlevel) or 0))
	return contentBucket, difficulty, phase, levelGap, minLevel
end

local function get_content_tier(item)
	if item and (item.sourceType == "currency" or item.sourceType == "crafted") then return 0 end
	local dungeon = item and item.ident and GF_GetDungeonData(item.ident)
	if not dungeon then return 99 end
	local difficulty = tonumber(dungeon.difficulty) or 99
	return difficulty >= 3 and 1 or 0
end

local function is_more_accessible(a, b)
	local ar1, ar2, ar3, ar4, ar5 = get_access_priority(a)
	local br1, br2, br3, br4, br5 = get_access_priority(b)
	if ar1 ~= br1 then return ar1 < br1 end
	if ar2 ~= br2 then return ar2 < br2 end
	if ar3 ~= br3 then return ar3 < br3 end
	if ar4 ~= br4 then return ar4 < br4 end
	if ar5 ~= br5 then return ar5 < br5 end
	return false
end

local function is_tier_progression_mode()
	return ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_tier_progression_mode == true
end

local function get_progression_bis_category(item)
	if not item then return nil end
	if item.sourceType == "currency" or item.sourceType == "crafted" then
		return "pre_raid"
	end
	local tier, phase = get_progression_priority(item)
	tier = tonumber(tier) or 99
	phase = tonumber(phase) or 0
	if tier < 30 then return "pre_raid" end
	if phase == 1 then return "t7" end
	if phase == 2 then return "t8" end
	if phase == 3 then return "t9" end
	if phase == 4 then return "t10" end
	if phase == 5 then return "rs" end
	return nil
end

local function get_bis_progression_preference(slot, item)
	if not slot or not item or not ItemScore or not ItemScore.BISData then return nil end
	local itemID = get_candidate_item_id(item)
	if not itemID then return nil end
	local classToken = ItemScore.playerclass
	local buildNum = ItemScore.GetResolvedBuild and ItemScore:GetResolvedBuild(classToken, ItemScore.playerlevel, ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build) or (ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build)
	local category = get_progression_bis_category(item)
	local slotList = classToken and buildNum and category and ItemScore.BISData[classToken] and ItemScore.BISData[classToken][buildNum] and ItemScore.BISData[classToken][buildNum][category] and ItemScore.BISData[classToken][buildNum][category][slot]
	if not slotList then return nil end
	for index, listedID in ipairs(slotList) do
		if tonumber(listedID) == tonumber(itemID) then
			return {category = category, index = index}
		end
	end
	return nil
end

local function get_practical_score(item)
	return tonumber(item and (item.change or item.score or item.deltascore or item.itemlvl)) or 0
end

local function is_raid_craft(item)
	return item and item.sourceType == "crafted" and item.craftedCategory == "raid"
end

local function is_dungeon_drop(item)
	if not item or item.sourceType then return false end
	local dungeon = item.ident and GF_GetDungeonData(item.ident)
	if not dungeon then return false end
	local difficulty = tonumber(dungeon.difficulty) or 99
	return difficulty < 3
end

local function raid_craft_beats_dungeon(_raidCraft, _dungeonItem)
	-- Raid-crafted BoEs are useful fallback suggestions, but the default Gear Finder
	-- path should prefer nearby dungeon drops instead of assuming auction access.
	return false
end

local function is_close_practical_upgrade(a, b)
	local aScore = get_practical_score(a)
	local bScore = get_practical_score(b)
	local best = math.max(aScore, bScore)
	if best <= 0 then return true end
	local gap = math.abs(aScore - bScore)
	if (a and a.sourceType == "crafted" and a.craftedCategory == "raid") or (b and b.sourceType == "crafted" and b.craftedCategory == "raid") then
		return gap <= math.max(12, best * 0.15)
	end
	return gap <= math.max(5, best * 0.08)
end

local function compare_practical_upgrade(slot, a, b)
	if is_raid_craft(a) and is_dungeon_drop(b) then
		return raid_craft_beats_dungeon(a, b)
	elseif is_raid_craft(b) and is_dungeon_drop(a) then
		return not raid_craft_beats_dungeon(b, a)
	end
	local aScore = get_practical_score(a)
	local bScore = get_practical_score(b)
	if not is_close_practical_upgrade(a, b) and aScore ~= bScore then
		return aScore > bScore
	end
	local aStep = get_upgrade_step(slot, a)
	local bStep = get_upgrade_step(slot, b)
	if aStep ~= bStep and aStep ~= math.huge and bStep ~= math.huge then
		return aStep < bStep
	end
	if is_more_accessible(a,b) then
		return true
	elseif is_more_accessible(b,a) then
		return false
	end
	if aScore ~= bScore then return aScore > bScore end
	return (tonumber(a.itemlvl) or 0) > (tonumber(b.itemlvl) or 0)
end

local function compare_tier_progression_upgrade(slot, a, b)
	local ar1, ar2, ar3, ar4, ar5 = get_progression_priority(a)
	local br1, br2, br3, br4, br5 = get_progression_priority(b)
	if ar1 ~= br1 then return ar1 < br1 end
	if ar2 ~= br2 then return ar2 < br2 end
	if ar3 ~= br3 then return ar3 < br3 end
	if ar4 ~= br4 then return ar4 < br4 end
	if ar5 ~= br5 then return ar5 < br5 end
	local aBIS = get_bis_progression_preference(slot, a)
	local bBIS = get_bis_progression_preference(slot, b)
	if aBIS and bBIS and aBIS.index ~= bBIS.index then
		return aBIS.index < bBIS.index
	elseif aBIS and not bBIS then
		return true
	elseif bBIS and not aBIS then
		return false
	end
	if is_more_accessible(a,b) then
		return true
	elseif is_more_accessible(b,a) then
		return false
	end
	return compare_practical_upgrade(slot, a, b)
end

local function compare_current_upgrade(slot, a, b)
	if is_tier_progression_mode() then
		return compare_tier_progression_upgrade(slot, a, b)
	end
	return (tonumber(a.score) or 0) > (tonumber(b.score) or 0)
end

local function same_access_tier(a, b)
	local ar1, ar2, ar3, ar4, ar5 = get_access_priority(a)
	local br1, br2, br3, br4, br5 = get_access_priority(b)
	return ar1 == br1 and ar2 == br2 and ar3 == br3 and ar4 == br4 and ar5 == br5
end

local function prune_to_best_content_tier(queue)
	if not queue or not queue[1] then return end
	local bestTier = get_content_tier(queue[1])
	for idx = #queue, 2, -1 do
		if get_content_tier(queue[idx]) > bestTier then
			table.remove(queue, idx)
		end
	end
end

local function get_progression_band_cap()
	if not is_tier_progression_mode() then return nil end
	local bestDungeonTier
	local function scan_queue(queue)
		if not queue then return end
		for _, item in ipairs(queue) do
			if item.sourceType ~= "crafted" and item.sourceType ~= "currency" then
				local tier = get_progression_priority(item)
				if tier >= 10 and tier < 90 and (not bestDungeonTier or tier < bestDungeonTier) then
					bestDungeonTier = tier
				end
			end
		end
	end
	for _, queue in pairs(GearFinder.UpgradeQueue or {}) do scan_queue(queue) end
	for _, queue in pairs(GearFinder.FallbackQueue or {}) do scan_queue(queue) end
	if not bestDungeonTier then return nil end
	if bestDungeonTier <= 20 then return 49 end
	if bestDungeonTier < 50 then return 49 end
	if bestDungeonTier < 60 then return 59 end
	return bestDungeonTier
end

local function prune_to_progression_band(slot, queue, cap)
	if not queue or not cap then return end
	local removed = false
	for idx = #queue, 1, -1 do
		local tier = get_progression_priority(queue[idx])
		local remove = queue[idx].sourceType == "crafted" and queue[idx].craftedCategory == "raid"
		if not remove then
			remove = tier > cap
		end
		if remove then
			table.remove(queue, idx)
			removed = true
		end
	end
	if removed and not queue[1] then
		set_slot_reject(slot, "No upgrade found in current progression tier")
	end
end

local function prune_all_to_progression_band()
	local cap = get_progression_band_cap()
	if not cap then return end
	for slot, queue in pairs(GearFinder.UpgradeQueue or {}) do prune_to_progression_band(slot, queue, cap) end
	for slot, queue in pairs(GearFinder.FallbackQueue or {}) do prune_to_progression_band(slot, queue, cap) end
end

local function get_equipped_item_details(slot)
	local upgrades = ItemScore and ItemScore.Upgrades
	if not upgrades or not upgrades.GetEquippedItemData then return nil end
	local equipped = upgrades:GetEquippedItemData(slot)
	return equipped and equipped.itemlink and ItemScore:GetItemDetails(equipped.itemlink) or nil
end

local FINDER_CLASS_MAX_ARMOR_FAMILY = {
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

local FINDER_ARMOR_FAMILY_ORDER = {
	CLOTH = 1,
	LEATHER = 2,
	MAIL = 3,
	PLATE = 4,
}

local function finder_family_allowed(family)
	if not family then return true end
	local maxFamily = FINDER_CLASS_MAX_ARMOR_FAMILY[ItemScore.playerclass]
	local maxRank = maxFamily and FINDER_ARMOR_FAMILY_ORDER[maxFamily]
	local wantedRank = FINDER_ARMOR_FAMILY_ORDER[family]
	if not maxRank or not wantedRank then return true end
	if family == "MAIL" and (ItemScore.playerclass == "HUNTER" or ItemScore.playerclass == "SHAMAN") and (tonumber(ItemScore.playerlevel) or 0) < 40 then
		return false
	end
	if family == "PLATE" and ItemScore.playerclass ~= "DEATHKNIGHT" and (tonumber(ItemScore.playerlevel) or 0) < 40 then
		return false
	end
	return wantedRank <= maxRank
end

local function queue_local_meta_candidate(itemlink, itemdata, ident, future)
	local itemid = ZGV.ItemLink.GetItemID(itemlink)
	local meta = itemid and ItemScore.GearFinderItemMeta and ItemScore.GearFinderItemMeta[itemid]
	if not meta or not meta.equipLoc then return end
	if meta.family and not finder_family_allowed(meta.family) then return end

	local pseudo = { type = meta.equipLoc }
	local slot1, slot2 = ItemScore:GetValidSlots(pseudo)
	if not slot1 then return end

	local function maybe_queue(slot)
		if not slot or not GearFinder.FallbackQueue[slot] then return end
		local equipped = get_equipped_item_details(slot)
		if equipped and equipped.class == LE_ITEM_CLASS_ARMOR and equipped.type ~= "INVTYPE_CLOAK" and meta.family then
			local equippedFamily = equipped.family
			if equippedFamily and equippedFamily ~= meta.family then
				return
			end
		end
		local queued = queue_fallback_candidate(slot, {
			itemlink = GF_StripLink(itemlink) or itemlink,
			texture = nil,
			itemlvl = 0,
			score = 0,
			minlevel = (itemdata and itemdata.minLevel) or meta.minLevel or 0,
			cached_name = meta.name,
			approximate = true,
			force_approximate = true,
		}, itemdata, ident, future)
		if queued then
			add_slot_debug(slot, "meta")
		end
	end

	maybe_queue(slot1)
	maybe_queue(slot2)
end

local function queue_bare_fallback_candidate(itemlink, itemdata, ident, future)
	local itemName, itemLink2, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, texture = ZGV:GetItemInfo(itemlink)
	if not itemName or not itemEquipLoc or itemEquipLoc == "" then return end

	local pseudo = { type = itemEquipLoc }
	local slot1, slot2 = ItemScore:GetValidSlots(pseudo)
	if not slot1 then return end

	local function maybe_queue(slot)
		if not slot or not GearFinder.FallbackQueue[slot] then return end
		local equipped = get_equipped_item_details(slot)
		if equipped and equipped.class == LE_ITEM_CLASS_ARMOR and equipped.type ~= "INVTYPE_CLOAK" then
			if itemSubType and equipped.subtype and itemSubType ~= equipped.subtype then
				return
			end
		end
		local baseline = get_equipped_item_level(slot)
		local candidateLevel = tonumber(itemLevel) or 0
		if baseline > 0 and candidateLevel <= baseline then return end
		local queued = queue_fallback_candidate(slot, {
			itemlink = GF_StripLink(itemlink) or itemlink,
			texture = texture,
			itemlvl = candidateLevel,
			score = candidateLevel,
			minlevel = itemMinLevel,
		}, itemdata, ident, future)
		if queued then
			add_slot_debug(slot, "meta")
		end
	end

	maybe_queue(slot1)
	maybe_queue(slot2)
end

queue_fallback_candidate = function(slot, item, itemdata, ident, future)
	if not slot or not item or not GearFinder.FallbackQueue[slot] then
		set_slot_reject(slot, "reject: no fallback queue")
		return false
	end
	if itemdata and itemdata.quest and IsQuestFlaggedCompleted(itemdata.quest) then
		set_slot_reject(slot, ("reject: quest completed %s"):format(tostring(itemdata.quest)))
		return false
	end
	local queue = GearFinder.FallbackQueue[slot]
	local baseline = get_equipped_item_level(slot)
	local candidateLevel = tonumber(item.itemlvl) or 0
	if is_candidate_already_equipped_for_slot(slot, item) then
		set_slot_reject(slot, "reject: already equipped")
		return false
	end
	if is_known_negative_fallback(slot, item) then
		set_slot_reject(slot, ("reject: negative score fallback %s"):format(tostring(item.cached_name or item.name or item.itemlink or "item")))
		return false
	end
	if not item.force_approximate and candidateLevel > 0 and baseline > 0 and candidateLevel <= baseline and not is_known_positive_fallback(slot, item) then
		set_slot_reject(slot, ("reject: ilvl %d <= equipped %d for %s"):format(candidateLevel, baseline, tostring(item.cached_name or item.itemlink or "item")))
		return false
	end

	local candidate = {
		itemlink = item.itemlink,
		itemlinkfull = item.itemlinkfull or item.itemlink,
		texture = item.texture,
		itemlvl = candidateLevel,
		score = tonumber(item.score) or candidateLevel or 0,
		ident = ident,
		boss = itemdata and itemdata.boss,
		bossname = itemdata and GF_GetBossNameFromID(itemdata.boss, itemdata.bossname or itemdata.name),
		special = itemdata and itemdata.special,
		phase = itemdata and itemdata.phase,
		encounterId = itemdata and itemdata.encounterId,
		quest = itemdata and itemdata.quest,
		questname = itemdata and itemdata.questname,
		minlevel = item.minlevel,
		future = future and true or false,
		approximate = true,
		force_approximate = item.force_approximate or candidateLevel <= 0,
		cached_name = item.cached_name or item.name,
		approximateText = L["gearfinder_no_upgrade"],
	}
	GF_AddVendorFields(candidate, itemdata)

	if future then
		local dungeon = GF_GetDungeonData(ident)
		if dungeon then
			candidate.minlevel = candidate.minlevel or dungeon.minLevel
			candidate.min_ilevel = dungeon.min_ilevel
		end
	end

	queue[#queue + 1] = candidate
	set_slot_reject(slot, ("queued: ilvl %d score %s %s"):format(candidateLevel, tostring(candidate.score), tostring(candidate.cached_name or candidate.itemlink or "item")))
	return true
end

local function promote_fallback_results()
	for slot, queue in pairs(GearFinder.FallbackQueue) do
		if (not GearFinder.UpgradeQueue[slot][1]) and queue[1] then
			GearFinder.UpgradeQueue[slot][1] = queue[1]
		end
	end
end

-- checks if item should be considered for weapon upgrade - don't switch between 2h and 1h when looking in dungeons
-- params:
--	current - bool - if user is using 2h weapon now
--	item - array - item that we will be checking
-- returns
--	valid - bool - should we queue this item
local function is_replacement(uses2h, item)
	if not item then return false end

	if item.type == "INVTYPE_RANGED" or item.type == "INVTYPE_RANGEDRIGHT" or item.type == "INVTYPE_THROWN" then
		return true
	end

	if (item.class == LE_ITEM_CLASS_WEAPON) or (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then
		return item.twohander == uses2h
	end

	return true
end

-- main worker function. goes first through all items prepared for scoring, if upgrades for all slots are not found, checks future items
-- sorts result slots by highest score and calls display when it is done
-- no params, no returns
local function loot_score_dungeon_thread()
	local total_current, total_future = 0,0
	for _,dungeon in pairs(GearFinder.ItemsToScore) do total_current = total_current + #dungeon end
	for _,source in pairs(GearFinder.VendorItemsToScore) do total_current = total_current + #source end
	for _,dungeon in pairs(GearFinder.ItemsToMaybeScore) do total_future = total_future + #dungeon end
	local total = total_current + total_future
	if total <= 0 then total = 1 end

	GearFinder.MainFrame.Progress:SetPercent(0,"noanim")
	GearFinder.MainFrame.Progress:Show()
	local success_counter = 0


	local equipped_weapon = GetInventoryItemLink("player",INVSLOT_MAINHAND) and ItemScore:GetItemDetails(GetInventoryItemLink("player",INVSLOT_MAINHAND))
	local twohander_equipped = equipped_weapon and equipped_weapon.twohander

	while true do
		local fail_counter = 0
		for ident,dungeon in pairs(GearFinder.ItemsToScore) do
			for index,itemdata in pairs(dungeon) do
				local itemlink = itemdata.itemlink
				for slot in pairs(GearFinder.UpgradeQueue) do
					add_slot_debug(slot, "seen")
				end
				local item, itemerr = safe_get_item_details(itemlink)
				if itemerr then GearFinder.LastError = itemerr end
				if not item then
					itemdata.resolve_attempts = (itemdata.resolve_attempts or 0) + 1
					if itemdata.resolve_attempts >= GearFinder.ITEM_RESOLVE_RETRY_LIMIT then
						queue_local_meta_candidate(itemlink, itemdata, ident, false)
						queue_bare_fallback_candidate(itemlink, itemdata, ident, false)
						ZGV:Debug("&gear dropping unresolved current item after %d attempts: %s",itemdata.resolve_attempts,tostring(itemlink))
						GearFinder.HadUnresolvedItems = true
						GearFinder.ItemsToScore[ident][index]=nil
					else
						fail_counter = fail_counter + 1
					end
					else
						success_counter = success_counter + 1
						local is_upgrade, slot, change, score, comment, futurevalid, slot_2, change_2  = GF_EvaluateUpgrade(itemlink)
						local validity = ItemScore:GetItemValidity(itemlink)
						if validity and validity.slot then
							add_slot_debug(validity.slot, "resolved")
							if validity.valid then add_slot_debug(validity.slot, "valid") end
						end
						if validity and validity.slot_2 then
							add_slot_debug(validity.slot_2, "resolved")
							if validity.valid then add_slot_debug(validity.slot_2, "valid") end
						end
					if is_upgrade and validity and validity.valid and is_replacement(twohander_equipped,item)  then
						local queuedItem = clone_item_entry(item)
						queuedItem.ident = ident
						queuedItem.boss = itemdata.boss
						queuedItem.bossname = GF_GetBossNameFromID(itemdata.boss, itemdata.bossname or itemdata.name)
						queuedItem.special = itemdata.special
						queuedItem.phase = itemdata.phase
						queuedItem.encounterId = itemdata.encounterId
						queuedItem.quest = itemdata.quest
						queuedItem.itemid = queuedItem.itemid or (ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemlink)) or queuedItem.itemid
						queuedItem.itemlinkfull = queuedItem.itemlinkfull or itemlink
						queuedItem.cached_name = queuedItem.cached_name or queuedItem.name
						queuedItem.change = change
						if not (queuedItem.quest and IsQuestFlaggedCompleted(queuedItem.quest)) then
							queue_upgrade_candidate(slot, queuedItem)

							if slot_2 then
								queuedItem.change_2 = change_2
								queue_upgrade_candidate(slot_2, queuedItem)
							end
						end
					elseif validity and validity.valid and is_replacement(twohander_equipped, item) then
						set_slot_compare_reject(validity.slot, item)
						if validity.slot_2 then
							set_slot_compare_reject(validity.slot_2, item)
						end
						if queue_fallback_candidate(validity.slot, item, itemdata, ident, false) then
							add_slot_debug(validity.slot, "fallback")
						end
						if validity.slot_2 then
							if queue_fallback_candidate(validity.slot_2, item, itemdata, ident, false) then
								add_slot_debug(validity.slot_2, "fallback")
							end
						end
					elseif validity and validity.valid then
						local rejectReason = twohander_equipped and "reject: 2h blocks offhand" or "reject: slot blocked"
						set_slot_reject(validity.slot, rejectReason)
						if validity.slot_2 then
							set_slot_reject(validity.slot_2, rejectReason)
						end
					elseif futurevalid then
						GearFinder.ItemsToMaybeScore[ident] = GearFinder.ItemsToMaybeScore[ident] or {}
						table.insert(GearFinder.ItemsToMaybeScore[ident],itemdata)
					end
					GearFinder.ItemsToScore[ident][index]=nil
				end
			end
			ZGV:Debug("&gear current scored %d of %d/%d",success_counter,total_current,total)
			ZGV:Debug("&gear current failed %d",fail_counter)
			coroutine.yield()
			local ready = success_counter / total * 100
			GearFinder.MainFrame.Progress:SetPercent(ready)
		end
		if fail_counter==0 then break end
	end

	while true do
		local fail_counter = 0
		for ident,sourceItems in pairs(GearFinder.VendorItemsToScore) do
			for index,itemdata in pairs(sourceItems) do
				local itemlink = itemdata.itemlink
				for slot in pairs(GearFinder.UpgradeQueue) do
					add_slot_debug(slot, "seen")
				end
				local item, itemerr = safe_get_item_details(itemlink)
				if itemerr then GearFinder.LastError = itemerr end
				if not item then
					itemdata.resolve_attempts = (itemdata.resolve_attempts or 0) + 1
					if itemdata.resolve_attempts >= GearFinder.ITEM_RESOLVE_RETRY_LIMIT then
						queue_local_meta_candidate(itemlink, itemdata, ident, false)
						queue_bare_fallback_candidate(itemlink, itemdata, ident, false)
						ZGV:Debug("&gear dropping unresolved external item after %d attempts: %s",itemdata.resolve_attempts,tostring(itemlink))
						GearFinder.HadUnresolvedItems = true
						GearFinder.VendorItemsToScore[ident][index]=nil
					else
						fail_counter = fail_counter + 1
					end
				else
					success_counter = success_counter + 1
					local is_upgrade, slot, change, score, comment, futurevalid, slot_2, change_2  = GF_EvaluateUpgrade(itemlink)
					local validity = ItemScore:GetItemValidity(itemlink)
					if validity and validity.slot then
						add_slot_debug(validity.slot, "resolved")
						if validity.valid then add_slot_debug(validity.slot, "valid") end
					end
					if validity and validity.slot_2 then
						add_slot_debug(validity.slot_2, "resolved")
						if validity.valid then add_slot_debug(validity.slot_2, "valid") end
					end
					if is_upgrade and validity and validity.valid and is_replacement(twohander_equipped,item) then
						local queuedItem = clone_item_entry(item)
						queuedItem.ident = ident
						queuedItem.special = itemdata.special
						queuedItem.itemid = queuedItem.itemid or (ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemlink)) or queuedItem.itemid
						queuedItem.phase = itemdata.phase
						queuedItem.itemlinkfull = queuedItem.itemlinkfull or itemlink
						queuedItem.cached_name = queuedItem.cached_name or queuedItem.name
						queuedItem.change = change
						GF_AddVendorFields(queuedItem, itemdata)
						queue_upgrade_candidate(slot, queuedItem)

						if slot_2 then
							queuedItem.change_2 = change_2
							queue_upgrade_candidate(slot_2, queuedItem)
						end
					elseif validity and validity.valid and is_replacement(twohander_equipped, item) then
						set_slot_compare_reject(validity.slot, item)
						if validity.slot_2 then
							set_slot_compare_reject(validity.slot_2, item)
						end
						if queue_fallback_candidate(validity.slot, item, itemdata, ident, false) then
							add_slot_debug(validity.slot, "fallback")
						end
						if validity.slot_2 then
							if queue_fallback_candidate(validity.slot_2, item, itemdata, ident, false) then
								add_slot_debug(validity.slot_2, "fallback")
							end
						end
					elseif validity and validity.valid then
						local rejectReason = twohander_equipped and "reject: 2h blocks offhand" or "reject: slot blocked"
						set_slot_reject(validity.slot, rejectReason)
						if validity.slot_2 then
							set_slot_reject(validity.slot_2, rejectReason)
						end
					elseif futurevalid then
						GearFinder.ItemsToMaybeScore[ident] = GearFinder.ItemsToMaybeScore[ident] or {}
						table.insert(GearFinder.ItemsToMaybeScore[ident],itemdata)
					end
					GearFinder.VendorItemsToScore[ident][index]=nil
				end
			end
			ZGV:Debug("&gear external scored %d of %d/%d",success_counter,total_current,total)
			ZGV:Debug("&gear external failed %d",fail_counter)
			coroutine.yield()
			local ready = success_counter / total * 100
			GearFinder.MainFrame.Progress:SetPercent(ready)
		end
		if fail_counter==0 then break end
	end

	GearFinder.DungeonItemsScored = true
	local t2 = debugprofilestop()
	ZGV:Debug("&gear scoring current took %d",t2-GearFinder.TimeScoreStart)

	for i,slotupgrades in pairs(GearFinder.UpgradeQueue) do 
		table.sort(slotupgrades,function(a,b) return compare_current_upgrade(i, a, b) end)
	end
	for i,slotupgrades in pairs(GearFinder.FallbackQueue) do
		table.sort(slotupgrades,function(a,b)
			if is_tier_progression_mode() then
				return compare_tier_progression_upgrade(i, a, b)
			end
			return get_fallback_metric(a) > get_fallback_metric(b)
		end)
	end

	-- remove duplicates from primary/secondary slots
	for first,second in pairs(slot_pairs) do
		local first_equipped = ItemScore:GetItemDetails(ItemScore.Upgrades.EquippedItems[first].itemlink)
		local second_equipped = ItemScore:GetItemDetails(ItemScore.Upgrades.EquippedItems[second].itemlink)
		local first_queue = GearFinder.UpgradeQueue[first]
		local second_queue = GearFinder.UpgradeQueue[second]

		if first_queue[1] and second_queue[1] and first_queue[1]==second_queue[1] then
			if not first_equipped or first_equipped.twohander then
				ZGV:Debug("&itemscore SDG same item, drop second, no first")
				table.remove(second_queue,1)
			elseif not first_equipped then		
				ZGV:Debug("&itemscore SDG same item, drop first, no second")
				table.remove(first_queue,1)
			elseif second_queue[2] then
				ZGV:Debug("&itemscore SDG same item, drop second, has options")
				table.remove(second_queue,1)
			elseif first_queue[2] then
				ZGV:Debug("&itemscore SDG same item, drop first, has options")
				table.remove(first_queue,1)
			else
				ZGV:Debug("&itemscore SDG same item, drop second, no choice")
				table.remove(second_queue,1)
			end
		end
	end
	enforce_distinct_pair_results(distinct_slot_pairs)
	prune_all_to_progression_band()
	promote_fallback_results()
	enforce_distinct_pair_results(distinct_slot_pairs)

	if are_all_slots_filled() then 
		GearFinder.ResultsReady=true 
		GearFinder.MainFrame.Progress:Hide()
		cancel_gearfinder_timer("AntsTimer")
		GearFinder:DisplayResults()
		return
	else
		GearFinder:DisplayResults()
		GearFinder.AntsMode = "future "
	end

	table.sort(GearFinder.FutureDungeons,function(a,b) if a.minLevel==b.minLevel then return a.min_ilevel<b.min_ilevel else return a.minLevel<b.minLevel end end)
	while true do
		local fail_counter = 0
		for _,dungeon in ipairs(GearFinder.FutureDungeons) do
			if GearFinder.ItemsToMaybeScore[dungeon.ident] then
				for index,itemdata in pairs(GearFinder.ItemsToMaybeScore[dungeon.ident]) do
					local itemlink = itemdata.itemlink
					for slot in pairs(GearFinder.UpgradeQueue) do
						add_slot_debug(slot, "seen")
					end
					local item, itemerr = safe_get_item_details(itemlink)
					if itemerr then GearFinder.LastError = itemerr end
					if not item then 
						itemdata.resolve_attempts = (itemdata.resolve_attempts or 0) + 1
						if itemdata.resolve_attempts >= GearFinder.ITEM_RESOLVE_RETRY_LIMIT then
							queue_local_meta_candidate(itemlink, itemdata, dungeon.ident, true)
							queue_bare_fallback_candidate(itemlink, itemdata, dungeon.ident, true)
							ZGV:Debug("&gear dropping unresolved future item after %d attempts: %s",itemdata.resolve_attempts,tostring(itemlink))
							GearFinder.HadUnresolvedItems = true
							GearFinder.ItemsToMaybeScore[dungeon.ident][index]=nil
						else
							fail_counter = fail_counter + 1
						end
					else
						success_counter = success_counter + 1
						local is_upgrade, slot, change, score, comment, validfuture, slot_2, change_2 = GF_EvaluateUpgrade(itemlink,"future")
						local validity = ItemScore:GetItemValidity(itemlink, true)
						if validity and validity.slot then
							add_slot_debug(validity.slot, "resolved")
							if validity.valid then add_slot_debug(validity.slot, "valid") end
						end
						if validity and validity.slot_2 then
							add_slot_debug(validity.slot_2, "resolved")
							if validity.valid then add_slot_debug(validity.slot_2, "valid") end
						end
						-- only record future items for slots that do not have upgrades from current dungeons
						-- if slot and GearFinder.UpgradeQueue[slot] then--and not GearFinder.UpgradeQueue[slot][1] then
						if slot and GearFinder.UpgradeQueue[slot] and (not GearFinder.UpgradeQueue[slot][1] or GearFinder.UpgradeQueue[slot][1].future) then
							if is_upgrade and validity and validity.valid and is_replacement(twohander_equipped,item) then
								local queuedItem = clone_item_entry(item)
								queuedItem.ident = dungeon.ident
								queuedItem.min_ilevel = dungeon.min_ilevel
						queuedItem.boss = itemdata.boss
						queuedItem.bossname = GF_GetBossNameFromID(itemdata.boss, itemdata.bossname or itemdata.name)
						queuedItem.special = itemdata.special
						queuedItem.encounterId = itemdata.encounterId
						queuedItem.phase = itemdata.phase
								queuedItem.future = true
								queuedItem.quest = itemdata.quest
								queuedItem.itemid = queuedItem.itemid or (ZGV.ItemLink and ZGV.ItemLink.GetItemID(itemlink)) or queuedItem.itemid
								queuedItem.itemlinkfull = queuedItem.itemlinkfull or itemlink
								queuedItem.cached_name = queuedItem.cached_name or queuedItem.name
								queuedItem.change = change
								if not (queuedItem.quest and IsQuestFlaggedCompleted(queuedItem.quest)) then
									queue_upgrade_candidate(slot, queuedItem)

									if slot_2 then
										queuedItem.change_2 = change_2
										queue_upgrade_candidate(slot_2, queuedItem)
									end
								end
							end
						end
						if validity and validity.valid and is_replacement(twohander_equipped, item) then
							set_slot_compare_reject(validity.slot, item)
							if validity.slot_2 then
								set_slot_compare_reject(validity.slot_2, item)
							end
							if not GearFinder.UpgradeQueue[validity.slot][1] or GearFinder.UpgradeQueue[validity.slot][1].future then
								if queue_fallback_candidate(validity.slot, item, itemdata, dungeon.ident, true) then
									add_slot_debug(validity.slot, "fallback")
								end
							end
							if validity.slot_2 and (not GearFinder.UpgradeQueue[validity.slot_2][1] or GearFinder.UpgradeQueue[validity.slot_2][1].future) then
								if queue_fallback_candidate(validity.slot_2, item, itemdata, dungeon.ident, true) then
									add_slot_debug(validity.slot_2, "fallback")
								end
							end
						elseif validity and validity.valid then
							local rejectReason = twohander_equipped and "reject: 2h blocks offhand" or "reject: slot blocked"
							set_slot_reject(validity.slot, rejectReason)
							if validity.slot_2 then
								set_slot_reject(validity.slot_2, rejectReason)
							end
						end
						GearFinder.ItemsToMaybeScore[dungeon.ident][index]=nil
					end
				end
				local ready = success_counter / total * 100
				ZGV:Debug("&gear future scored %d of %d/%d",success_counter,total_future,total)
				ZGV:Debug("&gear future failed %d",fail_counter)
				GearFinder.MainFrame.Progress:SetPercent(ready)
				coroutine.yield()
			end
		end
		if fail_counter==0 then break end
	end

	for i,slotupgrades in pairs(GearFinder.UpgradeQueue) do 
		table.sort(slotupgrades,function(a,b)
			if a.future and b.future then -- future, find earliest
				if a.minLevel==b.minLevel and a.min_ilevel==b.min_ilevel then 
					return a.score>b.score -- same requirements, sort by score
					elseif a.minLevel==b.minLevel then
						return a.min_ilevel<b.min_ilevel -- same player level, sort by dungeon minilvl
					else 
						return a.minLevel<b.minLevel  -- sort by item min player level
					end
			elseif a.future ~= b.future then
				return not a.future
			else
				return compare_current_upgrade(i, a, b)
			end
		end)
		prune_to_best_content_tier(slotupgrades)
	end
	for i,slotupgrades in pairs(GearFinder.FallbackQueue) do
		table.sort(slotupgrades,function(a,b)
			if a.future and b.future then
				if (a.minlevel or 0)==(b.minlevel or 0) and (a.min_ilevel or 0)==(b.min_ilevel or 0) then
					return get_fallback_metric(a) > get_fallback_metric(b)
				elseif (a.minlevel or 0)==(b.minlevel or 0) then
					return (a.min_ilevel or 0) < (b.min_ilevel or 0)
				else
					return (a.minlevel or 0) < (b.minlevel or 0)
				end
			elseif a.future ~= b.future then
				return not a.future
			else
				if is_tier_progression_mode() then
					return compare_tier_progression_upgrade(i, a, b)
				end
				return compare_practical_upgrade(i, a, b)
			end
		end)
		prune_to_best_content_tier(slotupgrades)
	end

	local t3 = debugprofilestop()
	ZGV:Debug("&gear scoring future took %d",t3-t2)
	ZGV:Debug("&gear scoring all took %d",t3-GearFinder.TimeScoreStart)
	prune_all_to_progression_band()
	promote_fallback_results()
	enforce_distinct_pair_results(distinct_slot_pairs)
	if GearFinder:DeferFinalResultsForItemInfo() then return end
	GearFinder.ResultsReady=true
	GearFinder.MainFrame.Progress:Hide()

	cancel_gearfinder_timer("AntsTimer")
	GearFinder:DisplayResults()
end

-- show crawling dots while calculation is running
-- executed on timer
-- no params
-- no returns
local function progress_dots()
	local progress_time = math.floor(debugprofilestop())%1500

	local progress_dots = ""
	if progress_time < 500 then
		progress_dots = "."
	elseif progress_time < 1000 then
		progress_dots = ".."
	else
		progress_dots = "..."
	end

	local Buttons = GearFinder.MainFrame.Buttons
	local searchingKey = GearFinder.AntsMode == "future " and "gearfinder_status_searching_future" or "gearfinder_status_searching"
	for i,v in pairs(GearFinder.UpgradeQueue) do
		local button = Buttons[i]
		if not button.link then
			button.itemdungeon:SetText(L[searchingKey]:format(progress_dots))
		end
	end
end

cancel_gearfinder_timer = function(field)
	local handle = GearFinder[field]
	if not handle then return end
	GearFinder[field] = nil
	ZGV:CancelTimer(handle, true)
end

-- prepares item lists for worker thread to work on
-- items from valid dungeons are added to ItemsToScore
-- items from dungeons that are not valid, but can be valid soon to ItemsToMaybeScore and dungeons to FutureDungeons
-- starts thread and resumes it 10 times a second
-- no params
-- no returns
GearFinder.ItemsToScore = {}
GearFinder.ItemsToMaybeScore = {}
GearFinder.VendorItemsToScore = {}
GearFinder.FutureDungeons = {}
GearFinder.HadUnresolvedItems = false
GearFinder.DebugSummary = {}

function GearFinder:MarkWorldLoaded()
	self.LastWorldLoadTime = get_time()
end

function GearFinder:GetStartupItemInfoGraceRemaining()
	if not self.LastWorldLoadTime then return 0 end
	local remaining = (self.STARTUP_ITEM_INFO_GRACE or 0) - (get_time() - self.LastWorldLoadTime)
	return remaining > 0 and remaining or 0
end

function GearFinder:ShowItemInfoLoadingMessage()
	if not self.MainFrame then return end
	local MF = self.MainFrame
	if MF.NoSourcesFrame then MF.NoSourcesFrame:Hide() end
	if MF.ErrorBox then MF.ErrorBox:Hide() end
	if MF.overlay then MF.overlay:Hide() end
	if MF.Progress then
		MF.Progress:SetPercent(0, "noanim")
		MF.Progress:Show()
	end
	if MF.DungeonMessage then MF.DungeonMessage:SetText("Gear Finder loading") end
	if MF.DungeonName then MF.DungeonName:SetText("Waiting for item data") end
	if MF.DungeonDesc then MF.DungeonDesc:SetText("Item information is still loading from the game server.") end
	if MF.DungeonReason then MF.DungeonReason:SetText("Results will refresh automatically.") end
	if MF.AddButton then MF.AddButton:Hide() end
	for _, button in pairs(MF.Buttons or {}) do
		button.itemicon:SetTexture(button.slotTexture)
		button.itemlink:SetText(" ")
		button.link = nil
		button.sourceTooltipLines = nil
		button.dungeonguide = nil
		button.bisTooltipText = nil
		if button.bisbadge then button.bisbadge:Hide() end
		button.itemdungeon:SetText("Loading item data...")
		button.itemencounter:SetText(" ")
		button.itemicon:SetDesaturated(false)
		button:SetAlpha(0.5)
	end
end

function GearFinder:ScheduleStartupItemInfoScan(remaining)
	if self.StartupItemInfoTimer then return end
	self:ClearResults()
	self:ShowItemInfoLoadingMessage()
	self.StartupItemInfoTimer = ZGV:ScheduleTimer(function()
		self.StartupItemInfoTimer = nil
		if not self.MainFrame or not self.MainFrame:IsVisible() then return end
		self:ClearResults()
		self:ScoreDungeonItems(true)
	end, math.max(0.5, remaining or self.STARTUP_ITEM_INFO_GRACE or 0.5))
end

function GearFinder:ScheduleItemInfoRefresh()
	if self.ItemInfoRefreshTimer or not self.MainFrame or not self.MainFrame:IsVisible() then return end
	self.ItemInfoRefreshTimer = ZGV:ScheduleTimer(function()
		self.ItemInfoRefreshTimer = nil
		if not self.MainFrame or not self.MainFrame:IsVisible() then return end
		self:ClearResults()
		self:ScoreDungeonItems()
	end, 0.4)
end

function GearFinder:DeferFinalResultsForItemInfo()
	if not self.HadUnresolvedItems or self.ItemInfoFinalRetry then return false end
	if not self.MainFrame or not self.MainFrame:IsVisible() then return false end

	self.ItemInfoFinalRetry = true
	self.ResultsReady = false
	cancel_gearfinder_timer("AntsTimer")
	if self.MainFrame.Progress then self.MainFrame.Progress:Hide() end
	self:ShowItemInfoLoadingMessage()

	if self.ItemInfoRefreshTimer then return true end
	self.ItemInfoRefreshTimer = ZGV:ScheduleTimer(function()
		self.ItemInfoRefreshTimer = nil
		if not self.MainFrame or not self.MainFrame:IsVisible() then return end
		self:ClearResults()
		self.ItemInfoFinalRetry = true
		self:ScoreDungeonItems(true)
	end, 1.0)
	return true
end

function GearFinder:ScoreDungeonItems(force)
	if GearFinder.ResultsReady then return end
	local startupGrace = not force and self:GetStartupItemInfoGraceRemaining()
	if startupGrace and startupGrace > 0 then
		self:ScheduleStartupItemInfoScan(startupGrace)
		return
	end

	GearFinder.CurrentExpansion = (GetClassicExpansionLevel and GetClassicExpansionLevel()) or (GetServerExpansionLevel and GetServerExpansionLevel()) or 2 -- 2 = WOTLK

	GearFinder.TimeScoreStart = debugprofilestop()
	GearFinder.MainFrame.overlay:Hide()

	GearFinder.DungeonItemsScored = false
	GearFinder.HadUnresolvedItems = false
	if not force then GearFinder.ItemInfoFinalRetry = nil end
	GearFinder.LastError = nil
	GearFinder.PlayerProfessionSkills = nil
	GearFinder.PlayerProfessionSpecializations = nil
	reset_debug_slot_stats()

	local player = ZGV.ItemScore.playerclass or "ALL"
	for i,v in pairs(GearFinder.UpgradeQueue) do table.wipe(v) end
	for i,v in pairs(GearFinder.FallbackQueue) do table.wipe(v) end
	table.wipe(GearFinder.ItemsToScore)
	table.wipe(GearFinder.ItemsToMaybeScore)
	table.wipe(GearFinder.VendorItemsToScore)
	table.wipe(GearFinder.FutureDungeons)
	table.wipe(GearFinder.DebugSummary)
	if GearFinder.MainFrame.NoSourcesFrame then GearFinder.MainFrame.NoSourcesFrame:Hide() end

	if not GF_HasAnySourceEnabled() then
		GearFinder.DebugSummary.noSources = true
		GearFinder:ShowNoSourcesMessage()
		return
	end

	local faction = self.playerfaction=="Alliance" and 1 or 2
	local sourceInstances, validDungeons, futureDungeons, validVendorSources, vendorItems, craftedItems = 0, 0, 0, 0, 0, 0
	local craftedSourceCount, validCraftedSources, craftedSkippedItems = 0, 0, 0
	local skippedOutOfEraItems = 0
	local invalidReasons = {}

	-- 3.3.5a: no mythic+, no modified instances
	for dungeon,dungeondata in pairs(ZGV.ItemScore.Items) do
		if GF_IsCuratedSourceKey(dungeon) then
		sourceInstances = sourceInstances + 1
		local valid, future, ident, maxscale, mythic, mythicplus, comment = GearFinder:IsValidDungeon(dungeondata.dungeon or dungeondata.dungeonmap, dungeondata.instanceId, dungeon, dungeondata.heroic)
		local capped_player_level = math.min(maxscale or 80, ItemScore.playerlevel)

		if valid then
			validDungeons = validDungeons + 1
			GearFinder.ItemsToScore[ident] = {}
			for boss,bossdata in pairs(dungeondata) do
				if type(bossdata)=="table" and GF_IsPhaseActive(bossdata.phase) then
					local player_items = GF_GetBossDropItems(bossdata, player)
					if player_items then
						for _,itemlink in pairs(player_items) do
							if type(itemlink)=="number" then itemlink = "item:"..itemlink end
							local knownClientItem, knownClientReason = GF_IsKnownClientItem(itemlink)
							if knownClientItem and GF_ShouldIncludeCandidate(itemlink, false) then
								-- 3.3.5a: no level scaling, no mythic bonuses
								local qname
								if bossdata.quest and bossdata.quest[faction] then
									qname = ZGV:GetQuestName(bossdata.quest[faction])
								end
								table.insert(GearFinder.ItemsToScore[ident],{itemlink=itemlink,boss=bossdata.boss, bossname=GF_GetBossNameFromID(bossdata.boss, bossdata.name), special=bossdata.special, phase=bossdata.phase, encounterId=bossdata.encounterId, quest=bossdata.quest and bossdata.quest[faction], questname=qname})
							elseif not knownClientItem then
								skippedOutOfEraItems = skippedOutOfEraItems + 1
								invalidReasons[knownClientReason or "out-of-era item"] = (invalidReasons[knownClientReason or "out-of-era item"] or 0) + 1
							end
						end
					end
				end
			end
		elseif future then
			futureDungeons = futureDungeons + 1
			local future_dungeon = GF_GetDungeonData(ident)
			if future_dungeon then
				table.insert(GearFinder.FutureDungeons,{ident=ident,minLevel=future_dungeon.minLevel or 0,min_ilevel=future_dungeon.min_ilevel or 0})
			end

			GearFinder.ItemsToMaybeScore[ident] = {}

			for boss,bossdata in pairs(dungeondata) do
				if type(bossdata)=="table" and GF_IsPhaseActive(bossdata.phase) then
					local player_items = GF_GetBossDropItems(bossdata, player)
					if player_items then
						for _,itemlink in pairs(player_items) do
							if type(itemlink)=="number" then itemlink = "item:"..itemlink end
							local knownClientItem, knownClientReason = GF_IsKnownClientItem(itemlink)
							if knownClientItem and GF_ShouldIncludeCandidate(itemlink, true) then
								-- 3.3.5a: no level scaling, no mythic bonuses
								local qname
								if bossdata.quest and bossdata.quest[faction] then
									qname = ZGV:GetQuestName(bossdata.quest[faction])
								end
								table.insert(GearFinder.ItemsToMaybeScore[ident],{itemlink=itemlink,boss=bossdata.boss, bossname=GF_GetBossNameFromID(bossdata.boss, bossdata.name), special=bossdata.special, phase=bossdata.phase, encounterId=bossdata.encounterId, quest=bossdata.quest and bossdata.quest[faction], questname=qname})
							elseif not knownClientItem then
								skippedOutOfEraItems = skippedOutOfEraItems + 1
								invalidReasons[knownClientReason or "out-of-era item"] = (invalidReasons[knownClientReason or "out-of-era item"] or 0) + 1
							end
						end
					end
				end
			end
		else
			invalidReasons[comment or "invalid"] = (invalidReasons[comment or "invalid"] or 0) + 1
		end
		end
	end
	for sourceKey, source in pairs(ItemScore.GearFinderVendorSources or {}) do
		local valid, comment = GF_IsValidVendorSource(source)
		if valid then
			local vendor = GF_GetFactionVendor(source) or {}
			validVendorSources = validVendorSources + 1
			local ident = "vendor:" .. tostring(source.key or sourceKey)
			GearFinder.VendorItemsToScore[ident] = GearFinder.VendorItemsToScore[ident] or {}
			for itemid, itemSource in pairs(source.items or {}) do
				local itemlink = "item:" .. tostring(itemid)
				local knownClientItem, knownClientReason = GF_IsKnownClientItem(itemlink)
				if knownClientItem and GF_ShouldIncludeCandidate(itemlink, false) then
					table.insert(GearFinder.VendorItemsToScore[ident], {
						itemlink = itemlink,
						sourceType = source.sourceType or "currency",
						vendorSource = source.key or sourceKey,
						vendorSourceName = source.name,
						currency = itemSource.currency or source.currency,
						currencyItem = itemSource.currencyItem or source.currencyItem,
						cost = itemSource.cost,
						vendorName = itemSource.vendorName or vendor.name,
						vendorLocation = itemSource.vendorLocation or vendor.location or source.location,
						vendorShortLocation = itemSource.vendorShortLocation or vendor.shortLocation,
						vendorWaypoint = itemSource.vendorWaypoint or vendor.waypoint,
					})
					vendorItems = vendorItems + 1
				elseif not knownClientItem then
					skippedOutOfEraItems = skippedOutOfEraItems + 1
					invalidReasons[knownClientReason or "out-of-era item"] = (invalidReasons[knownClientReason or "out-of-era item"] or 0) + 1
				end
			end
		else
			invalidReasons[comment or "invalid vendor source"] = (invalidReasons[comment or "invalid vendor source"] or 0) + 1
		end
	end
	for sourceKey, source in pairs(ItemScore.GearFinderCraftedSources or {}) do
		craftedSourceCount = craftedSourceCount + 1
		local valid, comment = GF_IsValidCraftedSource(source)
		if valid then
			validCraftedSources = validCraftedSources + 1
			validVendorSources = validVendorSources + 1
			local ident = "crafted:" .. tostring(source.key or sourceKey)
			GearFinder.VendorItemsToScore[ident] = GearFinder.VendorItemsToScore[ident] or {}
			for itemid, itemSource in pairs(source.items or {}) do
				local itemValid, itemComment = GF_IsValidCraftedItem(source, itemSource)
				if itemValid then
					local itemlink = "item:" .. tostring(itemid)
					local knownClientItem, knownClientReason = GF_IsKnownClientItem(itemlink)
					if knownClientItem and GF_ShouldIncludeCandidate(itemlink, false) then
						table.insert(GearFinder.VendorItemsToScore[ident], {
							itemlink = itemlink,
							sourceType = source.sourceType or "crafted",
							vendorSource = source.key or sourceKey,
							vendorSourceName = source.name,
							profession = itemSource.profession or source.profession,
							minProfessionSkill = itemSource.minSkill or source.minSkill,
							minLevel = itemSource.minLevel or source.minLevel,
							professionOnly = itemSource.professionOnly or source.professionOnly,
							bind = itemSource.bind or source.bind,
							recipeName = itemSource.recipeName,
							sourceNote = itemSource.sourceNote or source.sourceNote,
							craftedCategory = itemSource.category or source.category,
							professionSpecialization = itemSource.specializationName or source.specializationName,
						})
						vendorItems = vendorItems + 1
						craftedItems = craftedItems + 1
					elseif not knownClientItem then
						skippedOutOfEraItems = skippedOutOfEraItems + 1
						invalidReasons[knownClientReason or "out-of-era item"] = (invalidReasons[knownClientReason or "out-of-era item"] or 0) + 1
					end
				else
					craftedSkippedItems = craftedSkippedItems + 1
					invalidReasons[itemComment or "invalid crafted item"] = (invalidReasons[itemComment or "invalid crafted item"] or 0) + 1
				end
			end
		else
			invalidReasons[comment or "invalid crafted source"] = (invalidReasons[comment or "invalid crafted source"] or 0) + 1
		end
	end
	GearFinder.DebugSummary.player = tostring(player)
	GearFinder.DebugSummary.sourceInstances = sourceInstances
	GearFinder.DebugSummary.validDungeons = validDungeons
	GearFinder.DebugSummary.futureDungeons = futureDungeons
	GearFinder.DebugSummary.validVendorSources = validVendorSources
	GearFinder.DebugSummary.vendorItems = vendorItems
	GearFinder.DebugSummary.craftedItems = craftedItems
	GearFinder.DebugSummary.craftedSourceCount = craftedSourceCount
	GearFinder.DebugSummary.validCraftedSources = validCraftedSources
	GearFinder.DebugSummary.craftedSkippedItems = craftedSkippedItems
	GearFinder.DebugSummary.skippedOutOfEraItems = skippedOutOfEraItems
	GearFinder.DebugSummary.invalidReasons = invalidReasons
	GearFinder.DebugSummary.gear1 = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_1 and true or false
	GearFinder.DebugSummary.gear2 = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_2 and true or false
	GearFinder.DebugSummary.gear3 = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_3 and true or false
	GearFinder.DebugSummary.gear4 = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_4 and true or false
	GearFinder.DebugSummary.gearCraftedItems = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_items ~= false
	GearFinder.DebugSummary.gearCraftedLevelingItems = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_leveling_items ~= false
	GearFinder.DebugSummary.gearCraftedPvpItems = ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_pvp_items ~= false
	GearFinder.DebugSummary.professionSkills = GF_CompactMapKeys(GearFinder.PlayerProfessionSkills)
	GearFinder.DebugSummary.professionSpecializations = GF_CompactMapKeys(GearFinder.PlayerProfessionSpecializations)

	GearFinder.ScoreThread = coroutine.create(loot_score_dungeon_thread)
	if GearFinder.ScoreTimer then 
		cancel_gearfinder_timer("ScoreTimer")
	end
	GearFinder.ScoreTimer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(GearFinder.ScoreThread)
		if not ok or coroutine.status(GearFinder.ScoreThread)=="dead" then 
			cancel_gearfinder_timer("ScoreTimer")
			if not ok then
				GearFinder.LastError = ret
				ZGV:Debug("&gear score thread error: %s", tostring(ret))
				GearFinder.ResultsReady = true
				GearFinder.MainFrame.Progress:Hide()
				cancel_gearfinder_timer("AntsTimer")
				GearFinder:DisplayResults()
			end
		end
	end,
	0.1)
	GearFinder.AntsMode = ""
	GearFinder.AntsTimer = ZGV:ScheduleRepeatingTimer(function() progress_dots() end, 0.5)
end

-- used to make item slots in gear finder window. creates texture and fontstrings, sets tooltip calls
-- params
--	object - array - int texture id, int slot id, string slot name
-- returns:
--	button - frame - pack of objects that make one slot
local function make_button(object)
	local parent = GearFinder.MainFrame.CenterColumn or GearFinder.MainFrame
	local button = CHAIN(CreateFrame("Button",nil,parent))
		:SetFrameLevel(parent:GetFrameLevel()+2)
		:SetSize(274,GEARFINDER_BUTTON_HEIGHT)
		:Show()
	.__END
		button.card = CHAIN(CreateFrame("Frame", nil, button))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
		.__END
		button.card:SetBackdrop({
			bgFile = "Interface\\Buttons\\WHITE8x8",
			edgeFile = "Interface\\Buttons\\WHITE8x8",
			tile = false, edgeSize = 1,
			insets = { left = 0, right = 0, top = 0, bottom = 0 },
		})
		button.card:SetBackdropColor(0.05, 0.06, 0.10, 0.92)
		button.card:SetBackdropBorderColor(0.22, 0.18, 0.12, 0.95)
		button.card:SetFrameLevel(button:GetFrameLevel())

		button:SetScript("OnEnter",function()
			button.card:SetBackdropBorderColor(0.70, 0.56, 0.18, 0.95)
			button.card:SetBackdropColor(0.07, 0.08, 0.12, 0.96)
			if button.dungeonguide then
				button.loadguide:Show()
			end
		end)
		button:SetScript("OnLeave",function()
			button.card:SetBackdropBorderColor(0.22, 0.18, 0.12, 0.95)
			button.card:SetBackdropColor(0.05, 0.06, 0.10, 0.92)
			button.loadguide:Hide()
		end)


	button.tooltiphandler = CHAIN(CreateFrame("Button",nil,button))
		:SetFrameLevel(button:GetFrameLevel()+1)
		:SetPoint("TOPLEFT", 6, -6)
		:SetSize(38,38)
	.__END	
		button.iconbg = CHAIN(CreateFrame("Frame", nil, button.tooltiphandler))
			:SetAllPoints()
		.__END
		button.iconbg:SetBackdrop({
			bgFile = "Interface\\Buttons\\WHITE8x8",
			edgeFile = "Interface\\Buttons\\WHITE8x8",
			tile = false, edgeSize = 1,
			insets = { left = 0, right = 0, top = 0, bottom = 0 },
		})
		button.iconbg:SetBackdropColor(0.02, 0.03, 0.05, 1.0)
		button.iconbg:SetBackdropBorderColor(0.28, 0.22, 0.14, 1.0)
		button.iconbg:SetFrameLevel(button.tooltiphandler:GetFrameLevel())
		button.itemicon = CHAIN(button.tooltiphandler:CreateTexture()) 
			:SetSize(34,34)
			:SetPoint("CENTER",button.tooltiphandler, "CENTER", 0, 0)
			:SetTexture(object[1])
		.__END

		button.tooltiphandler:SetScript("OnEnter",function()
			GameTooltip:SetOwner(button, "ANCHOR_CURSOR")
			if button.link then
				GameTooltip:SetHyperlink(button.link)
			else
				GameTooltip:SetText(button.slotName)
			end
			if button.sourceTooltipLines then
				for _, line in ipairs(button.sourceTooltipLines) do
					GameTooltip:AddLine(line, 0.92, 0.86, 0.68, true)
				end
			end
			GameTooltip:Show()
		end)
		button.tooltiphandler:SetScript("OnLeave",function()
			GameTooltip:FadeOut()
		end)

	button.bisbadge = CHAIN(CreateFrame("Button", nil, button.tooltiphandler))
		:SetFrameLevel(button.tooltiphandler:GetFrameLevel()+1)
		:SetPoint("TOPRIGHT", button.tooltiphandler, "TOPRIGHT", 5, 5)
		:SetSize(16,16)
		:Hide()
	.__END
		button.bisicon = CHAIN(button.bisbadge:CreateTexture(nil, "ARTWORK"))
			:SetAllPoints()
			:SetTexture("Interface\\Common\\ReputationStar")
		.__END
		button.bisbadge:SetScript("OnEnter", function()
			if not button.bisTooltipText then return end
			GameTooltip:SetOwner(button.bisbadge, "ANCHOR_TOP")
			GameTooltip:SetText(button.bisTooltipText)
			GameTooltip:Show()
		end)
		button.bisbadge:SetScript("OnLeave", function()
			GameTooltip:FadeOut()
		end)

	button.slotlabel = CHAIN(button:CreateFontString())
		:SetPoint("TOPLEFT", button.tooltiphandler, "TOPRIGHT", 8, -1)
		:SetFont(FONTBOLD, 9)
		:SetTextColor(0.82, 0.78, 0.68)
		:SetText(object[3] or "")
		:SetWidth(168)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
	.__END

	button.itemlink = CHAIN(button:CreateFontString())
		:SetPoint("TOPLEFT",button.slotlabel,"BOTTOMLEFT",0,0)
		:SetFont(FONTBOLD,12)
		:SetTextColor(0.95, 0.95, 0.96)
		:SetText("")
		:SetWidth(202)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
	.__END

	button.itemdungeon = CHAIN(button:CreateFontString())
		:SetPoint("TOPLEFT",button.itemlink,"BOTTOMLEFT",0,-1)
		:SetFont(FONT,9)
		:SetTextColor(0.86, 0.78, 0.58)
		:SetText(L["gearfinder_no_upgrade"])
		:SetWidth(202)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
	.__END
	button.itemencounter = CHAIN(button:CreateFontString())
		:SetPoint("TOPLEFT",button.itemdungeon,"BOTTOMLEFT",0,0)
		:SetFont(FONT,9)
		:SetTextColor(0.78, 0.80, 0.84)
		:SetText("")
		:SetWidth(202)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
	.__END

	button.loadguide = CHAIN(ZGV.CreateFrameWithBG("Button", nil, button, nil))
		:SetBackdropColor(0.10,0.12,0.18,0.98)
		:SetBackdropBorderColor(0.46,0.34,0.16,0.98)
		:SetSize(16,16)
		:SetPoint("BOTTOMRIGHT",-6,6)
		:Hide()
		:SetScript("OnEnter",function()
			button.loadguide:Show()
			GameTooltip:SetOwner(button, "ANCHOR_TOP")
			GameTooltip:SetText(L["gearfinder_load_guide"] or L["frame_selectguide"])
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function()
			button.loadguide:Hide()
			GameTooltip:Hide()
		end)
		:SetScript("OnClick",function(self,b)
			if button.dungeonguide then
				if ZGV.Tabs and ZGV.Tabs.LoadGuideToTab then
					ZGV.Tabs:LoadGuideToTab(button.dungeonguide,button.dungeonguide.CurrentStepNum or 1)
				end
			end
		end)
	.__END
		button.loadguide:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")

	button.slotID = object[2]
	button.slotName = object[3]
	button.slotTexture = object[1]
	button.dungeonguide = nil
	function button:SetResultState(hasUpgrade, isBIS)
		if hasUpgrade then
			self.card:SetBackdropColor(0.05, 0.06, 0.10, 0.92)
			self.card:SetBackdropBorderColor(0.22, 0.18, 0.12, 0.95)
			self.iconbg:SetBackdropBorderColor(0.28, 0.22, 0.14, 1.0)
			self.slotlabel:SetTextColor(0.82, 0.78, 0.68)
			self.itemdungeon:SetTextColor(0.86, 0.78, 0.58)
			self.itemencounter:SetTextColor(0.78, 0.80, 0.84)
		else
			self.card:SetBackdropColor(0.06, 0.04, 0.05, 0.90)
			self.card:SetBackdropBorderColor(0.26, 0.14, 0.14, 0.78)
			self.iconbg:SetBackdropBorderColor(0.24, 0.14, 0.14, 0.78)
			self.slotlabel:SetTextColor(0.70, 0.66, 0.62)
			self.itemdungeon:SetTextColor(0.64, 0.58, 0.58)
			self.itemencounter:SetTextColor(0.62, 0.56, 0.56)
		end
	end
	return button
end

-- update gearfinder window to use current skin
-- no params
-- no returns
function GearFinder:ApplySkin()
	local MF = GearFinder.MainFrame
	if not MF then return end

	MF.Logo:SetTexture(nil)
	MF.Logo:SetSize(1, 1)

	-- CenterColumn positioning set in CreateMainFrame

	MF.FooterSettingsButton:SetPoint("BOTTOMRIGHT",-12,8)
end

-- creates main frame, with header and footer, adds entries for all equip slots and guide info
-- no params
-- no returns
function GearFinder:CreateMainFrame()
	if self.MainFrame then return end

	GearFinder:AttachFrame()

	self.MainFrame = CHAIN(ZGV.CreateFrameWithBG("Frame","ZygorGearFinder",CharacterFrame))
		:SetPoint("TOPLEFT", CharacterFrame, "TOPLEFT")
		:SetWidth(600)
		:SetHeight(math.max(GEARFINDER_MIN_HEIGHT, (CharacterFrame and CharacterFrame:GetHeight() or 424) + 176))
		:SetFrameStrata("HIGH")
		:SetFrameLevel(CharacterFrame:GetFrameLevel()+10)
		:SetToplevel(true)
		.__END
	-- Solid background so character sheet doesn't bleed through
	self.MainFrame:SetBackdrop({
		bgFile = "Interface\\Buttons\\white8x8",
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	})
	self.MainFrame:SetBackdropColor(0.05, 0.05, 0.08, 1.0)
	self.MainFrame:SetBackdropBorderColor(0.48, 0.38, 0.18, 1.0)

	local MF = self.MainFrame

	MF.Logo = CHAIN(MF:CreateTexture())
		:SetPoint("TOP",MF,"TOP",0,-2)
	.__END
	MF.Title = CHAIN(MF:CreateFontString())
		:SetPoint("TOP",MF,"TOP",0,-8)
		:SetFont(FONTBOLD,16)
		:SetTextColor(0.96, 0.90, 0.74)
		:SetText("|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r Guides Gear Finder")
	 .__END
	MF.Subtitle = CHAIN(MF:CreateFontString())
		:SetPoint("TOP", MF.Title, "BOTTOM", 0, -2)
		:SetFont(FONT, 9)
		:SetTextColor(0.82, 0.78, 0.68)
		:SetText("Practical upgrade path with curated BIS markers")
		:SetJustifyH("CENTER")
	.__END
	MF.close = CHAIN(CreateFrame("Button",nil,MF,"UIPanelCloseButton"))
		:SetPoint("TOPRIGHT",-2,-2)
		:SetSize(20,20)
		:SetScript("OnClick", function()
			MF:Hide()
			HideUIPanel(CharacterFrame)
		end)
		.__END

	-- Footer
	MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("BOTTOMRIGHT",-8,5)
		:SetSize(15,15)
		:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
		:SetScript("OnClick",function() ZGV:OpenOptions("gear") end)
	.__END

	-- content container
	MF.CenterColumn = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, MF))
		:SetPoint("TOPLEFT", MF, "TOPLEFT", 10, -48)
		:SetPoint("BOTTOMRIGHT", MF, "BOTTOMRIGHT", -10, 108)
		:EnableMouse(true)
		:Show()
		.__END
	MF.CenterColumn:SetBackdropColor(0.02, 0.03, 0.05, 0.88)
	MF.CenterColumn:SetBackdropBorderColor(0.24, 0.20, 0.14, 0.85)


	-- 3.3.5a: use texture paths instead of FileDataIDs
	local SLOT_TEXTURES = {
		Head      = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Head",
		Neck      = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Neck",
		Shoulder  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shoulder",
		Back      = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest",
		Chest     = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest",
		Wrist     = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Wrists",
		MainHand  = "Interface\\PaperDoll\\UI-PaperDoll-Slot-MainHand",
		OffHand   = "Interface\\PaperDoll\\UI-PaperDoll-Slot-SecondaryHand",
		Ranged    = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Ranged",
		Hands     = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Hands",
		Waist     = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Waist",
		Legs      = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Legs",
		Feet      = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Feet",
		Finger    = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Finger",
		Trinket   = "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket",
	}

	local left_column = {
		{SLOT_TEXTURES.Head,     INVSLOT_HEAD,     GF_GetSlotLabel("HEADSLOT", "Head")},
		{SLOT_TEXTURES.Neck,     INVSLOT_NECK,     GF_GetSlotLabel("NECKSLOT", "Neck")},
		{SLOT_TEXTURES.Shoulder, INVSLOT_SHOULDER, GF_GetSlotLabel("SHOULDERSLOT", "Shoulder")},
		{SLOT_TEXTURES.Back,     INVSLOT_BACK,     GF_GetSlotLabel("BACKSLOT", "Back")},
		{SLOT_TEXTURES.Chest,    INVSLOT_CHEST,    GF_GetSlotLabel("CHESTSLOT", "Chest")},
		{SLOT_TEXTURES.Wrist,    INVSLOT_WRIST,    GF_GetSlotLabel("WRISTSLOT", "Wrist")},
		{SLOT_TEXTURES.MainHand, INVSLOT_MAINHAND, GF_GetSlotLabel("MAINHANDSLOT", "Main Hand")},
		{SLOT_TEXTURES.OffHand,  INVSLOT_OFFHAND,  GF_GetSlotLabel("SECONDARYHANDSLOT", "Off Hand")},
		{SLOT_TEXTURES.Ranged,   INVSLOT_RANGED,   GF_GetSlotLabel("RANGEDSLOT", "Ranged")},
	}

	local right_column = {
		{SLOT_TEXTURES.Hands,   INVSLOT_HAND,     GF_GetSlotLabel("HANDSSLOT", "Hands")},
		{SLOT_TEXTURES.Waist,   INVSLOT_WAIST,    GF_GetSlotLabel("WAISTSLOT", "Waist")},
		{SLOT_TEXTURES.Legs,    INVSLOT_LEGS,     GF_GetSlotLabel("LEGSSLOT", "Legs")},
		{SLOT_TEXTURES.Feet,    INVSLOT_FEET,     GF_GetSlotLabel("FEETSLOT", "Feet")},
		{SLOT_TEXTURES.Finger,  INVSLOT_FINGER1,  GF_GetSlotLabel("FINGER0SLOT", "Ring 1")},
		{SLOT_TEXTURES.Finger,  INVSLOT_FINGER2,  GF_GetSlotLabel("FINGER1SLOT", "Ring 2")},
		{SLOT_TEXTURES.Trinket, INVSLOT_TRINKET1, GF_GetSlotLabel("TRINKET0SLOT", "Trinket 1")},
		{SLOT_TEXTURES.Trinket, INVSLOT_TRINKET2, GF_GetSlotLabel("TRINKET1SLOT", "Trinket 2")},
	}

	MF.Buttons = {}
	local previous = nil
	for i,object in ipairs(left_column) do
		local button = make_button(object)
	
		if previous then
			button:SetPoint("TOPLEFT",previous,"BOTTOMLEFT",0,-GEARFINDER_BUTTON_GAP)
		else
			button:SetPoint("TOPLEFT",MF.CenterColumn,"TOPLEFT",10,-5)
		end
		previous = button
		MF.Buttons[object[2]] = button
	end

	local previous = nil
	for i,object in ipairs(right_column) do
		local button = make_button(object)
	
		if previous then
			button:SetPoint("TOPLEFT",previous,"BOTTOMLEFT",0,-GEARFINDER_BUTTON_GAP)
		else
			button:SetPoint("TOPLEFT",MF.Buttons[INVSLOT_HEAD],"TOPRIGHT",8,0)
		end
		previous = button
		MF.Buttons[object[2]] = button
	end

	MF.NoSourcesFrame = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, MF.CenterColumn))
		:SetPoint("CENTER", MF.CenterColumn, "CENTER", 0, 12)
		:SetSize(360, 112)
		:SetFrameLevel(MF.CenterColumn:GetFrameLevel() + 10)
		:EnableMouse(true)
		:Hide()
	.__END
	MF.NoSourcesFrame:SetBackdropColor(0.04, 0.04, 0.07, 0.96)
	MF.NoSourcesFrame:SetBackdropBorderColor(0.46, 0.36, 0.16, 0.9)
	MF.NoSourcesFrame.Title = CHAIN(MF.NoSourcesFrame:CreateFontString(nil, "OVERLAY"))
		:SetPoint("TOP", MF.NoSourcesFrame, "TOP", 0, -14)
		:SetFont(FONTBOLD, 13)
		:SetTextColor(0.96, 0.90, 0.74)
		:SetText("Choose Gear Finder sources")
	.__END
	MF.NoSourcesFrame.Text = CHAIN(MF.NoSourcesFrame:CreateFontString(nil, "OVERLAY"))
		:SetPoint("TOP", MF.NoSourcesFrame.Title, "BOTTOM", 0, -7)
		:SetWidth(310)
		:SetFont(FONT, 9)
		:SetJustifyH("CENTER")
		:SetTextColor(0.80, 0.78, 0.70)
		:SetText("No dungeon, raid, currency reward, or crafted item sources are enabled.")
	.__END
	MF.NoSourcesFrame.Button = CHAIN(ZGV.CreateFrameWithBG("Button", nil, MF.NoSourcesFrame))
		:SetPoint("BOTTOM", MF.NoSourcesFrame, "BOTTOM", 0, 12)
		:SetSize(150, 24)
		:SetScript("OnClick", function() ZGV:OpenOptions("gear") end)
	.__END
	MF.NoSourcesFrame.Button:SetBackdropColor(0.16, 0.12, 0.04, 0.95)
	MF.NoSourcesFrame.Button:SetBackdropBorderColor(0.64, 0.48, 0.18, 0.95)
	MF.NoSourcesFrame.Button.Text = CHAIN(MF.NoSourcesFrame.Button:CreateFontString(nil, "OVERLAY"))
		:SetPoint("CENTER", MF.NoSourcesFrame.Button, "CENTER", 0, 0)
		:SetFont(FONTBOLD, 10)
		:SetTextColor(0.98, 0.92, 0.72)
		:SetText("Open Source Settings")
	.__END

	MF.FooterBar = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, MF))
		:SetPoint("BOTTOMLEFT", MF, "BOTTOMLEFT", 12, 10)
		:SetPoint("BOTTOMRIGHT", MF, "BOTTOMRIGHT", -12, 10)
		:SetHeight(74)
		.__END
	MF.FooterBar:SetBackdropColor(0.05, 0.06, 0.10, 0.96)
	MF.FooterBar:SetBackdropBorderColor(0.28, 0.22, 0.14, 0.96)
	MF.FooterArt = CHAIN(MF.FooterBar:CreateTexture(nil,"ARTWORK"))
		:SetPoint("TOPLEFT", MF.FooterBar, "TOPLEFT", 1, -1)
		:SetPoint("BOTTOMRIGHT", MF.FooterBar, "BOTTOMRIGHT", -1, 1)
		:SetAlpha(0.82)
		:Hide()
	.__END
	MF.FooterArt:SetTexCoord(0.06, 0.94, 0.04, 0.96)
	MF.FooterArt:SetBlendMode("BLEND")
	MF.FooterSolid = CHAIN(MF.FooterBar:CreateTexture(nil,"OVERLAY"))
		:SetPoint("TOPLEFT", MF.FooterBar, "TOPLEFT", 0, 0)
		:SetPoint("BOTTOMLEFT", MF.FooterBar, "BOTTOMLEFT", 0, 0)
		:SetWidth(190)
		:SetTexture("Interface\\Buttons\\WHITE8x8")
		:SetVertexColor(0.05, 0.06, 0.10, 1.00)
	.__END
	MF.FooterFade = CHAIN(MF.FooterBar:CreateTexture(nil,"OVERLAY"))
		:SetPoint("TOPLEFT", MF.FooterBar, "TOPLEFT", 170, 0)
		:SetPoint("BOTTOMLEFT", MF.FooterBar, "BOTTOMLEFT", 170, 0)
		:SetWidth(250)
		:SetTexture("Interface\\Buttons\\WHITE8x8")
	.__END
	if MF.FooterFade.SetGradientAlpha then
		MF.FooterFade:SetGradientAlpha("HORIZONTAL",
			0.05, 0.06, 0.10, 1.00,
			0.05, 0.06, 0.10, 0.00
		)
	else
		MF.FooterFade:SetVertexColor(0.05, 0.06, 0.10, 0.35)
	end
	MF.FooterShade = CHAIN(MF.FooterBar:CreateTexture(nil,"OVERLAY"))
		:SetAllPoints(MF.FooterBar)
		:SetTexture("Interface\\Buttons\\WHITE8x8")
		:SetVertexColor(0, 0, 0, 0.03)
	.__END

	MF.ErrorBox = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, MF.FooterBar))
		:SetPoint("TOPRIGHT", MF.FooterBar, "TOPRIGHT", -6, -4)
		:SetPoint("BOTTOMRIGHT", MF.FooterBar, "BOTTOMRIGHT", -6, 4)
		:SetWidth(320)
		:Hide()
		.__END
	MF.ErrorBox:SetBackdropColor(0.08, 0.02, 0.02, 0.65)
	MF.ErrorBox:SetBackdropBorderColor(0.35, 0.08, 0.08, 0.75)
	MF.ErrorBox.Label = CHAIN(MF.ErrorBox:CreateFontString())
		:SetPoint("TOPLEFT", MF.ErrorBox, "TOPLEFT", 6, -5)
		:SetPoint("TOPRIGHT", MF.ErrorBox, "TOPRIGHT", -6, -5)
		:SetFont(FONTBOLD, 8)
		:SetTextColor(1.0, 0.82, 0.35)
		:SetJustifyH("LEFT")
		:SetText("Gear Finder Debug")
		.__END
	MF.ErrorBox.Text = CHAIN(MF.ErrorBox:CreateFontString())
		:SetPoint("TOPLEFT", MF.ErrorBox.Label, "BOTTOMLEFT", 0, -3)
		:SetPoint("BOTTOMRIGHT", MF.ErrorBox, "BOTTOMRIGHT", -6, 5)
		:SetFont(FONT, 6)
		:SetTextColor(1.0, 0.78, 0.78)
		:SetJustifyH("LEFT")
		:SetJustifyV("TOP")
		:SetSpacing(1)
		:SetText("")
		.__END

	MF.DungeonImage = CHAIN(MF.FooterBar:CreateTexture(nil,"OVERLAY")) 
		:SetSize(28,28)
		:SetPoint("LEFT",MF.FooterBar,"LEFT",10,0)
		:Hide()
	.__END

	MF.DungeonMessage = CHAIN(MF.FooterBar:CreateFontString(nil,"OVERLAY"))
		:SetPoint("TOPLEFT",MF.FooterBar,"TOPLEFT",12,-6)
		:SetWidth(540)
		:SetFont(FONTBOLD,9)
		:SetTextColor(0.82, 0.78, 0.68)
		:SetText(L["gearfinder_suggested_dungeon"])
		:SetJustifyH("LEFT")
	.__END

	MF.AddButton = CHAIN(ZGV.CreateFrameWithBG("Button", nil, MF.FooterBar, nil))
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0,0,0,0)
		:SetSize(20,20)
		:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
		:SetScript("OnEnter",function()
			GameTooltip:SetOwner(MF.AddButton, "ANCHOR_TOP")
			GameTooltip:SetText(L["gearfinder_load_guide"] or L["frame_selectguide"])
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function()
			GameTooltip:Hide()
		end)
		:SetScript("OnClick",function()
			if GearFinder.BestDungeonGuide and ZGV.Tabs and ZGV.Tabs.LoadGuideToTab then
				ZGV.Tabs:LoadGuideToTab(GearFinder.BestDungeonGuide,GearFinder.BestDungeonGuide.CurrentStepNum or 1)
			end
		end)
		:SetPoint("TOPRIGHT", MF.FooterBar, "TOPRIGHT", -8, -8)
		:Hide()
	.__END

	MF.DungeonName = CHAIN(MF.FooterBar:CreateFontString(nil,"OVERLAY"))
		:SetPoint("TOPLEFT",MF.FooterBar,"TOPLEFT",12,-20)
		:SetFont(FONTBOLD,13)
		:SetTextColor(0.96, 0.94, 0.90)
		:SetText("")
		:SetWidth(500)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
	.__END
	MF.DungeonDesc = CHAIN(MF.FooterBar:CreateFontString(nil,"OVERLAY"))
		:SetPoint("TOPLEFT",MF.FooterBar,"TOPLEFT",12,-38)
		:SetFont(FONT,9)
		:SetTextColor(0.84, 0.86, 0.90)
		:SetText("")
		:SetWidth(500)
		:SetJustifyH("LEFT")
		:SetJustifyV("TOP")
		:SetWordWrap(false)
	.__END
	MF.DungeonReason = CHAIN(MF.FooterBar:CreateFontString(nil,"OVERLAY"))
		:SetPoint("TOPLEFT",MF.FooterBar,"TOPLEFT",12,-55)
		:SetFont(FONT,9)
		:SetTextColor(0.90, 0.90, 0.92)
		:SetText("")
		:SetWidth(500)
		:SetJustifyH("LEFT")
		:SetJustifyV("TOP")
		:SetWordWrap(false)
	.__END


	-- Simple progress bar (plain StatusBar instead of custom widget)
	MF.Progress = CreateFrame("StatusBar", nil, MF)
	MF.Progress:SetSize(500, 7)
	MF.Progress:SetFrameLevel(MF:GetFrameLevel()+3)
	MF.Progress:SetPoint("BOTTOMLEFT", MF, "BOTTOMLEFT", 5, 5)
	MF.Progress:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	MF.Progress:GetStatusBarTexture():SetVertexColor(0.2, 0.6, 1.0)
	MF.Progress:SetMinMaxValues(0, 100)
	MF.Progress:SetValue(0)
	MF.Progress.Texture = MF.Progress:GetStatusBarTexture()
	function MF.Progress:SetPercent(pct, mode)
		self:SetValue(pct or 0)
	end

	tinsert(UISpecialFrames, "ZygorGearFinder") -- allows the frame to be closable with ESC keypress

	MF.overlay = CHAIN(ZGV.CreateFrameWithBG("Button",nil,MF))
		:SetPoint("TOPLEFT",MF,"TOPLEFT",10,-27)
		:SetPoint("BOTTOMRIGHT",MF,"BOTTOMRIGHT",-10,20)
		:SetBackdropColor(0,0,0,0.7)
		:SetBackdropBorderColor(0,0,0,0.7)
		:SetFrameLevel(MF:GetFrameLevel()+5)
		:SetScript("OnClick", function() GearFinder:ScoreDungeonItems() end)
		:SetScript("OnEnter",function()
			GameTooltip:SetOwner(MF.overlay, "ANCHOR_CURSOR")
			GameTooltip:SetText(L["gearfinder_refresh"])
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function()
			GameTooltip:FadeOut()
		end)
		:Hide()
	.__END

	MF.overlay.tex = MF.overlay:CreateTexture()
	MF.overlay.tex:SetTexture(ZGV.DIR.."\\Skins\\refresh")
	MF.overlay.tex:SetSize(32,32)
	MF.overlay.tex:SetPoint("CENTER")


	ZGV:AddMessageHandler("SKIN_UPDATED",GearFinder.ApplySkin)
	GearFinder:ApplySkin()
	MF:Hide()
end

-- maps difficulty id to display name (normal, heroic etc)
local diff_to_name = {
	[1]=PLAYER_DIFFICULTY1,
	[2]=PLAYER_DIFFICULTY2,
	[3]=PLAYER_DIFFICULTY1,
	[4]=PLAYER_DIFFICULTY1,
	[5]=PLAYER_DIFFICULTY2,
	[6]=PLAYER_DIFFICULTY2,
	[7]=PLAYER_DIFFICULTY3,
	[23]=PLAYER_DIFFICULTY6,
	[24]=PLAYER_DIFFICULTY_TIMEWALKER,
	[17]=PLAYER_DIFFICULTY3,
	[14]=PLAYER_DIFFICULTY1,
	[15]=PLAYER_DIFFICULTY2,
	[16]=PLAYER_DIFFICULTY6,
}

local function GF_FormatDungeonDisplayName(dungeon)
	if not dungeon then return L["gearfinder_label_unknown"] or "unknown" end
	local name = dungeon.name or (L["gearfinder_label_unknown"] or "unknown")
	if tonumber(dungeon.difficulty) == 2 then
		local heroic = PLAYER_DIFFICULTY2 or "Heroic"
		if not tostring(name):lower():find(tostring(heroic):lower(), 1, true) then
			return ("%s (%s)"):format(name, heroic)
		end
	end
	return name
end

local function GF_GetDungeonReasonText(bestCount, bestWeight)
	if not bestCount or bestCount <= 0 then return nil end
	if bestWeight and bestWeight > 0 then
		return ("Why: +%.1f shown score here."):format(bestWeight)
	end
	return ("Why: %d shown top upgrade%s here."):format(bestCount, bestCount == 1 and "" or "s")
end

local function find_dungeon_guide(ident)
	local dungeon = GF_GetDungeonData(ident)

	if not dungeon then return false end

	local dungeon_guide, dungeon_map, dungeon_lfg

	if type(dungeon.map)=="table" then
		for i,v in pairs(dungeon.map) do
			if not dungeon_map or v<dungeon_map then dungeon_map = v end
		end
	else
		dungeon_map = dungeon.map
	end
	dungeon_map = tonumber(dungeon_map)
	dungeon_lfg = tonumber(dungeon.id)

	if dungeon_lfg then
		for g,guide in ipairs(ZGV.registeredguides) do -- check by lfg codes first, for winded instances
			if tonumber(guide.lfgid)==(dungeon_lfg) then dungeon_guide=guide break end
		end
	end

	if not dungeon_guide and dungeon_map then
		for g,guide in ipairs(ZGV.registeredguides) do -- if nothing, then use dungeon maps
			if tonumber(guide.mapid)==tonumber(dungeon_map) then dungeon_guide=guide break end
		end
	end

	return dungeon_guide,dungeon
end

-- displays result of scoring all dungeon items
function GearFinder:DisplayResults()
	if not GearFinder.MainFrame then return end

	local MF = GearFinder.MainFrame
	if MF.NoSourcesFrame then MF.NoSourcesFrame:Hide() end
	local Buttons = MF.Buttons
	local dungeons = {}

	if MF.ErrorBox then
		local errtext = GearFinder.LastError and tostring(GearFinder.LastError) or ""
		local firstRejectSlot, firstRejectText
		if GearFinder.DebugSlotReject then
			for slot, reason in pairs(GearFinder.DebugSlotReject) do
				if reason and reason ~= "" then
					firstRejectSlot, firstRejectText = slot, reason
					break
				end
			end
		end
		local currentCount, futureCount, vendorCount = 0, 0, 0
		for _, dungeonItems in pairs(GearFinder.ItemsToScore or {}) do
			currentCount = currentCount + #dungeonItems
		end
		for _, vendorItems in pairs(GearFinder.VendorItemsToScore or {}) do
			vendorCount = vendorCount + #vendorItems
		end
		for _, dungeonItems in pairs(GearFinder.ItemsToMaybeScore or {}) do
			futureCount = futureCount + #dungeonItems
		end
		local summary = GearFinder.DebugSummary or {}
		local reasonList = {}
		for reason, count in pairs(summary.invalidReasons or {}) do
			reasonList[#reasonList + 1] = { reason = tostring(reason), count = tonumber(count) or 0 }
		end
		table.sort(reasonList, function(a, b) return a.count > b.count end)
		local dbstats = ItemScore.DBStats or {}
		local lines = {
			("Class: %s  Src: %d  Valid: %d  Future: %d"):format(
				tostring(summary.player or "?"),
				tonumber(summary.sourceInstances) or 0,
				tonumber(summary.validDungeons) or 0,
				tonumber(summary.futureDungeons) or 0
			),
			("Pool C:%d  F:%d  X:%d  Crafted:%d  DB primed:%d  DB only:%d"):format(
				currentCount,
				futureCount,
				vendorCount,
				tonumber(summary.craftedItems) or 0,
				tonumber(dbstats.primed) or 0,
				tonumber(dbstats.dbonly) or 0
			),
			("DB live:%d  DB missing:%d  gear:%s/%s/%s/%s"):format(
				tonumber(dbstats.live) or 0,
				tonumber(dbstats.missing) or 0,
				tostring(summary.gear1),
				tostring(summary.gear2),
				tostring(summary.gear3),
				tostring(summary.gear4)
			),
			("Craft src:%d/%d  skipped:%d  opts:%s/%s/%s"):format(
				tonumber(summary.validCraftedSources) or 0,
				tonumber(summary.craftedSourceCount) or 0,
				tonumber(summary.craftedSkippedItems) or 0,
				tostring(summary.gearCraftedItems),
				tostring(summary.gearCraftedLevelingItems),
				tostring(summary.gearCraftedPvpItems)
			),
		}
		if summary.professionSkills and summary.professionSkills ~= "" then
			lines[#lines + 1] = "Prof: " .. summary.professionSkills
		end
		if summary.professionSpecializations and summary.professionSpecializations ~= "" then
			lines[#lines + 1] = "Spec: " .. summary.professionSpecializations
		end
		if reasonList[1] then
			lines[#lines + 1] = ("Rejects: %s (%d)"):format(reasonList[1].reason, reasonList[1].count)
		end
		if firstRejectText then
			lines[#lines + 1] = ("Slot %s: %s"):format(tostring(firstRejectSlot), firstRejectText)
		end
		if errtext ~= "" then
			lines[#lines + 1] = ("ERR: %s"):format(errtext)
		end
		MF.ErrorBox.Text:SetText(table.concat(lines, "\n"))
		MF.ErrorBox:Hide()
	end

	for slotID, button in pairs(Buttons) do
		local upgrade = GearFinder.UpgradeQueue[slotID] and GearFinder.UpgradeQueue[slotID][1]
		if upgrade then
			local itemName, itemlink = ZGV:GetItemInfo(upgrade.itemlink)
			local displayName = itemName or upgrade.cached_name or upgrade.name or upgrade.itemlink
			local tooltipLink = (itemlink and itemlink:match("%[")) and itemlink or upgrade.itemlinkfull or itemlink or upgrade.itemlink
			local displayLink = (itemlink and itemlink:match("%[")) and itemlink or nil
			local bossLabel = upgrade.bossname or GF_StaticItemBossNames[upgrade.itemid] or nil
			local bis = upgrade.itemid and ItemScore.GetBISAnnotation and ItemScore:GetBISAnnotation(upgrade.itemid, slotID) or nil
			local icon = upgrade.texture
			if not icon and GetItemIcon then
				icon = GetItemIcon(upgrade.itemid or upgrade.itemlink)
			end
			button.itemicon:SetTexture(icon or button.slotTexture)
			button.itemlink:SetText(displayLink or displayName)
			button.link = tooltipLink or nil
			button.sourceTooltipLines = GF_GetSourceTooltipLines(upgrade)
			button.itemicon:SetDesaturated(upgrade.future)
			button:SetAlpha(1)
			button:SetResultState(true, bis and true or false)
			if bis then
				button.bisTooltipText = bis.label
				button.bisbadge:Show()
				if bis.filled then
					button.bisicon:SetVertexColor(1.0, 0.84, 0.15, 1.0)
					button.bisicon:SetDesaturated(false)
				else
					button.bisicon:SetVertexColor(0.92, 0.78, 0.32, 0.65)
					button.bisicon:SetDesaturated(true)
				end
			else
				button.bisTooltipText = nil
				button.bisbadge:Hide()
			end

			local dungeon = GF_GetDungeonData(upgrade.ident)
			button.itemdungeon:SetText(GF_FormatDungeonDisplayName(dungeon))

			if upgrade.sourceType == "currency" then
				button.dungeonguide = nil
				button.dungeon = nil
				button.itemdungeon:SetText(GF_FormatVendorLocation(upgrade))
				button.itemencounter:SetText(GF_FormatVendorLine(upgrade))
			elseif upgrade.sourceType == "crafted" then
				button.dungeonguide = nil
				button.dungeon = nil
				button.itemdungeon:SetText(GF_FormatCraftedLocation(upgrade))
				button.itemencounter:SetText(GF_FormatCraftedLine(upgrade))
			elseif upgrade.future then
				button:SetAlpha(0.5)
				local playeritemlvl = ItemScore.playeritemlvl or 0
				if upgrade.minlevel and upgrade.minlevel > ItemScore.playerlevel then
					button.itemencounter:SetText("(requires level "..upgrade.minlevel..")")
				elseif dungeon and dungeon.minLevel and dungeon.minLevel > ItemScore.playerlevel then
					button.itemencounter:SetText("(requires level "..dungeon.minLevel..")")
				elseif dungeon and dungeon.min_ilevel and dungeon.min_ilevel > playeritemlvl then
					button.itemencounter:SetText("(requires item level "..dungeon.min_ilevel..")")
				else
					button.itemencounter:SetText(" ")
				end
			elseif upgrade.approximate then
				dungeons[upgrade.ident] = (dungeons[upgrade.ident] or 0) + 1
				button.dungeonguide, button.dungeon = find_dungeon_guide(upgrade.ident)
				local specialSource = GF_FormatSpecialSource(upgrade)
				local staticSource = GF_FormatStaticItemSource(upgrade)
				if specialSource then
					button.itemencounter:SetText(specialSource)
				elseif staticSource then
					button.itemencounter:SetText(staticSource)
				elseif upgrade.quest then
					local questname = ZGV:GetQuestName(upgrade.quest)
					button.itemencounter:SetText("Quest: "..(upgrade.questname or questname or ""))
				elseif upgrade.encounterId then
					button.itemencounter:SetText("Boss: "..GF_GetEncounterLabel(upgrade.encounterId, bossLabel))
				elseif bossLabel then
					button.itemencounter:SetText("Boss: "..bossLabel)
				else
					button.itemencounter:SetText(("Approximate upgrade by item level (%d)"):format(upgrade.itemlvl or 0))
				end
			else
				dungeons[upgrade.ident] = (dungeons[upgrade.ident] or 0) + 1
				button.dungeonguide, button.dungeon = find_dungeon_guide(upgrade.ident)
				local specialSource = GF_FormatSpecialSource(upgrade)
				local staticSource = GF_FormatStaticItemSource(upgrade)
				if specialSource then
					button.itemencounter:SetText(specialSource)
				elseif staticSource then
					button.itemencounter:SetText(staticSource)
				elseif upgrade.quest then
					local questname = ZGV:GetQuestName(upgrade.quest)
					button.itemencounter:SetText("Quest: "..(upgrade.questname or questname or ""))
				elseif upgrade.encounterId then
					button.itemencounter:SetText("Boss: "..GF_GetEncounterLabel(upgrade.encounterId, bossLabel))
				elseif bossLabel then
					button.itemencounter:SetText("Boss: "..bossLabel)
				else
					button.itemencounter:SetText(" ")
				end
			end
		else
			button.itemicon:SetTexture(button.slotTexture)
			button.itemlink:SetText(" ")
			button.link = nil
			button.sourceTooltipLines = nil
			button.dungeonguide = nil
			button.dungeon = nil
			button.itemdungeon:SetText(L["gearfinder_no_upgrade"])
			button:SetResultState(false, false)
			local equippedBIS, bisInfo = false, nil
			if ItemScore.IsEquippedBIS then
				equippedBIS, bisInfo = ItemScore:IsEquippedBIS(slotID)
			end
			if equippedBIS then
				button.itemencounter:SetText("Best In Slot Equipped")
				button.bisTooltipText = (bisInfo and bisInfo.label) or "Final BIS Equipped"
				button.bisbadge:Show()
				button.bisicon:SetVertexColor(1.0, 0.84, 0.15, 1.0)
				button.bisicon:SetDesaturated(false)
			else
				local reason = get_slot_debug_reason(slotID)
				if reason == "No upgrade found in current progression tier" then
					button.itemdungeon:SetText(reason)
					button.itemencounter:SetText(" ")
				else
					button.itemencounter:SetText(" ")
				end
				button.bisTooltipText = nil
				button.bisbadge:Hide()
			end
			button.itemicon:SetDesaturated(false)
			button:SetAlpha(0.5)
		end
	end

	local sorted_dungeons = {}
	local dungeon_totals = {}
	for _, slotupgrades in pairs(GearFinder.UpgradeQueue or {}) do
		local candidate = slotupgrades and slotupgrades[1]
		if candidate and candidate.ident and candidate.sourceType ~= "currency" and candidate.sourceType ~= "crafted" and candidate.ident~="titanrune_alpha" and candidate.ident~="titanrune_beta" then
			local bucket = dungeon_totals[candidate.ident] or {count=0, weight=0}
			bucket.count = bucket.count + 1
			bucket.weight = bucket.weight + math.max(0, tonumber(candidate.change) or tonumber(candidate.score) or tonumber(candidate.itemlvl) or 0)
			dungeon_totals[candidate.ident] = bucket
		end
	end
	for ident, totals in pairs(dungeon_totals) do
		table.insert(sorted_dungeons,{ident,totals.count,totals.weight})
	end
	table.sort(sorted_dungeons,function(x,y)
		if x[3] ~= y[3] then return x[3] > y[3] end
		if x[2] ~= y[2] then return x[2] > y[2] end
		return tostring(x[1]) < tostring(y[1])
	end)

	local best_dungeon = sorted_dungeons[1]

	if best_dungeon then
		local dungeon_guide, dungeon = find_dungeon_guide(best_dungeon[1])
		local footerImage = GF_ResolveFooterImage(dungeon_guide, dungeon)
		if footerImage then
			MF.FooterArt:SetTexture(footerImage)
			MF.FooterArt:Show()
			MF.DungeonImage:SetTexture(nil)
			MF.DungeonImage:Hide()
		else
			MF.FooterArt:SetTexture(nil)
			MF.FooterArt:Hide()
			MF.DungeonImage:SetTexture(nil)
			MF.DungeonImage:Hide()
		end
		if dungeon_guide then
			GearFinder.BestDungeonGuide = dungeon_guide
			MF.AddButton:Show()
		else
			GearFinder.BestDungeonGuide = nil
			MF.AddButton:Hide()
		end

		MF.DungeonMessage:SetText(L["gearfinder_suggested_dungeon"])
		MF.DungeonName:SetText(dungeon.name)
		MF.DungeonName:Show()
		local difftext = diff_to_name[dungeon.difficulty] or ""
		if dungeon.difficulty==8 then
			difftext = difftext .. ZGV.db.profile.gear_8_level
		end
		local footerSummary = ((difftext ~= "" and (difftext .. "  ")) or "") .. L["gearfinder_items_found"]:format(best_dungeon[2])
		local footerReason = GF_GetDungeonReasonText(best_dungeon[2], best_dungeon[3])
		MF.DungeonDesc:SetText(footerSummary)
		MF.DungeonReason:SetText(footerReason or "")
		MF.DungeonDesc:Show()
		MF.DungeonReason:Show()
	else
		GearFinder.BestDungeonGuide = nil
		local footerImage = GF_GetFallbackFooterImageForLevel(ItemScore.playerlevel)
		MF.FooterArt:SetTexture(footerImage)
		MF.FooterArt:Show()
		MF.DungeonImage:SetTexture(nil)
		MF.DungeonImage:Hide()
		MF.DungeonMessage:SetText(L["gearfinder_suggested_dungeon"] or "Suggested dungeon")
		MF.DungeonName:SetText(L["gearfinder_no_upgrade"] or "No upgrade found")
		MF.DungeonName:Show()
		MF.DungeonDesc:SetText("No recommendation available yet.")
		MF.DungeonReason:SetText("")
		MF.DungeonDesc:Show()
		MF.DungeonReason:Hide()
		MF.AddButton:Hide()
	end

end

function GearFinder:ShowNoSourcesMessage()
	if not GearFinder.MainFrame then return end
	local MF = GearFinder.MainFrame
	GearFinder.ResultsReady = true
	GearFinder.DungeonItemsScored = true
	GearFinder.BestDungeonGuide = nil
	if MF.Progress then MF.Progress:Hide() end
	if MF.overlay then MF.overlay:Hide() end
	if MF.ErrorBox then
		MF.ErrorBox.Text:SetText("")
		MF.ErrorBox:Hide()
	end

	for _, button in pairs(MF.Buttons or {}) do
		button.itemicon:SetTexture(button.slotTexture)
		button.itemlink:SetText(" ")
		button.link = nil
		button.sourceTooltipLines = nil
		button.dungeonguide = nil
		button.dungeon = nil
		button.bisTooltipText = nil
		if button.bisbadge then button.bisbadge:Hide() end
		button.itemdungeon:SetText(L["gearfinder_no_upgrade"])
		button.itemencounter:SetText("Choose sources in Gear Advisor options.")
		button.itemicon:SetDesaturated(false)
		button:SetAlpha(0.35)
		if button.SetResultState then button:SetResultState(false, false) end
	end

	local footerImage = GF_GetFallbackFooterImageForLevel(ItemScore.playerlevel)
	if MF.FooterArt then
		MF.FooterArt:SetTexture(footerImage)
		MF.FooterArt:Show()
	end
	MF.DungeonImage:SetTexture(nil)
	MF.DungeonImage:Hide()
	MF.DungeonMessage:SetText("Gear Finder sources")
	MF.DungeonName:SetText("No sources enabled")
	MF.DungeonName:Show()
	MF.DungeonDesc:SetText("Choose dungeon, raid, currency reward, or crafted item sources.")
	MF.DungeonDesc:Show()
	MF.DungeonReason:SetText("")
	MF.DungeonReason:Hide()
	MF.AddButton:Hide()
	if MF.NoSourcesFrame then MF.NoSourcesFrame:Show() end
end

-- clears all displayed results, to be used when gearfinder/itemscore settings are changed or when user changes level/spec
-- no params
-- no returns
function GearFinder:ClearResults()
	if not GearFinder.MainFrame then return end
	local MF = GearFinder.MainFrame
	GearFinder.ResultsReady = false
	GearFinder.DungeonItemsScored = false
	
	-- Signal running coroutine to exit gracefully
	GearFinder.IsScanning = false
	
	-- Cancel timers first
	if GearFinder.ScoreTimer then
		cancel_gearfinder_timer("ScoreTimer")
	end
	if GearFinder.AntsTimer then
		cancel_gearfinder_timer("AntsTimer")
	end
	if GearFinder.StartupItemInfoTimer then
		cancel_gearfinder_timer("StartupItemInfoTimer")
	end
	if GearFinder.ItemInfoRefreshTimer then
		cancel_gearfinder_timer("ItemInfoRefreshTimer")
	end
	
	-- Release coroutine reference for GC (Lua 5.1 has no coroutine.close())
	GearFinder.ScoreThread = nil

	for i,v in pairs(ItemScore.GearFinder.UpgradeQueue) do 
		table.wipe(v) 
	end
	for i,v in pairs(ItemScore.GearFinder.FallbackQueue) do
		table.wipe(v)
	end

	MF.DungeonImage:SetTexture(nil)
	MF.DungeonImage:Hide()
	if MF.FooterArt then
		MF.FooterArt:SetTexture(nil)
		MF.FooterArt:Hide()
	end
	MF.DungeonMessage:SetText(L["gearfinder_suggested_dungeon"] or "Suggested dungeon")
	MF.DungeonName:SetText("")
	MF.DungeonDesc:SetText("")
	MF.DungeonReason:SetText("")
	MF.AddButton:Hide()
	if MF.ErrorBox then
		MF.ErrorBox.Text:SetText("")
		MF.ErrorBox:Hide()
	end
	if MF.NoSourcesFrame then MF.NoSourcesFrame:Hide() end

	for i,button in pairs(MF.Buttons) do
		button.itemicon:SetTexture(button.slotTexture)
		button.itemlink:SetText(" ")
		button.link = nil
		button.sourceTooltipLines = nil
		button.dungeonguide = nil
		button.bisTooltipText = nil
		if button.bisbadge then button.bisbadge:Hide() end
		button.itemdungeon:SetText(L["gearfinder_no_upgrade"])
		button.itemencounter:SetText(" ")
		button.itemicon:SetDesaturated(false)
		button:SetAlpha(0.5)
	end

	MF.overlay:Show()
end

function GearFinder:RefreshForInventoryChange()
	GearFinder:ClearResults()
	if GearFinder.MainFrame and GearFinder.MainFrame:IsVisible() then
		GearFinder:ScoreDungeonItems()
	end
end

function GearFinder:RefreshAfterSourceSettingChange()
	GearFinder:ClearResults()
	if GearFinder.MainFrame and GearFinder.MainFrame:IsVisible() then
		GearFinder:ScoreDungeonItems()
	end
end

local function GF_TraceBool(value)
	if value == nil then return "nil" end
	return value and "true" or "false"
end

local function GF_TraceItemMatches(candidate, targetID, targetLink)
	if not candidate then return false end
	if type(candidate) == "number" then return candidate == targetID end
	local candidateID = GF_GetItemID(candidate)
	if candidateID and targetID and candidateID == targetID then return true end
	local stripped = GF_StripLink(candidate)
	return stripped and targetLink and stripped == targetLink or false
end

local function GF_TraceQueue(queue, targetID, targetLink, lines, label)
	for slot, entries in pairs(queue or {}) do
		for index, entry in ipairs(entries) do
			if GF_TraceItemMatches(entry.itemlinkfull or entry.itemlink or entry.itemid, targetID, targetLink) then
				local bisPref = get_bis_progression_preference(slot, entry)
				lines[#lines + 1] = ("%s slot=%s pos=%d ident=%s phase=%s bis=%s score=%s change=%s delta=%s lvl=%s name=%s"):format(
					label,
					tostring(slot),
					index,
					tostring(entry.ident),
					tostring(entry.phase),
					bisPref and ((bisPref.category or "?") .. "#" .. tostring(bisPref.index or "?")) or "nil",
					tostring(entry.score),
					tostring(entry.change),
					tostring(entry.deltascore),
					tostring(entry.itemlvl),
					tostring(entry.cached_name or entry.name or entry.itemlink or "")
				)
			end
		end
	end
end

local function GF_TraceTopQueue(queue, slot, lines, label)
	local entries = queue and queue[slot]
	if not entries then return end
	for index = 1, math.min(5, #entries) do
		local entry = entries[index]
		local bisPref = get_bis_progression_preference(slot, entry)
		lines[#lines + 1] = ("%s top%d slot=%s item=%s id=%s score=%s change=%s ident=%s phase=%s bis=%s lvl=%s"):format(
			label,
			index,
			tostring(slot),
			tostring(entry.cached_name or entry.name or entry.itemlink or ""),
			tostring(get_candidate_item_id(entry)),
			tostring(entry.score),
			tostring(entry.change),
			tostring(entry.ident),
			tostring(entry.phase),
			bisPref and ((bisPref.category or "?") .. "#" .. tostring(bisPref.index or "?")) or "nil",
			tostring(entry.itemlvl)
		)
	end
end

local function GF_ShowTracePopup(text)
	local frame = GearFinder.TracePopup
	if not frame then
		frame = CreateFrame("Frame", "ZGVGearFinderTracePopup", UIParent)
		frame:SetFrameStrata("DIALOG")
		frame:SetWidth(760)
		frame:SetHeight(460)
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
		title:SetText("Zygor Gear Finder Trace")
		frame.title = title

		local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
		close:SetPoint("TOPRIGHT", -4, -4)

		local scroll = CreateFrame("ScrollFrame", "ZGVGearFinderTracePopupScroll", frame, "UIPanelScrollFrameTemplate")
		scroll:SetPoint("TOPLEFT", 18, -46)
		scroll:SetPoint("BOTTOMRIGHT", -34, 46)

		local edit = CreateFrame("EditBox", nil, scroll)
		edit:SetMultiLine(true)
		edit:SetAutoFocus(false)
		edit:SetFontObject(ChatFontNormal)
		edit:SetWidth(690)
		edit:SetScript("OnEscapePressed", function() frame:Hide() end)
		scroll:SetScrollChild(edit)
		frame.edit = edit

		local hint = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		hint:SetPoint("BOTTOMLEFT", 18, 18)
		hint:SetText("Click text, Ctrl+A, Ctrl+C to copy.")
		GearFinder.TracePopup = frame
	end
	frame.edit:SetText(text)
	frame.edit:HighlightText()
	frame.edit:SetFocus()
	frame:Show()
end

function GearFinder:GetTraceLines(input)
	local itemID = GF_GetItemID(input)
	if not itemID then
		return {"Usage: /zgvgeartrace item:40560 or /zgvgeartrace 40560"}
	end
	local itemlink = "item:" .. itemID
	local lines = {}
	lines[#lines + 1] = "Zygor Gear Finder Trace: copy all lines below."
	lines[#lines + 1] = ("ZGFT input=%s id=%s player=%s/%s level=%s build=%s resultsReady=%s scored=%s"):format(
		tostring(input),
		tostring(itemID),
		tostring(ItemScore.playerclass),
		tostring(ItemScore.playerclassName),
		tostring(ItemScore.playerlevel),
		tostring(ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build),
		GF_TraceBool(GearFinder.ResultsReady),
		GF_TraceBool(GearFinder.DungeonItemsScored)
	)
	lines[#lines + 1] = ("ZGFT settings normal=%s heroic=%s raid10=%s raid25=%s tierProgression=%s crafted=%s currency=%s"):format(
		GF_TraceBool(ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_1),
		GF_TraceBool(ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_2),
		GF_TraceBool(ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_3),
		GF_TraceBool(ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_4),
		GF_TraceBool(ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_tier_progression_mode),
		GF_TraceBool(not (ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_crafted_items == false)),
		GF_TraceBool(not (ZGV.db and ZGV.db.profile and ZGV.db.profile.gear_currency_rewards == false))
	)

	local dbitem = ItemScore:GetItemDetailsFromDB(itemlink)
	local item = safe_get_item_details(itemlink)
	local validity = ItemScore:GetItemValidity(itemlink)
	local is_upgrade, slot, change, score, comment, futurevalid, slot_2, change_2 = GF_EvaluateUpgrade(itemlink)
	lines[#lines + 1] = ("ZGFT db found=%s name=%s ilvl=%s req=%s slot=%s family=%s"):format(GF_TraceBool(dbitem), tostring(dbitem and dbitem.name), tostring(dbitem and dbitem.itemlvl), tostring(dbitem and dbitem.minlevel), tostring(dbitem and dbitem.equiploc), tostring(dbitem and dbitem.family))
	lines[#lines + 1] = ("ZGFT item found=%s name=%s fromdb=%s pending=%s type=%s slot=%s slot2=%s score=%s"):format(GF_TraceBool(item), tostring(item and item.name), GF_TraceBool(item and item.fromdb), GF_TraceBool(item and ItemScore:IsItemPendingResolution(item)), tostring(item and item.type), tostring(item and item.slot), tostring(item and item.slot_2), tostring(item and item.score))
	lines[#lines + 1] = ("ZGFT validity valid=%s final=%s code=%s reason=%s slot=%s slot2=%s"):format(GF_TraceBool(validity and validity.valid), GF_TraceBool(validity and validity.final), tostring(validity and validity.code), tostring(validity and validity.reason), tostring(validity and validity.slot), tostring(validity and validity.slot_2))
	lines[#lines + 1] = ("ZGFT eval upgrade=%s slot=%s change=%s score=%s comment=%s future=%s slot2=%s change2=%s"):format(GF_TraceBool(is_upgrade), tostring(slot), tostring(change), tostring(score), tostring(comment), GF_TraceBool(futurevalid), tostring(slot_2), tostring(change_2))

	local sourceCount = 0
	for dungeon, dungeondata in pairs(ZGV.ItemScore.Items or {}) do
		if GF_IsCuratedSourceKey(dungeon) and type(dungeondata) == "table" then
			for bossindex, bossdata in pairs(dungeondata) do
				if type(bossdata) == "table" then
					local player_items = GF_GetBossDropItems(bossdata, ItemScore.playerclass or "ALL")
					if player_items then
						for _, candidate in pairs(player_items) do
							if GF_TraceItemMatches(candidate, itemID, itemlink) then
								sourceCount = sourceCount + 1
								local valid, future, ident, maxscale, mythic, mythicplus, sourceComment = GearFinder:IsValidDungeon(dungeondata.dungeon or dungeondata.dungeonmap, dungeondata.instanceId, dungeon, dungeondata.heroic)
								local include = GF_ShouldIncludeCandidate(itemlink, future)
								lines[#lines + 1] = ("ZGFT source%d key=%s bossIndex=%s boss=%s bossName=%s special=%s phase=%s valid=%s future=%s ident=%s comment=%s include=%s"):format(
									sourceCount,
									tostring(dungeon),
									tostring(bossindex),
									tostring(bossdata.boss),
									tostring(bossdata.name),
									tostring(bossdata.special),
									tostring(bossdata.phase),
									GF_TraceBool(valid),
									GF_TraceBool(future),
									tostring(ident),
									tostring(sourceComment),
									GF_TraceBool(include)
								)
							end
						end
					end
				end
			end
		end
	end
	lines[#lines + 1] = ("ZGFT sourceCount=%d"):format(sourceCount)

	GF_TraceQueue(GearFinder.UpgradeQueue, itemID, itemlink, lines, "ZGFT upgradeQueue")
	GF_TraceQueue(GearFinder.FallbackQueue, itemID, itemlink, lines, "ZGFT fallbackQueue")
	if validity and validity.slot then
		GF_TraceTopQueue(GearFinder.UpgradeQueue, validity.slot, lines, "ZGFT upgradeQueue")
		GF_TraceTopQueue(GearFinder.FallbackQueue, validity.slot, lines, "ZGFT fallbackQueue")
		lines[#lines + 1] = ("ZGFT slotReject slot=%s reason=%s"):format(tostring(validity.slot), tostring(GearFinder.DebugSlotReject and GearFinder.DebugSlotReject[validity.slot]))
	end
	if validity and validity.slot_2 then
		GF_TraceTopQueue(GearFinder.UpgradeQueue, validity.slot_2, lines, "ZGFT upgradeQueue")
		GF_TraceTopQueue(GearFinder.FallbackQueue, validity.slot_2, lines, "ZGFT fallbackQueue")
		lines[#lines + 1] = ("ZGFT slotReject slot=%s reason=%s"):format(tostring(validity.slot_2), tostring(GearFinder.DebugSlotReject and GearFinder.DebugSlotReject[validity.slot_2]))
	end

	local summary = GearFinder.DebugSummary or {}
	lines[#lines + 1] = ("ZGFT summary sources=%s validDungeons=%s futureDungeons=%s invalid=%s"):format(tostring(summary.sourceInstances), tostring(summary.validDungeons), tostring(summary.futureDungeons), tostring(GF_CompactMapKeys(summary.invalidReasons)))
	return lines
end

function GearFinder:ShowTracePopup(input)
	local ok, result = pcall(function()
		return table.concat(GearFinder:GetTraceLines(input), "\n")
	end)
	GF_ShowTracePopup(ok and result or ("Zygor Gear Finder Trace failed:\n" .. tostring(result)))
end

SLASH_ZGVGEARTRACE1 = "/zgvgeartrace"
SlashCmdList["ZGVGEARTRACE"] = function(msg)
	if ZGV and ZGV.ItemScore and ZGV.ItemScore.GearFinder then
		ZGV.ItemScore.GearFinder:ShowTracePopup(msg)
	end
end
