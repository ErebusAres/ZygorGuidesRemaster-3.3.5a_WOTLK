local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.ItemScore) then return end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop

local ItemScore = ZGV.ItemScore
local QuestItem = ItemScore.QuestItem
local AutoEquip = {}
ItemScore.AutoEquip = AutoEquip

-- Cache index by item link because same itemid could be different items. [Item of the Bear] v [Item of the Whale]
local ScoreCache = {}
AutoEquip.ScoreCache = ScoreCache

local SC_NORULES = "no rules"
local SC_NOTYET = "not ready"

local TWOH = "INVTYPE_2HWEAPON"
local SHIELD = "INVTYPE_SHIELD"
local HOLDABLE = "INVTYPE_HOLDABLE"

AutoEquip.slots = {
	"HeadSlot",
	"NeckSlot",
	"ShoulderSlot",
	"BackSlot",
	"ChestSlot",
	"WristSlot",
	"HandsSlot",
	"WaistSlot",
	"LegsSlot",
	"FeetSlot",
	"Finger0Slot",
	"Finger1Slot",
	"Trinket0Slot",
	"Trinket1Slot",
	"MainHandSlot",
	"SecondaryHandSlot",
}

-- Some global strings that are not available but are still in the game.
ITEM_MOD_ATTACK_POWER_SHORT = G["ATTACK_POWER_TOOLTIP"]
ITEM_MOD_HOLY_RESISTANCE_SHORT = G["RESISTANCE1_NAME"]
ITEM_MOD_FIRE_RESISTANCE_SHORT = G["RESISTANCE2_NAME"]
ITEM_MOD_NATURE_RESISTANCE_SHORT = G["RESISTANCE3_NAME"]
ITEM_MOD_FROST_RESISTANCE_SHORT = G["RESISTANCE4_NAME"]
ITEM_MOD_SHADOW_RESISTANCE_SHORT = G["RESISTANCE5_NAME"]
ITEM_MOD_ARCANE_RESISTANCE_SHORT = G["RESISTANCE6_NAME"]

local function verboseDebug(s)
	if AutoEquip.verbose then
		AutoEquip:Debug(s)
	end
end

--[[
	Auto Equips version. We don't care about dungeon stuff over here. But heirlooms are very important.

	Heirloom items should outweigh anything else while they are still effective.
--]]

function AutoEquip:GetItemScore(id,invslot,link,verbose)
	local total = 0

	local score, code, desc = ItemScore:UsableHeirloomItem(id,self.verbose)
	if score < 0 then return score,code,desc
	else total = total + score end

	score, code, desc = ItemScore:GetItemScore(id,invslot,link,nil,self.verbose)
	if score < 0 then return score,code,desc
	else total = total + score end

	return total
end

--[[
	Returns nil if no link, or if link is not in cache.

	If the cached score is a number then it is > 0 so return it.
	Otherwise it is a code which means it is -1
--]]

local function getCachedScore(link)
	if not link then return end
	if ScoreCache[link] then
		return type(ScoreCache[link]) == "number" and ScoreCache[link] or -1
	end
end

--[[
	All the work is started in here.
--]]

function AutoEquip:ScanBagsForUpgrades(verbose,noreport,noblock)
	local Total = debugprofilestop()
	local Scoring, Upgrading, Itemcount, CacheHit = 0, 0, 0, 0
	if not (ZGV.db.profile.autogear and self.ready) then return end

	AutoEquip.verbose = verbose

	if self.LastBagScan and debugprofilestop()-self.LastBagScan < 100 and not (verbose or noblock) then return
	else self.LastBagScan = debugprofilestop() end

	if self.Popup and self.Popup:IsShown() then self.Popup:Hide() end
	if not self.CurrentItemsReady then self:ScoreCurrentEquippedItems() return end

	--wipe this before we put stuff in it in CompareItems
	if not self.PossibleUpgrades then self.PossibleUpgrades = {} else wipe(self.PossibleUpgrades) end
	if not self.BestMainHand then self.BestMainHand = {} else wipe(self.BestMainHand) end
	if not self.BestTwoHand then self.BestTwoHand = {} else wipe(self.BestTwoHand) end
	if not self.BestSecondaryHand then self.BestSecondaryHand = {} else wipe(self.BestSecondaryHand) end

	local foundAUpgrade

	self:Debug("Scanning bags")

	for bag=0, NUM_BAG_SLOTS do for bagslot=1, GetContainerNumSlots(bag) do while(1) do
		local itemid = GetContainerItemID(bag,bagslot)
		if not itemid then break end

		local for_quest = GetContainerItemQuestInfo(bag,bagslot)

		if self:TestForBadUpgrade(itemid) then
			verboseDebug(itemid.." Removed because it is in BadUpgrades.")
			break
		end

		local name ,link, quality ,iLevel,reqLevel,class,subclass,maxStack, equipslot , texture ,vendorPrice = GetItemInfo(itemid)
		if not name then return end --Don't suggest anything until this info is available.

		if not (equipslot and ItemScore:IsGoodEquipSlot(equipslot)) then
			--Only care about items with equipslots we can use.
			break
		elseif not (quality and (quality > 0 or ItemScore.playerlevel <=10)) then
			-- Don't want grey items unless under level 10.
			verboseDebug(itemid.." Removed because it is grey.")
			break
		elseif not IsUsableItem(itemid) then
			-- Item is not for our class.
			verboseDebug(itemid.." Removed because it is not usable. Wrong class?")
			break
		end

		if for_quest and   -- We have a questitem that we can equip.
		 texture == self.newitemfound then -- We just picked this item up. So it is what we need.
		  --Save it with the last quest we picked up so that we can suggest equipping it at some point.
			if ZGV.mostRecentlyAcceptedQuest and time() - (ZGV.mostRecentlyAcceptedQuest.time or time()) < 5 then -- this item should have been picked up instantly after the quest. Don't let old quest ids get put with the item.
				ZGV.db.profile.questitemcache[ZGV.mostRecentlyAcceptedQuest.id] = itemid
			end
		end
		self.newitemfound = nil

		Itemcount = Itemcount + 1

		local startScoring = debugprofilestop()
		 --We have an item to test!
		local slot1,slot2 = ItemScore:GetItemSlot(equipslot)
		local link=GetContainerItemLink(bag,bagslot) --This is needed for exact item stats
		local score,code,info = -1
		if ScoreCache[link] and not self.verbose then
			CacheHit = CacheHit + 1
			score = getCachedScore(link)
		else
			score, code, info = self:GetItemScore(itemid,nil,link)

			if code then
				-- Skip that item, but continue doing work.
				if ( code == SC_NOTYET or code == SC_NORULES )then
					self:Debug(itemid.." Removed because "..code.."-"..(info or "?"))
					break
				else
					ScoreCache[link] = code.."-"..(info or "?")
				end
			else
				ScoreCache[link] = score
			end
		end
		Scoring = Scoring + (debugprofilestop() - startScoring)

		if score <= 0 then self:Debug(itemid.." Removed because score <= 0. Reason in cache.") break end

		local item = {
			itemid = itemid,
			quality = quality,
			equipslot = equipslot,
			link = link,
			score = score,
			bag = bag,
			bagslot = bagslot,
			slot1 = slot1,
			slot2 = slot2,
		}

		-- Upgrades get put into self.PossibleUpgrades organized by slot they go in.
		local startUpgrading = debugprofilestop()
		local upgrade = self:IsItemUpgrade(item)
		Upgrading = Upgrading + (debugprofilestop() - startUpgrading)

		foundAUpgrade = foundAUpgrade or upgrade
	break end end end

	self:Debug("Number of Items Tested: %d",Itemcount)
	self:Debug("Time Scoring Items: %d",Scoring)
	self:Debug("Cache hit num: %d",CacheHit)
	self:Debug("Time to Find Upgrades: %d",Upgrading)
	self:Debug("Total Time: %d",debugprofilestop() - Total)

	-- TODO now that we have our list go through and make sure no items with 2 slots need priority suggesting to avoid
	-- unique conflicts with current items
	-- e.g maybe we need to replace 2nd ring before we can equip ring in slot 1.. Would be a extremely rare case.

	--Now all possible upgrades are in self.PossibleUpgrades

	--Before we Queue all the upgrades, weed out any bad weapon choices. Mainly caster stuff.
	if foundAUpgrade then
		self:WeaponTest()

		-- Not reporting the item to user. Just want to update possibleUpgrades
		if noreport then return end

		self:SetQueue()
		if #self.ItemQueue == 0 then --No items to try to equip.. we are done
			if self.Popup and ZGV.NotificationCenter then
				-- TODO is this a good spot for this?
				ZGV.NotificationCenter.RemoveButton(self.Popup:GetName())
			end
			return
		end

		self:TryToEquipItem()
	end
end

--[[
	Tests whether an item is a upgrade and able to be put into that slot according to item uniqueness rules.

	Returns true or false

	Note: Just because an item is an upgrade at this point doesn't mean a better item doesn't get found next.
--]]

function AutoEquip:IsItemUpgrade(item)
	if not (item and item.link) then return end
	self:Debug(("Testing %s for |cffffd700%s|r scored: %.2f"):format(item.link,item.slot1,item.score))

	local scoreOfNewItem = item.score
	local cur = self.CurrentGear
	local poss = self.PossibleUpgrades

	-- We don't care what is equipped at the moment if we are already planning on replacing it.
	-- If there is a item in poss, then we already know it is better than our current gear. No item in poss then our current gear is the best
	-- No item in either then equip anything!
	local curBest1 = poss[item.slot1] or cur[item.slot1]
	local curBest2 = poss[item.slot2] or cur[item.slot2]
	local myslot

	if ItemScore:IsFishingPole(curBest1 and curBest1.itemid) then return nil end	-- TODO remove this once notification center hits the trunk

	-- Time to check if the item is actually better
	if not item.slot2 then
		-- Only have to worry about one slot Wooo.

		if not curBest1 then
			-- nothing there yet.
			verboseDebug(("%s added to possible upgrades in %s."):format(item.link,item.slot1))
			myslot = item.slot1
			poss[item.slot1] = item
		elseif scoreOfNewItem > curBest1.score then
			-- There is an item / upgrade. But this one is better. Replace it.
			verboseDebug(("%s replacing %s to possible upgrades in %s."):format(item.link,curBest1.link,item.slot1))
			myslot = item.slot1
			poss[item.slot1] = item
		else
			verboseDebug(("%s |cffff0000rejected|r. Not better than %s"):format(item.link,curBest1.link))
		end
	else
		local slot1Ok = ItemScore:CanUseUniqueItem(item.itemid, curBest2 and curBest2.itemid)
		local slot2Ok =  ItemScore:CanUseUniqueItem(item.itemid, curBest1 and curBest1.itemid)

		if not (curBest1 or curBest2) then
			-- neither slot is occupied.
			verboseDebug(("%s added to possible upgrades in %s. - has slot2 - Both Clear"):format(item.link,item.slot1))
			myslot = item.slot1
			poss[item.slot1] = item -- Put it in the first slot since it fits in either.
		elseif not curBest1 and curBest2 then
			-- Nothing in slot1, but slot2 has something.

			if slot1Ok then
				-- curBest2 does not conflict!
				verboseDebug(("%s added to possible upgrades in %s. - has slot2 - Slot 1 Clear"):format(item.link,item.slot1))
				myslot = item.slot1
				poss[item.slot1] = item
			else
				-- curBest2 does conflict :( Try to replace it instead.
				if scoreOfNewItem > curBest2.score then
					verboseDebug(("%s replacing %s in possible upgrades in %s. - has slot2 - Slot 2 conflict."):format(item.link,curBest2.link,item.slot2))
					myslot = item.slot2
					poss[item.slot2] = item
				else
					-- curBest2 is better, can't put it in slot1. Can't use this item.
					-- TODO possible corner case is that item in 2nd slot gets replaced by a later item in the bags and then this item could be equipped. Super rare and even if it happened this item would get suggested next check.
					verboseDebug(("%s |cffff0000rejected|r. %s is unique, and is better."):format(item.link,curBest2.link))
				end
			end
		elseif curBest1 and not curBest2 then
			-- Something in slot1, but nothing in slot2.

			if slot2Ok then
				-- curBest1 does not conflict!
				verboseDebug(("%s added to possible upgrades in %s. - has slot2 - Slot 2 Clear"):format(item.link,item.slot2))
				myslot = item.slot2
				poss[item.slot2] = item
			else
				-- curBest1 does conflict :( Try to replace it instead.
				if scoreOfNewItem > curBest1.score then
					verboseDebug(("%s replacing %s to possible upgrades in %s. - has slot2 - Slot 1 conflict."):format(item.link,curBest1.link,item.slot1))
					myslot = item.slot1
					poss[item.slot1] = item
				else
					-- curBest1 is better, can't put it in slot1. Can't use this item.
					verboseDebug(("%s |cffff0000rejected|r. %s is unique, and is better."):format(item.link,curBest1.link))
				end
			end
		else -- curBest1 and curBest2
			-- Item can go in either slot. See which slot is a bigger upgrade.
			local diff1, diff2 = scoreOfNewItem - curBest1.score, scoreOfNewItem - curBest2.score

			if diff1 > 0 and diff1 >= diff2 and slot1Ok then
				-- better score and can fit.
				verboseDebug(("%s replacing %s to possible upgrades in %s. - has slot2 - Slot 1 >= upgrade."):format(item.link,curBest1.link,item.slot1))
				myslot = item.slot1
				poss[item.slot1] = item
			elseif diff2 > 0 and diff2 > diff1 and slot2Ok then
				verboseDebug(("%s replacing %s to possible upgrades in %s. - has slot2 - Slot 2 > upgrade."):format(item.link,curBest2.link,item.slot2))
				myslot = item.slot2
				poss[item.slot2] = item
			else
				-- Item isn't an upgrade in either slot.
				verboseDebug(("%s |cffff0000rejected|r. Not better than %s or %s or has a uniqueness conflict"):format(item.link,curBest1.link,curBest2.link))
			end
		end
	end

	-- Find the best weapon for each slot to test for combinations. later
	-- These are used to determine if a MH/OH combo is better than a 2H combo
	-- For casters 2h will always win a match with a 1h weapon head to head. But the 1h might actually be better when combined with a OH
	-- So we test for that later.
	-- Either gets placed into the slot the item was suggested for OR into it's primary slot.
	if myslot=="MainHandSlot" or ( not myslot and item.slot1=="MainHandSlot" )then
		if item.equipslot ~= TWOH then --It is a 1h
			if not self.BestMainHand.score or item.score > self.BestMainHand.score then
				verboseDebug(item.link.." is |cff00ff00BestMainHand|r option. Was "..(self.BestMainHand.link or "empty").." before")
				self.BestMainHand = item
			end
		else --We need two hands
			if not self.BestTwoHand.score or item.score > self.BestTwoHand.score then
				verboseDebug(item.link.." is |cff00ff00BestTwoHand|r option. Was "..(self.BestTwoHand.link or "empty").." before")
				self.BestTwoHand = item
			end
		end
	elseif myslot=="SecondaryHandSlot" or (not myslot and item.slot1=="SecondaryHandSlot") then
		if not self.BestSecondaryHand.score or item.score > self.BestSecondaryHand.score then
			verboseDebug(item.link.." is |cff00ff00BestSecondaryHand|r option. Was "..(self.BestSecondaryHand.link or "empty").." before")
			self.BestSecondaryHand = item
		end
	end

	-- no slot found so it isn't an upgrade
	if not myslot then return false end

	-- Well we got through ^^^ That without returning false... We are an upgrade!!
	self:Debug(("%s |cff00ff00PASSED!|r It is an upgrade for now."):format(item.link))
	return true
end

--[[
	Maintains the table of current gear so that we can just access it to know when to replace an item.

	bypass is used by Item-Quest to get a list of Current items. It doesn't care if autogear is on or not.
	Just wants the list of items.
--]]

function AutoEquip:ScoreCurrentEquippedItems(bypass,verbose)
	--if not (ZGV.db.profile.autogear and self.ready) and not bypass then return end
	if self.LastGearCheck and debugprofilestop()-self.LastGearCheck < 100 and not verbose then return
	else self.LastGearCheck = debugprofilestop() end

	-- Could be optimized to only update the slot that got replaced when PLAYER_EQUIPMENT_CHANGED is fired.
	if not self.CurrentGear then self.CurrentGear = {} else wipe(self.CurrentGear) end
	if self.PossibleUpgrades then wipe(self.PossibleUpgrades) end --wipe this when we change items so no bad items get in.

	self:Debug("Finding current equipped items and attempting to score them.")

	for num,slot in ipairs(self.slots) do while(1) do
		local slotid = GetInventorySlotInfo(slot)
		local itemid = GetInventoryItemID("player", slotid)
		if not itemid then break end

		local link = GetInventoryItemLink("player", slotid) --link is important b/c items with "of the bleh" have extra stats
		local score, code, info

		if ScoreCache[link] and not self.verbose then
			score = getCachedScore(link)
		else
			score, code, info = self:GetItemScore(itemid,nil,link)
			if code then
				if code == SC_NOTYET or code == SC_NORULES then
					self:Debug(code,info)
					-- At least 1 item is not ready. Stop.
					self.CurrentItemsReady = nil
					return
				else
					ScoreCache[link] = code.."-"..(info or "?")
				end
			else
				ScoreCache[link] = score
			end
		end

		if not score then
			self:Debug(("No score?!?. item - %s, score - %s"):format(link,score))
			self.CurrentItemsReady =  nil
			return
		end

		local questid,questitemid=QuestItem:TestCurStepForQuestItem()

		if questid and ZGV.Frame:IsVisible() and questitemid==itemid and not bypass then
			score = score + 9999999 --Don't replace it...EVER... well until quest is over.
		end

		local equipslot = select(9,GetItemInfo(itemid))

		self:Debug(("In slot |cffaaffaa"..slot.."|r, "..link.." got scored at |cffff0000%d"):format(score))

		if self.CurrentGear[slot] then
			self.CurrentGear[slot].itemid = itemid
			self.CurrentGear[slot].link = link
			self.CurrentGear[slot].score = score
			self.CurrentGear[slot].equipslot = equipslot
		else
			self.CurrentGear[slot] = {
				["itemid"] = itemid,
				["link"] = link,
				["score"] = score,
				["equipslot"] = equipslot, --important for seperating 2h and 1h
			}

			self.CurrentGear[slot].tostring = function(self)
				local ret = ("Id = %d , Score = %.1f %s , Link = %s"):format(self.itemid,self.score,info or "",self.link)
				return ret
			end
		end
	break end end

	--We got to the end without returning so we are fine.
	if not self.CurrentItemsReady then
		self.CurrentItemsReady = true
		self:ScanBagsForUpgrades()
	end
end

--[[
	Bad upgrades are upgrades that should be equipped according to our system, but user declined.

	Indexed by link rather than idea because [Item of the Bear] and [Item of the Whale] are very different but have same id.
--]]

function AutoEquip:SetBadUpgrade(id,link)
	local spec = ItemScore.playerspec
	ZGV.db.profile.badupgrade[spec][id] = link or (select(2,GetItemInfo(id)))
	self:Debug(link.." ID: "..id.." added to bad upgrade.")
end

function AutoEquip:TestForBadUpgrade(id)
	return ZGV.db.profile.badupgrade[ItemScore.playerspec][id]
end

--[[
	Adjusts the item suggestions and gets rid of bad suggestions.

	E.g. removing OH suggestions when we have a 2h weapon.
--]]

function AutoEquip:WeaponTest()
	local cur = self.CurrentGear
	local poss = self.PossibleUpgrades

	-- They equip anything anywhere.
	if ItemScore.playerdual2h then return end

	self:Debug("Testing Weapon stuff before suggesting items")
	local curMH = cur.MainHandSlot
	local curOH = cur.SecondaryHandSlot

	local possMH = poss.MainHandSlot		--self.PossibleUpgrades.MainHandSlot
	local possOH = poss.SecondaryHandSlot	--self.PossibleUpgrades.SecondaryHandSlot

	local bestMH = self.BestMainHand.itemid and self.BestMainHand				-- 1H only.
	local bestOH = self.BestSecondaryHand.itemid and self.BestSecondaryHand
	local best2H = self.BestTwoHand.itemid and self.BestTwoHand

	-- Dual wielding classes first. Rogue/Monk/FuryWarrior/DK/?
	if ItemScore.playerdualwield then
		if curMH and curOH then
			-- Have a weapon in both slots
			if possMH and possMH.equipslot==TWOH then
				-- Trying to equip a 2h! not allow
				verboseDebug(("%s |cffff0000rejected|r. 1hx2 Equipped. No 2H allowed."):format(possMH.link))
				self.PossibleUpgrades.MainHandSlot = nil

				self:IsItemUpgrade(bestMH) -- Now that the 2h is outta the picture we might have another choice to put in MH. Will be added to list if it is an upgrade
			end
		elseif curMH and not curOH then
			-- 1 weapon equipped. Might be a 1h or 2h
			if curMH.equipslot == TWOH then
				-- We have a 2h equipped. and can only use 1
				if (not possMH or (possMH and possMH.equipslot == TWOH)) and possOH then
					-- If we have a MH we are trying to equip that is a 2h then we can't use a OH with it.
					-- However if we are trying to equip a 1h then a oh is allowed
					verboseDebug(("%s rejected. 2h Equipped. No OH allowed."):format(possOH.link))
					self.PossibleUpgrades.SecondaryHandSlot = nil
				end
			else
				-- We have a 1H equipped
				if possMH and possOH and possMH.equipslot == TWOH then
					-- We have a OH we can equip, but if MH is going to be a 2h. Let user dual wield.
					-- No OH to equip then use w/e is better
					verboseDebug(("%s rejected. 1h Equipped so using dual wielding."):format(possMH.link))
					self.PossibleUpgrades.MainHandSlot = nil

					self:IsItemUpgrade(bestMH) -- Now that the 2h is outta the picture we might have another choice to put in MH. Will be added to list if it is an upgrade
				end
			end
		elseif not curMH and curOH then
				-- Offhand equipped but no MH
				if possMH and possMH.equipslot == TWOH then
					-- Going to try to equip a 2h
					if not bestMH and possOH then
						-- No 1 handed MH weapon to equip. Don't try to equip a OH
						verboseDebug(("%s rejected. Going to equip 2h. No OH allowed."):format(possOH.link))
						self.PossibleUpgrades.SecondaryHandSlot = nil
						-- Possible issue... MAYBE if the OH you are using is actually better than the 2h you are equipping then could equip a crappy 2h and replace a OH. But then you are an idiot for not having it in MH/not having a MH
					elseif bestMH then --There is a Mh so use it.
						-- Ignore the 2h suggestion cause user wants to dual weild!
						self.PossibleUpgrades.MainHandSlot = bestMH
					end
				end
		elseif not curMH and not curOH then
				 -- No Weapon equipped
				if possMH and possOH and possMH.equipslot == TWOH then
					-- We are trying to equip a 2h in MH, and also a OH. Get rid of the OH because you can't use it with a 2h
					verboseDebug(("%s rejected. Suggesting a 2h. No OH allowed."):format(possOH.link))
					self.PossibleUpgrades.SecondaryHandSlot = nil
				end
		end
		-- We are done. Rest is for casters.
		return
	end

	-- Casters can have a 2h or a 1h + OH.
	-- When comparing these two you just want score(2h) to be compared to score(1h) + statscore(oh)
	-- Only score the stats on the OH because scoring the Itemlevel again would give it an advantage.

	-- Will have the best item in these variables. Either it is equipped or is was suggested to be equipped.
	local bestAvailMH = bestMH
	local bestAvail2H = best2H
	if curMH then
		if curMH.equipslot == TWOH then
			bestAvail2H = best2H and best2H.score > curMH.score and best2H or curMH
		else
			bestAvailMH = bestMH and bestMH.score > curMH.score and bestMH or curMH
		end
	end
	local bestAvailOH = bestOH and bestOH.score > ( curOH and curOH.score or 0) and bestOH or curOH
	--Get OH score based on stats only
	local ohscore = bestAvailOH and ItemScore:ScoreItemStats(bestAvailOH.itemid, nil, bestAvailOH.link) or 0

	if bestAvail2H and bestAvailMH and bestAvailOH then
		verboseDebug(("%s#%d-%d BA2H - %s#%d-%d BAMH  - %s#%d-%d-%d. (link#id-score-[ohscore]"):format(bestAvail2H.link,bestAvail2H.itemid,bestAvail2H.score,bestAvailMH.link,bestAvailMH.itemid,bestAvailMH.score,bestAvailOH.link,bestAvailOH.itemid,bestAvailOH.score,ohscore))
		-- We have all options available. Is MH+OH better than 2H?
		if (bestAvailMH.score + ohscore) > bestAvail2H.score then
			-- It is better.
			if not possMH or possMH.itemid == bestAvail2H.itemid then
				-- If the bestAvailMh is equipped then don't need to suggest it because it is equipped
				verboseDebug(("%s rejected. 1h + oh combo better. MHS is either bestMH or nil now."):format(bestAvail2H.link))
					-- Have a MH. If it is the bestAvail then don't equip anything. Otherwise equip the Best MH
				self.PossibleUpgrades.MainHandSlot = ( not curMH or bestAvailMH.itemid~=curMH.itemid) and bestAvailMH or nil
			end
		elseif possOH then
			verboseDebug(("%s rejected. 2h is better than the MH+OH combo."):format(possOH.link))
			self.PossibleUpgrades.SecondaryHandSlot = nil
		end
	elseif bestAvail2H and bestAvailOH then
		verboseDebug(("%s#%d-%d BA2H - %s#%d-%d-%d. (link#id-score-[ohscore]"):format(bestAvail2H.link,bestAvail2H.itemid,bestAvail2H.score,bestAvailOH.link,bestAvailOH.itemid,bestAvailOH.score,ohscore))
		-- We have a 2H available but no MH
		if bestAvailOH.score > bestAvail2H.score then

			if curMH then
				-- We have a 2h equipped. So have to remove it before we can equip the OH
				bestAvailOH.removeMHFirst = true
			end

			-- It is better.
			if possMH then
				verboseDebug(("%s rejected. oh is better."):format(possMH.link))
				self.PossibleUpgrades.MainHandSlot = nil
			end
		elseif possOH then
			verboseDebug(("%s rejected. 2h is better than the OH w/o MH."):format(possOH.link))
			self.PossibleUpgrades.SecondaryHandSlot = nil
		end
	end
end

-- Queue Handling
--[[
	Wipes/Creates the queue and then
	pushes all items in self.PossibleUpgrades onto the queue.
--]]

function AutoEquip:SetQueue()
	if not self.ItemQueue then self.ItemQueue= {} else wipe(self.ItemQueue) end --wipe this incase something is left over.
	self.ItemQueueLen = 1

	for slot,item in pairs(self.PossibleUpgrades) do
		item.slot = slot -- want to save the slot into the table

		self:QueuePush(item)
	end
end

--[[
	returns the first item on the queue. returns nil if nothing is there.

	Shocker!
--]]

function AutoEquip:QueuePop()
	if not self.ItemQueue then return end
	if #self.ItemQueue == 0 then self:Debug("Queue is empty") return end -- It would do this automatically but why not make sure
	self:Debug("Popping "..self.ItemQueue[1].link)
	self.ItemQueueLen = self.ItemQueueLen - 1
	return tremove(self.ItemQueue,1) --returns the item popped and removes it.
end

--[[
	Pushes a copy of the item onto the queue.

	If the item .slot == "MainHandSlot" or .priority then the item gets pushed to the front of the queue.
--]]

function AutoEquip:QueuePush(item)
	if not self.ItemQueue then self.ItemQueue= {} self.ItemQueueLen = 0 end

	-- If either of these, then we want to push this item to the front of the queue.
	-- TODO could we ever need the MHS behind priority?
	local first = item.slot=="MainHandSlot" or item.priority

	-- We want another copy of the table for the queue.
	local clone = {}
	for i,k in pairs(item) do clone[i] = k end

	function clone:tostring()
		local ret = ("Slot = %s , Link = %s"):format(self.slot,self.link)
		return ret
	end

	self:Debug(clone.link.." pushed into Queue"..(first and " at the front" or ""))

	self.ItemQueueLen = self.ItemQueueLen + 1

	if first then
		tinsert(self.ItemQueue,1,clone)
	else
		tinsert(self.ItemQueue,clone)
	end
end

--[[
	Attempts to pop an item off of the queue and push it to be displayed.

	If player is in combat then this function will get called again when combat is exited.
--]]

function AutoEquip:TryToEquipItem()
	-- Need to clear this value in self.Popup so next time it appears it acts correctly.
	local function returnNilSafely()
		if self.Popup then self.Popup.selfHidden = nil end
	end

	 --Should never get this far without autogear or Queue on but extra check before we display an item.
	if not (self.ItemQueue and ZGV.db.profile.autogear) then return returnNilSafely() end

	-- Don't display anything while Config or Tutorial are running.
	if ZGV.Config.Running or ZGV.Tutorial.Running then return returnNilSafely() end

	-- Displaying things in combat is annoying.. Don't
	if ZGV:IsPlayerInCombat() then self.call_after_combat = function() self:TryToEquipItem() end return returnNilSafely() end

	self:Debug("Trying to find an item to equip")

	-- The first item we want to equip
	local item = self:QueuePop()
	 --No item in queue? We are done because we don't have anything to display
	if not item then self:Debug("No item found") return returnNilSafely() end

	self:EquipDisplay(item)
end

--[[
	Decides to show the popup or to just equip the item right away.
--]]

function AutoEquip:EquipDisplay(item)
	--TODO Something if the Item is BOE

	if not ZGV.db.profile.autogearauto then
		--Display a frame with the correct info
		self:ShowPopup(item)
	else
		local str = L['itemscore_ae_equip']:format(item.link)
		if self.CurrentGear[item.slot] then str = str..L['itemscore_ae_over']:format(self.CurrentGear[item.slot].link) end
		str = str.."." --add a period :D

		-- Print a message to user then equip the item!
		ZGV:Print(str)

		if ZGV.NotificationCenter then
			local texture,texcoords = ZGV.PopupHandler:GetNCTextureInfo("gear")
			local slot = item.equipslot==SHIELD and "Shield" or item.equipslot

			ZGV.NotificationCenter.AddButton(
				item.link,
				L['notifcenter_gear_equipped']:format(select(4,GetItemQualityColor(item.quality)),item.link,G[slot]),
				texture,
				texcoords,
				onClick,
				function(self)
					local position,x,y = ZGV.NotificationCenter:GetTooltipPosition()
					GameTooltip:SetOwner(self, position or "ANCHOR_CURSOR",x or 0, y or 0)

					GameTooltip:SetHyperlink(item.link)
					GameTooltip:SetToplevel(true)
					GameTooltip:Show()
				end,
				priority,
				poptime,
				600, -- Remove after 10m
				quiet,
				OnOpen,
				"gear" )
		end

		self:Equip(item)
	end
end

function AutoEquip:ShowGearReport(verbose,minimal,hideDump)
	local F=self.Popup
	local header=""
	local header2="\n"
	local score1,score2 = 0,0
	header = ("Zygor Guides Viewer v%s\n"):format(ZGV.version)
	header = header .. ("Race: %s  Class: %s  Spec: %s  Level: %.2f   Faction: %s\n"):format(select(2,UnitRace("player")),select(2,UnitClass("player")), (select(2,GetSpecializationInfo(GetSpecialization() or 0))) or "None", ZGV:GetPlayerPreciseLevel(),UnitFactionGroup("player"))
	if not minimal then
	if not F.olditem then
		header = header .. ("\n Current item: NONE\nSuggested item: #%d %s\n%s"):format(
		F.item.itemid, F.itemname_new:GetText(),
		F.stattext:GetText()
		)
	else
		header = header .. ("\n Current item: #%d %s\nSuggested item: #%d %s\n%s"):format(
		F.olditem.itemid, F.itemname_old:GetText(),
		F.item.itemid, F.itemname_new:GetText(),
		F.stattext:GetText()
		)
		score1 = ItemScore:GetItemScore(F.olditem.itemid,F.olditem.equipslot,F.olditem.link,nil,1)
	end

	score2 = ItemScore:GetItemScore(F.item.itemid,F.item.equipslot,F.item.link,nil,1)

	if AutoEquip.CurrentGear then
		header2 = header2.."\nCurrent Gear\n"

		for slot,info in pairs(AutoEquip.CurrentGear) do
			header2 = header2.."   "..slot.. (" - %s#%d scored: %d\n"):format(info.link, info.itemid,info.score)
		end
	end
	if AutoEquip.PossibleUpgrades then
		header2 = header2.."\nPossible Upgrades\n"

		for slot,info in pairs(AutoEquip.PossibleUpgrades) do
			header2 = header2.."   "..slot.. (" - %s#%d scored: %d\n"):format(info.link, info.itemid,info.score)
		end
	end
	end

	ItemScore.verbose = 1
	AutoEquip.verbose = verbose
	wipe(ItemScore.Logs)

	AutoEquip:ScoreCurrentEquippedItems(1,1)
	AutoEquip:ScanBagsForUpgrades(verbose,1,1)

	local logs = ""

	for i,line in ipairs(ItemScore.Logs) do
		logs = logs..i.." - "..line.."\n"
	end

	local s = header.."\n"..header2.."\n\n LOGS\n"..logs

	if not hideDump then ZGV:ShowDump(s,"Zygor Gear Bug Report") end

	ItemScore.verbose = nil
	AutoEquip.verbose = nil

	return s
end

--[[
	Creates the popup for displaying gear suggestions.
--]]

function AutoEquip:CreatePopup()
	-- TODO don't force stealth skin
	self.Popup = ZGV.PopupHandler:NewPopup("ZygorItemPopup","gear","stealth") --Get The basic popup, then butcher it...
	local F = self.Popup

	local ui = ZGV.UI
	local SkinData = ui.SkinData

	F:SetWidth(300) -- Make it bigger!
	F.logo:Hide() --No logo
	F.text:SetPoint(F.logo:GetPoint(1)) --Move the text to the top

	-- Creates the second box inside the first with a different coloring.
	F.frame=CHAIN(ui:Create("SecFrame",F))
		:SetPoint("TOP",F.text,"BOTTOM",0,-5)
		:SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-1,1)
		:SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",1,1)
		:CanDrag("parent")
	.__END

	-- Hyperlinks are only possible in editbox. So here you go.
	-- Max width is set so that if the item is super long it gets cut off. CursorPosition to 0 so that start of the name is displayed
	-- Name of the item being replaced goes in here if applicable.
	F.itemname_old=CHAIN(ui:Create("HyperEditBox",F.frame))
		:SetPoint("TOP",0,-5)
		:SetMaxWidth(F:GetWidth()-15)
	.__END

	-- String to display "with" on it's own line.
	F.text_mid=CHAIN(F.frame:CreateFontString(nil,"ARTWORK"))
		:SetHeight(12)
		:SetPoint("TOP",F.itemname_old,"BOTTOM",0,-3)
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
		:SetJustifyH("CENTER")
		:SetText(L['itemscore_ae_with'])
	.__END

	-- Texture to display the icon
	-- TODO when you over over the icon make the hyperlink tooltip show up.
	F.tex = CHAIN(F.frame:CreateTexture())
		:SetPoint("TOP",F.text_mid,"BOTTOM",0,-3)
		:SetSize(35,35)
	.__END

	-- Only displays the new item.
	F.itemname_new=CHAIN(ui:Create("HyperEditBox",F.frame))
		:SetPoint("TOP",F.tex,"BOTTOM",0,-3)
		:SetMaxWidth(F:GetWidth()-15)
	.__END

	-- FontString to display all of the stat differences
	F.stattext=CHAIN(F.frame:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",F.itemname_new,"BOTTOM",0,-3)
		:SetWidth(F.frame:GetWidth()-15)
		:SetJustifyH("CENTER")
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
	.__END

	F.OnAccept = function(self)
		self.selfHidden = true

		AutoEquip:Equip(self.item) --equip it!
	end

	F.OnDecline = function(self)
		self.selfHidden = true

		if IsShiftKeyDown() then
			AutoEquip:ShowGearReport(1)
		end

		self.itemdeclined = true

		-- Send it to BadUpgrades because they don't want it suggested again.
		AutoEquip:SetBadUpgrade(self.item.itemid,self.item.link)
	end

	F.OnEscape = function(self)
		if self.manualvisible then
			self.manualvisible = nil
			AutoEquip:QueuePush(self.item) --Add it back into the queue
		end
	end

	F.OnSettings = function(self)
		ZygorGuidesViewer:OpenOptions("gear")
	end

	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local offsets = 10 + 10 + 5 + 15 --Logo and top + text and buttons + buttons and bottom + more room

		local ItemsAlwaysThere = self.tex:GetHeight() + self.text:GetStringHeight() + self.stattext:GetStringHeight() + self.itemname_new:GetHeight() + self.acceptbutton:GetHeight()
		local ItemsSometimes = ((self.itemname_old:IsVisible() and self.itemname_old:GetHeight()) or 0) + ((self.text_mid:IsVisible() and self.text_mid:GetHeight()) or 0)

		self:SetHeight(offsets + ItemsAlwaysThere + ItemsSometimes)
	end

	F.returnMinimizeSettings = function(self)
		local mainText,quiet

		if not self.statusString then
			self.statusString = AutoEquip:GetSuggestedItemString()
		else
			local newStatus = AutoEquip:GetSuggestedItemString()
			quiet = self.statusString == newStatus
			self.statusString = newStatus
		end


		AutoEquip.ItemQueueLen = AutoEquip.ItemQueueLen or 1

		if AutoEquip.ItemQueueLen > 1 then
			mainText = L['notifcenter_gear_text_pl']:format(AutoEquip.ItemQueueLen)
		else
			mainText = L['notifcenter_gear_text_sl']:format(AutoEquip.ItemQueueLen)
		end

		-- Table to allow popup out text to be different from normal notification text.
		local notifcationText = { mainText, L['notifcenter_gear_text'] }

		local tooltipText = L['notifcenter_gen_popup_tooltip']

		--Some special handling of this up in ScanBags for no items in Queue

		return notifcationText,tooltipText,nil,nil,nil,quiet
	end

	F:HookScript("OnHide",function(self)
		self.manualvisible = nil
		if self.itemdeclined then
			self.itemdeclined = nil
			AutoEquip:TryToEquipItem()
		end
	end)

	F:HookScript("OnShow",function(self)
		self.manualvisible = true
	end)

	F.acceptbutton:SetText(L['itemscore_ae_accept'])
	F.declinebutton:SetText(L['itemscore_ae_decline'])

	CHAIN(F.acceptbutton)
		--:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(F,"ANCHOR_BOTTOM") :SetText(L['itemscore_ae_accept_tip']:format(ZygorItemPopup.item.link)) :Show() end)
		--:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetParent(F.frame)

	CHAIN(F.declinebutton)
		--Popup.olditem is not always there. EG no item in that slot.
		:HookScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(F,"ANCHOR_BOTTOM") :SetText(L['itemscore_ae_report_tip']) :Show() end)
		:HookScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetParent(F.frame)
end

--[[
	Prepares the popup to display the correct information.
--]]

function AutoEquip:ShowPopup(item)
	if not item then return end
	if not self.Popup then self:CreatePopup() end --Popup is saved in self.Popup
	local F = self.Popup
	F.item = item

	F.olditem = self.CurrentGear[F.item.slot]

	if item.removeMHFirst then
		-- This is actually a OH but re are replacing a MH. Should never happen but it could...
		F.olditem = self.CurrentGear["MainHandSlot"]
	end

	local function GetStatComparison(item)
		local stattable;
		local st1 = ""
		local GREEN = "|cff00ff00"
		local RED = "|cffff0000"
		local cur = F.olditem
		local itemid = item.itemid

		local function round(num, idp)
			local mult = 10^(idp or 0)
			return math.floor(num * mult + 0.5) / mult
		end

		-- Fix heirloom links if needed.
		if ItemScore.heirloomLevels[itemid] and ItemScore.playerlevel > ItemScore.heirloomLevels[itemid] then
			item.link = "|Hitem:"..itemid.."|h[q]|h"
		end
		if cur and ItemScore.heirloomLevels[cur.itemid] and ItemScore.playerlevel > ItemScore.heirloomLevels[cur.itemid] then
			cur.link = "|Hitem:"..cur.itemid.."|h[q]|h"
		end

		if cur then
			stattable = GetItemStatDelta(item.link,cur.link) -- Returns a table with the differences.
		else
			stattable = GetItemStats(item.link)
		end

		for stat,statvalue in pairs(stattable) do --Stat is localized.. I think
			if statvalue > 0 then -- Green for item1, red for 2
				st1 = st1..GREEN.."+"..round(statvalue,1).." "..G[stat].."|r\n"
			elseif statvalue < 0 then --Green for item2, red for 1
				st1 = st1..RED.. round(statvalue, 1).." "..G[stat].."|r\n"
			else --statvalue = 0
			end
		end

		if st1 == "" then -- no stat difference so add item level difference.
			local value = (select(4,GetItemInfo(item.link)))
			if self.CurrentGear[item.slot] then
				value = value - (select(4,GetItemInfo(cur.link)))
			end
			if value > 0 then
				st1 = st1..GREEN.."+"..round(value,1).." "..G["ITEM_UPGRADE_STAT_AVERAGE_ITEM_LEVEL"].."|r\n"
			elseif value < 0 then --Can this happen? I sure hope not.
				st1 = st1..RED.."-"..round(value,1).." "..G["ITEM_UPGRADE_STAT_AVERAGE_ITEM_LEVEL"].."|r\n"
			end
		end

		return st1
	end

	if F.olditem then
		F.itemname_old:Show() F.text_mid:Show()
		F.itemname_old:SetText(F.olditem.link)
		if F.itemname_old:GetNumLetters() < 4 then return end  --If item link is "[]" then item is nor parsed so return and it will get fixed next time.

		F.itemname_new:ClearAllPoints()
		F.itemname_new:SetPoint("TOP",F.tex,"BOTTOM",0,-3)

		F.tex:ClearAllPoints()
		F.tex:SetPoint("TOP",F.text_mid,"BOTTOM",0,-3)

		F:SetText(L['zgname']..L['itemscore_ae_equip1'])
	else
		F.itemname_old:Hide() F.text_mid:Hide()

		F.tex:ClearAllPoints()
		F.tex:SetPoint("TOP",F.frame,"TOP",0,-5)

		F.itemname_new:ClearAllPoints()
		F.itemname_new:SetPoint("TOP",F.tex,"BOTTOM",0,-3)

		F:SetText(L['zgname']..L['itemscore_ae_equip2'])
	end

	F.tex:SetTexture(select(10,GetItemInfo(item.itemid)))
	F.itemname_new:SetText(item.link)
	F.stattext:SetText(GetStatComparison(item))

	-- if the popup hid by hitting accept/decline then bypass the Popup queue and just sho the next upgrade.
	if F.selfHidden then
		F.selfHidden = nil
		ZGV.PopupHandler:ShowPopup(F)
	else
		F:Show()
	end
end

--[[
	Equips the item
--]]

function AutoEquip:Equip(item)
	--TODO Something if the Item is BOE

	self:Debug(("Equipping %s , in %s"):format(item.link,item.slot))
	--if ZGV.db.profile.autogearauto then self.BOETest = item end --This is the start. It is a mess

	-- Mark as a item was just equipped. So when the bag Update hits we don't rescan but rather try to pop another item from queue.
	self.itemjustequipped = true

	-- TODO can I clean this up?
	if item.slot == "MainHandSlot" or
	item.slot == "SecondaryHandSlot" or
	item.slot == "Finger0Slot" or
	item.slot == "Finger1Slot" or
	item.slot == "Trinket0Slot" or
	item.slot == "Trinket1Slot" then
		local slot = item.slot
		if slot == "MainHandSlot" then slot = INVSLOT_MAINHAND
		elseif slot == "SecondaryHandSlot" then slot = INVSLOT_OFFHAND
		elseif slot == "Finger0Slot" then slot = INVSLOT_FINGER1
		elseif slot == "Finger1Slot" then slot = INVSLOT_FINGER2
		elseif slot == "Trinket0Slot" then slot = INVSLOT_TRINKET1
		elseif slot == "Trinket1Slot" then slot = INVSLOT_TRINKET2 end

		-- Might need to remove MH if we are equipping a OH over a 2h..
		-- TODO if bags are full then this would fail.
		if item.removeMHFirst then
			PickupInventoryItem(INVSLOT_MAINHAND)
			PutItemInBackpack()
		end

		PickupContainerItem(item.bag,item.bagslot)
		EquipCursorItem(slot)
	else
		PickupContainerItem(item.bag,item.bagslot)
		AutoEquipCursorItem() --Do it this way rather than EquipItemByName to deal with equipping two of same item.
	end

	--self:TryToEquipItem()
end

--[[
	Function that tests for a recently picked up quest item by a non auto equip user.
--]]

function AutoEquip:NonUserQuestItemTest()
	local arg1, arg2 = self.testNoneUserBag.arg1,self.testNoneUserBag.arg2
	self.testNoneUserBag = nil
	self:Debug("Trying to find a quest item for not Auto Gear users in bag %d",arg1)

	for bagslot=1, GetContainerNumSlots(arg1) do while(1) do
		local itemid=GetContainerItemID(arg1,bagslot)
		local for_quest = GetContainerItemQuestInfo(arg1,bagslot)
		if not (itemid and for_quest) then break end

		local name ,link, quality ,iLevel,reqLevel,class,subclass,maxStack, equipslot , texture ,vendorPrice = GetItemInfo(itemid)
		if not name then break end

		--Only care about items with equipslots we can use.
		if not (equipslot and ItemScore:IsGoodEquipSlot(equipslot)) then break end

		if texture == arg2 then
			-- We just picked this item up. So it is what we need.
			-- Save it with the last quest we picked up so that we can suggest equipping it at some point.
			ZGV.db.profile.questitemcache[ZGV.mostRecentlyAcceptedQuest.id] = itemid
		end
	break end end
end

--[[
	Creates the button that in the bottom left of the Character Panel
--]]

function AutoEquip:SetupButton()
	if self.CharPanelButton then return end

	self.CharPanelButton = CHAIN(CreateFrame("Button", "ZygorGearFinderAutoEquipButton", PaperDollFrame))
		:SetPoint("BOTTOMLEFT",PaperDollFrame,"BOTTOMLEFT",10,8) :SetSize(25,25)
		:SetNormalTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(self,"ANCHOR_RIGHT") :SetText(L['itemscore_ae_button']) :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetScript("OnClick",function() AutoEquip:ScanBagsForUpgrades() end)
	.__END
	self.CharPanelButton:GetNormalTexture():SetTexCoord(0,0.25,0.25,0.50)
end

--[[
	Returns a string of sorted itemids of items in PossibleUpgrades
--]]

function AutoEquip:GetSuggestedItemString()
	if not self.PossibleUpgrades then return "" end
	local itemz = {}

	for slot,item in pairs(self.PossibleUpgrades) do
	 tinsert(itemz,item.itemid)
	end

	table.sort(itemz)

	local s = ""

	for i,id in ipairs(itemz) do
	 s = s..id.."-"
	end

	return s
end

--[[
	Called at startup and when options are changed.

	Controls visibility of Button
--]]

function AutoEquip:ToggleButton()
	if ZGV.db.profile.autogear then
		if not self.CharPanelButton then AutoEquip:SetupButton() end
		self.CharPanelButton:Show()
	elseif self.CharPanelButton then
		self.CharPanelButton:Hide()
	end
end

function AutoEquip:Startup()
	self:ToggleButton()
	self.BadUpgrades = ZGV.db.profile.badupgrade
end

function AutoEquip:Debug(...)
	local str = ...
	ItemScore:Debug("&autoequip "..str, select(2,...) )
end

tinsert(ZGV.startups,function(self)
	AutoEquip:Startup()
end)