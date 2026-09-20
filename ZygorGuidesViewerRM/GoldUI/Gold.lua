local ZGV = ZGV

ZGV.Gold = {}

local Gold=ZGV.Gold

Gold.OVERPRICE = 1.2
Gold.UNDERPRICE = 0.6

local GRAY = {0.66,0.66,0.66,1}
local GREEN = {0,1,0,1}
local YELLOW = {1,1,0,1}
local WHITE = {1,1,1,1}
local RED = {1,0,0,1}

local PRICE_STATUS_TABLE = {
	PRICESTATUS_NODATA = {
		name=ZGV_T("No trend data for item"), 
		buysuggestion="",
		sellsuggestion="",
		icon="QUESTION", -- coordinates
		buycolor=GRAY, 
		sellcolor=GRAY,
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_NODATA",
		statusId = 100,
	},
	PRICESTATUS_GOUGED = {
		name=ZGV_T("Prices gouged"), 
		buysuggestion=ZGV_T("You may want to wait"),
		sellsuggestion=ZGV_T("Sell now."),
		icon="UP3", -- coordinates
		buycolor=RED,
		sellcolor=GREEN, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_GOUGED",
		statusId = 3,
	},
	PRICESTATUS_UP = {
		name=ZGV_T("Prices are up"), 
		buysuggestion=ZGV_T("You may want to wait"),
		sellsuggestion=ZGV_T("Sell now."),
		icon="UP2", -- coordinates
		buycolor=RED, 
		sellcolor=GREEN, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_UP",
		statusId = 4,
	},
	PRICESTATUS_RISING = {
		name=ZGV_T("Prices are rising"), 
		buysuggestion=ZGV_T("You may want to wait"),
		sellsuggestion=ZGV_T("Consider selling."),
		icon="UP1", -- coordinates
		buycolor=RED, 
		sellcolor=GREEN, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_RISING",
		statusId = 5,
	},
	PRICESTATUS_NORMAL = {
		name=ZGV_T("Prices are normal"), 
		buysuggestion="",
		sellsuggestion="",
		icon="BULLET", -- coordinates
		buycolor=YELLOW, 
		sellcolor=YELLOW, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_NORMAL",
		statusId = 6,
	},
	PRICESTATUS_FALLING = {
		name=ZGV_T("Prices are falling"), 
		buysuggestion=ZGV_T("Consider buying."),
		sellsuggestion=ZGV_T("You may want to wait"),
		icon="DOWN1", -- coordinates
		buycolor=GREEN, 
		sellcolor=RED, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_FALLING",
		statusId = 7,
	},
	PRICESTATUS_DOWN = {
		name=ZGV_T("Prices are down"), 
		buysuggestion=ZGV_T("Buy now!"),
		sellsuggestion=ZGV_T("You may want to wait"),
		icon="DOWN2", -- coordinates
		buycolor=GREEN, 
		sellcolor=RED, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_DOWN",
		statusId = 8,
	},
	PRICESTATUS_DUMPED = {
		name=ZGV_T("Prices are dumped"), 
		buysuggestion=ZGV_T("Buy now!"),
		sellsuggestion=ZGV_T("You may want to wait"),
		icon="DOWN3", -- coordinates
		buycolor=GREEN, 
		sellcolor=RED, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_DUMPED",
		statusId = 9,
	},
	PRICESTATUS_EMPTY = {
		name=ZGV_T("Market is empty"), 
		buysuggestion=ZGV_T("Wait."),
		sellsuggestion=ZGV_T("Sell now!"),
		buyicon="NOPE", -- coordinates
		sellicon="CROSSH", -- coordinates
		buycolor=RED, 
		sellcolor=GREEN, 
		stagcolor=GRAY,
		stagnant=false,
		statusName = "PRICESTATUS_EMPTY",
		statusId = 2,
	},
	PRICESTATUS_DEAL = {
		name=ZGV_T("Gold Guide deal"), 
		buysuggestion=ZGV_T("Buy suggested auctions."),
		sellsuggestion=ZGV_T("Sell now!"),
		buyicon="NOPE", -- coordinates
		sellicon="CROSSH", -- coordinates
		buycolor=YELLOW, 
		sellcolor=YELLOW, 
		stagcolor=YELLOW,
		stagnant=false,
		statusName = "PRICESTATUS_DEAL",
		statusId = 1,
	},
}


function Gold:GetItemPrice(id)
	local vendor = select(11,ZGV:GetItemInfo(id)) or 0
	return vendor,self.Scan:GetPrice(id) or 0
end

function Gold:GetSellPrice(itemid,itemCount,usingFaked)
	itemid = tonumber(itemid)
	itemCount = itemCount or 1
	local minprice, unit_price, price
	local emptyMarket = true

	if not itemCount or itemCount=="" then 
		return 0, 0, "err", "err"
	end

	local errortext
	minprice,errortext = Gold.Scan:GetPrice(itemid)
	emptyMarket = (minprice==0)

	local statusIcon, statusText, priceOverride

	local undercutprice = minprice or 0

	--[[
	if (minprice or 0) > 0 then
		if ZGV.db.profile.appraiser_undercut == 0 then
			undercutprice = minprice
		elseif ZGV.db.profile.appraiser_undercut > 10000 then  -- gold value
			undercutprice = max(0,minprice - (ZGV.db.profile.appraiser_undercut-10000))
		else -- percent
			undercutprice = minprice * (1-(ZGV.db.profile.appraiser_undercut/100))
		end
	else
		undercutprice = 0
	end
	--]]
	
	local itemtrend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[itemid]
	local itemtrend_is_global
	if not itemtrend then
		itemtrend = ZGV.Gold.servertrends_global and ZGV.Gold.servertrends_global.items[itemid]
		itemtrend_is_global=true
	end
	if itemtrend and (not itemtrend.p_lo or itemtrend.p_lo<=0) then itemtrend=nil end  -- safety check


	if itemtrend and emptyMarket then  -- either local or global
		priceOverride = itemtrend.p_hi*Gold.OVERPRICE
	end

	if not minprice and not priceOverride and not undercutprice then 
		ZGV:Debug("&Appraiser Unable to get price for %d = %s",itemid,ZGV:GetItemInfo(itemid) or "?")
		minprice = 0 
	end

	unit_price = (priceOverride or (undercutprice>0 and undercutprice) or minprice or 0)
	price = unit_price * itemCount

	local numericItemId = tonumber(itemid)
	if numericItemId and numericItemId>1000000000 and minprice==0 and not usingFaked then
		-- no data for this breed, try fallback
		return Gold:GetSellPrice(ZGV.PetBattle:GetPetFallbackId(itemid),itemCount,true)
	end

	return price,unit_price,emptyMarket
end

function Gold:GetPriceStatus(itemid,price,itemCount,usingFaked,includeDeal)
	itemid = tonumber(itemid)
	price = tonumber(price)
	itemCount = itemCount or 1

	local emptyMarket = (price == 0)
	local stagnantMarket = false
	
	local itemtrend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemid]
	local itemtrend_is_global
	if not itemtrend then
		itemtrend = ZGV.Gold.servertrends_global and ZGV.Gold.servertrends_global.items[itemid]
		itemtrend_is_global=true
	end
	if itemtrend and (not itemtrend.p_lo or itemtrend.p_lo<=0) then itemtrend=nil end  -- safety check

	if not itemtrend or itemtrend_is_global then 
		return PRICE_STATUS_TABLE.PRICESTATUS_NODATA
	end

	local level = ZGV.db.profile.gold_profitlevel or 0
	local highPrice = itemtrend.p_hi
	local gougedPrice = highPrice * Gold.OVERPRICE
	local lowPrice = itemtrend.p_lo	
	local median = itemtrend.p_md or (itemtrend.p_hi+itemtrend.p_lo)/2
	local risingPrice = (highPrice+median)/2

	-- set a minimum profit
	if level<0.5 then
		lowPrice = itemtrend.p_lo + (median-itemtrend.p_lo)*level*2
	else
		lowPrice = median + (itemtrend.p_hi-median)*(level-0.5)*2
	end
	
	local dumpedPrice = lowPrice * Gold.UNDERPRICE
	local fallingPrice = (lowPrice+median)/2

	local stagnant = false

	local stagnant = itemtrend.health and itemtrend.health==0
	if itemtrend.sold then stagnant=(itemtrend.sold==0) end

	local statusName
	if (price or 0) > 0 then
		if price > gougedPrice then
			statusName = "PRICESTATUS_GOUGED"
		elseif price > highPrice then
			statusName = "PRICESTATUS_UP"
		elseif price > risingPrice then
			statusName = "PRICESTATUS_RISING"
		elseif price < fallingPrice then
			statusName = "PRICESTATUS_FALLING"
		elseif price < lowPrice then
			statusName = "PRICESTATUS_DOWN"
		elseif price < dumpedPrice then
			statusName = "PRICESTATUS_DUMPED"
		else
			statusName = "PRICESTATUS_NORMAL"
		end
	else
		if emptyMarket then
			statusName = "PRICESTATUS_EMPTY"
		else
			statusName = "PRICESTATUS_NODATA"
		end
	end

	if includeDeal and ZGV.Gold.Appraiser and ZGV.db.char.CurrentDeals and ZGV.db.char.CurrentDeals[itemid] then -- set deal status for items in selling list that are present in shopping list and came from ggah
		statusName = "PRICESTATUS_DEAL"
	end

	local returntable = PRICE_STATUS_TABLE[statusName]

	if tonumber(itemid)>1000000000 and statusName=="PRICESTATUS_NODATA" and price==0 and not usingFaked then
		-- no data for this breed, try fallback
		returntable = Gold:GetPriceStatus(ZGV.PetBattle:GetPetFallbackId(itemid),price,itemCount,true,includeDeal)
	end

	returntable.stagnant = stagnant

	return returntable
end

function Gold:GetSaturation(itemid)
	local count,historical=0,0

	if  ZGV.db.factionrealm.gold_scan_data
	and ZGV.db.factionrealm.gold_scan_data[1]
	and ZGV.db.factionrealm.gold_scan_data[1][itemid] then
		for k,v in pairs(ZGV.db.factionrealm.gold_scan_data[1][itemid]) do
			--ZGV:Debug("&scan "..k..","..v)
			count=count+1
		end
	end

	if ZGV.Gold.servertrends and ZGV.Gold.servertrends[itemid] then
		historical = ZGV.Gold.servertrends[itemid].q_md
	end

	return count,historical,historical and (count/historical*100) or 0
end

function ZGV:ZGV_GOLD_SCANNED()
	if ZGV.Gold.Goldguide then
		ZGV.Gold.Goldguide:Update()
	end
end

function Gold:GetMoney()
	return ZGV.db.profile.fakegoldcheck and tonumber(ZGV.db.profile.fakegold) or GetMoney()
end

-- FAKE GOLD GUIDE, just to enable the GOLD section.
-- ZGV:RegisterGuide("GOLD\\Fake Guide",{
-- 	condition_valid=false,
-- 	meta={goldtype="route",itemtype="misc"}
-- },[[
-- 	step
-- 		'Dummy guide.
-- ]])
