local ZGV=ZygorGuidesViewer
if not ZGV.Expansion_Mists then print("TalentAdvisor says goodbye; you're not on Mists API yet.") return end

local ZTA=ZygorTalentAdvisor
if not ZTA then return end

local L = ZGV.L

local function OnEvent(self,event,change,...)
	if event=="PLAYER_ENTERING_WORLD" then
		if ZGV.db.profile.talenton then
			ZTA:GetUserBuild()
			ZTA:CompareSpec()
			ZTA_Spec()
		end
		ZTA.eventFrame:UnregisterEvent("PLAYER_ENTERING_WORLD") -- only want to update player build on login/reload
	elseif event=="PLAYER_TALENT_UPDATE" 
	 or event=="PLAYER_SPECIALIZATION_CHANGED" then
		if ZGV.db.profile.talenton then
		
			ZTA:GetUserBuild()
			ZTA:SetCurrentBuildToCurrentSpec()
			--ZTA:CompareSpec()
			ZTA_Spec()
			ZTA_Glyph()

			if GetSpecialization() and PlayerTalentFrameTab2 and PlayerTalentFrameTab2:IsVisible() and (not GlyphFrame or not GlyphFrame:IsVisible()) then --They have a spec so switch to talent view
				PlayerTalentFrameTab2:Click()
			end
		end
	elseif  event == "CHARACTER_POINTS_CHANGED" then
		if change > 0 then ZTA.PointChange = true
		elseif change < 0 then ZTA.PointChange = nil end

			if ZTA.PointChange then
				if ZGV.db.profile.talentpopup==1 then
					if not PlayerTalentFrame:IsVisible() then 
						TalentMicroButton:Click() ZTA:TalentToggle() 
					end --click the micro button so that it will close on esc correctly.
				elseif ZGV.db.profile.talentpopup==2 then
					if not PlayerTalentFrame:IsVisible() then TalentMicroButton:Click() ZTA:TalentToggle() ZygorTalentAdvisorPopout_Show() end
				elseif ZGV.db.profile.talentpopup==3 then
					if not PlayerTalentFrame:IsVisible() then
						if ZGV:IsPlayerInCombat() then 
							ZTA.call_after_combat = function() ZTA:AutoLearn() end return 
						else
							ZTA:AutoLearn()
						end
					end
				elseif ZGV.db.profile.talentpopup==4 then
					--Do nothing
				end
			end

	elseif event=="PET_SPECIALIZATION_CHANGED" or event=="UNIT_PET" then
		ZTA_Pet()
	elseif event == "PLAYER_REGEN_ENABLED" then --Combat exited
			if ZTA.call_after_combat then ZTA.call_after_combat() ZTA.call_after_combat=nil end
	end
end

function ZTA:AutoLearn()
	local learned = #ZTA.needToLearn
	if #ZTA.needToLearn > 0 and not ZGV:IsPlayerInCombat() then
		ZTA:LearnSuggestedTalents(ZTA.needToLearn)
		print(L['talentpopup_autolearn']:format(learned,ZTA.currentBuild.title))
	end
end


function ZTA:RegisterEvents()
	ZTA.eventFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	ZTA.eventFrame:RegisterEvent("CHARACTER_POINTS_CHANGED")
	ZTA.eventFrame:RegisterEvent("CONFIRM_TALENT_WIPE")
	ZTA.eventFrame:RegisterEvent("PLAYER_TALENT_UPDATE")
	ZTA.eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	ZTA.eventFrame:RegisterEvent("PET_SPECIALIZATION_CHANGED")
	ZTA.eventFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
	ZTA.eventFrame:RegisterEvent("UNIT_PET")
	ZTA.eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
	ZTA.eventFrame:SetScript("OnEvent", OnEvent)

	ZTA.eventFrame:SetScript("OnUpdate",ZTA_SelectSpec_Flash)
	ZTA.eventFrame.time=0
end

--Pick the tooltip to display when the talent icon is scrolled over.
local function ChooseGameTooltip(self)
	local index = tonumber(self:GetName():match("%d+$"))
	local _,_,row,_=GetTalentInfo(index)
	local available,known = GetTalentRowSelectionInfo(row)
	local maxTier = GetMaxTalentTier()

	GameTooltip:ClearAllPoints()
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")

	if (not available or maxTier < row) and ZTA.currentBuild.build[row]==index then
		GameTooltip:SetText(L['talentpopup_suggest'])
	elseif available then
		GameTooltip:SetText(L['talentpopup_suggest'])
		GameTooltip:AddLine(L['talentpopup_suggest_click'])
	else
		GameTooltip:SetText(L['talentpopup_notsuggest'])
	end

	GameTooltip:Show()
end

function ZTA:Setup()
	ZTA.BuildSelect.Text:SetText(ZGV.db.profile.currentbuild or L['talentpopup_build'])
	ZTA.currentBuild=ZTA.registeredBuilds[ZTA.class][ZGV.db.profile.currentbuild]
	if not ZGV.db.profile.currentbuild then ZTA:SetSuggestion(L['talentpopup_start'],140) end

	for i=1, GetNumTalents() do
		local _,_,row,column=GetTalentInfo(i)
		local prefix = "PlayerTalentFrameTalentsTalentRow"..row.."Talent"..column
		local talent=_G[prefix]


		local iconFrame = CreateFrame("Button", "ZygorTalentIconFrame"..i, talent,"OptionsButtonTemplate")
		iconFrame:SetSize(25,20)
		iconFrame:SetPoint("TOPRIGHT",talent,"TOPRIGHT",0,0)
		iconFrame:SetScript("OnEnter",ChooseGameTooltip)
		iconFrame:SetScript("OnLeave",function() GameTooltip:Hide() end)
		iconFrame:SetScript("OnClick", function() if ZTA.userBuild.build[row]==0 then ZTA:LearnSuggestedTalents(i) end end) -- learn the talent if the user has not selected one already.
		iconFrame:SetHighlightTexture(nil,nil,nil,nil)

		iconFrame.tex=iconFrame:CreateTexture("ZygorTalentIconTexture"..i,"OVERLAY")
		iconFrame.tex:SetAllPoints(true)
		iconFrame.tex:SetTexture(ZGV.DIR.."\\ZygorTalentAdvisor\\Skin\\popout-button")
		iconFrame:Hide()

		talent.zygorTex=iconFrame

		ZTA.TalentIcons[i]=iconFrame
	end
end

function ZTA:OpenOptions()
	ZygorGuidesViewer:OpenOptions("talentsystem")
end