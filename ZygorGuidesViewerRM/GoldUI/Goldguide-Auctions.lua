local ZGV = ZGV

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Goldguide = ZGV.Goldguide

Goldguide.Auctions = {}
local Auctions=Goldguide.Auctions

local AHCUT = 1-0.05

function Goldguide:InitialiseAuctionChores()
	Goldguide.Chores = Goldguide.Chores or {}
	Goldguide.Chores.Auctions = Goldguide.Chores.Auctions or {}
	table.wipe(Goldguide.Chores.Auctions)

	local ST=ZGV.Gold.servertrends
	ST=ST and ST.items
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		AH=ZGV.db.factionrealm.gold_scan_data
	else
		AH=ZGV.db.realm.gold_scan_data
	end
	AH=AH and AH[1]

	if not ST then ZGV:Debug("&gold No server trend data available!") return end
	if not AH then ZGV:Debug("&gold No auction data available!") return end

	local total,noST,unhealthy,healthy=0,0,0,0
	
	for id,auctions in pairs(AH) do repeat
		total=total+1

		local trends = ST[id]
		if not trends then noST=noST+1 break end --continue

		local health = trends.sold or trends.health or 0
		if health<=0 then unhealthy=unhealthy+1 break end --continue
		
		healthy=healthy+1
		-- if the item's server scan is all right...

		local chore = {
			id=id,
			type="auctions",
			tooltip={},
			}
		if Auctions.CalculateDetails(chore) then Auctions:New(chore) end 
		-- yes, .CD() and not :CD(). There are way too many auctions to do a full parse on them, so we are 
		-- using CD() to weed out the 0 profit ones before we do anything else with them. And that CD() will
		-- run full course on those that are valid, and the results will be cached.
		
	until true end
end

function Auctions:New(data)
	setmetatable(data,{__index=Auctions,__lt=Auctions.sorting})
	table.insert(Goldguide.Chores.Auctions,data)
end

local function UNDERCUT(price,limit)
	local uc=0
	if price>1000000 then uc=10000
	elseif price>100000 then uc=1000
	elseif price>10000 then uc=100
	elseif price>1000 then uc=10
	elseif price>100 then uc=5
	else uc=1 end
	while price-uc<=limit do uc=floor(price-limit)/4 end
	return price-uc
end

local prices={}
function Auctions:CalculateDetails(refresh)
	if self.calculated_details and not refresh then return self.calculated_details end

	local id = self.id
	local auctions
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		auctions=ZGV.db.factionrealm.gold_scan_data[1][id]
	else
		auctions=ZGV.db.realm.gold_scan_data[1][id]
	end

	
	local trends = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[id]
	local tooltip = self.tooltip
	table.wipe(tooltip)

	local _, _, _, _, _, class, subclass = ZGV:GetItemInfo(id)

	local name,link,quality,icon,pet

	if id<1000000000 then 
		name,link,quality,_,_,_,_,_,_,icon  = ZGV:GetItemInfo(id)
	else
		local petId = tonumber(string.sub(tostring(id),2,5))
		quality = tonumber(string.sub(tostring(id),10,11))
		if C_PetJournal and C_PetJournal.GetPetInfoBySpeciesID then
			name, icon = C_PetJournal.GetPetInfoBySpeciesID(petId)
		end
	end

	if not name then self.needsRefresh = true end
	if name then self.name = name end

	if self.quality then
		self.name=(ZGV:GetItemQualityColorCode(self.quality) or "")..(name or self.name or "")
	end

	table.wipe(prices)
	for price,count in pairs(auctions) do
		if type(price)=="number" then tinsert(prices,price) end
	end
	table.sort(prices)

	local targetprice=0
	for pi=1,#prices do
		targetprice=prices[pi]
		if targetprice>=trends.p_lo then  break  end
	end
	if targetprice<trends.p_lo then targetprice=trends.p_lo end
	if targetprice>trends.p_hi then targetprice=0 end


	local limitcount=trends.sold or trends.q_md or (trends.q_lo+trends.q_hi)/2 or 0

	local totalcount=0
	local totalcost=0

	local maxprofit=0
	local maxprofitprice=0
	local maxnextprice=0
	local maxprofittotalcost=0
	local maxprofittotalcount=0

	local lastprofit=0


	for pi=1,#prices do
		local price=prices[pi]
		local count=auctions[price]
		-- suppose we buy those...
		totalcost = totalcost + price * count
		totalcount = totalcount + count

		local nextprice = min(prices[pi+1] or 99999999,price<targetprice and targetprice or 99999999)
		if pi==#prices then nextprice=price end

		local saleprice = nextprice
		if saleprice==prices[pi+1] then saleprice=UNDERCUT(saleprice,price) end


		local sale = totalcount * saleprice
		local profit = floor((sale*AHCUT)-totalcost)
		local perc = (profit/totalcost)*100
		--if totalcount>chore.count then break end

		local blockade = profit<=lastprofit
		lastprofit=profit

		local chore=nil --TODO: unused?
		if (not chore or tooltip) then
			if nextprice==99999999 then break end
			if price>=targetprice then break end
			if totalcount>limitcount then break end
		end

		-- else...

		if profit>maxprofit then
			maxprofit=profit
			maxprofitprice=price
			maxnextprice=nextprice
			maxprofittotalcost=totalcost
			maxprofittotalcount=totalcount
		end

		local color = (profit<=0 and "888888") or  (price==maxprofitprice and "00ff00") or
		 (price<maxprofitprice and (blockade and "ff8800" or "ffff00")) or
		 (price>maxprofitprice and (blockade and "aa0000" or "ff0000"))
		tinsert(tooltip,{
			count=count,
			totalcost=totalcost,
			totalcount=totalcount,
			saleprice=saleprice,
			sale_v1=sale,
			profit_v1=profit,
			perc=perc,

			blockade=blockade,
			color=color,

			name=name,
			targetprice=targetprice,
			price=price,
			cost=price*count,
			sale=saleprice*count,
			profit=((saleprice-price)*count)
			})

		if nextprice>=targetprice then break end
	end

	if maxprofit<=0 then return false end

	local status = 0

	local flags,status_override = Goldguide:GetItemFlagsAndStatus(self)
	self.flags=flags

	local not_scored = true

	if status_override then
		status = status_override
	else	
		status = 0
		for i,flag in pairs(self.flags) do
			status = status + ZGV.Gold.Auctions.Flags[string.upper(flag)].mod
			not_scored = false
		end
	end
	
	local category = 5
	if class == ZGV.L["type_armor"] or class == ZGV.L["type_weapon"] then
		category = 1
	elseif class == ZGV.L["type_trade_goods"] then
		category = 2
	elseif class == ZGV.L["type_consumable"] then
		category = 3
	end
	if id>1000000000 then 
		category = 4
	end

	self.cost=maxprofittotalcost
	self.count=maxprofittotalcount
	self.profit=maxprofit
	self.price=maxprofitprice
	if maxprofittotalcost>0 then
		self.gain=(maxprofit/maxprofittotalcost)*100
	else
		self.gain=0
	end
	self.targetprice=targetprice
	self.status=status
	self.not_scored=not_scored
	self.category=category
	self.flags=flags
	self.demand=limitcount

	self.calculated_details = true

	return self.calculated_details
end

function Auctions:GetDisplayInfo(refresh)
	local id = self.id

	if self.cached_display and not refresh then return unpack(self.cached_display) end

	self.needsRefresh=false

	local _,name,link,quality,icon,pet

	if id<1000000000 then 
		name,link,quality,_,_,_,_,_,_,icon  = ZGV:GetItemInfo(id)
	else
		local petId = tonumber(string.sub(tostring(id),2,5))
		quality = tonumber(string.sub(tostring(id),10,11))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petId)
	end


	if not name then self.needsRefresh = true end
	if name then self.name = name end

	if self.quality then
		name=(ZGV:GetItemQualityColorCode(self.quality) or "")..(name or self.name or "")
	end

	local status="●"
	local statusid = math.min(self.status,10)
	--[[
	if self.not_scored then
		status = Goldguide.ITEM_AUCTION_STATUS.unscored[1]..status
	else
		status = Goldguide.ITEM_AUCTION_STATUS[statusid][1]..status
	end
	--]]
	status = Goldguide.ITEM_AUCTION_STATUS[statusid][1]..status -- show unscored as red
	
	if self.cached_display then 
		table.wipe(self.cached_display)
	else
		self.cached_display={}
	end

	self.cached_display[1]=icon
	self.cached_display[2]=name
	self.cached_display[3]=status
	self.cached_display[4]=self.count
	self.cached_display[5]=ZGV.GetMoneyString(self.cost)
	self.cached_display[6]=ZGV.GetMoneyString(self.profit)
	self.cached_display[7]=("%d%%"):format(self.gain)

	return unpack(self.cached_display)
end

function Auctions:IsValidChore()
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	self.valid=false
	if self.cost>ZGVG:GetMoney() then return false,"no gold" end
	if self.profit<=0 then return false,"no profit" end

	local query = string.lower(Goldguide.MainFrame.MenuFrame.SearchEdit:GetText())
	if query and query~="" then 
		if self.name and not string.match(string.lower(self.name), query) then return false,"name query" end
	end

	
	if self.status < ZGV.db.profile.gold_auctions_mode then return false,"mode filter - status" end
	if ZGV.db.profile.gold_auctions_type~=0 and (self.category~=ZGV.db.profile.gold_auctions_type) then return false,"type filter" end

	self.valid=true
	return true
end

function Auctions.dynamic_sort(a,b)
	return Goldguide.dynamic_sort("auctions",a,b, ZGV.db.profile.goldsort['auctions'][1],ZGV.db.profile.goldsort['auctions'][2], "profit","asc", "perc","desc", "name","asc")
end



function Auctions:GetTooltipData(refresh)
	if self.cached_tooltip and not refresh then return self.cached_tooltip end

	self.cached_tooltip = {items={}}
	local M=ZGV.GetMoneyString

	for ai,auc in ipairs(self.tooltip) do
		table.insert(self.cached_tooltip.items,{
			count=auc.count,
			title="|cff"..auc.color..(auc.name or "..."),
			--worth=M(self.targetprice),
			curpri=M(auc.price),
			buyall=M(auc.totalcost),
			sellall=M(auc.sale_v1),
			ahcut=M(auc.sale_v1*0.05),
			profit=M(auc.profit_v1)
		})
	end

	local flags_good,flags_bad = {}, {}
	local flags_string_good,flags_string_bad = "",""

	for i,v in pairs(self.flags) do
		local flag = ZGV.Gold.Auctions.Flags[string.upper(v)]
		if flag.type=="Red" then
			table.insert(flags_bad,flag.name)
		else
			table.insert(flags_good,flag.name)
		end
	end

	flags_string_good = table.concat(flags_good,",")
	flags_string_bad = table.concat(flags_bad,",")

	local statusid = math.min(self.status,10)
	if self.not_scored then statusid="unscored" end
	local flags_description = "Status: "..Goldguide.ITEM_AUCTION_STATUS[statusid][1]..Goldguide.ITEM_AUCTION_STATUS[statusid][2]

	if flags_string_good~="" then flags_description = flags_description.. " |r|cff00ff00(PROS: "..flags_string_good.. ")|r" end
	if flags_string_bad~="" then flags_description = flags_description.. " |r|cffff0000(CONS: "..flags_string_bad.. ")|r" end

	local demand_description
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		demand_description = ""
	else
		demand_description = (ZGV_T("Daily demand for item: %s")):format(self.demand or ZGV_T("unknown"))
	end

	local worth_description = (ZGV_T("Item worth: %s")):format(M(self.targetprice))
	self.cached_tooltip.header = flags_description .. "\n" .. demand_description .. "\n" .. worth_description

	-- crop display to 30 entries
	while #self.cached_tooltip.items>30 do table.remove(self.cached_tooltip.items) end

	return self.cached_tooltip
end
