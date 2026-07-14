local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore) then return end

-- GLOBAL Spoo

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local Gratuity = LibStub("LibGratuity-3.0")

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop

local ItemScore = ZGV.ItemScore
local Upgrades = {}
ItemScore.Upgrades = Upgrades
Upgrades.BagsItems = {}
Upgrades.BankItems = {}

local strip_link = ItemScore.strip_link

local ARTIFACT_MULTIPLIER = 2

Upgrades.EquippedItems = {
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
	Upgrades.EquippedItems[INVSLOT_RANGED] = {}
end

Upgrades.BagSnapshot = nil
Upgrades.BankIsOpen = false
Upgrades.BankSlots = {-1,6,7,8,9,10,11}
Upgrades.EquipFailureCooldown = {}


local GREEN = "|cff00ff00"
local RED = "|cffff0000"

local function cooldown_key(itemlink)
	return itemlink and (strip_link(itemlink) or itemlink) or nil
end

Upgrades.UniqueEquipped = {}

local BOE_CONFIRM_DIALOGS = {
	EQUIP_BIND = true,
	AUTOEQUIP_BIND = true,
	EQUIP_BIND_CONFIRM = true,
	AUTOEQUIP_BIND_CONFIRM = true,
}

local function is_boe_confirm_visible()
	if not StaticPopup_Visible then return false end
	for dialog in pairs(BOE_CONFIRM_DIALOGS) do
		if StaticPopup_Visible(dialog) then
			return true
		end
	end
	return false
end

local function apply_font(fontstring, fontpath, size, flags)
	if not fontstring then return end
	if fontpath and fontstring:SetFont(fontpath, size, flags) then return end
	if fontstring:SetFont(STANDARD_TEXT_FONT, size, flags) then return end
	fontstring:SetFont(FONT, size, flags)
end

local function apply_flat_backdrop(frame, bg, border)
	if not frame or not frame.SetBackdrop then return end
	frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8",
		edgeFile = "Interface\\Buttons\\WHITE8x8",
		tile = true,
		tileSize = 16,
		edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	if bg then frame:SetBackdropColor(bg[1], bg[2], bg[3], bg[4] or 1) end
	if border then frame:SetBackdropBorderColor(border[1], border[2], border[3], border[4] or 1) end
end

local function round_score(value)
	if not value then return 0 end
	return math.floor((value * 10) + 0.5) / 10
end

local function get_item_bind_state(itemlink, bagnum, bagslot)
	if not itemlink and not (bagnum and bagslot) then return "unknown" end
	if bagnum and bagslot and Gratuity.SetBagItem then
		Gratuity:SetBagItem(bagnum, bagslot)
		if Gratuity:NumLines() == 0 and itemlink then
			Gratuity:SetHyperlink(itemlink)
		end
	elseif itemlink then
		Gratuity:SetHyperlink(itemlink)
	end
	if Gratuity:NumLines() == 0 then return "unknown" end
	local boe, bound = false, false
	for i = 1, Gratuity:NumLines() do
		local line = Gratuity:GetLine(i)
		if line then
			if line == ITEM_SOULBOUND or line == ITEM_BIND_ON_PICKUP or line == ITEM_BIND_QUEST or line == ITEM_BNETACCOUNTBOUND or line == ITEM_BIND_TO_BNETACCOUNT then
				bound = true
			elseif line == ITEM_BIND_ON_EQUIP then
				boe = true
			end
		end
	end
	if bound then return "bound" end
	if boe then return "boe" end
	return "other"
end

local function clamp_display_percent(percent)
	if not percent then return nil end
	if percent >= 100 then return 99.99 end
	if percent <= -100 then return -99.99 end
	return percent
end

local function get_ready_item_details(itemlink)
	if not itemlink then return nil end
	local item = ItemScore:GetResolvedItemDetails(itemlink)
	if item and ItemScore:IsItemPendingResolution(item) then
		item = ItemScore:GetItemDetailsQueued(itemlink, true)
	end
	if item and not ItemScore:IsItemPendingResolution(item) then
		return item
	end
	return nil
end

local function is_bank_bagnum(bagnum)
	return bagnum and (bagnum < 0 or bagnum > NUM_BAG_SLOTS) and true or false
end

local function source_priority(item)
	if item and item.frombank then return 1 end
	return 2
end

local function queue_candidate_beats_existing(candidateDelta, candidateScore, candidateSource, queuedDelta, queuedScore, queuedSource)
	candidateDelta = candidateDelta or 0
	queuedDelta = queuedDelta or -math.huge
	if candidateDelta ~= queuedDelta then
		return candidateDelta > queuedDelta
	end
	candidateScore = candidateScore or 0
	queuedScore = queuedScore or 0
	if candidateScore ~= queuedScore then
		return candidateScore > queuedScore
	end
	return source_priority(candidateSource) > source_priority(queuedSource)
end

local function copy_stats(stats)
	local out = {}
	if not stats then return out end
	for k,v in pairs(stats) do out[k] = v end
	return out
end

local function build_stat_delta(item1, item2, item3, mode_new, mode_old)
	if not item1 then return false end

	local item1_details = get_ready_item_details(item1)
	local item2_details = item2 and get_ready_item_details(item2)
	local item3_details = item3 and get_ready_item_details(item3)

	local item1_stats = item1_details and copy_stats(item1_details.stats)
	local item2_stats = item2_details and copy_stats(item2_details.stats)
	local item3_stats = item3_details and copy_stats(item3_details.stats)

	if not item1_stats then return false end
	if item2 and not item2_stats then return false end
	if item3 and not item3_stats then return false end

	-- Empty comparison slots are a valid zero-stat baseline, but supplied items
	-- must still resolve above so the deferred item-data scan can retry them.
	item2_stats = item2_stats or {}
	item3_stats = item3_stats or {}

	local delta
	if not item3 and not (mode_old or mode_new) then
		if item1 and item2 then
			delta = {}
			for i,v in pairs(item1_stats) do delta[i] = 0 end
			for i,v in pairs(item2_stats) do delta[i] = 0 end
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) end
		else
			delta = item1_stats
		end
	else
		delta = {}
		for i,v in pairs(item1_stats) do delta[i] = 0 end
		for i,v in pairs(item2_stats) do delta[i] = 0 end
		for i,v in pairs(item3_stats) do delta[i] = 0 end

		if mode_old == "artifact" then
			for i,v in pairs(item3_stats) do item3_stats[i] = v * ARTIFACT_MULTIPLIER end
		end
		if mode_new == "artifact" then
			for i,v in pairs(item1_stats) do item1_stats[i] = v * ARTIFACT_MULTIPLIER end
		end

		if mode_new == "equip_pair" then
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) + (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		else
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		end
	end

	return delta
end

local RAW_POTENTIAL_STATS = {
	STRENGTH = true,
	AGILITY = true,
	INTELLECT = true,
	SPIRIT = true,
	STAMINA = true,
	SPELL_POWER = true,
	ATTACK_POWER = true,
	DAMAGE_PER_SECOND = true,
	FERAL_ATTACK_POWER = true,
	ARMOR = true,
	DEFENSE_SKILL = true,
	DODGE = true,
	PARRY = true,
	BLOCK = true,
	BLOCK_VALUE = true,
	HIT = true,
	EXPERTISE = true,
	CRIT = true,
	HASTE = true,
	ARMOR_PENETRATION = true,
	MANA_REGENERATION = true,
}

local function get_normalized_stat_value(item, wantedStat)
	if not item or not item.stats then return 0 end
	local total = 0
	for stat, value in pairs(item.stats) do
		if value and ItemScore:NormaliseStatName(stat) == wantedStat then
			total = total + value
		end
	end
	return total
end

local function get_primary_comparison_delta(slot, newitem, secondnewitem)
	if not newitem or not newitem.itemlink then return nil end
	local current = Upgrades.EquippedItems[slot]
	local currentLink = current and current.itemlink
	if secondnewitem and secondnewitem.itemlink and (slot == INVSLOT_MAINHAND or slot == INVSLOT_OFFHAND) then
		return build_stat_delta(newitem.itemlink, secondnewitem.itemlink, currentLink, "equip_pair")
	end
	if newitem.twohander and slot == INVSLOT_MAINHAND then
		local offhand = Upgrades.EquippedItems[INVSLOT_OFFHAND]
		local offhandLink = offhand and offhand.itemlink
		return build_stat_delta(newitem.itemlink, currentLink, offhandLink)
	end
	return build_stat_delta(newitem.itemlink, currentLink)
end

local function has_non_armor_stats(item)
	if not item or not item.stats then return false end
	for stat, value in pairs(item.stats) do
		stat = ItemScore:NormaliseStatName(stat)
		if value and value ~= 0 and stat ~= "ARMOR" then
			return true
		end
	end
	return false
end

local function get_potential_rationale(delta)
	if not delta then return nil, "none", 0 end
	local positive, negative = {}, false
	local score = 0
	for stat, value in pairs(delta) do
		if value and value ~= 0 and RAW_POTENTIAL_STATS[stat] and ItemScore.KnownKeyWords[stat] then
			if value > 0 then
				positive[#positive + 1] = {name = ItemScore.KnownKeyWords[stat], value = value}
				score = score + value
			else
				negative = true
			end
		end
	end
	if #positive == 0 then return nil, "none", 0 end
	table.sort(positive, function(a,b) return a.value > b.value end)
	local names = {}
	for i = 1, math.min(2, #positive) do
		names[#names + 1] = positive[i].name
	end
	local state = (#positive >= 2 and not negative) and "broad_upgrade" or "potential"
	return table.concat(names, ", "), state, score
end

function Upgrades:GetActiveBuildName()
	local classTag = ItemScore and ItemScore.playerclass
	local activeBuild = ZGV.db and ZGV.db.char and ZGV.db.char.gear_active_build
	local classNum = ItemScore and ItemScore.playerclassNum
	local level = ItemScore and ItemScore.playerlevel or UnitLevel("player")
	local usesFallback = ItemScore and ItemScore.activeBuildUsesFallback
	if ItemScore and classNum and activeBuild then
		return ItemScore:GetBuildName(classNum, activeBuild, level, usesFallback)
	end
	return "Spec "..tostring(activeBuild or 1)
end

function Upgrades:GetEquippedItemData(slot)
	if not slot then return nil end
	local cached = Upgrades.EquippedItems[slot]

	local liveLink = GetInventoryItemLink("player", slot)
	if not liveLink then
		if cached then
			table.wipe(cached)
		end
		return cached
	end

	local stripped = strip_link(liveLink) or liveLink
	if cached and cached.itemlink == stripped and cached.score ~= nil then
		return cached
	end

	local details = get_ready_item_details(stripped)
	if not details then
		if cached then
			table.wipe(cached)
			cached.itemlink = stripped
		end
		return cached
	end

	local score = ItemScore:GetItemScore(stripped) or 0
	local slotdata = cached or {}
	slotdata.itemlink = stripped
	slotdata.itemid = details.itemid
	slotdata.score = score
	slotdata.artifactscore = details.artifactscore
	slotdata.quality = details.quality
	slotdata.type = details.type
	Upgrades.EquippedItems[slot] = slotdata
	return slotdata
end

function Upgrades:GetUpgradeComparison(slot, newitem, secondnewitem)
	local candidateScore = newitem and (newitem.artifactscore or newitem.score or 0) or 0
	local baselineScore = 0
	local current = self:GetEquippedItemData(slot)
	local currentDetails = current and current.itemlink and get_ready_item_details(current.itemlink)
	local hasBaselineItem = current and current.itemlink and true or false
	baselineScore = current and (current.artifactscore or current.score or 0) or 0

	if newitem and newitem.twohander and slot == INVSLOT_MAINHAND and not secondnewitem then
		local mh = self:GetEquippedItemData(INVSLOT_MAINHAND)
		local oh = self:GetEquippedItemData(INVSLOT_OFFHAND)
		hasBaselineItem = (mh and mh.itemlink) or (oh and oh.itemlink) or false
		baselineScore = (mh and (mh.artifactscore or mh.score or 0) or 0) + (oh and (oh.artifactscore or oh.score or 0) or 0)
	elseif secondnewitem and (slot == INVSLOT_MAINHAND or slot == INVSLOT_OFFHAND) then
		candidateScore = candidateScore + (secondnewitem.artifactscore or secondnewitem.score or 0)
		local mh = self:GetEquippedItemData(INVSLOT_MAINHAND)
		local oh = self:GetEquippedItemData(INVSLOT_OFFHAND)
		hasBaselineItem = (mh and mh.itemlink) or (oh and oh.itemlink) or false
		baselineScore = (mh and (mh.artifactscore or mh.score or 0) or 0) + (oh and (oh.artifactscore or oh.score or 0) or 0)
	end

	local armorFallback = false
	if newitem and newitem.class == LE_ITEM_CLASS_ARMOR and newitem.type ~= "INVTYPE_CLOAK" then
		local candidateHasStats = has_non_armor_stats(newitem)
		local currentIsArmor = currentDetails and currentDetails.class == LE_ITEM_CLASS_ARMOR
		local currentHasStats = currentDetails and has_non_armor_stats(currentDetails)
		if not candidateHasStats and (not currentDetails or (currentIsArmor and not currentHasStats)) then
			candidateScore = get_normalized_stat_value(newitem, "ARMOR")
			baselineScore = currentDetails and get_normalized_stat_value(currentDetails, "ARMOR") or 0
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
	local delta = get_primary_comparison_delta(slot, newitem, secondnewitem)
	local rawRationale, rawState, rawScore = get_potential_rationale(delta)
	return {
		candidateScore = candidateScore,
		baselineScore = baselineScore,
		deltaScore = deltaScore,
		percent = percent,
		isNewItem = isNewItem,
		state = state,
		rawState = rawState,
		rawRationale = rawRationale,
		rawScore = rawScore,
		delta = delta,
		armorFallback = armorFallback,
	}
end

function Upgrades:GetUpgradeMetrics(slot, newitem, change, secondnewitem)
	local comparison = self:GetUpgradeComparison(slot, newitem, secondnewitem)
	return comparison.deltaScore, comparison.percent, comparison.isNewItem
end

function Upgrades:GetUpgradeRationale(delta)
	if not delta then return nil end

	local reasons = {}
	if (delta.DAMAGE_PER_SECOND or 0) > 0 then
		reasons[#reasons + 1] = ItemScore.KnownKeyWords.DAMAGE_PER_SECOND or "Weapon DPS"
	end

	local weighted = {}
	for stat, value in pairs(delta) do
		if value and value > 0 and stat ~= "DAMAGE_PER_SECOND" and ItemScore.KnownKeyWords[stat] then
			local weight = math.abs((ItemScore.ActiveRuleSet and ItemScore.ActiveRuleSet.stats and ItemScore.ActiveRuleSet.stats[stat]) or 0)
			weighted[#weighted + 1] = {
				name = ItemScore.KnownKeyWords[stat],
				score = (weight > 0 and weight or 0.01) * value,
				value = value,
			}
		end
	end
	table.sort(weighted, function(a,b)
		if a.score == b.score then return a.value > b.value end
		return a.score > b.score
	end)

	for i = 1, math.min(2, #weighted) do
		local name = weighted[i].name
		local seen
		for _, existing in ipairs(reasons) do
			if existing == name then seen = true break end
		end
		if not seen then reasons[#reasons + 1] = name end
	end

	if #reasons == 0 then return nil end
	return table.concat(reasons, ", ")
end

function Upgrades:FormatUpgradeSummary(slot, newitem, change, secondnewitem, delta)
	local comparison = self:GetUpgradeComparison(slot, newitem, secondnewitem)
	local scoreDelta, percent, isNewItem = comparison.deltaScore, comparison.percent, comparison.isNewItem
	local lines = {}
	if isNewItem then
		lines[#lines + 1] = "|cff44ff44"..(L["gearfinder_label_new_item"] or "New item").."|r"
	else
		local color = comparison.state == "downgrade" and "|cffff4444" or "|cff44ff44"
		lines[#lines + 1] = (color..(L["gearfinder_label_delta_score"] or "%+.1f score").."|r"):format(round_score(scoreDelta))
	end

	local scoreLineValue = nil
	if scoreDelta ~= nil then
		scoreLineValue = round_score(scoreDelta)
	elseif newitem and newitem.score then
		scoreLineValue = round_score(newitem.score)
	end
	local scoreParts = {}
	if scoreLineValue ~= nil then
		scoreParts[#scoreParts + 1] = ("Score: %.1f"):format(scoreLineValue)
	end
	local displayPercent = clamp_display_percent(percent)
	if displayPercent and not comparison.armorFallback and math.abs(displayPercent) >= 0.05 then
		scoreParts[#scoreParts + 1] = (L["gearfinder_upgrade_percent_short"] or "%+.1f%%"):format(displayPercent)
	end
	if #scoreParts > 0 then
		lines[#lines + 1] = table.concat(scoreParts, "  ")
	end
	return table.concat(lines, "\n"), self:GetUpgradeRationale(delta)
end

function Upgrades:ScoreEquippedItems()
	if not ZGV.db.profile.autogear then return end -- disabled
	ZGV:Debug("&itemscore ScoreEquippedItems")
	table.wipe(Upgrades.UniqueEquipped)
	Upgrades.ScoredEquippedItems = false

	if UnitIsDeadOrGhost("player") then return end

	local skipped = false

	for slotID,v in pairs(Upgrades.EquippedItems) do 
		table.wipe(v)
		local itemid = GetInventoryItemID("player", slotID)
		local itemlink = GetInventoryItemLink("player", slotID)
		if itemid then
			if itemlink then
				local item = get_ready_item_details(itemlink)
				itemlink = strip_link(itemlink)
				if item and itemlink then 
					local score,success,comment = ItemScore:GetItemScore(itemlink)
					local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
					if protected then score = 999999 end

					if success then
						if item.quality==6 then
							ZGV:Debug("&itemscore SEI Artifact equipped")
							if not item.twohander then
								item.artifactscore = item.score * ARTIFACT_MULTIPLIER
							end
						end

						local itemdata = Upgrades.EquippedItems[slotID]
						itemdata.itemlink = itemlink
						itemdata.itemid = item.itemid
						itemdata.score = score
						itemdata.artifactscore = item.artifactscore
						itemdata.quality = item.quality
						itemdata.type = item.type

						ZGV:Debug("&itemscore SEI slot %d scored %d/%d",slotID,score,item.artifactscore)

						-- cache counts of unique-equipped items
						local family, _ = Upgrades:GetItemUniqueness(item.itemid)
						if (family or 0)>0 then Upgrades.UniqueEquipped[family]=(Upgrades.UniqueEquipped[family] or 0)+1 end
					end
				else
					skipped = true
				end
			else
				skipped = true
			end
		end
	end

	if not skipped then
		Upgrades.ScoredEquippedItems = true
		-- 3.3.5a: no GetAverageItemLevel
		Upgrades.SBICounter = 0
		Upgrades:ScanBagsForUpgrades()
	else
		ZGV:Debug("&itemscore SEI missed some item")
		ZGV:Debug("&itemscore SEI NOT complete")
		Upgrades.ScoreEquippedItemsTimer = nil
		Upgrades.ScoreEquippedItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreEquippedItems,1)
	end

	ZGV:Debug("&itemscore SEI complete")
end

local unique_equip_families = ItemScore.Unique_Equipped_Families
function Upgrades:GetItemUniqueness(id)
	for family,fitems in pairs(unique_equip_families) do
		if fitems[id] then 
			return family,fitems[id]
		end
	end
	local fam,max = GetItemUniqueness(id)
	return fam,max
end

function Upgrades:CanUseUniqueItem(itemlink,slot)
	if not itemlink then return false end
	local item = get_ready_item_details(itemlink)

	if not item then return false end
	local uniqueness_fam,maxEquip = Upgrades:GetItemUniqueness(item.itemid)

	if not uniqueness_fam then return true, "no family" end

	local slot_1, slot_2 = item.slot, item.slot_2
	local current_itemid, equipped_item_1, equipped_item_2

	if slot_1 then 
		equipped_item_1 = Upgrades.EquippedItems[slot_1].itemid 
		if slot_1 == slot then current_itemid = equipped_item_1 end
	end

	if slot_2 then 
		equipped_item_2 = Upgrades.EquippedItems[slot_2].itemid 
		if slot_2 == slot then current_itemid = equipped_item_2 end
	end

	if uniqueness_fam<0 then
		if equipped_item_1 == item.itemid or equipped_item_2 == item.itemid then 
			-- ok, this itemid is equipped, we can only suggest it for replacement
			return current_itemid==item.itemid, "only replacement"
		else
			-- nothing from that family is equipped, do suggest
			return true, "family not equipped"
		end
	else 
		-- more than one allowed, count all and see
		local currently = Upgrades.UniqueEquipped[uniqueness_fam] or 0

		if currently >= maxEquip then
			-- we are at the threshold, suggest only if replacing other from same family
			return current_itemid and uniqueness_fam==Upgrades:GetItemUniqueness(current_itemid), "replace family "..uniqueness_fam
		else
			-- we are below threshold, do suggest
			return true, "has family "..uniqueness_fam
		end
	end
end

local function is_protected_item(item)
	if ItemScore.ProtectedGear[item.itemid] then
		if type(ItemScore.ProtectedGear[item.itemid])=="boolean" or (type(ItemScore.ProtectedGear[item.itemid])=="function" and ItemScore.ProtectedGear[item.itemid]()) then
			return true
		end
	end

	return false
end

local function get_change(old,new)
	if old and old>0 then return (new*100/old)-100 else return 100 end
end

local function get_upgrade(newitem,olditem,secondnewitem)
	local new_item_score = newitem.score or 0
	local olditem_details = olditem and olditem.itemlink and get_ready_item_details(olditem.itemlink)
	if (secondnewitem and secondnewitem.itemlink) then
		new_item_score = new_item_score + (secondnewitem.score or 0)
	end

	local arrowframe = ZGV.Pointer and ZGV.Pointer.ArrowFrame 

	if arrowframe then
		if olditem then
			pathnode = arrowframe.waypoint and arrowframe.waypoint.pathnode
			if pathnode then 
				local portkey = pathnode.item or (pathnode.link and pathnode.link.item)
				if portkey and portkey==olditem.itemid then return 0 end -- original protected by travel system
			end
		end
	end

	if is_protected_item(newitem) then return 100 end -- item protected by id

	if olditem then -- check if old item is protected
		if is_protected_item(olditem) then return 0 end -- original item protected by id
		if olditem.quality==7 and newitem.quality~=7 then -- if nonloom tries to replace loom with exp bonus
			local has_bonus, max_level = ItemScore:GetHeirloomInfo(olditem.itemlink)
			if has_bonus then return 0 end -- original heirloom protected
		end
	end


	if newitem.quality==7 and (not olditem or olditem.quality~=7) then -- if loom  with exp bonus tries to replace nonloom
		local has_bonus, max_level = ItemScore:GetHeirloomInfo(newitem.itemlink)
		if has_bonus then return 100 end -- heirloom protected
	end
	-- if it is loom replacing loom, regular scoring will take over


	if olditem_details and newitem and newitem.class == LE_ITEM_CLASS_ARMOR and olditem_details.class == LE_ITEM_CLASS_ARMOR and newitem.type ~= "INVTYPE_CLOAK" then
		local candidateHasStats = has_non_armor_stats(newitem)
		local currentHasStats = has_non_armor_stats(olditem_details)
		if newitem.quality and newitem.quality <= 1 and not candidateHasStats and currentHasStats then
			return 0 -- do not replace stat-bearing armor with grey/white armor-only gear
		end
	end

	if olditem and not ItemScore:IsValidItem(olditem.itemlink) then
		return 100 -- old item is not valid, spec change?
	end

	if olditem_details and newitem and newitem.class == LE_ITEM_CLASS_ARMOR and olditem_details.class == LE_ITEM_CLASS_ARMOR and newitem.type ~= "INVTYPE_CLOAK" then
		local candidateHasStats = has_non_armor_stats(newitem)
		local currentHasStats = has_non_armor_stats(olditem_details)
		if not candidateHasStats and not currentHasStats then
			local newArmor = get_normalized_stat_value(newitem, "ARMOR")
			local oldArmor = get_normalized_stat_value(olditem_details, "ARMOR")
			if newArmor > oldArmor then
				return get_change(oldArmor, newArmor)
			end
		end
	end

	if not (olditem and olditem.itemlink) then 
		-- no item equipped, whatever it is, it is an upgrade
		return 100
	elseif olditem.quality <= 1 and olditem.score==0 then -- quest items may be low quality, but are protected by magic
		-- low quality item
		if new_item_score > 0  then
			-- and we are equipping better quality one with any score. it will be an upgrade
			return 100
		end
	elseif olditem.score and new_item_score > olditem.score then
		-- ok, non trash equipped, and it is better
		return get_change(olditem.score, new_item_score)
	end

	-- just in case
	return 0
end

-- Checks if item is valid upgrade for any of matching slots
-- params:
--   itemlink - string
--   future - anything - for checks for future upgrades. if set, level restriction is not checked
-- returns:
--   is upgrade - bool
--   slot - int or nil - slotid for what the item is upgrade for, or nil if not an upgrade
--   change - int - percentage of score change
--   score - int - score value
--   comment - string - verbose comment
--   validfuture - bool - can item be valid in players future (min level)
--   slot_2 - int or nil - optional secondary slotid for what the item is upgrade for, or nil if not an upgrade
--   change_2 - int - percentage of score change

local fishing_gear = {[19969]=true,[50287]=true,[49895]=true}
function Upgrades:IsUpgrade(itemlink,future)
	if not itemlink then return false, nil, 0, 0, "no link" end
	itemlink = strip_link(itemlink)
	if not itemlink then return false, nil, 0, 0, "no link" end

	if Upgrades.BadUpgrades[itemlink] then return false, "", 0, 0, "rejected" end
	
	local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
	if protected then return true, protectedslot, 999999, 999999, "quest item" end

	local item = get_ready_item_details(itemlink)
	if not item then return false, nil, 0, 0, "pending details" end

	-- check validity
	local score,success,comment = ItemScore:GetItemScore(itemlink)
	if not success then return false, nil, 0, 0, "not scored" end
	local valid, final, comment = ItemScore:IsValidItem(itemlink,future)
	if not valid then return false, nil, 0, 0, "not valid "..comment end

	ZGV:Debug("&itemscore Checking %s for upgrade",itemlink)

	-- ok, item is valid, let's see if it can be used anywhere as upgrade
	local slot_1, slot_2, is2hnd = item.slot, item.slot_2 ,item.twohander
	local equipped_item_1, equipped_item_2
	if slot_1 then equipped_item_1 = Upgrades:GetEquippedItemData(slot_1) end
	if slot_2 then equipped_item_2 = Upgrades:GetEquippedItemData(slot_2) end

	-- protect fishing gear if fishing pole is equipped
	if equipped_item_1 and fishing_gear[equipped_item_1.itemid] then
		local mainhand = Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink
		if mainhand then 
			mainhand = get_ready_item_details(mainhand)
			if mainhand.subclass==20 then return false, "", 0, 0, "gone fishing" end
		end
	end

	local upgrade_slot_1, upgrade_slot_2 = 0, 0

	-- check first slot
	local upgrade_slot_1 = get_upgrade(item,equipped_item_1)
	local can_equip_1 = Upgrades:CanUseUniqueItem(itemlink,slot_1)

	--- this item has only one possible slot. 
	if not slot_2 then
		-- if we have upgrade in it, we are good
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, upgrade_slot_1, item.score, "ok" 
		else
			return false, slot_1, 0, item.score, "not upgrade"
		end
	end

	-- we are still here? then item has two possible slots. 

	-- check second slot
	local upgrade_slot_2 = get_upgrade(item,equipped_item_2)
	local can_equip_2 = Upgrades:CanUseUniqueItem(itemlink,slot_2)

	-- upgrade for both slots
	if upgrade_slot_1 > 0 and upgrade_slot_2 > 0 then
		return true, slot_1, upgrade_slot_1, item.score, "ok", false, slot_2, upgrade_slot_2
	else
	-- upgrade for one slot
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, upgrade_slot_1, item.score, "ok"
		elseif can_equip_2 and upgrade_slot_2 > 0 then
			return true, slot_2, upgrade_slot_2, item.score, "ok"
		end
	end

	-- we are still here? then item did not trigger any of upgrade possibilities. exit stage left
	return false, slot_1, 0, item.score, "not upgrade"
end

-- Calculates stat differences between given items
-- params:
--	item1 - string - itemlink of first item, always represents new item being equipped
--	item2 - string, optional - itemlink of second item (either old, old1 or new2)
--	item3 - string, optional - itemlink of third item (either old or old2)
--	mode_old - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
--	mode_new - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
function Upgrades:GetStatChange(item1,item2,item3,mode_new,mode_old)
	if not item1 then return false end -- something went wrong. we need at least one item
	local changes = ""
	local delta = build_stat_delta(item1,item2,item3,mode_new,mode_old)

	if not delta then return false end -- something went wrong. we should have at least single item stats

	-- 3.3.5a: no primary stat filtering needed

	local collapsed = {}
	for stat, value in pairs(delta) do
		if value and value ~= 0 then
			local normalized = ItemScore:NormaliseStatName(stat)
			if normalized then
				collapsed[normalized] = (collapsed[normalized] or 0) + value
			end
		end
	end

	for stat,value in pairs(collapsed) do
		if ItemScore.KnownKeyWords[stat] then -- hide stats that do not have blizzard names (shadow sockets for example)
			local mode = "%d"
			if stat == "DAMAGE_PER_SECOND" then -- show dps as float
				mode = "%.1f"
			end
			if value>0 then
				changes = changes..("%s+"..mode.." %s\n"):format(GREEN,value,ItemScore.KnownKeyWords[stat])
			elseif value<0 then
				changes = changes..("%s"..mode.." %s\n"):format(RED,value,ItemScore.KnownKeyWords[stat])
			end
		end
	end

	local item1_details = get_ready_item_details(item1)
	local item2_details = get_ready_item_details(item2)
	if (item1_details and item1_details.quality==7) or (item2_details and item2_details==7) then
		local heirloom_protected1 = ItemScore:GetHeirloomInfo(item1)
		local heirloom_protected2 = ItemScore:GetHeirloomInfo(item2)
		if heirloom_protected1 and not heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(GREEN)
		elseif not heirloom_protected1 and heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(RED)
		end
	end

	changes = changes:gsub("\n+$","")
	return changes.."|r"
end

Upgrades.UpgradeQueue = {
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
	Upgrades.UpgradeQueue[INVSLOT_RANGED] = {}
end

-- Checks item details for weapon types and pushes it into one of weapon arrays
-- params:
--	itemlink - string - item being tested
-- return:
--	success - bool - was item a valid weapon
local main_hand = {}
local off_hand = {}
local two_hand = {}
function Upgrades:QueueWeapon(itemlink)
	local item = get_ready_item_details(itemlink)
	if not item then return false end

	if Upgrades.BadUpgrades[item.itemlink] then return false, "", 0, 0, "rejected" end

	if item.class ~= LE_ITEM_CLASS_WEAPON and not (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then return false end

	if ItemScore:IsValidItem(item.itemlink) then
		ZGV:Debug("&itemscore QueueWeapon weapon %s",itemlink)

		local slot_1, slot_2, twohand = item.slot , item.slot_2, item.twohander
		local score = ItemScore:GetItemScore(itemlink)

		-- get combined artifact score, treat t
		if item.quality==6 then
			if not twohand then
				ZGV:Debug("&itemscore SBFU two piece artifact")
				item.artifactscore = item.score * ARTIFACT_MULTIPLIER
				twohand = true
			else
				ZGV:Debug("&itemscore SBFU one piece artifact")
				item.artifactscore = item.score	
			end
		end

		if twohand then -- 2h are treated as 1h for furygrip, so no dualwield check here anymore
			ZGV:Debug("&itemscore SBFU 2h weapon")
			table.insert(two_hand,item)
		else
			if (slot_1==INVSLOT_OFFHAND or slot_2==INVSLOT_OFFHAND) and Upgrades:CanUseUniqueItem(itemlink,INVSLOT_OFFHAND) then 
				ZGV:Debug("&itemscore SBFU oh weapon")
				table.insert(off_hand,item) 
			end
			if (slot_1==INVSLOT_MAINHAND) and Upgrades:CanUseUniqueItem(itemlink,INVSLOT_MAINHAND) then 
				ZGV:Debug("&itemscore SBFU mh weapon")
				table.insert(main_hand,item) 
			end
		end
		return true
	end

	return false
end

-- Clears all weapon queue arrays
-- params:
--	onlytemp - bool - will only clear items that are not in bags
function Upgrades:ResetWeaponQueue(onlytemp)
	if onlytemp then
		for i=#main_hand,1,-1 do if not main_hand[i].bagslot then table.remove(main_hand,i) end end
		for i=#off_hand,1,-1 do if not off_hand[i].bagslot then table.remove(off_hand,i) end end
		for i=#two_hand,1,-1 do if not two_hand[i].bagslot then table.remove(two_hand,i) end end
	else
		table.wipe(main_hand)
		table.wipe(off_hand)
		table.wipe(two_hand)
	end
end

-- Checks all queued weapons for best combination of mh+oh/2h
-- no params
-- returns:
--	mh - array, nillable - item object of mainhand to be used
--	oh - array, nillable - item object of offhand to be used
--	th - array, nillable - item object of twohand to be used
function Upgrades:ProcessWeaponQueue()
	-- check for best 2*1hander or 1*twohander, including merged artifact mess
	local equipped_weapon_1 = get_ready_item_details(Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink)
	local equipped_weapon_2 = get_ready_item_details(Upgrades.EquippedItems[INVSLOT_OFFHAND].itemlink)

	equipped_weapon_1 = equipped_weapon_1 and ItemScore:IsValidItem(equipped_weapon_1.itemlink) and equipped_weapon_1
	equipped_weapon_2 = equipped_weapon_2 and ItemScore:IsValidItem(equipped_weapon_2.itemlink) and equipped_weapon_2

	-- check if currently equipped weapons are still valid (spec change, for example)
	if equipped_weapon_2 then
		local s1, s2 = ItemScore:GetValidSlots(equipped_weapon_1)
		if s1~=INVSLOT_MAINHAND then equipped_weapon_1 = nil end
	end

	if equipped_weapon_1 then
		local s1, s2 = ItemScore:GetValidSlots(equipped_weapon_2)
		if (s1~=INVSLOT_OFFHAND and s2~=INVSLOT_OFFHAND) then equipped_weapon_2 = nil end
	end


	local uses_artifacts = equipped_weapon_1 and equipped_weapon_1.artifactscore
	local equipped_weapon_1_score = equipped_weapon_1 and (equipped_weapon_1.artifactscore or equipped_weapon_1.score) or 0
	local equipped_weapon_2_score = equipped_weapon_2 and (equipped_weapon_2.artifactscore or equipped_weapon_2.score) or 0

	ZGV:Debug("&itemscore PWQ Weapon 1 %d",equipped_weapon_1_score or -1)
	ZGV:Debug("&itemscore PWQ Weapon 2 %d",equipped_weapon_2_score or -1)
	local twohand = equipped_weapon_1 and (equipped_weapon_1.twohander or equipped_weapon_1.artifactscore)

	if equipped_weapon_1 then
		for i=#main_hand,1,-1 do if main_hand[i].itemid==equipped_weapon_1.itemid and main_hand[i].score==equipped_weapon_1.score then table.remove(main_hand,i) end end
		for i=#two_hand,1,-1 do if two_hand[i].itemid==equipped_weapon_1.itemid and two_hand[i].score==equipped_weapon_1.score then table.remove(two_hand,i) end end
	end
	if equipped_weapon_2 then
		for i=#off_hand,1,-1 do if off_hand[i].itemid==equipped_weapon_2.itemid and off_hand[i].score==equipped_weapon_2.score then table.remove(off_hand,i) end end
	end

	-- sort all weapons by score
	table.sort(main_hand,function(a,b) return (a.score or -math.huge)>(b.score or -math.huge) end)
	table.sort(off_hand,function(a,b) return (a.score or -math.huge)>(b.score or -math.huge) end)
	table.sort(two_hand,function(a,b) return ((a.artifactscore or a.score) or -math.huge)>((b.artifactscore or b.score) or -math.huge) end)

	--Spoo({main_hand=main_hand,off_hand=off_hand,two_hand=two_hand,equipped_weapon_1=equipped_weapon_1,equipped_weapon_2=equipped_weapon_2})
	--do return end

	-- same weapon cannot be at the same time in main and offhand
	if main_hand[1] and off_hand[1] and main_hand[1]==off_hand[1] then
		if not equipped_weapon_1 or twohand then
			ZGV:Debug("&itemscore PWQ same item, drop off, no main")
			table.remove(off_hand,1)
		elseif not equipped_weapon_2 then		
			ZGV:Debug("&itemscore PWQ same item, drop main, no off")
			table.remove(main_hand,1)
		else
			if ZGV.db.profile.devtestmhoh then
				-- if it is any upgrade for main, push it to there first, so we always have best scored item in main hand
				-- oh will follow in next cycle
				if off_hand[1].score > (equipped_weapon_1_score or 0) then table.remove(off_hand,1) end
			else
				local mh_change = get_upgrade(main_hand[1],equipped_weapon_1)
				local oh_change = get_upgrade(off_hand[1],equipped_weapon_2)

				if mh_change>oh_change then
					ZGV:Debug("&itemscore PWQ same item, keep main")
					table.remove(off_hand,1)
				else
					ZGV:Debug("&itemscore PWQ same item, keep off")
					table.remove(main_hand,1)
				end
			end
		end
	end

	local best_main = main_hand[1]
	local best_off = off_hand[1]
	local best_two = two_hand[1]
	local best_main_score = best_main and best_main.score or 0
	local best_off_score = best_off and best_off.score or 0
	local best_two_score = best_two and best_two.score or 0


	-- if current mainhand/offhand weapon is better than the best we found, do not consider it for replacement, only for pair calculations
	if (not twohand or ItemScore.playerDualTwohanders) and equipped_weapon_1 and equipped_weapon_1_score>best_main_score then
		ZGV:Debug("&itemscore PWQ Equipped MH better")
		best_main = nil
		best_main_score = equipped_weapon_1_score
	end

	if (not twohand) and equipped_weapon_2 and equipped_weapon_2_score>best_off_score then
		ZGV:Debug("&itemscore PWQ Equipped OH better")
		best_off = nil
		best_off_score = equipped_weapon_2_score
	end

	if twohand and equipped_weapon_1 and equipped_weapon_1_score>best_two_score then
		ZGV:Debug("&itemscore PWQ Equipped 2H better")
		best_two = nil
		best_two_score = equipped_weapon_1_score
	end

	ZGV:Debug("&itemscore PWQ Best MH %d %s",best_main_score,best_main and best_main.itemlink or "")
	ZGV:Debug("&itemscore PWQ Best OH %d %s",best_off_score,best_off and best_off.itemlink or "")
	ZGV:Debug("&itemscore PWQ Best 2H %d %s",best_two_score,best_two and best_two.itemlink or "")

	local best_pair_score = best_main_score + best_off_score
	-- On an exact tie, keep the weapon style the player is already using.
	-- Switching between a two-hander and a main/off-hand pair should require a real gain.
	local prefer_twohand = best_two_score > best_pair_score or (twohand and best_two_score == best_pair_score)

	if prefer_twohand then -- two hander is better, or tied while already using one
		ZGV:Debug("&itemscore PWQ 2H better than pair")
		--if best_two and (best_two_score > (equipped_weapon_1 and equipped_weapon_1_score or 0)) and (equipped_weapon_1 and equipped_weapon_1.itemlink ~= best_two.itemlink) then
		if best_two and (best_two_score > (equipped_weapon_1 and equipped_weapon_1_score or 0)) then
			ZGV:Debug("&itemscore PWQ 2H better than equipped")
			return nil, nil, best_two
		end
	elseif uses_artifacts then
		ZGV:Debug("&itemscore PWQ artifact equipped")
		if ((best_main and best_main_score or 0) + (best_off and best_off_score or 0)) > (equipped_weapon_1 and equipped_weapon_1.artifactscore or 0) then
			ZGV:Debug("&itemscore PWQ pair better than artifact")
			return best_main, best_off, nil
		end
	else
		local mh, oh = nil, nil
		if (best_main and best_main_score or 0) > 0 then
			ZGV:Debug("&itemscore PWQ MH upgrade")
			mh = best_main
		end
		if not twohand and (best_off and best_off_score or 0) > 0 then -- do not equip only offhand if twohand is currently in use
			ZGV:Debug("&itemscore PWQ OH upgrade")
			oh = best_off
		end
		return mh, oh, nil
	end
	ZGV:Debug("&itemscore PWQ no upgrades")
	return nil, nil, nil
end

function Upgrades:ScanBagsForUpgrades(onlyscan)
	ZGV:Debug("&itemscore ScanBagsForUpgrades")

	ItemScore.EquipTimer = nil
	if not ZGV.db.profile.autogear then return end -- disabled
	if not ItemScore.ActiveRuleSet then return end -- we are early, itemscore is not ready
	if not Upgrades.ScoredEquippedItems then return end  -- we are early, upgrades is not ready
	if is_boe_confirm_visible() then
		if not Upgrades.BoeConfirmScanTimer and ZGV.ScheduleTimer then
			Upgrades.BoeConfirmScanTimer = ZGV:ScheduleTimer(function()
				Upgrades.BoeConfirmScanTimer = nil
				Upgrades:ScanBagsForUpgrades()
			end, 0.5)
		end
		return
	end
	if Upgrades.BoeConfirmScanTimer and ZGV.CancelTimer then
		ZGV:CancelTimer(Upgrades.BoeConfirmScanTimer)
	end
	Upgrades.BoeConfirmScanTimer = nil

	-- clear any related popups
	if Upgrades.EquipPopup then Upgrades.EquipPopup:Hide() end

	-- clear upgrade queue
	for i,v in pairs(Upgrades.UpgradeQueue) do table.wipe(v) end
	Upgrades.UpgradeQueueCount = 0

	-- clear weapons
	Upgrades:ResetWeaponQueue()

	table.wipe(Upgrades.BagsItems)
	table.wipe(Upgrades.BankItems)
	local currentBagCounts = {}

	local filterSet
	if type(onlyscan) == "table" then
		filterSet = {}
		for _, itemlink in ipairs(onlyscan) do
			if itemlink then
				filterSet[strip_link(itemlink) or itemlink] = true
			end
		end
		onlyscan = nil
	end

	for bagnum=0, NUM_BAG_SLOTS do
		for bagslot=1, GetContainerNumSlots(bagnum) do
			local itemlink = GetContainerItemLink(bagnum,bagslot)
			if itemlink then
				local stripped = strip_link(itemlink) or itemlink
				currentBagCounts[stripped] = (currentBagCounts[stripped] or 0) + 1
				if not filterSet or filterSet[stripped] then
					Upgrades.BagsItems[stripped]= {bagnum=bagnum, bagslot=bagslot}
				end
			end
		end
	end
	if not onlyscan and Upgrades:IsBankOpen() then
		Upgrades:IterateBankItems(function(bagnum, bagslot)
			local itemlink = GetContainerItemLink(bagnum, bagslot)
			if itemlink then
				local stripped = strip_link(itemlink) or itemlink
				Upgrades.BankItems[stripped] = {bagnum=bagnum, bagslot=bagslot, frombank=true, source="bank"}
			end
		end)
	end
	Upgrades.BagSnapshot = currentBagCounts
	Upgrades:ScoreBagsItems()
end

function Upgrades:GetBagUpdateDelta()
	local currentBagCounts = {}
	local added = {}
	local removed = false

	for bagnum=0, NUM_BAG_SLOTS do
		for bagslot=1, GetContainerNumSlots(bagnum) do
			local itemlink = GetContainerItemLink(bagnum,bagslot)
			if itemlink then
				local stripped = strip_link(itemlink) or itemlink
				currentBagCounts[stripped] = (currentBagCounts[stripped] or 0) + 1
			end
		end
	end

	local previous = Upgrades.BagSnapshot
	Upgrades.BagSnapshot = currentBagCounts

	if not previous then
		return nil, true
	end

	for itemlink, count in pairs(currentBagCounts) do
		if count > (previous[itemlink] or 0) then
			added[#added + 1] = itemlink
		end
	end

	for itemlink, count in pairs(previous) do
		if (currentBagCounts[itemlink] or 0) < count then
			removed = true
			break
		end
	end

	return added, removed
end

function Upgrades:ScanRecentBagAcquisitions()
	if not ZGV.db.profile.autogear then return end
	if not ItemScore.ActiveRuleSet then return end
	if not Upgrades.ScoredEquippedItems then
		return Upgrades:ScanBagsForUpgrades()
	end

	local added, removed = Upgrades:GetBagUpdateDelta()
	if removed or not added then
		return Upgrades:ScanBagsForUpgrades()
	end
	if #added == 0 then
		return
	end

	return Upgrades:ScanBagsForUpgrades(added)
end


function Upgrades:ScoreBagsItems()
	local skipped = false

	local function resolve_container_items(itemtable)
		for itemlink,details in pairs(itemtable) do
			if not details.itemlink then
				local item = get_ready_item_details(itemlink)
				if item then
					item.bagnum = details.bagnum
					item.bagslot = details.bagslot
					item.frombank = details.frombank
					item.source = details.source or (details.frombank and "bank" or "bags")
					itemtable[itemlink] = item
				else
					skipped = true
				end
			end
		end
	end

	resolve_container_items(Upgrades.BagsItems)
	resolve_container_items(Upgrades.BankItems)

	if skipped and Upgrades.SBICounter< 5 then
		Upgrades.SBICounter = Upgrades.SBICounter + 1
		ZGV:Debug("&itemscore SBI missed some item")
		ZGV:Debug("&itemscore SBI NOT complete "..Upgrades.SBICounter)
		Upgrades.ScoreBagsItemsTimer = nil
		Upgrades.ScoreBagsItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreBagsItems,1)
		return
	end

	local function score_container_items(itemtable)
	for itemlink,item in pairs(itemtable) do
		if item.itemlink then
			itemlink = strip_link(itemlink)
			if (item.class == LE_ITEM_CLASS_WEAPON and not (item.type=="INVTYPE_THROWN" or item.type=="INVTYPE_RANGED" or item.type=="INVTYPE_RANGEDRIGHT")) or (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then
				-- for weapons, we may need to switch between 2hnd and two 1hnders, or artifact and regular weapons
				-- so, we will record everything, and then look for best combination later
				Upgrades:QueueWeapon(itemlink) 
			else
				local is_upgrade, slot, change, score, validfuture, comment, slot_2, change_2 = Upgrades:IsUpgrade(item.itemlink)
				if is_upgrade then
					local upgrade_slot = Upgrades.UpgradeQueue[slot]
						if upgrade_slot then
							local deltaScore = select(1, Upgrades:GetUpgradeMetrics(slot, item, change))
							local queuedDelta = upgrade_slot.deltascore
						if queuedDelta == nil and upgrade_slot.itemlink then
							local queuedItem = get_ready_item_details(upgrade_slot.itemlink)
							if queuedItem then
								queuedDelta = select(1, Upgrades:GetUpgradeMetrics(slot, queuedItem, upgrade_slot.change, upgrade_slot.pair))
							end
							end
							deltaScore = deltaScore or 0
							queuedDelta = queuedDelta or -math.huge
							if Upgrades:CanUseUniqueItem(itemlink,slot) and queue_candidate_beats_existing(deltaScore, score, item, queuedDelta, upgrade_slot.score, upgrade_slot) then
								ZGV:Debug("&itemscore SBFU armor upgrade slot=%d item=%s delta=%.2f score=%.2f replacing=%s olddelta=%.2f oldscore=%.2f",slot,itemlink,deltaScore,score or 0,upgrade_slot.itemlink or "",queuedDelta,upgrade_slot.score or 0)
								upgrade_slot.itemlink = itemlink
								upgrade_slot.score = score or 0 
								upgrade_slot.change = change or 0
								upgrade_slot.deltascore = deltaScore
								upgrade_slot.bagnum = item.bagnum
								upgrade_slot.bagslot = item.bagslot
								upgrade_slot.slot = slot
								upgrade_slot.frombank = item.frombank
								upgrade_slot.source = item.source
								if comment=="quest item" then upgrade_slot.quest=true end
							else
								ZGV:Debug("&itemscore SBFU armor reject slot=%d item=%s delta=%.2f score=%.2f current=%s currentdelta=%.2f currentscore=%.2f",slot,itemlink,deltaScore,score or 0,upgrade_slot.itemlink or "",queuedDelta,upgrade_slot.score or 0)
						end
					else
						ZGV:Debug("&itemscore SBFU missing queue slot item=%s slot=%s comment=%s",itemlink or "",tostring(slot),tostring(comment))
					end
					if slot_2 then -- upgrade for both slots (rings, trinkets, weapons)
						local upgrade_slot = Upgrades.UpgradeQueue[slot_2]
						if upgrade_slot then
							local deltaScore2 = select(1, Upgrades:GetUpgradeMetrics(slot_2, item, change_2))
							local queuedDelta2 = upgrade_slot.deltascore
							if queuedDelta2 == nil and upgrade_slot.itemlink then
								local queuedItem2 = get_ready_item_details(upgrade_slot.itemlink)
								if queuedItem2 then
									queuedDelta2 = select(1, Upgrades:GetUpgradeMetrics(slot_2, queuedItem2, upgrade_slot.change, upgrade_slot.pair))
								end
							end
							deltaScore2 = deltaScore2 or 0
							queuedDelta2 = queuedDelta2 or -math.huge
							if Upgrades:CanUseUniqueItem(itemlink,slot_2) and queue_candidate_beats_existing(deltaScore2, score, item, queuedDelta2, upgrade_slot.score, upgrade_slot) then
								ZGV:Debug("&itemscore SBFU second slot=%d item=%s delta=%.2f score=%.2f replacing=%s olddelta=%.2f oldscore=%.2f",slot_2,itemlink,deltaScore2,score or 0,upgrade_slot.itemlink or "",queuedDelta2,upgrade_slot.score or 0)
								upgrade_slot.itemlink = itemlink
								upgrade_slot.score = score or 0
								upgrade_slot.change = change_2 or 0
								upgrade_slot.deltascore = deltaScore2
								upgrade_slot.bagnum = item.bagnum
								upgrade_slot.bagslot = item.bagslot
								upgrade_slot.slot = slot_2
								upgrade_slot.frombank = item.frombank
								upgrade_slot.source = item.source
							else
								ZGV:Debug("&itemscore SBFU second reject slot=%d item=%s delta=%.2f score=%.2f current=%s currentdelta=%.2f currentscore=%.2f",slot_2,itemlink,deltaScore2,score or 0,upgrade_slot.itemlink or "",queuedDelta2,upgrade_slot.score or 0)
							end
						else
							ZGV:Debug("&itemscore SBFU missing second queue slot item=%s slot=%s comment=%s",itemlink or "",tostring(slot_2),tostring(comment))
						end
					end
				end
			end
		end
	end
	end

	score_container_items(Upgrades.BagsItems)
	score_container_items(Upgrades.BankItems)

	-- process upgrades now, since functions that called with onlyscan may want the results
	local mh, oh, th = Upgrades:ProcessWeaponQueue()


	local equipped_weapon_1 = get_ready_item_details(Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink)
	local equipped_weapon_2 = get_ready_item_details(Upgrades.EquippedItems[INVSLOT_OFFHAND].itemlink)

	-- if fishing pole is equipped, then do not replace it
	if equipped_weapon_1 and equipped_weapon_1.subclass==20 then mh,oh,th=nil,nil,nil end

	if th then
		local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_MAINHAND]
		local comparison = Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, th, nil)
		upgrade_slot.itemlink = th.itemlink
		upgrade_slot.score = th.score
		upgrade_slot.change = get_upgrade(th,equipped_weapon_1)
		upgrade_slot.deltascore = comparison.deltaScore
		upgrade_slot.bagnum = th.bagnum
		upgrade_slot.bagslot = th.bagslot
		upgrade_slot.slot = INVSLOT_MAINHAND
		upgrade_slot.frombank = th.frombank
		upgrade_slot.source = th.source
		upgrade_slot.twohand = true
		upgrade_slot.pair = equipped_weapon_2
		ZGV:Debug("&itemscore SBFU 2H %s",th.itemlink)
	else
		if mh then
			local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_MAINHAND]
			local comparison = Upgrades:GetUpgradeComparison(INVSLOT_MAINHAND, mh, oh)
			upgrade_slot.itemlink = mh.itemlink
			upgrade_slot.score = mh.score
			upgrade_slot.change = get_upgrade(mh,equipped_weapon_1,oh)
			upgrade_slot.deltascore = comparison.deltaScore
			upgrade_slot.bagnum = mh.bagnum
			upgrade_slot.bagslot = mh.bagslot
			upgrade_slot.slot = INVSLOT_MAINHAND
			upgrade_slot.frombank = mh.frombank
			upgrade_slot.source = mh.source
			if equipped_weapon_1 and equipped_weapon_1.twohander then
				upgrade_slot.pair = oh
			end
			ZGV:Debug("&itemscore SBFU MH %s",mh.itemlink)
		end
		if oh then
			local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_OFFHAND]
			local comparison = Upgrades:GetUpgradeComparison(INVSLOT_OFFHAND, oh, mh)
			upgrade_slot.itemlink = oh.itemlink
			upgrade_slot.score = oh.score
			upgrade_slot.change = get_upgrade(oh,equipped_weapon_2,mh)
			upgrade_slot.deltascore = comparison.deltaScore
			upgrade_slot.bagnum = oh.bagnum
			upgrade_slot.bagslot = oh.bagslot
			upgrade_slot.slot = INVSLOT_OFFHAND
			upgrade_slot.frombank = oh.frombank
			upgrade_slot.source = oh.source
			ZGV:Debug("&itemscore SBFU OH %s",oh.itemlink)
		end
	end

	for slot,newitem in pairs(Upgrades.UpgradeQueue) do 
		if newitem.itemlink then
			Upgrades.UpgradeQueueCount = Upgrades.UpgradeQueueCount + 1
		end
	end

	if onlyscan then return end

	if ItemScore.GearFinder and ItemScore.GearFinder.RefreshForInventoryChange then
		ItemScore.GearFinder:RefreshForInventoryChange()
	end

	Upgrades:ProcessPossibleUpgrades()
end

function Upgrades:ProcessPossibleUpgrades()
	if ZGV:IsPlayerInCombat() then return end -- nope, no can do, will retry when combat is done

	local process_slot, max_delta = nil,0
	for slot,newitem in pairs(Upgrades.UpgradeQueue) do 
		if slot==17 and process_slot then ZGV:Debug("&itemscore PPU slot %d: processed, breaking",slot) break end -- don't look at offhands if we have mainhand queued

		if newitem.itemlink then
			local cooldownUntil = Upgrades.EquipFailureCooldown[cooldown_key(newitem.itemlink)]
			if cooldownUntil and cooldownUntil > GetTime() then
				ZGV:Debug("&itemscore PPU slot %d: equip cooldown active for %s",slot,newitem.itemlink)
			else
				local equipped = Upgrades:GetEquippedItemData(slot)
				local hasEquippedItem = equipped and equipped.itemlink and true or false
				if not hasEquippedItem then -- empty slot, any valid queued item should be considered
					ZGV:Debug("&itemscore PPU slot %d: empty slot with queued item %s",slot,newitem.itemlink)
					process_slot = slot
					break
				else
					local deltaScore = newitem.deltascore
					if deltaScore == nil then
						local queueItem = get_ready_item_details(newitem.itemlink)
						if queueItem then
							deltaScore = select(1, Upgrades:GetUpgradeMetrics(slot, queueItem, newitem.change, newitem.pair))
							newitem.deltascore = deltaScore
						end
					end
					deltaScore = deltaScore or 0
					if deltaScore > max_delta then
						ZGV:Debug("&itemscore PPU slot %d: considering delta %.2f",slot,deltaScore)
						max_delta = deltaScore
						process_slot = slot
					end
				end
			end
		end
	end

	if process_slot then
		ZGV:Debug("&itemscore PPU process_slot ended up %d",process_slot)
		if ZGV.db.profile.autogearauto then
			Upgrades:ShowEquipmentChangeNotification(process_slot)
		else
			local minimize = ZGV.NotificationCenter:EntryExists("ZygorItemPopup")
			Upgrades:ShowEquipmentChangePopup(process_slot)
			if minimize then self.EquipPopup.private:Minimize(self.EquipPopup) end
		end
	end
end

function Upgrades:SetBadUpgrade(itemlink,slot)
	if not itemlink then return end
	Upgrades.BadUpgrades[itemlink] = true
	if Upgrades.UpgradeQueue[slot] then
		table.wipe(Upgrades.UpgradeQueue[slot])
		Upgrades.UpgradeQueue[slot].score = 0
	end

	-- continue with the queue after a delay so it doesn't immediately re-pop
	ZGV:ScheduleTimer(function()
		Upgrades.SBICounter = 0
		Upgrades:ScanBagsForUpgrades()
	end, 2)
end

function Upgrades:ShowEquipmentChangeNotification(slot)
	if not slot then return end
	local n_item = Upgrades.UpgradeQueue[slot]
	if not n_item or not n_item.itemlink then return end
	if n_item.frombank then
		return Upgrades:ShowEquipmentChangePopup(slot)
	end
	local new_item = get_ready_item_details(n_item.itemlink)
	if not new_item then return end
	local bindState = get_item_bind_state(new_item.itemlinkfull or new_item.itemlink, n_item.bagnum, n_item.bagslot)
	if bindState == "boe" then
		return Upgrades:ShowEquipmentChangePopup(slot)
	end

	local c_item = Upgrades.EquippedItems[slot]
	local current_item = c_item and c_item.itemlink and get_ready_item_details(c_item.itemlink)
	if c_item and c_item.itemlink  and not current_item then return end

	local message = L['itemscore_ae_equip']:format(new_item.itemlinkfull)

	if current_item then
		message = message .. L['itemscore_ae_over']:format(current_item.itemlinkfull)
	end
	message = message.."." --add a period :D

	-- Print a message to user then equip the item!
	ZGV:Print(message)

	if ZGV.NotificationCenter then
		local texture,texcoords = ZGV.PopupHandler:GetNCTextureInfo("gear")

		local onClick,priority,poptime,quiet
		ZGV.NotificationCenter:AddEntry(
			"ZygorItemPopup",
			L['notifcenter_gear_title'],
			L['notifcenter_gear_equipped']:format(new_item.itemlinkfull,G[new_item.type]),
			texture,
			texcoords,
			onClick,
			function(self)
				local position,x,y = ZGV.NotificationCenter:GetTooltipPosition()
				GameTooltip:SetOwner(self, position or "ANCHOR_CURSOR",x or 0, y or 0)

				GameTooltip:SetHyperlink(new_item.itemlink)
				GameTooltip:SetToplevel(true)
				GameTooltip:Show()
			end,
			priority,
			poptime,
			600, -- Remove after 10m
			quiet,
			nil, -- OnOpen
			"gear" )
	end

	Upgrades:Equip(n_item)
end

function Upgrades:CreatePopup()
	if Upgrades.EquipPopup then return end

	local function make_button(index)
		local button = CHAIN(CreateFrame("Button",nil,Upgrades.EquipPopup))
			:SetFrameLevel(Upgrades.EquipPopup:GetFrameLevel()+2)
			:SetHeight(50)
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
		.__END	

		button.itemicon = CHAIN(button:CreateTexture()) 
			:SetSize(30,30)
			:SetPoint("TOP",button) 
		.__END

		button.itemlink = CHAIN(button:CreateFontString())
			:SetPoint("TOP",button.itemicon,"BOTTOM",0,-5)
			:SetFont(FONT,12)
			:SetText("...button "..index)
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
			:SetJustifyH("CENTER")
			:SetWordWrap(true)
		.__END
		if button.itemlink.SetNonSpaceWrap then button.itemlink:SetNonSpaceWrap(true) end

		button:SetScript("OnEnter",function() 
			if button.link then
				GameTooltip:SetOwner(button, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link)
				GameTooltip:Show()
			end
		end)
		button:SetScript("OnLeave",function()
			GameTooltip:FadeOut()
		end)

		function button:RefreshSize()
			local textHeight = math.max(button.itemlink:GetStringHeight() or 0, button.itemlink:GetHeight() or 0, 12)
			button:SetHeight(30 + 5 + textHeight + 8)
		end

		function button:SetItem(item,index)
			if not item then return end
			button.itemicon:SetTexture(item.texture)
			local displayLink = item.itemlinkfull and item.itemlinkfull:match("%[") and item.itemlinkfull or nil
			button.itemlink:SetText(displayLink or item.name or item.itemlinkfull or item.itemlink or "")
			button.link = displayLink or item.itemlinkfull or item.itemlink
			button:RefreshSize()
			button:Show()
		end
		return button
	end

	Upgrades.EquipPopup = ZGV.PopupHandler:NewPopup("ZygorItemPopup","gear")
	local F = Upgrades.EquipPopup

	apply_flat_backdrop(F, { 0.07, 0.07, 0.08, 0.95 }, { 0.12, 0.12, 0.14, 0.90 })
	F:SetBackdropColor(0.07, 0.07, 0.08, 0.95)
	F:SetBackdropBorderColor(0.12, 0.12, 0.14, 0.90)

	F.header = F.header or CreateFrame("Frame", nil, F)
	F.header:SetPoint("TOPLEFT", F, "TOPLEFT", 6, -6)
	F.header:SetPoint("TOPRIGHT", F, "TOPRIGHT", -6, -6)
	F.header:SetHeight(24)
	F.header:SetFrameLevel(F:GetFrameLevel()+2)

	F.headerBg = F.headerBg or F.header:CreateTexture(nil, "BORDER")
	F.headerBg:SetAllPoints(F.header)
	F.headerBg:SetTexture("Interface\\Buttons\\WHITE8x8")
	F.headerBg:SetVertexColor(1, 1, 1, 0.05)

	F.headerLine = F.headerLine or F.header:CreateTexture(nil, "BORDER")
	F.headerLine:SetTexture("Interface\\Buttons\\WHITE8x8")
	F.headerLine:SetVertexColor(1, 1, 1, 0.10)
	F.headerLine:SetPoint("TOPLEFT", F.header, "BOTTOMLEFT", 0, -2)
	F.headerLine:SetPoint("TOPRIGHT", F.header, "BOTTOMRIGHT", 0, -2)
	F.headerLine:SetHeight(1)

	F.headerTitle = F.headerTitle or F.header:CreateFontString(nil, "ARTWORK")
	F.headerTitle:SetPoint("LEFT", F.header, "LEFT", 8, 0)
	F.headerTitle:SetJustifyH("LEFT")
	apply_font(F.headerTitle, ZGV.DIR.."\\Skins\\segoeuib.ttf", 13)
	F.headerTitle:SetTextColor(0.92, 0.94, 0.98, 1)
	F.headerTitle:SetText(L['notifcenter_gear_title'] or "Gear Advisor")

	F.headerMeta = F.headerMeta or F.header:CreateFontString(nil, "ARTWORK")
	F.headerMeta:SetPoint("RIGHT", F.header, "RIGHT", -8, 0)
	F.headerMeta:SetJustifyH("RIGHT")
	apply_font(F.headerMeta, ZGV.DIR.."\\Skins\\segoeui.ttf", 11)
	F.headerMeta:SetTextColor(0.72, 0.72, 0.75, 0.90)
	F.headerMeta:SetText("")

	F:SetWidth(300) -- Make it bigger!
	F.footer = F.footer or ZGV.CreateFrameWithBG("Frame", nil, F, nil)
	F.footer:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 0, 0)
	F.footer:SetPoint("BOTTOMRIGHT", F, "BOTTOMRIGHT", 0, 0)
	F.footer:SetHeight(42)
	F.footer:SetFrameLevel(F:GetFrameLevel()+1)
	if F.footer.SetBackdropColor then F.footer:SetBackdropColor(0.13,0.13,0.14,0.95) end
	if F.footer.SetBackdropBorderColor then F.footer:SetBackdropBorderColor(0.27,0.27,0.30,0.95) end

	F.footerLine = F.footerLine or F.footer:CreateTexture(nil,"BORDER")
	F.footerLine:SetTexture("Interface\\Buttons\\WHITE8x8")
	F.footerLine:SetVertexColor(1,1,1,0.08)
	F.footerLine:SetPoint("TOPLEFT",F.footer,"TOPLEFT",8,0)
	F.footerLine:SetPoint("TOPRIGHT",F.footer,"TOPRIGHT",-8,0)
	F.footerLine:SetHeight(1)

	F.secureacceptbutton = CreateFrame("Button", nil, F, "SecureActionButtonTemplate,UIPanelButtonTemplate")
	F.secureacceptbutton:SetSize(100, 22)
	F.secureacceptbutton:SetText("Equip")
	F.secureacceptbutton:SetPoint("BOTTOMLEFT", F, "BOTTOMLEFT", 10, 10)
	F.secureacceptbutton:Hide()
	F.secureacceptbutton:SetScript("PostClick", function(self)
		F.selfHidden = true
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
		F:Hide()
		local bindState = F.n_item and get_item_bind_state(F.n_item.itemlinkfull or F.n_item.itemlink, F.n_item.bagnum, F.n_item.bagslot)
		if F.n_item and F.n_item.itemlink then
			Upgrades.EquipFailureCooldown[cooldown_key(F.n_item.itemlink)] = GetTime() + 8
		end
		if F.n_item and F.n_item.pair and F.n_item.pair.itemlink then
			Upgrades.EquipFailureCooldown[cooldown_key(F.n_item.pair.itemlink)] = GetTime() + 8
		end
		if bindState ~= "boe" and ZGV.ScheduleTimer then
			ZGV:ScheduleTimer(function()
				Upgrades:ScoreEquippedItems()
			end, 0.2)
		end
	end)

	-- set up item display objects. item1 and item2 are for 1:1 replacements
	for i=1,2 do
		F["item"..i]=make_button(i)
	end

	-- make double item button, for mh/oh<>th replacement
	local button = CHAIN(CreateFrame("Button",nil,Upgrades.EquipPopup))
		:SetFrameLevel(Upgrades.EquipPopup:GetFrameLevel()+3)
		:SetSize(240,70)
	.__END	
		F.item_double = button

		local function show_item_1()
			if button.link1 then
				GameTooltip:SetOwner(button.linkcontainer_link1, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link1)
				GameTooltip:Show()
			end
		end

		local function show_item_2()
			if button.link2 then
				GameTooltip:SetOwner(button.linkcontainer_link2, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link2)
				GameTooltip:Show()
			end
		end

		local function hide_item() GameTooltip:FadeOut() end

		button.iconcontainer = CHAIN(CreateFrame("Frame",nil,button))
			:SetPoint("TOP",button,"TOP",0,-7)
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(70,30)
		.__END	
			button.iconcontainer_icon1 = CHAIN(CreateFrame("Frame",nil,button))
				:SetFrameLevel(button:GetFrameLevel()+1)
				:SetSize(30,30)
				:SetPoint("TOPLEFT",button.iconcontainer)
				:SetScript("OnEnter",show_item_1)
				:SetScript("OnLeave",hide_item)
				.__END	
				button.itemicon1 = CHAIN(button:CreateTexture()) 
					:SetSize(30,30)
					:SetPoint("TOP",button.iconcontainer_icon1) 
				.__END
			button.iconcontainer_icon2 = CHAIN(CreateFrame("Frame",nil,button))
				:SetFrameLevel(button:GetFrameLevel()+1)
				:SetSize(30,30)
				:SetPoint("TOPRIGHT",button.iconcontainer) 
				:SetScript("OnEnter",show_item_2)
				:SetScript("OnLeave",hide_item)
				.__END	
				button.itemicon2 = CHAIN(button:CreateTexture()) 
					:SetSize(30,30)
					:SetPoint("TOP",button.iconcontainer_icon2) 
				.__END

		button.linkcontainer_link1 = CHAIN(CreateFrame("Frame",nil,button))
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(200,15)
			:SetPoint("TOP",button.iconcontainer,"BOTTOM",0,-5)
			:SetScript("OnEnter",show_item_1)
			:SetScript("OnLeave",hide_item)
			.__END	
			button.itemlink1 = CHAIN(button:CreateFontString())
				:SetPoint("TOP",button.linkcontainer_link1)
				:SetFont(FONT,12)
				:SetText("...link1")
				:SetWidth(240)
				:SetJustifyH("CENTER")
				:SetWordWrap(true)
			.__END
			if button.itemlink1.SetNonSpaceWrap then button.itemlink1:SetNonSpaceWrap(true) end
		button.linkcontainer_link2 = CHAIN(CreateFrame("Frame",nil,button))
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(200,15)
			:SetPoint("TOP",button.linkcontainer_link1,"BOTTOM")
			:SetScript("OnEnter",show_item_2)
			:SetScript("OnLeave",hide_item)
			.__END	
			button.itemlink2 = CHAIN(button:CreateFontString())
				:SetPoint("TOP",button.linkcontainer_link2)
				:SetFont(FONT,12)
				:SetText("...link2")
				:SetWidth(240)
				:SetJustifyH("CENTER")
				:SetWordWrap(true)
			.__END
			if button.itemlink2.SetNonSpaceWrap then button.itemlink2:SetNonSpaceWrap(true) end
	button:SetScript("OnLeave",function()
	end)

	function button:SetItem(item,index)
		if not item then return end
		button.itemicon:SetTexture(item.texture)
		local displayLink = item.itemlinkfull and item.itemlinkfull:match("%[") and item.itemlinkfull or nil
		button.itemlink:SetText(displayLink or item.name or item.itemlinkfull or item.itemlink or "")
		button.link = displayLink or item.itemlinkfull or item.itemlink
		button:Show()
	end

	F.item1:SetPoint("TOPLEFT",F.text,"BOTTOMLEFT",0,-10)
	F.text:SetTextColor(0.86, 0.86, 0.88, 1.0)
	F.text:ClearAllPoints()
	F.text:SetPoint("TOP", F, "TOP", 0, -36)
	F.text:SetWidth(F:GetWidth() - 20)
	F.text:SetJustifyH("CENTER")

	F.bindwarning = CHAIN(F:CreateFontString(nil,"ARTWORK"))
		:SetWidth(F:GetWidth() - 20)
		:SetJustifyH("CENTER")
		:SetFont(FONT, ZGV.db.profile.fontsecsize)
		:SetTextColor(1.0, 0.80, 0.40, 1.0)
		:SetWordWrap(true)
		:Hide()
	.__END
	if F.bindwarning.SetNonSpaceWrap then F.bindwarning:SetNonSpaceWrap(true) end

	-- simple line: "with", to be positioned later
	F.string_with=CHAIN(F:CreateFontString(nil,"ARTWORK"))
		:SetHeight(12)
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
		:SetJustifyH("CENTER")
		:SetText(L['itemscore_ae_with'])
	.__END

	F.statscroll = F.statscroll or CreateFrame("ScrollFrame", "ZygorItemPopupStatScroll", F, "UIPanelScrollFrameTemplate")
	F.statscroll:SetFrameLevel(F:GetFrameLevel()+1)
	F.statscroll:EnableMouseWheel(false)
	F.statscroll:SetScript("OnMouseWheel", nil)

	F.statcontent = F.statcontent or CreateFrame("Frame", nil, F.statscroll)
	F.statcontent:SetWidth(F:GetWidth() - 28)
	F.statcontent:SetHeight(1)
	F.statscroll:SetScrollChild(F.statcontent)
	F.statscroll.ScrollBar = F.statscroll.ScrollBar or _G["ZygorItemPopupStatScrollScrollBar"]
	if F.statscroll.ScrollBar then
		F.statscroll.ScrollBar:ClearAllPoints()
		F.statscroll.ScrollBar:SetPoint("TOPRIGHT", F, "TOPRIGHT", -10, -120)
		F.statscroll.ScrollBar:SetPoint("BOTTOMRIGHT", F.footer, "TOPRIGHT", -10, 8)
		F.statscroll.ScrollBar:Hide()
	end

	-- FontString to display all of the stat differences
	F.stattext=CHAIN((F.stattext and F.stattext:SetParent(F.statcontent) and F.stattext) or F.statcontent:CreateFontString(nil,"ARTWORK"))
		:SetWidth(F:GetWidth()-28)
		:SetJustifyH("CENTER")
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
		:SetWordWrap(true)
	.__END
	F.stattext:SetPoint("TOPLEFT", F.statcontent, "TOPLEFT", 0, 0)
	F.stattext:SetPoint("TOPRIGHT", F.statcontent, "TOPRIGHT", 0, 0)
	if F.stattext.SetNonSpaceWrap then F.stattext:SetNonSpaceWrap(false) end
	F.stattext:Hide()
	F.statlines = F.statlines or {}
	F.statLinesHeight = 0

	F.RenderStatText = function(self, text, fontSize)
		local lines = {}
		text = tostring(text or "")
		if text == "" then
			lines[1] = " "
		else
			for line in (text .. "\n"):gmatch("(.-)\n") do
				lines[#lines + 1] = line ~= "" and line or " "
			end
		end

		local contentWidth = math.max((self:GetWidth() or 300) - 28, 140)
		local totalHeight = 0
		for i, lineText in ipairs(lines) do
			local fs = self.statlines[i]
			if not fs then
				fs = self.statcontent:CreateFontString(nil, "ARTWORK")
				fs:SetJustifyH("CENTER")
				fs:SetWordWrap(true)
				if fs.SetNonSpaceWrap then fs:SetNonSpaceWrap(false) end
				self.statlines[i] = fs
			end
			fs:ClearAllPoints()
			if i == 1 then
				fs:SetPoint("TOPLEFT", self.statcontent, "TOPLEFT", 0, 0)
				fs:SetPoint("TOPRIGHT", self.statcontent, "TOPRIGHT", 0, 0)
			else
				fs:SetPoint("TOPLEFT", self.statlines[i-1], "BOTTOMLEFT", 0, -1)
				fs:SetPoint("TOPRIGHT", self.statlines[i-1], "BOTTOMRIGHT", 0, -1)
			end
			fs:SetWidth(contentWidth)
			fs:SetFont(FONT, fontSize)
			fs:SetText(lineText)
			fs:Show()
			totalHeight = totalHeight + math.max(fs:GetStringHeight() or 0, fontSize + 2) + (i > 1 and 1 or 0)
		end
		for i = #lines + 1, #self.statlines do
			self.statlines[i]:Hide()
			self.statlines[i]:SetText("")
		end
		self.statLinesHeight = math.max(totalHeight, fontSize + 4)
		self.statcontent:SetHeight(self.statLinesHeight)
	end

	F.OnAccept = function(self)
		self.selfHidden = true
		Upgrades:Equip(self.n_item) -- fallback path for non-secure callers
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
	end

	F.OnDecline = function(self)
		self.selfHidden = true

		if IsShiftKeyDown() then
			Upgrades:ShowGearReport()
		end

		self.itemdeclined = true

		-- Send it to BadUpgrades because they don't want it suggested again.
		Upgrades:SetBadUpgrade(self.n_item.itemlink,self.n_item.slot)
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
	end

	F.OnEscape = function(self)
		if self.manualvisible then
			self.manualvisible = nil
		end
	end

	F.OnSettings = function(self)
		ZGV:OpenOptions("gear")
	end

	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local footerHeight = (self.footer and self.footer:GetHeight() or 0)
		local popupWidth = self:GetWidth() or 300
		local titleHeight = math.max(self.text:GetStringHeight() or 0, self.text:GetHeight() or 0, 18)
		local warningHeight = (self.bindwarning and self.bindwarning:IsVisible()) and math.max(self.bindwarning:GetStringHeight() or 0, self.bindwarning:GetHeight() or 0, 12) or 0
		local statFullHeight = math.max(self.statLinesHeight or 0, 14)
		local lineCount = tonumber(self.longStatLineCount) or 0
		local compact = lineCount >= 8
		local topChrome = compact and 30 or 36
		local topGap = compact and 6 or 10
		local rowGap = compact and 3 or 5
		local withGap = compact and 4 or 7
		local statGap = compact and 2 or 5
		local warningGap = warningHeight > 0 and (compact and 3 or 6) or 0
		local contentBottomGap = 4
		local parentHeight = (UIParent and UIParent:GetHeight() or 768)
		local heightRatio = 0.995
		local maxPopupHeight = math.max(math.floor(parentHeight * heightRatio), 340)
		maxPopupHeight = math.min(maxPopupHeight, parentHeight - 4)
		local fixedHeight = topChrome + titleHeight + topGap + footerHeight + contentBottomGap
		local rowsHeight = 0

		if self.layoutMode == "pair_old_to_new" then
			rowsHeight = (self.item_double:IsVisible() and self.item_double:GetHeight() or 0)
				+ (self.string_with:IsVisible() and (rowGap + self.string_with:GetHeight()) or 0)
				+ (self.item2:IsVisible() and (withGap + self.item2:GetHeight()) or 0)
				+ statGap
		elseif self.layoutMode == "old_to_pair_new" then
			rowsHeight = (self.item1:IsVisible() and self.item1:GetHeight() or 0)
				+ (self.string_with:IsVisible() and (rowGap + self.string_with:GetHeight()) or 0)
				+ (self.item_double:IsVisible() and (3 + self.item_double:GetHeight()) or 0)
				+ statGap
		elseif self.layoutMode == "old_to_new" then
			rowsHeight = (self.item1:IsVisible() and self.item1:GetHeight() or 0)
				+ (self.string_with:IsVisible() and (rowGap + self.string_with:GetHeight()) or 0)
				+ (self.item2:IsVisible() and (withGap + self.item2:GetHeight()) or 0)
				+ statGap
		elseif self.layoutMode == "new_only" then
			rowsHeight = (self.item1:IsVisible() and self.item1:GetHeight() or 0) + statGap
		end

		local availableStatHeight = maxPopupHeight - fixedHeight - rowsHeight - warningHeight - warningGap
		availableStatHeight = math.max(availableStatHeight, 160)
		local visibleStatHeight = math.min(statFullHeight, availableStatHeight)

		if self.statscroll and self.statscroll:IsVisible() then
			self.statscroll:SetHeight(visibleStatHeight)
			if self.statscroll.ScrollBar then
				self.statscroll.ScrollBar:Hide()
			end
			if self.statscroll.SetVerticalScroll then
				self.statscroll:SetVerticalScroll(0)
			end
		end

		local finalHeight = fixedHeight + rowsHeight + visibleStatHeight + warningGap + warningHeight
		self:SetHeight(math.max(math.min(finalHeight, maxPopupHeight), 180))
	end

	F.FitContent = function(self)
		if ZGV and ZGV.db and ZGV.db.profile and ZGV.db.profile.debug_display then
			local footerTop = self.footer and self.footer.GetTop and self.footer:GetTop() or nil
			local popupHeight = self.GetHeight and self:GetHeight() or nil
			local statTop = self.statscroll and self.statscroll.GetTop and self.statscroll:GetTop() or nil
			local statBottom = self.statscroll and self.statscroll.GetBottom and self.statscroll:GetBottom() or nil
			local statHeight = self.statscroll and self.statscroll.GetHeight and self.statscroll:GetHeight() or nil
			local warningTop = self.bindwarning and self.bindwarning:IsVisible() and self.bindwarning.GetTop and self.bindwarning:GetTop() or nil
			local warningBottom = self.bindwarning and self.bindwarning:IsVisible() and self.bindwarning.GetBottom and self.bindwarning:GetBottom() or nil
			ZGV:Debug("&itemscore popup layout height=%s footerTop=%s statTop=%s statBottom=%s statHeight=%s warningTop=%s warningBottom=%s",
				tostring(popupHeight),
				tostring(footerTop),
				tostring(statTop),
				tostring(statBottom),
				tostring(statHeight),
				tostring(warningTop),
				tostring(warningBottom)
			)
		end
	end

	F.LayoutContent = function(self)
		local leftPad, rightPad = 12, -12
		local mode = self.layoutMode

		if self.item1 and self.item1.RefreshSize then self.item1:RefreshSize() end
		if self.item2 and self.item2.RefreshSize then self.item2:RefreshSize() end
		local function rowBottomAnchor(frame)
			if frame == self.item_double then
				return (frame.itemlink2 and frame.itemlink2:IsVisible() and frame.itemlink2) or (frame.itemlink1 and frame.itemlink1:IsVisible() and frame.itemlink1) or frame
			end
			return (frame and frame.itemlink and frame.itemlink:IsVisible() and frame.itemlink) or frame
		end

		local compact = (tonumber(self.longStatLineCount) or 0) >= 8
		local function placeRow(frame, anchor, offset)
			frame:ClearAllPoints()
			frame:SetPoint("LEFT", self, "LEFT", leftPad, 0)
			frame:SetPoint("RIGHT", self, "RIGHT", rightPad, 0)
			frame:SetPoint("TOP", anchor, "BOTTOM", 0, -(offset or 5))
		end

		local function placeStats(anchor, offset)
			self.statscroll:ClearAllPoints()
			self.statscroll:SetPoint("LEFT", self, "LEFT", leftPad, 0)
			self.statscroll:SetPoint("RIGHT", self, "RIGHT", rightPad, 0)
			self.statscroll:SetPoint("TOP", anchor, "BOTTOM", 0, -(offset or 5))
			if self.bindwarning then
				self.bindwarning:ClearAllPoints()
				if self.bindwarning:IsVisible() then
					self.bindwarning:SetPoint("LEFT", self, "LEFT", leftPad, 0)
					self.bindwarning:SetPoint("RIGHT", self, "RIGHT", rightPad, 0)
					self.bindwarning:SetPoint("TOP", self.statscroll, "BOTTOM", 0, -(compact and 3 or 6))
				end
			end
		end

		if mode == "pair_old_to_new" then
			placeRow(self.item_double, self.text, compact and 6 or 10)
			self.string_with:ClearAllPoints()
			self.string_with:SetPoint("TOP", rowBottomAnchor(self.item_double), "BOTTOM", 0, -(compact and 3 or 5))
			placeRow(self.item2, self.string_with, compact and 4 or 7)
			placeStats(rowBottomAnchor(self.item2), compact and 2 or 5)
		elseif mode == "old_to_pair_new" then
			placeRow(self.item1, self.text, compact and 6 or 10)
			self.string_with:ClearAllPoints()
			self.string_with:SetPoint("TOP", rowBottomAnchor(self.item1), "BOTTOM", 0, -(compact and 3 or 5))
			placeRow(self.item_double, self.string_with, compact and 2 or 3)
			placeStats(rowBottomAnchor(self.item_double), compact and 2 or 5)
		elseif mode == "old_to_new" then
			placeRow(self.item1, self.text, compact and 6 or 10)
			self.string_with:ClearAllPoints()
			self.string_with:SetPoint("TOP", rowBottomAnchor(self.item1), "BOTTOM", 0, -(compact and 3 or 5))
			placeRow(self.item2, self.string_with, compact and 4 or 7)
			placeStats(rowBottomAnchor(self.item2), compact and 2 or 5)
		elseif mode == "new_only" then
			placeRow(self.item1, self.text, compact and 6 or 10)
			placeStats(rowBottomAnchor(self.item1), compact and 2 or 5)
		end
	end

	F.RefreshLayout = function(self)
		if self.statscroll and self.stattext then
			local contentWidth = math.max((self:GetWidth() or 300) - 28, 140)
			self.statcontent:SetWidth(contentWidth)
			for _, fs in ipairs(self.statlines or {}) do
				fs:SetWidth(contentWidth)
			end
			local fullTextHeight = math.max(self.statLinesHeight or 0, 14)
			self.statcontent:SetHeight(fullTextHeight)
			self.statscroll:SetHeight(fullTextHeight)
			if self.statscroll.ScrollBar then
				self.statscroll.ScrollBar:Hide()
			end
			if self.statscroll.SetVerticalScroll then
				self.statscroll:SetVerticalScroll(0)
			end
		end
		if self.LayoutContent then
			self:LayoutContent()
		end
		if self.AdjustSize then
			self:AdjustSize()
		end
		if self.FitContent then
			self:FitContent()
		end
	end

	F.returnMinimizeSettings = function(self)
		local mainText,quiet

		if Upgrades.UpgradeQueueCount > 1 then
			mainText = L['notifcenter_gear_text_pl']:format(Upgrades.UpgradeQueueCount)
		else
			mainText = L['notifcenter_gear_text_sl']:format(Upgrades.UpgradeQueueCount)
		end

		-- Table to allow popup out text to be different from normal notification text.
		local notifcationText = { mainText, L['notifcenter_gear_text'] }

		local tooltipText = L['notifcenter_gen_popup_tooltip']

		--Some special handling of this up in ScanBags for no items in Queue

		return notifcationText,L['notifcenter_gear_title'],tooltipText,nil,nil,nil,quiet
	end

	F:HookScript("OnHide",function(self)
		self.manualvisible = nil
	end)

	F:HookScript("OnShow",function(self)
		self.manualvisible = true
	end)

	F.acceptbutton:SetText("Equip")
	F.declinebutton:SetText(L['itemscore_ae_decline'])

	local function style_popup_button(button)
		if not button then return end
		button:SetWidth(116)
		button:SetHeight(26)
		local normal = button.GetNormalTexture and button:GetNormalTexture()
		local pushed = button.GetPushedTexture and button:GetPushedTexture()
		local highlight = button.GetHighlightTexture and button:GetHighlightTexture()
		local disabled = button.GetDisabledTexture and button:GetDisabledTexture()
		if normal then normal:SetTexture(nil) end
		if pushed then pushed:SetTexture(nil) end
		if highlight then highlight:SetTexture(nil) end
		if disabled then disabled:SetTexture(nil) end
		button:SetNormalFontObject("GameFontNormal")
		button:SetHighlightFontObject("GameFontNormal")
		button:SetDisabledFontObject("GameFontDisable")
		apply_flat_backdrop(button, { 0.11, 0.11, 0.13, 0.98 }, { 0.28, 0.28, 0.32, 0.98 })
		local fs = button.GetFontString and button:GetFontString()
		if fs then
			apply_font(fs, ZGV.DIR.."\\Skins\\segoeui.ttf", 11)
			fs:SetTextColor(0.92, 0.94, 0.98, 1)
			fs:SetShadowOffset(0, 0)
		end
		button:HookScript("OnEnter", function(self)
			if self.SetBackdropColor then self:SetBackdropColor(0.16, 0.16, 0.19, 0.98) end
			if self.SetBackdropBorderColor then self:SetBackdropBorderColor(0.40, 0.40, 0.46, 0.98) end
		end)
		button:HookScript("OnLeave", function(self)
			if self.SetBackdropColor then self:SetBackdropColor(0.11, 0.11, 0.13, 0.98) end
			if self.SetBackdropBorderColor then self:SetBackdropBorderColor(0.28, 0.28, 0.32, 0.98) end
		end)
		button:HookScript("OnMouseDown", function(self)
			if self.SetBackdropColor then self:SetBackdropColor(0.08, 0.08, 0.10, 0.98) end
		end)
		button:HookScript("OnMouseUp", function(self)
			local r, g, b = 0.11, 0.11, 0.13
			if self:IsMouseOver() then r, g, b = 0.16, 0.16, 0.19 end
			if self.SetBackdropColor then self:SetBackdropColor(r, g, b, 0.98) end
		end)
	end
	style_popup_button(F.acceptbutton)
	style_popup_button(F.declinebutton)
	style_popup_button(F.secureacceptbutton)

	CHAIN(F.acceptbutton)
		:SetParent(F.footer)
		:ClearAllPoints()
		:SetPoint("CENTER",F.footer,"CENTER",-66,-1)
	F.acceptbutton:SetScript("OnClick", function(self)
		F.selfHidden = true
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
		F:Hide()
		if F.n_item then
			Upgrades:Equip(F.n_item)
		end
	end)

	CHAIN(F.secureacceptbutton)
		:SetParent(F.footer)
		:ClearAllPoints()
		:SetPoint("CENTER",F.footer,"CENTER",-66,-1)

	CHAIN(F.declinebutton)
		--Popup.olditem is not always there. EG no item in that slot.
		:HookScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(F,"ANCHOR_BOTTOM") :SetText(L['itemscore_ae_report_tip']) :Show() end)
		:HookScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetParent(F.footer)
		:ClearAllPoints()
		:SetPoint("CENTER",F.footer,"CENTER",66,-1)

	-- dump info about items in popup
	function F.debug()
		Spoo({
			new_item = F.n_item, 
			new_item_cached = ItemScore.ItemCache[F.n_item.itemlink],
			current_item = F.c_item,
			current_item_cached = F.c_item and ItemScore.ItemCache[F.c_item.itemlink],
			change = Upgrades:GetStatChange(F.n_item and F.n_item.itemlink, F.c_item and F.c_item.itemlink),
			})
	end

	function F.AnchorTo(what,to,offset)
		--what:ClearAllPoints()
		offset = offset or 3
		what:SetPoint("TOP",to,"BOTTOM",0,-offset)
		what:Show()
	end
end

function Upgrades:ShowGearReport()
	local Gratuity = LibStub("LibGratuity-3.0")

	local out = ""
	-- player data
	out = out .. "*** Player data: " 
	out = out .. "\n class " .. ItemScore.playerclassName .. " system " .. (select(1,UnitClass("player")))
	out = out .. "\n build " .. (ZGV.db.char.gear_active_build or "?")
	out = out .. "\n level " .. ItemScore.playerlevel .. " system " .. UnitLevel("player")
	out = out .. "\n faction " .. ItemScore.playerfaction .. " system " .. UnitFactionGroup("player")

	out = out .. "\n\n*** Skills: "
	out = out .. "\n locale " .. GetLocale()
	out = out .. "\n** registered "
	for i,v in pairs(ItemScore.Skills) do
		out = out .. "\n " .. i .. " = " .. v
	end

	out = out .. "\n** raw "
	for i=1, GetNumSkillLines() do
		local skillName, _, _, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType = GetSkillLineInfo(i);
		local skillTag = ItemScore.SkillNamesRev[skillName]
		out = out .. "\n " .. skillName .. " " .. (skillTag or "")
	end

	out = out .. "\n\n*** Player statweights: " 
	if ItemScore.ActiveRuleSet and ItemScore.ActiveRuleSet.stats then
		for i,v in pairs(ItemScore.ActiveRuleSet.stats) do 
			out = out .. "\n " .. i .. " = " .. v
		end
	else
		out = out .. "\n unavailable"
	end
	out = out .. "\n Fallback weight = " .. ItemScore.whiteScoreWeight

	local new_item = Upgrades.EquipPopup.n_item
	local old_item = Upgrades.EquipPopup.c_item

	if new_item and new_item.itemlink then
		out = out .. "\n\n*** New item: " 
		out = out .. "\nTooltip: " 
		Gratuity:SetHyperlink(new_item.itemlink)
		for num=1,Gratuity:NumLines() do
			local line=Gratuity:GetLine(num)
			if not line then break end
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[new_item.itemlink]) do 
			if type(v)=="table" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	if old_item and old_item.itemlink then
		out = out .. "\n\n*** Old item: " 
		out = out .. "\nTooltip: " 
		Gratuity:SetHyperlink(old_item.itemlink)
		for num=1,Gratuity:NumLines() do
			local line=Gratuity:GetLine(num)
			if not line then break end
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[old_item.itemlink]) do 
			if type(v)=="table" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	out = out .. "\n\n*** Gear and queue: " 
	for slot,item in pairs(Upgrades.EquippedItems) do 
		local replacement = Upgrades.UpgradeQueue[slot]
		local replacement_details = replacement and replacement.itemlink and get_ready_item_details(replacement.itemlink)
		local current_details = item and item.itemlink and get_ready_item_details(item.itemlink)
		local current_text = current_details and (current_details.itemlink.." score "..item.score)
		local replacement_text = replacement_details and (" with "..replacement_details.itemlink.." score "..replacement.score)
		
		if current_text or replacement_text then
			out = out .. "\n " .. slot .. " ".. (current_text or "empty slot").." "..(replacement_text or "")
		end
	end

	ZGV:ShowDump(out,"Autoequip report")
end

function Upgrades:ShowEquipmentChangePopup(slot)
	if ZygorItemPopup and ZygorItemPopup:IsVisible() then return end
	ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")

	if not slot then return nil,"no slot" end
	local n_item = Upgrades.UpgradeQueue[slot]
	if not n_item or not n_item.itemlink then return nil,"no upgrade for slot",slot end
	local new_item = get_ready_item_details(n_item.itemlink)
	if not new_item then return nil,"no details for item" end

	local c_item = Upgrades.EquippedItems[slot]
	local current_item = c_item and c_item.itemlink and get_ready_item_details(c_item.itemlink)
	if c_item and c_item.itemlink and not current_item then return nil,"not current item" end

	local pair_item
	if n_item.pair then
		pair_item = n_item.pair.itemlink and get_ready_item_details(n_item.pair.itemlink)
		if not pair_item then return nil,"no pair link" end
	end

	local F = Upgrades.EquipPopup
	local AnchorTo = F.AnchorTo

	local function item_name_for_macro(itemdata)
		if not itemdata then return nil end
		return itemdata.name or (itemdata.itemlinkfull and GetItemInfo(itemdata.itemlinkfull)) or (itemdata.itemlink and GetItemInfo(itemdata.itemlink)) or nil
	end

	local function build_equip_macro()
		local lines = {}
		local primaryName = item_name_for_macro(new_item)
		if primaryName and n_item.slot then
			lines[#lines + 1] = ("/equipslot %d %s"):format(n_item.slot, primaryName)
		end
	if pair_item and n_item.pair then
			local pairName = item_name_for_macro(pair_item)
			local pairSlot = n_item.pair.slot or n_item.pair.slot_2
			if pairName and pairSlot then
				lines[#lines + 1] = ("/equipslot %d %s"):format(pairSlot, pairName)
			end
		end
		return table.concat(lines, "\n")
	end

	local bindState = get_item_bind_state(new_item.itemlinkfull or new_item.itemlink, n_item.bagnum, n_item.bagslot)
	local function get_popup_prompt(baseText)
		if n_item.frombank then
			return ("%s\n|cff88ccffAvailable in Bank|r"):format(baseText)
		end
		return baseText
	end

	-- keep references for debugging
	F.n_item = n_item
	F.c_item = c_item

	-- clean up
	if F.logo then F.logo:Hide() end
	F.item_double:Hide()
	F.item1:Hide()
	F.item2:Hide()
	F.string_with:Hide()
	F.stattext:Hide()
	F.statscroll:Hide()
	F.layoutMode = nil
	F.item1.link = nil
	F.item2.link = nil
	F.item1.itemicon:SetTexture(nil)
	F.item2.itemicon:SetTexture(nil)
	F.item1.itemlink:SetText("")
	F.item2.itemlink:SetText("")
	F.item_double.link1 = nil
	F.item_double.link2 = nil
	F.item_double.itemicon1:SetTexture(nil)
	F.item_double.itemicon2:SetTexture(nil)
	F.item_double.itemlink1:SetText("")
	F.item_double.itemlink2:SetText("")
	F.bindwarning:SetText("")
	F.bindwarning:Hide()
	F.acceptbutton:Hide()
	F.secureacceptbutton:Show()
	F.secureacceptbutton:SetText("Equip")
	F.secureacceptbutton:SetAttribute("type", "macro")
	F.secureacceptbutton:SetAttribute("macrotext", build_equip_macro())
	if n_item.frombank or bindState == "boe" then
		F.secureacceptbutton:Hide()
		F.acceptbutton:Show()
		F.acceptbutton:SetText("Equip")
	end
	local changes, delta, summary
	if current_item then
		if F.headerMeta then F.headerMeta:SetText(pair_item and "Compare Items" or "Compare Item") end
		F:SetText(get_popup_prompt(L['itemscore_ae_equip1'] or "Equip this item?"))

		F.string_with:Show()	
	F.stattext:Show()
	F.statscroll:Show()
		local mode_old = current_item.artifactscore and "artifact"
		local mode_new = new_item.artifactscore and "artifact"

		if pair_item then 
			if n_item.twohand then
				F.layoutMode = "old_to_new"
				F.item1:SetItem(current_item,1)
				F.item2:SetItem(new_item)	

				delta = build_stat_delta(new_item.itemlink,current_item.itemlink,pair_item.itemlink,mode_new,"equip_pair")
				summary = Upgrades:FormatUpgradeSummary(slot, new_item, n_item.change, nil, delta)
				changes = Upgrades:GetStatChange(new_item.itemlink,current_item.itemlink,pair_item.itemlink,mode_new,"equip_pair")
			else
				F.layoutMode = "old_to_new"
				F.item1:SetItem(current_item)	
				F.item2:SetItem(new_item)

				delta = build_stat_delta(new_item.itemlink,pair_item.itemlink,current_item.itemlink,"equip_pair",mode_old)
				summary = Upgrades:FormatUpgradeSummary(slot, new_item, n_item.change, pair_item, delta)
				changes = Upgrades:GetStatChange(new_item.itemlink,pair_item.itemlink,current_item.itemlink,"equip_pair",mode_old)
			end
			F.item2:Show()
		else
			F.layoutMode = "old_to_new"
			F.item1:SetItem(current_item,1)
			F.item2:SetItem(new_item,2)	
			--[[ item1 --]]
			--[[ with  --]]	AnchorTo(F.string_with,F.item1)
			--[[ item2 --]]	AnchorTo(F.item2,F.string_with)
			--[[ stats --]]	AnchorTo(F.stattext,F.item2)

			F.item2:Show()

			delta = build_stat_delta(new_item and new_item.itemlink,current_item and current_item.itemlink)
			summary = Upgrades:FormatUpgradeSummary(slot, new_item, n_item.change, nil, delta)
			changes = Upgrades:GetStatChange(new_item and new_item.itemlink,current_item and current_item.itemlink)
		end
	else
		F.layoutMode = "new_only"
		if F.headerMeta then F.headerMeta:SetText("New Item") end
		F:SetText(get_popup_prompt(L['itemscore_ae_equip2'] or "Equip this item?"))

		F.item1:SetItem(new_item)
		F.stattext:Show()		
		F.statscroll:Show()

		delta = build_stat_delta(new_item and new_item.itemlink)
		summary = Upgrades:FormatUpgradeSummary(slot, new_item, n_item.change, nil, delta)
		changes = Upgrades:GetStatChange(new_item and new_item.itemlink)
	end

	if not changes then return nil,"no changes" end-- something went wrong

	-- 3.3.5a: no player ilvl system to worry about

	if n_item.quest then
		summary = "|cff88ccffQuest item|r"
	end

	if bindState == "boe" then
		F.bindwarning:SetText("This item will bind to you if equipped.")
		F.bindwarning:Show()
	else
		F.bindwarning:SetText("")
		F.bindwarning:Hide()
	end

	local stattext = changes
	local sourceLine = n_item.frombank and "|cff88ccffSource: Bank|r\n" or ""
	if summary and summary ~= "" then
		stattext = ("%s|cffcccccc%s: %s|r\n%s\n\n%s"):format(sourceLine, L["itemscore_ae_build"] or "Build", Upgrades:GetActiveBuildName(), summary, changes)
	else
		stattext = ("%s|cffcccccc%s: %s|r\n\n%s"):format(sourceLine, L["itemscore_ae_build"] or "Build", Upgrades:GetActiveBuildName(), changes)
	end
	local lineCount = 1
	if stattext and stattext ~= "" then
		lineCount = select(2, stattext:gsub("\n", "\n")) + 1
	end
	F.longStatLineCount = lineCount
	local baseStatFont = ZGV.db.profile.fontsecsize or 12
	local statFontSize = baseStatFont
	if lineCount >= 11 then
		statFontSize = math.max(baseStatFont - 2, 10)
	elseif lineCount >= 8 then
		statFontSize = math.max(baseStatFont - 1, 11)
	end
	F.stattext:SetFont(FONT, statFontSize)
	F:RenderStatText(stattext, statFontSize)

	F:Show()
	F:RefreshLayout()

	return true
end

function Upgrades:IsBankOpen()
	return self.BankIsOpen and true or false
end

function Upgrades:SetBankOpen(isOpen)
	self.BankIsOpen = isOpen and true or false
end

function Upgrades:GetBankSlots()
	return self.BankSlots
end

function Upgrades:IterateBankItems(callback)
	if not self:IsBankOpen() or not callback then return end
	for _, bagnum in ipairs(self:GetBankSlots()) do
		local slots = GetContainerNumSlots and GetContainerNumSlots(bagnum) or 0
		for bagslot = 1, slots do
			callback(bagnum, bagslot)
		end
	end
end

function Upgrades:FindFreeBankSlot(preferredBag, preferredSlot)
	if not self:IsBankOpen() then return nil end
	if preferredBag and preferredSlot and not GetContainerItemLink(preferredBag, preferredSlot) then
		return preferredBag, preferredSlot
	end
	for _, bagnum in ipairs(self:GetBankSlots()) do
		local slots = GetContainerNumSlots and GetContainerNumSlots(bagnum) or 0
		for bagslot = 1, slots do
			if not GetContainerItemLink(bagnum, bagslot) then
				return bagnum, bagslot
			end
		end
	end
	return nil
end

function Upgrades:Equip(item,retry)
	if not item then return end
	if not (item.bagnum and item.bagslot) then -- we didn't get item location. shouldn't be possible
		Upgrades:ScoreEquippedItems()
		return false
	end
	-- 3.3.5a: GetContainerItemInfo returns texture,count,locked,quality,readable,lootable,link (7 values)
	local texture = GetContainerItemInfo(item.bagnum, item.bagslot)
	if not texture then -- item is not there, rerun upgrade search
		Upgrades:ScoreEquippedItems()
		return false
	end

	if item.frombank and not Upgrades:IsBankOpen() then
		Upgrades:ScoreEquippedItems()
		return false
	end

	local function debug_equip(message, force)
		if force or (ZGV.db and ZGV.db.profile and ZGV.db.profile.debug_display) then
			ZGV:Print("|cffffaa00[itemscore equip]|r "..message)
		end
	end

	local function safe_tostring(value)
		if value == nil then return "nil" end
		return tostring(value)
	end

	local function links_match(a, b)
		if not a or not b then return false end
		return strip_link(a) == strip_link(b)
	end

	local function place_cursor_in_bank(originalBag, originalSlot)
		if not CursorHasItem() then return true end
		if not Upgrades:IsBankOpen() then return false end
		local targetBag, targetSlot = Upgrades:FindFreeBankSlot(originalBag, originalSlot)
		if not (targetBag and targetSlot) then
			return false
		end
		PickupContainerItem(targetBag, targetSlot)
		return not CursorHasItem()
	end

	local function equip_container_item(bagnum, bagslot, slot, expectedLink, frombank, isBoE)
		if not (bagnum and bagslot) then return false end
		local bagLink = GetContainerItemLink(bagnum, bagslot)
		local link = bagLink or expectedLink
		if not link then return false end
		local details = get_ready_item_details(link)
		local itemName = (details and details.name) or GetItemInfo(link)
		local targetItemID = (details and details.itemid) or (ZGV.ItemLink and ZGV.ItemLink.GetItemID(link)) or GetInventoryItemID("player", slot)
		local beforeEquipped = slot and GetInventoryItemLink("player", slot)
		local targetLink = strip_link(link)

		local function equipped_now()
			local equippedLink = slot and GetInventoryItemLink("player", slot)
			local equippedID = slot and GetInventoryItemID("player", slot)
			if equippedLink and targetLink and strip_link(equippedLink) == targetLink then
				return equippedLink
			end
			if targetItemID and equippedID and targetItemID == equippedID then
				return equippedLink or true
			end
			return nil
		end

		if not frombank and EquipItemByName then
			EquipItemByName(link, slot)
			if isBoE and is_boe_confirm_visible() then
				debug_equip(("waiting for BoE bind confirmation after EquipItemByName slot=%s item=%s"):format(tostring(slot), tostring(link)))
				return "pending_boe"
			end
			if not equipped_now() and itemName then
				EquipItemByName(itemName, slot)
				if isBoE and is_boe_confirm_visible() then
					debug_equip(("waiting for BoE bind confirmation after EquipItemByName slot=%s item=%s"):format(tostring(slot), tostring(link)))
					return "pending_boe"
				end
			end
			if not equipped_now() then
				EquipItemByName(link)
				if isBoE and is_boe_confirm_visible() then
					debug_equip(("waiting for BoE bind confirmation after EquipItemByName slot=%s item=%s"):format(tostring(slot), tostring(link)))
					return "pending_boe"
				end
			end
			if not equipped_now() and itemName then
				EquipItemByName(itemName)
				if isBoE and is_boe_confirm_visible() then
					debug_equip(("waiting for BoE bind confirmation after EquipItemByName slot=%s item=%s"):format(tostring(slot), tostring(link)))
					return "pending_boe"
				end
			end
		end
		local afterEquipped = equipped_now()
		if afterEquipped then
			debug_equip(("equipped via EquipItemByName slot=%s item=%s"):format(tostring(slot), tostring(link)))
			return true
		end

		if not frombank and UseContainerItem then
			UseContainerItem(bagnum, bagslot)
			if isBoE and is_boe_confirm_visible() then
				debug_equip(("waiting for BoE bind confirmation after UseContainerItem slot=%s item=%s"):format(tostring(slot), tostring(link)))
				return "pending_boe"
			end
			afterEquipped = equipped_now()
			if afterEquipped then
				debug_equip(("equipped via UseContainerItem slot=%s item=%s"):format(tostring(slot), tostring(link)))
				return true
			end
		end

		ClearCursor()
		PickupContainerItem(bagnum, bagslot)
		if not CursorHasItem() then
			return false
		end
		if slot then
			if PickupInventoryItem then
				PickupInventoryItem(slot)
			else
				EquipCursorItem(slot)
			end
		elseif AutoEquipCursorItem then
			AutoEquipCursorItem()
		end
		if CursorHasItem() then
			if AutoEquipCursorItem then
				AutoEquipCursorItem()
			end
		end
		afterEquipped = equipped_now()
		local equipped = afterEquipped and true or false
		if not equipped and CursorHasItem() and AutoEquipCursorItem and not frombank then
			AutoEquipCursorItem()
			afterEquipped = equipped_now()
			equipped = afterEquipped and true or false
		end
		if equipped then
			debug_equip(("equipped via cursor slot=%s item=%s"):format(tostring(slot), tostring(link)))
			if frombank and CursorHasItem() then
				local restored = place_cursor_in_bank(bagnum, bagslot)
				if not restored then
					debug_equip(("bank restore failed slot=%s item=%s"):format(tostring(slot), tostring(link)), true)
					ClearCursor()
				end
			end
		end
		if CursorHasItem() and not frombank then ClearCursor() end
		return equipped
	end

	local bindState = get_item_bind_state(item.itemlinkfull or item.itemlink, item.bagnum, item.bagslot)
	local isBoE = bindState == "boe"
	local equippedMain = equip_container_item(item.bagnum, item.bagslot, item.slot, item.itemlink, item.frombank, isBoE)
	if equippedMain == "pending_boe" then
		return true
	end
	local equippedPair = true
	if item.pair and not item.twohand then
		local pairBindState = get_item_bind_state(item.pair.itemlinkfull or item.pair.itemlink, item.pair.bagnum, item.pair.bagslot)
		equippedPair = equip_container_item(item.pair.bagnum, item.pair.bagslot, item.pair.slot or item.pair.slot_2, item.pair.itemlink, item.pair.frombank, pairBindState == "boe")
		if equippedPair == "pending_boe" then
			return true
		end
	end

	if not equippedMain or not equippedPair then
		local cooldownKey = cooldown_key(item.itemlink)
		if bindState ~= "boe" then
			Upgrades.EquipFailureCooldown[cooldownKey] = GetTime() + 5
		else
			Upgrades.EquipFailureCooldown[cooldownKey] = GetTime() + 8
		end
		debug_equip(("equip failed: item=%s slot=%s bag=%s/%s equipped=%s baglink=%s"):format(
			safe_tostring(item.itemlink),
			safe_tostring(item.slot),
			safe_tostring(item.bagnum),
			safe_tostring(item.bagslot),
			safe_tostring((GetInventoryItemLink("player", item.slot))),
			safe_tostring((GetContainerItemLink(item.bagnum, item.bagslot)))
		))
		Upgrades:ScoreEquippedItems()
		return false
	end

	debug_equip(("equip success: item=%s slot=%s equipped=%s"):format(
		safe_tostring(item.itemlink),
		safe_tostring(item.slot),
		safe_tostring((GetInventoryItemLink("player", item.slot)))
	))
	return true

end
