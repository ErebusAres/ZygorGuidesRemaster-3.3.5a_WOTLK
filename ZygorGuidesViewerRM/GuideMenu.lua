local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Menu = {}
ZGV.Menu = Menu

-- This is the Guide Menu. Why is it STILL stuck inside a skin folder is beyond me.
-- I AM FREE!!  ~Guidemenu
-- I am taking on a new name, Guidemenu.

local L = ZGV.L

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local FR

local NUMLABELSBIG=20
local LABELSBIG_ONECOLUMN=6

local CHAIN = ZGV.ChainCall

local specialpaths = ZGV.GuideTitles --Declared in ZGV.lua so it can be used in registering guides

setmetatable(specialpaths,{__index=function(self,ind) return ind end})


local function ZGV_Menu_Scroll_Update(scroll)
	Menu:Refresh()
end

local function SetTextureBlock(tex,nh,nv,h,v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
end

local function SetIcon(self,nh,nv,h,v,sec,big)
	local icon = sec and self.iconover or self.icon
	if nh>0 then icon:Show() else icon:Hide() end
	icon:SetTexture(ZGV.DIR..(big and "\\Skins\\guideicons-big" or "\\Skins\\Default\\Stealth\\guideicons-small") )
	SetTextureBlock(icon,nh,nv,h,v)
end

local function AssignButtonTexture(obj,tx,num,total, disable4)
	obj:SetNormalTexture(tx) SetTextureBlock(obj:GetNormalTexture(),num,1,total,4)
	obj:SetPushedTexture(tx) SetTextureBlock(obj:GetPushedTexture(),num,2,total,4)
	obj:SetHighlightTexture(tx) SetTextureBlock(obj:GetHighlightTexture(),num,3,total,4)
	obj:SetDisabledTexture(tx) SetTextureBlock(obj:GetDisabledTexture(),num,disable4 and 4 or 1,total,4)
end

local function get_icon(path)
	if path:find("^LEVELING") then return 1,1,"Leveling"
	elseif path:find("^EVENTS") then return 2,1,"Events"
	elseif path:find("^DAILIES") then return 3,1,"Dailies"
	elseif path:find("^LOREMASTER") then return 4,1,"Loremaster"
	elseif path:find("^GOLD") then return 1,2,"Gold"
	elseif path:find("^PROFESSIONS") then return 2,2,"Professions"
	elseif path:find("^PETSMOUNTS") then return 3,2,"Pets & Mounts"
	elseif path:find("^ACHIEVEMENTS") then return 4,2,"Achievements"
	elseif path:find("^TITLES") then return 1,3,"Titles"
	elseif path:find("^REPUTATIONS") then return 2,3,"Reputations"
	elseif path:find("^MACROS") then return 3,3,"Macros"
	elseif path:find("^DUNGEONS") then return 4,3,"Dungeons"
	elseif path:find("^GEAR") then return 1,4,"Gear"
	else return 4,4
	end
end

local function ZGV_RecentButton_OnClick(self,click)
	if self and self.title then
		Menu:NavigateToGuide(self.title)
		--ZGV:SetGuide(self.guidenum)
		--Menu:Hide()
		--return
	end
end

local GuideStatusColor = {}
GuideStatusColor["SUGGESTED"]	= { r = 1.00, g = 0.80, b = 0.25,	font = GameFontNormalLeftYellow,	hex = "ffffcc40" }
GuideStatusColor["VALID"]	= { r = 0.25, g = 0.75, b = 0.25,	font = GameFontNormalLeftLightGreen,	hex = "ff40bf40"}
GuideStatusColor["COMPLETE"]	= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey,		hex = "ff808080"}
--GuideStatusColor["OLD"]	= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey,		hex = "ff808080"}
GuideStatusColor["INVALID"]	= { r = 0.90, g = 0.00, b = 0.00,	font = GameFontNormalLeftRed,		hex = "ffe60000"}
GuideStatusColor["HEADER"]	= { r = 1.00, g = 1.00, b = 1.00,	font = GameFontHighlightLeft,		hex = "ffffffff"}
GuideStatusColor["FOLDER"]	= { r = 1.00, g = 1.00, b = 1.00,	font = GameFontHighlightLeft,		hex = "ffffffff"}

setmetatable(GuideStatusColor,{__index=function() return { r = 1.00, g = 0.80, b = 0.25, font = GameFontNormalLeftYellow, hex = "ffcc40" } end})

function Menu:GetStatusColor(status)
	return GuideStatusColor[status]
end

local function ViewHome_Create()
	FR.ViewHome.Labels={}
	local s=12
	for i=1,NUMLABELSBIG do
		local but = CHAIN(CreateFrame("Button", FR:GetName() .. "_LabelsBig_"..i, FR.ViewHome))
			--:SetSize(310,60) :SetPoint("TOPLEFT",FR,"TOPLEFT",30+math.floor((i-1)/cols)*330,-90-((i-1)%cols)*65)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			--:SetHighlightTexture(ZGV.SkinDir.."selection")
			:SetScript("OnClick",ZGV_Menu_Button_OnClick)
			:SetFrameLevel(FR.ViewHome:GetFrameLevel()+1)
			:Enable()
		.__END
		but:GetHighlightTexture():SetAlpha(0.2)
		but:GetHighlightTexture():SetTexture(1.0,1.0,1.0)
		FR.ViewHome.Labels[i] = but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but,"LEFT",22,0) :SetSize(50,50)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		.__END

		but.label = CHAIN(but:CreateFontString()) :SetPoint("LEFT",but.icon,"RIGHT",5,0) :SetPoint("RIGHT")
			:SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,22)
			:SetTextColor(1.0,1.0,1.0)
			:SetText("blablabla "..i)
		.__END

		but.recentbut = CHAIN(CreateFrame("Button", but:GetName().."RecentButton", but))
			:SetSize(263,14)--This is a max size. Is reset later
			:SetScript("OnEnter",function(self) self.under:Show() but:LockHighlight() end)
			:SetScript("OnLeave",function(self) self.under:Hide() but:UnlockHighlight() end)
			:SetScript("OnClick",ZGV_RecentButton_OnClick)
			:SetFrameLevel(but:GetFrameLevel()+1)
			:Enable()
		.__END

		local recent=but.recentbut

		recent.text = CHAIN(recent:CreateFontString())
			:SetJustifyH("RIGHT") :SetJustifyV("CENTER")
			:SetFont(FONTBOLD,13)
			:SetTextColor(1.0,1.0,1.0)
			:SetText(L['guidepicker_recent'])
		.__END
		recent.label = CHAIN(recent:CreateFontString())
			:SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,14)
			:SetTextColor(0.9,0.4,0.1)
			:SetText("Last Guide..."..i)
		.__END

		recent.under= CHAIN(recent:CreateTexture()) :SetTexture(0.9,0.4,0.1,1.0) :SetPoint("BOTTOMLEFT",0,0) :SetPoint("BOTTOMRIGHT") :SetHeight(1) :Hide().__END

		recent:SetFontString(recent.label)
		but:SetFontString(but.label)
		but.SetIcon=SetIcon
	end
end

local function ViewList_Create()
	-- small buttons' scrollbar
	local VIEWLIST = FR.ViewList

	VIEWLIST.Labels={}
	local rows,cols = 16
	local ROWHEIGHT = 22
	for i=1,rows do
		local but
		but = CHAIN(CreateFrame("Button", FR:GetName() .. "_LabelsSmall_"..i, VIEWLIST))
			:SetPoint("TOPLEFT",FR,"TOPLEFT",0,-90-(i-1)*ROWHEIGHT) :SetPoint("TOPRIGHT",FR,"TOPLEFT",280,-90-(i-1)*ROWHEIGHT)
			:SetHeight(ROWHEIGHT)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",ZGV_Menu_Button_OnClick)
			:RegisterForClicks("AnyUp")
			:SetFrameLevel(5)
			:Enable()
		 .__END
		but:GetHighlightTexture():SetAlpha(0.2)
		but:GetHighlightTexture():SetTexture(1.0,1.0,1.0)
		VIEWLIST.Labels[i]=but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("LEFT",but,"LEFT",10,0) :SetSize(17,17) :SetDrawLayer("ARTWORK",0)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but.icon,"CENTER",3,-3) :SetSize(17,17) :SetDrawLayer("ARTWORK",1)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover.anim = CHAIN(but.iconover:CreateAnimationGroup()) :SetLooping("REPEAT") .__END
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(1.4,1.4) :SetDuration(0.5) :SetSmoothing("OUT")
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(0.7143,0.7143) :SetDuration(0.5) :SetSmoothing("IN")

		local show_completion = nil
		but.label = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPLEFT",22,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",show_completion and -70 or 0,0) :SetDrawLayer("ARTWORK")
			:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetFont(FONT,15) :SetTextColor(1.0,0.8,0.0)
			:SetText("blablabla tereferekuku blorpft"..i)
		 .__END
		but:SetFontString(but.label)

		but.complabel = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0) :SetDrawLayer("ARTWORK")
			:SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetFont(FONT,10) :SetTextColor(1.0,0.8,0.0)
			:SetText("0%")
		 .__END
		if not show_completion then but.complabel:Hide() end

		but.complabelover = CHAIN(CreateFrame("FRAME",nil,but)) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0)
			:SetScript("OnEnter",function(self)
				if not self.tip then return end
				GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")
				GameTooltip:ClearLines()
				GameTooltip:SetText(self.tip)
				GameTooltip:Show()
			 end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
			:Hide()
			--:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
		.__END

		but.back = CHAIN(but:CreateTexture()) :SetAllPoints() :SetDrawLayer("BACKGROUND")
			--:SetTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetTexture(1.0,0.8,0.0)
			--:SetBlendMode("ADD")
			:Hide()
		 .__END
		--but:SetNormalFontObject(GameFontNormalSmall)
		--but:SetHighlightFontObject(GameFontHighlightSmall)
		--but:GetFontString():SetPoint("LEFT",but,"LEFT",22,1)
		but.SetIcon=SetIcon

	end


	-- Oh crap. Here comes the scrollbar.

	local BARWIDTH=13
	local function MakeFlatScrolly(parent)
		parent.Bar = CHAIN(CreateFrame("Frame",parent:GetName().."_Bar",parent))
			:SetPoint("TOPLEFT",parent,"TOPRIGHT",0,0)
			:SetPoint("BOTTOMLEFT",parent,"BOTTOMRIGHT",0,0)
			:SetWidth(BARWIDTH)
		 .__END
		local Bar=parent.Bar

		Bar.Track = CHAIN(Bar:CreateTexture())  :SetDrawLayer("BACKGROUND",0)
			:SetAllPoints()
			:SetTexture(0.2,0.2,0.2)
		.__END

		Bar.Thumb = CHAIN(Bar:CreateTexture())  :SetDrawLayer("ARTWORK",1)
			:SetPoint("TOP",Bar,"TOP")
			:SetSize(13,20)
			:SetTexture(0.4,0.4,0.4)
		.__END

		Bar.SetValue = function(self,value)
			value=value or 0
			self.count = max(self.count or 1,1)
			self.window = max(self.window or 0,0)
			self.max_value = self.count-min(self.count,self.window)
			value=min(value,self.max_value)
			self.value = min(max(value,0),self.count-min(self.count,self.window))

			--print(max(value,0) , self.count-min(self.count,self.window))
			--self.Bar:SetMinMaxValues(max(value,0) , self.count-min(self.count,self.window))

			self:Refresh()
		end

		Bar.SetWindow = function(self,window)
			self.window = window
		end

		Bar.SetCount = function(self,count)
			self.count = count
		end

		Bar.Refresh = function(self)
			if self.count<=self.window then
				self.Thumb:SetHeight(self:GetHeight())
				self.Thumb:Hide()
				if self.HideWhenUseless then self:Hide() end
				self.thumb_top = nil
			else
				local h = self:GetHeight()
				local th = h * (self.window / self.count)

				self.Thumb:SetHeight(th)
				self.thumb_top = (h-th)*self.value/(self.count-self.window)
				self.Thumb:SetPoint("TOP",self,"TOP",0,-self.thumb_top)
				self.Thumb:Show()
				if self.HideWhenUseless then self:Show() end
			end

			--print("Scrolled to ",self.value," of ",self.count," with window ",self.window)
		end

		Bar:EnableMouse()
		Bar:SetScript("OnMouseDown",function(self,but)
			local x,y = GetCursorPosition()
			y=y/UIParent:GetScale()
			self.button_down = but
			--print(but)

			y = self:GetTop()-y  -- normalize: 0=top, ~666=bottom
			if self.thumb_top then
				self.mouse_y = y
				y = y - self.thumb_top
				if y>=0 and y<=self.Thumb:GetHeight() then
					-- we're on the thumb, cool
					--self.thumb_offset = y
					--print("in",self.thumb_offset)
					self.value_normalized = self.value/self.max_value
				end
			end
		end)
		Bar:SetScript("OnMouseUp",function(self,but)
			self.button_down=false
			self.value_normalized = nil
			--print("up")
		end)
		Bar:SetScript("OnUpdate",function(self)
			if self.button_down and IsMouseButtonDown(self.button_down) then
				local x,y = GetCursorPosition()
				y=y/UIParent:GetScale()
				if y~=self.last_y and self.value_normalized then
					self.last_y=y

					y = self:GetTop()-y  -- normalize: 0=top, ~666=bottom

					--local new_thumb_top = self.thumb_top + y-self.mouse_y-self.thumb_offset
					--print("new top", new_thumb_top)
					--self:SetValue(floor(new_thumb_top / (self:GetHeight()-self.Thumb:GetHeight())))
					local dist = (y-self.mouse_y) / (self:GetHeight()-self.Thumb:GetHeight())  -- -1..0..+1 of scrollage
					--print("dist",dist)
					self:SetValue(math.round((self.value_normalized+dist)*self.max_value))
					--print("val",math.round((self.value_normalized+dist)*self.max_value))
					self:ValueChanged() -- pass it back
				end
			else
				self.button_down=false
			end
		end)

		Bar:SetValue(0)
	 end

	VIEWLIST.Scroll = CHAIN(CreateFrame("ScrollFrame",VIEWLIST:GetName().."_Scroll",VIEWLIST,nil))
		:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",0,0) :SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMLEFT",280,0)
		:EnableMouseWheel()
		--:SetScript("OnVerticalScroll",function(self,offset) FauxScrollFrame_OnVerticalScroll(self, offset, rows, ZGV_Menu_Scroll_Update) end)
		:SetScript("OnMousewheel",ZGV_Menu_OnMousewheel)
	 .__END
	MakeFlatScrolly(VIEWLIST.Scroll)

	VIEWLIST.Scroll.Bar:SetWindow(16)
	VIEWLIST.Scroll.Bar.ValueChanged = function(self) Menu:Refresh() end




	--[[
		VIEWLIST.Scroll = CHAIN(CreateFrame("ScrollFrame",VIEWLIST:GetName().."_Scroll",VIEWLIST,"FauxScrollFrameTemplateLight"))
			:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",0,0) :SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMLEFT",275,0)
			:EnableMouseWheel()
			:SetScript("OnVerticalScroll",function(self,offset) FauxScrollFrame_OnVerticalScroll(self, offset, rows, ZGV_Menu_Scroll_Update) end)
			:SetScript("OnMousewheel",ZGV_Menu_OnMousewheel)
		 .__END
		VIEWLIST.Scroll.ScrollBar = _G[VIEWLIST.Scroll:GetName().."ScrollBar"]
		CHAIN(VIEWLIST.Scroll.ScrollBar:CreateTexture("BACKGROUND")) :SetTexture(0.3,0.3,0.3,1.0) :SetPoint("TOPLEFT",VIEWLIST.Scroll.ScrollBar,"TOPLEFT") :SetPoint("BOTTOMRIGHT",VIEWLIST.Scroll.ScrollBar,"BOTTOMRIGHT")
		local n=VIEWLIST.Scroll:GetName()
		_G[n.."ScrollBarThumbTexture"]:SetSize(12,30)
		_G[n.."ScrollBarThumbTexture"]:SetTexture(0.5,0.5,0.5)
		_G[n.."ScrollBarScrollUpButton"]:SetSize(1,1) -- they're 18x16 by default now, the silly things.
		_G[n.."ScrollBarScrollDownButton"]:SetSize(1,1)
		--AssignButtonTexture(_G[n.."ScrollBarScrollUpButton"],ZGV.SkinDir.."titlebuttons",7,16)
		--AssignButtonTexture(_G[n.."ScrollBarScrollDownButton"],ZGV.SkinDir.."titlebuttons",8,16)

		VIEWLIST.Divider = CHAIN(VIEWLIST:CreateTexture())
			:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",280,0)
			:SetPoint("BOTTOMLEFT",VIEWLIST,"BOTTOMLEFT",280,0)
			:SetWidth(13)
			:SetTexture(0.2,0.2,0.2)
		.__END


		VIEWLIST.GuideTitlePre = CHAIN(VIEWLIST:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",300,-10) :SetPoint("TOPRIGHT",VIEWLIST,"TOPRIGHT",-15,-10)
			:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(13)
			:SetText("") :SetTextColor(0.8,0.8,0.7)

			:SetHeight(1)
		 .__END

		VIEWLIST.GuideTitleBack = CHAIN(CreateFrame("Frame",nil,VIEWLIST))
			:SetPoint("TOPLEFT",VIEWLIST.GuideTitle,"TOPLEFT",-5,2) :SetPoint("BOTTOMRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",5,0)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
			:SetFrameLevel(1)
		 .__END

		VIEWLIST.GuideStatusPre = CHAIN(VIEWLIST:CreateFontString())
			:SetPoint("TOPLEFT",VIEWLIST,"TOPRIGHT",-95,-35) :SetPoint("TOPRIGHT",VIEWLIST,"TOPRIGHT",-15,-35)
			:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(1) :SetFont(FONT,13)
			:SetText("") :SetTextColor(0.8,0.8,0.7)
		 .__END

		VIEWLIST.GuideStatus = CHAIN(VIEWLIST:CreateFontString())
			:SetPoint("TOPLEFT",VIEWLIST.GuideStatusPre,"BOTTOMLEFT",0,-1) :SetPoint("TOPRIGHT",VIEWLIST.GuideStatusPre,"BOTTOMRIGHT",0,-1)
			:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(16) :SetFont(FONT,16)
		 .__END

		VIEWLIST.GuideStatusBack = CHAIN(CreateFrame("Frame",nil,VIEWLIST))
			:SetPoint("TOPLEFT",VIEWLIST.GuideStatus,"TOPLEFT",-5,2) :SetPoint("BOTTOMRIGHT",VIEWLIST.GuideStatus,"BOTTOMRIGHT",5,0)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
			:SetFrameLevel(1)
			:SetScript("OnEnter",function(self)
				if not VIEWLIST.GuideStatus.tip then return end
				GameTooltip:SetOwner(self,"ANCHOR_TOP")
				GameTooltip:ClearLines()
				GameTooltip:SetText(VIEWLIST.GuideStatus.tip)
				GameTooltip:Show()
			  end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		 .__END

		VIEWLIST.GuideDataPre = CHAIN(VIEWLIST:CreateFontString())
			:SetPoint("TOPLEFT",VIEWLIST.GuideTitle,"BOTTOMLEFT",0,-5) :SetPoint("TOPRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",0,-5)
			:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(13) :SetFont(FONT,13)
			:SetText("Guide Details:") :SetTextColor(0.8,0.8,0.7)
		 .__END
	--]]

	VIEWLIST.GuideTitle = CHAIN(VIEWLIST:CreateFontString())
		:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",300,-10) :SetPoint("TOPRIGHT",VIEWLIST,"TOPRIGHT",-15,-10)
		:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(16)
		:SetFont(FONT,17)
	 .__END

	VIEWLIST.GuideScroll = CHAIN(CreateFrame("ScrollFrame",FR:GetName().."_GuideScroll",VIEWLIST))
		:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",300,-30)
		:SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMRIGHT",-15,30)
		:EnableMouseWheel()
		:SetScript("OnVerticalScroll",function(self,offset) self.Bar:SetCount(floor(self.Child:GetHeight())) self.Bar:SetWindow(floor(self:GetHeight())) self.Bar:SetValue(floor(self:GetVerticalScroll())) end)
		:SetScript("OnMousewheel",function(self,delta) local sc=self:GetVerticalScroll() - 20 * delta   sc=max(0,min(sc,max(0,self.Child:GetHeight()-self:GetHeight())))  self:SetVerticalScroll(sc) end)
	 .__END
	--VIEWLIST.GuideScroll.ScrollBar.scrollStep = 50
	--ScrollFrame_OnLoad(VIEWLIST.GuideScroll)
	--ScrollFrame_OnScrollRangeChanged(VIEWLIST.GuideScroll)
	--VIEWLIST.GuideScroll.ScrollBar:Hide()
	--VIEWLIST.GuideScroll:GetRegions()[1]:Hide()
	MakeFlatScrolly(VIEWLIST.GuideScroll)  VIEWLIST.GuideScroll.Bar.HideWhenUseless=true
	VIEWLIST.GuideScroll.Bar.ValueChanged = function(self) VIEWLIST.GuideScroll:SetVerticalScroll(self.value) end

	VIEWLIST.GuideScroll.Child = CHAIN(CreateFrame("Frame",VIEWLIST.GuideScroll:GetName().."_Child"))
		:SetPoint("TOPLEFT") :SetPoint("TOPRIGHT")
	 .__END
	VIEWLIST.GuideScroll:SetScrollChild(VIEWLIST.GuideScroll.Child)

	VIEWLIST.GuideData = CHAIN(VIEWLIST.GuideScroll.Child:CreateFontString())
		--:SetPoint("TOPLEFT",VIEWLIST.GuideDataHeader,"BOTTOMLEFT") :SetPoint("TOPRIGHT",VIEWLIST.GuideDataHeader,"BOTTOMRIGHT")
		:SetPoint("TOPLEFT") :SetPoint("BOTTOMRIGHT")
		:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetWidth(150)
		:SetFont(FONT,12)
	 .__END

	VIEWLIST.GRAPHICHEADERHEIGHT=200

	VIEWLIST.GuidePercentage = CHAIN(VIEWLIST.GuideScroll.Child:CreateFontString())
		:SetPoint("TOPLEFT",VIEWLIST.GuideData,"BOTTOMLEFT",0,-3) :SetPoint("BOTTOMRIGHT")
		:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetWidth(150)
		:SetFont(FONTBOLD,12)
	 .__END

	VIEWLIST.GuideModel = CHAIN(CreateFrame("PlayerModel",VIEWLIST:GetName().."_GuideModel",VIEWLIST.GuideScroll,"ZygorGuidesViewerPlayerModel"))
		:SetPoint("TOPLEFT")
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
		:SetAutoRotation(0.4)
		:SetSize(VIEWLIST.GRAPHICHEADERHEIGHT,VIEWLIST.GRAPHICHEADERHEIGHT)
	 .__END
	-- IMPORTANT: Model will NOT SCROLL. This is totally broken on Blizzard's end. So, model stays in the GuideScroll box (NOT in the GuideScroll.Child container) and the scrollable area is made NON-scrollable for pets.

	VIEWLIST.GuideImage = CHAIN(VIEWLIST.GuideScroll.Child:CreateTexture("ARTWORK"))
		:SetPoint("TOPLEFT")
		:SetSize(VIEWLIST.GRAPHICHEADERHEIGHT*2,VIEWLIST.GRAPHICHEADERHEIGHT)
	.__END

	VIEWLIST.GuideMacro = CHAIN(CreateFrame("Button","MacroTest",VIEWLIST,"ActionButtonTemplate"))
		:SetPoint("TOPLEFT",VIEWLIST,"TOPRIGHT",-55,-305) :SetPoint("BOTTOMRIGHT",VIEWLIST,"TOPRIGHT",-10,-350)
		:SetFrameLevel(1)
	.__END
	ZGV.MacroGuideProto.ActionButtonPrepare(VIEWLIST.GuideMacro,function() Menu:Refresh() end)

 -- 	VIEWLIST.GuideMacro.cooldown=CreateFrame("Cooldown",nil,VIEWLIST.GuideMacro,"CooldownFrameTemplate")

	VIEWLIST.ViewInFolderButton = CHAIN(CreateFrame("Button", nil, VIEWLIST))
		:SetPoint("TOPLEFT",VIEWLIST.GuideScroll,"BOTTOMLEFT",0,-5)--,VIEWLIST,"BOTTOMLEFT",310,-40)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0.3,0.3,0.3)
		:SetSize(150,20)
		:SetText(L['guidepicker_button_viewinfolder']:upper())
		:RegisterForClicks("LeftButtonUp")
		:SetAttribute("tooltip",L['guidepicker_button_viewinfolder_desc'])
		:SetScript("OnClick",function(self) Menu:NavigateToGuide(Menu.selectedguide.title) end)
		:Disable()
	 .__END
	VIEWLIST.ViewInFolderButton:GetFontString():SetFont(FONTBOLD,14) --this isn't compatible with ChainCall ~aprotas    -- No, it isn't :) ~sinus


	VIEWLIST.OKButton = CHAIN(CreateFrame("Button", "testing", VIEWLIST))
		:SetPoint("TOPRIGHT",VIEWLIST.GuideScroll,"BOTTOMRIGHT",-10,-5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0.3,0.3,0.3)
		:SetSize(80,20)
		:SetText(ACCEPT:upper())
		:RegisterForClicks("LeftButtonUp")
		:SetAttribute("tooltip",L['guidepicker_button_ok_desc'])
		:SetScript("OnClick",ZGV_Menu_OKButton_OnClick)
	 .__END
	VIEWLIST.OKButton:GetFontString():SetFont(FONTBOLD,14)

	VIEWLIST.MacroButton = CHAIN(CreateFrame("Button", nil, VIEWLIST, "ZygorGuidesViewer_Default_Button"))
		:SetPoint("BOTTOMLEFT",VIEWLIST,"BOTTOMLEFT",410,-40)
		:SetSize(80,20)
		:SetText(L['guidepicker_button_macro_add'])
		:SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
		:SetScript("OnClick",ZGV_Menu_MacroButton_OnClick)
	 .__END
	VIEWLIST.MacroButton.UpdateDisplay=function(self) ZGV_Menu_MacroButton_UpdateDisplay(self) end

	VIEWLIST.BarMacroButton = CHAIN(CreateFrame("Button", nil, VIEWLIST, "ZygorGuidesViewer_Default_Button"))
		:SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMRIGHT",-100,-40)
		:SetSize(120,20)
		:SetText(L['guidepicker_button_macro_bar'])
		:SetAttribute("tooltip",L['guidepicker_button_macro_bar_desc'])
		:SetScript("OnClick",ZGV_Menu_BarMacroButton_OnClick)
	 .__END
end

function ViewList_Show(path,flatgroup)
	local VIEWLIST = FR.ViewList

	if not path then path=Menu.path end



	local buts = VIEWLIST.Labels

	-------------------------------
	-- DISPLAY THE LIST
	-------------------------------

	-- fill in data
	local but_offset = 0   -- to account for spacings; buttons do NOT correspond to items perfectly one-to-one anymore.
	local 	HEADER_PREPENDED

	for i=1,#buts do
		--local offset = FauxScrollFrame_GetOffset(VIEWLIST.Scroll)
		local offset = VIEWLIST.Scroll.Bar.value
		local g = Menu.flatgroup[offset+i-but_offset]

		local but = buts[i]

		local ROWHEIGHT = 22

		if path~="SUGGESTED" and Menu.suggestedpoint then
			but:ClearAllPoints()
			but:SetPoint("TOPLEFT",FR,"TOPLEFT",0,-90-(i-1)*ROWHEIGHT)  but:SetPoint("TOPRIGHT",FR,"TOPLEFT",280,-90-(i-1)*ROWHEIGHT)
		elseif path=="SUGGESTED" and not Menu.suggestedpoint then
			but:ClearAllPoints()
			but:SetPoint("TOPLEFT",FR,"TOPLEFT",0,-60-(i-1)*ROWHEIGHT)  but:SetPoint("TOPRIGHT",FR,"TOPLEFT",280,-60-(i-1)*ROWHEIGHT)
		end

		if g then
			but.icon:Hide()

			if g.header then
				-- TODO: this simulates a header!
				if not HEADER_PREPENDED and g~=Menu.flatgroup[offset+1] then

					but_offset = but_offset+1
					but:Hide()
					HEADER_PREPENDED=true
				else
					but:SetText(specialpaths[g.header or g.name or g.title_short]:upper())  -- only the header counts, leaving name and title just for kicks

					local x,y = get_icon(g.header)
					if x then
						but:SetIcon(x,y,4,4,false,true)
						but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)
						but.icon:Show()
					else
						but.label:SetPoint("TOPLEFT",but,"TOPLEFT",2,2)
						but.icon:Hide()
					end

					but.target=nil
					but.isguide=nil

					but:EnableMouse(false)
					but.label:SetFont(FONTBOLD,14)

					but.iconover:Hide()
					but.complabel:Hide()

					but.back:Hide()
					local statuscolor = GuideStatusColor["HEADER"]
					but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)

					but:Show()

					HEADER_PREPENDED=nil
				end

			-- groups have names. guides have titles. go figure.
			elseif g.name then
				-- group
				but:SetText(specialpaths[g.name])
				but.target = (Menu.path and Menu.path.."\\" or "")..g.name
				but.isguide=nil

				but:EnableMouse(true)
				but.label:SetFont(FONT,13)
				but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)

				but:SetIcon(1,1,2,2)
				local suggest = ZGV:GetGuideFolderInfo(g)
				if suggest then
					but:SetIcon(1,2,2,2,true)
					but.iconover.anim:Play()
				else
					but:SetIcon(0,0,2,2,true)
				end
				--but.icon:Show()
				but.complabel:SetText()
				but.complabelover.tip = nil

				but.back:Hide()
				local statuscolor = GuideStatusColor["FOLDER"]
				but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)

				--but:GetFontString():SetTextColor(1,0.8,0)
				but:Show()

			elseif g.title then
				-- guide
				if Menu.path=="RECENT" then
					but:SetText(("%s, step %d"):format(g.title_short or "",g.CurrentStepNum or 1))
				else
					but:SetText(g.title_short or "")
				end
				but.target = g.title or ""
				but.isguide=true

				but:EnableMouse(true)
				but.label:SetFont(FONT,13)
				but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)

				if not g.icon then
					but:SetIcon(2,1,2,2)
				end
				local status = g.GetStatus and g:GetStatus()
				if status=="SUGGESTED" then
					but:SetIcon(1,2,2,2,true)
					but.iconover.anim:Play()
				else
					but:SetIcon(0,0,2,2,true)
				end
				but.icon:Show()

				local statuscolor = GuideStatusColor[status] or {r=1,g=1,b=1}
				if Menu.selectedguide and g.title==Menu.selectedguide.title then
					but.back:Show()
					local mult = 0.7
					but.back:SetTexture(statuscolor.r*mult,statuscolor.g*mult,statuscolor.b*mult)
					but.label:SetTextColor(1,1,1)
				else
					but.back:Hide()
					but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)
				end

				local text,tip = g:GetCompletionText()
				but.complabel:SetText(text)
				but.complabelover.tip = tip
				but:Show()
				--but:GetFontString():SetTextColor(1,1,1)
			else
				but:Hide()
			end
		else
			but:Hide()
		end
	end

	if not path or (path and path~="SUGGESTED") then --Change the color of the headers. and set our
		FR.GuidesButton.label:SetTextColor(1.0,1.0,1.0)
		FR.SuggestButton.label:SetTextColor(0.4,0.4,0.4)
		Menu.suggestedpoint=nil
	else
		Menu.suggestedpoint=true
	end

	VIEWLIST.Scroll:ShowIf(Menu.path)
	--FR.Scroll:EnableIf(#Menu.flatgroup>10)

	if Menu.path then
		--FauxScrollFrame_Update(VIEWLIST.Scroll, #Menu.flatgroup, 10, 10)
	end

	-------------------------------
	-- DISPLAY THE GUIDE
	-------------------------------

	if Menu.selectedguide then
		local g = Menu.selectedguide
		VIEWLIST.GuideTitle:SetText(g.title_short)

		local s=""
		if g.startlevel and g.startlevel>0 then
			if g.endlevel and g.endlevel>0 then
				s = s .. "|cffffeebbLevels:|r ".. ZGV.FormatLevel(g.startlevel) .." to ".. ZGV.FormatLevel(g.endlevel) .. "\n"
			else
				s = s .. "|cffffeebbRequired level:|r ".. ZGV.FormatLevel(g.startlevel) .."\n"
			end
		else
			if g.endlevel and g.endlevel>0 then s = s .. "|cffffeebbEnding level:|r ".. ZGV.FormatLevel(g.endlevel) .."\n" end
		end
		if g.next then s = s .. "|cffffeebbNext guide:|r ".. g.next:match(".+\\(.-)$") .."\n" end

		s = s .. "\n"
		local status,msg = g:GetStatus()
		local color = GuideStatusColor[status]
		if status=="COMPLETE" and g.type=="LEVELING" then status=status.."_lev" end
		-- s = s .. ("|cffffeebbGuide status:|r |cff%02x%02x%02x%s|r %s\n"):format(color.r*255,color.g*255,color.b*255, L['guidepicker_status_'..status] , msg and #msg>0 and "("..msg..")" or "") -- TODO: show status properly! Conditional? Or what?

		local complete,cur,tot = g:GetCompletion()
		if complete~="loading" then
			if complete then
				if g.completionmode=="quests" then
					if g.type=="DAILIES" then
						local qmin,qsome,qmax = unpack(g.completionparams)
						qmin=tonumber(qmin)
						qsome=tonumber(qsome)
						qmax=tonumber(qmax)
						if not qmin then
							s = s .. ("|cffffeebbComplete:|r %d/%d quests\n"):format(cur,tot)
						elseif cur<qmin then
							s = s .. ("|cffffeebbDailies not started yet|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<qsome then
							s = s .. ("|cffffeebbToday: not done|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<qmax then
							s = s .. ("|cffffeebbToday: done partially|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<=tot then
							s = s .. ("|cffffeebbToday: done?|r (%d/%d quests)\n"):format(cur,tot)
						end
					else
						s = s .. ("|cffffeebbComplete:|r %d/%d quests\n"):format(cur,tot)
					end
				end
			end
		end

		s = s .. "\n"

		s = s .. (Menu.selectedguide.description or "")

		if g.macro then s = s.."\n\n"..L['guidepicker_macro_code'].."\n"..g.macro.body end

		CHAIN(VIEWLIST.GuideData)
			:SetText(s)
			:ClearAllPoints() :SetPoint("TOPLEFT",VIEWLIST.GuideScroll.Child) :SetPoint("TOPRIGHT",VIEWLIST.GuideScroll.Child)
			:SetWidth(VIEWLIST.GuideScroll:GetWidth()) -- I think it's a bug in default UI: doing SetPoint doesn't update StringHeight ~aprotas

		VIEWLIST.GuideScroll.Child:SetSize(VIEWLIST.GuideScroll:GetWidth(),VIEWLIST.GuideData:GetHeight() + ((g.model or g.image) and 203 or 0) + 10)

		VIEWLIST.GuideScroll:SetVerticalScroll(0)
		VIEWLIST.GuideScroll:Show()

		if g.type~="MACRO" then -- TODO make all this a function not to duplicate code?
			VIEWLIST.OKButton:Enable()
			VIEWLIST.OKButton:Show()
			--VIEWLIST.GuideTitleBack:SetPoint("BOTTOMRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",5,0)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-95,-305)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-15,-305)
			VIEWLIST.GuideMacro:Hide()
			VIEWLIST.MacroButton:Hide()
			VIEWLIST.BarMacroButton:Hide()
			VIEWLIST.GuideMacro:ClearMacro()
		else
			VIEWLIST.OKButton:Disable()
			VIEWLIST.OKButton:Hide()
			--VIEWLIST.GuideTitleBack:SetPoint("BOTTOMRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",-47,0) -- TODO do we need to support LONG titles?
			--VIEWLIST.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-147,-305)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-67,-305)

			VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)

			VIEWLIST.GuideMacro:SetMacro(g.macro)
			if not g.macro.updateHandlers[FR] then
				g.macro.updateHandlers[FR]=function()
					VIEWLIST.MacroButton:UpdateDisplay()
					Menu:Refresh()
				end
			end
			VIEWLIST.GuideMacro:Show()
			VIEWLIST.MacroButton:UpdateDisplay()
			VIEWLIST.MacroButton:Show()
			VIEWLIST.BarMacroButton:Show()
		end

		if g.model or g.image then
			--VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)
			-- WARNING as of writing both GuideImage and GuideModel are of the same height so
			-- there's no difference on which to attach. This might change, however.
			VIEWLIST.GuideData:SetPoint("TOPLEFT",VIEWLIST.GuideScroll.Child,"TOPLEFT",0,-203)
			if g.model then
				VIEWLIST.GuideModel:Show()
				VIEWLIST.GuideModel:ClearModel()
				VIEWLIST.GuideModel:SetModels(g.model)
				VIEWLIST.GuideModel:SetSlideshow(5)
				VIEWLIST.GuideImage:Hide()
			elseif g.image then
				VIEWLIST.GuideImage:SetTexture(g.image)
				VIEWLIST.GuideImage:Show()
				VIEWLIST.GuideModel:Hide()
			end
		else
			--VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
			VIEWLIST.GuideData:SetPoint("TOPLEFT",VIEWLIST.GuideScroll.Child,"TOPLEFT",0,-3)
			VIEWLIST.GuideImage:Hide()
			VIEWLIST.GuideModel:Hide()
		end
	else
		VIEWLIST.GuideTitle:SetText("")
		--VIEWLIST.GuideStatus:SetText("")
		--VIEWLIST.GuideStatus.tip=nil
		VIEWLIST.GuideData:SetText("")
		VIEWLIST.OKButton:Disable()
		VIEWLIST.GuideScroll:Hide()

		VIEWLIST.GuideImage:Hide()
		VIEWLIST.GuideModel:Hide()

		-- In case a macro hid/mangled them
		VIEWLIST.OKButton:Show()
		VIEWLIST.GuideMacro:Hide()
		VIEWLIST.MacroButton:Hide()
		VIEWLIST.BarMacroButton:Hide()
	end

	VIEWLIST.ViewInFolderButton:EnableIf((Menu.path=="SUGGESTED" or Menu.path=="RECENT" or Menu.path=="SEARCH") and Menu.selectedguide)

	VIEWLIST.ViewInFolderButton:ShowIf(VIEWLIST.ViewInFolderButton:IsEnabled())
	VIEWLIST.OKButton:ShowIf(VIEWLIST.OKButton:IsEnabled())

	VIEWLIST.GuideScroll:SetVerticalScroll(1)
	VIEWLIST.GuideScroll:SetVerticalScroll(0)  -- enforce an OnVerticalScroll event, uglyyy

	VIEWLIST:Show()
end

function ViewHome_Show(path,flatgroup)
	local VIEWHOME = FR.ViewHome

	if not Menu.path or (Menu.path and Menu.path~="SUGGESTED") then
		FR.GuidesButton.label:SetTextColor(1.0,1.0,1.0)
		FR.SuggestButton.label:SetTextColor(0.4,0.4,0.4)
	end

	local buts = VIEWHOME.Labels

	-- fill in data
	for i=1,#buts do
		local g = Menu.flatgroup[i]
		local but = buts[i]

		-- groups have names. guides have titles. go figure.
		if g and g.name and g.name~="SUGGESTED" then
			-- group
			local name=specialpaths[g.name]
			but:SetText(name)
			but.target = (Menu.path and Menu.path.."\\" or "") .. g.name
			but.isguide=nil


			local recent = ZGV:GetGuidesHistory(g.name)
			local title,num

			if recent then
				for i,j in pairs(recent) do
					_,title=j.title:match("^(.*)\\+(.-)$")
					num=j.num

					if title and num then
						but.recentbut.label:SetText(title)
						but.recentbut.guidenum=num
						but.recentbut.title=j.title
						local textlength=but.recentbut.label:GetStringWidth()
						if textlength>240 then textlength=240 end
						but.recentbut:SetWidth(textlength+3) -- 3 is extra space
						but.recentbut:Show()
					else
						ZGV:Print("Recent guide does not have a title or a number with it. How?")
					end

				end
			else
				but.recentbut:Hide()
			end


			local x,y = get_icon(g.name)
			if x then but:SetIcon(x,y,4,4,false,true) end

			--but:GetFontString():SetTextColor(1,0.8,0)
			but:Show()
		else
			-- Make sure this button doesn't get displayed
			Menu.flatgroup[i] = nil
		end
	end

	-- reposition big labels
	local yspan=VIEWHOME:GetHeight() --350
	local xspan=VIEWHOME:GetWidth() --750
	local columnbreak

	for i=1,NUMLABELSBIG do buts[i]:ClearAllPoints() end

	columnbreak = max(6,ceil(#Menu.flatgroup/2)) -- break after 6 items have been added or more if needed.
	yspan = yspan/columnbreak --Needs adjusted slightly every time the main Viewer changes size.

	for i=1,#buts do
		local but = buts[i]

		if i<=#Menu.flatgroup then
			local xcolumn=math.floor((i-1)/columnbreak) -- 0 or 1
			local xoffset=(xspan/2)*xcolumn
			local yrow=(i-1)%columnbreak --0 -> columnbreak-1
			local yoffset=yspan*yrow
			local iconsize=yspan*0.6

			but:SetPoint("TOPLEFT",VIEWHOME,"TOPLEFT",xoffset,-yoffset)
			but:SetSize(xspan/2,yspan*1.02) -- Just a little overlap.

			but.label:ClearAllPoints()
			but.label:SetPoint("LEFT",but.icon,"TOPRIGHT",xspan/100,-yspan/10)

			but.recentbut.text:SetPoint("LEFT",but.icon,"BOTTOMRIGHT",xspan/100,yspan/10)
			but.recentbut:SetPoint("LEFT",but.recentbut.text,"RIGHT",3,0)
			but.recentbut.label:SetPoint("LEFT",but.recentbut,"LEFT",0,0)
			but.recentbut.label:SetSize(xspan/2-(iconsize+yspan/10+but.recentbut.text:GetWidth()+30),10)

			for fontsize=3,4,5 do
				but.label:SetFont(FONT,yspan/fontsize)
				local wid = but.label:GetWidth()
				if wid<but:GetWidth()-(iconsize+yspan/4) then break end -- if label is longer than but width then make font smaller.
			end

			but.label:SetPoint("RIGHT")
			but.icon:SetSize(iconsize,iconsize)
			but.icon:SetPoint("CENTER",but,"LEFT",xspan/20,0)
			but:Show()
		else
			but:Hide()
		end
	end

	VIEWHOME:Show()
end

function Menu:CreateFrame()
	if FR then return FR end
	if InCombatLockdown() then return end

	FR = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_GuideMenu", UIParent, ""))
		:SetSize(750,500) :SetPoint("CENTER",UIParent,"CENTER",25,0)
		--:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-08", tile = true, edgeSize=20, tileSize = 128, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
		--:SetBackdropBorderColor(0,0,0,1.0)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0,0,0,1.0)
		:SetFrameStrata("DIALOG")
		:SetClampedToScreen(true)
		:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:Hide()
	.__END
	self.Frame = FR

	-- Scaling animation SUCKS when backdrops are concerned. Sucky suckage of suckness, really.

	--[[
		local size=0.95
		local s = FR.showanimgr:CreateAnimation("Scale")
		s:SetScale(1/size,1/size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")

		FR.showanimgr = FR:CreateAnimationGroup()
		local s = FR.showanimgr:CreateAnimation("Animation")
		s:SetScript("OnUpdate",function(self)  print("a") FR:SetScale(size+(1-size)*self:GetSmoothProgress())  FR:SetAlpha(self:GetSmoothProgress()) end)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
		FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  FR:SetScale(size)  end)
		FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  FR:SetScale(1) end)

		local s = FR.hideanimgr:CreateAnimation("Scale")
		s:SetScale(size,size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
	--]]

	FR.showanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.showanimgr:CreateAnimation("Alpha")) :SetChange(1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  end)
	FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  end)

	FR.hideanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.hideanimgr:CreateAnimation("Alpha")) :SetChange(-1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.hideanimgr:SetScript("OnPlay",function(self)  local p = FR  p:SetAlpha(1)  end)
	FR.hideanimgr:SetScript("OnFinished",function(self)  local p = FR  p:Hide()  end)


	FR.Logo = CHAIN(FR:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygorlogo2") :SetSize(100,100/4) :SetPoint("BOTTOMLEFT",FR,"BOTTOMLEFT",0,25).__END
	--FR.TitleBarSep = CHAIN(FR:CreateTexture()) :SetTexture(0.9,0.4,0.1,1.0) :SetPoint("TOPLEFT",FR.Logo,"BOTTOMLEFT",15,4) :SetSize(80,2)
	FR.Version = CHAIN(FR:CreateFontString()) :SetPoint("TOPLEFT",FR.Logo,"BOTTOMLEFT",10,0) :SetJustifyH("LEFT") :SetJustifyV("TOP")
	:SetFont(FONTBOLD,12)  :SetText("VER:").__END
	FR.VersionNum = CHAIN(FR:CreateFontString()) :SetPoint("LEFT",FR.Version,"RIGHT",3,0) :SetJustifyH("LEFT") :SetJustifyV("CENTER")
	:SetFont(FONT,12)  :SetText(ZGV.version)



	FR.CloseButton = CHAIN(CreateFrame("Button", nil, FR, nil)) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-5,-5) :SetSize(20,20) :SetScript("OnClick",function() Menu:Hide() end) .__END
	AssignButtonTexture(FR.CloseButton,ZGV.SkinDir.."titlebuttons",6,16)

	FR.GuidesButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Guides", FR)) :SetPoint("TOPLEFT",FR,"TOPLEFT",10,-10) :SetSize(80,40)
		:SetScript("OnClick",function() Menu:NavigateTo() end)
	.__END

	FR.GuidesButton.label = CHAIN(FR.GuidesButton:CreateFontString())
		:SetFont(FONT,25) :SetTextColor(0.4,0.4,0.4)
		:SetText(L['guidepicker_button_guides'])
	 .__END

	 FR.GuidesButton:SetFontString(FR.GuidesButton.label)


	--[[ --This is getting moved to each individual guide type.
	FR.RecentButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Recent", FR, "ZygorGuidesViewer_Default_Button")) :SetPoint("LEFT",FR.GuidesButton,"RIGHT",5,0)	:SetSize(60,20)
		:SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }})  :SetBackdropBorderColor(1,1,1,0)
		:SetText(L['guidepicker_button_recent'])
		:SetAttribute("tooltip",L['guidepicker_button_recent_desc'])
		:SetScript("OnClick",function() Menu:NavigateTo("RECENT") end)
	.__END --]]

	FR.SuggestButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Suggest", FR)) :SetPoint("LEFT",FR.GuidesButton,"RIGHT",5,0)	:SetSize(120,40)
		:SetScript("OnClick",function() Menu:NavigateTo("SUGGESTED") end)
	.__END

	FR.SuggestButton.label = CHAIN(FR.SuggestButton:CreateFontString())
		:SetFont(FONT,25) :SetTextColor(0.4,0.4,0.4)
		:SetText(L['guidepicker_button_suggest'])
	 .__END
	 FR.SuggestButton:SetFontString(FR.SuggestButton.label)

	FR.SettingButton = CHAIN(CreateFrame("Button",nil, FR,nil)) :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-15,15)	:SetSize(25,25)
		:SetScript("OnClick",function() ZygorGuidesViewer:OpenOptions("display") end)
		.__END
	ZGV.AssignButtonTexture(FR.SettingButton,ZGV.SkinDir.."titlebuttons",5,16)


	-- SEARCH

	FR.SearchEdit = CHAIN(CreateFrame("EditBox",nil,FR))
		:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-60,-20) :SetSize(200,20)
		:SetFont(FONT,12)
		:SetTextColor(0,0,0,1)
		:SetScript("OnEnterPressed",function() FR.SearchEdit:ClearFocus() end)
		:SetScript("OnEscapePressed",function() self:ClearSearch(true) end)
		:SetScript("OnTextChanged",function(edit,user) if user then self:NavigateTo("SEARCH") end end)
		:SetAutoFocus(false)
	.__END

	FR.SearchResetButton = CHAIN(CreateFrame("Button", "ZGV_Menu_SearchReset", FR, "ZygorGuidesViewer_Default_Button"))
		:SetPoint("LEFT",FR.SearchEdit,"RIGHT",10,0)	:SetSize(12,12)
		--:SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=6, tileSize = 6, insets = { left = 6, right = 6, top = 6, bottom = 6 }})
		:SetBackdropBorderColor(1,1,1,0)
		--:SetText("x")
		:SetAttribute("tooltip",L['guidepicker_button_searchreset_desc'])
		:SetFrameLevel(FR:GetFrameLevel()+2)
		:SetScript("OnClick",function() self:ClearSearch(true) end)
		:Hide()
	.__END
	ZGV.AssignButtonTexture(FR.SearchResetButton,ZGV.SkinDir.."titlebuttons",6,16)

	FR.SearchLabel = CHAIN(FR:CreateFontString())
		:SetFont(FONTBOLD,13)
		:SetPoint("RIGHT",FR.SearchEdit,"LEFT",-10,0)
		:SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetSize(100,16)
		:SetText(L['guidepicker_button_searchlabel'])
	.__END

	FR.SearchBack = CHAIN(CreateFrame("Frame",nil,FR))
		:SetPoint("TOPLEFT",FR.SearchEdit,"TOPLEFT",-4,0):SetSize(210,20)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=""})
		:SetBackdropColor(1.0,1.0,1.0,1.0)
		:SetFrameLevel(FR:GetFrameLevel()+1)
	.__END


	FR.GuidesBox = CHAIN(CreateFrame("FRAME", FR:GetName() .. "_GuidesBox", FR)) :SetFrameStrata("DIALOG")
		:SetPoint("TOPLEFT",FR,"TOPLEFT",0,-60)
		:SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",0,-440)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile="",tileSize=s,edgeSize=s,insets={top=s,bottom=s,left=s,right=s}}) --edgefile ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners"
		:SetBackdropColor(0.1,0.1,0.1,1.0) --:SetBackdropBorderColor(0,0,0,1.0)
		:SetScript("OnMouseUp",function(this,but) if but=="RightButton" then Menu:NavigateBack() end end)
	.__END
	FR.Zygor = CHAIN(FR.GuidesBox:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygor_mascot_gray") :SetAlpha(0.1) :SetSize(400,400) :SetPoint("BOTTOMRIGHT",FR.GuidesBox,"BOTTOMRIGHT",30,-130)

	FR.BackButton = CHAIN(CreateFrame("Button", nil, FR.GuidesBox))
		:SetPoint("CENTER",FR.GuidesBox,"TOPLEFT",16,-16)
		:SetSize(14,14)
		:SetScript("OnClick",function() Menu:NavigateBack() end)
	.__END
	ZGV.AssignButtonTexture(FR.BackButton,ZGV.SkinDir.."titlebuttons",9,16)

	FR.PathIcon = CHAIN(FR.GuidesBox:CreateTexture())
		:SetSize(30,30) :SetPoint("CENTER",FR,"TOPLEFT",52,-67)
		:SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:Hide()
	.__END

	FR.Path1 = CHAIN(FR.GuidesBox:CreateFontString())
		:SetPoint("TOPLEFT",FR,"TOPLEFT",31,-60) :SetPoint("TOPRIGHT",FR,"TOPLEFT",275,-60)
		:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(30)
		:SetFont(FONTBOLD,14) :Show()
	.__END

	--[[FR.pathover = CHAIN(CreateFrame("FRAME",nil,FR.GuidesBox)) :SetPoint("TOPLEFT",FR.GuidesBox,"TOPLEFT",31,-5) :SetPoint("BOTTOMRIGHT",FR.GuidesBox,"TOPLEFT",280,-32)
		:SetScript("OnEnter",function(self)
			if not self.tip then return end
			GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
			GameTooltip:ClearLines()
			GameTooltip:SetText(self.tip)
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		 --:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	.__END--]]



	FR.ViewHome = CHAIN(CreateFrame("FRAME", FR:GetName() .. "_ViewHome", FR.GuidesBox))
		:SetAllPoints()
		:SetFrameLevel(FR.GuidesBox:GetFrameLevel()+1)
	.__END

	FR.ViewList = CHAIN(CreateFrame("FRAME", FR:GetName() .. "_ViewList", FR.GuidesBox))
		:SetAllPoints()
		:SetFrameLevel(FR.GuidesBox:GetFrameLevel()+1)
	.__END

	-- main categories:

	ViewHome_Create()

	ViewList_Create()

	return FR
end

function Menu:Show(path)
	if not FR then
		self:CreateFrame()
		if not FR then return end
	end
	if type(path)=="table" and path.title then
		self:NavigateToGuide(path.title)
	elseif path=="HOME" then
		self:NavigateTo()
	elseif path then
		self:NavigateTo(path)
	else
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
	if not FR:IsVisible() then
		FR:Show()
		FR.showanimgr:Play()
	end
end

function Menu:Hide()
	if FR then FR.hideanimgr:Play() end
end

--- MAIN FUNCTION: set self.flatgroup, because that's what gets displayed.
function Menu:NavigateTo(path)
	if path=="" then path=nil end

	if not self.Frame then self:CreateFrame() end

	-- Stupid, stupid hacks.
	if path and path:find("^GEAR") then
		if not CharacterFrame:IsShown() then ToggleFrame(CharacterFrame) end
		CharacterFrame_Expand()
		ZGVCharacterGearFinderButton:Click()
		self:Hide()
		return
	elseif path and path:find("^PETSMOUNTS\\Pets")then
		if (not PetJournalParent) then
			PetJournal_LoadUI()
		end
		if PetJournal then
			if not PetJournal:IsVisible() then TogglePetJournal(2) end
			self:Hide()
		end
		return
	end
	self.path = path

	-- Each header has a an extra line after them so need to include that in the flat group count.
	local headercount = 0

	ZGV:Debug("Navigating To: "..tostring(path))

	if path=="SUGGESTED" then
		local sugg = ZGV:FindSuggestedGuides()

		ZGV.Menu.Frame.GuidesButton.label:SetTextColor(0.4,0.4,0.4) --Change the text color of the buttons
		ZGV.Menu.Frame.SuggestButton.label:SetTextColor(1.0,1.0,1.0)

		if sugg["LEVELING"] and #sugg["LEVELING"]==1 and automatically_navigate_to_single_suggestion__OFF then
			return self:NavigateToGuide(sugg["LEVELING"][1].title)
		else
			-------- Make a flat group from the structured results.
			local order={"LEVELING","EVENTS","DAILIES","ACHIEVEMENTS","TITLES","REPUTATIONS","PROFESSIONS","PETSMOUNTS"}
			self.flatgroup = {}
			for g,guidetype in ipairs(order) do
				local suggestions = sugg[guidetype]
				if suggestions and #suggestions>0 then
					tinsert(self.flatgroup,{header=guidetype})
					headercount = headercount + 1
					for g,guide in ipairs(suggestions) do
						tinsert(self.flatgroup,guide)
					end
				end
			end
			--------
		end
	elseif path=="SEARCH" then
		local search = self.Frame.SearchEdit:GetText()
		if search~="" then
			self.flatgroup = ZGV:FindGuides(search)
			self.Frame.SearchResetButton:Show()
		else
			self.flatgroup = ZGV.registered_groups.groups  -- toplevel
			self.path=nil
			self.Frame.SearchResetButton:Hide()
		end
	elseif path=="DETECTOR" then
		local search = ZGV.CreatureDetector.DetectedGuides
		assert(search,"No guides detected, yet we're in DETECTOR??") -- how the hell you happened here if no target guides are found?
		if #search==1 then -- it's a single guide
			self:Show(search[1])
			return
		else
			self:Show()
		end
		self.flatgroup = search
		self.path = "Corresponding Guides"
		self.Frame.SearchResetButton:Show()
	else
		if path then
			self.group = ZGV:FindGroup(ZGV.registered_groups,path)
		else
			self.group = ZGV.registered_groups
		end

		self.flatgroup = {}
		for gi,g in ipairs(self.group.groups) do
			tinsert(self.flatgroup,g)
		end
		for gi,g in ipairs(self.group.guides) do
			if not g.hidden then --Dont Put guides that are hidden into the flatgroup. Hidden guides can still be searched for. They should not be suggested though.
				tinsert(self.flatgroup,g)
			end
		end
	end

	if path~="SEARCH" then self:ClearSearch() end

	FR.ViewList.Scroll.Bar:SetCount(self.flatgroup and #self.flatgroup + headercount)
	FR.ViewList.Scroll.Bar:SetValue(0)

	--FR.GuidesButton:SetBackdropBorderColor(1,1,1,((self.path~="RECENT") and (self.path~="SUGGESTED")) and 1 or 0)
	--FR.RecentButton:SetBackdropBorderColor(1,1,1,(self.path=="RECENT") and 1 or 0)
	--FR.SuggestButton:SetBackdropBorderColor(1,1,1,(self.path=="SUGGESTED") and 1 or 0)

	-- find first guide
	local g
	for gi,gu in ipairs(self.flatgroup) do if gu.title then g=gu break end end

	self:SelectGuide(g)

	self:Refresh()
end

--- Navigate to specified guide title. If no title is given, navigate to top level.
function Menu:NavigateToGuide(guidepath)
	if type(guidepath)=="table" and guidepath.title then guidepath=guidepath.title end  --allow guide objects

	if not guidepath then
		self:NavigateTo()
	else
		local pre,post = guidepath:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
		self:SelectGuide(guidepath)
		self:ScrollIntoView()
	end
end

function Menu:NavigateBack()
	if self.path then
		local pre,post = self.path:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
	else
		self:NavigateTo()
	end
end

function Menu:Refresh()
	if self.path and self.path~="SUGGESTED" then
		local path = self.path

		local folders = {strsplit("\\",path)}
		local txt=specialpaths[folders[1]]
		for i=2,#folders,1 do
			txt=txt .. " |TInterface\\CHATFRAME\\ChatFrameExpandArrow:0|t " .. specialpaths[folders[i]]
		end
		-- do something with txt

		--FR.Path2 :SetPoint("TOPLEFT",FR.Path1,"TOPLEFT",FR.Path1:GetWidth()+10,0)

		--FR.Path2:SetText(txt)
		FR.Path1:SetText(specialpaths[folders[#folders]]:upper())
		FR.Path1:Show()
		--FR.pathover.tip = txt

		FR.PathIcon:Hide()
		--[[
		local x,y = get_icon(folders[1])
		if x then SetTextureBlock(FR.PathIcon,x,y,4,4) FR.PathIcon:Show() else FR.PathIcon:Hide() end
		--]]
	else
		--FR.Path:SetText("")
		FR.PathIcon:Hide()
		FR.Path1:Hide()
		--FR.pathover.tip = nil
	end

	FR.ViewHome:Hide()
	FR.ViewList:Hide()

	if self.flatgroup then
		local buts, view

		-- prepare targets
		if self.path then
			ViewList_Show()
		else
			ViewHome_Show()
		end

	else
		print("NOT A FLAT GROUP")
	end

	FR.BackButton:ShowIf(self.path and self.path~="SUGGESTED")

	-- if guides need loading, make a guide-load cycle.
	self.guideparsetimer = self.guideparsetimer or ZGV:ScheduleRepeatingTimer(function()
		local all_loaded = ZGV:LoadNeededGuides()
		ZGV:Debug("Menu: guide full parse cycle: "..(all_loaded and "" or "not").." all loaded")
		if all_loaded then
			ZGV:CancelTimer(self.guideparsetimer)
			self.guideparsetimer = nil
		else
			self:Refresh()  -- yes, that's a self-call, but it's in a timer, so no recursion there.
		end
	end, 0.1)

	--self:RefreshGuide()
end

function Menu:ScrollIntoView()
	if self.selectedguide then
		local selectedpos
		for i,gi in ipairs(self.flatgroup) do
			if gi==self.selectedguide then  selectedpos=i  break  end
		end
		--print(selectedpos,offset)
		if selectedpos and selectedpos>10 then
			return self:UpdateScroll(selectedpos-5)
		end
	end
end

-- Display the current guide - assuming we're in LIST VIEW.
function Menu:RefreshGuide()
	ViewList_Show()  -- that's pretty much the same, let's make it easier.
end

local DOUBLECLICK_TIME = 0.5
local lastclick = 0

function ZGV_Menu_Button_OnClick(but,button)
	if button=="LeftButton" then
		if not but.target then return end
		if but.isguide then
			if GetTime()-lastclick<DOUBLECLICK_TIME and Menu.selectedguide.title==but.target then
				ZGV_Menu_OKButton_OnClick(but)
			else
				lastclick = GetTime()
				Menu:SelectGuide(but.target)
			end
		else
			Menu:NavigateTo(but.target)
		end
	else
		Menu:NavigateBack()
	end
end

function ZGV_Menu_MacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
			local mg=Menu.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			else
				mg:DeleteMacro()
			end
			Menu:Refresh()
		end
	end
end

function ZGV_Menu_BarMacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
			local mg=Menu.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			end
			mg:PlaceOnBar()
			Menu:Refresh()
		end
	end
end

function ZGV_Menu_MacroButton_UpdateDisplay(button)
	if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
		local mg=Menu.selectedguide.macro
		local macroabsent=not mg:LocateMacro()
		if mg:LocateMacro() then
			button:SetText(L['guidepicker_button_macro_del'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_del_desc'])
		else
			button:SetText(L['guidepicker_button_macro_add'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
		end
	end
end

function ZGV_Menu_OnMousewheel(self,delta)
	if FR.ViewList:IsShown() then
		local oldval = FR.ViewList.Scroll.value
		FR.ViewList.Scroll.Bar:SetValue(FR.ViewList.Scroll.Bar.value-delta)
		if FR.ViewList.Scroll.Bar.value~=oldval then  Menu:Refresh()  end
		--local offset = FauxScrollFrame_GetOffset(FR.ViewList.Scroll)
		--Menu:UpdateScroll(offset-delta)
	end
end

function Menu:UpdateScroll(offset)
	if FR.ViewList:IsShown() then
		--if not offset then offset=FauxScrollFrame_GetOffset(FR.ViewList.Scroll) end
		--if offset>#self.flatgroup-10 then offset=#self.flatgroup-10 end
		--if offset<0 then offset=0 end
		FR.ViewList.Scroll.Bar:SetValue(offset)
	end
end

function Menu:SelectGuide(path)
	if type(path)=="table" and path.title then
		Menu.selectedguide=path
	else
		Menu.selectedguide=path and ZGV:GetGuideByTitle(path) or nil
	end
	Menu:RefreshGuide()
end

function ZGV_Menu_OKButton_OnClick(but)
	if Menu.selectedguide and Menu.selectedguide.type~="MACRO" then
		local ret = ZGV:SetGuide(Menu.selectedguide.title,Menu.selectedguide.CurrentStepNum or 1)
		Menu:Hide()
	end -- TODO if macro
end

function Menu:ClearSearch(nav)
	FR.SearchEdit:SetText("")
	FR.SearchEdit:ClearFocus()
	FR.SearchResetButton:Hide()
	if nav then
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
end


function Menu:GetFolderBranch(folderpath)
	for path,group in ipairs(ZGV.registered_groups) do
		if path:match(folderpath) then
			print(path)
		end
	end
end

