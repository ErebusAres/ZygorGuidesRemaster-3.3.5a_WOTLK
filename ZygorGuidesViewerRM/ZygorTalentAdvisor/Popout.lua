local ZTA=ZygorTalentAdvisor
if not ZTA then return end

local AceGUI = LibStub("AceGUI-3.0")

local L = ZGV.L

ZTA.BuildSelect = {}

function ZTA:PopoutSetup()
	TalentFrame_LoadUI()

	ZygorTalentAdvisorPopoutButton:SetParent("PlayerTalentFrame")
	PlayerTalentFrame.advisorbutton = ZygorTalentAdvisorPopoutButton
	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-2,-140)

	ZygorTalentAdvisorPopout:SetParent("PlayerTalentFrame")
	PlayerTalentFrame.advisorpopout = ZygorTalentAdvisorPopout
	PlayerTalentFrame.advisorpopout:ClearAllPoints()
	PlayerTalentFrame.advisorpopout:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-10,-130)

	PlayerTalentFrame.advisorpopout.Title:SetText(L['opt_group_talentsystem'])
	PlayerTalentFrame.advisorpopout.accept:SetText(L['talentpopup_accept'])
	PlayerTalentFrame.advisorpopout.preview:SetText(L['talentpopup_preview'])
	PlayerTalentFrame.advisorpopout.configure:SetText(L['talentpopup_configure'])

	ZygorTalentAdvisorPopoutAcceptButton:Hide()
	ZygorTalentAdvisorPopoutPreviewButton:Hide()

	local popoutSelect=AceGUI:Create("Dropdown")

	popoutSelect.frame:SetParent(PlayerTalentFrame.advisorpopout)
	popoutSelect.text:SetJustifyH("LEFT")
		popoutSelect:SetWidth(200)
		popoutSelect:SetText(L['talentpopup_build'])
	popoutSelect.pullout.frame:SetParent(popoutSelect.dropdown)

	popoutSelect:SetPoint("CENTER",PlayerTalentFrame.advisorpopout,"TOP",0,-40)

	ZTA.BuildSelect.DropdownMain=popoutSelect.dropdown
	ZTA.BuildSelect.Dropdown=popoutSelect
	ZTA.BuildSelect.Text=popoutSelect.text
	ZTA.BuildSelect.Pullout=popoutSelect.pullout
	ZTA.BuildSelect.Button=popoutSelect.button
	ZTA.BuildSelect.Items = {}

	local added
	for t,title in pairs(ZTA.BuildsToAdd) do
		added=true
		ZTA:CreateItem(title)
	end
	if not added then ZTA:CreateItem("None") end

	ZTA.BuildSelect.Button:HookScript("OnClick",ZTA.SelectionButton_Click)
end

function ZTA:CreateItem(text)
	local item = AceGUI:Create("Dropdown-Item-Toggle")
		item:SetText(text)
		item:SetValue(false)

	ZTA.BuildSelect.Pullout:AddItem(item)

	local totalItems=#ZTA.BuildSelect.Items
	ZTA.BuildSelect.Items[totalItems+1]=item

	ZTA.BuildSelect.Items[totalItems+1].frame:HookScript("OnClick",SelectionItem_Click)
end

function ZTA:SelectionButton_Click()
	local totalItems=#ZTA.BuildSelect.Items
	local maxlength=0
	for i=1, totalItems do
		if ZTA.BuildSelect.Items[i].text:GetStringWidth()+40 > maxlength then maxlength=ZTA.BuildSelect.Items[i].text:GetStringWidth() + 40 end --Make the pullout the biggest size needed.

		if ZTA.BuildSelect.Items[i].text:GetText() ~= ZGV.db.profile.currentbuild then
			ZTA.BuildSelect.Items[i]:SetValue(false)

		end
	end
	ZTA.BuildSelect.Pullout.frame:SetWidth(maxlength)
end

function SelectionItem_Click(frame)
	local totalItems=#ZTA.BuildSelect.Items
	for i=1, totalItems do
		if ZTA.BuildSelect.Items[i].frame~=frame then
			ZTA.BuildSelect.Items[i]:SetValue(false)
		else
			ZTA:SetCurrentBuild(ZTA.BuildSelect.Items[i].text:GetText():gsub("%s%|c.*",""))-- Remove the " |c(Recommended)" from the names.
		end
	end

	ZTA.BuildSelect.Pullout.frame:Hide()
	ZTA.BuildSelect.Button.obj.open=nil
end

function ZTA:ShowButton()
	ZGV:Debug("ZTA:ShowButton")
	ZygorTalentAdvisorPopout_Hide()
	PlayerTalentFrame.advisorbutton:Show()
end

function ZygorTalentAdvisorPopout_Hide()
	PlayerTalentFrame.advisorpopout:Hide()
	ZTA.BuildSelect.Button.obj.open=nil
	ZTA.BuildSelect.Pullout.frame:Hide()

	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-2,-140)
end

function ZygorTalentAdvisorPopout_Show()
	PlayerTalentFrame.advisorpopout:ClearAllPoints()
	PlayerTalentFrame.advisorpopout:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-10,-130)
	PlayerTalentFrame.advisorpopout:Show()

	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-14+PlayerTalentFrame.advisorpopout:GetWidth(),-140)
end