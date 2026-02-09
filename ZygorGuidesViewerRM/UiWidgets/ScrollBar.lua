local ZGV = ZygorGuidesViewer
if not ZGV then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local round = math.round

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ScrollBar = {}
ZGV.UI:RegisterWidget("ScrollBar",ScrollBar)

local SkinData = ZGV.UI.SkinData

local BARHEIGHT = 20
local BARWIDTH = 15

--[[
	Class for a zygor themed scroll bar


	Sample Use:
		local scroll = CHAIN(ui:Create("ScrollBar",parent,name))

		.__END


	Known Issues:

--]]

function ScrollBar:New(parent,name)
	--if not parent then error("Scroll Bars need a parent") end

	-- Window to the left of the scroll bar that will either get a list of items or a child.
	-- This is the object that gets returned
	local scrollframe = CHAIN(CreateFrame("ScrollFrame",name,parent))
		:EnableMouseWheel()
	.__END

	-- Base for the scrollbar. It contains all the parts of the scrollbar. The objects are all in scrollbar though just for convience.
	-- Needed so that buttons can be included and not mess up the bar.
	 local barframe = CHAIN(CreateFrame("Frame",name and name.."_BarFrame" or nil,scrollframe))
		:SetPoint("TOPLEFT",scrollframe,"TOPRIGHT")
		:SetPoint("BOTTOMLEFT",scrollframe,"BOTTOMRIGHT")
		:SetWidth(BARWIDTH)
		:EnableMouse()
	.__END

	scrollframe.barframe = barframe

	scrollframe.bar = CHAIN(CreateFrame("Frame",name and name.."_Bar" or nil,barframe))
		:SetAllPoints()
		:EnableMouse()
		:SetScript("OnMouseDown",function(me,...) scrollframe.OnMouseDown(scrollframe,me,...) end)
		:SetScript("OnMouseUp",function(me,...) scrollframe.OnMouseUp(scrollframe,me,...) end)
		:SetScript("OnUpdate",function(me,...) scrollframe.OnUpdate(scrollframe,me,...)end)
	.__END

	-- Backgroun for the bar. Shouldn't be changed or used later.
	scrollframe.bar.back = CHAIN(scrollframe.bar:CreateTexture())
		:SetAllPoints()
		:SetDrawLayer("BACKGROUND")
		:SetTexture(unpack(SkinData("ScrollBackColor")))
	.__END

	-- This is the other texture on the bar, Use script handlers on bar to move it's position.
	scrollframe.scroller = CHAIN(scrollframe.bar:CreateTexture())
		:SetDrawLayer("ARTWORK",1)
		:SetPoint("TOP")
		:SetPoint("TOPRIGHT")
		:SetSize(BARWIDTH,BARHEIGHT)
		:SetTexture(unpack(SkinData("ScrollBarColor")))
	.__END

	for f,fun in pairs(self) do
		scrollframe[f]=fun
	end

	scrollframe:SetDefaults()

	return scrollframe
end

-- TODO would we need to hide the buttons ever? Lets say no.
function ScrollBar:AddButtons()
	local function But_OnMouseDown(me,but,dir)
		-- If butDown is not a number then make it 1. Otherwise make it butDown + 1
		me.butDown = (type(me.butDown)=="number" and me.butDown or 0) + 1

		-- Go to the next time
		self:GetScript("OnMouseWheel")(self,dir)

		-- Schedule to repeat until button is lifted. Accelerate while we hold.
		ZGV:ScheduleTimer(function()
			if not me.butDown then return end
			me:GetScript("OnMouseDown")(me,"Holding")
		end,1/me.butDown)
	end

	local function But_OnMouse_Up(me)
		me.butDown = false
	end

	self.upbut = CHAIN(CreateFrame("Button",self:GetName() and self:GetName().."_Up" or nil,self.barframe))
		:SetPoint("TOPLEFT")
		:SetSize(BARWIDTH,BARWIDTH)
		:SetScript("OnMouseDown", function(me,but) But_OnMouseDown(me,but,1) end)
		:SetScript("OnMouseUp", But_OnMouse_Up)
	.__END
	ZGV.AssignButtonTexture(self.upbut,(SkinData("TitleButtons")),11,16,1)

	self.downbut = CHAIN(CreateFrame("Button",self:GetName() and self:GetName().."_Down" or nil,self.barframe))
		:SetPoint("BOTTOMRIGHT")
		:SetSize(BARWIDTH,BARWIDTH)
		:SetScript("OnMouseDown",function(me,but) But_OnMouseDown(me,but,-1) end)
		:SetScript("OnMouseUp", But_OnMouse_Up)
	.__END
	ZGV.AssignButtonTexture(self.downbut,(SkinData("TitleButtons")),11,16)

	-- If we have buttons then change the bar to not be the complete height.
	CHAIN(self.bar)
		:ClearAllPoints()
		:SetPoint("TOPLEFT",self.upbut,"BOTTOMLEFT")
		:SetPoint("BOTTOMRIGHT",self.downbut,"TOPRIGHT")
end

function ScrollBar:SetHideWhenUnless(bool)
	self.hidewhenuseless = bool

	self:RefreshScroller()
end

function ScrollBar:OnMouseDown(bar,but)
	local x,y = GetCursorPosition()
	-- Modify scale if needed.
	y=y/UIParent:GetScale()

	-- Note which button is down
	self.button_down = but

	-- y is distance from top of bar to current position
	y = bar:GetTop() - y

	-- scoller is visible and has a position
	if self.scroller_top_dist then
		-- Store the y position
		self.mouse_y = y

		-- y < 0 if clicked above top of scroller.
		-- y > 0 if clicked below the top of scroller
		-- y = dist from top of scroller
		y = y - self.scroller_top_dist

		if y >= 0 and y <= self.scroller:GetHeight() then
			-- we're on the scoller, cool

			-- % of the bar
			self.value_normalized = self.low_value / self.high_value
		end
	end
end

function ScrollBar:OnMouseUp(bar,but)
	self.button_down=false
	self.value_normalized = nil
end

function ScrollBar:OnUpdate(bar,elasped)
	-- Scrollie was pressed.
	if self.button_down and IsMouseButtonDown(self.button_down) then
		local x,y = GetCursorPosition()
		y = y / UIParent:GetScale()

		if y ~= self.last_y and self.value_normalized then
			self.last_y = y

			-- y is distance from top of bar to current position
			-- normalize: 0=top, ~666=bottom
			y = self.bar:GetTop() - y

			local dist = ( y - self.mouse_y ) -- Distance mouse has moved
			/ ( self.bar:GetHeight() - self.scroller:GetHeight() ) -- wiggle room
			self:SetValue( round( (self.value_normalized + dist) * self.high_value ) )
			self:ValueChanged() -- pass it back
		end
	else
		self.button_down=false
	end
end

function ScrollBar:SetDefaults()
	self:TotalValue(0)
	self:MaxValueAtOnce(1)
	self:SetValue(0)
end

-- Sets the top value to be displayed.
function ScrollBar:SetValue(low_value)
	-- Either passed valueor 0 for the top, can't go below 0
	low_value = low_value or 0
	low_value = max(low_value,0)

	-- If there are fewer values than we can display then this will be 0 meaning we can display all of the value
	-- If more value is than we can display at once then h_v will be the last possible possible value that could be at the top.

	self.high_value = max(1,self.totalvalue-min(self.totalvalue,self.maxdisplayvalue))

	-- Since h_v is the highest value we can display and still fill up the frame if low_value is below it then ignore that

	self.low_value = round(min(low_value,self.high_value))

	self:RefreshScroller()
end

-- The number of items that can be displayed at once OR the height of the scroll child visible at one time.
function ScrollBar:MaxValueAtOnce(val)
	self.maxdisplayvalue = floor(val)

	self:RefreshScroller()
end

-- Either the max number of items available to choose from, or the height of the scroll child if all elements were visible at once.
function ScrollBar:TotalValue(count)
	self.totalvalue = floor(count)

	self:RefreshScroller()
end

function ScrollBar:RefreshScroller()
	if not (self.totalvalue and self.maxdisplayvalue) then return end
	local scroller = self.scroller

	-- Less values available than we can display at once
	if self.totalvalue <= self.maxdisplayvalue then
		-- Scrolling is valid because we can always display the whole thing.
		scroller:SetHeight(self.barframe:GetHeight())
		-- Hide scroller so only bar.back is visible
		scroller:Hide()
		-- Hide whole bar maybe
		if self.hidewhenuseless then
			if self.specRightPt then
				self:SetPoint(unpack(self.specRightPt))
			end
			self.barframe:Hide()
		end
		self.scroller_top_dist = nil
	else
		-- More value available than we can show at once. Need to set the scroll bar appropriately.
		local barheight = self.bar:GetHeight()
		local barframeheight = self.barframe:GetHeight()
		-- Try to make sure we have a height even at startup so there is a bar that is close to right size. Should be based on .bar.
		local maxheight = barheight > 0 and barheight or barframeheight > 0 and barframeheight or self:GetHeight()

		-- Scroll is max height * the % of items we can display at once.
		local scrollerheight = maxheight * (self.maxdisplayvalue / self.totalvalue)

		self.scroller_top_dist = ( maxheight - scrollerheight ) -- Amount of wiggle room that there is.
		* ( self.low_value / self.high_value ) -- Since low_value is the top value, and .high_value is the max low_value. This is the % of wiggle room to take up.

		CHAIN(scroller)
			:SetHeight(scrollerheight)
			:SetPoint("TOP",self.bar,"TOP",0,-self.scroller_top_dist)
			:Show()

		if self.hidewhenuseless then
			if self.specRightPt then
				self:MySetPoint(unpack(self.specRightPt))
			end
			self.barframe:Show()
		end
	end
end

function ScrollBar:ValueChanged()
	self:SetVerticalScroll(self.low_value)
end

-- Helper function to set right point without having to figure out BARWIDTH at user side.
-- If used with hidewhenuseless, the ScrollFrame will get resized depending on if the bar is visible or not.
function ScrollBar:MySetPoint(point, rTo, rPo, x, y)
	if not point:find("RIGHT") then print("MySetPoint: Must only be right point") return end
	if not y then print("MySetPoint: Must have 5 args") return end

	self.specRightPt = {point,rTo,rPo,x,y}

	self:SetPoint(point,rTo,rPo,x-BARWIDTH,y)
end

