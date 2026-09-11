local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ZGVG=ZGV.Gold
local TRENDS_OLD = 24 * 4 --h

local Appraiser

if not ZGV.Gold.Appraiser then
	Appraiser = {}
	ZGV.Gold.Appraiser = Appraiser
else
	Appraiser = ZGV.Gold.Appraiser 
end

local ui = ZGV.UI
local SkinData = ui.SkinData

local Scan = ZGV.Gold.Scan

local HEADER_HEIGHT = 30		-- exported to GoldHelp.lua
local FOOTER_HEIGHT = 25
local SCROLL_WIDTH=15		-- read only

local TAB_NAVIGATION_INVENTORY = {"stacksize", "stackcount", "bidgold", "bidsilver", "bidcopper", "buyoutgold", "buyoutsilver", "buyoutcopper"}
local TAB_NAVIGATION_SEARCH = {"searchname", "pricegold", "pricesilver", "pricecopper", "maxcount"}

local SELL_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=190, headerwidth=140, titlej="LEFT", textj="LEFT", name="name" },
	{ title="UNIT PRICE", width=100, headerwidth=150, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) GameTooltip:AddLine( row.item.statusText ) end },
}

local SELL_INVENTORY_DATA = {
	ROW_COUNT = 14,
	LIST_WIDTH = 380,
	LIST_HEIGHT = 325,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = false,
}


local BUY_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=190, titlej="LEFT", textj="LEFT", name="name" },
	{ title="MAX PRICE", width=100, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) if not row.item then return end GameTooltip:AddLine( row.item.statusText ) end },
}

local BUY_INVENTORY_DATA = {
	ROW_COUNT = 14,
	LIST_WIDTH = 380,
	LIST_HEIGHT = 325,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = false,
}


local DROPDOWN_STYLE=2

function Appraiser:ApplySkin()
	local MF = self.MainFrame 
	if not MF then return end

	MF:SetBackdropColor(unpack(SkinData("MainBackdropColor")))

	MF.HeaderFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.HeaderFrame:SetBackdropBorderColor(0,0,0,0)


	MF.FooterFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.FooterFrame:SetBackdropBorderColor(0,0,0,0)

	MF.ContentFrame:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
	MF.ContentFrame:SetPoint("LEFT",MF,"LEFT",SkinData("AuctionToolsMargin"),0)
	MF.ContentFrame:SetPoint("RIGHT",MF,"RIGHT",-SkinData("AuctionToolsMargin"),0)

	MF.progressFrame:SetTexture(SkinData("ProgressBarTextureFile"))
	MF.progressFrame:SetDecor(SkinData("ProgressBarDecorUse"))
end

function Appraiser:CreateMainFrame()
	self.MainFrame = CHAIN(ui:Create("Frame",AuctionFrame,"ZygorAppraiser"))
		:SetFrameStrata("HIGH")
		:SetFrameLevel(AuctionFrame:GetFrameLevel()+1)
		:SetToplevel(true)
		:SetWidth(398)
		:EnableMouse(true)
		.__END

	local MF = self.MainFrame 
	MF:ClearAllPoints()
	MF:SetPoint("TOPLEFT",AuctionFrame,"TOPRIGHT",-1,-12)
	MF:SetPoint("BOTTOMLEFT",AuctionFrame,"BOTTOMRIGHT",-1,10)

	-- Header
	MF.HeaderFrame = CHAIN(ui:Create("Frame",MF))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("TOPRIGHT",-1,-1)
		:SetHeight(HEADER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+2)
		:SetToplevel(true)
		.__END

		MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
			:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3) 
			:SetSize(100,25)
			:SetTexture(SkinData("TitleLogo"))
		.__END

		MF.HeaderFrame.Title = CHAIN(MF.HeaderFrame:CreateFontString())
			:SetPoint("TOPLEFT",8,-8)
			:SetFont(FONT,14) 
			:SetTextColor(1,1,1,1)
			:SetText("Zygor Inventory")
		 .__END

		MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() ZGV.db.profile.auction_enable=false Appraiser:HideWindow() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.close,(SkinData("TitleButtons")),6,64)

		--[[
		MF.HeaderFrame.info = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Appraiser:ToggleHelpPage() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.info,(SkinData("TitleButtons")),18,64)
		--]]

		MF.HeaderFrame.goldguide = CHAIN(CreateFrame("Button", "ZA_Menu_GoldGuide" , MF.HeaderFrame))
			:SetSize(17,17)
			--:SetPoint("TOPRIGHT",MF.HeaderFrame.info,"TOPLEFT",-5,0)
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetScript("OnClick", function()
				if ZGV.OpenGoldGuide then
					ZGV:OpenGoldGuide("Auctions")
				else
					ZGV.Goldguide:Initialise()
					ZGV.Goldguide:SetCurrentTab("Auctions")
				end
			end)
			:SetScript("OnEnter",function()
				GameTooltip:SetOwner(MF.HeaderFrame.goldguide, "ANCHOR_CURSOR")
				GameTooltip:AddLine("Open Gold Guide")
				GameTooltip:Show()
			end)
			:SetScript("OnLeave",function()
				GameTooltip:FadeOut()
			end)
			:Show()
		.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.goldguide,(SkinData("TitleButtons")),22,64)


	MF.ContentFrame = CHAIN(ui:Create("Frame", MF))
		:SetPoint("LEFT",MF,"LEFT")
		:SetPoint("RIGHT",MF,"RIGHT")
		:SetPoint("TOP",MF.HeaderFrame,"BOTTOM")
		:SetHeight(365)
		:Show()
	.__END

	-- Footer
	MF.FooterFrame = CHAIN(ui:Create("Frame",MF,"ZygorAppraiserFooter"))
		:SetPoint("TOPLEFT",MF.ContentFrame,"BOTTOMLEFT",0,0)
		:SetPoint("TOPRIGHT",MF.ContentFrame,"BOTTOMRIGHT",0,0)
		:SetHeight(FOOTER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+1)
		:SetToplevel(true)
		.__END
		MF.FooterUpdated = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("BOTTOMLEFT",5,2)
			:SetFont(FONTBOLD,12)
			:SetText("LAST UPDATED:")
		.__END

		MF.FooterUpdatedTime = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("LEFT",MF.FooterUpdated ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText("no time")
		.__END

		MF.FooterUpdatedOverlay = CHAIN(CreateFrame("Frame", nil , MF.FooterFrame))
			:SetPoint("TOPLEFT",MF.FooterUpdated,"TOPLEFT",0,0)
			:SetPoint("BOTTOMRIGHT",MF.FooterUpdatedTime,"BOTTOMRIGHT")
			:SetScript("OnEnter",function(self)
				GameTooltip:SetOwner(MF.FooterUpdatedOverlay, "ANCHOR_CURSOR")
				GameTooltip:AddLine(self.tooltip)
				GameTooltip:Show()
			end)
			:SetScript("OnLeave",function()
				GameTooltip:FadeOut()
			end)
			:Show()
		.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.goldguide,(SkinData("TitleButtons")),22,64)


		MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.FooterFrame))
			:SetPoint("BOTTOMRIGHT",-5,0)
			:SetSize(15,15)
			:SetScript("OnClick",function() ZGV:OpenOptions("gold") end)
		.__END
		ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,64)

		MF.progressFrame = CHAIN(ui:Create("ProgressBar",MF.FooterFrame))
			:SetSize(MF:GetWidth()-20,7)
			:SetFrameStrata("HIGH")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetPoint("TOP",MF.FooterFrame,"BOTTOM",0,-1)
			:SetDecor(SkinData("ProgressBarDecorUse"))
			:SetAnim(true)
		.__END

	MF.ScanButton = CHAIN(ui:Create("Button",MF.FooterFrame ))
		:SetSize(95,20)
		:SetPoint("BOTTOMRIGHT",MF.FooterFrame ,"TOPRIGHT", -10, 7)
		:SetFont(FONT,12)
		:SetText("Full Scan")
		:SetScript("OnClick", function(self) Appraiser:ScanAll() end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText(self.tooltip or "Scan the whole Auction House. May take some time.") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	MF.ScanButton.tooltip = "Scan the whole Auction House. May take some time."

	Appraiser.Inventory_Frame = self:MakeInventoryTable()
	Appraiser.Buy_Frame = self:MakeBuyTable()
	
	AuctionFrameTab1:HookScript("OnClick",function() Appraiser:SetCurrentTab("Buy") end)
	AuctionFrameTab2:HookScript("OnClick",function() Appraiser:SetCurrentTab(nil) end)
	AuctionFrameTab3:HookScript("OnClick",function() Appraiser:SetCurrentTab("Inventory") end)

	MF:Hide()
	Appraiser:ApplySkin()
end

function Appraiser:UpdateAuctionButtonVisibility()
	if not ZGV.AuctionButtonFrame then return end
	if ZGV.db.profile.auction_button_show == false then
		ZGV.AuctionButtonFrame:Hide()
	else
		ZGV.AuctionButtonFrame:Show()
	end
end

function Appraiser:MakeOptionsButton()
	if ZGV.AuctionButtonFrame then
		self:UpdateAuctionButtonVisibility()
		return
	end
	local AuctionButtonsize=20
	local AuctionButtonradius=AuctionButtonsize/2

	local offset = ZGV.db.profile.AuctionFrame_offset
	local dx,dy
	if type(offset)=="table" and tonumber(offset[1]) and tonumber(offset[2]) then
		local oldx,oldy=tonumber(offset[1]),tonumber(offset[2])
		if oldx>=AuctionButtonradius then
			-- Dragged positions were already saved relative to BOTTOMLEFT, even though
			-- startup previously restored every value relative to TOPRIGHT.
			dx,dy=oldx,oldy
		else
			-- Migrate the old default/top-right coordinate format.
			dx=AuctionFrame:GetWidth()+oldx
			dy=AuctionFrame:GetHeight()+oldy
		end
	else
		dx=AuctionFrame:GetWidth()-40
		dy=AuctionFrame:GetHeight()-40
	end
	dx=min(max(dx,AuctionButtonradius),AuctionFrame:GetWidth()+AuctionButtonradius)
	dy=min(max(dy,-AuctionButtonradius),AuctionFrame:GetHeight()-AuctionButtonradius)
	ZGV.db.profile.AuctionFrame_offset={dx,dy}
	ZGV.AuctionButtonFrame = ZGV.ChainCall(ZGV.CreateFrameWithBG("FRAME",nil,AuctionFrame))
		:SetPoint("CENTER",AuctionFrame,"BOTTOMLEFT",dx,dy)
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:SetScript("OnUpdate",function(self)
			if self.buttonDragging then
				local parent = self:GetParent()
				local scale = self:GetEffectiveScale()
				local mx,my = GetCursorPosition()
				mx=mx/scale my=my/scale
				local px,py = parent:GetRect()
				if not px or not py then return end
				self:ClearAllPoints()
				local dx,dy=min(max(mx-px+10,AuctionButtonradius),parent:GetWidth()+AuctionButtonradius),min(max(my-py-10,-AuctionButtonradius),parent:GetHeight()-AuctionButtonradius)
				self:SetPoint("CENTER",parent,"BOTTOMLEFT",dx,dy)
				ZGV.db.profile.AuctionFrame_offset={dx,dy}
			end
		end)
		:Show()
	.__END

	ZGV.AuctionButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", nil , ZGV.AuctionButtonFrame))
		:SetSize(AuctionButtonsize,AuctionButtonsize)
		:SetPoint("TOPLEFT", ZGV.AuctionButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\zglogo-back"})
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() 
			ZGV.db.profile.auction_enable = not ZGV.db.profile.auction_enable
			if ZGV.db.profile.auction_enable then
				Appraiser:ShowWindow()
			else
				Appraiser:HideWindow()
			end		
		end)
		:SetScript("OnDragStart", function(self) self:GetParent().buttonDragging=true end)
		:SetScript("OnDragStop", function(self) self:GetParent().buttonDragging=false end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText("Toggle Auction Tools") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:RegisterForDrag("LeftButton")
		:Show()
	.__END
	ZGV.AuctionButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
	self:UpdateAuctionButtonVisibility()
end

function Appraiser:MakeInventoryTable()
	local container = CHAIN(CreateFrame("Frame", "ZA_Sell_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.InventoryList = ui:Create("ScrollTable",container,"ZA_Sell_Inventory",SELL_INVENTORY_COLUMS,SELL_INVENTORY_DATA)

	container.InventoryList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.InventoryOffset=Appraiser.InventoryOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.InventoryList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.InventoryOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.InventoryList.rows) do
		row.status:SetTexture(ZGV.DIR.."\\Skins\\goldpricestatusicons")
		row:SetScript("OnClick",function(self,button)
			if button == "LeftButton" and row.item then
				Appraiser:ActivateSellItem(row.item)
			elseif button == "RightButton" then
				Appraiser:InventoryRowMenu(row)
			end
		end)
	end

	return container
end

function Appraiser:MakeBuyTable()
	local container = CHAIN(CreateFrame("Frame", "ZA_Buy_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.ShoppingList = ui:Create("ScrollTable",container,"ZA_Shopping_Inventory",BUY_INVENTORY_COLUMS,BUY_INVENTORY_DATA)

	container.ShoppingList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.ShoppingOffset=Appraiser.ShoppingOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.ShoppingList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.ShoppingOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.ShoppingList.rows) do
		row.status:SetTexture(ZGV.DIR.."\\Skins\\goldpricestatusicons")
		row:SetScript("OnClick",function(self,button)
			if row.item then
				if button == "LeftButton" then
					Appraiser:ActivateBuyItem(row.item)
				elseif button == "RightButton" then
					Appraiser:ShoppingRowMenu(row)
				end
			end
		end)
	end

	container.overlay = CHAIN(ui:Create("Button",container))
		:SetSize(300,300)
		:SetPoint("TOPLEFT",container.ShoppingList)
		:SetPoint("BOTTOMRIGHT",container.ShoppingList)
		:SetFont(FONT,12)
		:SetScript("OnClick", function()
			if ZGV.OpenGoldGuide then
				ZGV:OpenGoldGuide("Auctions")
			else
				ZGV.Goldguide:Initialise()
				ZGV.Goldguide:SetCurrentTab("Auctions")
			end
		end)

		:SetBackdropColor(0,0,0,0)
		:SetHighlightBackdropColor(0,0,0,0)
		:SetNormalBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetText("Use the Auctions section\nof the Gold Guide Menu\nto add items to this shopping list.")
		:Show()
	.__END



	return container
end

function Appraiser:ShowItemTooltip(item)
	if not item then return end

	local link = item.link or item.itemlink
	local BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName

	if link then 
		_,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	end

	if BattlePetId then -- battle pet
		BattlePetToolTip_Show(tonumber(BattlePetId), tonumber(BattlePetLevel), tonumber(BattlePetRarity), tonumber(BattlePetHP), tonumber(BattlePetAtt), tonumber(BattlePetSpeed), BattlePetName) 
		return 
	else
		if item.bag then 
			GameTooltip:SetBagItem(item.bag,item.slot) 
		elseif link then
			GameTooltip:SetHyperlink(link)
		else
			GameTooltip:SetItemByID(item.itemid) 
		end
	end
end

function Appraiser:SetCurrentTab(tabname)
	if not tabname then 
		self.MainFrame:Hide()
		return
	else
		self.MainFrame:Show()
	end

	local windows = {Buy="Buy",Inventory="Sell"}
	for framename,framedispname in pairs(windows) do
		self[framename.."_Frame"]:Hide()
	end
	self[tabname.."_Frame"]:Show()

	self.MainFrame.HeaderFrame.Title:SetText(windows[tabname])

	self.ActiveTab = tabname

	Appraiser:Update()
end

function Appraiser:ShowWindow()
	if not ZGV.db.profile.auction_enable then return end

	if not self.MainFrame then self:CreateMainFrame() end

	ZGV.db.profile.IsWidgetCollapsed = ZGV.db.profile.IsWidgetCollapsed or {}
	if not ZGV.db.profile.IsWidgetCollapsed["Appraiser"] then
		ZGV.db.profile.IsWidgetCollapsed["Appraiser"] = false
	end
	
	Appraiser.InventoryOffset=0
	Appraiser.InventoryAuctionOffset=0
	Appraiser.ShoppingOffset=0
	Appraiser.SearchResultsOffset=0
	Appraiser.ShoppingAuctionOffset=0
	Appraiser:SetCurrentTab(AuctionFrameBrowse:IsVisible() and "Buy" or "Inventory")
	Appraiser.MainFrame:Show()
end

function Appraiser:HideWindow()
	if self.MainFrame then
		self.MainFrame:Hide()
	end
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

local message_type_labels = {
	success="|cff00ff00SUCCESS:|r",
	error="|cffff0000ERROR:|r",
	alert="|cffff8800ALERT:|r",
	scanning1="|cffbbaa00SCANNING:|r",
	scanning2="|cff00aa00SCANNING:|r",
}

function Appraiser:UpdateTimeStamp()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end

	local updateTitletext,timestamptext,tooltiptext = ZGV.Gold.Scan:GetStatusTexts("_short")

	local Scan = ZGV.Gold.Scan


	local page_text = ""
	--[[
	if Appraiser.oldstate ~= ZGV.Gold.Scan.state then
		Appraiser.oldstate = ZGV.Gold.Scan.state
		if Appraiser.oldstate == "SS_QUERYING" then
			Appraiser.pagenum = (Appraiser.pagenum or 0) + 1
		end
	end
	if Appraiser.pagenum then
		page_text = " - page "..Appraiser.pagenum
	end
	--]]
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) and Scan.scan_pages>1 then
		page_text = (" - page %d of %d"):format(Scan.scan_page,Scan.scan_pages)
	end
	--page_text = Scan.scan_page

	local data_text = "All auctions"
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		data_text = (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) or ""
	elseif self.manualScanning then
		data_text = self.manualScanningName or ""
		page_text = ""
	elseif self.UpdateScanRunningName then
		data_text = self.UpdateScanRunningName
		page_text = ""
	elseif self.BuyOutSearchName then
		data_text = self.BuyOutSearchName
		page_text = ""
	end


	local progress_dots = math.floor((debugprofilestop()-Scan.last_scan_start_time)%2000 / 500)+1  -- 1..4
	local progress = string.rep(".",progress_dots)
	local preprogress = ""

	if self.manualScanning then
		preprogress = ("%d/%d: "):format(self.manualScanningDone,self.manualScanningTotal)
	elseif self.manualBuyScanning then
		preprogress = ("%d/%d: "):format(self.manualBuyScanningDone,self.manualBuyScanningTotal)
	elseif not (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		-- long scan, provide progress %
		if Scan.state =="SS_SCANNING" or Scan.state =="SS_SCANSINGLE" then
			progress = (" %d%%"):format((Scan.scan_progress or 0)*100)
		elseif Scan.state =="SS_ANALYZING" then
			progress = (" %d%%"):format((Scan.analysis_progress or 0)*100)
		end
	end

	if Scan.state == "SS_QUERYING" then
		updateTitletext = message_type_labels.scanning1
		if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
			timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or "") .. progress
		else
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or " - initiating...")
		end
	elseif Scan.state =="SS_RECEIVING" then
		updateTitletext = message_type_labels.scanning2
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 1b/3: receiving]" or " - receiving...")
	elseif Scan.state =="SS_SCANNING" or Scan.state =="SS_SCANSINGLE" then
		updateTitletext = message_type_labels.scanning2
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 2/3: scanning]" or " - processing:") .. progress
	elseif Scan.state =="SS_ANALYZING" then
		updateTitletext = message_type_labels.scanning2
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 3/3: analyzing]" or " - analyzing:") .. progress
	elseif Scan.state =="SS_MESSAGE" then
		updateTitletext = message_type_labels[(Scan.message_data and Scan.message_data.kind) or "error"]
		timestamptext = Scan.message_data and Scan.message_data.msg or ""
	elseif Scan.state =="SS_IDLE" then
		if self.manualScanning or self.manualBuyScanning then
			updateTitletext = message_type_labels.scanning1
			timestamptext = preprogress
		end
	end

	if ZGV.db.profile.debug_display then  updateTitletext = updateTitletext .. " [" .. Scan.state .. ", " .. (Appraiser.manualScanning and "manual " or "") .. (Appraiser.manualBuyScanning and "manualbuy " or "") .. "]"  end

	self.MainFrame.FooterUpdatedOverlay.tooltip = tooltiptext
	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

function Appraiser:UpdateButtonStates()
	if not self.MainFrame then return end

	local MF = self.MainFrame
	local scanButton = MF.ScanButton
	local Scan = ZGV.Gold.Scan
	local canFast = Scan:CanScanFast()
	local busy = Scan.state~="SS_IDLE" and Scan.state~="SS_OUT" and Scan.state~="SS_MESSAGE"
	local function setButtonEnabled(enabled)
		if scanButton.EnableIf then
			scanButton:EnableIf(enabled)
		elseif enabled then
			scanButton:Enable()
		else
			scanButton:Disable()
		end
	end

	setButtonEnabled(not busy)
	scanButton:SetTextColor(1,1,1,1)
	scanButton:SetAlpha(busy and 0.7 or 1)

	if Scan:BlockNeutral() then
		scanButton.tooltip = "Scanning is disabled on neutral Auction House."
		scanButton:SetText("Scan disabled")
		scanButton:SetTextColor(1,1,1,0.5)
		setButtonEnabled(false)
		scanButton:SetAlpha(0.7)
	elseif busy then
		scanButton.tooltip = "Auction scan already in progress."
		scanButton:SetText("Scanning")
	elseif canFast then
		scanButton.tooltip = "Scan the whole Auction House. May take some time."
		scanButton:SetText("Full Scan")
	else
		if self.ActiveTab == "Inventory" then
			scanButton.tooltip = "Run refresh scan for all visible inventory items."
			scanButton:SetText("Appraise all")
		else
			scanButton.tooltip = "Full scan is not possible at this time."
			scanButton:SetText("Full Scan")
			scanButton:SetTextColor(1,1,1,0.5)
			setButtonEnabled(false)
			scanButton:SetAlpha(0.7)
		end
	end

	if GameTooltip:IsVisible() and GameTooltip:GetOwner()==scanButton then
		GameTooltip:SetText(scanButton.tooltip)
	end
end

local last_pages=0
function Appraiser:UpdateProgressBar()
	local pf = self.MainFrame.progressFrame

	local scanprogress
	local Scan = ZGV.Gold.Scan
	if Scan.state=="SS_QUERYING" then
		scanprogress=0.1
	elseif Scan.state=="SS_NEEDTOQUERY" then
			scanprogress=0.1
	elseif Scan.state=="SS_RECEIVING" then
		scanprogress=0.1
	elseif Scan.state=="SS_SCANNING" then
		scanprogress=0.1+0.8*(Scan.scan_progress or 0) -- 10 to 90
		--[[
		local total_pages = math.ceil((Scan.total_count or 0)/50)
		if total_pages and total_pages>0 then
			local current_page = Scan.scan_page or 0
			pf:SetPercent(current_page/total_pages*100)
		else
			pf:SetPercent(0)
		end
		--]]
	elseif Scan.state =="SS_ANALYZING" then
		scanprogress=0.9+0.1*(Scan.analysis_progress or 0) -- 90 to 100
	else
		scanprogress=0
	end

	--print(("msd=%d mst=%d mbsd=%d mbst=%d  %s + scanprogress %.1f"):format(self.manualScanningDone or -1,self.manualScanningTotal or -1, self.manualBuyScanningDone or -1,self.manualBuyScanningTotal or -1,Scan.state,scanprogress))

	if Scan.scan_pages and Scan.scan_pages>0 then last_pages=Scan.scan_pages end -- make sure it doesn't reset to 0. Just reuse the last value...
	local page=max(1,Scan.scan_page)
	local pages=max(page,last_pages)

	--if self.ActiveTab == "Inventory" then
		if self.manualScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end  -- SS_IDLE happens AFTER a scan, not before
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualScanningDone-1+scanprogress)/self.manualScanningTotal) * 100,"nozero")
		elseif self.manualBuyScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualBuyScanningDone-1+scanprogress)/self.manualBuyScanningTotal) * 100,"nozero")
		elseif pages>1 and pages<1000 and (Scan.state=="SS_QUERYING" or Scan.state=="SS_NEEDTOQUERY" or Scan.state=="SS_RECEIVING" or Scan.state=="SS_SCANNING" or Scan.state=="SS_ANALYZING") then
			scanprogress = (((page-2)/pages) + (1/pages))
			pf:SetPercent(scanprogress*100,"nozero")
		else
			pf:SetPercent(scanprogress*100,"nozero")
		end
	--else
--		pf:SetPercent(0)
--	end
end

function Appraiser:ShowDisabledTooltip(object)
	GameTooltip:SetOwner(object,"ANCHOR_RIGHT") 
	GameTooltip:SetText("Due to a bug in Blizzard's in Auction House functionality,\npets and equipment can only be posted one by one.") 
	GameTooltip:Show()
end



function Appraiser:TabKeyNavigation(parent,orderarray,field)
	-- Get current index
	local orderindex,nextindex,previndex
	for oi,orderfield in pairs(orderarray) do if orderfield==field then orderindex=oi break end end

	nextindex,previndex = orderindex+1, orderindex-1
	if orderindex == #orderarray then nextindex=1 end
	if orderindex == 1 then previndex=#orderarray end

	parent[orderarray[orderindex]]:HighlightText(0,0)

	if ( IsShiftKeyDown() ) then
		parent[orderarray[previndex]]:SetFocus()
		parent[orderarray[previndex]]:HighlightText()
	else
		parent[orderarray[nextindex]]:SetFocus()
		parent[orderarray[nextindex]]:HighlightText()
	end
end


function Appraiser:ApplyDebugDisplay()
end

function Appraiser:ScrollToSellingItem()
	for ri,row in ipairs(self.Inventory_Frame.InventoryList.rows) do
		if row.item==self.ActiveSellingItem then return end  -- it's visible, never mind
	end
	-- scroll to show index'th row
	local index = self:GetSellingItemIndex(self.ActiveSellingItem)
	if not index then return end
	local count=#self.InventoryItems
	local halfrows=floor(self.Inventory_Frame.InventoryList:CountRows()/2)
	self.InventoryOffset=min(max(index,halfrows),count-halfrows)-halfrows
	self.needToUpdate=true
end

function Appraiser:GetSellingItemIndex(curitem)
	for ri,item in ipairs(self.InventoryItems) do
		if item==curitem then return ri end
	end
end
