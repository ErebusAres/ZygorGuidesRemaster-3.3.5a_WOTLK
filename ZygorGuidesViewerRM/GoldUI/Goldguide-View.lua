local ZGV = ZGV

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ZGVG=ZGV.Gold
local TRENDS_OLD = 24 * 4 --h

local HTMLColor=ZGV.HTMLColor

if not ZGV.Goldguide then ZGV.Goldguide = {} end
local Goldguide = ZGV.Goldguide

local ui = ZGV.UI
local SkinData = ui.SkinData


-- main frame config
local MAIN_WIDTH=820
local MAIN_HEIGHT=560
local TAB_WIDTH=120
local TAB_HEIGHT=20
local TAB_COUNT=4
local TAB_SPACE=(MAIN_WIDTH-TAB_WIDTH*TAB_COUNT)/TAB_COUNT
local HEADER_HEIGHT=70
local FOOTER_HEIGHT=25
local SCROLL_WIDTH=15
local CONTENT_HEIGHT=462
local HEADER_MENU_HEIGHT = 31
local HEADER_FONT_SIZE = 16

local DROPDOWN_STYLE=2

local ARROW_SPACE="      "

Goldguide.COLOR_VENDOR = "|cffaaaaaa"
Goldguide.COLOR_DEMANDLOW = "|cffff0000"
Goldguide.COLOR_DEMANDGOOD = "|cffffff00"
Goldguide.COLOR_DEMANDGREAT = "|cff00ff00"

-- Common settings for two state mode dropdowns
local DROPDOWN_WIDTH=100
local DROPDOWN_HEIGHT=18

local DEFAULT_MODES = {
	{L['gold_expertmode_easylabel'],false,L['gold_expertmode_easytooltip']},
	{L['gold_expertmode_expertlabel'],true,L['gold_expertmode_experttooltip']},
}

-- Common settings for all scrolltables
local ENTRIES_DATA = {
	ROW_COUNT = 17,
	ROW_HEADER = 18,
	LIST_WIDTH = 818,
	LIST_HEIGHT = 431,
	POSX = 0,
	POSY = -HEADER_MENU_HEIGHT,
	STRATA = "HIGH",
	BORDER = {0,0,0,0},
	BACKGROUND = {ZGV.F.HTMLColor("#222222ff")},
	ROWHIGHLIGHT = true,
	ROWBACKGROUND = true,
}

local FARMING_COLUMNS = {
	{ title=ZGV_T("NO"), width=25, headerwidth=40, titlej="LEFT", textj="LEFT", name="no"},
	{ title="", width=15, headerwidth=0, titlej="LEFT", textj="LEFT", name="icon", type="icon" },
	{ title="ITEM", width=230, titlej="LEFT", textj="LEFT", name="title", padding=20 },
	{ title=ZGV_T("ZONE"), width=140, titlej="LEFT", textj="LEFT", name="zone" },
	{ title=ZGV_T("RATE"), width=130, titlej="RIGHT", textj="RIGHT", name="rate", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("TIME"), width=60, titlej="RIGHT", textj="RIGHT", name="disptime", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("EST. GOLD"), width=110, titlej="RIGHT", textj="RIGHT", name="dispgold", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="", width=23, titlej="RIGHT", textj="RIGHT", name="loadbutton", type="button", iconheight=18, iconwidth=18,padding=15, iconset = "TitleButtons", iconkey="LOADGUIDE"}
}

local FARMING_TYPES = {
	{ZGV_T("All"),"all"},
	{ZGV_T("Cloths"),"cloth"},
	{ZGV_T("Elementals"),"elemental"},
	{ZGV_T("Food"),"food"},
	{ZGV_T("Gems"),"gem"},
	{ZGV_T("Misc"),"misc"},
}

local FARMING_TOOLTIP = {
	{ title="Item", width=200, titlej="LEFT", textj="LEFT", name="item"},
	{ title=ZGV_T("Price"), width=100, titlej="RIGHT", textj="RIGHT", name="price"},
	{ title="Drops", width=50, titlej="RIGHT", textj="RIGHT", name="drops"},
	{ title=ZGV_T("Profit"), width=100, titlej="RIGHT", textj="RIGHT", name="profit"},
	{ title=ZGV_T("Demand"), width=60, titlej="RIGHT", textj="RIGHT", name="demand"},
	{ title="Status", width=200, titlej="RIGHT", textj="RIGHT", name="status"},
}


local GATHERING_COLUMNS = {
	{ title=ZGV_T("NO"), width=25, headerwidth=40, titlej="LEFT", textj="LEFT", name="no"},
	{ title="", width=15, headerwidth=0, titlej="LEFT", textj="LEFT", name="icon", type="icon" },
	{ title="ITEM", width=230, titlej="LEFT", textj="LEFT", name="title", padding=20 },
	{ title=ZGV_T("ZONE"), width=140, titlej="LEFT", textj="LEFT", name="zone" },
	{ title=ZGV_T("RATE"), width=130, titlej="RIGHT", textj="RIGHT", name="rate", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("TIME"), width=60, titlej="RIGHT", textj="RIGHT", name="disptime", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("EST. GOLD"), width=110, titlej="RIGHT", textj="RIGHT", name="dispgold", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="", width=23, titlej="RIGHT", textj="RIGHT", name="loadbutton", type="button", iconheight=18, iconwidth=18,padding=15, iconset = "TitleButtons", iconkey="LOADGUIDE"}
}

local GATHERING_TOOLTIP = {
	{ title="Item", width=200, titlej="LEFT", textj="LEFT", name="item"},
	{ title=ZGV_T("Price"), width=100, titlej="RIGHT", textj="RIGHT", name="price"},
	{ title="Drops", width=50, titlej="RIGHT", textj="RIGHT", name="drops"},
	{ title=ZGV_T("Profit"), width=100, titlej="RIGHT", textj="RIGHT", name="profit"},
	{ title=ZGV_T("Demand"), width=60, titlej="RIGHT", textj="RIGHT", name="demand"},
	{ title="Status", width=200, titlej="RIGHT", textj="RIGHT", name="status"},
}


local CRAFTING_COLUMNS = {
	{ title=ZGV_T("NO"), width=25, headerwidth=40, titlej="LEFT", textj="LEFT", name="no"},
	{ title="", width=15, headerwidth=0, titlej="LEFT", textj="LEFT", name="icon", type="icon" },
	{ title=ZGV_T("RECIPE"), width=412, titlej="LEFT", textj="LEFT", name="name", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="STATUS", width=60, titlej="CENTER", textj="CENTER", name="status", font=FONTSTATUS},
	{ title=ZGV_T("MATERIALS"), width=110, titlej="RIGHT", textj="RIGHT", name="materials", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("PROFIT"), width=110, titlej="RIGHT", textj="RIGHT", name="profit", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="", width=23, titlej="RIGHT", textj="RIGHT", name="loadbutton", type="button", iconheight=18, iconwidth=18,padding=15, iconset = "TitleButtons", iconkey="LOADGUIDE"}
}

local CRAFTING_TOOLTIP = {
	{ title="", width=30, titlej="LEFT", textj="RIGHT", name="count" },
	{ title="Item", width=310, titlej="LEFT", textj="LEFT", name="item" },
	{ title=ZGV_T("Each"), width=100, titlej="RIGHT", textj="RIGHT", name="each" },
	{ title="Total", width=100, titlej="RIGHT", textj="RIGHT", name="total" },
	{ title="Status", width=200, titlej="RIGHT", textj="RIGHT", name="status" },
}

local CRAFTING_SKILLS={"All","Mining","Jewelcrafting","Enchanting","Inscription","Blacksmithing","Engineering","Alchemy","Tailoring","Leatherworking","Cooking"}

local CRAFTING_MODES = {
	{ZGV_T("Easy"),     0, ZGV_T("Show only items that are in demand, material cost is lower than the price of the product, and you know the recipe.")},
	{ZGV_T("Advanced"), 1, ZGV_T("Show only items that are in demand, material cost is lower than the price of the product, but you do not know the recipe.")},
	{ZGV_T("Expert"),   2, ZGV_T("Browse all known crafts your professions can currently make, even when demand or profit data is missing.")}
}

local AUCTION_COLUMNS = {
	{ title=ZGV_T("NO"), width=25, headerwidth=40, titlej="LEFT", textj="LEFT", name="no"},
	{ title="", width=15, headerwidth=0, titlej="LEFT", textj="LEFT", name="icon", type="icon" },
	{ title="ITEM", width=300, titlej="LEFT", textj="LEFT", name="title", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="STATUS", width=60, titlej="CENTER", textj="CENTER", name="status", font=FONTSTATUS },
	{ title=ZGV_T("AMT"), width=50, titlej="CENTER", textj="CENTER", name="count", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("COST"), width=105, titlej="RIGHT", textj="RIGHT", name="cost", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("PROFIT"), width=105, titlej="RIGHT", textj="RIGHT", name="profit", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title=ZGV_T("GAIN"), width=60, titlej="RIGHT", textj="RIGHT", name="gain", sortable=true, sortfunction=Goldguide.UpdateSorting },
	{ title="", width=23, titlej="RIGHT", textj="RIGHT", name="loadbutton", type="button", iconheight=18, iconwidth=18,padding=15, iconset = "TitleButtons", iconkey="LOADGUIDE"}
}

local AUCTION_TOOLTIP = {
	{ title="", width=30, titlej="LEFT", textj="RIGHT", name="count" },
	{ title="ITEM", width=150, titlej="LEFT", textj="LEFT", name="title" },
	--{ title="WORTH", width=100, titlej="RIGHT", textj="RIGHT", name="worth" },
	{ title=ZGV_T("CUR PRICE"), width=105, titlej="RIGHT", textj="RIGHT", name="curpri" },
	{ title=ZGV_T("BUY (ALL)"), width=110, titlej="RIGHT", textj="RIGHT", name="buyall" },
	{ title=ZGV_T("SELL (ALL)"), width=110, titlej="RIGHT", textj="RIGHT", name="sellall" },
	{ title=ZGV_T("AH CUT"), width=105, titlej="RIGHT", textj="RIGHT", name="ahcut" },
	{ title=ZGV_T("PROFIT"), width=110, titlej="RIGHT", textj="RIGHT", name="profit" },
}

local AUCTION_TYPES = {
	{ZGV_T("All"), 0,ZGV_T("Show all items.")},
	{ZGV_T("Equipment"), 1,ZGV_T("Show rquipment.")},
	{"Trade Goods", 2,ZGV_T("Show trade goods.")},
	{ZGV_T("Consumables"), 3,ZGV_T("Show consumables.")},
	{"Pets", 4,ZGV_T("Show pets.")},
	{ZGV_T("Others"), 5,ZGV_T("Show other items.")},
}


local AUCTION_MODES = {
	{ZGV_T("Easy"), 10,ZGV_T("Show best investments.")},
	{ZGV_T("Advanced"), 5,ZGV_T("Show good investments.")},
	{ZGV_T("Expert"), 0,ZGV_T("Show all investments.")}
}

local function MakeImgButton(name,seticon,caption)
	local header = Goldguide.MainFrame.HeaderFrame

	local but = CHAIN(CreateFrame("Button",header:GetName().."_"..name,header))
		:SetSize(TAB_WIDTH,TAB_HEIGHT)
	.__END
	
	but.texture = CHAIN(but:CreateTexture(but:GetName().."_t","ARTWORK")) 
		:SetSize(20,20) 
		:SetPoint("TOPLEFT",but) 
	.__END
	seticon:AssignToTexture(but.texture)
	
	but.caption = CHAIN(but:CreateFontString(but:GetName().."_c","ARTWORK")) 
		--:SetSize(200,20) 
		:SetPoint("LEFT",but.texture,"RIGHT",5,0) 
		:SetTextColor(1,1,1,1)
		:SetFont(FONT,HEADER_FONT_SIZE) 
	.__END	
	function but:SetText(text)	but.caption:SetText(text)	end

	return but
end

function Goldguide:ApplySkin()
	local MF = Goldguide.MainFrame
	if not MF then return end

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	MF:SetBackdrop(SkinData("GoldguideBackdrop"))
	MF:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("GoldguideBackdropColor"))))
	MF:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("GoldguideBackdropBorderColor"))))

	MF.HeaderFrame:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("GoldguideHeaderFooterColor"))))
	MF.HeaderFrame:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("GoldguideHeaderFooterColor"))))

	MF.FooterFrame:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("GoldguideHeaderFooterColor"))))
	MF.FooterFrame:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("GoldguideHeaderFooterColor"))))

	MF.MenuFrame.SearchEdit:SetTextColor(unpack(SkinData("SearchEditTextColor")))
	CHAIN(MF.MenuFrame.SearchEdit.back)
		:SetBackdrop(SkinData("SearchBackdrop"))
		:SetBackdropColor(unpack(SkinData("SearchEditBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("SearchEditBorderColor")))

end

function Goldguide:CreateMainFrame()
	local enable --TODO: unused?
	self.MainFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorGoldguide"))
		:SetFrameStrata("HIGH")
		:SetToplevel(true)
		:SetSize(820,560)
		:SetPoint("TOPLEFT",UIParent,"TOPLEFT",20,-100)
		:SetFrameLevel(10)
		:CanDrag(1)
		:SetScript("OnEvent",Goldguide.MainFrame_EventHandler)
		:SetScript("OnUpdate",Goldguide.MainFrame_UpdateHandler)
		.__END

	local MF = self.MainFrame 

	-- Header
	local enable --TODO: unused?
	MF.HeaderFrame = CHAIN(ui:Create("Frame",MF,"ZygorGoldguideHeader"))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("TOPRIGHT",-1,-1)
		:SetHeight(HEADER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+2)
		:SetBackdropBorderColor(0,0,0,0)
		:SetToplevel(true)
		.__END

		MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
			:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3) 
			:SetSize(100,25)
			:SetTexture(SkinData("TitleLogo"))
		.__END

		MF.HeaderFrame.menu = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPLEFT",5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() 
				ZGV.GuideMenu:Show("Home") 
				Goldguide:HideWindow() 
			end)
			:SetScript("OnEnter", function() Goldguide:ShowMenuTooltip(MF.HeaderFrame.menu,ZGV_T("Go back to main menu")) end)
			:SetScript("OnLeave", function() Goldguide:HideMenuTooltip() end)
			.__END

		ZGV.ButtonSets.TitleButtons.LIST:AssignToButton(MF.HeaderFrame.menu)

		MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() Goldguide:HideWindow() end)
			.__END
		ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.HeaderFrame.close)

		MF.HeaderFrame.info = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Goldguide:ToggleInfoPage() end)
			.__END
		ZGV.ButtonSets.TitleButtons.INFO:AssignToButton(MF.HeaderFrame.info)

		MF.HeaderFrame.help = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.info,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Goldguide:ToggleHelpPage() end)
			.__END
		ZGV.ButtonSets.TitleButtons.QUESTION:AssignToButton(MF.HeaderFrame.help)

		MF.HeaderFrame.Tabs = {}

		MF.HeaderFrame.Tabs[1] = CHAIN(MakeImgButton("Tab1",ZGV.IconSets.GoldGuideIcons.FARM,nil))
			:SetPoint("BOTTOMLEFT",MF.HeaderFrame,"TOPLEFT",TAB_SPACE/2,-HEADER_HEIGHT+10)
			:SetText("Farming")
			:SetScript("OnClick",function(tab) Goldguide:SetCurrentTab("Farming") end)
		.__END
		MF.HeaderFrame.Tabs[1].tabname = "Farming"

		MF.HeaderFrame.Tabs[2] = CHAIN(MakeImgButton("Tab2",ZGV.IconSets.GoldGuideIcons.GATHER,nil))
			:SetPoint("LEFT",MF.HeaderFrame.Tabs[1],"RIGHT",TAB_SPACE,0)
			:SetText(ZGV_T("Gathering"))
			:SetScript("OnClick",function(tab) Goldguide:SetCurrentTab("Gathering") end)
		.__END
		MF.HeaderFrame.Tabs[2].tabname = "Gathering"
		
		MF.HeaderFrame.Tabs[3] = CHAIN(MakeImgButton("Tab3",ZGV.IconSets.GoldGuideIcons.CRAFT,nil))
			:SetPoint("LEFT",MF.HeaderFrame.Tabs[2],"RIGHT",TAB_SPACE,0)
			:SetText(ZGV_T("Crafting"))
			:SetScript("OnClick",function(tab) Goldguide:SetCurrentTab("Crafting") end)
		.__END
		MF.HeaderFrame.Tabs[3].tabname = "Crafting"

		MF.HeaderFrame.Tabs[4] = CHAIN(MakeImgButton("Tab4",ZGV.IconSets.GoldGuideIcons.AUCTION,nil))
			:SetPoint("LEFT",MF.HeaderFrame.Tabs[3],"RIGHT",TAB_SPACE,0)
			:SetText(ZGV_T("Auctions"))
			:SetScript("OnClick",function(tab) Goldguide:SetCurrentTab("Auctions") end)
		.__END
		MF.HeaderFrame.Tabs[4].tabname = "Auctions"

		for _,tabobj in ipairs(MF.HeaderFrame.Tabs) do
			tabobj:SetScript("OnEnter", function(btn)
				local available, reason = Goldguide:GetTabAvailability(btn.tabname)
				if available then
					Goldguide:ShowMenuTooltip(btn, btn.tabname)
				else
					Goldguide:ShowMenuTooltip(btn, reason or btn.tabname)
				end
			end)
			tabobj:SetScript("OnLeave", function()
				Goldguide:HideMenuTooltip()
			end)
		end

	MF.MenuFrame = {}
		MF.MenuFrame.decor1 = CHAIN(ui:Create("Frame",MF))
			:SetPoint("TOPLEFT",MF.HeaderFrame,"BOTTOMLEFT",0,0)
			:SetPoint("BOTTOMRIGHT",MF.HeaderFrame,"BOTTOMRIGHT",0,-HEADER_MENU_HEIGHT)
			:SetBackdropColor(unpack(ui.SkinData("TriBackdropColor")))
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.MenuFrame.decor2 = CHAIN(ui:Create("Frame",MF.MenuFrame.decor1))
			:SetPoint("TOPLEFT",MF.MenuFrame.decor1,"TOPLEFT",0,-1)
			:SetPoint("BOTTOMRIGHT",MF.MenuFrame.decor1,"BOTTOMRIGHT",0,1)
			:SetBackdropColor(unpack(ui.SkinData("SecBackdropColor")))
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.MenuFrame.SearchEdit = CHAIN(ui:Create("EditBox",MF.MenuFrame.decor2))
			:SetPoint("TOPRIGHT",MF.MenuFrame.decor2,"TOPRIGHT",-25,-4)
			:SetScript("OnEnterPressed",function() MF.MenuFrame.SearchEdit:ClearFocus() Goldguide:Update() end)
			:HookScript("OnEscapePressed",function() MF.MenuFrame.SearchEdit:SetText("") Goldguide:Update()  end)
			:SetScript("OnTextChanged",function(edit,user) if user then Goldguide:Update() end end)
		.__END

		MF.MenuFrame.SearchIcon = CHAIN(MF.MenuFrame.SearchEdit:CreateTexture())
			:SetPoint("RIGHT",MF.MenuFrame.SearchEdit,0,0)
			:SetSize(12,12)
			:SetTexture(ZGV.DIR.."\\Skins\\search")
		.__END

		MF.MenuFrame.ResultCount = CHAIN(MF.MenuFrame.decor2:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",MF.MenuFrame.decor2,"LEFT",10,0)
			:SetJustifyH("LEFT")
			:SetJustifyV("CENTER")
			:SetSize(140,16)
			:SetText(ZGV_T("Results: 0"))
		.__END

	MF.ContentFrame = CHAIN(CreateFrame("Frame", "ZygorGoldguideContent", MF))
		:SetPoint("TOPLEFT",MF.HeaderFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.HeaderFrame,"BOTTOMRIGHT")
		:SetHeight(CONTENT_HEIGHT)
		:Show()
	.__END

	MF.MessageFrame = CHAIN(CreateFrame("Frame", nil, MF))
		:SetPoint("TOPLEFT",MF.HeaderFrame,"BOTTOMLEFT")
		:SetSize(818,431)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+4)
		:Hide()
	.__END

	MF.MessageFrame.ResultsMessage = CHAIN(MF.MessageFrame:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOPLEFT",MF.MessageFrame,"TOPLEFT",0,0)
		:SetJustifyH("CENTER")
		:SetJustifyV("MIDDLE")
		:SetSize(818,431)
		:SetText(ZGV_T("Results: 0"))
		:Show()
	.__END


	-- Footer
	local enable --TODO: unused?
	MF.FooterFrame = CHAIN(ui:Create("Frame",MF,"ZygorGoldguideFooter"))
		:SetPoint("TOPLEFT",MF.ContentFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.ContentFrame,"BOTTOMRIGHT")
		:SetHeight(FOOTER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+1)
		:SetBackdropBorderColor(0,0,0,0)
		:SetToplevel(true)
		.__END
		MF.FooterUpdated = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("BOTTOMLEFT",5,5)
			:SetFont(FONTBOLD,12)
			:SetText(ZGV_T("LAST UPDATED:"))
		.__END

		MF.FooterUpdatedTime = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("LEFT",MF.FooterUpdated ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText(ZGV_T("no time"))
		.__END

		MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.FooterFrame))
			:SetPoint("BOTTOMRIGHT",-5,5)
			:SetSize(15,15)
			:SetScript("OnClick",function() ZGV:OpenOptions("gold") end)
		.__END
		ZGV.ButtonSets.TitleButtons.SETTINGS:AssignToButton(MF.FooterSettingsButton)

		MF.progressFrame = CHAIN(ZGV.CreateFrameWithBG("Frame","progressFrame",MF.FooterFrame))
			:SetBackdrop(SkinData("ProgressBarBackdrop"))
			:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
			:SetSize(MF:GetWidth(),7)
			:SetHeight(SkinData("ProgressBarHeight"))
			:SetFrameStrata("HIGH")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetPoint("TOP",MF.FooterFrame,"BOTTOM",0,-1)
			:Hide()
		.__END
		
		MF.progressFrame.tex = CHAIN(MF.progressFrame:CreateTexture())
			:SetHeight(SkinData("ProgressBarHeight")-2)
			:SetPoint("TOPLEFT",MF.progressFrame,"TOPLEFT",1,-1)
			:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
			:SetVertexColor(unpack(SkinData("ProgressBarColor") or {0,1,0,1}))
		.__END 
		
		MF.progressFrame.SetPercent = function(self, percent)
			self.tex:SetWidth((percent / 100)*(self:GetWidth()-2))
		end

	Goldguide.Farming_Frame   = Goldguide:MakeTable_Farming()
	Goldguide.Gathering_Frame = Goldguide:MakeTable_Gathering()
	Goldguide.Crafting_Frame  = Goldguide:MakeTable_Crafting()
	Goldguide.Auctions_Frame  = Goldguide:MakeTable_Auctions()

	Goldguide.FarmingTooltip = Goldguide:MakeTooltip("Farming",FARMING_TOOLTIP)
	Goldguide.GatheringTooltip = Goldguide:MakeTooltip("Gathering",GATHERING_TOOLTIP)
	Goldguide.CraftingTooltip = Goldguide:MakeTooltip("Crafting",CRAFTING_TOOLTIP)
	Goldguide.AuctionTooltip = Goldguide:MakeTooltip("Auctions",AUCTION_TOOLTIP)

	Goldguide:MakeInfoPages()
	
	ZGV:AddMessageHandler("SKIN_UPDATED",Goldguide.ApplySkin)
	Goldguide:ApplySkin()
	MF:Hide()
end

function Goldguide:ShowMenuTooltip(parent,text)
	GameTooltip:SetOwner(parent, "ANCHOR_BOTTOM")
	GameTooltip:ClearAllPoints()
	GameTooltip:ClearLines()
	GameTooltip:SetText(text)
	GameTooltip:Show()
end

function Goldguide:HideMenuTooltip()
	GameTooltip:Hide()
end

function Goldguide:MakeTable_Farming()
	local container = CHAIN(CreateFrame("Frame", "GG_Farming_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	container.Entries = ui:Create("ScrollTable",container,"GG_Farming_List",FARMING_COLUMNS,ENTRIES_DATA)
	container.Entries:SetScript("OnMouseWheel", function(self,delta)
		Goldguide.OffsetFarming=Goldguide.OffsetFarming-delta
		Goldguide.needToUpdate=true
	end)
	container.Entries.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Goldguide.OffsetFarming=math.round(offset)
		Goldguide.needToUpdate=true
	end)

	for _,row in pairs(container.Entries.rows) do
		row.loadbutton:SetScript("OnClick",function() 
			if row.chore then
				local title = row.chore.guide or "GOLD\\"..row.chore.name
				ZGV:SetGuide(ZGV.Goldguide:GetRouteGuideLoadTitle(title))
			end
		end)
		row.loadbutton:SetScript("OnEnter",function() if row.chore then Goldguide:ShowLoadbuttonTooltip(row.loadbutton,ZGV_T("Load guide"),row.chore.display_name) end end)
		row.loadbutton:SetScript("OnLeave",function() Goldguide:HideLoadbuttonTooltip(row) end)

		row:SetScript("OnEnter",function(self) ZGV.Goldguide.FarmingTooltip:DisplayData(row) end)
		row:SetScript("OnLeave",function(self) ZGV.Goldguide.FarmingTooltip:Hide() end)
	end

	container.ModeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-12,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",L["gold_expertmode_generictooltip"])
	.__END
	
	for optnum,opt in ipairs(DEFAULT_MODES) do
		local item = container.ModeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_farming_mode = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end, opt[3])
	end

	container.TypeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-122,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",ZGV_T("Filter what sort of items are shown."))
	.__END

	for optnum,opt in ipairs(FARMING_TYPES) do
		local item = container.TypeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_farming_type = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end)
	end

	return container
end

function Goldguide:MakeTable_Gathering()
	local container = CHAIN(CreateFrame("Frame", "GG_Gathering_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	container.Entries = ui:Create("ScrollTable",container,"GG_Gathering_List",FARMING_COLUMNS,ENTRIES_DATA)
	container.Entries:SetScript("OnMouseWheel", function(self,delta)
		Goldguide.OffsetGathering=Goldguide.OffsetGathering-delta
		Goldguide.needToUpdate=true
	end)
	container.Entries.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Goldguide.OffsetGathering=math.round(offset)
		Goldguide.needToUpdate=true
	end)

	for _,row in pairs(container.Entries.rows) do
		row.loadbutton:SetScript("OnClick",function()
			if row.chore then
				local title = row.chore.guide or "GOLD\\"..row.chore.name
				ZGV:SetGuide(ZGV.Goldguide:GetRouteGuideLoadTitle(title))
			end
		end)

		row.loadbutton:SetScript("OnEnter",function() if row.chore then Goldguide:ShowLoadbuttonTooltip(row.loadbutton,ZGV_T("Load guide"),row.chore.display_name) end end)
		row.loadbutton:SetScript("OnLeave",function() Goldguide:HideLoadbuttonTooltip(row) end)

		row:SetScript("OnEnter",function(self) ZGV.Goldguide.GatheringTooltip:DisplayData(row) end)
		row:SetScript("OnLeave",function(self) ZGV.Goldguide.GatheringTooltip:Hide() end)
	end

	container.ModeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-12,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",L["gold_expertmode_generictooltip"])
	.__END
	
	for optnum,opt in ipairs(DEFAULT_MODES) do
		local item = container.ModeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_gathering_mode = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end, opt[3])
	end

	container.TypeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-122,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",ZGV_T("Filter what sort of items are shown."))
	.__END

	for optnum,opt in ipairs(Goldguide.GATHERING_TYPES) do
		local item = container.TypeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_gathering_type = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end)
	end

	return container
end

function Goldguide:MakeTable_Crafting()
	local container = CHAIN(CreateFrame("Frame", "GG_Crafting_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	container.Entries = ui:Create("ScrollTable",container,"GG_Crafting_List",CRAFTING_COLUMNS,ENTRIES_DATA)
	container.Entries:SetScript("OnMouseWheel", function(self,delta)
		Goldguide.OffsetCrafting=Goldguide.OffsetCrafting-delta
		Goldguide.needToUpdate=true
	end)
	container.Entries.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Goldguide.OffsetCrafting=math.round(offset)
		Goldguide.needToUpdate=true
	end)

	for _,row in pairs(container.Entries.rows) do
		row.loadbutton:SetScript("OnClick",function() 
			if row.chore then row.chore:GenerateGuide() end
		end)

		row.loadbutton:SetScript("OnEnter",function() if row.chore then Goldguide:ShowLoadbuttonTooltip(row.loadbutton,ZGV_T("Load guide"),row.chore.display_name) end end)
		row.loadbutton:SetScript("OnLeave",function() Goldguide:HideLoadbuttonTooltip(row) end)

		row:SetScript("OnEnter",function(self) ZGV.Goldguide.CraftingTooltip:DisplayData(row) end)
		row:SetScript("OnLeave",function(self) ZGV.Goldguide.CraftingTooltip:Hide() end)
	end


	container.ModeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-12,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",L["gold_expertmode_generictooltip"])
	.__END
	
	for optnum,opt in ipairs(CRAFTING_MODES) do
		local item = container.ModeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_crafting_mode = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end, opt[3])
	end

	container.TypeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-122,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",ZGV_T("Filter what sort of items are shown."))
	.__END
		
	for _,skillname in ipairs(CRAFTING_SKILLS) do
		local skill = ZGV.Professions:GetSkill(skillname)
		if skillname=="All" or skill.level>0 then
			local skillid = (skillname=="All" and 0) or skill.parentskillID or skill.skillID
			local item = container.TypeDropdown:AddItem(skillname,skillid,function(item)
				ZGV.db.profile.gold_crafting_type = item.userdata.value
				if container:IsVisible() then Goldguide:Update() end
			end)
		end
	end

	return container
end

function Goldguide:MakeTable_Auctions()
	local container = CHAIN(CreateFrame("Frame", "GG_Auctions_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	container.Entries = ui:Create("ScrollTable",container,"GG_Auctions_List",AUCTION_COLUMNS,ENTRIES_DATA)
	container.Entries:SetScript("OnMouseWheel", function(self,delta)
		Goldguide.OffsetAuctions=Goldguide.OffsetAuctions-delta
		Goldguide.needToUpdate=true
	end)
	container.Entries.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Goldguide.OffsetAuctions=math.round(offset)
		Goldguide.needToUpdate=true
	end)

	for _,row in pairs(container.Entries.rows) do
		row.loadbutton:SetScript("OnClick",function() 
			ZGV.Gold.Appraiser:AddItemToBuy(row.chore.id,row.chore.count,ZGV.Gold.Appraiser.ShoppingModes.GOLD,row.chore.price,nil,row.chore.category)
			if ZGVG.HelpPopup then 
				ZGVG.HelpPopup:Next("appraiseradd") 
			end
		end)

		row.loadbutton:SetScript("OnEnter",function() if row.chore then Goldguide:ShowLoadbuttonTooltip(row.loadbutton,ZGV.db.char.CurrentDeals and ZGV.db.char.CurrentDeals[row.chore.id] and ZGV_T("Item already on Shopping List") or ZGV_T("Add to Shopping List"),row.chore.name) end end)
		row.loadbutton:SetScript("OnLeave",function() Goldguide:HideLoadbuttonTooltip(row) end)

		row:SetScript("OnEnter",function(self) ZGV.Goldguide.AuctionTooltip:DisplayData(row) end)
		row:SetScript("OnLeave",function(self) ZGV.Goldguide.AuctionTooltip:Hide() end)
	end

	container.ModeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-12,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",L["gold_expertmode_generictooltip"])
	.__END
	
	for optnum,opt in ipairs(AUCTION_MODES) do
		local item = container.ModeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_auctions_mode = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end, opt[3])
	end

	container.TypeDropdown = CHAIN(ui:Create("DropDown",container,DROPDOWN_STYLE,Goldguide.MainFrame.MenuFrame.decor1:GetFrameLevel()+2))
		:SetPoint("BOTTOMRIGHT",Goldguide.MainFrame.MenuFrame.SearchEdit,"BOTTOMLEFT",-122,1)
		:SetSize(DROPDOWN_WIDTH,DROPDOWN_HEIGHT)
		:AddTooltip("ANCHOR_TOPLEFT",ZGV_T("Filter what sort of items are shown."))
	.__END
		
	for optnum,opt in ipairs(AUCTION_TYPES) do
		local item = container.TypeDropdown:AddItem(opt[1],opt[2],function(item)
			ZGV.db.profile.gold_auctions_type = item.userdata.value
			if container:IsVisible() then Goldguide:Update() end
		end, opt[3])
	end

	return container
end

function Goldguide:UpdateTabAvailability()
	if not (Goldguide.MainFrame and Goldguide.MainFrame.HeaderFrame and Goldguide.MainFrame.HeaderFrame.Tabs) then return end

	for _,tabobj in ipairs(Goldguide.MainFrame.HeaderFrame.Tabs) do
		local available, reason = Goldguide:GetTabAvailability(tabobj.tabname)
		tabobj.available = available
		tabobj.unavailableReason = reason
	end
end

function Goldguide:SetCurrentTab(title)
	local available, reason = Goldguide:GetTabAvailability(title)
	if not available and Goldguide.ActiveTab then
		Goldguide.MainFrame.MessageFrame.ResultsMessage:SetText(reason or (title .. ZGV_T(" is not ready yet.")))
		Goldguide.MainFrame.MessageFrame:Show()
		Goldguide:UpdateTabAvailability()
		for _,tabobj in ipairs(Goldguide.MainFrame.HeaderFrame.Tabs) do
			local tabReady = tabobj.available
			if tabobj.tabname == Goldguide.ActiveTab then
				tabobj.caption:SetFont(FONTBOLD,HEADER_FONT_SIZE)
				tabobj.caption:SetTextColor(1,1,1,1)
				tabobj.texture:SetAlpha(1)
			elseif tabReady then
				tabobj.caption:SetFont(FONT,HEADER_FONT_SIZE)
				tabobj.caption:SetTextColor(0.7,0.7,0.7,1)
				tabobj.texture:SetAlpha(.4)
			else
				tabobj.caption:SetFont(FONT,HEADER_FONT_SIZE)
				tabobj.caption:SetTextColor(0.45,0.45,0.45,1)
				tabobj.texture:SetAlpha(.18)
			end
		end
		return
	end

	local tab=Goldguide.ActiveTab
	if tab=="Farming" then ZGV.db.profile.gold_farming_search = Goldguide.MainFrame.MenuFrame.SearchEdit:GetText()
	elseif tab=="Gathering" then ZGV.db.profile.gold_gathering_search = Goldguide.MainFrame.MenuFrame.SearchEdit:GetText()
	elseif tab=="Crafting" then ZGV.db.profile.gold_crafting_search = Goldguide.MainFrame.MenuFrame.SearchEdit:GetText()
	elseif tab=="Auctions" then ZGV.db.profile.gold_auctions_search = Goldguide.MainFrame.MenuFrame.SearchEdit:GetText()
	end

	if title=="Farming" then Goldguide.MainFrame.MenuFrame.SearchEdit:SetText(ZGV.db.profile.gold_farming_search or "")
	elseif title=="Gathering" then Goldguide.MainFrame.MenuFrame.SearchEdit:SetText(ZGV.db.profile.gold_gathering_search or "")
	elseif title=="Crafting" then Goldguide.MainFrame.MenuFrame.SearchEdit:SetText(ZGV.db.profile.gold_crafting_search or "")
	elseif title=="Auctions" then Goldguide.MainFrame.MenuFrame.SearchEdit:SetText(ZGV.db.profile.gold_auctions_search or "")
	end

	Goldguide:UpdateTabAvailability()
	for i,tabobj in ipairs(Goldguide.MainFrame.HeaderFrame.Tabs) do
		local tabReady = tabobj.available
		if tabobj.tabname == title then
			tabobj.caption:SetFont(FONTBOLD,HEADER_FONT_SIZE)
			tabobj.caption:SetTextColor(1,1,1,1)
			tabobj.texture:SetAlpha(1)
			Goldguide[tabobj.tabname.."_Frame"]:Show()
		elseif tabReady then
			tabobj.caption:SetFont(FONT,HEADER_FONT_SIZE)
			tabobj.caption:SetTextColor(0.7,0.7,0.7,1)
			tabobj.texture:SetAlpha(.4)
			Goldguide[tabobj.tabname.."_Frame"]:Hide()
		else
			tabobj.caption:SetFont(FONT,HEADER_FONT_SIZE)
			tabobj.caption:SetTextColor(0.45,0.45,0.45,1)
			tabobj.texture:SetAlpha(.18)
			Goldguide[tabobj.tabname.."_Frame"]:Hide()
		end
		Goldguide.MainFrame.Infopages[tabobj.tabname]:Hide()
	end

	if Goldguide.ShowInfoPage then
		Goldguide.MainFrame.Infopages[title]:Show()
	end

	Goldguide.ActiveTab=title
	Goldguide:Update()
end

StaticPopupDialogs["ZYGOR_GOLD_WARNED_LEGION_CRAP"] = {
	text = ZGV_T("Zygor Gold Guide is not working properly due to recent changes in Auction House access mechanisms. For this reason we have temporarily disabled the Gold Guide while we work on a solution. We apologize for the inconvenience."),
	button1 = OKAY,
	button2 = nil,
	timeout = 0,
	OnAccept = function()
	end,
	OnCancel = function()
	end,
	whileDead = 1,
	hideOnEscape = 1,
}

function Goldguide:ShowWindow()
	if not Goldguide.MainFrame then Goldguide:CreateMainFrame() end
	Goldguide.MainFrame:DoFadeIn()

	ZGV.db.profile.gold_farming_mode = ZGV.db.profile.gold_farming_mode or DEFAULT_MODES[1][2]
	ZGV.db.profile.gold_farming_type = ZGV.db.profile.gold_farming_type or FARMING_TYPES[1][2]
	ZGV.db.profile.gold_gathering_mode = ZGV.db.profile.gold_gathering_mode or DEFAULT_MODES[1][2]
	ZGV.db.profile.gold_gathering_type = ZGV.db.profile.gold_gathering_type or Goldguide.GATHERING_TYPES[1][2]
	ZGV.db.profile.gold_crafting_mode = ZGV.db.profile.gold_crafting_mode or CRAFTING_MODES[1][2]
	ZGV.db.profile.gold_crafting_type = ZGV.db.profile.gold_crafting_type or 0
	ZGV.db.profile.gold_auctions_mode = ZGV.db.profile.gold_auctions_mode or AUCTION_MODES[1][2]
	ZGV.db.profile.gold_auctions_type = ZGV.db.profile.gold_auctions_type or AUCTION_TYPES[1][2]

	Goldguide.Farming_Frame.ModeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_farming_mode)
	Goldguide.Farming_Frame.TypeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_farming_type)
	Goldguide.Gathering_Frame.ModeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_gathering_mode)
	Goldguide.Gathering_Frame.TypeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_gathering_type)
	Goldguide.Crafting_Frame.ModeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_crafting_mode)
	Goldguide.Crafting_Frame.TypeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_crafting_type)
	Goldguide.Auctions_Frame.ModeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_auctions_mode)
	Goldguide.Auctions_Frame.TypeDropdown:SetCurrentSelectedByValue(ZGV.db.profile.gold_auctions_type)

	Goldguide.ShowHelpPage=false
	if Goldguide.MainFrame.helpPanel then Goldguide.MainFrame.helpPanel:Hide() end

	Goldguide:UpdateTabAvailability()
	Goldguide:SetCurrentTab(Goldguide:GetPreferredTab())
end

function Goldguide:HideWindow()
	if self.MainFrame then
		self.MainFrame:DoFadeOut()
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

function Goldguide:UpdateTimeStamp()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end
	if not ZGVG.Scan.db then return end

	local timestamptext,updateTitletext,lastScanStr

	local ScanDatabase
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		ScanDatabase = ZGVG.Scan.db.factionrealm
	else
		ScanDatabase = ZGVG.Scan.db.realm
	end


	if ScanDatabase.LastScan then
		updateTitletext = ZGV_T("LAST UPDATED:")
		timestamptext = ("|c%s%s|r"):format(OldColor(ScanDatabase.LastScan,3600*2,60*10), ui.GetTimeStamp(ScanDatabase.LastScan))
		if time()-ScanDatabase.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r - " .. L["gold_app_old_scan_data"]
		end
	else
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_scan_data"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_goldguide"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = ZGV_T("|cffff0000ALERT:|r")
		timestamptext = L["gold_app_no_servertrends"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = ZGV_T("|cffff0000ALERT:|r")
			timestamptext = L["gold_app_old_servertrends"]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
		end
	end

	local local_time = debugprofilestop()
	local progress_dots = ""

	if (math.floor(local_time%1500) < 500) then
		progress_dots = "."
	elseif local_time%1500 < 1000 then
		progress_dots = ".."
	else
		progress_dots = "..."
	end

	local data_text = ZGV_T("auctions")

	if Goldguide.oldstate ~= ZGV.Gold.Scan.state then
		Goldguide.oldstate = ZGV.Gold.Scan.state
		if Goldguide.oldstate == "SS_QUERYING" then
			Goldguide.pagenum = (Goldguide.pagenum or 0) + 1
		end
	end

	local page_text = ""
	if Goldguide.pagenum then
		page_text = ZGV_T("page ")..Goldguide.pagenum..ZGV_T(" of ")
	end

	if Goldguide.manualScanning then
		data_text = page_text..(Goldguide.manualScanningName or "")
	end
	if Goldguide.UpdateScanRunningName then
		data_text = page_text..self.UpdateScanRunningName
	end
	if Goldguide.BuyOutSearchName then
		data_text = page_text..Goldguide.BuyOutSearchName
	end



	if ZGV.Gold.Scan.state == "SS_QUERYING" then
		updateTitletext = ZGV_T("|cffff0000SCANNING:|r")
		timestamptext = ZGV_T("Querying ")..data_text..ZGV_T(" data") .. progress_dots
	elseif ZGV.Gold.Scan.state =="SS_RECEIVING" then
		updateTitletext = ZGV_T("|cffff0000SCANNING:|r")
		timestamptext = ZGV_T("Receiving ")..data_text..ZGV_T(" data") .. progress_dots
	elseif ZGV.Gold.Scan.state =="SS_SCANNING" then
		updateTitletext = ZGV_T("|cffff0000SCANNING:|r")
		timestamptext = ZGV_T("Scanning ")..data_text..ZGV_T(" data") .. progress_dots
	elseif ZGV.Gold.Scan.state =="SS_ANALYZING" then
		updateTitletext = ZGV_T("|cffff0000SCANNING:|r")
		timestamptext = ZGV_T("Analyzing ")..data_text..ZGV_T(" data") .. progress_dots
	elseif Goldguide.ScanIsRunning or Goldguide.ActiveShoppingAddItem or Goldguide.ScanItems and next(Goldguide.ScanItems) then
		-- show Analyzing to avoid idle flashes
		updateTitletext = ZGV_T("|cffff0000SCANNING:|r")
		timestamptext = ZGV_T("Analyzing ")..data_text..ZGV_T(" data") .. progress_dots
	elseif ZGV.Gold.Scan.state =="SS_IDLE" then
		Goldguide.pagenum = nil
	end



	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

function Goldguide:UpdateSortingArrows()
	if not Goldguide.ActiveTab then return end
	local tab = string.lower(Goldguide.ActiveTab)

	local allcolumns
	if tab=="farming" then
		allcolumns = FARMING_COLUMNS
	elseif tab=="gathering" then
		allcolumns = GATHERING_COLUMNS
	elseif tab=="crafting" then
		allcolumns = CRAFTING_COLUMNS
	elseif tab=="auctions" then
		allcolumns = AUCTION_COLUMNS
	end


	local sort_col = ZGV.db.profile.goldsort[tab][1]
	local sort_dir = ZGV.db.profile.goldsort[tab][2]

	local frame=Goldguide[Goldguide.ActiveTab.."_Frame"]

	local sort_col_data
	for k,column in ipairs(allcolumns) do
		if column.sortable then
			frame.Entries["col_"..column.name].texture:SetTexture("")
			frame.Entries["col_"..column.name]:SetText(string.gsub(frame.Entries["col_"..column.name]:GetText(),ARROW_SPACE,""))
			frame.Entries["col_"..column.name].tooltip = ZGV.L['gold_clicktosort_desc']:format(column.title:lower())
		end
		if column.name==sort_col then sort_col_data=column end
	end

	frame.Entries["col_"..sort_col]:SetText(frame.Entries["col_"..sort_col]:GetText()..ARROW_SPACE) 
	
	local button = frame.Entries["col_"..sort_col]
	if sort_dir == "desc" then
		button.texture:SetTexture(ZGV.DIR.."\\Skins\\arrowdown")
		button.tooltip = ZGV.L['gold_clicktosort_asc']:format(sort_col_data.title:lower())
	else
		button.texture:SetTexture(ZGV.DIR.."\\Skins\\arrowup")
	end
end

function Goldguide:ShowLoadbuttonTooltip(button,text,...)
	local row = button:GetParent()
	if not row.chore then return end
	row:GetScript("OnEnter")(row)
	GameTooltip:SetOwner(button,"ANCHOR_RIGHT")

	GameTooltip:SetText(text)
	for i=1,select("#",...) do 
		GameTooltip:AddLine(select(i,...))
	end
	GameTooltip:Show()
end

function Goldguide:HideLoadbuttonTooltip(row)
	GameTooltip:Hide() 
	if not row.chore then return end
	row:GetScript("OnLeave")(row)
end

function Goldguide:MakeTooltip(name,COLUMNS)
	local ROW_HEIGHT = 13
	local parent,name = Goldguide[name.."_Frame"],name.."_Tooltip"
	local frame = CHAIN(ui:Create("Frame",parent,name))
		:SetPoint("TOPLEFT",0,0)
		:SetSize(MAIN_WIDTH-21,100)
		:SetFrameStrata("TOOLTIP")
		:SetFrameLevel(parent:GetFrameLevel()+5)
		:SetClampedToScreen(true)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(unpack(SkinData("MainBackdropBorderColor")))
	.__END

	-- Status bar
	frame.statustext = CHAIN(frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetSize(MAIN_WIDTH-23,150)
		:SetJustifyV("TOP")
		:SetJustifyH("LEFT")
		:SetFont(FONT,12)
		:SetText("Header")
		:SetWordWrap(true)
		.__END


	-- header
	local prev = nil

	frame.header = CHAIN(ui:Create("Frame",frame))
		:SetPoint("TOPLEFT",frame.statustext,"BOTTOMLEFT",0,0)
		:SetSize(MAIN_WIDTH-21,100)
		:SetFrameLevel(parent:GetFrameLevel()+5)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
	.__END

	frame.fields = {}
	for k,col in ipairs(COLUMNS) do
		table.insert(frame.fields,col.name)
		local widget = CHAIN(frame.header:CreateFontString())
			:SetSize(col.headerwidth or col.width,15)
			:SetJustifyV("CENTER")
			:SetJustifyH(col.titlej)
			:SetFont(FONTBOLD,12)
			:SetText(col.title)
			.__END

		if not prev 
			then widget:SetPoint("TOPLEFT",frame.header,"TOPLEFT",0,-10)
		else
			widget:SetPoint("LEFT",prev,"RIGHT",10,0)
		end
		frame["col_"..col.name] = widget
		prev=widget
	end

	-- content
	frame.rows={}
	for n=1,30 do
		frame.rows[n] = CHAIN(ui:Create("Frame",frame,name.."_ROW"..n))
			:SetSize(frame:GetWidth()-20,ROW_HEIGHT)
			:SetFrameLevel(frame:GetFrameLevel()+1)
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		if n==1 then
			frame.rows[n]:SetPoint("TOPLEFT",frame.header,"TOPLEFT",1,-30+1)
		else
			frame.rows[n]:SetPoint("TOPLEFT",frame.rows[n-1],"BOTTOMLEFT",0,0)
		end

		local row = frame.rows[n]

		row.num = n
		
		local prev = nil
		local hasicon = false
		for k,col in ipairs(COLUMNS) do
			local widget = CHAIN(row:CreateFontString())
				:SetSize(col.width,12)
				:SetJustifyV("TOP")
				:SetJustifyH(col.textj)
				:SetFont(FONT,12)
				:SetText(col.title)
				.__END

			if prev then 
				widget:SetPoint("LEFT",prev,"RIGHT",10,0) 
			else
				widget:SetPoint("LEFT",row,"LEFT",0,0) 
			end
			row[col.name] = widget
			prev=widget
		end

		row:Hide()
	end

	-- separator
	frame.separator = CHAIN(frame:CreateTexture(name.."Hr","OVERLAY"))
		:SetSize(1,1)
		:SetColorTexture(1,1,1,0.4) 
	.__END
	frame.separator:Hide()


	frame:Hide()

	function frame:DisplayData(row)
		if ZGV.db.profile.gold_tooltips_guide==0 then return end
		if ZGV.db.profile.gold_tooltips_guide==1 and not IsShiftKeyDown() then return end

		-- cleanup
		for _,row in pairs(frame.rows) do
			for _,field in pairs(frame.fields) do
				row[field]:SetText()
			end
			row:Hide()
		end
		frame.separator:Hide()

		local data=row.chore:GetTooltipData(IsControlKeyDown()) -- force refresh

		ZGV.Gold.FOCUSED_GUIDE = row.chore

		-- set up header and status values and position
		if data.header then
			self.statustext:SetHeight(100) -- make space for multiline
			self.statustext:SetText(data.header)
			self.statustext:SetHeight(self.statustext:GetStringHeight()) -- set to true height
			self.header:SetPoint("TOPLEFT",self.statustext,"BOTTOMLEFT",0,0)
		else
			self.statustext:SetText()
			self.statustext:SetHeight(0)
			self.header:SetPoint("TOPLEFT",self.statustext,"BOTTOMLEFT",0,10)
		end
			

		-- fill in info
		for index,itemdata in pairs(data.items) do
			local listrow=frame.rows[index]
			for field,value in pairs(itemdata) do
				listrow[field]:SetText(value)
			end
			listrow:Show()
			if data.separator and data.separator==index then
				frame.separator:SetPoint("BOTTOM",row,"BOTTOM",0,0)
				frame.separator:Show()
			end
		end

		local statusheight = data.header and (self.statustext:GetStringHeight() + 10) or 0

		local totalheight=40+statusheight+ROW_HEIGHT*(#data.items)
		self:SetHeight(totalheight)

		-- position
		self:SetParent(Goldguide.MainFrame)
		self:SetFrameStrata("TOOLTIP")
		self:SetFrameLevel(Goldguide.MainFrame:GetFrameLevel()+50)
		self:ClearAllPoints()

		local content = Goldguide.MainFrame and Goldguide.MainFrame.ContentFrame
		local rowBottom = row:GetBottom() or 0
		local rowTop = row:GetTop() or 0
		local contentBottom = content and content:GetBottom() or (Goldguide.MainFrame:GetBottom() or 0)
		local contentTop = content and content:GetTop() or (Goldguide.MainFrame:GetTop() or 0)
		local edgeBuffer = 8
		local showAbove = (rowBottom - totalheight) < (contentBottom + edgeBuffer)

		if showAbove and (rowTop + totalheight) < (contentTop - edgeBuffer) then
			self:SetPoint("BOTTOMLEFT",row,"TOPLEFT",0,2)
		else
			self:SetPoint("TOPLEFT",row,"BOTTOMLEFT",0,-2)
		end

		self:Show()
	
	end

	return frame
end

function Goldguide:ToggleInfoPage()
	Goldguide.ShowInfoPage = not Goldguide.ShowInfoPage

	if Goldguide.ShowHelpPage then Goldguide.MainFrame.helpPanel:Hide() end

	Goldguide:SetCurrentTab(Goldguide.ActiveTab)
	Goldguide:Update()
end

function Goldguide:ToggleHelpPage()
	Goldguide.ShowHelpPage = not Goldguide.ShowHelpPage
	Goldguide.ShowInfoPage = false

	if not Goldguide.MainFrame.helpPanel then Goldguide:CreateHelpContentPanel() end
	if Goldguide.ShowHelpPage then
		Goldguide.MainFrame.helpPanel:Show()
	else
		Goldguide.MainFrame.helpPanel:Hide()
	end
end
