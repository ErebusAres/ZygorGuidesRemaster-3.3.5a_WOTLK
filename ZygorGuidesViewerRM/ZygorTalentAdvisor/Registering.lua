local me=ZygorTalentAdvisor

local function NormalizeBuildNotes(notes)
	if type(notes) ~= "string" then return nil end
	notes = notes:gsub("^%s+", ""):gsub("%s+$", "")
	if notes == "" then return nil end
	return notes
end

function me:RegisterBuild (class,title,a,b,c,d)
	local notes,statweights,build,glyphs

	-- Supported signatures (backward compatible):
	--   RegisterBuild(class, title, build[, glyphs])                    -- 3-4 args
	--   RegisterBuild(class, title, notes, build[, glyphs])             -- 4-5 args (notes is string)
	--   RegisterBuild(class, title, notes, statweights, build[, glyphs]) -- 5-6 args (retail style)
	if d ~= nil then
		-- 5-6 args: notes, statweights, build[, glyphs]
		notes = NormalizeBuildNotes(a)
		statweights = b
		build = c
		glyphs = d
	elseif c ~= nil then
		-- 4-5 args: could be (notes, build, glyphs) or (notes, statweights, build)
		if type(a) == "string" and type(b) == "table" and (type(c) == "table" or type(c) == "string") then
			-- (notes, statweights_or_build, glyphs_or_build)
			-- Heuristic: if b has numeric keys, it's a build; if it has string keys, it's statweights
			if b[1] then
				-- b is a build (array-like)
				notes = NormalizeBuildNotes(a)
				build = b
				glyphs = c
			else
				-- b is statweights (hash-like)
				notes = NormalizeBuildNotes(a)
				statweights = b
				build = c
			end
		else
			notes = NormalizeBuildNotes(a)
			build = b
			glyphs = c
		end
	elseif b ~= nil and (a == nil or a == "") then
		notes = nil
		build = b
		glyphs = nil
	else
		notes = nil
		build = a
		glyphs = b
	end

	local _,_,pet,pettype = string.find(class,"(PET) (.+)")
	if pet then
		table.insert(self.registeredBuilds,{pettype=pettype,title=title,build=build,notes=notes,statweights=statweights})
		--self:Print("Registered pet build: "..title)
	else
		table.insert(self.registeredBuilds,{class=class,title=title,build=build,glyphs=glyphs,notes=notes,statweights=statweights})
		--self:Print("Registered build: "..title)
	end
end

-- remove class-specific builds or any pets for non-hunters
function me:PruneRegisteredBuilds()
	--self:Print("Pruning!")
	if self.registeredBuildsPruned then return nil end
	
	local _,myclass = UnitClass("player")
	if not myclass then return end

	for i=#self.registeredBuilds,1,-1 do
		if (self.registeredBuilds[i].class and self.registeredBuilds[i].class~=myclass)
		or (self.registeredBuilds[i].pettype and myclass~="HUNTER")
		or (string.find(self.registeredBuilds[i].title,"debug") and not self.db.profile.debug)
		then
			table.remove(self.registeredBuilds,i)
		end
	end

	for class,talents in pairs(self.TalentsToNumbers) do
		if (not talents.pet and class~=myclass)
		or (talents.pet and myclass~="HUNTER")
		then
			self.TalentsToNumbers[class]=nil
		end
	end

	self.registeredBuildsPruned = true
	self:RestoreSavedBuildSelection(nil,true)
end

function me:ParseBlizzardTalents(bliz,pet)
	self:Debug("Parsing Blizzard build")
	local build = {}

	for tab,talent in talentpairs(false,pet) do
		if #bliz==0 then break end
		local rank = tonumber(strsub(bliz,1,1))
		bliz = strsub(bliz,2)
		for i=1,rank do table.insert(build,{tab,talent}) end
	end

	return build
end

local function NormalizeWowheadTalentCode(raw)
	if type(raw) ~= "string" then return nil, "Input is not text." end
	local s = raw:gsub("%s+", "")
	if s == "" then return nil, "Input is empty." end
	local fromWowheadUrl = false
	-- Normalize common Unicode dash variants to ASCII hyphen.
	s = s:gsub("\226\128\145","-") -- non-breaking hyphen
	s = s:gsub("\226\128\147","-") -- en dash
	s = s:gsub("\226\128\148","-") -- em dash
	s = s:gsub("\226\136\146","-") -- minus sign
	-- For full URLs, grab the talent code segment after /talent-calc/<class>/...
	if s:find("wowhead.com", 1, true) then
		fromWowheadUrl = true
		local extracted = s:match("talent%-calc/[^/]+/([^%?#]+)") or s:match("/([^/%?#]+)$")
		if not extracted then
			return nil, "URL does not end with a talent code."
		end
		s = extracted
	end
	-- Keep only the core code before Wowhead glyph suffix.
	if s:find("_", 1, true) then
		s = s:match("^([^_]+)") or s
	end
	if not s:match("^[0-9%-]+$") then
		return nil, "Use digits and '-' only (or a full Wowhead URL)."
	end
	-- Wowhead omits trailing empty trees, so pad them back to the
	-- three-tree representation expected by the WotLK talent parser.
	-- Digits-only raw strings belong to Blizzard's legacy format, so only
	-- treat that shortened form as Wowhead when it came from a Wowhead URL.
	if fromWowheadUrl and s:match("^%d+$") then
		s = s.."--"
	elseif s:match("^%d*%-%d*$") then
		s = s.."-"
	end
	if s:match("^%d*%-%d*%-%d*$") then
		return s
	end
	return nil, "Expected exactly 3 tree segments: tree1-tree2-tree3."
end

function me:IsWowheadTalentCode(raw)
	local code = NormalizeWowheadTalentCode(raw)
	return code ~= nil
end

function me:ParseWowheadTalents(raw,pet)
	self:Debug("Parsing Wowhead build, pet="..tostring(pet))
	local code, normerr = NormalizeWowheadTalentCode(raw)
	if not code then
		local shown = tostring(raw or ""):gsub("%s+","")
		if #shown > 64 then shown = shown:sub(1,64).."..." end
		return nil, "Invalid Wowhead talent code/url: "..tostring(normerr).." [raw="..shown.."]"
	end

	local seg1,seg2,seg3 = code:match("^([^%-]*)%-([^%-]*)%-([^%-]*)$")
	if not seg1 then
		return nil, "Wowhead code must contain 3 tree segments."
	end

	local segments = { seg1 or "", seg2 or "", seg3 or "" }
	local build = {}
	local tabs = GetNumTalentTabs(false,pet) or 0
	if tabs < 1 then
		return nil, "Talents are not available yet."
	end

	for tab=1,tabs do
		local seg = segments[tab] or ""
		local talents = GetNumTalents(tab,false,pet) or 0
		for talent=1,talents do
			local rank = tonumber(seg:sub(talent,talent)) or 0
			local _, _, _, _, _, maxrank = GetTalentInfo(tab,talent,false,pet)
			maxrank = tonumber(maxrank) or 0
			if rank > maxrank then
				return nil, ("Tree %d talent %d has rank %d, but max rank is %d."):format(tab,talent,rank,maxrank)
			end
			for i=1,rank do
				table.insert(build,{tab,talent})
			end
		end
		local extra = seg:sub(talents + 1)
		if extra and extra:match("[1-9]") then
			return nil, ("Tree %d contains ranks for unknown talents past index %d."):format(tab,talents)
		end
	end

	return build
end

function me:ParseTableTalents(text,pet)
	TalentFrame_LoadUI()

	self:Debug("Parsing table build, pet="..tostring(pet))

	local _,class = UnitClass("player")
	local pettype
	if pet then
		_,_,_,pettype = GetTalentTabInfo(1,false,true)
		self:Debug("Pettype="..tostring(pettype))
		if pettype then pettype=pettype:match("HunterPet(.+)") end
		self:Debug("Pettype="..tostring(pettype))
	end

	local build = {}

	local lookup = {}
	local name,link,id
	local count=0
	for tab,talent in talentpairs(false,pet) do
		link = GetTalentLink(tab,talent,false,pet)
		if link then
			id = tonumber(link:match("talent:(%d+)"))
			lookup[id]={tab,talent}
			count=count+1
		end
		--[[
		name = GetTalentInfo(tab,talent,false,pet)
		if name then
			link = GetTalentLink(tab,talent,false,pet)
			id = tonumber(link:match("talent:(%d+)"))
			--lookup[name]={tab,talent}
			lookup[id]={tab,talent}
			count=count+1
		end
		]]
	end

	if count==0 then
		return nil,"Unable to access talent info, wtf"
	else
		self:Debug(count.." talents cached for lookup")
	end

	local a
	for i=1,#text do
		--if TalentsToNumbers[text[i]]
		local a,b = string.match(text[i],"(.+)|(.+)")
		if not a then a=text[i] end
		a=self.TalentsToNumbers[pet and pettype or class][a]
		if b then b=self.TalentsToNumbers[pet and pettype or class][b] end

		if lookup[a] then
			table.insert(build,{lookup[a][1],lookup[a][2]})
		elseif lookup[b] then
			table.insert(build,{lookup[b][1],lookup[b][2]})
		else
			return nil,("Unknown talent(s): '"..text[i].."' at line "..i..".")
		end
	end
	return build
end

function me:ParseLines(text,multi)
	local table={}
	local index=1
	local st,en
	text = text .. "\n"
	local count
	while (index<#text) do
		st,en,line=string.find(text,"(.-)\n",index)
		if not en then break end
		index = en + 1
		line = line:gsub("//.*$","")
		line = line:gsub("^[%s	]+","")
		line = line:gsub("[%s	]+$","")
		line = line:gsub("||","|")
		line = line:gsub("/[0-9]+","")

		if multi then
			local co,ln = line:match("([1-9]+)[%s%*x]+(.+)")
			if co then
				count=co
				line=ln
			else
				count=1
			end
		else
			count=1
		end
		if (#line>0) then
			for i=1,count do tinsert(table,line) end
		end
	end
	return table
end

function me:ParseTextTalents(text,pet)
	local table = self:ParseLines(text,true)
	return self:ParseTableTalents(table,pet)
end

function me:DumpBuild(num)
	local s = ""
	for i=1,#self.registeredBuilds[num].build do
		local tab,talent = unpack(self.registeredBuilds[num].build[i])
		s = s .. ((#s>0) and "," or "") .. "{"..tab..","..talent.."}"
	end
	self:Print("  ZygorTalentAdvisor:RegisterBuild(\""..(self.registeredBuilds[num].class or "PET "..self.registeredBuilds[num].pettype).."\",\""..self.registeredBuilds[num].title.."\",{"..s.."})")
end

me.TalentsToNumbers = {
	["HUNTER"]={
		["Improved Aspect of the Hawk"]=1382,
		["Endurance Training"]=1389,
		["Focused Fire"]=1624,
		["Improved Aspect of the Monkey"]=1381,
		["Thick Hide"]=1395,
		["Improved Revive Pet"]=1625,
		["Pathfinding"]=1384,
		["Aspect Mastery"]=2138,
		["Unleashed Fury"]=1396,
		["Improved Mend Pet"]=1385,
		["Ferocity"]=1393,
		["Spirit Bond"]=1388,
		["Intimidation"]=1387,
		["Bestial Discipline"]=1390,
		["Animal Handler"]=1799,
		["Frenzy"]=1397,
		["Ferocious Inspiration"]=1800,
		["Bestial Wrath"]=1386,
		["Catlike Reflexes"]=1801,
		["Invigoration"]=2136,
		["Serpent's Swiftness"]=1802,
		["Longevity"]=2140,
		["The Beast Within"]=1803,
		["Cobra Strikes"]=2137,
		["Kindred Spirits"]=2227,
		["Beast Mastery"]=2139,
		["Improved Concussive Shot"]=1341,
		["Focused Aim"]=2197,
		["Lethal Shots"]=1344,
		["Careful Aim"]=1806,
		["Improved Hunter's Mark"]=1343,
		["Mortal Shots"]=1349,
		["Go for the Throat"]=1818,
		["Improved Arcane Shot"]=1346,
		["Aimed Shot"]=1345,
		["Rapid Killing"]=1819,
		["Improved Stings"]=1348,
		["Efficiency"]=1342,
		["Concussive Barrage"]=1351,
		["Readiness"]=1353,
		["Barrage"]=1347,
		["Combat Experience"]=1804,
		["Ranged Weapon Specialization"]=1362,
		["Piercing Shots"]=2130,
		["Trueshot Aura"]=1361,
		["Improved Barrage"]=1821,
		["Master Marksman"]=1807,
		["Rapid Recuperation"]=2131,
		["Wild Quiver"]=2132,
		["Silencing Shot"]=1808,
		["Improved Steady Shot"]=2133,
		["Marked for Death"]=2134,
		["Chimera Shot"]=2135,
		["Improved Tracking"]=1623,
		["Hawk Eye"]=1820,
		["Savage Strikes"]=1621,
		["Surefooted"]=1310,
		["Entrapment"]=1304,
		["Trap Mastery"]=1305,
		["Survival Instincts"]=1810,
		["Survivalist"]=1622,
		["Scatter Shot"]=1814,
		["Deflection"]=1311,
		["Survival Tactics"]=1309,
		["T.N.T."]=2229,
		["Lock and Load"]=1306,
		["Hunter vs. Wild"]=2228,
		["Killer Instinct"]=1321,
		["Counterattack"]=1312,
		["Lightning Reflexes"]=1303,
		["Resourcefulness"]=1809,
		["Expose Weakness"]=1812,
		["Wyvern Sting"]=1325,
		["Thrill of the Hunt"]=1811,
		["Master Tactician"]=1813,
		["Noxious Stings"]=2141,
		["Point of No Escape"]=2142,
		["Black Arrow"]=1322,
		["Sniper Training"]=2143,
		["Hunting Party"]=2144,
		["Explosive Shot"]=2145,
	},
	["DEATHKNIGHT"]={
		["Butchery"]=1939,
		["Subversion"]=1945,
		["Blade Barrier"]=2017,
		["Bladed Armor"]=1938,
		["Scent of Blood"]=1948,
		["Two-Handed Weapon Specialization"]=2217,
		["Rune Tap"]=1941,
		["Dark Conviction"]=1943,
		["Death Rune Mastery"]=2086,
		["Improved Rune Tap"]=1942,
		["Spell Deflection"]=2018,
		["Vendetta"]=1953,
		["Bloody Strikes"]=2015,
		["Veteran of the Third War"]=1950,
		["Mark of Blood"]=1949,
		["Bloody Vengeance"]=1944,
		["Abomination's Might"]=2105,
		["Bloodworms"]=1960,
		["Hysteria"]=1954,
		["Improved Blood Presence"]=1936,
		["Improved Death Strike"]=2259,
		["Sudden Doom"]=1955,
		["Vampiric Blood"]=2019,
		["Will of the Necropolis"]=1959,
		["Heart Strike"]=1957,
		["Might of Mograine"]=1958,
		["Blood Gorged"]=2034,
		["Dancing Rune Weapon"]=1961,
		["Improved Icy Touch"]=2031,
		["Runic Power Mastery"]=2020,
		["Toughness"]=1968,
		["Icy Reach"]=2035,
		["Black Ice"]=1973,
		["Nerves of Cold Steel"]=2022,
		["Icy Talons"]=2042,
		["Lichborne"]=2215,
		["Annihilation"]=2048,
		["Killing Machine"]=2044,
		["Chill of the Grave"]=1981,
		["Endless Winter"]=1971,
		["Frigid Dreadplate"]=1990,
		["Glacier Rot"]=2030,
		["Deathchill"]=1980,
		["Improved Icy Talons"]=2223,
		["Merciless Combat"]=1993,
		["Rime"]=1992,
		["Chilblains"]=2260,
		["Hungering Cold"]=1999,
		["Improved Frost Presence"]=2029,
		["Threat of Thassarian"]=2284,
		["Blood of the North"]=2210,
		["Unbreakable Armor"]=1979,
		["Acclimation"]=1997,
		["Frost Strike"]=1975,
		["Guile of Gorefiend"]=2040,
		["Tundra Stalker"]=1998,
		["Howling Blast"]=1989,
		["Vicious Strikes"]=2082,
		["Virulence"]=1932,
		["Anticipation"]=2218,
		["Epidemic"]=1963,
		["Morbidity"]=1933,
		["Unholy Command"]=2025,
		["Ravenous Dead"]=1934,
		["Outbreak"]=2008,
		["Necrosis"]=2047,
		["Corpse Explosion"]=1985,
		["On a Pale Horse"]=2039,
		["Blood-Caked Blade"]=2004,
		["Night of the Dead"]=2225,
		["Unholy Blight"]=1996,
		["Impurity"]=2005,
		["Dirge"]=2011,
		["Desecration"]=2226,
		["Magic Suppression"]=2009,
		["Reaping"]=2001,
		["Master of Ghouls"]=1984,
		["Desolation"]=2285,
		["Anti-Magic Zone"]=2221,
		["Improved Unholy Presence"]=2013,
		["Ghoul Frenzy"]=2085,
		["Crypt Fever"]=1962,
		["Bone Shield"]=2007,
		["Wandering Plague"]=2003,
		["Ebon Plaguebringer"]=2043,
		["Scourge Strike"]=2216,
		["Rage of Rivendare"]=2036,
		["Summon Gargoyle"]=2000,
	},
	["DRUID"]={
		["Starlight Wrath"]=762,
		["Genesis"]=2238,
		["Moonglow"]=783,
		["Nature's Majesty"]=1822,
		["Improved Moonfire"]=763,
		["Brambles"]=782,
		["Nature's Grace"]=789,
		["Nature's Splendor"]=2240,
		["Nature's Reach"]=764,
		["Vengeance"]=792,
		["Celestial Focus"]=784,
		["Lunar Guidance"]=1782,
		["Insect Swarm"]=788,
		["Improved Insect Swarm"]=2239,
		["Dreamstate"]=1784,
		["Moonfury"]=790,
		["Balance of Power"]=1783,
		["Moonkin Form"]=793,
		["Improved Moonkin Form"]=1912,
		["Improved Faerie Fire"]=1785,
		["Owlkin Frenzy"]=1913,
		["Wrath of Cenarius"]=1786,
		["Eclipse"]=1924,
		["Typhoon"]=1923,
		["Force of Nature"]=1787,
		["Gale Winds"]=1925,
		["Earth and Moon"]=1928,
		["Starfall"]=1926,
		["Ferocity"]=796,
		["Feral Aggression"]=795,
		["Feral Instinct"]=799,
		["Savage Fury"]=805,
		["Thick Hide"]=794,
		["Feral Swiftness"]=807,
		["Survival Instincts"]=1162,
		["Sharpened Claws"]=798,
		["Shredding Attacks"]=802,
		["Predatory Strikes"]=803,
		["Primal Fury"]=801,
		["Primal Precision"]=1914,
		["Brutal Impact"]=797,
		["Feral Charge"]=804,
		["Nurturing Instinct"]=1792,
		["Natural Reaction"]=2242,
		["Heart of the Wild"]=808,
		["Survival of the Fittest"]=1794,
		["Leader of the Pack"]=809,
		["Improved Leader of the Pack"]=1798,
		["Primal Tenacity"]=1793,
		["Protector of the Pack"]=2241,
		["Predatory Instincts"]=1795,
		["Infected Wounds"]=1919,
		["King of the Jungle"]=1921,
		["Mangle"]=1796,
		["Improved Mangle"]=1920,
		["Rend and Tear"]=1918,
		["Primal Gore"]=2266,
		["Berserk"]=1927,
		["Improved Mark of the Wild"]=821,
		["Nature's Focus"]=823,
		["Furor"]=822,
		["Naturalist"]=824,
		["Subtlety"]=841,
		["Natural Shapeshifter"]=826,
		["Intensity"]=829,
		["Omen of Clarity"]=827,
		["Master Shapeshifter"]=1915,
		["Tranquil Spirit"]=843,
		["Improved Rejuvenation"]=830,
		["Nature's Swiftness"]=831,
		["Gift of Nature"]=828,
		["Improved Tranquility"]=842,
		["Empowered Touch"]=1788,
		["Nature's Bounty"]=825,
		["Living Spirit"]=1797,
		["Swiftmend"]=844,
		["Natural Perfection"]=1790,
		["Empowered Rejuvenation"]=1789,
		["Living Seed"]=1922,
		["Revitalize"]=1929,
		["Tree of Life"]=1791,
		["Improved Tree of Life"]=1930,
		["Improved Barkskin"]=2264,
		["Gift of the Earthmother"]=1916,
		["Wild Growth"]=1917,
	},
	["MAGE"] = {
		["Arcane Subtlety"]=74,
		["Arcane Focus"]=76,
		["Arcane Stability"]=80,
		["Arcane Fortitude"]=85,
		["Magic Absorption"]=1650,
		["Arcane Concentration"]=75,
		["Magic Attunement"]=82,
		["Spell Impact"]=81,
		["Student of the Mind"]=1845,
		["Focus Magic"]=2211,
		["Arcane Shielding"]=83,
		["Improved Counterspell"]=88,
		["Arcane Meditation"]=1142,
		["Torment the Weak"]=2222,
		["Improved Blink"]=1724,
		["Presence of Mind"]=86,
		["Arcane Mind"]=77,
		["Prismatic Cloak"]=1726,
		["Arcane Instability"]=421,
		["Arcane Potency"]=1725,
		["Arcane Empowerment"]=1727,
		["Arcane Power"]=87,
		["Incanter's Absorption"]=1844,
		["Arcane Flows"]=1843,
		["Mind Mastery"]=1728,
		["Slow"]=1729,
		["Missile Barrage"]=2209,
		["Netherwind Presence"]=1846,
		["Spell Power"]=1826,
		["Arcane Barrage"]=1847,
		["Improved Fire Blast"]=27,
		["Incineration"]=1141,
		["Improved Fireball"]=26,
		["Ignite"]=34,
		["Burning Determination"]=2212,
		["World in Flames"]=31,
		["Flame Throwing"]=28,
		["Impact"]=30,
		["Pyroblast"]=29,
		["Burning Soul"]=23,
		["Improved Scorch"]=25,
		["Molten Shields"]=24,
		["Master of Elements"]=1639,
		["Playing with Fire"]=1730,
		["Critical Mass"]=33,
		["Blast Wave"]=32,
		["Blazing Speed"]=1731,
		["Fire Power"]=35,
		["Pyromaniac"]=1733,
		["Combustion"]=36,
		["Molten Fury"]=1732,
		["Fiery Payback"]=1848,
		["Empowered Fire"]=1734,
		["Firestarter"]=1849,
		["Dragon's Breath"]=1735,
		["Hot Streak"]=1850,
		["Burnout"]=1851,
		["Living Bomb"]=1852,
		["Frostbite"]=38,
		["Improved Frostbolt"]=37,
		["Ice Floes"]=62,
		["Ice Shards"]=73,
		["Frost Warding"]=70,
		["Precision"]=1649,
		["Permafrost"]=65,
		["Piercing Ice"]=61,
		["Icy Veins"]=69,
		["Improved Blizzard"]=63,
		["Arctic Reach"]=741,
		["Frost Channeling"]=66,
		["Shatter"]=67,
		["Cold Snap"]=72,
		["Improved Cone of Cold"]=64,
		["Frozen Core"]=1736,
		["Cold as Ice"]=1737,
		["Winter's Chill"]=68,
		["Shattered Barrier"]=2214,
		["Ice Barrier"]=71,
		["Arctic Winds"]=1738,
		["Empowered Frostbolt"]=1740,
		["Fingers of Frost"]=1853,
		["Brain Freeze"]=1854,
		["Summon Water Elemental"]=1741,
		["Enduring Winter"]=1855,
		["Chilled to the Bone"]=1856,
		["Deep Freeze"]=1857,
	},
	["PALADIN"]={
		["Spiritual Focus"]=1432,
		["Seals of the Pure"]=1463,
		["Healing Light"]=1444,
		["Divine Intellect"]=1449,
		["Unyielding Faith"]=1628,
		["Aura Mastery"]=1435,
		["Illumination"]=1461,
		["Improved Lay on Hands"]=1443,
		["Improved Concentration Aura"]=1450,
		["Improved Blessing of Wisdom"]=1446,
		["Blessed Hands"]=2198,
		["Pure of Heart"]=1742,
		["Divine Favor"]=1433,
		["Sanctified Light"]=1465,
		["Purifying Power"]=1743,
		["Holy Power"]=1627,
		["Light's Grace"]=1745,
		["Holy Shock"]=1502,
		["Blessed Life"]=1744,
		["Sacred Cleansing"]=2190,
		["Holy Guidance"]=1746,
		["Divine Illumination"]=1747,
		["Judgements of the Pure"]=2199,
		["Infusion of Light"]=2193,
		["Enlightened Judgements"]=2191,
		["Beacon of Light"]=2192,
		["Divinity"]=1442,
		["Divine Strength"]=2185,
		["Stoicism"]=1748,
		["Guardian's Favor"]=1425,
		["Anticipation"]=1629,
		["Divine Sacrifice"]=2280,
		["Improved Righteous Fury"]=1501,
		["Toughness"]=1423,
		["Divine Guardian"]=2281,
		["Improved Hammer of Justice"]=1521,
		["Improved Devotion Aura"]=1422,
		["Blessing of Sanctuary"]=1431,
		["Reckoning"]=1426,
		["Sacred Duty"]=1750,
		["One-Handed Weapon Specialization"]=1429,
		["Spiritual Attunement"]=2282,
		["Holy Shield"]=1430,
		["Ardent Defender"]=1751,
		["Redoubt"]=1421,
		["Combat Expertise"]=1753,
		["Touched by the Light"]=2195,
		["Avenger's Shield"]=1754,
		["Guarded by the Light"]=2194,
		["Shield of the Templar"]=2204,
		["Judgements of the Just"]=2200,
		["Hammer of the Righteous"]=2196,
		["Deflection"]=1403,
		["Benediction"]=1407,
		["Improved Judgements"]=1631,
		["Heart of the Crusader"]=1464,
		["Improved Blessing of Might"]=1401,
		["Vindication"]=1633,
		["Conviction"]=1411,
		["Seal of Command"]=1481,
		["Pursuit of Justice"]=1634,
		["Eye for an Eye"]=1632,
		["Sanctity of Battle"]=1761,
		["Crusade"]=1755,
		["Two-Handed Weapon Specialization"]=1410,
		["Sanctified Retribution"]=1756,
		["Vengeance"]=1402,
		["Divine Purpose"]=1757,
		["The Art of War"]=2176,
		["Repentance"]=1441,
		["Judgements of the Wise"]=1758,
		["Fanaticism"]=1759,
		["Sanctified Wrath"]=2147,
		["Swift Retribution"]=2148,
		["Crusader Strike"]=1823,
		["Sheath of Light"]=2179,
		["Righteous Vengeance"]=2149,
		["Divine Storm"]=2150,
	},
	["PRIEST"]={
		["Unbreakable Will"]=342,
		["Twin Disciplines"]=1898,
		["Silent Resolve"]=352,
		["Improved Inner Fire"]=346,
		["Improved Power Word: Fortitude"]=344,
		["Martyrdom"]=321,
		["Meditation"]=347,
		["Inner Focus"]=348,
		["Improved Power Word: Shield"]=343,
		["Absolution"]=1769,
		["Mental Agility"]=341,
		["Improved Mana Burn"]=350,
		["Reflective Shield"]=2268,
		["Mental Strength"]=1201,
		["Soul Warding"]=351,
		["Focused Power"]=1771,
		["Enlightenment"]=1772,
		["Focused Will"]=1858,
		["Power Infusion"]=322,
		["Improved Flash Heal"]=1773,
		["Renewed Hope"]=2235,
		["Rapture"]=1896,
		["Aspiration"]=1894,
		["Divine Aegis"]=1895,
		["Pain Suppression"]=1774,
		["Grace"]=1901,
		["Borrowed Time"]=1202,
		["Penance"]=1897,
		["Healing Focus"]=410,
		["Improved Renew"]=406,
		["Holy Specialization"]=401,
		["Spell Warding"]=411,
		["Divine Fury"]=1181,
		["Desperate Prayer"]=442,
		["Blessed Recovery"]=1636,
		["Inspiration"]=361,
		["Holy Reach"]=1635,
		["Improved Healing"]=408,
		["Searing Light"]=403,
		["Healing Prayers"]=413,
		["Spirit of Redemption"]=1561,
		["Spiritual Guidance"]=402,
		["Surge of Light"]=1766,
		["Spiritual Healing"]=404,
		["Holy Concentration"]=1768,
		["Lightwell"]=1637,
		["Blessed Resilience"]=1765,
		["Body and Soul"]=2279,
		["Empowered Healing"]=1767,
		["Serendipity"]=1904,
		["Empowered Renew"]=1902,
		["Circle of Healing"]=1815,
		["Test of Faith"]=1903,
		["Divine Providence"]=1905,
		["Guardian Spirit"]=1911,
		["Spirit Tap"]=465,
		["Improved Spirit Tap"]=2027,
		["Darkness"]=462,
		["Shadow Affinity"]=466,
		["Improved Shadow Word: Pain"]=482,
		["Shadow Focus"]=463,
		["Improved Psychic Scream"]=542,
		["Improved Mind Blast"]=481,
		["Mind Flay"]=501,
		["Veiled Shadows"]=483,
		["Shadow Reach"]=881,
		["Shadow Weaving"]=461,
		["Silence"]=541,
		["Vampiric Embrace"]=484,
		["Improved Vampiric Embrace"]=1638,
		["Focused Mind"]=1777,
		["Mind Melt"]=1781,
		["Improved Devouring Plague"]=2267,
		["Shadowform"]=521,
		["Shadow Power"]=1778,
		["Improved Shadowform"]=1906,
		["Misery"]=1816,
		["Psychic Horror"]=1908,
		["Vampiric Touch"]=1779,
		["Pain and Suffering"]=1909,
		["Twisted Faith"]=1907,
		["Dispersion"]=1910,
	},
	["ROGUE"]={
		["Improved Eviscerate"]=276,
		["Remorseless Attacks"]=272,
		["Malice"]=270,
		["Ruthlessness"]=273,
		["Blood Spatter"]=2068,
		["Puncturing Wounds"]=277,
		["Vigor"]=382,
		["Improved Expose Armor"]=278,
		["Lethality"]=269,
		["Vile Poisons"]=682,
		["Improved Poisons"]=268,
		["Fleet Footed"]=1721,
		["Cold Blood"]=280,
		["Improved Kidney Shot"]=279,
		["Quick Recovery"]=1762,
		["Seal Fate"]=283,
		["Murder"]=274,
		["Deadly Brew"]=2065,
		["Overkill"]=281,
		["Deadened Nerves"]=1723,
		["Focused Attacks"]=2069,
		["Find Weakness"]=1718,
		["Master Poisoner"]=1715,
		["Mutilate"]=1719,
		["Turn the Tables"]=2066,
		["Cut to the Chase"]=2070,
		["Hunger For Blood"]=2071,
		["Improved Gouge"]=203,
		["Improved Sinister Strike"]=201,
		["Dual Wield Specialization"]=221,
		["Improved Slice and Dice"]=1827,
		["Deflection"]=187,
		["Precision"]=181,
		["Endurance"]=204,
		["Riposte"]=301,
		["Close Quarters Combat"]=182,
		["Improved Kick"]=206,
		["Improved Sprint"]=222,
		["Lightning Reflexes"]=186,
		["Aggression"]=1122,
		["Mace Specialization"]=184,
		["Blade Flurry"]=223,
		["Hack and Slash"]=242,
		["Weapon Expertise"]=1703,
		["Blade Twisting"]=1706,
		["Vitality"]=1705,
		["Adrenaline Rush"]=205,
		["Nerves of Steel"]=1707,
		["Throwing Specialization"]=2072,
		["Combat Potency"]=1825,
		["Unfair Advantage"]=2073,
		["Surprise Attacks"]=1709,
		["Savage Combat"]=2074,
		["Prey on the Weak"]=2075,
		["Killing Spree"]=2076,
		["Relentless Strikes"]=2244,
		["Master of Deception"]=241,
		["Opportunity"]=261,
		["Sleight of Hand"]=1700,
		["Dirty Tricks"]=262,
		["Camouflage"]=244,
		["Elusiveness"]=247,
		["Ghostly Strike"]=303,
		["Serrated Blades"]=1123,
		["Setup"]=246,
		["Initiative"]=245,
		["Improved Ambush"]=263,
		["Heightened Senses"]=1701,
		["Preparation"]=284,
		["Dirty Deeds"]=265,
		["Hemorrhage"]=681,
		["Master of Subtlety"]=1713,
		["Deadliness"]=1702,
		["Enveloping Shadows"]=1711,
		["Premeditation"]=381,
		["Cheat Death"]=1722,
		["Sinister Calling"]=1712,
		["Waylay"]=2077,
		["Honor Among Thieves"]=2078,
		["Shadowstep"]=1714,
		["Filthy Tricks"]=2079,
		["Slaughter from the Shadows"]=2080,
		["Shadow Dance"]=2081,
	},
	["SHAMAN"]={
		["Convection"]=564,
		["Concussion"]=563,
		["Call of Flame"]=561,
		["Elemental Warding"]=1640,
		["Elemental Devastation"]=1645,
		["Reverberation"]=575,
		["Elemental Focus"]=574,
		["Elemental Fury"]=565,
		["Improved Fire Nova Totem"]=567,
		["Eye of the Storm"]=1642,
		["Elemental Reach"]=1641,
		["Call of Thunder"]=562,
		["Unrelenting Storm"]=1682,
		["Elemental Precision"]=1685,
		["Lightning Mastery"]=721,
		["Elemental Mastery"]=573,
		["Storm, Earth and Fire"]=2052,
		["Booming Echoes"]=2262,
		["Elemental Oath"]=2049,
		["Lightning Overload"]=1686,
		["Astral Shift"]=2050,
		["Totem of Wrath"]=1687,
		["Lava Flows"]=2051,
		["Shamanism"]=2252,
		["Thunderstorm"]=2053,
		["Enhancing Totems"]=610,
		["Earth's Grasp"]=2101,
		["Ancestral Knowledge"]=614,
		["Guardian Totems"]=609,
		["Thundering Strikes"]=613,
		["Improved Ghost Wolf"]=605,
		["Improved Shields"]=607,
		["Elemental Weapons"]=611,
		["Shamanistic Focus"]=617,
		["Anticipation"]=601,
		["Flurry"]=602,
		["Toughness"]=615,
		["Improved Windfury Totem"]=1647,
		["Spirit Weapons"]=616,
		["Mental Dexterity"]=2083,
		["Unleashed Rage"]=1689,
		["Weapon Mastery"]=1643,
		["Frozen Power"]=2263,
		["Dual Wield Specialization"]=1692,
		["Dual Wield"]=1690,
		["Stormstrike"]=901,
		["Static Shock"]=2055,
		["Lava Lash"]=2249,
		["Improved Stormstrike"]=2054,
		["Mental Quickness"]=1691,
		["Shamanistic Rage"]=1693,
		["Earthen Power"]=2056,
		["Maelstrom Weapon"]=2057,
		["Feral Spirit"]=2058,
		["Improved Healing Wave"]=586,
		["Totemic Focus"]=595,
		["Improved Reincarnation"]=589,
		["Healing Grace"]=1646,
		["Tidal Focus"]=593,
		["Improved Water Shield"]=583,
		["Healing Focus"]=587,
		["Tidal Force"]=582,
		["Ancestral Healing"]=581,
		["Restorative Totems"]=588,
		["Tidal Mastery"]=594,
		["Healing Way"]=1648,
		["Nature's Swiftness"]=591,
		["Focused Mind"]=1695,
		["Purification"]=592,
		["Nature's Guardian"]=1699,
		["Mana Tide Totem"]=590,
		["Cleanse Spirit"]=2084,
		["Blessing of the Eternals"]=2060,
		["Improved Chain Heal"]=1697,
		["Nature's Blessing"]=1696,
		["Ancestral Awakening"]=2061,
		["Earth Shield"]=1698,
		["Improved Earth Shield"]=2059,
		["Tidal Waves"]=2063,
		["Riptide"]=2064,
	},
	["WARLOCK"]={
		["Improved Curse of Agony"]=1284,
		["Suppression"]=1005,
		["Improved Corruption"]=1003,
		["Improved Curse of Weakness"]=1006,
		["Improved Drain Soul"]=1101,
		["Improved Life Tap"]=1007,
		["Soul Siphon"]=1004,
		["Improved Fear"]=2205,
		["Fel Concentration"]=1001,
		["Amplify Curse"]=1061,
		["Grim Reach"]=1021,
		["Nightfall"]=1002,
		["Empowered Corruption"]=1764,
		["Shadow Embrace"]=1763,
		["Siphon Life"]=1041,
		["Curse of Exhaustion"]=1081,
		["Improved Felhunter"]=1873,
		["Shadow Mastery"]=1042,
		["Eradication"]=1878,
		["Contagion"]=1669,
		["Dark Pact"]=1022,
		["Improved Howl of Terror"]=1668,
		["Malediction"]=1667,
		["Death's Embrace"]=1875,
		["Unstable Affliction"]=1670,
		["Pandemic"]=2245,
		["Everlasting Affliction"]=1876,
		["Haunt"]=2041,
		["Improved Healthstone"]=1221,
		["Improved Imp"]=1222,
		["Demonic Embrace"]=1223,
		["Fel Synergy"]=1883,
		["Improved Health Funnel"]=1224,
		["Demonic Brutality"]=1225,
		["Fel Vitality"]=1242,
		["Improved Succubus"]=1243,
		["Soul Link"]=1282,
		["Fel Domination"]=1226,
		["Demonic Aegis"]=1671,
		["Unholy Power"]=1262,
		["Master Summoner"]=1227,
		["Mana Feed"]=1281,
		["Master Conjuror"]=1261,
		["Master Demonologist"]=1244,
		["Molten Core"]=1283,
		["Demonic Resilience"]=1680,
		["Demonic Empowerment"]=1880,
		["Demonic Knowledge"]=1263,
		["Demonic Tactics"]=1673,
		["Decimation"]=2261,
		["Improved Demonic Tactics"]=1882,
		["Summon Felguard"]=1672,
		["Nemesis"]=1884,
		["Demonic Pact"]=1885,
		["Metamorphosis"]=1886,
		["Improved Shadow Bolt"]=944,
		["Bane"]=943,
		["Aftermath"]=982,
		["Molten Skin"]=1887,
		["Cataclysm"]=941,
		["Demonic Power"]=983,
		["Shadowburn"]=963,
		["Ruin"]=967,
		["Intensity"]=985,
		["Destructive Reach"]=964,
		["Improved Searing Pain"]=965,
		["Backlash"]=1817,
		["Improved Immolate"]=961,
		["Devastation"]=981,
		["Nether Protection"]=1679,
		["Emberstorm"]=966,
		["Conflagrate"]=968,
		["Soul Leech"]=1678,
		["Pyroclasm"]=986,
		["Shadow and Flame"]=1677,
		["Improved Soul Leech"]=1889,
		["Backdraft"]=1888,
		["Shadowfury"]=1676,
		["Empowered Imp"]=2045,
		["Fire and Brimstone"]=1890,
		["Chaos Bolt"]=1891,
	},
	["WARRIOR"]={
		["Improved Heroic Strike"]=124,
		["Deflection"]=130,
		["Improved Rend"]=127,
		["Improved Charge"]=126,
		["Iron Will"]=641,
		["Tactical Mastery"]=128,
		["Improved Overpower"]=131,
		["Anger Management"]=137,
		["Impale"]=662,
		["Deep Wounds"]=121,
		["Two-Handed Weapon Specialization"]=136,
		["Taste for Blood"]=2232,
		["Poleaxe Specialization"]=132,
		["Sweeping Strikes"]=133,
		["Mace Specialization"]=125,
		["Sword Specialization"]=123,
		["Weapon Mastery"]=134,
		["Improved Hamstring"]=129,
		["Trauma"]=1859,
		["Second Wind"]=1663,
		["Mortal Strike"]=135,
		["Strength of Arms"]=1862,
		["Improved Slam"]=2233,
		["Juggernaut"]=2283,
		["Improved Mortal Strike"]=1824,
		["Unrelenting Assault"]=1860,
		["Sudden Death"]=1662,
		["Endless Rage"]=1661,
		["Blood Frenzy"]=1664,
		["Wrecking Crew"]=2231,
		["Bladestorm"]=1863,
		["Armored to the Teeth"]=2250,
		["Booming Voice"]=158,
		["Cruelty"]=157,
		["Improved Demoralizing Shout"]=161,
		["Unbridled Wrath"]=159,
		["Improved Cleave"]=166,
		["Piercing Howl"]=160,
		["Blood Craze"]=661,
		["Commanding Presence"]=154,
		["Dual Wield Specialization"]=1581,
		["Improved Execute"]=1542,
		["Enrage"]=155,
		["Precision"]=1657,
		["Death Wish"]=165,
		["Improved Intercept"]=1543,
		["Improved Berserker Rage"]=1541,
		["Flurry"]=156,
		["Intensify Rage"]=1864,
		["Bloodthirst"]=167,
		["Improved Whirlwind"]=1655,
		["Furious Attacks"]=1865,
		["Improved Berserker Stance"]=1658,
		["Heroic Fury"]=1868,
		["Rampage"]=1659,
		["Bloodsurge"]=1866,
		["Unending Fury"]=2234,
		["Titan's Grip"]=1867,
		["Improved Bloodrage"]=142,
		["Shield Specialization"]=1601,
		["Improved Thunder Clap"]=141,
		["Incite"]=144,
		["Anticipation"]=138,
		["Last Stand"]=153,
		["Improved Revenge"]=147,
		["Shield Mastery"]=1654,
		["Toughness"]=140,
		["Improved Spell Reflection"]=2247,
		["Improved Disarm"]=151,
		["Puncture"]=146,
		["Improved Disciplines"]=150,
		["Concussion Blow"]=152,
		["Gag Order"]=149,
		["One-Handed Weapon Specialization"]=702,
		["Improved Defensive Stance"]=1652,
		["Vigilance"]=148,
		["Focused Rage"]=1660,
		["Vitality"]=1653,
		["Safeguard"]=1870,
		["Warbringer"]=2236,
		["Devastate"]=1666,
		["Critical Block"]=1893,
		["Sword and Board"]=1871,
		["Damage Shield"]=2246,
		["Shockwave"]=1872,
	},
	["Cunning"]={
		["pet"]=1,
		["Cobra Reflexes"]=2118,
		["Dash"]=2119,
		["Dive"]=2201,
		["Great Stamina"]=2120,
		["Natural Armor"]=2121,
		["Boar's Speed"]=2165,
		["Mobility"]=2207,
		["Mobility"]=2208,
		["Owl's Focus"]=2182,
		["Spiked Collar"]=2127,
		["Avoidance"]=2166,
		["Lionhearted"]=2167,
		["Carrion Feeder"]=2206,
		["Great Resistance"]=2168,
		["Cornered"]=2177,
		["Feeding Frenzy"]=2183,
		["Wolverine Bite"]=2181,
		["Roar of Recovery"]=2184,
		["Bullheaded"]=2175,
		["Grace of the Mantis"]=2257,
		["Wild Hunt"]=2256,
		["Roar of Sacrifice"]=2278,
	},
	["Ferocity"]={
		["pet"]=1,
		["Cobra Reflexes"]=2107,
		["Dash"]=2109,
		["Dive"]=2203,
		["Great Stamina"]=2112,
		["Natural Armor"]=2113,
		["Improved Cower"]=2124,
		["Bloodthirsty"]=2128,
		["Spiked Collar"]=2125,
		["Boar's Speed"]=2151,
		["Avoidance"]=2106,
		["Lionhearted"]=2152,
		["Charge"]=2111,
		["Swoop"]=2219,
		["Heart of the Phoenix"]=2156,
		["Spider's Bite"]=2129,
		["Great Resistance"]=2154,
		["Rabid"]=2155,
		["Lick Your Wounds"]=2153,
		["Call of the Wild"]=2157,
		["Shark Attack"]=2254,
		["Wild Hunt"]=2253,
	},
	["Tenacity"]={
		["pet"]=1,
		["Cobra Reflexes"]=2114,
		["Charge"]=2237,
		["Great Stamina"]=2116,
		["Natural Armor"]=2117,
		["Spiked Collar"]=2126,
		["Boar's Speed"]=2160,
		["Blood of the Rhino"]=2173,
		["Pet Barding"]=2122,
		["Avoidance"]=2110,
		["Guard Dog"]=2123,
		["Lionhearted"]=2162,
		["Thunderstomp"]=2277,
		["Grace of the Mantis"]=2163,
		["Great Resistance"]=2161,
		["Last Stand"]=2171,
		["Taunt"]=2170,
		["Roar of Sacrifice"]=2172,
		["Intervene"]=2169,
		["Silverback"]=2258,
		["Wild Hunt"]=2255,
	}
}
me.GlyphsToSpells = {
	["Copy of Holy Bolt"] = 46487,
	["Glyph of Adrenaline Rush"] = 56808,
	["Glyph of Aimed Shot"] = 56824,
	["Glyph of Ambush"] = 56813,
	["Glyph of Anti-Magic Shell"] = 58623,
	["Glyph of Aquatic Form"] = 57856,
	["Glyph of Arcane Barrage"] = 63092,
	["Glyph of Arcane Blast"] = 62210,
	["Glyph of Arcane Explosion"] = 56360,
	["Glyph of Arcane Intellect"] = 57924,
	["Glyph of Arcane Missiles"] = 56363,
	["Glyph of Arcane Power"] = 56381,
	["Glyph of Arcane Shot"] = 56841,
	["Glyph of Aspect of the Viper"] = 56851,
	["Glyph of Astral Recall"] = 58058,
	["Glyph of Avenger's Shield"] = 54930,
	["Glyph of Avenging Wrath"] = 54938,
	["Glyph of Backstab"] = 56800,
	["Glyph of Barbaric Insults"] = 58365,
	["Glyph of Barkskin"] = 63057,
	["Glyph of Battle"] = 58095,
	["Glyph of Beacon of Light"] = 63218,
	["Glyph of Berserk"] = 62969,
	["Glyph of Bestial Wrath"] = 56830,
	["Glyph of Blade Flurry"] = 56818,
	["Glyph of Bladestorm"] = 63324,
	["Glyph of Blast Wave"] = 62126,
	["Glyph of Blessing of Kings"] = 57937,
	["Glyph of Blessing of Might"] = 57958,
	["Glyph of Blessing of Wisdom"] = 57979,
	["Glyph of Blink"] = 56365,
	["Glyph of Blocking"] = 58375,
	["Glyph of Blood Strike"] = 59332,
	["Glyph of Blood Tap"] = 58640,
	["Glyph of Bloodrage"] = 58096,
	["Glyph of Bloodthirst"] = 58369,
	["Glyph of Blurred Speed"] = 58039,
	["Glyph of Bone Shield"] = 58673,
	["Glyph of Chain Heal"] = 55437,
	["Glyph of Chain Lightning"] = 55449,
	["Glyph of Chains of Ice"] = 58620,
	["Glyph of Challenging Roar"] = 57858,
	["Glyph of Chaos Bolt"] = 63304,
	["Glyph of Charge"] = 58097,
	["Glyph of Chimera Shot"] = 63065,
	["Glyph of Circle of Healing"] = 55675,
	["Glyph of Claw"] = 67598,
	["Glyph of Cleansing"] = 54935,
	["Glyph of Cleaving"] = 58366,
	["Glyph of Cloak of Shadows"] = 63269,
	["Glyph of Command"] = 68164,
	["Glyph of Conflagrate"] = 56235,
	["Glyph of Consecration"] = 54928,
	["Glyph of Corpse Explosion"] = 59307,
	["Glyph of Corruption"] = 56218,
	["Glyph of Crippling Poison"] = 56820,
	["Glyph of Crusader Strike"] = 54927,
	["Glyph of Curse of Agony"] = 56241,
	["Glyph of Curse of Exhausion"] = 58080,
	["Glyph of Dancing Rune Weapon"] = 63330,
	["Glyph of Dark Command"] = 58613,
	["Glyph of Dark Death"] = 63333,
	["Glyph of Dash"] = 59219,
	["Glyph of Deadly Throw"] = 56806,
	["Glyph of Death and Decay"] = 58629,
	["Glyph of Death Coil"] = 56232,
	["Glyph of Death Grip"] = 62259,
	["Glyph of Death Strike"] = 59336,
	["Glyph of Death's Embrace"] = 58677,
	["Glyph of Deep Freeze"] = 63090,
	["Glyph of Demonic Circle"] = 63309,
	["Glyph of Deterrence"] = 56850,
	["Glyph of Devastate"] = 58388,
	["Glyph of Disease"] = 63334,
	["Glyph of Disengage"] = 56844,
	["Glyph of Dispel Magic"] = 55677,
	["Glyph of Dispersion"] = 63229,
	["Glyph of Distract"] = 58032,
	["Glyph of Divine Plea"] = 63223,
	["Glyph of Divine Storm"] = 63220,
	["Glyph of Divinity"] = 54939,
	["Glyph of Drain Soul"] = 58070,
	["Glyph of Earth Shield"] = 63279,
	["Glyph of Earthliving Weapon"] = 55439,
	["Glyph of Elemental Mastery"] = 55452,
	["Glyph of Enduring Victory"] = 58104,
	["Glyph of Enraged Regeneration"] = 63327,
	["Glyph of Entangling Roots"] = 54760,
	["Glyph of Envenom"] = 64199,
	["Glyph of Eternal Water"] = 70937,
	["Glyph of Evasion"] = 56799,
	["Glyph of Eviscerate"] = 56802,
	["Glyph of Evocation"] = 56380,
	["Glyph of Execution"] = 58367,
	["Glyph of Exorcism"] = 54934,
	["Glyph of Explosive Shot"] = 63066,
	["Glyph of Explosive Trap"] = 63068,
	["Glyph of Expose Armor"] = 56803,
	["Glyph of Fade"] = 55684,
	["Glyph of Fading"] = 57985,
	["Glyph of Fan of Knives"] = 63254,
	["Glyph of Fear Ward"] = 55678,
	["Glyph of Fear"] = 56244,
	["Glyph of Feign Death"] = 57903,
	["Glyph of Feint"] = 56804,
	["Glyph of Felguard"] = 56246,
	["Glyph of Felhunter"] = 56249,
	["Glyph of Feral Spirit"] = 63271,
	["Glyph of Fire Blast"] = 56369,
	["Glyph of Fire Elemental Totem"] = 55455,
	["Glyph of Fire Nova"] = 55450,
	["Glyph of Fire Ward"] = 57926,
	["Glyph of Fireball"] = 56368,
	["Glyph of Flame Shock"] = 55447,
	["Glyph of Flametongue Weapon"] = 55451,
	["Glyph of Flash Heal"] = 55679,
	["Glyph of Flash of Light"] = 54936,
	["Glyph of Focus"] = 62080,
	["Glyph of Fortitude"] = 58009,
	["Glyph of Freezing Trap"] = 56845,
	["Glyph of Frenzied Regeneration"] = 54810,
	["Glyph of Frost Armor"] = 57928,
	["Glyph of Frost Nova"] = 56376,
	["Glyph of Frost Shock"] = 55443,
	["Glyph of Frost Strike"] = 58647,
	["Glyph of Frost Trap"] = 56847,
	["Glyph of Frost Ward"] = 57927,
	["Glyph of Frostbolt"] = 56370,
	["Glyph of Frostfire"] = 61205,
	["Glyph of Garrote"] = 56812,
	["Glyph of Ghost Wolf"] = 59289,
	["Glyph of Ghostly Strike"] = 56814,
	["Glyph of Gouge"] = 56809,
	["Glyph of Growling"] = 54812,
	["Glyph of Guardian Spirit"] = 63231,
	["Glyph of Hammer of Justice"] = 54923,
	["Glyph of Hammer of the Righteous"] = 63219,
	["Glyph of Hammer of Wrath"] = 54926,
	["Glyph of Hamstring"] = 58372,
	["Glyph of Haunt"] = 63302,
	["Glyph of Healing Stream Totem"] = 55456,
	["Glyph of Healing Touch"] = 54825,
	["Glyph of Healing Wave"] = 55440,
	["Glyph of Health Funnel"] = 56238,
	["Glyph of Healthstone"] = 56224,
	["Glyph of Heart Strike"] = 58616,
	["Glyph of Hemorrhage"] = 56807,
	["Glyph of Heroic Strike"] = 58357,
	["Glyph of Hex"] = 63291,
	["Glyph of Holy Light"] = 54937,
	["Glyph of Holy Nova"] = 55683,
	["Glyph of Holy Shock"] = 63224,
	["Glyph of Holy Wrath"] = 56420,
	["Glyph of Horn of Winter"] = 58680,
	["Glyph of Howling Blast"] = 63335,
	["Glyph of Hunger For Blood"] = 63249,
	["Glyph of Hungering Cold"] = 63331,
	["Glyph of Hunter's Mark"] = 56829,
	["Glyph of Hurricane"] = 54831,
	["Glyph of Hymn of Hope"] = 63246,
	["Glyph of Ice Armor"] = 56384,
	["Glyph of Ice Barrier"] = 63095,
	["Glyph of Ice Block"] = 56372,
	["Glyph of Ice Lance"] = 56377,
	["Glyph of Icebound Fortitude"] = 58625,
	["Glyph of Icy Touch"] = 58631,
	["Glyph of Icy Veins"] = 56374,
	["Glyph of Immolate"] = 56228,
	["Glyph of Immolation Trap"] = 56846,
	["Glyph of Imp"] = 56248,
	["Glyph of Incinerate"] = 56242,
	["Glyph of Inner Fire"] = 55686,
	["Glyph of Innervate"] = 54832,
	["Glyph of Insect Swarm"] = 54830,
	["Glyph of Intervene"] = 58377,
	["Glyph of Invisibility"] = 56366,
	["Glyph of Judgement"] = 54922,
	["Glyph of Kill Shot"] = 63067,
	["Glyph of Killing Spree"] = 63252,
	["Glyph of Kilrogg"] = 58081,
	["Glyph of Last Stand"] = 58376,
	["Glyph of Lava"] = 55454,
	["Glyph of Lay on Hands"] = 57955,
	["Glyph of Lesser Healing Wave"] = 55438,
	["Glyph of Levitate"] = 57987,
	["Glyph of Life Tap"] = 63320,
	["Glyph of Lifebloom"] = 54826,
	["Glyph of Lightning Bolt"] = 55453,
	["Glyph of Lightning Shield"] = 55448,
	["Glyph of Lightwell"] = 55673,
	["Glyph of Living Bomb"] = 63091,
	["Glyph of Mage Armor"] = 56383,
	["Glyph of Mana Gem"] = 56367,
	["Glyph of Mana Tide"] = 55441,
	["Glyph of Mangle"] = 54813,
	["Glyph of Mass Dispel"] = 55691,
	["Glyph of Maul"] = 54811,
	["Glyph of Mend Pet"] = 57870,
	["Glyph of Mending"] = 56833,
	["Glyph of Metamorphosis"] = 63303,
	["Glyph of Mind Control"] = 55688,
	["Glyph of Mind Flay"] = 55687,
	["Glyph of Mind Sear"] = 63237,
	["Glyph of Mirror Image"] = 63093,
	["Glyph of Mocking Blow"] = 58099,
	["Glyph of Molten Armor"] = 56382,
	["Glyph of Monsoon"] = 63056,
	["Glyph of Moonfire"] = 52085,
	["Glyph of Moonfire"] = 54829,
	["Glyph of Mortal Strike"] = 58368,
	["Glyph of Multi-Shot"] = 56836,
	["Glyph of Mutilate"] = 63268,
	["Glyph of Natural Force"] = 52084,
	["Glyph of Nourish"] = 62971,
	["Glyph of Obliterate"] = 58671,
	["Glyph of Overpower"] = 58386,
	["Glyph of Pain Suppression"] = 63248,
	["Glyph of Penance"] = 63235,
	["Glyph of Pestilence"] = 59309,
	["Glyph of Pick Lock"] = 58027,
	["Glyph of Pick Pocket"] = 58017,
	["Glyph of Plague Strike"] = 58657,
	["Glyph of Polymorph"] = 56375,
	["Glyph of Possessed Strength"] = 57900,
	["Glyph of Power Word: Shield"] = 55672,
	["Glyph of Prayer of Healing"] = 55680,
	["Glyph of Preparation"] = 56819,
	["Glyph of Psychic Scream"] = 55676,
	["Glyph of Quick Decay"] = 70947,
	["Glyph of Raise Dead"] = 60200,
	["Glyph of Rake"] = 54821,
	["Glyph of Rapid Charge"] = 58355,
	["Glyph of Rapid Fire"] = 56828,
	["Glyph of Rapid Rejuvenation"] = 71013,
	["Glyph of Raptor Strike"] = 63086,
	["Glyph of Rebirth"] = 54733,
	["Glyph of Regrowth"] = 54743,
	["Glyph of Rejuvenation"] = 54754,
	["Glyph of Remove Curse"] = 56364,
	["Glyph of Rending"] = 58385,
	["Glyph of Renew"] = 55674,
	["Glyph of Renewed Life"] = 58059,
	["Glyph of Resonating Power"] = 58356,
	["Glyph of Revenge"] = 58364,
	["Glyph of Revive Pet"] = 57866,
	["Glyph of Righteous Defense"] = 54929,
	["Glyph of Rip"] = 54818,
	["Glyph of Riptide"] = 63273,
	["Glyph of Rune Strike"] = 58669,
	["Glyph of Rune Tap"] = 59327,
	["Glyph of Rupture"] = 56801,
	["Glyph of Safe Fall"] = 58033,
	["Glyph of Salvation"] = 63225,
	["Glyph of Sap"] = 56798,
	["Glyph of Savage Roar"] = 63055,
	["Glyph of Scare Beast"] = 57902,
	["Glyph of Scatter Shot"] = 63069,
	["Glyph of Scorch"] = 56371,
	["Glyph of Scourge Imprisonment"] = 55690,
	["Glyph of Scourge Strike"] = 58642,
	["Glyph of Seal of Command"] = 54925,
	["Glyph of Seal of Light"] = 54943,
	["Glyph of Seal of Righteousness"] = 56414,
	["Glyph of Seal of Vengeance"] = 56416,
	["Glyph of Seal of Wisdom"] = 54940,
	["Glyph of Searing Pain"] = 56226,
	["Glyph of Sense Undead"] = 57947,
	["Glyph of Serpent Sting"] = 56832,
	["Glyph of Shackle Undead"] = 57986,
	["Glyph of Shadow Bolt"] = 56240,
	["Glyph of Shadow Dance"] = 63253,
	["Glyph of Shadow Protection"] = 58015,
	["Glyph of Shadow Word: Death"] = 55682,
	["Glyph of Shadow Word: Pain"] = 55681,
	["Glyph of Shadow"] = 55689,
	["Glyph of Shadowburn"] = 56229,
	["Glyph of Shadowfiend"] = 58228,
	["Glyph of Shadowflame"] = 63310,
	["Glyph of Shield of Righteousness"] = 63222,
	["Glyph of Shield Wall"] = 63329,
	["Glyph of Shocking"] = 55442,
	["Glyph of Shockwave"] = 63325,
	["Glyph of Shred"] = 54815,
	["Glyph of Sinister Strike"] = 56821,
	["Glyph of Siphon Life"] = 56216,
	["Glyph of Slice and Dice"] = 56810,
	["Glyph of Slow Fall"] = 57925,
	["Glyph of Smite"] = 55692,
	["Glyph of Snake Trap"] = 56849,
	["Glyph of Soul Link"] = 63312,
	["Glyph of Souls"] = 58094,
	["Glyph of Soulstone"] = 56231,
	["Glyph of Spell Reflection"] = 63328,
	["Glyph of Spirit of Redemption"] = 55685,
	["Glyph of Spiritual Attunement"] = 54924,
	["Glyph of Sprint"] = 56811,
	["Glyph of Starfall"] = 54828,
	["Glyph of Starfire"] = 54845,
	["Glyph of Steady Shot"] = 56826,
	["Glyph of Stoneclaw Totem"] = 63298,
	["Glyph of Stormstrike"] = 55446,
	["Glyph of Strangulate"] = 58618,
	["Glyph of Subjugate Demon"] = 58107,
	["Glyph of Succubus"] = 56250,
	["Glyph of Sunder Armor"] = 58387,
	["Glyph of Survival Instincts"] = 65243,
	["Glyph of Sweeping Strikes"] = 58384,
	["Glyph of Swiftmend"] = 54824,
	["Glyph of Taunt"] = 58353,
	["Glyph of the Arctic Wolf"] = 58135,
	["Glyph of the Bear Cub"] = 58136,
	["Glyph of the Beast"] = 56857,
	["Glyph of the Black Bear"] = 58132,
	["Glyph of the Black Wolf"] = 58134,
	["Glyph of the Forest Lynx"] = 58133,
	["Glyph of the Ghoul"] = 58686,
	["Glyph of the Hawk"] = 56856,
	["Glyph of the Pack"] = 57904,
	["Glyph of the Penguin"] = 52648,
	["Glyph of the Red Lynx"] = 54912,
	["Glyph of the White Bear"] = 54292,
	["Glyph of the Wild"] = 57855,
	["Glyph of the Wise"] = 57954,
	["Glyph of Thorns"] = 57862,
	["Glyph of Thunder Clap"] = 58098,
	["Glyph of Thunder"] = 63270,
	["Glyph of Thunderstorm"] = 62132,
	["Glyph of Totem of Wrath"] = 63280,
	["Glyph of Tricks of the Trade"] = 63256,
	["Glyph of Trueshot Aura"] = 56842,
	["Glyph of Turn Evil"] = 54931,
	["Glyph of Typhoon"] = 62135,
	["Glyph of Unbreakable Armor"] = 58635,
	["Glyph of Unburdened Rebirth"] = 57857,
	["Glyph of Unending Breath"] = 58079,
	["Glyph of Unholy Blight"] = 63332,
	["Glyph of Unstable Affliction"] = 56233,
	["Glyph of Vampiric Blood"] = 58676,
	["Glyph of Vanish"] = 58038,
	["Glyph of Victory Rush"] = 58382,
	["Glyph of Vigilance"] = 63326,
	["Glyph of Vigor"] = 56805,
	["Glyph of Voidwalker"] = 56247,
	["Glyph of Volley"] = 56838,
	["Glyph of Water Breathing"] = 58055,
	["Glyph of Water Elemental"] = 56373,
	["Glyph of Water Mastery"] = 55436,
	["Glyph of Water Shield"] = 58063,
	["Glyph of Water Walking"] = 58057,
	["Glyph of Whirlwind"] = 58370,
	["Glyph of Wild Growth"] = 62970,
	["Glyph of Windfury Weapon"] = 55445,
	["Glyph of Wrath"] = 54756,
	["Glyph of Wyvern Sting"] = 56848,
}
