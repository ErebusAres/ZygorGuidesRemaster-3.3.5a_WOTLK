-- Scan.record_unique_links
-- Scan.FoundInScan[self.queried_by_name][link]

if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Appraiser = ZGV.Gold.Appraiser 

local OUTDATED_TIME = 60*3

Appraiser.ShoppingModes = {
	GOLD = 1,
	MANUAL = 2,
	GUIDE = 3,
	QUICK = 4,
	}

local Scan=ZGVG.Scan
local Proxy=Scan.Proxy



function Appraiser.sort_buy(a,b)
	if not a or not b then return false end
	if not a.name or not b.name then return false end
	a,b=a.name,b.name
	return a<b
end

function Appraiser:AddGuideItemsToBuy()
	self.GuideBuyItems = {}

	for i=1,#ZGV.CurrentStep.goals do
		local goal = ZGV.CurrentStep.goals[i]
		if goal.action == "buy" and goal.status == "incomplete" then
			local itemid = goal.targetid
			local count = goal.count - GetItemCount(itemid)

			Appraiser:AddItemToBuy(itemid,count,Appraiser.ShoppingModes.GUIDE,nil,nil,nil)
		end
	end
	self.needToUpdate = true
end

function Appraiser:AddItemToBuy(itemid,count,source,priceMax,itemlink,sourcemode)
	if not itemid and not itemlink then return end
	if self:IsInCurrentDeals(itemid) and source==Appraiser.ShoppingModes.GOLD then return end

	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	if not itemid and string.match(itemlink,"battlepet:") then itemid = ZGV.PetBattle:GetPetFakeIdByLink(itemlink,"generic") end

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	
	if itemid and not itemlink then
		name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	end

	if itemid == 82800 or classID==2 or classID==4 then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		single_locked=true
		maxStack=1
	end

	if itemid>1000000000 then 
		petItem_id = tonumber(string.sub(tostring(itemid),2,5))
		quality = tonumber(string.sub(tostring(itemid),8,8))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petItem_id)
	end

	local unit_price = ZGV.Gold.Scan:GetPrice(itemid)

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor
	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,unit_price)
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and ZGV_T("Market stagnant.") or priceStatus.buysuggestion)
	statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.buyicon or priceStatus.icon].texcoord -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor

	local existing_count = 0
	local existing_index

	local targetTable

	if source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
	elseif source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	for index,item in pairs(targetTable) do
		if item.itemid == itemid then
			existing_index = index
			existing_count = item.count
		end
	end

	if existing_index then
		if source==Appraiser.ShoppingModes.GOLD then -- if from gold guide, set to new count
			targetTable[existing_index].count = count
		else -- otherwise add more to existing stuff
			if targetTable[existing_index].count and count then
				targetTable[existing_index].count = targetTable[existing_index].count+count
			end
		end
	else
		local newitem = {
			itemid=itemid or petItem_id,
			name=name,
			displayName=displayName,
			--link=link,
			icon=icon,
			count=count, 
			price=unit_price,
			source=source, --guide/gold/manual
			priceMax=priceMax, -- function parameter
			statusText=statusText,
			statusIcon=statusIcon,
			statusId=statusId,
			statusColor=statusColor,
			isStagnant=isStagnant,
			quality=quality,
			sourcemode=sourcemode,
			itemlink=itemlink,
			classID=classID,
			single_locked=single_locked
		}
		table.insert(targetTable,newitem)
	end

	if name then
		ZGV.NotificationCenter:AddEntry(
		    "",
		   ZGV_T("Shopping list"),
		    (count or "").." "..name..((count and count>1) and "s" or ""),
		    ZGV.DIR.."\\Skins\\guideicons-big",
		    {0, 0.25, 0.25, 0.50},
		    nil,
		    nil,
		    1,
		    poptime,        -- nil atm
		    removetime,        -- nil atm
		    nil,            -- nil atm
		    nil,            -- nil atm
		    "gold")
	end

	-- deactivate current row and remove item from buyout clipboard
	-- prevents wrong row from being highlighted

	if Appraiser.MainFrame then
		for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
			r.active = false
		end
	end
	
	Appraiser.SelectedShoppingItem = nil
	self.needToUpdate = true
	ZGV.Goldguide:Update()
end

function Appraiser:ShoppingRowMenu(row)
	if not row.item then return end

	if not Appraiser.Buy_Frame.ShoppingMenu then Appraiser.Buy_Frame.ShoppingMenu = CreateFrame("FRAME","AT_Shopping_Menu",Appraiser.Buy_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Buy_Frame.ShoppingMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = ZGV_T("Remove this item"),
			tooltipText = ZGV_T("Remove selected item from this list"),
			tooltipOnButton=1,
			func = function() 
				Appraiser:RemoveItemFromBuy(row)
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	tinsert(menu,{
			text = ZGV_T("Remove all items"),
			tooltipText = ZGV_T("Remove all items from this list"),
			tooltipOnButton=1,
			func = function() 
				Appraiser:RemoveAllItemsFromBuy(row)
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Buy_Frame.ShoppingMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Buy_Frame.ShoppingMenu, 300)
end

function Appraiser:ActivateBuyItem(item)
	Appraiser:AbortManualScan()

	Appraiser.SelectedBuyAuction = nil

	Appraiser.ShoppingAuctions = {}

	currentIndex = 0
	for i,v in pairs(Appraiser.ShoppingItems) do if v~="separator" then 
		if v==item then currentIndex=i end
		v.active = false 
	end end

	--if not Appraiser.SelectedShoppingItem or (item and item.itemid ~= Appraiser.SelectedShoppingItem.itemid) then
		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser.SelectedShoppingItem = item

		item.active = true

		local nextitem = Appraiser.ShoppingItems[1]  -- which item to skip to if the current item is gone?
		if Appraiser.ShoppingItems[currentIndex+1] then
			if Appraiser.ShoppingItems[currentIndex+1] ~= "separator" then
				nextitem = Appraiser.ShoppingItems[currentIndex+1]
			else
				nextitem = Appraiser.ShoppingItems[currentIndex+2]
			end
		end
		if nextitem then
			Appraiser.NextBuyingItemID = nextitem.itemid
		end
		ZGV:Debug("ActivateBuyItem: %s, next %s##%d",self.SelectedShoppingItem.name,nextitem.name,Appraiser.NextBuyingItemID or -1)

		Appraiser:TryToSearchForItem(item)

	--[[
	else
		Appraiser.SelectedShoppingItem = nil
		Appraiser:ShowSearchFrame(true)
	end
	--]]
	Appraiser:Update()
end

function Appraiser:RemoveItemFromBuy(row)  -- == row rightclick, menu Remove
	local targetTable
	if row.item.source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
	elseif row.item.source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif row.item.source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	local itemid = row.item.itemid
	local count = row.item.count	

	for i,v in pairs(targetTable) do
		if v.itemid == itemid then
			table.remove(targetTable,i)
		end
	end

	for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do  r.active = false  end
	ZGV.Goldguide:Update()
end

function Appraiser:RemoveAllItemsFromBuy()
	table.wipe(ZGV.db.char.GGbuyitems)
	table.wipe(self.ManualBuyItems)
	table.wipe(self.GuideBuyItems)
	self.SelectedShoppingItem=nil
	self.SelectedBuyAuction=nil
	ZGV.Goldguide:Update()
end

function Appraiser:GetBuyoutPrice(invItem)
	local itemid = invItem.itemid
	if self.SelectedShoppingItem == invItem and self.SelectedBuyAuction and self.RawDataTable[itemid][self.SelectedBuyAuction.buyoutindex] then
		local auction = self.RawDataTable[itemid][self.SelectedBuyAuction.buyoutindex]
		return auction[1],tonumber(auction[2]),tonumber(auction[3]),"ok"
	else
		return self:FindNextBuyout(invItem)
	end
end

function Appraiser:SelectNextShoppingItem()
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	if self.NextBuyingItemID == (self.SelectedShoppingItem and self.SelectedShoppingItem.itemid)  then
		ZGV:Debug("SelectNextBuyoutRow: same item.")
		return
	end
	for i,item in pairs(self.ShoppingItems) do 
		if item.itemid == self.NextBuyingItemID and (item.count or 0)>0 and not FORCE_NEXT_BUY then
			ZGV:Debug("SelectNextBuyoutRow: index %d, id %s (%s)",i,item.itemid,item.name)
			self:ActivateBuyItem(item,true)
			return
		end
	end
	ZGV:Debug("SelectNextBuyoutRow: nope.")
end


function Appraiser:SearchForBuyItem(item)
	local options = nil
	if ZGVG.Scan:CanScanByName() then
		Appraiser.PendingScanTimer = nil
		Appraiser.ScanIsRunning = true
		if item.single_locked or item.sourcemode == 1 or item.sourcemode == 4 then options="forcePartialWithLinks" end -- equipment and pets
		local result = ZGVG.Scan:ScanByName(item.name,item.itemid,options)
		item.updated = time()
		item.pending = true
		return result
	else
		item.updated = time()
		if Appraiser.PendingScanTimer then ZGV:CancelTimer(Appraiser.PendingScanTimer) end
		Appraiser.PendingScanTimer = ZGV:ScheduleTimer(function() 
			Appraiser:SearchForBuyItem(item,options)
		end, 0.5)
		return "delay"
	end
end

function Appraiser:TryToSearchForItem(object)
	if Appraiser.TryToSearchForItemTimer then ZGV:CancelTimer(Appraiser.TryToSearchForItemTimer) end
	local result = Appraiser:SearchForBuyItem(object)

	if result then return end

	Appraiser.TryToSearchForItemTimer = ZGV:ScheduleTimer(function() 
		Appraiser:TryToSearchForItem(object)
	end, 0.5)
end
