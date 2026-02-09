local ZGV = ZygorGuidesViewer
if not ZGV then return end

if not ZGV.Expansion_Mists then print("TalentAdvisor says goodbye; you're not on Mists API yet.") return end

ZygorTalentAdvisor={}

ZTA = ZygorTalentAdvisor
local ZTA=ZTA

tinsert(ZGV.startups,function(self)
	ZTA:Startup()
end)

_G.ZygorTalentAdvisor = ZygorTalentAdvisor
_G.ZTA = ZTA

ZTA.registeredBuilds = {}
ZTA.currentBuild = {}
ZTA.TalentIcons = {}
ZTA.userBuild = {}
ZTA.needToLearn = {}

ZTA.class=(select(2,UnitClass("player")))

local L = ZGV.L

ZTA.eventFrame=CreateFrame("Frame")

function ZTA:Startup()
	if not ZGV.db.profile.talenton or ZTA.startup then return end
	ZTA.startup = true

	ZTA:RegisterEvents()
	hooksecurefunc("TalentFrame_LoadUI",ZTA.TalentFrame_LoadUI_Hook)  -- previously bound to ToggleTalentFrame. That function was directly hooked in Blizz XML and, apparently, didn't snag on the hook when clicked on the micro menu bar.
	--ZGV:Debug("ZTA: TalentFrame_LoadUI hooked")
	ZTA:PopoutSetup()
	ZTA:Setup()

	hooksecurefunc("StaticPopup_Resize",function(...)
		if not ZGV.db.profile.talenton then return end
		local popup=... -- ... is the table of the popup.
		if popup and popup.text:GetWidth() > popup:GetWidth() then
			popup.text:SetWidth(popup:GetWidth()-30) --Fix the static popups once we switched the word wrapping width for our popups.. oops
			StaticPopup_Resize(popup,popup.which)
		end
	end)

	PlayerTalentFrameTab1:HookScript("OnClick",ZTA_Spec)
	PlayerTalentFrameTab2:HookScript("OnClick",ZTA_Talent)
	PlayerTalentFrameTab3:HookScript("OnClick",ZTA_Glyph)
	PlayerTalentFrameTab4:HookScript("OnClick",ZTA_Pet)
	PlayerTalentFrameTalentsLearnButton:HookScript("OnClick",ZTA_ModifyTalentPopup)
	PlayerTalentFrameSpecializationLearnButton:HookScript("OnClick",ZTA_ModifySpecPopup)
end

local hooked
function ZTA:TalentFrame_LoadUI_Hook()
	if PlayerTalentFrame_Toggle and not hooked then
		hooksecurefunc("PlayerTalentFrame_Toggle",ZTA.TalentToggle)
		--ZGV:Debug("ZTA: PlayerTalentFrame_Toggle hooked")
		hooked=true
	end  -- previously bound to ToggleTalentFrame. That function was directly hooked in Blizz XML and, apparently, didn't snag on the hook when clicked on the micro menu bar.
end

function ZTA:TalentToggle()
	--ZGV:Debug("ZTA_TalentToggle, talents?" .. tostring(ZGV.db.profile.talenton))
	if ZGV.db.profile.talenton then
		ZTA:ShowButton()

		-- Auto pop out when no spec is chosen yet?
		-- Nah, better not. ~sinus
		-- if not GetSpecialization() then ZygorTalentAdvisorPopout_Show() end

		if PlayerTalentFrameSpecialization:IsVisible() then
			ZTA_Spec()
		elseif PlayerTalentFrameTalents:IsVisible() then
			ZTA_Talent()
		end
	end
end

--==These are used to make sure the correct information is displayed based on which tab is shown in the talent Frame
function ZTA_Spec()
	if not ZGV.db.profile.talenton then return end
	if ZTA.spec=="bad" or not PlayerTalentFrameSpecialization:IsVisible() then return end
	local build=ZTA.currentBuild
	if not build then return end

	if not ZTA.userBuild.spec then ZTA:GetUserBuild() end

	if ZTA.userBuild.specindex==0 then
		--They have not picked a spec
		ZTA:SetSuggestion(L['talentpopup_no_spec']:format(build.title,build.spec),170)
		ZygorTalentAdvisorPopoutAcceptButton:Show()
		ZygorTalentAdvisorPopoutPreviewButton:Show()
	elseif ZTA.currentBuild.specindex~=ZTA.userBuild.specindex then
		ZTA:SetSuggestion(L['talentpopup_black_badspec']:format(ZTA.currentBuild.spec,ZTA.userBuild.spec),160)
		ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
		ZygorTalentAdvisorPopoutPreviewButton:Hide()
	else
		local status=ZTA.talentstatus
		if status and status=="learn" then
			ZTA:SetSuggestion(L['talentpopup_orange']:format(build.title),140)
		elseif status and status=="wrong" then
			ZTA:SetSuggestion(L['talentpopup_red']:format(build.title),140)
		elseif status and status=="correct" then
			ZTA:SetSuggestion(L['talentpopup_green'],125)
		end
		ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
		ZygorTalentAdvisorPopoutPreviewButton:Hide()
	end
end

function ZTA_Talent()
	if not ZGV.db.profile.talenton then return end
	ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
	ZygorTalentAdvisorPopoutPreviewButton:Hide()

	ZTA:CompareBuild()
end

function ZTA_Glyph()
	if not ZGV.db.profile.talenton then return end
	if not GlyphFrame or ZTA.spec=="bad" or not GlyphFrame:IsVisible() then return end
	ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
	ZygorTalentAdvisorPopoutPreviewButton:Hide()
	local text=ZTA:GetGlyphSuggestions()
	ZTA:SetSuggestion(text)
end

function ZTA_Pet()
	if not ZGV.db.profile.talenton then return end
	if not PlayerTalentFramePetSpecialization or ZTA.spec=="bad" or not PlayerTalentFramePetSpecialization:IsVisible() then return end
	if not IsPetActive() then
		ZTA:SetSuggestion(L['talentpopup_no_pet'],130)
		ZygorTalentAdvisorPopoutAcceptButton:Hide()
		ZygorTalentAdvisorPopoutPreviewButton:Hide()
		return
	end
	local build=ZTA.currentBuild
	if not build then return end

	local _,sugPetSpecName=GetSpecializationInfo(build.petspec,false,true)
	local currentPetSpec=GetSpecialization(false,true) or 0
	local _,currentPetSpecName=GetSpecializationInfo(currentPetSpec,false,true)

	if currentPetSpec==0 then
		--They have not picked a spec
		ZTA:SetSuggestion(L['talentpopup_sug_pet']:format(build.title,sugPetSpecName),170)
		ZygorTalentAdvisorPopoutAcceptButton:Show()
		ZygorTalentAdvisorPopoutPreviewButton:Show()
		PlayerTalentFramePetSpecialization.scriptedtoflash=true
		ZTA_SelectSpec_Flash(ZTA.eventFrame,99)
	elseif build.petspec~=currentPetSpec then
		ZTA:SetSuggestion(L['talentpopup_wrong_pet']:format(currentPetSpecName,build.title,sugPetSpecName),180)
		ZygorTalentAdvisorPopoutAcceptButton:Show()
		ZygorTalentAdvisorPopoutPreviewButton:Show()
		PlayerTalentFramePetSpecialization.scriptedtoflash=true
		ZTA_SelectSpec_Flash(ZTA.eventFrame,99)
	else
		ZTA:SetSuggestion(L['talentpopup_green_pet'],125)

		ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
		ZygorTalentAdvisorPopoutPreviewButton:Hide()
		PlayerTalentFramePetSpecialization.scriptedtoflash=false
	end
end

--==Change the popup information.
--This works by modifying the popup once it has already been displayed.
function ZTA_ModifyTalentPopup()
	if not (ZGV.db.profile.talenton and ZTA.currentBuild) then return end

	for i=1, #StaticPopup_DisplayedFrames do --Loop through all shown static popups
		local popup=StaticPopup_DisplayedFrames[i]

		if popup.which=="CONFIRM_LEARN_TALENTS" then --our popup.

			local talents={PlayerTalentFrame_GetTalentSelections()} -- returns table of the index of the talents
			local index
			local badTalents = ""

				for i,index in ipairs(talents) do
					local _,tex,row,column=GetTalentInfo(index)

					if ZTA.currentBuild.build[row]~=index then
						local _,sugtex=GetTalentInfo(ZTA.currentBuild.build[row])

						local sugtalent = "|T"..sugtex..":0:0:0:0|t |cffffdd00"..GetTalentLink(ZTA.currentBuild.build[row])
						local talent = "|T"..tex..":0:0:0:0|t |cffffdd00"..GetTalentLink(index)

						badTalents = badTalents..sugtalent..L['talentpopup_wrongtalentsbad']..talent.."\n"
					end
				end

			if badTalents=="" then --We are perfect.
				badTalents=L['talentpopup_correcttalents']:format(ZTA.currentBuild.title)
			else
				local wrong=L['talentpopup_wrongtalents']:format(ZTA.currentBuild.title)
				badTalents=wrong..badTalents..L['talentpopup_wrongtalentslearn']

			end

			local width = 415 --Based on our message

			popup.text:SetWidth(width) --Fix the word wrapping.
			popup.text:SetText(badTalents) popup.text:SetSpacing(2)

			popup:SetSize(width+30,popup.text:GetStringHeight() + 60) -- 60 is for button and spacing on top and bottom
		end
	end
end

function ZTA_ModifySpecPopup()
	if not (ZGV.db.profile.talenton and ZTA.currentBuild) then return end

	for i=1, #StaticPopup_DisplayedFrames do --Loop through all shown static popups
		local popup=StaticPopup_DisplayedFrames[i]

		if popup.which=="CONFIRM_LEARN_SPEC" then --our popup.
			local spec=PlayerTalentFrameSpecialization.previewSpec -- returns table of the index of the talents
			local badSpec=""

			if spec~=ZTA.currentBuild.specindex then
				local selectname=select(2,GetSpecializationInfo(spec))
				badSpec=L['talentpopup_wrongspec']:format(ZTA.currentBuild.spec,selectname,selectname)
			else
				badSpec=L['talentpopup_goodspec']:format(ZTA.currentBuild.title)
			end

			local width=350

			popup.text:SetWidth(width) --Fix the word wrapping.
			popup.text:SetText(badSpec) popup.text:SetSpacing(2)

			popup:SetSize(width+30,popup.text:GetStringHeight() + 60) -- 60 is for button and spacing on top and bottom

		end
	end
end

--==Set the target build based on the current build
function ZTA:SetCurrentBuild(text)
	if not ZGV.db.profile.talenton then return end
	ZTA.BuildSelect.Text:SetText(text)-- talentpopup_build
	ZTA.currentBuild=ZTA.registeredBuilds[ZTA.class][text]
	ZGV.db.profile.currentbuild=text
	ZTA:CompareSpec()
end

--==Get all of the information that we need..Current user build and then compare that with our desired build.
function ZTA:GetUserBuild()
	local learnbuild = {}
	local maxtier = GetMaxTalentTier()
	for i=1, GetNumTalents() do -- All Talents are the same
		local n,_,tier,_,selected,available=GetTalentInfo(i)
		if selected then
			learnbuild[tier]=i
		elseif not selected and available then
			learnbuild[tier]=0 -- no talent in that tier has been choosen
		elseif maxtier < tier then
			learnbuild[tier]=-1 -- -1 if the talents are not available yet
		end
	end
	ZTA.userBuild = {
		specindex=GetSpecialization() or 0, -- Will be 1-3 based on their spec or 0 if they have not selected one.
		spec=select(2,GetSpecializationInfo(GetSpecialization() or 0)),
		build=learnbuild,
		glyphs={},
	}
end

function ZTA:CompareSpec()
	if not (ZTA.userBuild and ZTA.currentBuild and ZGV.db.profile.talenton) then return end
	ResetAllTalentIcons() -- Hide all the icons and then we will show the correct ones.

	ZygorTalentAdvisorPopoutAcceptButton:Hide() --Hide the extra buttons. Will show them again if needed.
	ZygorTalentAdvisorPopoutPreviewButton:Hide()

	if ZTA.userBuild.specindex==0 then
		--They have not picked a spec
		ZTA.spec="unknown"
		PlayerTalentFrame.scriptedtoflash = true
		ZTA_SelectSpec_Flash(ZTA.eventFrame,99) --force
		ZTA:CompareBuild()

	elseif ZTA.currentBuild.specindex~=ZTA.userBuild.specindex then
		--They picked the wrong spec! Yell at them.
		ZTA.spec="bad"
		PlayerTalentFrame.scriptedtoflash = false
		ZTA:SetSuggestion(L['talentpopup_black_badspec']:format(ZTA.currentBuild.spec,ZTA.userBuild.spec),170)
	else
		--They are our suggested spec!
		ZTA.spec="good"
		PlayerTalentFrame.scriptedtoflash = false
		ZTA:CompareBuild()
	end
end

function ZTA:CompareBuild()
	if not ZGV.db.profile.talenton then return end
	if not (ZTA.currentBuild and ZTA.currentBuild.build and ZTA.userBuild and ZTA.userBuild.build) or ZTA.spec=="bad" then return end

	local learnTalents = {}
	local wrongTalents = {}
	local talentsMatch=true
	local needTalents=false

	for i=1, #ZTA.currentBuild.build do
		local sugindex=ZTA.currentBuild.build[i]
		local userindex=ZTA.userBuild.build[i]

		if sugindex==userindex then
			--Cool they did what we want!
			if ZGV.db.profile.talenticon then
				ZTA.TalentIcons[sugindex].cross=true
				ZTA.TalentIcons[sugindex].tex:SetTexture(ZGV.DIR.."\\ZygorTalentAdvisor\\Skin\\mrripley_hints")
				ZTA.TalentIcons[sugindex].tex:SetTexCoord(0.77,0.85,0.0,1.0)
				ZTA.TalentIcons[sugindex]:Show()
			end
		elseif userindex>0 then
			--jerks didn't pick what we told them to. Yell at them

			tinsert(wrongTalents,userindex)
			if ZGV.db.profile.talenticon then
				ZTA.TalentIcons[userindex].cross=true
				ZTA.TalentIcons[userindex].tex:SetTexture(ZGV.DIR.."\\ZygorTalentAdvisor\\Skin\\mrripley_hints")
				ZTA.TalentIcons[userindex].tex:SetTexCoord(0.9,1.0,0.0,1.0)
				ZTA.TalentIcons[userindex]:Show()

				ZTA.TalentIcons[sugindex]:Show()
			end

			talentsMatch=false
		else
			--They need to choose this or will in the futurn. Our turn.

			if userindex ~= -1 then -- Only add it to the list to be learned if they can learn it. -1 means it is too high level.
				tinsert(learnTalents,sugindex) --Add all available talents to a table.
				needTalents=true
			end
			if ZGV.db.profile.talenticon then
				ZTA.TalentIcons[sugindex]:Show()
			end
		end
	end

	--Make information available so we can tell them something once that have choosen the correct spec
	if needTalents then ZTA.talentstatus="learn"
	elseif not talentsMatch then ZTA.talentstatus="wrong"
	elseif talentsMatch then ZTA.talentstatus="correct"
	end

	ZTA.needToLearn = learnTalents --set these into a table where we can get them when we want to learn them

	if not talentsMatch and #wrongTalents==GetMaxTalentTier() then ZTA:SetSuggestion(L['talentpopup_specred'],145) --all of their talents are wrong.
	elseif #learnTalents >0 or #wrongTalents >0 then ZTA:LearnSuggestion(learnTalents,wrongTalents) --They either can select talents or we need to take out the wrong ones.
	elseif talentsMatch then ZTA:SetSuggestion(L['talentpopup_green'],125) --They followed our build perfect
	end

	ZTA_Spec()--See if we are on the spec page, if we are then show specialization message.
	ZTA_Glyph()
	ZTA_Pet()
end

function ZTA:SetCurrentBuildToCurrentSpec()
	local curspec = (self.userBuild and self.userBuild.specindex) or GetSpecialization()
	local class = self.class
	for name,build in pairs(self.registeredBuilds[class]) do
		if build.specindex == curspec then
			self:SetCurrentBuild(name)
			break
		end
	end

end

--==Format all text for the talents with the |t...
function ZTA:GetSuggestionFormatted(learnTalents)
	TalentFrame_LoadUI()
	local learnTalents=learnTalents
	local sugformatted={}
	for i,talentindex in ipairs(learnTalents) do
		local index=talentindex
		local _,tex=GetTalentInfo(index)

		tinsert(sugformatted,{tex=tex,index=index})
	end
	return sugformatted
end

function ZTA:LearnSuggestion(learnTalents,wrongTalents)
	local size=120 --default size with nothing suggested
	local s=""
	local talent,tier,data

	if #wrongTalents>0 then
		local sugformatted = self:GetSuggestionFormatted(wrongTalents)

		s=s..L['talentpopup_incorrecttalents'].."\n\n"

		size=size+20+10*#sugformatted -- increase size by 20 for the title and then 10 for every icon in the box.

		for tier,data in ipairs(sugformatted) do
			talent = "|T"..data.tex..":0:0:0:0|t |cffffdd00"..GetTalentLink(data.index)
			s=s.."                "..talent.."\n"
		end
		if #learnTalents>0 then s=s.."\n"  size=size+10 end
	else
		--No Talents to learn.
	end

	if #learnTalents>0 then
		local sugformatted = self:GetSuggestionFormatted(learnTalents)

		s=s..L['talentpopup_sugtalents'].."\n\n"

		size=size+20+10*#sugformatted -- increase size by 20 for the title and then 10 for every icon in the box.

		for tier,data in ipairs(sugformatted) do
			talent = "|T"..data.tex..":0:0:0:0|t |cffffdd00"..GetTalentLink(data.index)
			s=s.."                "..talent.."\n"
		end

		ZygorTalentAdvisorPopoutAcceptButton:Show()
		ZygorTalentAdvisorPopoutPreviewButton:Show()
		size=size+30 --buttons!
	else
		--No Talents to learn.
	end

	ZTA:SetSuggestion(s,size)
end

--==Set the text for the popout box as well as the height
function ZTA:SetSuggestion(text,height)
	if not text then return end
	ZygorTalentAdvisorPopoutSuggestionLabel:SetText(text)
	local stringHeight=ZygorTalentAdvisorPopoutSuggestionLabel:GetStringHeight()
	ZygorTalentAdvisorPopout:SetHeight(height or 120+stringHeight or 150)
end

--==Select the correct talents/spec when the preview button is pressed
function ZTA:PreviewSpecialization(specindex,pet)
	local prefix = ""
	if pet then
		prefix= "PlayerTalentFramePetSpecializationSpecButton"
	else
		prefix= "PlayerTalentFrameSpecializationSpecButton"
	end
	local button=_G[prefix..specindex]
	button:Click()
end

function ZTA:PreviewSuggestedTalents(talents)
	for tier,index in ipairs(talents) do
		local _,_,row,column=GetTalentInfo(index)
		local prefix = "PlayerTalentFrameTalents"
		local tier=_G[prefix]["tier"..row]

		if GetTalentRowSelectionInfo(row) and tier.selectionId~=index then
			--If they have not selected a talent for that row, and nothing is selected.
			PlayerTalentFrame_SelectTalent(index) --This is causing a addon conflict at the moment.
		end
	end
	TalentFrame_Update(PlayerTalentFrameTalents) -- Blizzard function!
end

--==Learn the talents when the accept button is pressed or when the graphic is pressed on the talent screen.
	-- Specializations are learned within the OnClick event for the accept button.
function ZTA:LearnSuggestedTalents(talents)
	if type(talents)=="table" then
		for tier,index in ipairs(talents) do
			LearnTalents(index)
		end
		wipe(talents)
	elseif type(talents)=="number" then
		LearnTalents(talents)
		talents = 0
	end

end

--==Visual stuff for the pages
function ResetAllTalentIcons()
	for i=1, GetNumTalents() do
		if ZGV.db.profile.talenticon then
			if ZTA.TalentIcons[i].cross then
				ZTA.TalentIcons[i].cross=nil
				ZTA.TalentIcons[i].tex:SetTexture(ZGV.DIR.."\\ZygorTalentAdvisor\\Skin\\popout-button")
				ZTA.TalentIcons[i].tex:SetTexCoord(0, 1, 0, 1) --Reset whatever the old position was.
			end
		end
		ZTA.TalentIcons[i]:Hide()
	end
end

function ZTA_SelectSpec_Flash(self,elapsed)
	TalentOnUpdate()--Check the scheduler in Build
	self.time=self.time+elapsed
	if self.time>0.5 and PlayerTalentFrame.scriptedtoflash and ZGV.db.profile.talenticon then
		PlayerTalentFrameSpecializationSpecButton1:UnlockHighlight()
		PlayerTalentFrameSpecializationSpecButton2:UnlockHighlight()
		PlayerTalentFrameSpecializationSpecButton3:UnlockHighlight()
		if PlayerTalentFrameSpecializationSpecButton4 then --druids have 4 specs
			PlayerTalentFrameSpecializationSpecButton4:UnlockHighlight()
		end
		if ZTA.currentBuild.specindex and  ZTA.userBuild.specindex~=ZTA.currentBuild.specindex and not ZTA.currentBuild.petspec then
			local specbutton = _G['PlayerTalentFrameSpecializationSpecButton'..ZTA.currentBuild.specindex]
			if specbutton.flash then specbutton:LockHighlight() else specbutton:UnlockHighlight() end
			specbutton.flash = not specbutton.flash
		end
		self.time=0
	elseif self.time>0.5 then --If Talent system is turned off mid flash
		PlayerTalentFrameSpecializationSpecButton1:UnlockHighlight()
		PlayerTalentFrameSpecializationSpecButton2:UnlockHighlight()
		PlayerTalentFrameSpecializationSpecButton3:UnlockHighlight()
		if PlayerTalentFrameSpecializationSpecButton4 then --druids have 4 specs
			PlayerTalentFrameSpecializationSpecButton4:UnlockHighlight()
		end
	end

	if #ZTA.needToLearn > 0 and ZGV.db.profile.talentpopup==3 then ZTA:AutoLearn() end

	local petspec=IsPetActive() and GetSpecialization(false,true) or 0
	--print(petspec,self.time,PlayerTalentFramePetSpecialization.scriptedtoflash)
	if petspec and self.time>0.5 and PlayerTalentFramePetSpecialization.scriptedtoflash and ZGV.db.profile.talenticon then
		PlayerTalentFramePetSpecializationSpecButton1:UnlockHighlight()
		PlayerTalentFramePetSpecializationSpecButton2:UnlockHighlight()
		PlayerTalentFramePetSpecializationSpecButton3:UnlockHighlight()
		if ZTA.currentBuild.petspec and petspec and petspec~=ZTA.currentBuild.petspec then
			local specbutton = _G['PlayerTalentFramePetSpecializationSpecButton'..ZTA.currentBuild.petspec]
			if specbutton.flash then specbutton:LockHighlight() else specbutton:UnlockHighlight() end
			specbutton.flash = not specbutton.flash
		end
		self.time=0
	elseif petspec and self.time>0.5 then --If Talent system is turned off mid flash
		if PlayerTalentFramePetSpecializationSpecButton1 then
			PlayerTalentFramePetSpecializationSpecButton1:UnlockHighlight()
			PlayerTalentFramePetSpecializationSpecButton2:UnlockHighlight()
			PlayerTalentFramePetSpecializationSpecButton3:UnlockHighlight()

		end
	end
end