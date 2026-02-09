local ZGV = ZygorGuidesViewer
if not ZGV then return end
if ZGV.NotificationCenter then return end
local CreatureDetector = {}
ZGV.CreatureDetector = CreatureDetector

local L = ZGV.L
local LM = ZGV.LM

local table,string,tonumber,ipairs,pairs,setmetatable,min,max = table,string,tonumber,ipairs,pairs,setmetatable,min,max

CreatureDetector.mountSpellDatabase={}
CreatureDetector.petIDDatabase={}
CreatureDetector.modelDatabase={}


function CreatureDetector:Detect(force)
	self.DetectedGuides=nil

	if not UnitExists("target") or InCombatLockdown() then  return  end

	local guid=UnitGUID("target")
	local first3 = tonumber(strsub(guid, 3,5),16)
	local unitType = bit.band(first3,0x00f)
	if UnitIsPlayer("target") then -- Screw the IDs this one is safer
		return self:DetectMount(not force)
	elseif (unitType == 0x003) then -- Handle freshly tamed pets as well
		return self:DetectMinipet(not force)
	elseif (unitType == 0x004) then
		return self:DetectPet(not force)
	else
		return nil
	end
end

-- Tries to detect a combat pet selected by player
function CreatureDetector:DetectPet(silent_mode)
	if select(2,UnitClass("player"))~="HUNTER" then
		self.DetectedGuides=nil
		return false  -- no business viewing it, either.
	end

	-- Check if our target is sane
	local guid=UnitGUID("target")
	
	if guid==UnitGUID("pet") then  self.DetectedGuides=nil  return  end  -- own pet.
	
	if not guid or not UnitExists("target") or not (bit.band(tonumber(strsub(guid, 3,5),16),0x00f)==0x004) then -- "If that's not a pet"
		if not silent_mode then  ZGV:Print("Incorrect target.")  end
		self.DetectedGuides=nil
		return  -- not a pet, whatever, bail out
	end 
	
	-- Check the existence of the pet database
	if not self.modelDatabase then
		if not silent_mode then  ZGV:Print("No model guides are registered, sorry.")  end
		self.DetectedGuides=nil
		return
	end
	
	-- Creating a PlayerModel to display the model of a said pet
	self.PetMirror = self.PetMirror or CreateFrame("PlayerModel")
	self.PetMirror:Show() -- briefly
	self.PetMirror:SetUnit("target")

	-- Perfect, so what's the deal?
	local model=self.modelDatabase[self.PetMirror:GetModel()]
	self.PetMirror:Hide() -- and stay low
	
	if model then
		self.DetectedGuides=model
		if not silent_mode and ZGV.GuidePicker then ZGV.GuidePicker:NavigateTo("DETECTOR") end
		return model
	else
		self.DetectedGuides=nil
		return
	end
end

-- Tries to detect the non-combat pet selected by player
function CreatureDetector:DetectMinipet(silent_mode)
	-- Check if our target is sane
	local guid=UnitGUID("target")
	
	if not guid or not UnitExists("target") or not (bit.band(tonumber(strsub(guid, 3,5),16),0x00f)==0x003) then -- "If that's not a NPC
		if not silent_mode then  ZGV:Print("Incorrect target.")  end
		self.DetectedGuides=nil
		return
	end 
	
	-- Make sure all the pet guides are loaded at this point
	-- 	self:LoadGuidesByType("pet")
	local npcid=tonumber(strsub(guid,7,10),16)
	
	-- Check the existence of the pet database
	if not self.petIDDatabase then
		if not silent_mode then  ZGV:Print("No minipet guides are registered, sorry.")  end
		self.DetectedGuides=nil
		return
	end

	local found=self.petIDDatabase[npcid]

	ZGV:Debug("pet %d %s",npcid,found and "found" or "not found")
	
	-- If found, point at it
	if found then 
		self.DetectedGuides=found
		if not silent_mode and ZGV.GuidePicker then ZGV.GuidePicker:NavigateTo("DETECTOR") end
		return found
	-- If not, compose a report
	elseif not silent_mode then
		local text="Undetected Pet on Player"
		local nm,rl=UnitName("target")
		text=text.."\nName: "..UnitName("target")
		text=text.."\nNPCID: "..npcid
		text=text.."\nRealm: "..(rl or GetRealmName())
		text=text.."\nSeen by"
		text=text.."\nClass: "..UnitClass("player")
		text=text.."\nRace: "..UnitRace("player")
		
		StaticPopupDialogs["ZYGOR_REPORT_PET"] = {
			text = L["report_nopet_dialog"],
			button1 = YES,
			button2 = NO,
			OnAccept = function()
				ZGV:ShowDump(text,"Report",true)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
		}
		StaticPopup_Show ("ZYGOR_REPORT_PET")
		self.DetectedGuides=nil
		return
	end
end

-- Tries to detect the mount of the target and focus the guide picker on this guide
-- TODO test and make sure if we need to force the loading of all guides in question
function CreatureDetector:DetectMount(silent_mode)
	-- Check if our target is sane
	if not UnitExists("target") or not UnitIsPlayer("target") then
		ZGV:Print("Incorrect target.")
		self.DetectedGuides=nil
		return
	end
	
	-- Make sure all the mount guides are loaded at this point
-- 	self:LoadGuidesByType("mount")
	
	-- Check the existence of the mount database
	if not self.mountSpellDatabase then
		if not silent_mode then  ZGV:Print("No mount guides are registered, sorry.")  end
		self.DetectedGuides=nil
		return
	end
	
	-- Browsing through the buffs on the target and finding the one we have a guide for
	-- TODO is there a way to tell the whole amount of buffs on a unit?
	local found
	for i=1,1024 do -- meh 
		local spellID=select(11,UnitBuff("target",i))
		if not spellID then break end
		found=self.mountSpellDatabase[spellID]
		if found then 
			break
		end
	end
	
	-- If found, point at it
	if found then 
		self.DetectedGuides=found
		if not silent_mode and ZGV.GuidePicker then ZGV.GuidePicker:NavigateTo("DETECTOR") end
		return found 
	-- If not, compose a report
	elseif not silent_mode then
		local text="Undetected Mount on Player"
		local nm,rl=UnitName("target")
		text=text.."\nName: "..UnitName("target")
		text=text.."\nClass: "..UnitClass("target")
		text=text.."\nRace: "..UnitRace("target")
		text=text.."\nRealm: "..(rl or GetRealmName())
		text=text.."\nBuffs: "
		for i=1,1024 do
			local name,_,_,_,_,_,_,_,_,_,spellID=UnitBuff("target",i)
			if not name then break end
			text=text.."\n  "..name.."##"..spellID
		end
		text=text.."\nSeen by"
		text=text.."\nClass: "..UnitClass("player")
		text=text.."\nRace: "..UnitRace("player")
		
		StaticPopupDialogs["ZYGOR_REPORT_MOUNT"] = {
			text = L["report_nomount_dialog"],
			button1 = YES,
			button2 = NO,
			OnAccept = function()
				ZGV:ShowDump(text,"Report",true)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
		}
		StaticPopup_Show ("ZYGOR_REPORT_MOUNT")
		self.DetectedGuides=nil
		return
	end
end

local function registerIn(tab,id,guide)
	if not (id and guide) then return end
	if not tab[id] then
		tab[id]={}
	else
		for k,v in ipairs(tab[id]) do
			if v==guide then -- No duplicates please
				return
			end
		end
	end
	table.insert(tab[id],guide)
end

-- Registers a correspondence between mount spell id and a guide to obtain it
function CreatureDetector:RegisterMountSpell(spellid,guide)
	registerIn(self.mountSpellDatabase,spellid,guide)
end

-- Registers a correspondence between pet spell id and a guide to obtain it
function CreatureDetector:RegisterPetID(petid,guide)
	registerIn(self.petIDDatabase,petid,guide)
end

-- Registers a correspondence between a model and a guide to obtain it
function CreatureDetector:RegisterGuideModel(modelfile,guide)
	registerIn(self.modelDatabase,modelfile,guide)
end


function CreatureDetector:ShowTooltip(parent,position,x,y)
	GameTooltip:SetOwner(parent, position or "ANCHOR_CURSOR",x or 0, y or 0)
	--GameTooltip:SetText(ZygorGuidesViewer.L[UnitIsPlayer("target") and 'detector_mount_tooltip' or 'detector_pet_tooltip'])
	if ZGV.CreatureDetector.DetectedGuides and #ZGV.CreatureDetector.DetectedGuides==1 then
		-- single guide
		local guide = ZGV.CreatureDetector.DetectedGuides[1]
		local status,txt = guide:GetStatus()
		GameTooltip:SetText(guide.title_short,1,0.9,0.4,1)
		if status=="COMPLETE" then
			if UnitIsPlayer("target") then  GameTooltip:AddLine(ZGV.L['You already have this mount.'],0.5,1,0.3,1)
			else  GameTooltip:AddLine(ZGV.L['You already have this pet.'],0.5,1,0.3,1)
			end
		elseif status=="INVALID" then
			if UnitIsPlayer("target") then  GameTooltip:AddLine(ZGV.L['This mount is not available.'].." "..txt,1,0,0,1)
			else  GameTooltip:AddLine(ZGV.L['This pet is not available.'].." "..txt,1,0,0,1)
			end
		else
			GameTooltip:AddLine(ZGV.L[UnitIsPlayer("target") and 'detector_mount_tooltip' or 'detector_pet_tooltip'],1,0.7,0)
		end
	else
		-- multiple
		GameTooltip:SetText(ZGV.L[UnitIsPlayer("target") and 'detector_mount_tooltip' or 'detector_pet_tooltip'])
	end
	GameTooltip:AddLine(ZGV.L['detector_tooltip_click'],0,1,0,1)
	GameTooltip:SetToplevel(true)
	GameTooltip:Show()
end