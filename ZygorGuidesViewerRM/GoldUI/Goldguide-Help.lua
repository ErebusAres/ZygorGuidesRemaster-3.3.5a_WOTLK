local ZGV = ZGV

-- GLOBAL ZA_Buy_Frame,ZA_INV_ROW1,ZA_Inventory_Frame,ZA_Menu_Buy,ZA_Menu_GoldGuide,ZA_Menu_Inventory,ZGA_Toggle,Zygor_Appraiser_Item_1,Zygor_Appraiser_Item_1_Toggle,ZygorAppraiser,ZygorAppraiserFooter,ZygorGoldHelpPanel_Popup

if not ZGV.Goldguide then ZGV.Goldguide = {} end
local Goldguide = ZGV.Goldguide

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData

local name = "ZygorGoldHelpPanel"

Goldguide.helppanel = false		-- Initial to false

-- In Gold UI
local HEADER_HEIGHT = 70		-- From GoldUI.lua
local FOOTER_HEIGHT = 25
local HEADER_FONTSIZE = 15
local SUBHEADER_FONTSIZE = 14
local SECTION_FONTSIZE = 13
local SECTION_VERT_PADDING = 8
local SECTION_HEIGHT = 30
local SECTION_WIDTH = 100	-- Unless otherwise set

local BUTTON_VERT_DIS = 30

local HEADER = ZGV_T("Welcome to Zygor's Gold and Auction Guide Tutorial")
local SUBHEADER = ZGV_T("Which section would you like to learn more about?")
local HELP_SECTIONS = {	-- Text,id
	{ZGV_T("Gold Basics"), "basic"},
	{"Farming", "farming"},
	{ZGV_T("Gathering"), "gathering"},
	{ZGV_T("Crafting"), "crafting"},
	{ZGV_T("Auctions"), "auctions"},
}

-- Popup settings
local ICON_SIZE = 13
local POPUP_WIDTH = 350
local POPUP_HEADER_FONTSIZE = 16
local POPUP_SUM_FONTSIZE = 13
local POPUP_LABEL_SPACING = 5
local POPUP_BUT_WIDTH = 60
local POPUP_BUT_HEIGHT = 15
local POPUP_BUT_FONTSIZE = 13
local PAGE_HEADER_HEIGHT = 20		-- TODO just copied from GoldUI
local ROW_HEIGHT = 24.29		-- TODO copied as height of each row... Should make this dynamic
local NEXT = ZGV_T("Next")
local EXIT = ZGV_T("Exit")
local BACK = ZGV_T("Back")

local defaultPoint = {"TOP",UIParent,"TOP",0,-50}
local defaultPoint2 = {"TOP",UIParent,"TOP",500,-50}

local function get_tutorial_texture(fileName)
	if not fileName or fileName == "" then return nil end
	if not fileName:find("%.[Bb][Ll][Pp]$") and not fileName:find("%.[Tt][Gg][Aa]$") then
		fileName = fileName .. ".blp"
	end
	return ZGV.DIR .. "\\Skins\\" .. fileName
end

local function try_find_auctioneer()
	if ZGV.WhoWhere and ZGV.WhoWhere.FindNPC then
		ZGV.WhoWhere:FindNPC("Auctioneer")
	end
end

-- Header,Summary,Parent,PopupPt,LinePt, reasonToAdvance, OnShow
local gen_help_1 = function() return {L['gold_1_header'],nil,L['gold_1_sum'],UIParent,defaultPoint,nil,"ahshow",try_find_auctioneer } end
local gen_help_2 = function() return {L['gold_1_header'],nil,L['gold_1_sum'],AuctionFrame,{"TOPRIGHT",Goldguide.HelpPopup.line,"BOTTOMLEFT"}, {"TOPRIGHT",AuctionFrameTab4,"BOTTOMLEFT"} } end
local gen_help_3 = function() return {L['gold_scanbutton_header'],nil,L['gold_scanbutton_sum'],ZygorAppraiser,{"TOPRIGHT",Goldguide.HelpPopup.line,"BOTTOMLEFT"}, {"TOPRIGHT",ZygorAppraiserFooter,"BOTTOMLEFT"} } end
local gen_help_4 = function() return {L['gold_scantime_header'],nil,L['gold_scantime_sum'],ZygorAppraiser,{"TOPRIGHT",Goldguide.HelpPopup.line,"BOTTOMLEFT"}, {"TOPRIGHT",ZygorAppraiserFooter,"BOTTOMLEFT"} } end
local gen_help_5 = function() return {L['gold_3_header'],nil,L['gold_3_sum'],ZygorAppraiser,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"}, {"TOPLEFT",ZA_Menu_GoldGuide,"BOTTOMRIGHT"}, "Goldguideshow" } end

-- Basics tutorial
local basic_help = {
	function() return {L['gold_basic_1_header'],"gbtut1",{L['gold_basic_1_sum'],7},UIParent,defaultPoint,nil,nil,nil } end,
	function() return {L['gold_basic_2_header'],"gbtut2",{L['gold_basic_2_sum'],7},UIParent,defaultPoint,nil,nil,nil } end,
	function() return {L['gold_basic_3_header'],{"gbtut3",512,64},{L['gold_basic_3_sum'],7},UIParent,defaultPoint,nil,nil,nil } end,
	function() return {L['gold_basic_4_header'],"gbtut4",{L['gold_basic_4_sum'],13,60},UIParent,defaultPoint,nil,nil,nil } end,
	function() return {L['gold_basic_5_header'],nil,{L['gold_basic_5_sum'],8},UIParent,defaultPoint,nil,nil,nil, function() ZygorGoldHelpPanel_Popup:Close() end } end,
}

local goldrun_help

local farming_help = {
	gen_help_1,
	gen_help_2,
	gen_help_3,	
	gen_help_4,
	gen_help_5,
	function() return {L['gold_4_header'],nil,L['gold_4_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:SetCurrentTab("Farming") Goldguide:HighlightGoldguideColumn() if AuctionFrame_Hide then AuctionFrame_Hide() end end } end, -- HiColumn for hitting back support
	function() return {L['gold_no_header'],nil,L['gold_no_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_no,"no") end } end,
	function() return {L['gold_item_header'],nil,L['gold_item_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_title,"item") end } end,
	function() return {L['gold_zone_header'],nil,L['gold_zone_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_zone,"zone") end } end,
	function() return {L['gold_rate_header'],nil,{L['gold_rate_sum'],8},Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_rate,"rate") end } end,
	function() return {L['gold_time_header'],nil,L['gold_time_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_disptime,"disptime") end} end,
	function() return {L['gold_est_header'],nil,L['gold_est_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Farming_Frame.Entries.col_dispgold,"dispgold") end} end,
	function() return {L['gold_mode_header'],nil,L['gold_mode_sum'],Goldguide.Farming_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Farming_Frame.Entries.ModeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_filter_header'],nil,L['gold_filter_sum'],Goldguide.Farming_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Farming_Frame.Entries.TypeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_12_header'],nil,L['gold_12_sum'],Goldguide.Farming_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_13_header'],nil,L['gold_13_sum'],Goldguide.Farming_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Farming_Frame.Entries.rows[1].loadbutton,"BOTTOMRIGHT"}, "guideload", function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_14_header'],nil,L['gold_farming_14_sum'],ZGV.Frame,{"BOTTOMRIGHT",Goldguide.HelpPopup.line,"TOPRIGHT"},{"BOTTOMRIGHT",ZGV.Frame,"TOP"} } end,
}

local gathering_help = {
	gen_help_1,
	gen_help_2,
	gen_help_3,	
	gen_help_4,
	gen_help_5,
	function() return {L['gold_4_header'],nil,L['gold_4_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:SetCurrentTab("Gathering") Goldguide:HighlightGoldguideColumn() if AuctionFrame_Hide then AuctionFrame_Hide() end end } end, -- HiColumn for hitting back support
	function() return {L['gold_no_header'],nil,L['gold_no_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_no,"no") end } end,
	function() return {L['gold_item_header'],nil,L['gold_item_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_title,"item") end } end,
	function() return {L['gold_zone_header'],nil,L['gold_zone_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_zone,"zone") end } end,
	function() return {L['gold_rate_header'],nil,{L['gold_rate_sum'],8},Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_rate,"rate") end } end,
	function() return {L['gold_time_header'],nil,L['gold_time_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_disptime,"disptime") end} end,
	function() return {L['gold_est_header'],nil,L['gold_est_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Gathering_Frame.Entries.col_dispgold,"dispgold") end} end,
	function() return {L['gold_mode_header'],nil,L['gold_mode_sum'],Goldguide.Gathering_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Gathering_Frame.ModeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_filter_header'],nil,L['gold_filter_sum'],Goldguide.Gathering_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Gathering_Frame.TypeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_12_header'],nil,L['gold_12_sum'],Goldguide.Gathering_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_13_header'],nil,L['gold_13_sum'],Goldguide.Gathering_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Gathering_Frame.Entries.rows[1].loadbutton,"BOTTOMRIGHT"}, "guideload", function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_14_header'],nil,L['gold_Gathering_14_sum'],ZGV.Frame,{"BOTTOMRIGHT",Goldguide.HelpPopup.line,"TOPRIGHT"},{"BOTTOMRIGHT",ZGV.Frame,"TOP"} } end,
}

local crafting_help = {
	gen_help_1,
	gen_help_2,
	gen_help_3,	
	gen_help_4,
	gen_help_5,
	function() return {L['gold_4_header'],nil,L['gold_4_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:SetCurrentTab("Crafting") Goldguide:HighlightGoldguideColumn() if AuctionFrame_Hide then AuctionFrame_Hide() end end } end, -- HiColumn for hitting back support
	function() return {L['gold_crafting_title_header'],nil,L['gold_crafting_title_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Crafting_Frame.Entries.col_name,"recipe") end } end,
	function() return {L['gold_crafting_status_header'],nil,L['gold_crafting_status_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Crafting_Frame.Entries.col_status,"status") end } end,
	function() return {L['gold_crafting_cost_header'],nil,L['gold_crafting_cost_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Crafting_Frame.Entries.col_materials,"materials") end } end,
	function() return {L['gold_crafting_profit_header'],nil,L['gold_crafting_profit_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Crafting_Frame.Entries.col_profit,"profit") end } end,

	function() return {L['gold_crafting_mode_header'],nil,L['gold_crafting_mode_sum'],Goldguide.Crafting_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Crafting_Frame.ModeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_filter_header'],nil,L['gold_filter_sum'],Goldguide.Crafting_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Crafting_Frame.TypeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,

	function() return {L['gold_crafting_rows_header'],nil,L['gold_crafting_rows_sum'],Goldguide.Crafting_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_13_header'],nil,L['gold_13_sum'],Goldguide.Crafting_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Farming_Frame.Entries.rows[1].loadbutton,"BOTTOMRIGHT"}, "guideload", function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_14_header'],nil,L['gold_farming_14_sum'],ZGV.Frame,{"BOTTOMRIGHT",Goldguide.HelpPopup.line,"TOPRIGHT"},{"BOTTOMRIGHT",ZGV.Frame,"TOP"} } end,
}

local auctions_help = {
	gen_help_1,
	gen_help_2,
	gen_help_3,
	gen_help_4,
	gen_help_5,
	function() return {L['gold_4_header'],nil,L['gold_4_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:SetCurrentTab("Auctions") Goldguide:HighlightGoldguideColumn() if AuctionFrame_Hide then AuctionFrame_Hide() end end } end, -- HiColumn for hitting back support
	function() return {L['gold_auc_title_header'],nil,L['gold_auc_title_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_title,"title") end } end,
	function() return {L['gold_auc_status_header'],nil,L['gold_auc_status_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_status,"status") end } end,
	function() return {L['gold_auc_amt_header'],nil,L['gold_auc_amt_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_count,"count") end } end,
	function() return {L['gold_auc_cost_header'],nil,L['gold_auc_cost_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_cost,"cost") end } end,
	function() return {L['gold_auc_profit_header'],nil,L['gold_auc_profit_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_profit,"profit") end } end,
	function() return {L['gold_auc_gain_header'],nil,L['gold_auc_gain_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn(Goldguide.Auctions_Frame.Entries.col_gain,"gain") end } end,
	function() return {L['gold_auc_mode_header'],nil,L['gold_auc_mode_sum'],Goldguide.Auctions_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Auctions_Frame.ModeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_auc_filter_header'],nil,L['gold_auc_filter_sum'],Goldguide.Auctions_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Auctions_Frame.TypeDropdown.frame,"BOTTOMRIGHT"},nil,function() Goldguide:HighlightGoldguideColumn("hide") end} end,
	function() return {L['gold_auc_browse_header'],nil,L['gold_auc_browse_sum'],Goldguide.Auctions_Frame,defaultPoint,nil,nil,function() Goldguide:HighlightGoldguideColumn() end} end,
	function() return {L['gold_auc_add_header'],nil,L['gold_auc_add_sum'],Goldguide.Auctions_Frame,{"TOPLEFT",Goldguide.HelpPopup.line,"BOTTOMRIGHT"},{"TOPLEFT",Goldguide.Auctions_Frame.Entries.rows[1].loadbutton,"BOTTOMRIGHT"}, "appraiseradd", function() Goldguide:HighlightGoldguideColumn() end} end,
	--[[
	function() return {L['gold_auc_final1_header'],nil,L['gold_auc_final1_sum'],UIParent,defaultPoint,nil,"ahshow",try_find_auctioneer } end,
	function() return {L['gold_auc_final2_header'],nil,L['gold_auc_final2_sum'],ZygorAppraiser,{"TOPLEFT",Goldguide.HelpPopup.line,"TOPRIGHT"}, {"TOPLEFT",ZygorAppraiser.MenuBuyButton,"BOTTOMRIGHT"} } end,
	function() return {L['gold_auc_final3_header'],nil,L['gold_auc_final3_sum'],ZygorAppraiser,{"TOPLEFT",Goldguide.HelpPopup.line,"TOPRIGHT"}, {"TOPLEFT",ZygorAppraiser.MenuInventoryButton,"BOTTOMRIGHT"} } end,
	--]]
}


local whichToHelp = {
	basic = basic_help,
	goldrun = goldrun_help,
	farming = farming_help,
	gathering = gathering_help,
	crafting = crafting_help,
	auctions = auctions_help,
}


function Goldguide:CreateHelpContentPanel()
	local FUI = Goldguide.MainFrame

	local help = CHAIN(ui:Create("SecFrame",FUI,name))
		:SetPoint("TOPLEFT",1,-HEADER_HEIGHT)
		:SetPoint("BOTTOMRIGHT",-1,FOOTER_HEIGHT)
		:SetFrameLevel(FUI:GetFrameLevel() + 10)	-- Gotta get over the rows and all the various buttons. TODO better way?!?
		:CanDrag("parent")
	.__END

	help.header = CHAIN(help:CreateFontString())
		:SetPoint("TOP",help,"TOP",0,-10)
		:SetFont(FONTBOLD,HEADER_FONTSIZE)
		:SetText(HEADER)
	.__END

	help.subheader = CHAIN(help:CreateFontString())
		:SetPoint("TOP",help.header,"BOTTOM",0,-10)
		:SetFont(FONT,SUBHEADER_FONTSIZE)
		:SetText(SUBHEADER)
	.__END

	help.sectionButs = {}

	for i,info in ipairs(HELP_SECTIONS) do
	
		local but = CHAIN(ui:Create("Button",help,name.."Section"..i))
			:SetSize(info[3] or SECTION_WIDTH,SECTION_HEIGHT)
			--:SetPerfectSizing(1)
			:SetText(info[1])
			:SetFont(FONT,SECTION_FONTSIZE)
			:SetScript("OnClick",function(me)
				Goldguide.helppanel = false
				Goldguide:RunTutorial(info[2],1)
				FUI:Hide()
			end)
		.__END

		if i == 1 then
			but:SetPoint("TOP",help.subheader,"BOTTOM",0,-SECTION_VERT_PADDING)
		else
			but:SetPoint("TOP",help.sectionButs[i-1],"BOTTOM",0,-SECTION_VERT_PADDING)
		end

		help.sectionButs[i] = but
	end

	help.closebutton = CHAIN(ui:Create("Button",help,name.."CloseBut",2))
		:SetPoint("BOTTOM",help,"BOTTOM",0,BUTTON_VERT_DIS)
		:SetSize(100,30)
		:SetText(ZGV_T("Close"))
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick",function(me)
			Goldguide.helppanel = false
			me:GetParent():Hide() 
		end)
	.__END

	FUI.helpPanel = help
end

function Goldguide:CreateHelpPopup()
	local popupname = name.."_Popup"

	local popup = CHAIN(ui:Create("Frame",UIParent,popupname))
		:SetWidth(POPUP_WIDTH)
		:SetPoint("CENTER")
		:RegisterEvent("AUCTION_HOUSE_SHOW")
		:SetScript("OnUpdate",function(self,event)
			-- TODO maybe OnUpdate is a bit excessive...
			if AuctionFrame and AuctionFrame:IsShown() then
				self:Next("ahshow")
			end

			if MailFrame and MailFrame:IsShown() then
				self:Next("mailshow")
			end

			if ZGV.Gold.Mail and ZGV.Gold.Mail.sender and ZGV.Gold.Mail.sender:IsShown() then
				self:Next("mailsender")
			end

			if ZGV.Goldguide.MainFrame and ZGV.Goldguide.MainFrame:IsShown() then
				self:Next("Goldguideshow")
			end

			if ZA_Buy_Frame and ZA_Buy_Frame:IsShown() then
				self:Next("shoppinglist")
			end
			
		end)
		:SetScript("OnHide",function(self)
			if not AuctionFrame or not AuctionFrame:IsShown() then
				self:Close()		-- They hid us or the window so finish cleaning up.
			end
		end)		
	.__END

	popup.SavedSetParent = popup.SetParent

	------------------------
	-- Popup functions
	------------------------
	function popup:SetParent(parent)
		self:SavedSetParent(parent)
		self:SetFrameStrata("DIALOG")
		-- Popup is always in this FrameStrata so it is above everything. SetParent changes the strata by default
	end

	function popup:SetHeader(text)
		self.header:SetText(text)
		self:SetWidth(max(POPUP_WIDTH,self.header:GetWidth()+35,self.image:GetWidth()+35))	--35 padding for offsets and close button
	end

	function popup:SetImage(object)
		local fileName, width, height = object, 512, 256
		if type(object) == "table" then
			fileName = object[1]
			width = object[2]
			height = object[3]
		end

		if fileName ~= nil then
			self.image:SetTexture(get_tutorial_texture(fileName))
			self.image:SetTexCoord(0,1,0,1)
			self.image:SetWidth(width)
			self.image:SetHeight(height)
			--self:SetPoint("LEFT",self.header,"LEFT",(self:GetWidth()-self.image:GetWidth())/2,0)
			self.image:SetPoint("LEFT",self.header,"LEFT",0,0)
			self:SetWidth(max(POPUP_WIDTH,self.header:GetWidth()+35,self.image:GetWidth()+35))	--35 padding for offsets and close button
			--self:SetWidth(max(POPUP_WIDTH,self.header:GetWidth()+35,self.image:GetWidth()+35))	--35 padding for offsets and close button
			self.image:Show()
		else
			self.image:SetTexture(nil)
			self.image:Hide()
			self.image:SetWidth(1)
			self.image:SetHeight(1)
		end
	end
	
	-- Can set the number of lines by name if you pass a table to this in the form {text,numLines}
	function popup:SetSummary(text)
		local sum = self.summary
		local position,numLines
		if type(text) == "table" then
			position = text[3]
			numLines = text[2]
			text = text[1]
		end
		-- Set the text then adjust the height of the popup
		sum:SetText(text)
		
		local byte = string.byte
		local breakByte = byte('\n')
		local numNewLines = 1
		for i=1, #text do
			if byte(text,i) == breakByte then
				numNewLines = numNewLines + 1
			end
		end
		
		if sum.SetMaxLines then
			sum:SetMaxLines(999)  -- Prevent truncation on clients that support this API.
		end

		numLines = numLines or ceil(sum:GetStringWidth() / sum:GetWidth()) + numNewLines
		if position then
			sum:SetPoint("TOP",popup.image,"BOTTOM",0,position)
		else
			sum:SetPoint("TOP",popup.image,"BOTTOM",0,-5)
		end

		local realHeight = numLines * ( POPUP_LABEL_SPACING + POPUP_SUM_FONTSIZE )

		local totalHeight = POPUP_HEADER_FONTSIZE + POPUP_BUT_HEIGHT + realHeight + self.image:GetHeight() + 20 - (position or 0)



		sum:SetHeight(realHeight)
		self:SetHeight(totalHeight)
	end

	function popup:Close()
		self:Hide()
		self.line:Hide()
		Goldguide:HighlightGoldguideColumn()	-- Hides highlights
		ZGV.Pointer:ClearWaypoints("manual")	-- Well if we set a waypoint time to remove it!
		if ZGV.ShowWaypoints then
			ZGV:ShowWaypoints()
		end
		if ZGV.Gold.FUI then
			ZGV.Gold.FUI:Show()
		end
	end

	function popup:Next(reason)
		if reason ~= "click" and popup.reason ~= reason then
			-- Don't advance unless it is a acceptable reason or a click.
			return
		end

		if reason == "appraiseradd" then
			ZGV.Gold.FUI:Hide()
			ZGV.Gold.FUI:Hide()
		end

		Goldguide:RunTutorial(self.which,self.num + 1)	-- Running the same tutorial, but increment the tip
	end

	function popup:Back(reason)
			Goldguide:RunTutorial(self.which,self.num - 1)	-- Running the same tutorial, but decrement the tip. Special handling in RunTutorial for closing and button text
	end

	------------------------
	-- Popup components
	------------------------
	popup.close = CHAIN(CreateFrame("Button",popupname.."_Close",popup))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(ICON_SIZE,ICON_SIZE)
			:SetScript("OnClick",function() 
				popup:Close() 
			end)
			.__END
		ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(popup.close)

	popup.header = CHAIN(popup:CreateFontString())
		:SetPoint("TOPLEFT",popup,"TOPLEFT",5,-5)
		:SetFont(FONTBOLD,POPUP_HEADER_FONTSIZE)
		:SetTextColor(1,1,1,1)
		:SetText("Head")
	.__END

	popup.image = CHAIN(popup:CreateTexture())
		:SetPoint("TOP",popup.header,"BOTTOM",0,-5)	-- Just default to somewhere
		:SetTexture(get_tutorial_texture("gbtut1"))
	.__END

	popup.summary = CHAIN(popup:CreateFontString())
		:SetWidth(100)	-- Not needed. Use 2 points for real width	
		:SetPoint("TOP",popup.image,"BOTTOM",0,-5)
		:SetPoint("LEFT",popup,"LEFT",5,-5)
		:SetPoint("RIGHT",popup,"RIGHT",-5,0)
		:SetFont(FONT,POPUP_SUM_FONTSIZE)
		:SetTextColor(1,1,1,1)
		:SetJustifyH("LEFT")
		:SetJustifyV("TOP")
		:SetWordWrap(true)
		:SetText("Sum")
		:SetSpacing(POPUP_LABEL_SPACING)
	.__END

	popup.next = CHAIN(ui:Create("Button",popup,popupname.."_Next",2))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOMRIGHT",-5,5)
		:SetSize(POPUP_BUT_WIDTH,POPUP_BUT_HEIGHT)
		:SetText(NEXT)
		:SetFont(FONTBOLD,POPUP_BUT_FONTSIZE)
		:SetScript("OnClick",function(me)
			me:GetParent():Next("click")
		end)
	.__END
	
	-- Used to hook the Next button based on which step we are on.
	--function popup:OnNextHook()	end

	popup.back = CHAIN(ui:Create("Button",popup,popupname.."_Back",2))
		:SetPoint("BOTTOMLEFT",popup,"BOTTOMLEFT",5,5)
		:SetSize(POPUP_BUT_WIDTH,POPUP_BUT_HEIGHT)
		:SetText(BACK)		-- Text can change in RunTutorial if num==1
		:SetFont(FONTBOLD,POPUP_BUT_FONTSIZE)
		:SetScript("OnClick",function(me)
			me:GetParent():Back("click") 
		end)
	.__END

	popup.line = CHAIN(popup:CreateTexture())
		:SetPoint("CENTER",UIParent,"CENTER",0,0)	-- Just default to somewhere
		:SetTexture(ZGV.DIR.."\\Skins\\tutorialline-dia")
		:SetSize(50,50)
		:Hide()
	.__END

	popup.line.SavedSetPoint = popup.line.SetPoint

	popup.clicker = CHAIN(CreateFrame("Button",popupname.."_Clicker",popup))
		:SetPoint("TOPRIGHT",0,0)
		:SetPoint("BOTTOMLEFT",0,20)
		:SetSize(ICON_SIZE,ICON_SIZE)
		:SetScript("OnClick",function() 
			popup:Close() 
		end)
		.__END

	function popup.line:SetPoint(...)
		local pt = ...
		-- flippy flop the diag line as needed
		if pt == "TOPLEFT" or pt == "BOTTOMRIGHT" then
			self:SetTexCoord(1,0,0,1)
		elseif pt == "TOPRIGHT" or pt == "BOTTOMLEFT" then
			self:SetTexCoord(0,1,0,1)
		end

		self:SavedSetPoint(...)
	end

	popup.highlightframe = CHAIN(ui:Create("SecFrame",self.FUI,"ZGGoldHighlightFrame"))
		:SetFrameStrata("DIALOG")		-- Eh has to be above the frames
		:SetBackdropColor(1,1,1,.15)
		:Hide()
	.__END

	Goldguide.HelpPopup = popup
end

function Goldguide:RunTutorial(which,num)
	if not self.HelpPopup then Goldguide:CreateHelpPopup() end
	local p = self.HelpPopup
	local data, prevdata, maxNum
	num = num or 1

	data = whichToHelp[which]
	if not data then print("Need Popup for type:"..which) p:Close() return end		-- No type yet. Need to do that I guess
	maxNum = #data		-- Now many different windows are there for this type
	data = whichToHelp[which][num]
	prevdata = whichToHelp[which][num-1]		-- might be nil
	if not data then 
		p:Close() -- num too big or too low so time to exit!
		return 
	end
	data = data()
	if prevdata then prevdata = prevdata() end	-- still might be nil if not available
	
	-- Save the current data
	p.which = which
	p.num = num

	-- Setup the popup.
	CHAIN(p)
		:SetHeader(data[1])
		:SetImage(data[2])
		:SetSummary(data[3])
		:SetParent(data[4])
		:ClearAllPoints()
		:SetPoint(unpack(data[5]))
	
	-- If there is something to point to then do it. Otherwise hide the arrow.
	if data[6] then
		CHAIN(p.line)
			:ClearAllPoints()
			:SetPoint(unpack(data[6]))
			:Show()
	else
		p.line:Hide()
	end
	
	p.reason = data[7]
	
	-- Update the back button text and visibility. Don't show it if the last step automatically advanced.
	CHAIN(p.back)
		:SetText(num == 1 and EXIT or BACK)
		:ShowIf(prevdata and not prevdata[7] or num==1)		-- Don't show the back button if the last step automatically advanced or if it is the first step, thus it is an exit
	
	-- Update next if it is the last frame to exit. Show if not automatically advancing
	CHAIN(p.next)
		:SetText(num==maxNum and EXIT or NEXT)
		:ShowIf(not p.reason)
	
	-- If there is a function to call OnShow do it now.
	if data[8] then data[8]() end

	if data[9] then
		p.clicker:SetScript("OnClick",data[9])
	else
		p.clicker:SetScript("OnClick",nil)
	end


	p:Show()
end

local rowElementsToDim = {
	"cost",
	"count",
	"dispgold",
	"disptime",
	"gain",
	"icon",
	"materials",
	"name",
	"no",
	"profit",
	"rate",
	"status",
	"title",
	"zone",
}

local columnsToDim = {
	"col_cost",
	"col_count",
	"col_dispgold",
	"col_disptime",
	"col_gain",
	"col_icon",
	"col_materials",
	"col_name",
	"col_no",
	"col_profit",
	"col_rate",
	"col_status",
	"col_title",
	"col_zone",
}

-- Show a column in the Gold UI. Pass no header to remove dimming effect
function Goldguide:HighlightGoldguideColumn(header,rowEle)
	local popup = self.HelpPopup
	assert(popup,"Must have popup created first.")

	local function SetRowElementsAlpha(row,a)
		for i, ele in ipairs(rowElementsToDim) do
			if row[ele] then
				row[ele]:SetAlpha(ele==rowEle and 1 or a)	-- 1 if we are looking at that column, otherwise a
			end
		end
	end

	local function SetColumnsAlpha(page,a)
		for i, ele in ipairs(columnsToDim) do
			if page[ele] then
				page[ele]:SetAlpha(page[ele]==header and 1 or a)	-- 1 if we are looking at that column, otherwise a
			end
		end
	end


	local hi = popup.highlightframe
	local page = Goldguide[Goldguide.ActiveTab.."_Frame"]
	if header then
		local DIM_ALPHA = .5
		-- All rows dim!
		SetColumnsAlpha(page,DIM_ALPHA)
		for i,row in ipairs(page.Entries.rows) do
			SetRowElementsAlpha(row,DIM_ALPHA)
		end
		
		-- To show highlight or not to show highlight.
		if type(header)=="table" then
			local numRows = page.Entries:CountRows()
			local height = PAGE_HEADER_HEIGHT + numRows * ROW_HEIGHT

			CHAIN(hi)
				:ClearAllPoints()
				:SetPoint("TOPRIGHT",header)
				:SetPoint("TOPLEFT",header)
				:SetHeight(height)
				:Show()
		else
			hi:Hide()
		end
	else
		local REG_ALPHA = 1
		-- Rows back to normal
		if self.FUI then
			SetColumnsAlpha(page,REG_ALPHA)
			for i,row in ipairs(page.Entries.rows) do
				SetRowElementsAlpha(row,REG_ALPHA)
			end
		end
		hi:Hide()
	end
end
