local me = ZygorGuidesViewer
if not me then return end
local ZGV=me

local L = ZygorGuidesViewer_L("Main")

local BZL=me.BZL
local BSZL=me.BSZL

local table,string,tonumber,ipairs,pairs,setmetatable,tinsert = table,string,tonumber,ipairs,pairs,setmetatable,tinsert

--[[
local function split (s,t)
	local l = {n=0}
	local f = function (s)
		l.n = l.n + 1
		l[l.n] = s
	end
	local p = "%s*(.-)%s*"..t.."%s*"
	s = string.gsub(s,"^%s+","")
	s = string.gsub(s,"%s+$","")
	s = string.gsub(s,p,f)
	l.n = l.n + 1
	l[l.n] = string.gsub(s,"(%s%s*)$","")
	return l
end
--]]

me.actionmeta = {
	["goto"] = { skippable = true },
	fpath = { skippable = true },
	home = { skippable = true },
	hearth = { skippable = true },
}

local function split(str,sep)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

function me:ParseMapXYDist(text)
	local map,x,y,dist,_
	-- Strip retail "< distance" suffix: "Zone x,y < 60" -> "Zone x,y,60"
	local ltDist
	text, ltDist = text:gsub("%s*<%s*([0-9%.]+)%s*$",",%1")
	-- Strip floor suffix: "Zone/0 x,y" -> "Zone x,y" or "Zone/0" -> "Zone"
	text = text:gsub("/%d+(%s)","%1"):gsub("/%d+$","")
	-- space-separated retail form must be tested before generic comma-map parsing,
	-- otherwise "Zone 43.00,89.40,10" is misread as map="Zone 43.00".
	if not _ then _,_,map,x,y,dist = string.find(text,"^(.-)%s+([0-9%.]+),([0-9%.]+),([0-9%.]+)$") end
	if not _ then _,_,map,x,y = string.find(text,"^(.-)%s+([0-9%.]+),([0-9%.]+)$") end
	-- comma-separated: "Map Name,x,y,dist"
	if not _ then _,_,map,x,y,dist = string.find(text,"^(.+),([0-9%.]+),([0-9%.]+),([0-9%.]+)$") end
	if not _ then _,_,x,y,dist = string.find(text,"^([0-9%.]+),([0-9%.]+),([0-9%.]+)$") end
	if not _ then _,_,map,x,y = string.find(text,"^(.+),([0-9%.]+),([0-9%.]+)$") end
	if not _ then _,_,x,y = string.find(text,"^([0-9%.]+),([0-9%.]+)$") end
	if not _ then _,_,dist = string.find(text,"^([0-9%.]+)$") end
	if not _ then map = text end

	x = tonumber(x)
	y = tonumber(y)
--	if x then x=x/100 end
--	if y then y=y/100 end
--	if dist then dist=dist/100 or 0.2 end
	if not dist then dist=0.2 end
	if map and #map<5 then map=nil end

	return map,x,y,dist
end

local function ParsePathPoints(params)
	local points = {}
	if not params or params=="" then return points end
	-- Extract all x,y coordinate pairs using gmatch (handles any separator: tabs, spaces, or none)
	for x, y in params:gmatch("(%d+%.%d+)%s*,%s*(%d+%.%d+)") do
		local nx, ny = tonumber(x), tonumber(y)
		if nx and ny and nx <= 100 and ny <= 100 then
			tinsert(points, {map=nil, x=nx, y=ny, dist=0.2})
		end
	end
	return points
end

local function ParseRoutePoints(params, basemap)
	local points = {}
	if not params or params=="" then return points end

	local current_map = basemap
	local has_semicolon = params:find(";",1,true) and true or false
	if not has_semicolon then
		return ParsePathPoints(params)
	end

	for raw in params:gmatch("([^;]+)") do
		local token = raw:gsub("^%s+",""):gsub("%s+$","")
		if token~="" then
			local pointtip
			local bodytip,tiptext = token:match("^(.-)%s*|%s*tip%s+(.+)$")
			if bodytip and tiptext then
				token = bodytip:gsub("^%s+",""):gsub("%s+$","")
				pointtip = tiptext:gsub("^%s+",""):gsub("%s+$","")
			end
			local achievetag
			local body,atag = token:match("^(.-)%s*@%s*([0-9/]+)%s*$")
			if body and atag then
				token = body:gsub("^%s+",""):gsub("%s+$","")
				achievetag = atag
			end
			local explicit_dist = token:match(",%s*[0-9%.]+%s*,%s*[0-9%.]+%s*,%s*([0-9%.]+)%s*$") and true or false
			local map,x,y,dist = me:ParseMapXYDist(token)
			if map and BZL[map] then map=BZL[map] end
			if map then current_map = map end
			if x and y then
				local achieveid,achievesub
				if achievetag then
					_,achieveid,achievesub = me:ParseID(achievetag)
				end
				tinsert(points,{
					map = map or current_map,
					x = x,
					y = y,
					dist = explicit_dist and dist or nil,
					achieveid = achieveid,
					achievesub = achievesub,
					tooltip = pointtip,
				})
			end
		end
	end
	return points
end

local function ParsePathLoopFlag(params,current)
	if not params then return current,false end
	local p = params:lower()
	if p:match("loop%s*off") then return false,true end
	if p:match("loop%s*on") then return true,true end
	if p:match("loop%s*;") or p:match("loop%s*$") or p:match("loop%s+") then
		return true,true
	end
	return current,false
end

local function ParseLabelName(params)
	if not params then return nil end
	local label = params:gsub("^%s+",""):gsub("%s+$","")
	label = label:gsub('^"(.-)"$',"%1")
	if label=="" then return nil end
	return label
end

function me:ParseID(str)
	local name,id,nid,obj
	name,id = str:match("(.*)##([0-9/]*)")
	if not name then id = str:match("^([0-9/]*)$") end
	if id then
		nid,obj = id:match("([0-9]*)/([0-9]*)")
		if nid then
			id=nid
		end
	end
	if id then id = tonumber(id) end
	if obj then obj = tonumber(obj) end
	if not name and not id then name=str end
	return name, id, obj
end

--- parse just the header, until the first 'step' tag. No chunking, just header data extraction.
function me:ParseHeader(text)
	if not text then return {} end
	local guides = {}
	local index = 1

	text = text .. "\n"

	local linecount=0

	local header = {}

	while (index<#text) do
		local st,en,line=string.find(text,"(.-)\n",index)
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then
			return nil,linecount,"More than 100000 lines!?"
		end

		line = line:gsub("^[%s	]+","")
		line = line:gsub("[%s	]+$","")
		line = line:gsub("//.*$","")
		line = line:gsub("||","|")

		local cmd,params = line:match("([^%s]*)%s?(.*)")

		if cmd then
			if cmd=="step" then
				break
			else
				header[cmd]=params
			end
		end
	end

	if header['guide'] then
		header['title']=header['guide']
		header['guide']=nil
	end

	return header
end

ZGV.ConditionEnv = {
	_G = _G,
	-- variables needing update
	level=1,
	ZGV=ZGV,
	achieved = function(id)
		if ZGV.GetAchievementStatus then
			return ZGV:GetAchievementStatus(id)
		end
		local _, _, _, completed = GetAchievementInfo(id)
		return completed
	end,
	completedq = function(id)
		if ZGV.completedQuests then
			return ZGV.completedQuests[id] or ZGV.completedQuests[tostring(id)]
		end
		return false
	end,

	_Update = function()
		ZGV.ConditionEnv.level = UnitLevel("player")
		if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then ZGV.ConditionEnv.level=ZGV.db.char.fakelevel end
	end,

	_Setup = function()
		-- reputation 'constants'
		for standing,num in pairs(ZGV.StandingNamesEngRev) do ZGV.ConditionEnv[standing]=num end
	end,

	-- independent data feeds
	rep = function(faction)
		return ZGV:GetReputation(faction).standing
	end,
	skill = function(skill)
		return ZGV:GetSkill(skill).level
	end,
	skillmax = function(skill)
		local s = ZGV:GetSkill(skill)
		return (s and (s.max or s.level)) or 0
	end,
	weaponskill = function(skilltoken)
		if not skilltoken or skilltoken == "" then return 0 end
		local aliases = {
			AXE = {"Axes"},
			BOW = {"Bows"},
			CROSSBOW = {"Crossbows"},
			DAGGER = {"Daggers"},
			FIST = {"Fist Weapons"},
			GUN = {"Guns"},
			MACE = {"Maces"},
			POLEARM = {"Polearms"},
			STAFF = {"Staves"},
			SWORD = {"Swords"},
			TH_AXE = {"Two-Handed Axes"},
			TH_MACE = {"Two-Handed Maces"},
			TH_STAFF = {"Staves"},
			TH_SWORD = {"Two-Handed Swords"},
			THROWN = {"Thrown"},
			UNARMED = {"Unarmed"},
			WAND = {"Wands"},
		}
		local function norm(name)
			return tostring(name or ""):upper():gsub("[%s%-'\"%.]", "")
		end
		local wanted = aliases[skilltoken] or {skilltoken}
		for i = 1, GetNumSkillLines() do
			local name, isHeader, _, skillRank = GetSkillLineInfo(i)
			if name and not isHeader then
				local lname = norm(name)
				for _, candidate in ipairs(wanted) do
					if lname == norm(candidate) then
						return skillRank or 0
					end
				end
			end
		end
		return 0
	end,
	-- Retail condition functions
	subzone = function(name)
		local localName = BSZL and BSZL[name] or name
		return GetSubZoneText() == localName or GetMinimapZoneText() == localName
	end,
	zone = function(name)
		return GetZoneText() == name or GetRealZoneText() == name
	end,
	raceclass = function(rc)
		local _, pclass = UnitClass("player")
		local _, prace = UnitRace("player")
		return pclass == rc or prace == rc
	end,
	havequest = function(id)
		local numEntries = GetNumQuestLogEntries()
		for i = 1, numEntries do
			local _, _, _, _, isHeader, _, _, questId = GetQuestLogTitle(i)
			if not isHeader and questId == id then return true end
		end
		return false
	end,
	haveq = function(id)
		return ZGV.ConditionEnv.havequest(id)
	end,
	itemcount = function(item)
		if not item then return 0 end
		return GetItemCount(item) or 0
	end,
	warlockpet = function(petname)
		if not petname or petname == "" or not UnitExists("pet") then return false end
		local family = UnitCreatureFamily("pet")
		local name = UnitName("pet")
		return family == petname or name == petname
	end,
	hasbuff = function(buff)
		if not buff then return false end
		for i = 1, 30 do
			local name, _, tex = UnitBuff("player", i)
			if name and ((tex and tex:find(buff)) or name:find(buff)) then return true end
			name, _, tex = UnitDebuff("player", i)
			if name and ((tex and tex:find(buff)) or name:find(buff)) then return true end
		end
		return false
	end,
	nobuff = function(buff)
		return not ZGV.ConditionEnv.hasbuff(buff)
	end,
	invehicle = function()
		return UnitInVehicle("player") and true or false
	end,
	outvehicle = function()
		return not UnitInVehicle("player")
	end,
}

local function MakeCondition(cond,forcebool)
	local s
	if forcebool then s = ("_Update()  return not not (%s)"):format(cond)
		     else s = ("_Update()  return %s"):format(cond)
		     end
	local fun,err = loadstring(s)
	if fun then setfenv(fun,ZGV.ConditionEnv) end
	return fun,err
end

local function NormalizeUntilCondition(cond)
	if not cond then return cond end
	local c = cond:gsub("^%s+",""):gsub("%s+$","")
	local skillname,op,val = c:match("^skill%s+([%a%s]+)%s*([<>]=?)%s*(%d+)$")
	if skillname and op and val then
		skillname = skillname:gsub("^%s+",""):gsub("%s+$","")
		return ('skill("%s")%s%s'):format(skillname,op,val)
	end
	local skillmaxname,op2,val2 = c:match("^skillmax%s+([%a%s]+)%s*([<>]=?)%s*(%d+)$")
	if skillmaxname and op2 and val2 then
		skillmaxname = skillmaxname:gsub("^%s+",""):gsub("%s+$","")
		return ('skillmax("%s")%s%s'):format(skillmaxname,op2,val2)
	end
	local bare,op3,val3 = c:match("^([%a%s]+)%s*([<>]=?)%s*(%d+)$")
	if bare and op3 and val3 then
		bare = bare:gsub("^%s+",""):gsub("%s+$","")
		return ('skill("%s")%s%s'):format(bare,op3,val3)
	end
	return c
end

local RACE_CLASS_ONLYIF_TOKENS = {
	["HUMAN"]=true, ["DWARF"]=true, ["NIGHT ELF"]=true, ["GNOME"]=true, ["DRAENEI"]=true,
	["ORC"]=true, ["UNDEAD"]=true, ["SCOURGE"]=true, ["TAUREN"]=true, ["TROLL"]=true, ["BLOOD ELF"]=true,
	["WARRIOR"]=true, ["PALADIN"]=true, ["HUNTER"]=true, ["ROGUE"]=true, ["PRIEST"]=true,
	["DEATH KNIGHT"]=true, ["DEATHKNIGHT"]=true, ["SHAMAN"]=true, ["MAGE"]=true, ["WARLOCK"]=true, ["DRUID"]=true,
}

local function ParseOnlyIfRequirementList(text)
	if not text then return nil end
	text = text:gsub("^%s+",""):gsub("%s+$","")
	if text == "" then return nil end
	-- Retail guide data sometimes expresses race/class alternatives as
	-- "(Orc Shaman) or (Troll Shaman)" instead of a comma-separated list.
	text = text:gsub("%s+[oO][rR]%s+",",")
	local list = {}
	for part in text:gmatch("([^,]+)") do
		part = part:gsub("^%s+",""):gsub("%s+$","")
		while part:match("^%b()$") do
			part = part:sub(2,-2):gsub("^%s+",""):gsub("%s+$","")
		end
		if part ~= "" then
			list[#list+1] = part
		end
	end
	if #list == 0 then return nil end
	return (#list == 1) and list[1] or list
end

local function IsRaceClassOnlyIfText(text)
	local requirements = ParseOnlyIfRequirementList(text)
	if not requirements then return false end
	if type(requirements) == "string" then requirements = {requirements} end
	for _,part in ipairs(requirements) do
		part = part:upper()
		if part:sub(1,1) == "!" then part = part:sub(2) end
		if not RACE_CLASS_ONLYIF_TOKENS[part] and not part:find("^[A-Z]+ [A-Z]+$") then
			return false
		end
	end
	return true
end

local function ApplyIncludeVars(text,vars)
	if not vars then return text end
	return (text:gsub("%%([%w_]+)%%", function(key)
		return vars[key] or ("%" .. key .. "%")
	end))
end

local function ParseIncludeArgs(argstr,parentvars)
	local vars = {}
	if parentvars then
		for k,v in pairs(parentvars) do vars[k]=v end
	end
	if not argstr or argstr=="" then return vars end

	for key,val in argstr:gmatch(",%s*([%w_]+)%s*=%s*\"([^\"]*)\"") do
		vars[key]=ApplyIncludeVars(val,parentvars)
	end
	for key,val in argstr:gmatch(",%s*([%w_]+)%s*=%s*'([^']*)'") do
		vars[key]=ApplyIncludeVars(val,parentvars)
	end
	for key,val in argstr:gmatch(",%s*([%w_]+)%s*=%s*([^,%s]+)") do
		if vars[key]==nil then vars[key]=ApplyIncludeVars(val,parentvars) end
	end
	return vars
end

local function NormalizeIncludeName(name)
	if not name then return "" end
	return tostring(name)
		:lower()
		:gsub("^%s+","")
		:gsub("%s+$","")
		:gsub("[%s%-_]+","")
		:gsub("[^%w]","")
end

local function ResolveInclude(includes, name)
	if not includes or not name then return nil end
	if includes[name] then return includes[name] end

	local trimmed = tostring(name):gsub("^%s+",""):gsub("%s+$","")
	if includes[trimmed] then return includes[trimmed] end

	local squashed = trimmed:gsub("__+","_")
	if includes[squashed] then return includes[squashed] end

	local normalized = NormalizeIncludeName(trimmed)
	if normalized == "" then return nil end

	for key, val in pairs(includes) do
		if NormalizeIncludeName(key) == normalized then
			return val
		end
	end
	return nil
end

local function ExpandIncludes(text,parentvars,depth)
	depth = depth or 0
	if depth>30 then return nil,"Include recursion too deep" end

	local out = {}
	text = text .. "\n"
	for line in text:gmatch("(.-)\n") do
		local trimmed = line:gsub("^[%s\t]+",""):gsub("[%s\t]+$","")
		local includename,includeparams = trimmed:match("^#include%s+\"([^\"]+)\"%s*(.*)$")
		if not includename then
			includename,includeparams = trimmed:match("^#include%s+'([^']+)'%s*(.*)$")
		end

		if includename then
			local includes = ZGV.registered_includes
			local include = ResolveInclude(includes, includename)
			if not include then return nil,("Include not found: "..includename) end

			local vars = ParseIncludeArgs(includeparams,parentvars)
			local expanded,err = ExpandIncludes(ApplyIncludeVars(include,vars),vars,depth+1)
			if not expanded then return nil,err end
			tinsert(out,expanded)
		else
			tinsert(out,ApplyIncludeVars(line,parentvars))
		end
	end

	return table.concat(out,"\n")
end

local function MergeMultilinePathBlocks(text)
	local lines = {}
	for line in (text.."\n"):gmatch("(.-)\n") do
		tinsert(lines,line)
	end

	local out = {}
	local i = 1
	while i<=#lines do
		local line = lines[i]
		local trimmed = line:gsub("^%s+",""):gsub("%s+$","")
		local starts_path = trimmed:match("^path%s+")
			or trimmed:match("^loop%s+")
			or trimmed:match("^route%s+")
			or trimmed:match("^multigoto%s+")
			or trimmed:match("^|%s*path%s+")
			or trimmed:match("^|%s*loop%s+")
			or trimmed:match("^|%s*route%s+")
			or trimmed:match("^|%s*multigoto%s+")
			or trimmed:match("|%s*path%s+")
			or trimmed:match("|%s*loop%s+")
			or trimmed:match("|%s*route%s+")
			or trimmed:match("|%s*multigoto%s+")

		if starts_path then
			local merged = line
			local j = i + 1
			while j<=#lines do
				local raw_t = lines[j]
				local t = raw_t:gsub("^%s+",""):gsub("%s+$",""):gsub("\r","")
				if t=="" then break end
				if t:match("^[%.']") or t:match("^|") or t:match("^step") or t:match("^#") then break end
				-- Break on lines that are their own path/loop/route commands
				local is_path_cmd = t:match("^path%s") or t:match("^path$") or t:match("^loop%s") or t:match("^loop$") or t:match("^route%s") or t:match("^route$") or t:match("^multigoto%s") or t:match("^multigoto$")
				if is_path_cmd then break end
				-- Continuation row: coordinate rows like:
				-- "x,y;" / "map,x,y;" / optional dist / optional per-point "|tip ...",
				-- with optional trailing ";".
				local looks_coord_row = t:match("^[^,;]+,%s*[0-9%.]+%s*,%s*[0-9%.]+")
					or t:match("^[0-9%.]+%s*,%s*[0-9%.]+")
				if looks_coord_row then
					merged = merged .. " " .. t
					j = j + 1
				else
					break
				end
			end
			tinsert(out,merged)
			i = j
		else
			tinsert(out,line)
			i = i + 1
		end
	end

	return table.concat(out,"\n")
end

--- parse ONE guide section into usable arrays.
function me:ParseEntry(text)
	if not text then return nil,"No text!",0 end
	local expanded,includeerr = ExpandIncludes(text,nil,0)
	if not expanded then return nil,includeerr,0 end
	text = MergeMultilinePathBlocks(expanded)
	local index = 1

	local guide,step

	local prevmap
	local prevlevel = 0
	local sticky_depth = 0

	guide = { ["steps"] = {}, ["quests"] = {} }

	text = text .. "\n"

	local linecount=0

	local noobsoletequests = {}
	local dailyquests = ZGV.dailyQuests

	local function COLOR_LOC(s) return "|cffffee77"..s.."|r" end

	local _

	local strfind = string.find

	--local debug
	--if text:find("goto The Exodar,44.9,24.2") then debug=true end

	while (index<#text) do
		local st,en,line=strfind(text,"%s*(.-)%s*\n",index)
		--if debug then print(line) end
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then
			return nil,linecount,"More than 100000 lines!?"
		end

		--line = line:gsub("^[%s	]+","")
		--line = line:gsub("[%s	]+$","") --done in the find

		--st,en = strfind(line,"//",1,true)
		--if st then line=line:sub(1,st-1) end
		-- not really faster
		line = line:gsub("//.*$","")
		-- Skip comment lines (retail guides use -- for comments inside guide text)
		if line:match("^%-%-") then line="" end

		local indent
		indent,line = line:match("^(%.*)(.*)")

		line = line:gsub("^%* *","")
		-- Strip retail italic markers: _text_ -> text, but do not mangle icon paths like INV_Misc_Food_02.
		do
			local source = line
			line = source:gsub("()_([^_]+)_()", function(openPos, inner, closePos)
				local prev = openPos > 1 and source:sub(openPos - 1, openPos - 1) or ""
				local nextc = closePos <= #source and source:sub(closePos, closePos) or ""
				if prev:match("[%w]") or nextc:match("[%w]") then
					return "_" .. inner .. "_"
				end
				return inner
			end)
		end

		line = line .. "|"
		local goal={}
		local generated_goals=nil
		local routectx=nil
		local function HasGoalContent(g)
			return g and next(g) ~= nil
		end
		local function AppendGeneratedRoutePoints(points_to_add)
			if not generated_goals or not points_to_add then return end
			for _,pt in ipairs(points_to_add) do
				local map = pt.map or step.map or prevmap
				if map and BZL[map] then map=BZL[map] end
				if not map or map=="" then
					local fallbackmap = GetRealZoneText and GetRealZoneText()
					if fallbackmap and BZL[fallbackmap] then fallbackmap = BZL[fallbackmap] end
					map = fallbackmap
				end
				if map then
					step.map = map
					prevmap = map
				end
				local routekind = routectx and routectx.kind
				local is_multigoto = routekind=="multigoto"
				tinsert(generated_goals,{
					action="goto",
					map=map,
					x=pt.x,
					y=pt.y,
					dist=pt.dist or (routectx and routectx.defaultdist) or 0.2,
					achieveid=pt.achieveid,
					achievesub=pt.achievesub,
					tooltip=pt.tooltip,
					routegroup=not is_multigoto,
					routekind=routekind or "route",
					routeindex=#generated_goals+1,
					force_complete=true,
				})
			end
		end

		local chunkcount=1

		for chunk in line:gmatch("%s*(.-)%s*|+") do
			chunk = chunk:gsub("^'%s*","' ")
			--chunk = chunk:gsub("^turn in ","turnin ")
			chunk = chunk:gsub("^@(%S)","@ %1")
			--chunk = chunk:gsub("^%s+","")
			--chunk = chunk:gsub("[%s	]+$","")

			local cmd,params = chunk:match("([^%s]*)%s?(.*)")
			if cmd and cmd~="" then
				-- Normalize command to lowercase for retail guide compatibility
				cmd = cmd:lower()
				-- Be resilient to accidental dotted command tokens in chunks,
				-- e.g. ".route"/"..route" after line edits.
				cmd = cmd:gsub("^%.+","")
			end

			-- guide parameters
			if cmd=="defaultfor" then
				guide[cmd]=params
			elseif cmd=="next" and chunkcount==1 and not step then
				local gnext = params:gsub('^"(.-)"$',"%1")
				guide[cmd]=gnext:gsub("\\\\","\\")
			elseif cmd=="author" then
				guide[cmd]=params
			elseif cmd=="type" then
				guide[cmd]=params
			elseif cmd=="expansion" then
				guide[cmd]=params
			elseif cmd=="faction" then
				guide[cmd]=params
			elseif cmd=="realm" then
				guide[cmd]=params
			elseif cmd=="subcategory" then
				guide[cmd]=params
			elseif cmd=="sortindex" then
				guide[cmd]=tonumber(params) or 0
			elseif cmd=="description" then
				guide[cmd]=(guide[cmd] and guide[cmd].."\n" or "") .. params
			--elseif cmd=="faction" then --unused
			--	guide[cmd]=params
			elseif cmd=="startlevel" then
				prevlevel=tonumber(params)
			elseif cmd=="label" and not step then
				-- Guard: ignore stray label tags before the first step.
			elseif cmd=="keywords" or cmd=="class" or cmd=="spec" or cmd=="opt" or cmd=="meta" or cmd=="sugGroup"
			or cmd=="defaultfor" or cmd=="grouprole" or cmd=="region" or cmd=="template" or cmd=="travelcfg"
			or cmd=="travelfor" or cmd=="override" then
				guide[cmd]=params

			elseif cmd=="step" then
				step = { goals = {}, map = prevmap, level = prevlevel, num = #guide.steps+1, parentGuide=guide }
				guide.steps[#guide.steps+1] = step

				setmetatable(step,ZGV.StepProto_mt)

			-- step parameters
			elseif cmd=="level" then
				step[cmd]=params
				prevlevel=tonumber(params)
			elseif cmd=="label" then
				local label = ParseLabelName(params)
				if step and label then
					step.label = label
					guide.labels = guide.labels or {}
					guide.labels[label] = step.num
				end
			elseif cmd=="title" then
				step[cmd]=params
				if chunkcount>1 then goal[cmd]=params end
				if generated_goals and chunkcount>1 then
					for _,g in ipairs(generated_goals) do g.title=params end
				end
			elseif cmd=="map" then
				-- Strip floor suffix (e.g. "Elwynn Forest/0" -> "Elwynn Forest")
				params = params:gsub("/%d+$","")
				if BZL[params] then params=BZL[params] end
				if step then step.map = params end
				prevmap = params
	--[[
			elseif cmd=="@" then
				local map,x,y
				map,x,y = params:match("(.+),([0-9.]+),([0-9.]+)")
				if not map then
					x,y = params:match("([0-9.]+),([0-9.]+)")
				end
				if not x then
					map = params
				end
				if not map then
					map = prevmap
				end
				step['map']=map
				prevmap=map
				if x or y then
					step['x']=x
					step['y']=y
				end
	--]]
			-- goal commands
			elseif cmd=="accept" or cmd=="turnin" then
				goal.action = goal.action or cmd
				if not params then return nil,"no quest parameter",linecount,chunk end
				goal.quest,goal.questid = self:ParseID(params)
				if not goal.quest and goal.questid then goal.quest=tostring(goal.questid) end
				local q,qp = goal.quest:match("^(.-)%s-%((%d+)%)$")
				if q then goal.quest,goal.questpart=q,qp end
				if not goal.quest and not goal.questid then return nil,"no quest parameter",linecount,chunk end

				if goal.questid then
					local localized = ZGV:GetQuestName(goal.questid)
					if localized then goal.quest = localized end
				end

				if goal.questid then
					guide.quests[goal.questid]=step.level
					if not step.level then return nil,"Missing step level information",linecount,chunk end
				end

			elseif cmd=="talk" then
				goal.action = goal.action or cmd
				if not params then return nil,"no npc",linecount,chunk end
				goal.npc,goal.npcid = self:ParseID(params)
				if not goal.npc and goal.npcid then goal.npc=tostring(goal.npcid) end
				if not goal.npc then return nil,"no npc",linecount,chunk end
			elseif cmd=="goto" or cmd=="at" or cmd=="gotoontaxi" or cmd=="gotonpc" or cmd=="direct" then
				goal.action = goal.action or "goto"
				local map,x,y,dist = self:ParseMapXYDist(params)

				if BZL[map] then map=BZL[map] end

				goal.map = map or goal.map or step.map or prevmap
				step.map = goal.map
				prevmap = step.map

				goal.x = x or goal.x
				goal.y = y or goal.y
				goal.dist = dist or goal.dist

				if (goal.action=="accept" or goal.action=="turnin" 	or goal.action=="kill" 	or goal.action=="get" 	or goal.action=="talk" 	or goal.action=="goal" 	or goal.action=="use") then
					goal.autotitle = goal.param or goal.target or goal.quest
				end

				if not goal.map then
					-- Legacy guides sometimes use bare coords without an explicit map.
					-- Try current zone as a soft fallback before failing parse.
					local fallbackmap = GetRealZoneText and GetRealZoneText()
					if fallbackmap and BZL[fallbackmap] then fallbackmap = BZL[fallbackmap] end
					if fallbackmap and fallbackmap~="" then
						goal.map = fallbackmap
						step.map = step.map or fallbackmap
						prevmap = prevmap or fallbackmap
					else
						return nil,"'"..cmd.."' has no map parameter, neither has one been given before.",linecount,chunk
					end
				end
			elseif cmd=="path" or cmd=="loop" or cmd=="route" or cmd=="multigoto" then
				if not step then return nil,"Path command before step",linecount,chunk end
				step._pathopts = step._pathopts or {loop=false}
				local loopval,foundloop = ParsePathLoopFlag(params,step._pathopts.loop)
				if foundloop then step._pathopts.loop = loopval end

				local points
				if cmd=="route" or cmd=="multigoto" or ((cmd=="loop" or cmd=="path") and params and params:find(";",1,true)) then
					points = ParseRoutePoints(params,step.map or prevmap)
				else
					points = ParsePathPoints(params)
				end
					if #points>0 then
					generated_goals = {}
					local defaultdist = 0.2
					if cmd=="route" or cmd=="loop" then
						-- Route/loop should be more forgiving by default.
						defaultdist = 1.0
					end
					routectx = { kind=cmd, defaultdist=defaultdist, pending_tips={}, saw_tailcoord=false }
					AppendGeneratedRoutePoints(points)
					if goal.text and generated_goals[1] then
						generated_goals[1].text = goal.text
						if not goal.action then
							goal.text = nil
						end
					end

					-- Loop mode no longer injects a visible return point. Repetition is
					-- driven by step reset logic (for example via |until ...).
				end

			elseif cmd=="kill" or cmd=="get" or cmd=="collect" or cmd=="goldcollect" or cmd=="goal" or cmd=="buy" then
				goal.action = goal.action or cmd

				-- first, extract the count
				local count,excl,object = params:match("^([0-9]+)(!?) (.*)")
				if not object then object=params end
				goal.count = tonumber(count) or 1
				if excl=="!" then goal.exact = 1 end

				-- check for plural
				local name,plural = object:match("^(.+)(%+)$")
				if plural then
					goal.plural=true
					object=name
				end

				-- now object##id
				goal.target,goal.targetid = self:ParseID(object)
				goal.actiontarget = goal.target
				if cmd=="kill" and not goal.targetid and goal.target and type(goal.target)=="string" then
					local rawkill = goal.target:lower():gsub("^%s+",""):gsub("%s+$","")
					if rawkill:find(" mob$") or rawkill:find(" mobs$")
					or rawkill:find(" enemy$") or rawkill:find(" enemies$")
					or rawkill:find(" creature$") or rawkill:find(" creatures$")
					or rawkill:find(" npc$") or rawkill:find(" npcs$")
					then
						goal.actionselectable = false
					end
				end

				-- finally, assume buys are futureproof
				if cmd=="buy" then goal.future=true end

				-- something missing?
				if not goal.targetid and not goal.target then return nil,"no parameter",linecount,chunk end
				--[[
				if goal.target:match("%+%+") then
					if goal.target:match("%+%+$") then
						goal.target = goal.target:gsub("%+%+","")
						goal.targets = goal.target
					else
						local sing,pl = goal.target:match("(.+)%+%+%+(.+)")
						if not sing or not pl then
							sing = goal.target:gsub("([^%s%+]+)++([^%s%+]+)","%1")
							pl = goal.target:gsub("([^%s%+]+)++([^%s%+]+)","%2")
						end
						goal.target = sing
						goal.targets = pl
					end
				end
				--]]
			elseif cmd=="from" then
				goal.action = goal.action or cmd
				params=params:gsub(",%s+",",")
				goal.mobsraw = params
				local mobs = split(params,",")
				goal.mobspre = mobs
				goal.mobs = {}
				for i,mob in ipairs(mobs) do
					local name,plural = mob:match("^(.+)(%+)$")
					if not plural then name=mob end

					local nm,id = self:ParseID(name)
					
					tinsert(goal.mobs,{name=nm,id=id,pl=plural and true or false})
				end
			elseif cmd=="complete" then
				-- Retail uses |complete with conditions like subzone("Name") or quest IDs
				local fun,err = MakeCondition(params,true)
				if fun then
					goal.action = goal.action or "condition"
					goal.condition_complete_raw = params
					goal.condition_complete = fun
				else
					-- Fallback: try as quest ID
					goal.action = goal.action or cmd
					goal.quest,goal.questid,goal.objnum = self:ParseID(params)
				end
			elseif cmd=="ding" then
				goal.action = goal.action or cmd
				-- Retail format: "ding level,xp" (e.g. "ding 24,19250")
				local dlevel, dxp = params:match("^(%d+)%s*,%s*(%d+)$")
				if dlevel then
					goal.level = tonumber(dlevel)
					goal.xp = tonumber(dxp)
				else
					goal.level = tonumber(params)
				end
				if not goal.level then return nil,"'ding': invalid level value",linecount,chunk end
				prevlevel = goal.level
			elseif cmd=="equipped" then
				goal.action = goal.action or cmd
				local slot,item = params:match("^([a-zA-Z]+) (.*)")
				local slotid
				if slot then
					local ok, sid = pcall(GetInventorySlotInfo, slot)
					if ok then slotid = sid end
				end
				if not slotid or not item or item=="" then
					-- Don't abort entire guide on malformed legacy "equipped" lines.
					goal.action = nil
					goal.text = "Equip " .. (params or "")
				else
					goal.slot=slotid
					goal.item=item
				end
			elseif cmd=="hearth" then
				goal.action = goal.action or cmd
				goal.useitem = "Hearthstone"
				goal.useitemid = 6948
				goal.param = BZL[params]
				goal.force_noway = true
			elseif cmd=="rep" then
				goal.action = goal.action or cmd
				goal.faction,goal.rep = params:match("(.*),(.*)")
				if type(goal.rep)=="string" then goal.rep=self.StandingNamesEngRev[goal.rep] end
				if self.BFL[goal.faction] then goal.faction=self.BFL[goal.faction] end
			elseif cmd=="achieve" then
				if generated_goals and chunkcount>1 then
					for _,g in ipairs(generated_goals) do
						_,g.achieveid,g.achievesub = self:ParseID(params)
					end
				else
					goal.action = goal.action or cmd
					_,goal.achieveid,goal.achievesub = self:ParseID(params)
				end
			elseif cmd=="skill" or cmd=="skillmax" then
				goal.action = goal.action or cmd
				goal.skill,goal.skilllevel = params:match("^(.+),([0-9]+)$")
				goal.skilllevel = tonumber(goal.skilllevel)
				if not goal.skill then return nil,"'skill*': no skill found",linecount,chunk end
			elseif cmd=="learn" and params and params:find("##") then
				goal.action = goal.action or cmd
				goal.recipe,goal.recipeid = self:ParseID(params)
				if not goal.recipeid then return nil,"'learn': no recipe found",linecount,chunk end
				
			elseif cmd=="fpath" or cmd=="home" then
				goal.action = goal.action or cmd
				goal.param = params
				if not goal.param then return nil,"no parameter",linecount,chunk end
			elseif cmd=="havebuff" then
				goal.action = goal.action or cmd
				goal.buff = params
				if not goal.buff then return nil,"no parameter",linecount,chunk end
			elseif cmd=="nobuff" then
				goal.action = goal.action or cmd
				goal.buff = params
				if not goal.buff then return nil,"no parameter",linecount,chunk end
			elseif cmd=="invehicle" then
				goal.action = goal.action or cmd
			elseif cmd=="outvehicle" then
				goal.action = goal.action or cmd
			elseif cmd=="ontaxi" then
				goal.action = goal.action or "goto"
				goal.ontaxi = true
				if params and params~="" then
					local map,x,y,dist = self:ParseMapXYDist(params)
					if BZL[map] then map=BZL[map] end
					goal.map = map or goal.map or step.map or prevmap
					goal.x = x or goal.x
					goal.y = y or goal.y
					goal.dist = dist or goal.dist
					if goal.map then step.map = goal.map  prevmap = goal.map end
				end
			elseif cmd=="offtaxi" then
				goal.action = goal.action or "goto"
				goal.offtaxi = true
				if params and params~="" then
					local map,x,y,dist = self:ParseMapXYDist(params)
					if BZL[map] then map=BZL[map] end
					goal.map = map or goal.map or step.map or prevmap
					goal.x = x or goal.x
					goal.y = y or goal.y
					goal.dist = dist or goal.dist
					if goal.map then step.map = goal.map  prevmap = goal.map end
				end
			elseif cmd=="click" then
				goal.action = goal.action or "goal"
				local name,nid = self:ParseID(params:gsub("%+$",""))
				goal.target = name
				goal.targetid = nid
				goal.text = goal.text or ("Click " .. (name or params))
			elseif cmd=="clicknpc" then
				goal.action = goal.action or "talk"
				goal.npc, goal.npcid = self:ParseID(params:gsub("%+$",""))
				goal.text = goal.text or ("Click " .. (goal.npc or params))
			elseif cmd=="condition" then
				goal.action = goal.action or cmd
				local fun,err = MakeCondition(params,false)
				if not fun then return nil,err,linecount,chunk end
				goal.condition_complete_raw=params
				goal.condition_complete = fun

			elseif cmd=="info" then
				goal.action = goal.action or cmd
				goal.info = params


			-- clickable icon displayers

			elseif cmd=="trash" then
				-- Retail: destroy/trash an item. Complete when item count reaches 0.
				goal.action = goal.action or "trash"
				local name, id = self:ParseID(params:gsub("%+$",""))
				goal.target = name
				goal.targetid = id
				goal.text = goal.text or ("Destroy " .. (name or params))
			elseif cmd=="walk" then
				-- Retail: walk modifier (just a hint, no action needed)
				-- ignored
			elseif cmd=="cast" then
				goal.action = goal.action or cmd
				goal.castspell,goal.castspellid = self:ParseID(params)
				if not goal.castspell and not goal.castspellid then return nil,"no parameter",linecount,chunk end
			elseif cmd=="petaction" then
				goal.action = goal.action or cmd
				goal.petaction = tonumber(params)
				if not goal.petaction then goal.petaction = params end
				if not goal.petaction then return nil,"petaction needs an action number",linecount,chunk end
			elseif cmd=="use" then
				goal.action = goal.action or cmd
				goal.useitem,goal.useitemid = self:ParseID(params)
				if not goal.useitem and not goal.useitemid then return nil,"no parameter",linecount,chunk end
			elseif cmd=="script" then
				goal.script = params

			-- conditions

			elseif cmd=="only" then
				local cond = params:match("^if%s+(.*)$")
				if cond then
					local applyToStep = (not generated_goals) and (not HasGoalContent(goal))
					-- condition match - try as Lua expression first
					local fun,err = MakeCondition(cond,true)
					if fun then
						if generated_goals and chunkcount>1 then
							for _,g in ipairs(generated_goals) do
								g.condition_visible_raw=cond
								g.condition_visible=fun
							end
						else
							local subject = applyToStep and step or goal
							subject.condition_visible_raw=cond
							subject.condition_visible=fun
						end
					else
						local reqpart, luapart = cond:match("^(.-)%s+and%s+(.+)$")
						local reqs = reqpart and IsRaceClassOnlyIfText(reqpart) and ParseOnlyIfRequirementList(reqpart) or nil
						local luafun = luapart and select(1, MakeCondition(luapart,true)) or nil
						if reqs and luafun then
							local subject = applyToStep and step or goal
							subject.requirement = reqs
							subject.condition_visible_raw = cond
							subject.condition_visible = function()
								return ZGV:RaceClassMatch(reqs) and luafun()
							end
						else
							local negated_req_text = cond:match("^not%s+(.+)$")
							if negated_req_text and IsRaceClassOnlyIfText(negated_req_text) then
								local reqonly = ParseOnlyIfRequirementList(negated_req_text)
								if not applyToStep then
									if ZGV:RaceClassMatch(reqonly) then
										goal={}
										break
									end
								else
									step.condition_visible_raw = cond
									step.condition_visible = function()
										return not ZGV:RaceClassMatch(reqonly)
									end
								end
							elseif IsRaceClassOnlyIfText(cond) then
								local reqonly = ParseOnlyIfRequirementList(cond)
								if not applyToStep then
									if not ZGV:RaceClassMatch(reqonly) then
										goal={}
										break
									end
								else
									step.requirement=reqonly
								end
							else
								return nil,err,linecount,chunk
							end
						end
					end
				else
					-- race/class match
					local reqs = ParseOnlyIfRequirementList(params)
					if HasGoalContent(goal) then
						if not ZGV:RaceClassMatch(reqs) then
							goal={}
							break
						end -- skip goal line altogether
					else
						step.requirement=reqs
					end
				end
			elseif cmd=="until" then
				if not step then return nil,"until before step",linecount,chunk end
				local cond = NormalizeUntilCondition(params)
				local fun,err = MakeCondition(cond,true)
				if not fun then return nil,err,linecount,chunk end
				step.condition_until_raw=cond
				step.condition_until=fun

			-- extra tags

			elseif cmd=="autoscript" then
				goal.autoscript = params
			elseif cmd=="confirm" then
				goal.action = goal.action or "confirm"
			elseif cmd=="n" then
				goal.force_nocomplete = true
			elseif cmd=="c" then
				goal.force_complete = true
			elseif cmd=="noway" then
				if generated_goals then
					for _,g in ipairs(generated_goals) do g.force_noway=true end
				else
					goal.force_noway = true
				end
			elseif cmd=="localmap" then
				if generated_goals then
					for _,g in ipairs(generated_goals) do g.localmap=true end
				else
					goal.localmap = true
				end
			elseif cmd=="sticky" then
				if generated_goals then
					for _,g in ipairs(generated_goals) do g.force_sticky=true end
				else
					goal.force_sticky = true
				end
			elseif cmd=="stickyif" then
				if not step then return nil,"stickyif before step",linecount,chunk end
				local fun,err = MakeCondition(params,true)
				if not fun then return nil,err,linecount,chunk end
				step.condition_sticky_raw=params
				step.condition_sticky=fun
			elseif cmd=="stickystart" or cmd=="stickystop" then
				if cmd=="stickystart" then
					sticky_depth = sticky_depth + 1
				elseif sticky_depth>0 then
					sticky_depth = sticky_depth - 1
				end
			elseif cmd=="future" then
				goal.future = true  -- if quest-related, then don't worry if the quest isn't in the log.
			elseif cmd=="noobsolete" then
				if goal then
					goal.noobsolete = true
					if goal.questid then noobsoletequests[goal.questid] = true end
				else
					guide.noobsolete = true
				end
			elseif cmd=="daily" then
				if goal and goal.questid then dailyquests[goal.questid] = true end
				if #guide.steps==0 then guide.daily=true end

			elseif cmd=="tip" then
				if generated_goals and chunkcount>1 then
					if routectx and #generated_goals>0 then
						local tiptext = params or ""
						local tailcoord
						local body,tail = tiptext:match("^(.-);%s*(.-)%s*$")
						if body and tail and tail~="" then
							tiptext = body
							tailcoord = tail
						end
						tiptext = tiptext:gsub("^%s+",""):gsub("%s+$","")

						if tiptext~="" then
							tinsert(routectx.pending_tips, tiptext)
						end

						if tailcoord and tailcoord~="" then
							local extrapoints = ParseRoutePoints(tailcoord, step.map or prevmap)
							AppendGeneratedRoutePoints(extrapoints)
							routectx.saw_tailcoord = true
						end
					else
						-- Shared tip for generated route/loop/path goals.
						for _,g in ipairs(generated_goals) do g.routesharedtip = params end
						if generated_goals[#generated_goals] then
							generated_goals[#generated_goals].tooltip = params
						end
					end
				else
					goal.tooltip = params
				end
			elseif cmd=="image" then
				if generated_goals and chunkcount>1 then
					for _,g in ipairs(generated_goals) do g.image=params end
				else
					goal.image = params
				end
			elseif cmd=="quest" or cmd=="q" then
				local first=params:match("^(.-),")
				if first then params=first end
				goal.quest,goal.questid,goal.objnum = self:ParseID(params)
				if not goal.questid then return nil,"no questid in parameter",linecount,chunk end
			elseif cmd=="or" then
				goal.orlogic = params and tonumber(params) or 1
			elseif cmd=="next" then
				local nextdest = params:gsub('^"(.-)"$',"%1")
				if nextdest=="" then nextdest="+1" end
				nextdest = nextdest:gsub("\\\\","\\")
				if generated_goals and chunkcount>1 then
					for _,g in ipairs(generated_goals) do g.next = nextdest end
				else
					goal.next = nextdest
				end
				-- Fallback for runtimes/click paths where per-goal next may be lost:
				-- remember a step-level jump target as well.
				if step then step.next = nextdest end
			elseif cmd=="optional" then
				goal.optional=true
			elseif cmd=="required" then
				goal.optional=false
			elseif cmd=="important" then
				goal.important=true
			elseif cmd=="icon" or cmd=="buttonicon" or cmd=="mapicon" then
				local p = params and params:gsub("\\\\","\\") or params
				if p and type(p)=="string" then
					p = p:gsub("^Interface\\icons\\","Interface\\Icons\\")
				end
				if cmd=="icon" then
					goal.icon=p
				elseif cmd=="buttonicon" then
					goal.buttonicon=p
				elseif cmd=="mapicon" then
					goal.mapicon=p
				end
			elseif cmd=="title" then
				goal.title = params and params:gsub('^"(.-)"$',"%1") or params
			elseif cmd=="execute" or cmd=="macro" or cmd=="updatescript" then
				goal.autoscript=params
			elseif cmd=="condition_visible" then
				local fun,err = MakeCondition(params,true)
				if not fun then return nil,err,linecount,chunk end
				goal.condition_visible_raw=params
				goal.condition_visible=fun
			elseif cmd=="condition_valid" or cmd=="condition_suggested" then
				local fun,err = MakeCondition(params,true)
				if not fun then return nil,err,linecount,chunk end
				goal.condition_complete_raw=params
				goal.condition_complete=fun
			elseif cmd=="notravel" then
				goal.waypoint_notravel = true
			elseif cmd=="condition_valid_msg" or cmd=="condition_invalid" or cmd=="condition_end" or cmd=="condition_suggested_race"
			or cmd=="debug" or cmd=="template" or cmd=="meta" or cmd=="keywords" or cmd=="opt" or cmd=="travelcfg" or cmd=="travelfor"
			or cmd=="notinsticky" or cmd=="nowayinzone" or cmd=="autoacceptany" or cmd=="autoturninany"
			or cmd=="noautoaccept" or cmd=="noautogossip" or cmd=="nohearth" or cmd=="nomodels" or cmd=="nomovieskip"
			or cmd=="noordinal" or cmd=="blizztooltip" or cmd=="usebank" or cmd=="usename" or cmd=="mounts" or cmd=="pets"
			or cmd=="pet" or cmd=="spec" or cmd=="class" or cmd=="grouprole" or cmd=="region" or cmd=="minizone"
			or cmd=="model" or cmd=="modelnpc" or cmd=="modeldisplay" or cmd=="indoors" or cmd=="outdoors" or cmd=="sugGroup"
			or cmd=="completion" or cmd=="achieveid" or cmd=="blockstart" or cmd=="blockend" or cmd=="override" or cmd=="more"
			or cmd=="leechsteps" or cmd=="shared_origin" or cmd=="getquestonmap" or cmd=="showtext" then
				-- Retail-only parser tags not yet fully supported by this runtime.
				-- Parsed as no-op to avoid polluting the goal text list.
			elseif cmd=="instant" then  -- when we HAVE to use the title, for instant-complete quests.
				if goal.questid then ZGV.instantQuests[goal.questid]=true end
				goal.usetitle=true
			elseif cmd=="killcount" then  -- use killcounter for non-quest mobs
				goal.usekillcount=true
			elseif generated_goals and routectx and chunkcount>1 then
				-- Route/loop continuation fallback: parse extra coordinate chunks or tip-like
				-- text chunks so they don't appear as plain comment goals.
				local extrapoints = ParseRoutePoints(chunk, step.map or prevmap)
				if #extrapoints>0 then
					AppendGeneratedRoutePoints(extrapoints)
				else
					local tiptext = chunk:gsub("^tip%s+",""):gsub("^%s+",""):gsub("%s+$","")
					tiptext = tiptext:gsub(";%s*$","")
					if tiptext~="" then
						tinsert(routectx.pending_tips, tiptext)
					end
				end
			elseif #chunk>1 then -- text
				-- snag coordinates for waypointing, with distance
				local st,en,x,y,d
				st,en = 1,1

				st,en,x,y,d = params:find("([0-9]+%.?[0-9]*),([0-9]+%.?[0-9]*)(,([0-9]+%.?[0-9]*))?",en)
				if not x then
					-- without distance, perhaps?
					d=0.2
					st,en,x,y = params:find("([0-9]+%.?[0-9]*),([0-9]+%.?[0-9]*)",en)
				end

				if x and y then
					goal.x = tonumber(x)
					goal.y = tonumber(y)
					goal.dist = tonumber(d)
					params = params:sub(1,st-1) .. COLOR_LOC(L['coords']:format(goal.x,goal.y)) .. params:sub(en+1)
				end

				if goal.x then goal.map = prevmap end

				goal.text=(cmd=="'" or goal.x) and params or chunk
			end

			chunkcount=chunkcount+1
			if chunkcount>20 then
				return nil,"More than 20 chunks in line",linecount,line
			end
		end

		if generated_goals and routectx and routectx.pending_tips and #routectx.pending_tips>0 then
			-- Tip mapping policy:
			-- - one tip only, no tail-coordinate chaining: shared/final route tip
			-- - multiple tips: map sequentially to generated route points
			if #routectx.pending_tips==1 and not routectx.saw_tailcoord and #generated_goals>1 then
				local shared = routectx.pending_tips[1]
				for _,g in ipairs(generated_goals) do g.routesharedtip = shared end
				if generated_goals[#generated_goals] then
					generated_goals[#generated_goals].tooltip = shared
				end
			else
				for i,tip in ipairs(routectx.pending_tips) do
					if generated_goals[i] then
						generated_goals[i].tooltip = tip
					end
				end
			end
		end

		local function CommitGoal(parsedgoal)
			if not parsedgoal or #TableKeys(parsedgoal)==0 then return true end
			if not step then return nil,"What? Unknown data before first 'step' tag, or what?",linecount,line end

			setmetatable(parsedgoal,ZGV.GoalProto_mt)

			if not parsedgoal.action and (parsedgoal.x or parsedgoal.map) then
				parsedgoal.action = "goto"
			end

			if parsedgoal.questid and noobsoletequests[parsedgoal.questid] then
				parsedgoal.noobsolete = true
			end

			parsedgoal.parentStep = step
			parsedgoal.num = #step.goals+1
			parsedgoal.indent = #indent
			if sticky_depth>0 then parsedgoal.force_sticky = true end

			step.goals[#step.goals+1] = parsedgoal

			if (parsedgoal.action=="get" or parsedgoal.action=="kill" or parsedgoal.action=="goal") and not parsedgoal.questid and not parsedgoal.force_nocomplete then
				-- Allow kill/get without quest ID (farming guides, gold guides).
				-- Mark as no-complete so they don't try to track quest progress.
				parsedgoal.force_nocomplete = true
			end
			return true
		end

		if generated_goals then
			for _,g in ipairs(generated_goals) do
				local ok,err,a,b = CommitGoal(g)
				if not ok then return nil,err,a,b end
			end
		end

		if #TableKeys(goal)>0 then
			local ok,err,a,b = CommitGoal(goal)
			if not ok then return nil,err,a,b end
		end

	end
	return guide
end
