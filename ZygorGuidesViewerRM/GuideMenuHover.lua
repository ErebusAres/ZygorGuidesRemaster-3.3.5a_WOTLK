local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Hover = {
	delay = 0.4,
	active = false,
	pending = nil,
	elapsed = 0,
}
ZGV.GuideMenuHover = Hover

local timer = CreateFrame("Frame", nil, UIParent)
timer:Hide()

local function PointerIsWithin(frame)
	local focus = GetMouseFocus and GetMouseFocus() or nil
	while focus do
		if focus == frame then return true end
		focus = focus.GetParent and focus:GetParent() or nil
	end
	return false
end

function Hover:Cancel(button)
	if button and self.pending ~= button then return end
	self.pending = nil
	self.elapsed = 0
	timer:Hide()
end

function Hover:SetActive(active)
	self:Cancel()
	self.active = active and true or false
end

function Hover:Schedule(button)
	self.pending = button
	self.elapsed = 0
	timer:Show()
end

function Hover:OnUpdate(elapsed)
	local button = self.pending
	if not button then timer:Hide() return end
	self.elapsed = self.elapsed + (elapsed or 0)
	if self.elapsed < self.delay then return end
	self:Cancel(button)
	if not self.active or not button.IsShown or not button:IsShown() or not PointerIsWithin(button) then return end
	local original = button._zgvGuideMenuOriginalEnter
	if original then original(button) end
	local parent = button.GetParent and button:GetParent() or nil
	local level = parent and parent.GetID and parent:GetID() or nil
	if level then self:ApplyLevel(level + 1) end
end

timer:SetScript("OnUpdate", function(_, elapsed) Hover:OnUpdate(elapsed) end)

function Hover:WrapButton(button)
	if not button or button._zgvGuideMenuHoverWrapped then return end
	local originalEnter = button:GetScript("OnEnter")
	local originalLeave = button:GetScript("OnLeave")
	if not originalEnter then return end

	button._zgvGuideMenuHoverWrapped = true
	button._zgvGuideMenuOriginalEnter = originalEnter
	button._zgvGuideMenuOriginalLeave = originalLeave
	button:SetScript("OnEnter", function(btn)
		if not Hover.active or not btn.hasArrow then
			Hover:Cancel()
			return originalEnter(btn)
		end
		if btn.Highlight then btn.Highlight:Show() end
		if UIDropDownMenu_StopCounting then UIDropDownMenu_StopCounting(btn:GetParent()) end
		Hover:Schedule(btn)
	end)
	button:SetScript("OnLeave", function(btn)
		Hover:Cancel(btn)
		if originalLeave then originalLeave(btn) end
	end)

	local name = button.GetName and button:GetName() or nil
	local arrow = name and _G[name.."ExpandArrow"] or nil
	if arrow and not arrow._zgvGuideMenuHoverWrapped then
		local arrowEnter = arrow:GetScript("OnEnter")
		local arrowLeave = arrow:GetScript("OnLeave")
		arrow._zgvGuideMenuHoverWrapped = true
		arrow:SetScript("OnEnter", function(expand)
			if not Hover.active then
				if arrowEnter then arrowEnter(expand) end
				return
			end
			local parent = expand:GetParent()
			local enter = parent and parent:GetScript("OnEnter")
			if enter then enter(parent) end
		end)
		arrow:SetScript("OnLeave", function(expand)
			if not Hover.active then
				if arrowLeave then arrowLeave(expand) end
				return
			end
			local parent = expand:GetParent()
			local leave = parent and parent:GetScript("OnLeave")
			if leave then leave(parent) end
		end)
	end
end

function Hover:ApplyLevel(level)
	local list = _G["DropDownList"..tostring(level or 1)]
	if not list then return end
	local count = list.numButtons or UIDROPDOWNMENU_MAXBUTTONS or 0
	local listName = list.GetName and list:GetName() or ("DropDownList"..tostring(level or 1))
	for index=1,count do
		self:WrapButton(_G[listName.."Button"..index])
	end
end

function Hover:AttachRoot(root)
	if not root or not root.HookScript or root._zgvGuideMenuHoverHideHook then return end
	root._zgvGuideMenuHoverHideHook = true
	root:HookScript("OnHide", function()
		if Hover.active then Hover:SetActive(false) end
	end)
end
