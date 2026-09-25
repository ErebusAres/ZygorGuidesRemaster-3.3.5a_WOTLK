local ZGV = ZGV

if not ZGV.Goldguide then ZGV.Goldguide = {} end
local Goldguide = ZGV.Goldguide
local ui = ZGV.UI
local SkinData = ui.SkinData
local CHAIN = ZGV.ChainCall

local HTMLColor=ZGV.HTMLColor

local FARM_INFO_SUMMARY = ZGV_T("Make gold by farming and selling valuable items that drop off mobs (cloth, elementals, food, ect.). This is the best method for beginners without any profession skills.")
local FARM_INFO_PROS = {
	ZGV_T("No profession skills required."),
	ZGV_T("Low risk. Little to no gold required."),
	ZGV_T("Earn XP while making gold (up to level 90)."),
}
local FARM_INFO_CONS = {
	ZGV_T("Can be slow, tedious and boring"),
	ZGV_T("Profit limits (can only farm items so fast)"),
}
local FARM_INFO_DIFF_PERCENT = 20


local GATHER_INFO_SUMMARY = ZGV_T("Use gathering professions to make money by farming and selling raw materials (herbs, ores, skins). This is the best method players who want to make the most gold without getting into the more complex methods.")
local GATHER_INFO_PROS = {
	ZGV_T("Most profitable of the easy methods."),
	ZGV_T("Low risk. Little to no gold required."),
}
local GATHER_INFO_CONS = {
	ZGV_T("Can be slow, tedious and boring"),
	ZGV_T("Requires profession skills (preferably maxed out)"),
	ZGV_T("Profit limits (can only farm items so fast)"),
}
local GATHER_INFO_DIFF_PERCENT = 40


local AUCTION_INFO_SUMMARY = ZGV_T("Play the Auction House to make money. Buy low, sell high. The most profitable method to make gold but the hardest to master.")
local AUCTION_INFO_PROS = {
	ZGV_T("Quick profit (except for long-term investments)"),
	ZGV_T("Almost unlimited profits"),
}
local AUCTION_INFO_CONS = {
	ZGV_T("Startup capital required"),
	ZGV_T("High risk. Can (and often will) face losses."),
	ZGV_T("Easy to mess up, difficult to master"),
}
local AUCTION_INFO_DIFF_PERCENT = 90


local CRAFTING_INFO_SUMMARY = ZGV_T("Make gold by crafting profitable items and selling them on the auction house.")
local CRAFTING_INFO_PROS = {
	ZGV_T("Profit limited only by demand"),
}
local CRAFTING_INFO_CONS = {
	ZGV_T("Medium risk."),
	ZGV_T("Only really profitable at max skill level."),
}
local CRAFTING_INFO_DIFF_PERCENT = 60


local function GetInfoFrame(parentFrame)
	local HEADER_FONTSIZE = 14
	local REG_TEXT_FONTSIZE = 13

	local HORT_PADDING = 10
	local SECTION_VERT_PADDING = 15
	local BELOW_HEADER_PADDING = 7
	local LABEL_HORT_PADDING = 5
	local LABEL_SPACING = 5
	local FONT=ZGV.Font
	local FONTBOLD=ZGV.FontBold
	
	-- Ok Button dis
	local BUTTON_VERT_DIS = 30

	-- Pro/Con
	local PRO_N_CON_SQUARE_SIZE = 10
	local PRO_N_CON_VERT_PADDING = 7
	local PRO_SQ_COLOR = {ZGV.F.HTMLColor("#00a1fe")}
	local CON_SQ_COLOR = {ZGV.F.HTMLColor("#ff0000")}
	
	local PROGRESS_BAR_HEIGHT = 12
	local PROGRESS_BAR_WIDTH = 300
	-- Progress Bar Colors
	local DIFF_COLOR_1 = {ZGV.F.HTMLColor("#00ff00")}
	local DIFF_COLOR_2 = {ZGV.F.HTMLColor("#ffff00")}
	local DIFF_COLOR_3 = {ZGV.F.HTMLColor("#ff0000")}
	
	local name = parentFrame:GetName().."InfoFrame"
	local contentwidth

	local infoframe = CHAIN(ui:Create("SecFrame",parentFrame,name))
		:SetAllPoints(parentFrame)
		:SetFrameLevel(parentFrame:GetFrameLevel() + 10)	-- Gotta get over the rows and all the various buttons. TODO better way?!?
		:CanDrag("parent")
	.__END

	contentwidth = max((parentFrame:GetWidth() or 0) - (HORT_PADDING*2), 300)	-- full frame with the buffer on each side.

	infoframe.summaryheader = CHAIN(infoframe:CreateFontString())
		:SetPoint("TOPLEFT",infoframe,"TOPLEFT",HORT_PADDING,-SECTION_VERT_PADDING)
		:SetFont(FONTBOLD,HEADER_FONTSIZE)
		:SetText(ZGV_T("SUMMARY:"))
	.__END

	infoframe.summary = CHAIN(infoframe:CreateFontString())
		:SetPoint("TOPLEFT",infoframe.summaryheader,"BOTTOMLEFT",0,-BELOW_HEADER_PADDING)
		:SetWidth(contentwidth)	
		:SetFont(FONT,REG_TEXT_FONTSIZE)
		:SetJustifyH("LEFT")
		--:SetJustifyV("TOP")
		:SetWordWrap(true)
		:SetText("No Sum Text")
		:SetSpacing(LABEL_SPACING)
	.__END

	function infoframe:SetSummaryText(txt)
		self.summary:SetText(txt)
	end

	local function getSquareWithText(parent,sqname)
		local sq = CHAIN(ui:Create("SecFrame",parent,sqname))
			:SetSize(PRO_N_CON_SQUARE_SIZE,PRO_N_CON_SQUARE_SIZE)
			:CanDrag("parent")
		.__END

		sq.text = CHAIN(infoframe:CreateFontString())
			:SetPoint("LEFT",sq,"RIGHT",LABEL_HORT_PADDING,0)
			:SetWidth(contentwidth - PRO_N_CON_SQUARE_SIZE - LABEL_HORT_PADDING)
			:SetFont(FONT,REG_TEXT_FONTSIZE)
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetText("No Text")
		.__END

		function sq:SetText(txt)
			self.text:SetText(txt)
		end

		return sq
	end

	infoframe.proheader = CHAIN(infoframe:CreateFontString())
		:SetPoint("TOPLEFT",infoframe.summary,"BOTTOMLEFT",0,-SECTION_VERT_PADDING)
		:SetFont(FONTBOLD,HEADER_FONTSIZE)
		:SetText(ZGV_T("PROS"))
	.__END

	infoframe.proframe = CHAIN(CreateFrame("Frame", name.."Pros", infoframe))
		:SetPoint("TOPLEFT",infoframe.proheader,"BOTTOMLEFT",0,-BELOW_HEADER_PADDING)
		:SetSize(contentwidth,1)	-- Height changes with pros. 1 so that you can point off of it.
	.__END

	infoframe.pros = {}

	function infoframe:AddPro(text)
		local num = #self.pros

		local pro = CHAIN(getSquareWithText(self.proframe,self:GetName().."Pro"..num))
			:SetBackdropColor(unpack(PRO_SQ_COLOR))
			:SetText(text)
		.__END

		if num == 0 then
			pro:SetPoint("TOPLEFT")
		else
			pro:SetPoint("TOPLEFT",self.pros[num],"BOTTOMLEFT",0,-PRO_N_CON_VERT_PADDING)
		end

		self.proframe:SetHeight(self.proframe:GetTop() - pro:GetBottom())	-- This frame's height is the top to the last pro.

		tinsert(self.pros,pro)
	end
	
	infoframe.conheader = CHAIN(infoframe:CreateFontString())
		:SetPoint("TOPLEFT",infoframe.proframe,"BOTTOMLEFT",0,-SECTION_VERT_PADDING)
		:SetFont(FONTBOLD,HEADER_FONTSIZE)
		:SetText(ZGV_T("CONS"))
	.__END

	infoframe.conframe = CHAIN(CreateFrame("Frame", name.."Cons", infoframe))
		:SetPoint("TOPLEFT",infoframe.conheader,"BOTTOMLEFT",0,-BELOW_HEADER_PADDING)
		:SetSize(contentwidth,1)	-- Height changes with cons.  1 so that you can point off of it.
	.__END

	infoframe.cons = {}

	function infoframe:AddCon(text)
		local num = #self.cons

		local con = CHAIN(getSquareWithText(self.conframe,self:GetName().."Con"..num))
			:SetBackdropColor(unpack(CON_SQ_COLOR))
			:SetText(text)
		.__END

		if num == 0 then
			con:SetPoint("TOPLEFT")
		else
			con:SetPoint("TOPLEFT",self.cons[num],"BOTTOMLEFT",0,-PRO_N_CON_VERT_PADDING)
		end

		self.conframe:SetHeight(self.conframe:GetTop() - con:GetBottom())	-- This frame's height is the top to the last pro.

		tinsert(self.cons,con)
	end

	infoframe.diffheader = CHAIN(infoframe:CreateFontString())
		:SetPoint("TOPLEFT",infoframe.conframe,"BOTTOMLEFT",0,-SECTION_VERT_PADDING)
		:SetFont(FONTBOLD,HEADER_FONTSIZE)
		:SetText(ZGV_T("DIFFICULTY:"))
	.__END

	infoframe.diffbg = CHAIN(ui:Create("Frame",infoframe,name.."DiffBarBG"))
		:SetPoint("LEFT",infoframe.diffheader,"RIGHT",LABEL_HORT_PADDING,0)
		:SetBackdropColor(unpack(SkinData("TriBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("DarkBorder")))
		:SetSize(PROGRESS_BAR_WIDTH,PROGRESS_BAR_HEIGHT)
	.__END

	infoframe.difftex = CHAIN(infoframe.diffbg:CreateTexture())
		:SetPoint("TOPLEFT",infoframe.diffbg,"TOPLEFT",1,-1)
		:SetPoint("BOTTOMLEFT",infoframe.diffbg,"BOTTOMLEFT",1,1)
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetWidth(50)
	.__END
	
	-- Takes integers 0-100
	function infoframe:SetDiffBarPercent(num)
		assert(num >= 0 and num <= 100, "Num 0-100 pls")
		local color
	
		infoframe.difftex:SetWidth((num/100) * PROGRESS_BAR_WIDTH)

		if num < 50 then
			color = DIFF_COLOR_1	-- Green
		elseif num < 70 then
			color = DIFF_COLOR_2	-- Yellow
		else
			color = DIFF_COLOR_3	-- Red
		end

		infoframe.difftex:SetColorTexture(unpack(color))
	end

	infoframe.okbutton = CHAIN(ui:Create("Button",infoframe,name.."OkBut",2))
		:SetPoint("BOTTOM",infoframe,"BOTTOM",0,BUTTON_VERT_DIS)
		:SetSize(100,30)
		:SetText("OK")
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick",function(me)
			ZGV.db.global.gold_info_pages = false
			Goldguide:ToggleInfoPage()
		end)
	.__END

	return infoframe
end

function Goldguide:MakeInfoPages()
	local MF = Goldguide.MainFrame

	MF.Infopages = {}

	MF.Infopages.Farming = CHAIN(GetInfoFrame(MF.ContentFrame))
		:SetSummaryText(FARM_INFO_SUMMARY)
		:SetDiffBarPercent(FARM_INFO_DIFF_PERCENT)
		:Hide()
	.__END
	for i,con in ipairs(FARM_INFO_CONS) do MF.Infopages.Farming:AddCon(con) end
	for i,pro in ipairs(FARM_INFO_PROS) do MF.Infopages.Farming:AddPro(pro) end

	MF.Infopages.Gathering = CHAIN(GetInfoFrame(MF.ContentFrame))
		:SetSummaryText(GATHER_INFO_SUMMARY)
		:SetDiffBarPercent(GATHER_INFO_DIFF_PERCENT)
		:Hide()
	.__END
	for i,con in ipairs(GATHER_INFO_CONS) do MF.Infopages.Gathering:AddCon(con) end
	for i,pro in ipairs(GATHER_INFO_PROS) do MF.Infopages.Gathering:AddPro(pro) end

	MF.Infopages.Crafting = CHAIN(GetInfoFrame(MF.ContentFrame))
		:SetSummaryText(CRAFTING_INFO_SUMMARY)
		:SetDiffBarPercent(CRAFTING_INFO_DIFF_PERCENT)
		:Hide()
	.__END
	for i,con in ipairs(CRAFTING_INFO_CONS) do MF.Infopages.Crafting:AddCon(con) end
	for i,pro in ipairs(CRAFTING_INFO_PROS) do MF.Infopages.Crafting:AddPro(pro) end

	MF.Infopages.Auctions = CHAIN(GetInfoFrame(MF.ContentFrame))
		:SetSummaryText(AUCTION_INFO_SUMMARY)
		:SetDiffBarPercent(AUCTION_INFO_DIFF_PERCENT)
		:Hide()
	.__END
	for i,con in ipairs(AUCTION_INFO_CONS) do MF.Infopages.Auctions:AddCon(con) end
	for i,pro in ipairs(AUCTION_INFO_PROS) do MF.Infopages.Auctions:AddPro(pro) end
end
