local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ScrollItems = {}
local ui = ZGV.UI
ui:RegisterWidget("ScrollItems",ScrollItems)

local SkinData = ZGV.UI.SkinData

--[[
	Class for a zygor themed scroll bar


	Sample Use:
		local scroll = CHAIN(ui:Create("ScrollItems",parent,name))

		.__END


	Known Issues:

--]]

function ScrollItems:New(parent,name)
	local scroll = CHAIN(ui:Create("ScrollBar",parent,name))
		:SetScript("OnVerticalScroll",function(me,offset)
			me:SetValue(offset)
			me:UpdateList()
		end)
		:SetScript("OnMousewheel",function(me,delta)
			me:SetVerticalScroll(me.low_value - delta)
		end)
		:SetVerticalScroll(0)
	.__END

	for f,fun in pairs(self) do
		scroll[f]=fun
	end

	scroll.items = {}

	return scroll
end

function ScrollItems:AddItem(item,first)
	if not item then return end
	if not item.SetPoint then print("Must be able to :SetPoint on objects added to the scrollie.") return end

	local numItems = #self.items

	if numItems == 0 then
		item:SetPoint("TOPLEFT",self)
	else
		item:SetPoint("TOPLEFT",self.items[numItems],"BOTTOMLEFT")
	end

	if first then
		tinsert(self.items,1,item)
	else
		tinsert(self.items,item)
	end

	self:TotalValue(numItems + 1)
	self:SetValue(0) -- TODO maybe don't go to the top?
	self:UpdateList()
end

function ScrollItems:UpdateList()
	if not (#self.items > 0) then return end

	-- Size of scrollframe / (size of item + offset) to set the total number of items in the frame.
	self:MaxValueAtOnce(self:GetHeight()/(self.items[1]:GetHeight() - (self.itemOffset or 0)))

	local foundFirst = false

	for i,item in ipairs(self.items) do
		-- low_value + 1 because it is 0 indexed while .items starts at 1
		if i < (self.low_value + 1) or i >= (self.low_value + 1 + self.maxdisplayvalue) then
			item:Hide()
		else
			item:ClearAllPoints()

			if not foundFirst then
				item:SetPoint("TOPLEFT",self)
				item:SetPoint("BOTTOMRIGHT",self,"TOPRIGHT",0,-item:GetHeight())

				foundFirst = i
			else
				item:SetPoint("TOPLEFT",self.items[i-1],"BOTTOMLEFT",0,self.itemOffset or 0)
				item:SetPoint("BOTTOMRIGHT",self.items[i-1],"BOTTOMRIGHT",0, - item:GetHeight() + (self.itemOffset or 0))
			end

			item:Show()
		end
	end
end

function ScrollItems:ClearList()
	if not (#self.items > 0) then return end

	for i,item in ipairs(self.items) do
		item:Hide()
	end

	wipe(self.items)

	self:TotalValue(0)
	self:SetValue(0)
	self:UpdateList()
end

-- This should probably be a negative number. If it is positive then items get squished together and can look funny.
function ScrollItems:SetItemYOffset(offset)
	self.itemOffset = offset
end