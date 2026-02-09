local ZGV = ZygorGuidesViewer
if not (ZGV and ZGV.UI) then return end

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local Frame = {}
local SecFrame = {}
ZGV.UI:RegisterWidget("Frame",Frame)
ZGV.UI:RegisterWidget("SecFrame",SecFrame)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 100
local DEFAULTHEIGHT = 100

--[[
	Class for a zygor themed frame.

	Frames by default are black with a border. If you want the to be able to drag the frame you can call :CanDrag(true) and it sets the
	needed scripts.

	Sample Use:
		local frame = CHAIN(ui:Create("Frame",parent,name))
			:SetAllPoints()
			:CanDrag(true)
		.__END

		-- Add stuff to frame

	Known Issues:
		:CanDrag
--]]

function Frame:New(parent,name)
	local frame = CHAIN(CreateFrame("Frame", name, parent))
		:SetBackdrop(SkinData("MainBackdrop"))
		:SetBackdropColor(unpack(SkinData("MainBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("MainBackdropBorderColor")))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetClampedToScreen(true)
		:SetMovable(true)
	.__END

	for f,fun in pairs(self) do
		frame[f]=fun
	end

	return frame
end

--[[
	Class for a zygor themed frame whose purpose is to be in a main frame. But can be used seperately.

	SecFrame by default are offblack without a border.

	If you want the to be able to drag the frame you can call :CanDrag(true) and it sets the needed scripts.
	If you want to be able to drag the parent with this frame then :CanDrag("parent") to make it drag the ent.

	Sample Use:
		local frame = CHAIN(ui:Create("SecFrame",parent,name))
			:SetAllPoints()
			:CanDrag("parent")
		.__END

		-- Add stuff to frame

	Known Issues:
		:CanDrag
--]]

function SecFrame:New(parent,name)
	local frame = CHAIN(CreateFrame("Frame", name, parent))
		:SetBackdrop(SkinData("SecBackdrop"))
		:SetBackdropColor(unpack(SkinData("SecBackdropColor")))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetClampedToScreen(true)
		:SetMovable(true)
	.__END

	-- Inherits from Frame too
	for f,fun in pairs(Frame) do
		frame[f]=fun
	end

	for f,fun in pairs(self) do
		frame[f]=fun
	end

	return frame
end

--[[
	Can pass "parent" to make clicking drag the parent. otherwise any non false/nil value will drag self.

	Does not do any error checking so assumes that a parent is there if you try to drag parent.

	TODO need to develop :CanDrag(false)
--]]

function Frame:CanDrag(drag)
	if drag then
		CHAIN(self)
			:EnableMouse(true)
			:RegisterForDrag("LeftButton")

		if drag == "parent" then
			CHAIN(self)
				:SetScript("OnDragStart",function(me) me:GetParent():StartMoving() end)
				:SetScript("OnDragStop",function(me) me:GetParent():StopMovingOrSizing() end)
		else
			CHAIN(self)
				:SetScript("OnDragStart",function(me) me:StartMoving() end)
				:SetScript("OnDragStop",function(me) me:StopMovingOrSizing() end)
		end
	else
		-- If we can't drag then don't need to undo dragging
		if not self:HasScript("OnDragStart") then return end

		-- Undo it.
		CHAIN(self)
			-- TODO :EnableMouse(false) maybe?
			:SetScript("OnDragStart",function() end)
			:SetScript("OnDragStop",function() end)

	end
end

--[[
	Updates a time stamp if there is a .timestamp field if it is available.

	Should probably called OnUpdate or possibly throttled. Maybe on only some events.
--]]

function Frame:UpdateTimeStamp()
	if not self.timestamp then print("No timestamp to update") return end
	if not self.lastTimeStampReset then self.lastTimeStampReset = time() end

	self.timestamp:SetText(ZGV.UI.GetTimeStamp(self.lastTimeStampReset))
end

--[[
	Resets the time to 0.
--]]

function Frame:ResetTimeStamp()
	self.lastTimeStampReset = time()

	self:UpdateTimeStamp()
end