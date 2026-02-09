LibRover_NodeSet = {}

local NodeSet=LibRover_NodeSet

local Lib

local length=0

function NodeSet:New()
	local new={}
	setmetatable(new,{__index=self})
	return new
end

function NodeSet:Add(node)
	if not self[node] then length=length+1 end
	self[node]=1
end

function NodeSet:Remove(node)
	if self[node] then length=length-1 end
	self[node]=nil
end

function NodeSet:Clear()
	wipe(self)
	length=0
end

local debug_count_searchopen
function NodeSet:GetCheapest()
	-- find cheapest open node
	if Lib.force_next and self[Lib.force_next] then return Lib.force_next end -- bully.
	
	local cheapest = next(self)
	if not cheapest then return nil end
	 local debug_time_searchopen_1 = debugprofilestop()
	local minscore=cheapest.score or 999999999
	 local debug_count_searchopen=Lib.debug_count_searchopen
	for node,_ in pairs(self) do
		--assert(node.score,"NO SCORE "..node:tostring())
		if node.score<minscore then minscore=node.score cheapest=node end
		 debug_count_searchopen=debug_count_searchopen+1
	end
	 Lib.debug_count_searchopen=debug_count_searchopen
	 debug_time_searchopen_1 = debugprofilestop()-debug_time_searchopen_1
	 Lib.debug_time_searchopen_total = Lib.debug_time_searchopen_total + debug_time_searchopen_1

	return cheapest
end

function NodeSet:Length()
	return length
end

function NodeSet:InterfaceWithLib(lib)
	Lib=lib
end
