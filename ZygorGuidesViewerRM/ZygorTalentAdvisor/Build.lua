local ZTA=ZygorTalentAdvisor
if not ZTA then return end

local L = ZGV.L

local Build = {}

local table,tinsert,string,tonumber,ipairs,pairs,setmetatable = table,tinsert,string,tonumber,ipairs,pairs,setmetatable

ZTA.BuildProto = Build
local BuildProto_mt = { __index=Build }

ZTA.BuildsToAdd = {}

ZTA.registeredBuilds = {
	["DEATHKNIGHT"]={},
	["DRUID"]={},
	["HUNTER"]={},
	["MAGE"]={},
	["MONK"]={},
	["PALADIN"]={},
	["PRIEST"]={},
	["ROGUE"]={},
	["SHAMAN"]={},
	["WARLOCK"]={},
	["WARRIOR"]={},
}

function Build:ParseBuild(build,class)
	build=build.."\n"
	local table = {}
	local linenum=0
	local talentid
	for line in build:gmatch("([^\n]+)\n") do
		line = line:gsub("%s*//.*$","")
		line = line:gsub("^%s+","")
		line = line:gsub("%s+$","")
		line = line:gsub("/%d","")

		if ZTA.TalentsToNumbers[class] then
			if ZTA.TalentsToNumbers[class][line] then
				talentid=ZTA.TalentsToNumbers[class][line]
			else
				print(line.. " is not a valid talent") -- When builds are registed.
				return
			end
		else
			print(class.. " is not a valid class")
			return
		end
		talent=ZTA.TalentsToNumbers[class][line]
		linenum=linenum+1
		table[linenum] = talentid
	end
	return table
end

function ZTA:RegisterBuild(upperclass,title,specialization,build,glyphs,petspec)
	local recommend=false
	if title:find("Recommended") then recommend = true end
	title=title:gsub("%(.*%)","")

	ZTA.registeredBuilds[upperclass][title]={
		title=title,
		recommended = recommend,
		class=upperclass,
		spec=specialization,
		specindex=ZTA.TalentsToNumbers[upperclass][specialization],
		build=Build:ParseBuild(build,upperclass), --returns nil if something goes wrong in parsing, so will not be displayed.
		glyphs=Build:ParseGlyphs(glyphs,upperclass),
		petspec=petspec and ZTA.TalentsToNumbers[upperclass][petspec],
	}
	if upperclass==ZTA.class and ZTA.registeredBuilds[upperclass][title].build then
		if ZTA.registeredBuilds[upperclass][title].recommended then
			ZTA.BuildsToAdd[title]=title.." |cff88ff88(Recommended)|r"
		else
			ZTA.BuildsToAdd[title]=title
		end
	end
end

--==GLYPHS==--
function ZTA:CacheGlyphData()
	self.glyphData={}

	-- save available glyphs in self.glyphData

	for i=1,50 do
		local name,gtype,avail,icon,glyphID,link = GetGlyphInfo(i)
		if name and name~="header" then
			local fullname = link:match("%[(.*)%]")
			local glyph = {name=name,fullname=fullname,gtype=gtype,avail=avail,icon=icon,glyphID=glyphID}
			self.glyphData[glyphID] = glyph   -- for build-to-available matching
			self.glyphData[fullname] = glyph	-- for current-to-available matching
			-- Well, that's noice, but let's ask the game the level requirement of this glyph
			self:RequestGlyphReqLevel(glyph)
		end
	end

	-- cross-check with glyph slots, mark as inscribed.

	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		if glyphSpell then
			local spellname = GetSpellInfo(glyphSpell)	assert(spellname,"Glyph "..glyphSpell.." has bad spell??")
			local glyph = self.glyphData[spellname]  -- fullname, indexed above.
			if glyph then
				glyph.inscribed = socket
				--glyph.spellID = glyphSpell
				self.glyphData[glyphSpell] = glyph  -- yet another index. Fun!
			end
		end
	end
end

local socketinfo_to_glyphinfo = {1,2}
function ZTA:GetGlyphSuggestions()
	local glyphs = self.currentBuild and self.currentBuild.glyphs

	if not glyphs or #glyphs==0 then return FALSE,"BLACK" end

	local numOK=0
	local numEmpty=0
	local numLocked=0
	local sug=L['talentpopup_glyphsug_title']

	self:CacheGlyphData()

	local gtsuf = { [1]="("..L.talentpopup_glyphtype_1..")",
		        [2]="("..L.talentpopup_glyphtype_2..")",}

	--local level = UnitLevel("player")
	--local numunlocks = (level>=75 and 2 or level>=50 and 2 or 1)

	for _,gid in ipairs(glyphs) do
		local glyph = self.glyphData[gid]

		if glyph then
			glyph.suggested = true
		else
			sug=sug.."\n|cffff0088ERROR: Unknown glyph id '"..gid.."' in build!|r"
		end
	end

	-- calculate free/freeable sockets

	sockets = {0,0,0}
	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		glyphType=socketinfo_to_glyphinfo[glyphType]

		if enabled then sockets[glyphType]=sockets[glyphType]+1 end
		if glyphSpell then
			if self.glyphData[glyphSpell] and self.glyphData[glyphSpell].suggested then
				numOK = numOK + 1
				sockets[glyphType]=sockets[glyphType]-1
			end  -- ignore the socket, it's good already
		else
			if enabled then numEmpty=numEmpty+1 else numLocked=numLocked+1 end
		end
	end
	--ZTA:Debug("sockets available: "..sockets[1]..","..sockets[2]..","..sockets[3])


	-- multiple passes, to have everything in proper order

	local futuresug=""
	local futuresug2=""

	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if not glyph.avail and glyph.suggested then
			local s="\n|cffff8800Learn and inscribe: ".. glyph.name .." ".. gtsuf[glyph.gtype] .."|r"
			if sockets[glyph.gtype]>0 then
				if UnitLevel("player")>=(glyph.level or 1) then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug2=futuresug2..s
				end
			else
				futuresug=futuresug..s
			end
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.inscribed and not glyph.suggested then
			sug=sug.."\n|cffff0000Clear: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.suggested and glyph.avail and not glyph.inscribed then
			local s="\n|cffffff00Inscribe: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
			if sockets[glyph.gtype]>0 then
				if UnitLevel("player")>=(glyph.level or 1) then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug2=futuresug2..s
				end
			else
				futuresug=futuresug..s
			end
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.suggested and glyph.inscribed then
			sug=sug.."\n|cff00ff00Good: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
		end
	end end

	if #futuresug>0 then
		sug = sug.."\n\nWhen you unlock more sockets:"..futuresug
	end
	if #futuresug2>0 then
		sug = sug.."\n\nWhen you advance enough levels:"..futuresug2
	end

	-- count empties/locks

	local missing=#glyphs-numOK
	local code

	--self:Debug(("missing %s, numEmpty %s, numLocked %s"):format(missing,numEmpty,numLocked))

	if numOK==#glyphs then code="GOLD"  -- all OK
	 elseif missing<=numEmpty then code="GREEN"  -- just inscribe
	 elseif missing<=numEmpty+numLocked then code="YELLOW"  -- cool, just need to level more
	 else code="ORANGE"  -- needs wiping
	end
	return sug,code
end

function ZTA:RequestGlyphReqLevel(glyph)
	-- If the glyph data already has a level, skip
	if not glyph.level then
		local _,uc=UnitClass("player")
		local itemid=ZTA.GlyphsToItemIDs[uc][glyph.name]
		if not itemid then
			if ZGV then
				ZGV:Debug("Database incomplete, missing item id for "..glyph.name)
			end
			return
		end
		local _,_,_,_,lev=GetItemInfo(itemid)
		if lev then -- Hooray, we've found it
			glyph.level=lev
		else -- No data yet, let's wait 2 second
			TalentSchedule(2,"GlyphLevel",function() self:RequestGlyphReqLevel(glyph) end)
		end
	end
end

local tasks = {}
function TalentSchedule(time,event,func,...)
	local t = {}
	t.func=func
	t.time=GetTime()+time
	tasks[event]=t
end

function TalentOnUpdate()
	for event,table in pairs(tasks) do
		local val=tasks[event]
		if val.time <=GetTime() then
			tasks[event]=nil
			val.func()
		end
	end
end

-- Dump glyph ID numbers for GlyphsToNumbers. Run manually.
function ZTA:DumpGlyphIDs()
	local s = ""
	local _,myclass
	local glyphs={}
	_,myclass = UnitClass("player")

	s = "	[\"".. myclass:upper() .."\"]={\n"
	for i=1,120 do
		local name,gtype,avail,icon,glyphID,link = GetGlyphInfo(i)
		if name and name~="header" then
			--name = link:match("%[(.*)%]")
			s = s .. "		[\""..name.."\"]="..glyphID..",\n"
		end
	end
	s = s .. "	},\n"

	if ZGV and ZGV.ShowDump then
		ZGV:ShowDump(s)
	else
		print(s)
	end
end

-- Try to dump glyph item ID numbers
-- WARNING: Never use it at home, it will cache a big chunk of the database and probably kill your dog as well
-- Setting the second parameter to true requests immediate report
-- Also, make sure you're using an English client
local cache={}
function ZTA:DumpGlyphItemIDs(report)
	local FIRST=40000
	local LAST=100000 -- I suppose...
	local glyphcount,count=0,0
	
	local myclass=UnitClass("player")

	local F = CreateFrame("FRAME","ZTADumpGlyphItemIDsFrame")
	F:Show()
	F:SetScript("OnUpdate",function(fr)
		local good,ret = coroutine.resume(fr.thread)
	end)

	F.thread = coroutine.create(function()
		-- Iterate over the region the glyph items are supposed to live in
		for i=FIRST,LAST do -- TODO quite a hardcode, also, hardcore
			if not cache[i] then
				count=count+1
				local name,_,_,_,lev,tp,class=GetItemInfo(i)
				if name then
					if class and tp=="Glyph" and class==myclass then -- our client here
						cache[i]={name=name,lev=lev,tp=tp,class=class,itemid=i} -- TODO unlocalize
						glyphcount=glyphcount+1
						print("Found glyph: id",i,"name",name)
					else
						cache[i]=true -- it's cached, but not a glyph
					end
				end
			end
			if count%100==0 then coroutine.yield() end
		end

		-- TODO this is UGLY
		-- Reverse class name lookup
		local capClasses = {}
		classes={}
		FillLocalizedClassList(capClasses)
		for k,v in pairs(capClasses) do
			classes[v]=k
		end

		local byclass = {}

		-- Right, that's a report time now
		for k,v in pairs(cache) do
			if type(v)=="table" then
				if not byclass[classes[v.class]] then
					print(v.class,v.itemid)
					byclass[classes[v.class]]={}
				end
				if not v.name:find("zzOLD") then
					table.insert(byclass[classes[v.class]],v)
				end
			end
		end

		s="ZTA.GlyphsToItemIDs = {\n"
		for k,v in pairs(byclass) do
			s=s.."	[\""..k.."\"]={\n"
			for kk,vv in pairs(v) do
				s=s.."		[\""..(vv.name:match("Glyph of the (.*)") or vv.name:match("Glyph of (.*)")).."\"]="..vv.itemid..",\n"
			end
			s=s.."	},\n"
		end
		s=s.."}\n"

		if ZGV and ZGV.ShowDump then
			ZGV:ShowDump(s,"Glyph data:")
		else
			print(s)
		end

		F:SetScript("OnUpdate",nil)
		F.thread=nil
	end)

end

function Build:ParseGlyphs(rawglyphs,class)

	build=rawglyphs.."\n"
	local table = {}
	for line in build:gmatch("([^\n]+)\n") do
		line=line:match("lyph of (.*)") or gn

		local gid = ZTA.GlyphsToNumbers[class][line]
		if gid then
			tinsert(table,gid)
		else
			print("Unknown glyph: ",class,line)
		end
	end
	return table
end

function ZTA:DumpTalentSpells()
	local s = ""
	local _,myclass
	_,myclass = UnitClass("player")
	s = "	[\"".. myclass:upper() .."\"]={\n"
	for tab=1,GetNumSpecializations() do
		local id,tabname = GetSpecializationInfo(tab)
		s =s.."		[\""..tabname.."\"]="..tab..",\n"
		if tab==GetNumSpecializations() then --Only dump talent last time through.
			s=s.."\n"
			for talent=1,GetNumTalents(tab) do
				local name = GetTalentInfo(talent)
				local link = GetTalentLink(talent)
				if link then
					--local id = link:match("talent:(%d+)")
					--s = s .. "		[\""..name.."\"]= {id="..id..", index="..talent..",},\n"
					s = s .. "		[\""..name.."\"]= "..talent..",\n"
				else
					s = s .. "		-- no link for "..tab..","..talent.."\n"
				end
			end
		end
	end
	s = s .. "	},\n"
	if ZGV and ZGV.ShowDump then
		ZGV:ShowDump(s,"Talent data:")
	else
		print(s)
	end
end