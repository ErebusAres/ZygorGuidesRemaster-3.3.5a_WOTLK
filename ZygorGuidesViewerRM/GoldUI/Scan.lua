local ZGV = ZGV

local ZGVG=ZGV.Gold

ZGVG.Scan={}

local Scan=ZGVG.Scan

local ui = ZGV.UI
local L = ZGV.L

Scan.state = "SS_OUT"
Scan.queryspin = 0

local MassScanInterval = 15*60

Scan.QUERY_TIMEOUT = 15 -- increased for 3.3.5a page-by-page scanning
Scan.RECEIVING_TIMEOUT = 15
Scan.MESSAGE_TIME = 5

local Appraiser

local yield=coroutine.yield
local floor=floor
local round=math.round

tinsert(ZGV.startups,{"Gold scan startup",function(self)
	--self:AddEventHandler("CHAT_MSG_SYSTEM","CHAT_MSG_SYSTEM_QuestTracking")
	--self:AddEventHandler("QUEST_LOG_UPDATE","QUEST_LOG_UPDATE_QuestTracking")
	--self:AddEventHandler("QUEST_COMPLETE","QUEST_COMPLETE_QuestTracking")

	Scan:CreateWorkFrame()
	Scan:CreateUIFrame()

	Scan.db = ZGV.db

	if not Scan.db.factionrealm.gold_scan_data then Scan.db.factionrealm.gold_scan_data={} end
	if not Scan.db.factionrealm.gold_scan_time then Scan.db.factionrealm.gold_scan_time={} end
	Scan.data = Scan.db.factionrealm.gold_scan_data
	Scan.time = Scan.db.factionrealm.gold_scan_time

	Scan:ImportHourly()

	--if not Scan.db.factionrealm.gold_scan_rawdata then Scan.db.factionrealm.gold_scan_rawdata={} end
	--Scan.rawdata = Scan.db.factionrealm.gold_scan_rawdata
	Scan.rawdata = {}

	--hooksecurefunc("SetAbandonQuest",self.QuestTracking_hook_SetAbandonQuest)
	--hooksecurefunc("AbandonQuest",self.QuestTracking_hook_AbandonQuest)
	Scan.enabled = true

	-- Fix blizzard scan errors
	ITEM_QUALITY_COLORS[-1]=ITEM_QUALITY_COLORS[0]

	--Appraiser = ZGVG.Appraiser

	ZGV:Debug("Gold: Scan enabled.")
end})


Scan.scan_page=1
Scan.scan_pages=0
Scan.last_scan_start_time_ms=0
Scan.last_scan_start_time=0

local orderedPairs = ZGV.OrderedPairs


Scan.Proxy = {}
local Proxy=Scan.Proxy

function Scan:ScanFast()
	if not select(1,CanSendAuctionQuery()) then return FALSE,"can't scan yet" end
	if self.state~="SS_IDLE" then return FALSE,"state "..self.state.." not SS_IDLE" end

	self.scan_only_one_page = false

	self.get_links = not ZGV.db.profile.quickscan
	if ZGV.db.profile.quickscan and ZGV.L["opt_quickscan_warning"] then ZGV:Print(ZGV.L["opt_quickscan_warning"]) end

	self.scan_page = 1

	table.wipe(self.rawdata)
	-- WoW 3.3.5a doesn't support getAll full scan, scan page by page instead
	self.Proxy:PerformQuery("", nil, nil, 0, false, -1, false)
	
	self.scanning_fast = true
	self:SetState("SS_QUERYING")
	self.db.factionrealm.LastScan=time()
	self.db.factionrealm.LastScanAvailable=time()
	return true
end

function Scan:ScanByName(name,itemid,options)
	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanByName|cffffee00 cannot scan, buyout not finished!") return false end
	if not select(1,CanSendAuctionQuery()) then 
		ZGV:Debug("&scan Scan:ScanByName|cffffee00 %s |rcan't scan yet!",name)
		return FALSE,"can't scan yet"
	end
	if name=="" then return FALSE,"no name" end
	if self.state~="SS_IDLE" then return FALSE,"state "..self.state.." not SS_IDLE" end

	local exact = true
	self.queried_by_id = nil
	self.get_links = false
	self.scan_only_one_page = false

	local queryname,_ = ZGV:GetItemInfo(itemid)

	if not queryname and itemid < 1000000000 then -- we will never get queryname for our custom pet item ids
		ZGV:Debug("&scan GetItemInfo for %d missing, setting up async waiter.",itemid)
		self:SetState("SS_WAITFORII")
		self.WAITFORII_callbacks = {itemid=itemid,starttime=GetTime(),wait=3,fun=function() self:ScanByName(name,itemid,options) end}
		return
	end
	
	if queryname~=name or options=="forcePartial" then 
		-- if generic name not the same as search param, use plain search, as we are searching for "x of y" type item, or a battle pet
		self.queried_by_id = itemid
		exact = false
		--self.get_links = true
	end

	if options=="forceFullname" then
		self.queried_by_id = nil
		queryname = name
		exact = true
		self.get_links = true
	end
		
	if itemid > 1000000000 then -- search for pets by name
		self.queried_by_id = nil
		queryname = name
		exact = true
		self.get_links = true
	end
	if not queryname then
		ZGV:Debug("&scan Scan:ScanByName|cffffee00 %s |rGetItemInfo not ready!",name)
		return false
	end

	table.wipe(self.rawdata)
	self.queried_by_name = queryname
	self.queried_by_partial_name = not exact
	self.scan_page = 1
	self.scan_pages = 1
	self.scanning_by_name = true
	self:SetState("SS_QUERYING")

	self.WaitingForSortAuctionSetSort=true
	SortAuctionSetSort("list","unitprice",false)
	SortAuctionApplySort("list")
	ZGV:Debug("&scan ScanByName for: "..queryname.." id="..(self.queried_by_id or "nil").." partial="..(self.queried_by_partial_name and "yes" or "no").." exact="..tostring(exact))
	self.Proxy:PerformQuery(queryname, nil, nil, 0, false, -1, false, exact)  -- 6.0.2: query by exact name
	return true
end

function Scan:ScanByPartialName(queryname)
	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanByPartialName|cffffee00 cannot scan, buyout not finished!") return false end
	if not select(1,CanSendAuctionQuery()) or self.state~="SS_IDLE" or queryname=="" then
		ZGV:Debug("&scan Scan:ScanByPartialName|cffffee00 %s |rcan't scan yet!",queryname)
		return FALSE
	end

	local exact = false
	self.queried_by_name = queryname
	self.queried_by_partial_name = true
	self.queried_by_id = nil
	self.get_links = true
	self.scan_only_one_page = false

	table.wipe(self.rawdata)
	self.scan_page = 1
	self:SetState("SS_QUERYING")
	self.WaitingForSortAuctionSetSort=true
	SortAuctionSetSort("list","unitprice",false)
	SortAuctionApplySort("list")
	ZGV:Debug("&gold ScanByPartialName for: "..queryname.." partial="..(self.queried_by_partial_name and "yes" or "no").." exact="..tostring(exact))
	self.Proxy:PerformQuery(queryname, nil, nil, 0, false, -1, false, exact)  -- 6.0.2: query by exact name
end

function Scan:ScanByLink(itemlink)
	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanByLink|cffffee00 cannot scan, buyout not finished!") return false end
	if not select(1,CanSendAuctionQuery()) or self.state=="SS_OUT" or itemlink=="" then
		ZGV:Debug("&scan Scan:ScanByLink|cffffee00 %s |rcan't scan yet!",itemlink)
		return FALSE
	end

	table.wipe(self.rawdata)
	local exact = true
	self.queried_by_link = ZGV.ItemLink.StripBlizzExtras(itemlink)
	self.queried_by_id = nil
	local queryname = ZGV:GetItemInfo(itemlink)
	self.get_links = true
	self.scan_only_one_page = false

	self.scan_page = 1
	self:SetState("SS_QUERYING")
	self.WaitingForSortAuctionSetSort=true
	SortAuctionSetSort("list","unitprice",false)
	SortAuctionApplySort("list")
	ZGV:Debug("&gold ScanByLink for: "..queryname.." id="..(self.queried_by_id or "nil").." link="..(self.queried_by_link or "nil").." exact="..tostring(exact))
	self.Proxy:PerformQuery(queryname, nil, nil, 0, false, -1, false, exact)  -- 6.0.2: query by exact name
end

function Scan:ScanLookupByExact(name)
	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanLookupByExact cannot scan, buyout not finished!") return false end
	if not select(1,CanSendAuctionQuery()) then 
		ZGV:Debug("&scan Scan:ScanLookupByExact %s |rcan't scan yet!",name)
		return FALSE,"can't scan yet"
	end
	if name=="" then return FALSE,"no name" end
	if self.state~="SS_IDLE" then return FALSE,"state "..self.state.." not SS_IDLE" end

	self.queried_by_id = nil
	self.get_links = true

	table.wipe(self.rawdata)
	self.queried_by_name = name
	self.queried_by_partial_name = false
	self.scan_page = 1
	self.scan_pages = 1
	self.scanning_by_name = true
	self.scan_only_one_page = true
	self:SetState("SS_QUERYING")

	self.WaitingForSortAuctionSetSort=true
	SortAuctionSetSort("list","unitprice",false)
	SortAuctionApplySort("list")
	ZGV:Debug("&scan ScanByName for: "..name.." id=none partial=no exact=true")
	self.Proxy:PerformQuery(name, nil, nil, 0, false, -1, false, true)  -- 6.0.2: query by exact name
	return true
end

function Scan:CanScanByName()
	if ZGVG.Scan:BlockNeutral() then return true end

	local canOne,canMass = CanSendAuctionQuery()
	if canOne then return true else return false end
end

function Scan:CanScanFast()
	if ZGVG.Scan:BlockNeutral() then return true end

	if DISABLE_FAST_SCAN then return false,99 end
	local canOne,canMass = CanSendAuctionQuery()
	if canMass then
		self.db.factionrealm.LastScanAvailable=time()
		return true,0
	else
		if not self.db.factionrealm.LastScanAvailable then self.db.factionrealm.LastScanAvailable=time()+999999 end
		return nil, 15 - (time() - (self.db.factionrealm.LastScanAvailable or 9999999999))/60
	end
end

function Scan:Abort()
	self:SetState("SS_IDLE")
end

function Scan:GetScanFastTimeString(can,when) -- time remaining, in minutes
	if not when then can,when=self:CanScanFast() end
	if can then return(ZGV_T("You can scan now."))
	elseif (when > 1000) then return(ZGV_T("Next scan: unknown"))
	elseif (when>1) then return((ZGV_T("Next scan: in ~%d minutes")):format(when))
	elseif (when>=0) then return(ZGV_T("Next scan: almost there!"))
	else return(ZGV_T("Next scan unknown!"))
	end
end


--[[
	function Scan:CmdScanFast()
		local canMass,when = self:CanScanFast()

		if not canMass then
			print ("cannot mass",self:GetScanFastTime(when))
			return
		end

		local scanned = self:ScanFast()

		if not scanned then print("Scan failed!") return end
	end
--]]



-- WARNING: may requery for some rows, WILL keep requerying for large result sets that won't fit in cache!
function Scan:ResultsListComplete()
	local count = self:GetAuctionCount("list")
	for row=1,count do
		local name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo = GetAuctionItemInfo("list", row)
		if not hasAllInfo then
			self:Debug("ResultsListComplete? |cffff0000NO|r. Row %d has missing data.")
			return false
		end
	end
	self:Debug("ResultsListComplete? |cff00ff00YES|r!")
	return true
end


function Scan:DumpAuctionItems(focusrow)
	ZGV:Debug("Here's what's on the AH (%d rows):",GetNumAuctionItems("list"))
	for row=1,GetNumAuctionItems("list") do
		local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",row)
		ZGV:Debug("%s%d. '%s'##%d x%d, b/o %s, owner '%s'",focusrow==row and "|cffffddff" or "",row,aName or "",aId or -1,aStack or -1,GetMoneyString(aBuyout or 0),aOwner or "")
	end
end




local hasQueried = false

local consecutive_updates=0

local prev_scan = {}
Scan.prev_scan = prev_scan

local tabcopy = {}
local function smart_concat(tab,str)
	table.wipe(tabcopy)
	for k=1,18 do tabcopy[k]=tostring(tab[k]) end
	return table.concat(tabcopy,str)
end

function Scan.EventHandler(frame,event,arg1,arg2)
	local self=Scan
	if event=="AUCTION_HOUSE_SHOW" then
		self.FWORK:Show()
		self:SetState("SS_IDLE")
		--hasQueried = false
	elseif event=="AUCTION_HOUSE_CLOSED" then
		self.FWORK:Hide()
		self:SetState("SS_OUT")
	elseif event=="AUCTION_ITEM_LIST_UPDATE" then
		self.last_was_AILU = true
		-- On private servers, results may come back same frame. Only skip if truly instant (within 0.01s).
		if GetTime() - (self.last_scan_start_time or 0) < 0.01 then return end
		--[[
		if self.WaitingForSortAuctionSetSort then
			-- we fired SortAuctionSetSort, so next AILU will be a result of that
			ZGV:Debug("&gold |cffffdd00AILU|r - waiting for sort.")
			self.WaitingForSortAuctionSetSort=false
			return
		end
		--]]

		-- Delaying scan because results tend to arrive with several subsequent A_I_L_U events

		--== Count AILUs
			if self.last_AILU_time ~= GetTime() then
				ZGV:Debug("AILU (auctions updated)")
				self.consecutive_AILU_count = 0
			end
			self.last_AILU_time = GetTime()
			self.consecutive_AILU_count= self.consecutive_AILU_count+ 1

		--==

		if self.state=="SS_BUYING" then
			self:SetState("SS_IDLE")
		
		elseif self.state=="SS_QUERYING" then
			self:SetState("SS_SCANNING")
			-- or (self.state=="SS_IDLE" and self:GetAuctionCount("list")>NUM_AUCTION_ITEMS_PER_PAGE) --leech  -- creates an infinite loop! ~~ Jeremiah
				-- First of all, verify if the data is what we asked for!

				--[[

				local name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo = GetAuctionItemInfo("list", 1)
				local link = GetAuctionItemLink("list", 1)

				if (self.queried_by_name and name~=self.queried_by_name)
				or (self.queried_by_partial_name and not name:find(self.queried_by_partial_name,1,true))
				or (self.queried_by_link and link~=self.queried_by_link) then
					-- WRONG results. Ignore.
					ZGV:Debug("AILU: wrong result ("..(name or "?").."), ignoring.")
					return
				end
				ZGV:Debug("AILU: correct result, proceeding.")
				--]]

				-- Now verify if we have all the data we need (it seems hasAll is ALWAYS true, so may not be needed anymore.)

				--[[
				if self:GetAuctionCount("list")<=NUM_AUCTION_ITEMS_PER_PAGE then
					local dps = debugprofilestop()
					local allHaveAll=true
					local prevnum = #prev_scan
					local changes=0
					for row=1,self:GetAuctionCount("list") do
						local rowdata = {GetAuctionItemInfo("list", row)}
						local rowstring = smart_concat(rowdata,"^")
						if prev_scan[row] and rowstring~=prev_scan[row] then
							ZGV:Debug("&gold AILU: diff in row "..row.." - was "..prev_scan[row]..", now "..rowstring)
							changes=changes+1
						end
						prev_scan[row]=rowstring

						local hasAll = select(18,GetAuctionItemInfo("list", row))
						if not hasAll then allHaveAll=false break end
					end
					ZGV:Debug("&gold rows present: "..self:GetAuctionCount("list")..", changed: "..changes)
					ZGV:Debug("&gold |cffffdd00AILU|r - have all? " .. (allHaveAll and "|cff00ff00YES!|r" or "|cffff0000Nope.|r") .. " (took "..math.floor((debugprofilestop()-dps)).." ms)")
				else
					ZGV:Debug("&gold |cffffdd00AILU|r - have all? " ..self:GetAuctionCount("list").." rows.")
				end
				--]]

				--self.consecutive_AILU_count = 1
				--[[
				if self.queried_by_name or self.queried_by_partial_name or self.queried_by_link then -- this is a slow scan, just go ahead and scan results.
					self:SetState("SS_SCANNING")
				else
					self:Debug("Scan:EventHandler |cff77bbff%s - they come in floods, waiting for %dms pause...",event,Scan.wait_after_AILU*1000)
					self:SetState("SS_RECEIVING")
				end
				--]]
		
		end
		
		--[[
		if false and self.state=="SS_RECEIVING" then
			if not self.scanning_fast then
				ZGV:Debug("Scan after receiving? %s",tostring(self.scan_after_receiving))
				if self.scan_after_receiving and not self.scanning_fast and self:ResultsListComplete() then  -- Note: never check ResultsListComplete in a full scan.
					self:SetState("SS_SCANNING")
					self.scan_after_receiving = false
				end
			else
				self:SetState("SS_SCANNING")
			end
		end
		--]]

		--if self.state=="SS_QUERYING" then
		-- let's leech instead.

		--if hasQueried == false then
			--self:SetState("SS_SCANNING")
			--hasQueried = true
		--end
		--end
	elseif event=="ZGV_CSAQNAME_CHANGED" then
		local can_scan = arg2
		ZGV:Debug("Can scan?: %s",can_scan and "|cffbbeebbyes|r" or "|cffff7799no|r")
		if not self.scanning_fast then
			if can_scan and self.state=="SS_QUERYING" and GetNumAuctionItems("list")==0 then
				-- well damn, no results arrived within timeout. Scan it, call it quits.
				self:Debug("Can scan again, but no results arrived yet... Calling it quits. Scan, wrap.")
				self:SetState("SS_SCANNING")
			end

			--[[
			if not can_scan and (self.state=="SS_QUERYING" or self.state=="SS_RECEIVING") then -- initial de-csaq-ing
				ZGV:Debug("Setting scan after receiving.")
				self.scan_after_receiving=true
			end
			--]]
		end

		if can_scan and self.CanScanCallback then self.CanScanCallback() self.CanScanCallback=nil end
	end
	--ZGVG.Appraiser.UpdateHandler(nil,1000) -- force update
end


Scan.consecutive_AILU_count=0
Scan.last_AILU_time=0
Scan.wait_after_AILU = 0.000

local lasttime=0
function Scan:Work()
	if self.state=="SS_WAITFORII" and self.WAITFORII_callbacks then
		local n = ZGV:GetItemInfo(self.WAITFORII_callbacks.itemid)
		if n then
			ZGV:Debug("Scan:Work GetItemInfo for " .. self.WAITFORII_callbacks.itemid .. " is ready, resuming query.")
			self:SetState("SS_IDLE")
			self.WAITFORII_callbacks.fun()
			self.WAITFORII_callbacks = nil
		elseif GetTime()>self.WAITFORII_callbacks.starttime+self.WAITFORII_callbacks.wait then
			-- timed out!
			ZGV:Debug("Scan:Work Timed out waiting for GetItemInfo " .. self.WAITFORII_callbacks.itemid)
			self:SetState("SS_IDLE")
			self.WAITFORII_callbacks = nil
		else
			ZGV:Debug("Scan:Work Waiting for GetItemInfo " .. self.WAITFORII_callbacks.itemid)
		end
	elseif self.state=="SS_QUERYING" then
		if not self.Proxy:IsFullScan() and GetTime()-self.last_scan_start_time > self.QUERY_TIMEOUT then
			-- Instead of giving up, try to recover by re-entering SCANNING to process any results we have
			local batch, total = GetNumAuctionItems("list")
			if batch and batch > 0 then
				ZGV:Debug("&scan Query timeout but have %d results, trying to process...", batch)
				self:SetState("SS_SCANNING")
			else
				self:SetState("SS_MESSAGE",{kind="error",msg=ZGV_T("Auction query timed out. Click Scan to retry.")})
			end
		end
	elseif self.state=="SS_RECEIVING" then
		-- grab the page count, for progress
		self.scan_pages = math.ceil(select(2,GetNumAuctionItems("list"))/NUM_AUCTION_ITEMS_PER_PAGE)
		if self.scan_only_one_page then print("drop from",self.scan_pages) self.scan_pages=1 end
		if self.last_AILU_time>0 and GetTime()-self.last_AILU_time > self.RECEIVING_TIMEOUT then
			self:SetState("SS_MESSAGE",{kind="error",msg=ZGV_T("Auction scan timed out. Click Scan to retry.")})
		end

		--[[
		if GetTime()-self.last_AILU_time >= self.wait_after_AILU then  -- Scan.wait_after_AILU ms passed since the last AILU event... this maaay not be good, but let's start with this.
			self:Debug("Scan:Work - got %d AILUs, %d ms passed since then, moving from RECEIVING to SCANNING",self.consecutive_AILU_count,self.wait_after_AILU*1000)
			self:SetState("SS_SCANNING")
		else
			self:Debug("Scan:Work - got %d AILUs so far",self.consecutive_AILU_count)
		end
		return
		--]]
	elseif self.state=="SS_SCANNING" then
		self:ScanAuctions()
		return
	elseif self.state=="SS_ANALYZING" then
		self:AnalyzeAuctions("go")
		return
	elseif self.state=="SS_NEEDTOQUERY" then
		if CanSendAuctionQuery() and self.queryfunc then
			ZGV:Debug("&scan Running queued query:")
			self:queryfunc()
			self:SetState("SS_QUERYING")
			self.needtoquery_msg=false
		else
			if not self.needtoquery_msg then self:Debug("SS_NEEDTOQUERY Can't query, waiting...") end
			self.needtoquery_msg=true
			if GetTime()-lasttime>1.000 then self:Debug("SS_NEEDTOQUERY Still can't query, waiting...") lasttime=GetTime() end
		end
	elseif self.state=="SS_MESSAGE" then
		if GetTime()- (self.last_MESSAGE_state or 0) > ((self.message_data and self.message_data.time) or self.MESSAGE_TIME) then
			self:SetState("SS_IDLE")
		end
	end
end

local last_csaq,last_csaq2
local delay,interval=0,0.1
function Scan.UpdateHandler(frame,elapsed)
	-- count AILUs, just for debugging
	if Scan.last_was_AILU then
		if Scan.consecutive_AILU_count>1 then
			Scan:Debug("AILU x".. Scan.consecutive_AILU_count)
		end
		--Appraiser.EventHandler(frame,"ZGV_AFTER_SINGLE_AILU")
		Scan.last_was_AILU=false
	end

	-- Announce CanSendAuctionQuery changes
	local csaq,csaq2 = CanSendAuctionQuery()
	--if csaq~=last_csaq then self.EventHandler(self.FWORK,"ZYGOR_CSAQNAME_CHANGED",last_csaq,csaq) Appraiser.EventHandler(self.FWORK,"ZYGOR_CSAQNAME_CHANGED",last_csaq,csaq) end
	--if csaq2~=last_csaq2 then self.EventHandler(self.FWORK,"ZYGOR_CSAQFAST_CHANGED",last_csaq2,csaq2) Appraiser.EventHandler(self.FWORK,"ZYGOR_CSAQFAST_CHANGED",last_csaq2,csaq2) end
	last_csaq,last_csaq2=csaq,csaq2

	--delay=delay+elapsed  if delay>interval then delay=0 else return end
	--[[
	if consecutive_updates>1 then
		ZGV:Debug("Scan:UpdateHandler: |cff335588AUCTION_ITEM_LIST_UPDATE x",consecutive_updates)
		consecutive_updates=0
	end
	--]]
	Scan:Work()
end




local rows_processed = {}
local query_at_once = 100

local last_full_scan=0

local total_goodlinks = 0
local total_badlinks = 0
local total_uniqueids = 0

function Scan:PrepareBeforeScanning()
	total_goodlinks = 0
	total_badlinks = 0
	total_uniqueids = 0
	wipe(rows_processed)
	starting_row = 0
end

local scanning_throttle_ms = 100 --ms
local scanning_throttle_rows = 1000 --rows
local scanning_throttle_sec = 10000 --rows/sec!   -- now using ZGV.db.profile.ahscanintensity!
local scanning_current_sec,scanning_last_sec,scanning_this_sec

function Scan:ScanAuctions()  -- in state: SS_SCANNING
	local batch,total = self:GetAuctionCount("list")
	if self.scan_only_one_page then
		total = min(total,NUM_AUCTION_ITEMS_PER_PAGE)
	end

	Scan.total_count = total
	local goodlinks,badlinks,uniqueids,unwanted=0,0,0,0

	
	scanning_throttle_sec = ZGV.db.profile.ahscanintensity


	local tim=time()
	tim = 1  -- store only current data

	local newitems={}

	if Proxy:IsFullScan() then  -- full scan? prepare to wipe.
		--[[
			-- LEGION: we're now "rescanning" current auction results over and over, to grab all the links which are now served asynchronously.
			-- The block below has to go. Yo.
			if not self.last_scanned_in_batch and time()-last_full_scan<10 then
				-- A new full scan in 10 seconds? You gotta be kidding.
				-- This is an "echo" of an update, IGNORE, or we'll accidentally the whole thing.
				ZGV:Debug("&scan ScanAuctions |cffff8800refusing to scan too frequent full scans.")
				last_full_scan=time()
				self:SetState("SS_IDLE")
				return
			end
		--]]
		last_full_scan=time()
		if self.data then self.data.wipe_me=true end
		self.scan_pages = 1000
	else
		self.scan_pages = math.ceil(total/NUM_AUCTION_ITEMS_PER_PAGE)
		self.last_scanned_in_batch=nil
	end

	local saved_Id

	self.last_scanned_in_batch = self.last_scanned_in_batch or 0  -- this means we're in partial processing of a full scan
	
	--self:Debug("Scan:ScanAuctions rows %d - %d , total %d",self.last_scanned_in_batch+1,batch,total)

	local t1 = debugprofilestop()

	local rowsnow=0

	scanning_current_sec = floor(GetTime())
	if scanning_last_sec~=scanning_current_sec then scanning_last_sec=scanning_current_sec  scanning_this_sec=0 end
	
	local player_name = UnitName("player")

	local hasAllCounter=0
	local hasNotAllCounter=0
	local rowsOnPage=0

	local good_data_so_far = true

	local wrong_were_present = false

	for row=self.last_scanned_in_batch+1,batch do  repeat
		if rows_processed[row] then break end --continue

		rowsOnPage=rowsOnPage+1

		-- WoW 3.3.5a: GetAuctionItemInfo returns fewer fields than retail
		local name, texture, count, quality, canUse, level, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, ownerName = GetAuctionItemInfo("list", row)
		local link = GetAuctionItemLink("list", row)
		if link=="" then link=nil end

		-- Extract itemId from link (3.3.5a doesn't return it directly)
		local itemId = link and tonumber(link:match("item:(%d+)"))
		local hasAllInfo = (name and name ~= "" and link)

		if not (self.queried_by_id or self.queried_by_link or self.queried_by_partial_name) and self.queried_by_name and name and not name:find(self.queried_by_name,1,true) then
			ZGV:Debug("&scan Scan:ScanAuctions: wrong results! (row %d, queried for %s, found %s... Let's wait for proper results.",row,self.queried_by_name,(name or "unnamed"))
			self:SetState("SS_QUERYING")
			table.wipe(self.rawdata)
			return
		end

		if not self.get_links and itemId then link="item:"..itemId end

		if hasAllInfo and not link then ZGV:Debug("WTF! HasAllInfo but no link!") hasAllInfo=false end
		if hasAllInfo and (not name or name=="") then ZGV:Debug("WTF! HasAllInfo but no name!") hasAllInfo=false end

		if not hasAllInfo then
		--@if not hasAllInfo then
			hasNotAllCounter=hasNotAllCounter+1
			good_data_so_far = false
			break --continue
		end

		if good_data_so_far then self.last_scanned_in_batch = row end

		hasAllCounter=hasAllCounter+1
		rows_processed[row]=true

		if itemId == 82800 and self.get_links then
		--@if itemId == 82800 then
			if link then
				itemId = ZGV.PetBattle:GetPetFakeIdByLink(link)
			end
		end
		
		repeat
			if not itemId or not name then  badlinks=badlinks+1  break  end

			if not newitems[itemId] then
				newitems[itemId]=1
				uniqueids=uniqueids+1
			end
			
			--if ownerName==player_name then  break  end

			--if self.queried_by_name and name~=self.queried_by_name then  
			-- pets can exist as either item or caged pets with diff ids, so for pets we search by name

			if not (self.queried_by_link or self.queried_by_partial_name)
			and (
				(self.queried_by_id and itemId~=self.queried_by_id)  -- queried by ID, but it's wrong
				or
				(not self.queried_by_id and self.queried_by_name and name~=self.queried_by_name)  -- queried by name, not by ID, but the name is wrong
			)
			then
				unwanted=unwanted+1  
				--break
				itemId = 0
				count = 1
				buyoutPrice = 0
				link = ""
			end

			if self.queried_by_link and self.queried_by_link~=ZGV.ItemLink.StripBlizzExtras(link) then  
				unwanted=unwanted+1
				--break
				itemId = 0
				count = 1
				buyoutPrice = 0
				link = ""
			end

			-- if all's good...
			tinsert(self.rawdata,(self.scan_page or 1) .. "^" .. row .."^".. itemId .."^".. count .."^".. buyoutPrice .."^".. link .."^".. (ownerName==player_name and 1 or 0))
			
			--[[
				--local link = GetAuctionItemLink("list", i)
				--local id = tonumber(link:match("item:(%d+)"))
				
				--local itemdata --  = dataset[itemId]
				--if not itemdata then itemdata={} dataset[itemId]=itemdata end
			--]]
			--[[
				local IDstring = zc.ItemIDStrfromLink (itemLink);
				
				if (Atr_ILevelHist_Update) then
					Atr_ILevelHist_Update(itemLink)
				end
				
				local OKitemLevel = true
				if (self.minItemLevel or self.maxItemLevel) then
					local _, _, _, iLevel, _ = ZGV:GetItemInfo(itemLink);
					if ((self.minItemLevel and iLevel < self.minItemLevel) or (self.maxItemLevel and iLevel > self.maxItemLevel)) then
						OKitemLevel = false
					end
				end
				
				if (OKitemLevel) then
					if (owner == nil) then
						numNilOwners = numNilOwners + 1
					end

					if (self.exactMatchText == nil or zc.StringSame (name, self.exactMatchText)) then

						if (self.items[IDstring] == nil) then
							self.items[IDstring] = Atr_FindScanAndInit (IDstring, name)
						end
						
						local curpage = (tonumber(self.current_page)-1)

						local scn = self.items[IDstring]

						if (scn) then
							scn:AddScanItem (count, buyoutPrice, owner, 1, curpage)
							scn:UpdateItemLink (itemLink)
						end
					end
				end
			--]]

			goodlinks=goodlinks+1
			saved_Id=itemId
		until true

		rowsnow=rowsnow+1


		scanning_this_sec = scanning_this_sec + 1

		--[[ Legion: we're being screwed by the cache anyway; disabling partial analysis for now.
				
			--if t2-t1 > scanning_throttle_ms  or  rowsnow>scanning_throttle_rows then
			if scanning_this_sec>=scanning_throttle_sec
			or debugprofilestop()-t1 >= scanning_throttle_ms
			or rowsnow>=scanning_throttle_rows
			then
				self:Debug("&scan FastScan |cffffaa00running|r! Did |cffffffff%d|r rows now. Progress %d/%d = |cffffdd00%d%%|r. %d good, %d bad, %d unique, %d raw. %d had all info. (%d in sec)",
				rowsnow,
				row,total,row/total*100,
				goodlinks,badlinks,uniqueids,#self.rawdata,
				hasAllCounter,
				scanning_this_sec)
				--self:SetState("SS_SCANNING") -- why set to the same, I wonder
				self.last_scanned_in_batch=row
				self.scan_progress = row/total
				return
				-- lame excuse for a coroutine. TODO: coroutinize it? maybe? not direly needed, I guess... ~~sinus
			end
		--]]

	until true
	if hasNotAllCounter>=query_at_once then break end -- Too many missing rows? They got sent as queries to the server. Get out of the scanning loop, come back later.
	end

	if wrong_were_present then ZGV:Debug("Wrong rows detected, returning to query maybe?") self:SetState("SS_QUERYING") return end


	-- we're done!

	self.last_scanned_in_batch=nil

	if batch>NUM_AUCTION_ITEMS_PER_PAGE then

		-- batch==total, probably, but trust no one
		local rows_received = #self.rawdata
		local progress=rows_received/batch

		self.scan_progress = progress

		total_goodlinks = total_goodlinks + goodlinks
		total_badlinks = total_badlinks + badlinks
		total_uniqueids = total_uniqueids + uniqueids

		self:Debug("FastScan |cff88ff00RUNNING|r: %d/%d (%d%%) rows. %d in cycle: %d have all info, %d don't: %d good, %d bad, %d unique.",
			rows_received,batch,progress*100,
			rowsnow,hasAllCounter,hasNotAllCounter,
			goodlinks,badlinks,uniqueids)

		if hasNotAllCounter==0 then
			self:Debug("FastScan |cff88ff00OVER|r: %d/%d (%d%%) rows, %d good, %d bad, %d unique.",
				rows_received,batch,progress*100,
				total_goodlinks,total_badlinks,total_uniqueids)
			self:SetState("SS_ANALYZING")
			self:AnalyzeAuctions("reset")
			self.data.wipe_one = nil
			wipe(rows_processed)
			self.scan_page = self.scan_page + 1
		end


	elseif batch==NUM_AUCTION_ITEMS_PER_PAGE and (self.scan_page*NUM_AUCTION_ITEMS_PER_PAGE<total) and (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or self.scanning_fast) then

		if hasNotAllCounter==0 then  self.scan_page = self.scan_page + 1  end

		local queryfunc = function(self)
			local queryname = self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or ""
			ZGV:Debug("SlowScan querying...")
			self.Proxy:PerformQuery(queryname, nil, nil, self.scan_page-1, false, -1, false, not self.queried_by_partial_name)
			wipe(rows_processed)
			self:SetState("SS_QUERYING")
		end

		if CanSendAuctionQuery() then
			self:Debug("SlowScan for |cffffee00%s|r |cffffaa00running|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d have all info. This was page %d, going for next.",
				self.queried_by_name, #self.rawdata,total,
				rowsOnPage,
				goodlinks,badlinks,unwanted,uniqueids,hasAllCounter,
				self.scan_page-1)
			queryfunc(self)
		else
			self:Debug("SlowScan for |cffffee00%s|r |cffffaa00running|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d have all info. This was page %d, WAITING for next.",
				self.queried_by_name, #self.rawdata,total,
				rowsOnPage,
				goodlinks,badlinks,unwanted,uniqueids,hasAllCounter,
				self.scan_page-1)
			self:SetState("SS_NEEDTOQUERY")
			self.queryfunc=queryfunc
		end
	else
		-- end
		self:Debug("SlowScan for |cffffee00%s|r |cff88ff00OVER|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d had all info.",
			self.queried_by_name, #self.rawdata,total,
			rowsOnPage,
			goodlinks,badlinks,unwanted,uniqueids,hasAllCounter)
		self:SetState("SS_ANALYZING")
		self:AnalyzeAuctions("reset")
		self.data.wipe_one = saved_Id
		wipe(rows_processed)
	end

	--[[
	-- in some cases..???
	-- error when scanning?
	self:SetState("SS_IDLE")
	--]]

end

-- Returns: batch, sane_total, total
function Scan:GetAuctionCount(typ)
	local batch,total = GetNumAuctionItems(typ)
	return batch,(total>500000 or total<0) and batch or total,total
end


local analyze_throttle = 50 --ms
function Scan:AnalyzeAuctions(cmd)  -- Ugly Self-coroutine.
	-- selfdriver:
	if cmd=="reset" then self.analyzethread=nil return end
	if cmd=="go" then  self.analyzethread=self.analyzethread or coroutine.create(self.AnalyzeAuctions)  local suc,err=coroutine.resume(self.analyzethread,self)  
	if not suc then ZGV:Debug("&scan ERROR ANALYZING %s",err) self.analyzethread=nil self:SetState("SS_IDLE") end return  end
	-- end of selfdriver

	local tim=time()

	-- 3.3.5a compat: C_DateAndTime doesn't exist, use date() instead
	local today = ZGV.db.char.debugdate or time({year=tonumber(date("%Y")), month=tonumber(date("%m")), day=tonumber(date("%d")), hour=0})

	if not self.time[1] or self.time[1] ~= today then -- no data, or data is not from today
		local cutoff = today - 15*24*60*60

		-- add new data set
		table.insert(self.data,1,{})
		table.insert(self.time,1,today)

		-- trim data sets older than 15 days, back to front to avoid skips, and tremove to keep indices ordered
		for i=#self.data,1,-1 do
			if not self.time[i] or self.time[i]<cutoff then
				table.remove(self.data,i)
				table.remove(self.time,i)
			end
		end
	end

	self.data.today = 1 --tim - tim%86400
	self.data[self.data.today] = self.data[self.data.today] or {}
	data_byitems = self.data[self.data.today]

	local first_wipes
	if self.data.wipe_me then
		self:Debug("AnalyzeAuctions: wipe requested, wiping.")
		table.wipe(data_byitems)
		self.data.wipe_me=nil
	end

	if self.data.wipe_one then
		if data_byitems[self.data.wipe_one] then table.wipe(data_byitems[self.data.wipe_one]) end
	end

	-- Condense raw data only.

	local save_itemId,save_data

	local new=0

	local newitems={}
	if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) and self.record_unique_links then 
		self.FoundInScan= self.FoundInScan or {}
		self.FoundInScan[self.queried_by_name or self.queried_by_partial_name or self.queried_by_link] = {} 
	end


	local t1=debugprofilestop()
	
	for i,rawline in ipairs(self.rawdata) do  repeat
		
		-- itemId ..":".. count ..":".. minBid ..":".. buyoutPrice
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)

		is_own=(is_own=="1")
		if is_own then  break  end
		if link=="" then  break  end -- dummy entry
		itemId=tonumber(itemId)
		count=tonumber(count)
		buyoutPrice=round(buyoutPrice/count)

		if buyoutPrice>0
		or itemId==82800 --pet cage
		then  -- no buyout, no deal.
			if not data_byitems[itemId] then data_byitems[itemId]={} end
			if not newitems[itemId] then newitems[itemId]=1 new=new+1 end
			if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) and self.record_unique_links then 
				local sanitized = ZGV.ItemLink.StripBlizzExtras(link,true)
				if not self.FoundInScan[(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link)][sanitized] then 
					self.FoundInScan[(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link)][sanitized]=link 
				end
			end

			local dat=data_byitems[itemId]
			-- store all the data about the item in here.
			-- FIRST PASS.

			-- just get the minimum
			-- or don't
			--[[
			buyoutPrice=buyoutPrice/count
			dat.min = dat.min and min(dat.min,buyoutPrice) or buyoutPrice
			--]]

			if not dat[buyoutPrice] then dat[buyoutPrice]=count else dat[buyoutPrice]=dat[buyoutPrice]+count end

			save_itemId=itemId
			save_data=dat

		end

		if i%100==0 then
			if debugprofilestop()-t1>analyze_throttle then
				self.analysis_progress = i / #self.rawdata
				self:Debug("AnalyzeAuctions: %d%% (%d / %d)",self.analysis_progress*100,i,#self.rawdata)
				yield()
				t1=debugprofilestop()
			end
		end
	until true  end
	self.analysis_progress = 1
	self:Debug("AnalyzeAuctions: %d%% (%d / %d)",self.analysis_progress*100,#self.rawdata,#self.rawdata)

	-- now: data_byitems[itemid]={[12300]=1,[12301]=10,[12299]=1000}

	-- Now let's do some stats.

	--[[

		local new=0
		for itemid=1,100000 do if data[itemid] then -- force sort; pairs or ipairs wouldn't suffice
			-- itemId ..":".. count ..":".. minBid ..":".. buyoutPrice

			local stats={}

			for i,countprice in ipairs(data[itemid]) do
				local count,price = strsplit(":",countprice)
				stats[price]=
			end


			local count,buyoutPrice = strsplit(":",v)
			itemId=tonumber(itemId)

			if not data[itemId] then data[itemId]={} new=new+1 end
			local dat=data[itemId]

			-- just get the minimum
			buyoutPrice=buyoutPrice/count
			dat.min = dat.min and min(dat.min,buyoutPrice) or buyoutPrice



			if i%5000==0 then 
				self.analysis_progress = i / #self.rawdata
				yield()
			end
		end end

	--]]

	--if not ZGV.Gold.Appraiser.AttemptingToBuyout then
	--	ZGV:Print(("Analysis of " .. (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or "all auctions") .. " complete. %d items scanned in %d auctions."):format(new,#self.rawdata))
	--end

	--table.wipe(self.rawdata)  -- NOT wiping, please remember to wipe after using the toi- I mean, the Scan. Thank you --

	if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) then
		ZGV:Debug("&scan Results for|cffffee00 %s |cff888888## %s |r:",(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link),save_itemId)
		local count=0
		if save_data then
			for k,v in pairs(save_data) do
				--ZGV:Debug("&scan "..k..","..v)
				count=count+1
			end
			ZGV:Debug("&scan %d postings.",count)
		else
			ZGV:Debug("&scan NONE")
		end
		if save_itemId then self:DebugItem(save_itemId) end
	end


	ZGV:SendMessage("ZGV_GOLD_SCANNED")

	if ZGV.Goldguide then
		ZGV.Goldguide:CalculateAllChores("refresh")
	end

	-- Generate trends from scan data (always in 3.3.5a since we can't do getAll full scans)
	if self.scanning_fast or self.Proxy:IsFullScan() then
		if ZGV.Gold.ServerTrends and ZGV.Gold.ServerTrends.GetTrendsFromScan then
			ZGV.Gold.ServerTrends:GetTrendsFromScan("silent")
		end
	end

	if ZGVG.Scan.ResultCallback then ZGVG.Scan.ResultCallback() ZGVG.Scan.ResultCallback=nil end

	self:SetState("SS_IDLE")
end

function Scan:SetState(state,arg)
	self:Debug("SetState %s",state)

	if state=="SS_QUERYING" then
		table.wipe(prev_scan)
		self.scan_pages=0
		self.last_scan_start_time_ms = debugprofilestop()
		self.scan_after_receiving = false
		self.last_scan_start_time = GetTime()
	end

	if self.state=="SS_QUERYING" and state=="SS_OUT" then
		ZGV:Debug("&scan Query cancelled.")
	end
	if state=="SS_NEEDTOQUERY" then lasttime=GetTime() end  -- timestamp last attempt to query, just cosmetics

	if (state=="SS_SCANNING" or state=="SS_BUYING") and state~=self.state then
		self:PrepareBeforeScanning()
	end

	if state=="SS_IDLE" then
		-- ABOMINABLE WORKAROUND for a case of hanging/freezing after a full scan.
		--if not (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or self.WAITFORII_callbacks or ZGV.Gold.Appraiser.AttemptingToBuyout) then ZGV:Debug("&gold Scan: Sending abominable empty query")  QueryAuctionItems("chrzaszcz brzmi w trzcinie", nil, nil, 0, false, -1, false) end

		self.queried_by_id=false
		self.queried_by_name = false
		self.queried_by_partial_name = false
		self.queried_by_link = false
		self.scanning_fast = false
		self.message_data = nil

		--ZGV.Gold.Appraiser:Update()
	elseif state=="SS_MESSAGE" then
		self.last_MESSAGE_state = GetTime()
		self.message_data = arg
	end

	local oldstate = self.state
	self.state=state
	
	-- Output an event when the state changes
		if oldstate~=state then
			ZGV:SendMessage("ZGV_SS_STATE_CHANGE", state)
		end
	--
end

function Scan:ReAnalyze()
	self:SetState("SS_ANALYZING")
	self:AnalyzeAuctions("reset")
end

local function percentile(itemdata,perc,total)
	local tempcount=0
	local targetcount=floor(perc*total)
	for price,count in orderedPairs(itemdata) do
		tempcount=tempcount+count
		if tempcount>=targetcount then return price end
	end
end
Scan.percentile = percentile

function Scan:GetAnalysis(itemid)
	local data = self.data[self.data.today]
	if not data then return false,"no data for today" end
	local itemdata = data[itemid]
	if not itemdata then return false,"no data for item" end
	
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(itemid)
	ZGV:Debug("&scan Analysing: %s",itemLink)
	ZGV:Debug("&scan - vendor %s",GetMoneyString(itemSellPrice))

	local totalcount=0
	local sum=0
	local pricemin,pricemax
	for price,count in orderedPairs(itemdata) do
		totalcount=totalcount+count
		sum=sum+(price*count)
		if not pricemin or pricemin>price then pricemin=price end
		if not pricemax or pricemax<price then pricemax=price end
	end
	ZGV:Debug("&scan seen "..totalcount.." times")
	ZGV:Debug("&scan min "..GetMoneyString(pricemin).." max "..GetMoneyString(pricemax))
	ZGV:Debug("&scan median "..GetMoneyString(percentile(itemdata,0.5,totalcount)))
	ZGV:Debug("&scan 10 perc "..GetMoneyString(percentile(itemdata,0.1,totalcount)))
	ZGV:Debug("&scan 90 perc "..GetMoneyString(percentile(itemdata,0.9,totalcount)))
	ZGV:Debug("&scan average "..GetMoneyString(sum/totalcount))
	ZGV:Debug("&scan center "..GetMoneyString((pricemin+pricemax)/2))
end

local GetPriceindextemp,GetPriceindexrevtemp={},{}
function Scan:GetPrice(itemid)
	table.wipe(GetPriceindextemp)
	table.wipe(GetPriceindexrevtemp)

	local itemdata
	for _,data in ipairs(self.data) do -- don't just assume self.data[1] is full of data. if item is missing in todays scan, we may have historical data in one of older stored ones
		if data[itemid] then
			itemdata = data[itemid]
			break
		end
	end

	if not itemdata then return 0,"no data for item" end
	--for price,count in orderedPairs(itemdata) do
	for price,count in ZGV.OrderedPairsCleanFast(itemdata,GetPriceindextemp,GetPriceindexrevtemp) do
		if price then return price end
	end
end

function Scan:GetPrices(itemid)
	local data = self.data[self.data.today]
	if not data then return nil,"no data for today at all" end
	local itemdata = data[itemid]
	if not itemdata then return nil,"no data for item" end
	return itemdata
end

function Scan:CreateWorkFrame()
	local CHAIN=ZGV.ChainCall
	self.FWORK = CHAIN(CreateFrame("FRAME","ZGGoldScanWork"))
		:RegisterEvent("AUCTION_HOUSE_SHOW") --
		:RegisterEvent("AUCTION_HOUSE_CLOSED") --
		:RegisterEvent("AUCTION_ITEM_LIST_UPDATE") --
		:RegisterEvent("AUCTION_BIDDER_LIST_UPDATE")
		:RegisterEvent("AUCTION_OWNED_LIST_UPDATE")
		:RegisterEvent("AUCTION_MULTISELL_START")
		:RegisterEvent("AUCTION_MULTISELL_UPDATE")
		:RegisterEvent("AUCTION_MULTISELL_FAILURE")
		:RegisterEvent("NEW_AUCTION_UPDATE")
		:RegisterEvent("CHAT_MSG_ADDON")
		:SetScript("OnEvent",Scan.EventHandler)
		:SetScript("OnUpdate",Scan.UpdateHandler)
		:Hide()
		.__END
end










local delay,interval=0, 0.5
function Scan.UIFrameOnUpdate(frame,elapsed)
	if not Scan.enabled then return end
	delay=delay+elapsed  if delay>interval then delay=0 else return end

	local s=Scan.state

	local canMass,when = Scan:CanScanFast()
	frame.ScanButton:SetEnabled(canMass and Scan.state=="SS_IDLE")

	-- state
	if Scan.state=="SS_IDLE" then s=Scan:GetScanFastTimeString(canMass,when)
 	elseif Scan.state=="SS_QUERYING" then  Scan.queryspin=(Scan.queryspin+1)%5  s="Querying" .. strrep(".",Scan.queryspin+1)
	elseif Scan.state=="SS_ANALYZING" then  s=(ZGV_T("Analyzing (%d%%)")):format((Scan.analysis_progress or 0)*100)
	elseif Scan.state=="SS_SCANNING" then  s=(ZGV_T("Scanning (%d%%)")):format((Scan.scan_progress  or 0)*100)
	end
	frame.ScanButton:SetText(s)

end

function Scan.UIFrameOnShow(frame)
	frame:SetPoint("BOTTOMRIGHT",AuctionFrame,"TOPRIGHT")
end

function Scan.UIFrameOnEvent(frame,event,arg1,arg2)
	if event=="AUCTION_HOUSE_SHOW" then
		Scan:ShowScanButton()
	elseif event=="AUCTION_HOUSE_CLOSED" then
		--frame:Hide()
	end
	--Scan.UIFrameOnUpdate(frame,999)
end

function Scan:CreateUIFrame()
	local FONT=ZGV.Font
	local CHAIN=ZGV.ChainCall

	local function SkinData(property)  return ZGV.UI.SkinData(property)  end

	self.FUI=CHAIN(ZGV.CreateFrameWithBG("FRAME","ZGGoldScanUI",UIParent))
		:SetSize(170,20)
		:SetFrameStrata("DIALOG")
		:SetBackdrop(SkinData("MoneyBackdrop"))
		:SetBackdropColor(unpack(SkinData("MoneyBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("MoneyBackdropBorderColor")))
		:RegisterEvent("AUCTION_HOUSE_SHOW") --
		:RegisterEvent("AUCTION_HOUSE_CLOSED") --
		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:SetScript("OnEvent",Scan.UIFrameOnEvent)
		:SetScript("OnUpdate",Scan.UIFrameOnUpdate)
		:SetScript("OnShow",Scan.UIFrameOnShow)
		:Hide()
		.__END
		--:RegisterEvent("PLAYER_ENTERING_WORLD")

	self.FUI.ScanButton = CHAIN(ZGV.UI:Create("Button",self.FUI))
		:SetAllPoints()
		:SetText("Zygor Scan")
		:SetScript("OnClick",function() Scan:ScanFast() end)
		:Show()
	.__END
end

function Scan:ShowScanButton()
	Scan.FUI:SetParent(AuctionFrame)
	Scan.FUI:SetPoint("RIGHT",AuctionFrameCloseButton,"LEFT", 0,0)
end

function Scan:DebugItem(id)
	local typ
	if not id then
		typ,id = GetCursorInfo()
		if typ~="item" then ZGV:Debug("&scan Cursor has no item.") return end
	end

	ZGV:Debug("&scan Debug for item #%s",id)

	local data = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[id]
	if data then
		if next(data) then
			ZGV:Debug("&scan Server data: health %d, q %d-%d, p %s-%s,",data.health,data.q_lo,data.q_hi,ZGV.GetMoneyString(data.p_lo or -1),ZGV.GetMoneyString(data.p_hi or -1))
		else
			ZGV:Debug("&scan Server data: NONE!?")
		end
	else
		ZGV:Debug("&scan No server data for item")
	end

	if  ZGV.db.factionrealm.gold_scan_data
	and ZGV.db.factionrealm.gold_scan_data[1]
	and ZGV.db.factionrealm.gold_scan_data[1][id] then
		--ZGV:Debug("&scan AH data:")
		local count=0
		for k,v in pairs(ZGV.db.factionrealm.gold_scan_data[1][id]) do
			--ZGV:Debug("&scan "..k..","..v)
			count=count+1
		end
		ZGV:Debug("&scan Item debug: %d postings.",count)
	else
		ZGV:Debug("&scan Item debug: No postings for item.")
	end

	ZGV:Debug("&scan ZGV.Gold.Scan:GetPrice :")
	ZGV:Debug("&scan  %s",ZGV.GetMoneyString(Scan:GetPrice(id)))

end

function Scan:Debug(s,...)
	return ZGV:Debug("&gold &scan &_SUB "..s,...)
end


function Scan:Crash()
	self:SetState("SS_CRASHED")
end



function Scan:ImportHourly()
	if not ZGV_IMPORT_HOURLY_TIME then return nil,"No hourly to import" end
	if ZGV_IMPORT_HOURLY_TIME<(ZGV.db.factionrealm.LastScan or 0) then return nil,"Current scan is newer than hourly" end
	ZGV.db.factionrealm.gold_scan_data = {[1]={},today=1}

	for itemid,itemdata in pairs(ZGV_IMPORT_HOURLY_DATA) do
		for buyout,quantity in pairs(itemdata) do
			ZGV.db.factionrealm.gold_scan_data[1][itemid]=ZGV.db.factionrealm.gold_scan_data[1][itemid] or {}

			if type(quantity)=="table" then -- item varian array
				for bo,qa in pairs(quantity) do
					ZGV.db.factionrealm.gold_scan_data[1][itemid][bo] = (ZGV.db.factionrealm.gold_scan_data[1][itemid][bo] or 0) + qa
				end
			else
				ZGV.db.factionrealm.gold_scan_data[1][itemid][buyout] = (ZGV.db.factionrealm.gold_scan_data[1][itemid][buyout] or 0) + quantity
			end
		end
	end

	ZGV.db.factionrealm.LastScan = ZGV_IMPORT_HOURLY_TIME

	if ZGV_IMPORT_HOURLY_INTERVAL then
		-- round to next full minute
		ZGV_IMPORT_HOURLY_INTERVAL_ROUNDED = math.ceil(ZGV_IMPORT_HOURLY_INTERVAL/60)*60
	end

	if ZGV_IMPORT_HOURLY_INTERVAL and (ZGV.db.char.gold_new_data_used or 0)<ZGV_IMPORT_HOURLY_TIME then
		-- we have some new data, wipe next expected popup time, set used data to current
		ZGV.db.char.gold_new_data_next = ZGV_IMPORT_HOURLY_TIME + ZGV_IMPORT_HOURLY_INTERVAL_ROUNDED
		ZGV.db.char.gold_new_data_used = ZGV_IMPORT_HOURLY_TIME
	end

	ZGV:Print(ZGV_T("Imported 'hourly' data with timestamp ")..ZGV.db.factionrealm.LastScan)
end

local hourly_intervals = {
	EU=40, US=80, KR=10, TW=10
}
function Scan:EstimateTimeUntilHourly()
	local region = GetCVar("portal")
	local interval = hourly_intervals[GetRealmName()] or hourly_intervals[region] or 60
	local last_time = ZGV_IMPORT_HOURLY_TIME
	local next_time = last_time + interval*60
	return next_time-time()
end

local function OldColor(timestamp,red,yellow)
	local age=time()-timestamp
	if age>red then
		return "ffff0000"
	elseif age>yellow then
		return "ffffee00"
	else
		return "ffffffff"
	end
end

local TRENDS_OLD = 24 * 4 --h
function Scan:GetStatusTexts(short)
	local short = short or ""
	
	local updateTitletext,timestamptext,tooltiptext = "","",""

	if Scan.db.factionrealm.LastScan then
		updateTitletext = ZGV_T("LAST UPDATED:")
		timestamptext = ("|c%s%s|r."):format(OldColor(ZGV.db.factionrealm.LastScan,3600*2,60*10), ui.GetTimeStamp(ZGV.db.factionrealm.LastScan))
	
		if time()-ZGV.db.factionrealm.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r " .. L["gold_app_old_scan_data"..short]
			tooltiptext = L["gold_app_old_scan_data_tooltip"]
		else
			timestamptext = timestamptext .. (ZGV_T(" Trends quality: %s.")):format(ZGV.Gold.ServerTrends:GetHealth())
			tooltiptext = L["gold_app_trend_tooltip"]
		end
	else
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_scan_data"..short]
		tooltiptext = L["gold_app_no_scan_data_tooltip"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_goldguide"..short]
		tooltiptext = L["gold_app_no_goldguide_tooltip"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_servertrends"..short]
		tooltiptext = L["gold_app_no_servertrends_tooltip"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = ZGV_T("|cffff0000ALERT:|r")
			timestamptext = L["gold_app_old_servertrends"..short]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
			tooltiptext = L["gold_app_old_servertrends_tooltip"]
		end
	end

	return updateTitletext,timestamptext,tooltiptext
end

function Scan:BlockNeutral()
	if LibRover and LibRover.GetPlayerPosition then
		local x,y,m,f = LibRover:GetPlayerPosition()
		if m==1446 or m==1434 or m==1452 then return true end
	end
	return false
end

--== PROXY
	local lqkeys={name=1, minLevel=2, maxLevel=3, page=4, isUsable=5, qualityIndex=6, getAll=7, exactMatch=8, filterData=9}
	local lqmeta = { __index = {
		Get=function(t,key) return t[lqkeys[key] or 0] end,
		Set=function(t,key,val) t[lqkeys[key] or 0]=val end,
	}}
	Scan.Proxy.lastQuery = {"",nil,nil,0}
	setmetatable(Scan.Proxy.lastQuery,lqmeta)

	function Scan.Proxy:PerformQuery(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData)
		if not name then return end
		self.lastQuery = {name, minLevel, maxLevel, tonumber(page), isUsable, qualityIndex, getAll, exactMatch, filterData}
		setmetatable(self.lastQuery,lqmeta)

		ZGV:Debug("&scan |cffffaaffPerforming Query: \"|cffffffff%s|cffffaaff\", page |cffffddff%d|cffffaaff, exact? %s, all? %s",name,(page or 0)+1,exactMatch and "YES" or "no", getAll and "YES" or "no")

		-- WoW 3.3.5a QueryAuctionItems signature:
		-- QueryAuctionItems(name, minLevel, maxLevel, invTypeIndex, classIndex, subclassIndex, page, isUsable, qualityIndex)
		-- Retail signature is different, so we adapt here.
		QueryAuctionItems(
			name or "",           -- name
			minLevel or "",       -- minLevel
			maxLevel or "",       -- maxLevel
			nil,                  -- invTypeIndex
			nil,                  -- classIndex
			nil,                  -- subclassIndex
			tonumber(page) or 0,  -- page
			isUsable or 0,        -- isUsable
			qualityIndex or -1    -- qualityIndex
		)

		self:UpdateDefaultUI()
	end

	function Scan.Proxy:GoToPage(page)
		self.lastQuery:Set("page",page)
		self:PerformQuery(unpack(self.lastQuery))
	end

	function Scan.Proxy:GetCurrentPage()
		return self.lastQuery:Get("page")
	end

	function Scan.Proxy:IsFullScan()
		return self.lastQuery:Get("getAll")
	end

	function Scan.Proxy:UpdateDefaultUI()
		local name = self.lastQuery:Get("name")
		local page = self.lastQuery:Get("page")

		BrowseName:SetText(name)

		AuctionFrameBrowse.page = page
		FauxScrollFrame_SetOffset(BrowseScrollFrame,0)

		--[[
		AuctionFrameBid.page = page
		FauxScrollFrame_SetOffset(BidScrollFrame,0)

		AuctionFrameAuctions.page = page
		--]]
	end

	function Scan.Proxy:UpdateFromDefaultUI()
		self.lastQuery:Set("name",BrowseName:GetText())
		self.lastQuery:Set("page",AuctionFrameBrowse.page)
	end
--==
