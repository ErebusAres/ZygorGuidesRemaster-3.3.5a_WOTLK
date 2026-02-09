--[[
Name: LibTaxi-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library recording all player's currently known/unknown taxi routes.
Dependencies: None
License: Free for non-commercial use, except for Zygor Guides.
]]

-- This has a major flaw: only personally seen taxis are recorded - so visiting a taxi NPC and getting the "New Flight Path discovered!" message is NOT
-- enough to have it recorded. No workarounds, either, sorry...

local MAJOR_VERSION = "LibTaxi-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

local addon,_L = ...
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

do
	local LIB_MAJOR, LIB_MINOR = "LibTaxi-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)
	_L.Lib = Lib
	if Lib then

		Lib.master = { }
		Lib.saved = { }

		Lib.TaxiNames_Local = nil
		Lib.TaxiNames_English = nil
	
		-- initialize localization

		if Lib.TaxiNames_Local then
			for en,lo in pairs(Lib.TaxiNames_Local) do if lo==1 then Lib.TaxiNames_Local[en]=en end end

			Lib.TaxiNames_English = {}
			for en,lo in pairs(Lib.TaxiNames_Local) do
				Lib.TaxiNames_English[lo]=en
			end
		else
			Lib.TaxiNames_Local = {}
			Lib.TaxiNames_English = {}
		end

		local mt = { __index = function(t,i) return i end }
		setmetatable(Lib.TaxiNames_Local,mt)
		setmetatable(Lib.TaxiNames_English,mt)


		local minimap_exceptions = {
			["Trade District"] = "Stormwind",
			["The Great Forge"] = "Ironforge",
			["Terrace of Light"] = "Shattrath City",
			["The Stair of Destiny"] = "Hellfire Peninsula, The Dark Portal",
			["Valley of Strength"] = "Orgrimmar"
		}


		local function sync_to_master()
			for i,saved in ipairs(Lib.saved) do
				for fpath,t in pairs(Lib.master) do saved[fpath]=t end
			end
		end

		local ERR_NEWTAXIPATH=ERR_NEWTAXIPATH

		local function addTaxi(name)
			local nm,zone = name:match("(.+), (.-)")
			if nm then name=nm end
			name=Lib.TaxiNames_English[name] or name
			--print(i..": "..TaxiNodeName(i).." = "..name)
			if not name then
				print("|cffff8888LibTaxi Error: Untranslated zone "..TaxiNodeName(i).."|r")
				return
			end
			Lib.master[name]=true
		end

		local function onEvent(this, event, arg1)
			if event == "ADDON_LOADED" and not Lib.loaded then
				Lib.loaded=true
			elseif event == "TAXIMAP_OPENED" then
				Lib.master[GetCurrentMapContinent()]=true
				for i=1,NumTaxiNodes() do
					if TaxiNodeGetType(i)~="NONE" then
						local name
						name = TaxiNodeName(i)
						addTaxi(name)
					end
				end

				-- leech off QH
				if QuestHelper_KnownFlightRoutes then
					for name,_ in pairs(QuestHelper_KnownFlightRoutes) do
						addTaxi(name)
					end
				end
				sync_to_master()
			elseif event == "UI_INFO_MESSAGE" then
				if arg1==ERR_NEWTAXIPATH then
					-- discovery! cheating by zone name.
					local name=GetMinimapZoneText()
					name = Lib.TaxiNames_English[name]
					if not name then
						print("|cffff8888LibTaxi Error: Unknown zone "..GetMinimapZoneText().."|r")
						return
					end
					name = minimap_exceptions[name] or name
					Lib.master[name]=true
					sync_to_master()
				end
			end
		end

		Lib.frame = CreateFrame("Frame", "LibTaxiFrame")
		Lib.frame:RegisterEvent("TAXIMAP_OPENED")
		Lib.frame:RegisterEvent("UI_INFO_MESSAGE")
		Lib.frame:RegisterEvent("ADDON_LOADED")
		Lib.frame:SetScript("OnEvent", onEvent)

		--- Gets all the known flight paths, in current locale.
		function Lib:GetTaxis()
			local paths = {}
			for fpath,t in pairs(Lib.master) do paths[Lib.TaxiNames_Local[fpath] or fpath]=t end
			return paths
		end

		--- Gets all the known flight paths, in English.
		function Lib:GetTaxisEnglish()
			local paths = {}
			for fpath,t in pairs(Lib.master) do paths[fpath]=t end
			return paths
		end

		function Lib:Startup(newsave)
			for fpath,t in pairs(newsave) do Lib.master[fpath]=t  if Lib.path2cont[fpath] then Lib.master[Lib.path2cont[fpath]]=true end  end
			setmetatable(newsave,Lib.path_mt)
			table.insert(Lib.saved,newsave)
			sync_to_master()
		end

		local function warn(message)
			local _, ret = pcall(error, message, 3)
			geterrorhandler()(ret)
		end

		-- return 'false' if there's a continent marker!
		Lib.path_mt = { __index=function(t,i)
				if rawget(t,i) then
					return true
				else
					local c = Lib.path2cont[i]
					if rawget(t,c) then
						return false
					else
						return nil
					end
				end
			end
		}
			

		Lib.path2cont = {
			------ Kalimdor
			-- Alliance
			["Astranaar"] = 1,
			["Auberdine"] = 1,
			["Blood Watch"] = 1,
			["Feathermoon"] = 1,
			["Forest Song"] = 1,
			["Nijel's Point"] = 1,
			["Rut'theran Village"] = 1,
			["Stonetalon Peak"] = 1,
			["Talonbranch Glade"] = 1,
			["Talrendis Point"] = 1,
			["Thalanaar"] = 1,
			["The Exodar"] = 1,
			["Theramore"] = 1,

			-- Horde
			["Bloodvenom Post"] = 1,
			["Brackenwall Village"] = 1,
			["Camp Mojache"] = 1,
			["Camp Taurajo"] = 1,
			["Crossroads"] = 1,
			["Freewind Post"] = 1,
			["Orgrimmar"] = 1,
			["Shadowprey Village"] = 1,
			["Splintertree Post"] = 1,
			["Sun Rock Retreat"] = 1,
			["Thunder Bluff"] = 1,
			["Valormok"] = 1,
			["Zoram'gar Outpost"] = 1,

			-- Neutral
			["Cenarion Hold"] = 1,
			["Emerald Sanctuary"] = 1,
			["Everlook"] = 1,
			["Gadgetzan"] = 1,
			["Marshal's Refuge"] = 1,
			["Moonglade"] = 1,
			["Mudsprocket"] = 1,
			["Ratchet"] = 1,

			-- Eastern Kingdoms
			-- Alliance
			["Aerie Peak"] = 2,
			["Chillwind Camp"] = 2,
			["Darkshire"] = 2,
			["Ironforge"] = 2,
			["Lakeshire"] = 2,
			["Menethil Harbor"] = 2,
			["Morgan's Vigil"] = 2,
			["Nethergarde Keep"] = 2,
			["Rebel Camp"] = 2,
			["Refuge Pointe"] = 2,
			["Sentinel Hill"] = 2,
			["Shattered Sun Staging Area"] = 2,
			["Southshore"] = 2,
			["Stormwind"] = 2,
			["Thelsamar"] = 2,
			["Thondoril River"] = 2, -- new in WP in 3.3?  -- typo: Thondroril

			-- Horde
			["Flame Crest"] = 2,
			["Grom'Gol"] = 2,
			["Hammerfall"] = 2,
			["Kargath"] = 2,
			["Revantusk Village"] = 2,
			["Silvermoon City"] = 2,
			["Stonard"] = 2,
			["Tarren Mill"] = 2,
			["The Sepulcher"] = 2,
			["The Bulwark"] = 2,
			["Tranquillien"] = 2,
			["Undercity"] = 2,

			-- Neutral
			["Acherus: The Ebon Hold"] = 2,
			["Booty Bay"] = 2,
			["Light's Hope Chapel"] = 2,
			["Thorium Point"] = 2,
			["Zul'Aman"] = 2,

			-- Outland
			-- Alliance
			["Allerian Stronghold"] = 3,
			["Honor Hold"] = 3,
			["Orebor Harborage"] = 3,
			["Shatter Point"] = 3,
			["Sylvanaar"] = 3,
			["Telaar"] = 3,
			["Telredor"] = 3,
			["Temple of Telhamat"] = 3,
			["Toshley's Station"] = 3,
			["Wildhammer Stronghold"] = 3,

			-- Horde
			["Falcon Watch"] = 3,
			["Garadar"] = 3,
			["Hellfire Peninsula, The Dark Portal"] = 3,
			["Mok'Nathal Village"] = 3,
			["Shadowmoon Village"] = 3,
			["Spinebreaker Post"] = 3,
			["Stonebreaker Hold"] = 3,
			["Swamprat Post"] = 3,
			["Thrallmar"] = 3,
			["Thunderlord Stronghold"] = 3,
			["Zabra'jin"] = 3,

			-- Neutral
			["Altar of Sha'tar"] = 3,
			["Area 52"] = 3,
			["Cosmowrench"] = 3,
			["Evergrove"] = 3,
			["Sanctum of the Stars"] = 3,
			["Shattrath"] = 3,
			["The Stormspire"] = 3,

			-- Northrend
			-- Alliance
			["Amberpine Lodge"] = 4,
			["Fizzcrank Airstrip"] = 4,
			["Fordragon Hold"] = 4,
			["Fort Wildervar"] = 4,
			["Frosthold"] = 4,
			["River's Heart"] = 4,
			["Star's Rest"] = 4,
			["Ulduar"] = 4,
			["Valgarde Port"] = 4,
			["Valiance Keep"] = 4,
			["Westfall Brigade"] = 4,
			["Westguard Keep"] = 4,
			["Wintergarde Keep"] = 4,

			-- Horde
			["Agmar's Hammer"] = 4,
			["Apothecary Camp"] = 4,
			["Argent Tournament Grounds"] = 4,
			["Bor'gorok Outpost"] = 4,
			["Brann's Base-Camp"] = 4,
			["Camp Oneqwah"] = 4,
			["Camp Winterhoof"] = 4,
			["Conquest Hold"] = 4,
			["Crusaders' Pinnacle"] = 4,
			["Death's Rise"] = 4,
			["Kor'koron Vanguard"] = 4,
			["Lakeside Landing"] = 4,
			["New Agamand"] = 4,
			["Sunreaver's Command"] = 4,
			["Taunka'le Village"] = 4,
			["The Shadow Vault"] = 4,
			["Vengeance Landing"] = 4,
			["Venomspite"] = 4,
			["Warsong Hold"] = 4,

			-- Neutral
			["Amber Ledge"] = 4,
			["Bouldercrag's Refuge"] = 4,
			["Dalaran"] = 4,
			["Ebon Watch"] = 4,
			["Grom'arsh Crash-Site"] = 4,
			["Gun'Drak"] = 4,
			["K3"] = 4,
			["Kamagua"] = 4,
			["Light's Breach"] = 4,
			["Moa'ki Harbor"] = 4,
			["Nesingwary Base Camp"] = 4,
			["The Argent Stand"] = 4,
			["The Argent Vanguard"] = 4,
			["Transitus Shield"] = 4,
			["Unu'pe"] = 4,
			["Wyrmrest Temple"] = 4,
			["Zim'Torga"] = 4,

		}

	end

		
end
