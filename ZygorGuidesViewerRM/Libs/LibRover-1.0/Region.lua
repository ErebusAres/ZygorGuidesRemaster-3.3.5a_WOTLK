LibRover_Region = {}

local Region=LibRover_Region


local Lib

local BZ = LibStub("LibBabble-SubZone-3.0")
local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

function Region:New(data)
	local region=data
	setmetatable(region,{__index=self})

	self = region

	if self[1]=="REGION" then tremove(self,1) end

	local m1,f1,x1,y1,id1,dat1 = LibRover_Node:Parse(self.center)   self.center=nil
	self.centernode = x1 and LibRover_Node:New{m=m1,f=f1,x=x1,y=y1,id=id1,type=ntype} or Lib.nodes.id[id1]
	if self.greenborders then
		for ni,n in ipairs(self.greenborders) do
			local f
			if type(n) == "table" then
				f = n[2]
				n = n[1]
			end
			local id = Lib.data.MapIDsByName[n]
			if id then self.greenborders[id]=f or true end
		end
	end

	if self.zonematch then
		local zone,realzone,subzone,minizone=self.zonematch:match("^(.-)/(.-)/(.-)/(.-)$")
		local function verify(z)
			if z=="*" then return nil end
			return z
		end
		if zone then
			local err
			self.zone,err = verify(zone)  if err then return nil,err end
			self.realzone,err = verify(realzone)  if err then return nil,err end
			self.subzone,err = verify(subzone)  if err then return nil,err end
			self.minizone,err = verify(minizone)  if err then return nil,err end
		end
	end

	if type(self.mapzone)=="string" then self.mapzone = LibRover.data.MapIDsByName[self.mapzone] end

	return region
end

function Region:Contains(node)
	--Lib:Debug(getdist(self.centernode,node))
	if self.name==node.region then
		return true  -- that's a no-brainer
	else
		if not self.centernode and not self.zonematch then return false end  -- no conditions? it must be a very special region... die. indoors doesn't matter at this point,
		if self.centernode then
			local centermatch = self.centernode.m==node.m and self.centernode.f==node.f and Lib.GetDist(self.centernode,node)<self.radius
			if not centermatch then return false end
		end
		if self.zonematch then
			-- if any map name is specified, then it needs to match
			local zonematch = (not self.mapzone or node.m==self.mapzone)
				and (not self.zone or node.zone==self.zone)
				and (not self.realzone or node.realzone==self.realzone)
				and (not self.subzone or node.subzone==self.subzone)
				and (not self.minizone or node.minizone==self.minizone)
			if not zonematch then return false end
		end
		if self.indoors then -- indoors is 1 or 0 or unset
			if node.indoors~=(self.indoors==1) then return false end
		end
		return true  -- passed both
	end
end

function Region:HasGreenBorder(mapid,flr)
	flr = flr or 1
	return self.greenborders and self.greenborders[mapid] and (self.greenborders[mapid] == true or self.greenborders[mapid] == flr)
end

function Region:tostring()
	return self.name
end


local region_mt = {__index=region_proto}



-- unused, might come in handy.
function pointInPoly(x,y,...)
	local pts = select("#",...)
	print("pts",pts)
	local odd=false
	local p1x,p1y,p2x,p2y
	for i=1,pts,2 do
		p1x = p2x or select(i,...)
		p1y = p2y or select(i+1,...)
		p2x = select(i+2,...) or select(1,...)
		p2y = select(i+3,...) or select(2,...)
		print("i",i,"p1",p1x,p1y,"p2",p2x,p2y)
		if (((p1y<y and p2y>=y)
		or (p2y<y and p1y>=y))
		and (p1x<=x or p2x<=x)) then
			if (p1x+(y-p1y)/(p2y-p1y)*(p2x-p1x)<x) then
				odd=not odd
			end
		end
	end
	return odd
end


function Region:InterfaceWithLib(lib)
	Lib=lib
end
