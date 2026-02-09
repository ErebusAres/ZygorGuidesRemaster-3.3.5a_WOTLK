LibRover_Node = {}

local Node=LibRover_Node

-- IMPORTANT OBSERVATION.
-- Nodes are (almost) ALWAYS separated by "walk"/"fly"

local Node_meta={__index=Node}
local Node_n_meta={__mode="k"}
function Node:New(data)
	local new=data or {}
	setmetatable(new,Node_meta)
	new.n={}  -- prepare neighbours
	new.n_iftype={}
	setmetatable(new.n,Node_n_meta)
	return new
end


local Lib
local Lib_GetDist


local default_maxspeedinzone = {1,1,1}

--[[
function Node:AddNeigh(node,meta)
	self.n[node]=meta
end

function Node:RemoveNeigh(node)
	self.n[node]=nil
end

function Node:IterNeighs()
	return pairs(self.n)
end
--]]

function Node:AddNeigh(node,meta)
	self.n[#self.n+1]={node,meta}
	assert(node.type,"Node "..node.num.." has no type? wtf?")
	self.n_iftype[node.type]=1
end

--[[
function Node:RemoveNeigh(node_or_type,type2,type3)
	if not self.n_if[node_or_type] then return end
	local n=self.n
	for i=1,#n do
		while 1 do
			local nod=n[i]
			if nod and (nod[1]==node or nod[1].type==node_or_type) then tremove(n,i) else break end
		end
	end
end
--]]

function Node:RemoveNeighType(type1,type2,type3)
	if not self.n_iftype[type1] and not self.n_iftype[type2] and not self.n_iftype[type3] then return end
	local neighs=self.n
	local i=1
	local node=neighs[i]
	while node do
		local typ=node[1].type
		if (typ==type1 or typ==type2 or typ==type3) then tremove(neighs,i) else i=i+1 end
		node=neighs[i]
	end
	self.n_iftype[type1]=nil
	if type2 then self.n_iftype[type2]=nil end
	if type3 then self.n_iftype[type3]=nil end
end

function neighnext(tab,k)
	k=(k or 0)+1
	local data=tab[k]
	if data then return k,unpack(data) else return end
end

function Node:IterNeighs()
	local k=0
	local n=self.n
	return function()
		k=k+1
		local data=n[k]
		if data then return unpack(data) else return end
	end
end

function Node:GetNeigh(node,num)
	if type(node)=="number" then node=Lib.nodes.all[node] end
	local mynum=0
	for n,meta in self:IterNeighs() do
		if n==node then
			mynum=mynum+1
			if not num or mynum==num then
				return meta
			end
		end
	end
end


-- ONE WAY. Run twice to do two-way.
-- Checks if n1 sees n2, and - if yes - adds it to neighbours.
-- node.m = map id
-- node.ms[mapid] = "does node see nodes in mapid as visible" (crossable borders)
-- node.c = cont id

function Node:DoLinkage(n2)
	local n1=self

	-- NO pathfinding, only direct routes?
	if n1.type=="start" and n2.type=="end" and Lib.extradata and Lib.extradata.direct then -- let's shoot ourselves in the foot! yeah!
		n1:AddNeigh(n2,{mode="walk",cost=-9999999})
		return
	end


	if n1.c==n2.c then

		if n1.onlyhardwire then return false,"src is onlyhardwire" end
		if n2.onlyhardwire and not n1.player then return false,"dest is onlyhardwire" end

		if n1.type=="taxi" and n2.type=="taxi" then
			-- Timings are IN.
			local cost = n1.costs and n1.costs[n2.taxitag]
			if cost then n1:AddNeigh(n2,{mode="taxi",cost=cost}) end
			if (n1.taxioperator~="blackcat" and n2.taxioperator~="blackcat") or cost then
				return
			end
		end



		local canfly,reason = n1:CanFlyTo(n2)
		if canfly then
			-- use flying mount connections to end node, if flight is available.
			-- This means let all nodes on the continent see each other, unless some special cases.

			n1:AddNeigh(n2,{mode="fly",implicit=true})
			if n2.type=="end" and n1.status=="closed" then n1.status="canopen" end
		else

			if reason=="dest is a border" then return end  -- don't try to walk, if flight is possible

			if n1:CanWalkTo(n2) then
				-- do ground connections

				local meta = {mode="walk",implicit=true}
				n1:AddNeigh(n2,meta)
				if n2.type=="end" and n1.status=="closed" then n1.status="canopen" end

				-- clear neighs cache
				--local neighs=n1.neighs
				--if not neighs then neighs={} n1.neighs=neighs else wipe(neighs) end

				-- The "dark" nodes can still see start/end nodes, but through a "mud" penalty.
				-- This guarantees that starts/ends within some special low-visibility areas get connected to the closest explicit node only, with no excessive beelining.
				if n1.dark or n2.dark then
					if n1==Lib.startnode then
						meta.mud=10  -- let's be a little bit lenient on the starts
					elseif n2.type=="end" then
						meta.mud=100  -- ends better be damn close.
					end
					-- This difference causes routes to have easy starts, but precise endings.
				end

				--DEBUG
				--[[
				if n1.debug or n2.debug then
					Lib:Debug(n1:tostring().."  --WALK--  "..n2:tostring())
					Lib:Debug("n2.dark: "..tostring(n2.dark).."  startnode? "..tostring(n1==Lib.startnode))
				end
				--]]

				-- MEMORY HOG: store costs NOW.

			end
		end

	end
	--[[
	for t,to in pairs(n1.taxi) do
		if (#to==2 and to[1]==n2.l[1] and to[2]==n2.l[2]) -- they see us using "see all zone"
		or ((type(to)==number or type(to)==string) and n2.id==to) -- direct link to us
		then
			n1.n[i]=WAY_TAXI
		end
	end
	--]]
end
--DNL=DoNodeLinkage  --global


function Node:GetActionTitle(prevnode,nextnode,dir)
	local atitle = self.actiontitle
	if type(atitle)=="function" then atitle=atitle(self,prevnode,nextnode,dir) end
	if atitle then return Lib.L[atitle] end
end

function Node:GetActionIcon(prevnode,nextnode,dir)
	local icon = self.actionicon
	if type(icon)=="function" then icon=icon(self,prevnode,nextnode,dir) end
	return icon
end


-- Run as node:GetText().
-- Additional params allow for contextualization - give a node its predecessor and successor, and get proper "ship from..." display.
function Node:GetText(prevnode,nextnode,dir)
	local MapName = Lib.MapName
	local prevstep,nextstep
	if prevnode and prevnode.node then prevstep,prevnode = prevnode,prevnode.node end
	if nextnode and nextnode.node then nextstep,nextnode = nextnode,nextnode.node end

	function FromTo(strfrom,strto)
		if prevnode and prevnode==self.border then return strfrom else return strto end
	end

	local title = self.title
	if type(title)=="function" then title=title(self,prevnode,nextnode) end
	if title then return Lib.L[title] end

	if Lib.debug_verbose_nodes then
		return ("[%d] %s %d,%d (%s)"):format(self.num,GetMapNameByID(self.m or 0) or "world",self.x*100,self.y*100,self.type)

	elseif self.type=="border" then
		--if fromnode and fromnode.n[node] and fromnode.n[node].border then
			--local border = fromnode.n[node].border
			--return ("%s border"):format(GetMapNameByID(fromnode:GetText()) or dstmap)
		--else
			--return ("%s/%s border"):format(GetMapNameByID(self.border[1]) or self.border[1],GetMapNameByID(self.border[2]) or self.border[2])
		--end
		return ("%s/%s border"):format(MapName(self),MapName(self.border or self.ms and next(self.ms)))
	elseif self.type=="taxi" then
		return ("%s flight point"):format(self.name)
	elseif self.type=="ship" then
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Ship from %s","Ship to %s"):format(destportname)
	elseif self.type=="zeppelin" then
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Zeppelin from %s","Zeppelin to %s"):format(destportname)
	elseif self.type=="tram" then
		--local dest=self.border.port or (nextnode.m~=self.m and nextnode) or (prevnode.m~=self.m and prevnode)
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Tram from %s","Tram to %s"):format(destportname)
	elseif self.type=="portal" then
		if self.border and self.m==self.border.m then
			return ("Portal")
		elseif self.border and self.border~="multi" then -- should have one! though portals tend to have common destination points, account for that too.
			local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
			return FromTo("Portal from %s","Portal to %s"):format(destportname)
		elseif prevnode then
			local destportname = prevnode.port or prevnode.name or MapName(prevnode)
			return FromTo("Portal from %s","Portal to %s"):format(destportname)
		else
			return "Portal destination"
		end
		--if not srcmap then
			--return ("%s/%s portal"):format(GetMapNameByID(self.n[fromnode]border[1]),GetMapNameByID(self.border[2]))
		--else
		--	local dstmap = self.border[1]==srcmap and dstmap or srcmap
		--	return ("Portal %s %s"):format(dir=="src" and "to" or "from",GetMapNameByID(dstmap))
		--end
	else
		return ("%s %d,%d"):format(MapName(self),self.x*100,self.y*100)
	end
end

function Node:tostring(withneighs)
	local ret = ("[%d] %s\"%s\" = %s /%d %.1f,%.1f [%s]"):format(self.num, (self.id and "@"..self.id.." " or ""), self:GetText(), Lib.MapName(self.m),self.f, self.x*100,self.y*100, self.type or "?")
	if self.is_arrival then  ret = ret .. " (arrival)" end
	ret = ret .. (" [%s]"):format(self.status or "?")
	if self.region then  ret = ret .. (" (REG:|cff0088ff%s|r)"):format(self.region)  end
	if self.type=="taxi" then  ret = ret .. (" |cff8899aa(taxi %s|cff8899aa)"):format((self.known==true and "|cff00ff00known") or (self.known==false and "|cffff0000unknown") or "|cffffaa00wtf")  end
	if self.parentlink then  ret = ret .. (" |cff8899aa(mode:|cffffffff%s|cff8899aa from [|cffffffff%d|cff8899aa])"):format(self.parentlink.mode,self.parent.num)  end
	if self.mytime then ret = ret .. (" |cff888888[my t=|cff55aa00%.1f|cff888888/|cff77ee00%.1f|cff888888]"):format(self.mytime or -1,self.mycost or -1) end
	if self.time then ret = ret .. (" |cff888888(t=|cff00aa55%.1f|cff888888/|cff00ee77%.1f|cff888888"):format(self.time or -1,self.cost or -1) end
	if self.score and self.score~=self.cost then  -- heuristics get detailed displays
		ret = ret .. (", score=|cff00ee77%.1f|cff888888)"):format(self.score or -1)
	else
		ret = ret .. ")"
	end
	if self.costdesc and self.costdesc~="" then  ret = ret .. " COST DEBUG: " .. self.costdesc  end

	if withneighs then
		local neighs = ""
		for n,link in self:IterNeighs() do neighs=neighs.." ".. n:tostring().." <"..(link.mode or "?")..">\n" end
		ret = ret .. "\nLinks:\n"..neighs
	end
	return ret
end

function Node:GetAngleTo(node2)
	local dist,xd,yd = Lib.GetDist(self,node2)
	if not xd then return end
	local dir = atan2(xd, -yd)
	return dir%360
end

-- Checks if player can walk towards the destination.
function Node:CanWalkTo(dest,debugmode)
	if type(dest)=="number" then dest=Lib.nodes.all[dest] end

	local n1=self
	local n2=dest

	local reason=""
	if (debugmode) then
		if n1.m==n2.m then reason=reason.."same map; " end
		if (ZGV.Pointer.phasedMaps[n1.m]==ZGV.Pointer.phasedMaps[n2.m]) then reason=reason.."same phased map; " end
		if (n2.ms and n2.ms[n1.m]) then reason=reason.."n2 visible from n1.ms; " end
		if Lib.greenborders:CanCross(n1.m,n2.m) then reason=reason.."greenborder cancross: "..n1.m.." "..n2.m.."; " end
		if (n1.regionobj and n1.regionobj:HasGreenBorder(n2.m,n2.f)) then reason=reason.."n1.regionobj has green border to n2.m "..n2.m.."; " end
		if (n2.regionobj and n2.regionobj:HasGreenBorder(n1.m,n1.f)) then reason=reason.."n2.regionobj has green border to n1.m "..n1.m.."; " end
	end

	if (n1.type~="start" and n1.type~="end" and n2.type~="start" and n2.type~="end" and (n1.dark or n2.dark)) then return false,"nodes in dark zone: ["..(n1.dark and "src" or "")..(n2.dark and "dst" or "").."]" end -- don't connect in dark; startnode and endnode ARE allowed to connect, though - we'll just run a "mud" penalty for beelines later.
	if (n2.m==41 and (n1.y-0.8)*(n2.y-0.8)<0) then return false,"stupid rut'theran hack" end -- Darnassus! Unwalkable to Rut'n! TEMPORARY... --TODO: make this a region.

	if Lib.greenborders:CanCross(n1.m,n2.m) then return true,"green border" end
	-- or any of the nodes is in a green-bordered region; these are parts of zones that somehow logically belong to another zone, NOT their true zone.
	if n1.regionobj and n1.regionobj:HasGreenBorder(n2.m,n2.f) then return true,"green region 1" end
	if n2.regionobj and n2.regionobj:HasGreenBorder(n1.m,n1.f) then return true,"green region 2" end

	if ( -- same map, at least phase-wise, or the points are set as "guests" on the other map
		(
		 n1.m==n2.m
		 -- or same phased map
		 or (ZGV.Pointer.phasedMaps[n1.m]==ZGV.Pointer.phasedMaps[n2.m])  -- same phased map
		 --or (n1.ms and n1.ms[n2.m])  -- same "surrogate" map, one way or another
		 or (n2.ms and n2.ms[n1.m])
		)
		-- and same floor, if that matters
		and ((n1.f==n2.f) or not Lib.data.basenodes.MapsWithExplicitFloors[n1.m])
		-- and same region
		and (n1.region==n2.region)
	) then return true,reason
	else return false,reason
	end
end

-- Checks if player can fly in a beeline towards the destination.
function Node:CanFlyTo(dest)
	local m=self.m

	if type(dest)=="number" then dest=Lib.nodes.all[dest] end

	-- is flight even possible for the player? check so late because it's costly.
	-- or is it...
	local flyspeed = Lib.maxspeedinzone[m][3]
	if not flyspeed then return false,"no flight" end

	if not dest.c then return false,"no continent!?" end
	if dest==self then return false,"same node" end
	if self.onlyhardwire then return false,"src is onlyhardwire" end
	if dest.onlyhardwire and not self.player then return false,"dest is onlyhardwire" end
	if not (dest.c==self.c and dest.c>=0) then return false,"not same cont" end
	if dest.type=="border" and not dest.border_in_flight then return false,"dest is a border" end
	if dest.nofly or self.nofly then return false,"either is nofly" end
	if Lib.zone_is_exo_or_belf(dest.m) then return false,"dest is exo or belf" end
	if not Lib.zone_same_eastern_part(dest.m,m) and (dest.type~="border" or dest.border_in_flight) then return false,"not same eastern part" end  -- DO save SOME borders for flight, like Ironforge entry
	if not Lib.zone_is_barad(dest.m)==Lib.zone_is_barad(m) then return false,"either is barad" end
	if not Lib.zone_is_vash(dest.m)==Lib.zone_is_vash(m) then return false,"either is vash" end
	--if ((dest.m==321 and dest.f==2) or (m==321 and self.f==2))  then return false,"dest is orgri cleft" end
	--if ((dest.m==504 and dest.f==2) or (m==504 and self.f==2)) then return false,"dest is dala sewer" end

	if ((m==321 or m==504) and self.f==2)  -- Orgri or Dala
	or ((dest.m==321 or dest.m==504) and dest.f==2)
		then return false,"Orgri or Dala underground" end

	if m==928 or m==933 or dest.m==928 or dest.m==933 then return false,"Isle of Thunder no flying there!" end
	if m==929 then return false,"Isle of Giants" end --Can fly into this area, but not fly out of it, or around it
	if m==951 then return false,"Timeless Isle" end --Can fly into this area, but not fly out of it, or around it
	if m==499 or dest.m==499 then return false,"Isle of Quel'Danas no flying there!" end

	if self.f>0 and not ((m==321 or m==504) and self.f==1)  -- cave, but not Orgri or Dala overground
		then return false,"origin is a cave or something; not Orgri or Dala, anyway" end

	if dest.f>0 and not ((dest.m==321 or dest.m==504) and dest.f==1)  -- cave, but not Orgri or Dala overground
		then return false,"dest is a cave or something; not Orgri or Dala, anyway" end

	return true
end

function Node:CanConnectTo(dest)
	if type(dest)=="number" then dest=Lib.nodes.all[dest] end
	for neigh,neighmeta in self:IterNeighs() do
		if neigh==dest then return neighmeta end
	end
end

function Node:AssignRegion(region)
	if not region then
		Lib.NodeRegions:Assign(self)
	else
		self.region=region.name
		self.regionobj=region
		self.dark = self.dark or region.dark
		self.nofly = self.nofly or region.nofly
	end
end

function Node:AssignSpecialMap()
	Lib.SpecialMapNodeData:Assign(self)
end

function Node:Parse(text)
	if not text then return end
	local dat
	if type(text)=="table" then
		-- Hardcore, aren't we? we have an advanced node here!
		-- Expecting something like   {"Map/12 33,44", foo="bar", fee="fum"}
		-- Start by extracting the plain string from the table.
		dat=text
		text=text[1]
		dat[1]=nil
	else
		dat={}
	end

	-- advanced or not, treat it as a normal all-string parsable node.
	local function grab_dat(s)
		s=s:gsub("%%GT%%",">")
		local k,v = s:match("(.-):(.+)")
		dat[k]=v
		return ""
	end
	text=text:gsub("%s*<(.-)>",grab_dat)

	-- now extract map and coords.
	text=text:match("^%s*(.-)%s*$") or text  --trim
	local rest,id = text:match("^(.-)%s*@(%S+)$")  -- "Map/1 12,34 @id"
	if id and rest=="" then -- just id!
		if id:sub(1,1)=="!" then
			-- COPY the old node! This is wasteful, but necessary, as special spell/item nodes can't handle multiple arrivals yet.
			id=id:sub(2)
			local node = Lib.nodes.id[id]
			if node then return node.m,node.f,node.x,node.y,id,dat end
		end
		return nil,nil,nil,nil,id
	end
	text=rest~="" and rest or text
	local m,x,y = text:match("^(.-)[%s,]+([0-9%.]+),([0-9%.]+)$")
	local f
	if m then -- split /floor from map
		_,f = m:match("^(.-)%s*/%s*(%d+)$")
		m = _ or m
	end
	m=m or text  -- could be just the zone, after all.
	m = tonumber(m) or Lib.data.MapIDsByName[m] -- pure numeric zone? supported!
	if type(m)=="table" then m=m[1] end

	assert(m,"Bad map in Node:Parse('"..text.."')")

	return m,tonumber(f) or 0,x and tonumber(x)/100,y and tonumber(y)/100,id,dat
end

function Node:GetDebugNeighs()
	local t={}
	for neigh,meta in self:IterNeighs() do t[meta]=neigh end
	return t
end



function Node:InterfaceWithLib(lib)
	Lib=lib
end
