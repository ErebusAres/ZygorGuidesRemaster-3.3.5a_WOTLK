LibRover_NodeSetHeap = {}

local NodeSet=LibRover_NodeSetHeap

local Lib

local heap -- Store "self" here to avoid array func calls. Nasty, evil, bad.
local indices

local debug_count_compares=0


--[[ sinus 2013-05-03:
	Tried to optimize this, assuming that our way of using the heap (one removal, dozens of additions/updates)
	would actually make it faster to just sort it on every removal - effectively de-heapifying the heap. Proven ineffective.
--]]

local function CompareNodes(i,j)
	debug_count_compares = debug_count_compares + 1
	--if heap[j].score and heap[i].score then --TODO some nodes don't have .cost.. halp  me Sinus!  -- they HAVE to. ~sinus
	return heap[i].score > heap[j].score
	--end
end

--[[
local function CompareNodesSort(node1,node2)
	debug_count_compares = debug_count_compares + 1
	return node1.score > node2.score
end
--]]

local floor=math.floor
local function HeapSwimMinUp(num)
	local half = floor(num/2)
	local it=heap[num]
	while (num > 1 and CompareNodes(half,num)) do
		heap[half],heap[num]=heap[num],heap[half]
		indices[heap[num]]=num
		--if heap[num].warlocksummon then print(heap[num].num.." "..tostring(heap[num]).." now at "..num) end
		num = half 
		half = floor(num/2)
	end
	indices[it]=num
end

local function SinkNodeDown()
	local k = 1 --first value in array
	local size = heap.count
	local it=heap[k]
	if not it then return end
	while( (k*2) <= size) do
		local j = k*2; -- J is always a left leaf since it is even.
		if (j<size and CompareNodes(j,j+1)) then j = j+1 end  -- j<size so there is a right leaf. compare left and right leafs. Smaller value is now j
		if not CompareNodes(k,j) then break end -- Compare node to the smaller of it's children. If it is smaller than swap them and repeat
		heap[k],heap[j] = heap[j],heap[k]  -- Swap!
		indices[heap[k]]=k
		--if heap[k].warlocksummon then print(heap[k].num.." "..tostring(heap[k]).." now at "..k) end
		k=j
	end
	indices[it]=k
end



function NodeSet:New()
	local new={}
	setmetatable(new,{__index=self})
	new.indices={}
	new.count=0
	return new
end

function NodeSet:Add(node)
	if not node.score then node.score=-9999999 end
	--if not node.status then node.status="open" else error("Can't CHANGE a node's status from "..node.status.." to 'open'! #"..node.num.." "..tostring(node)) end
	
	--PushNodeOntoHeap inline:
	
	self.count=self.count+1
	self[self.count] = node

	heap=self
	indices=self.indices
	HeapSwimMinUp(self.count)
end

function NodeSet:RemoveCheapest(keep)

	-- find cheapest open node
	if Lib.force_next and self[Lib.force_next] then return Lib.force_next end -- bully.
	
	local ret = self[1]
	if keep or not ret then return ret end

	heap=self
	indices=self.indices

	indices[heap[1]]=nil
	heap[1],heap[self.count] = heap[self.count],nil  -- Swap! -- put the max cost at the top and sink it
	self.count=self.count-1

	debug_count_compares=Lib.debug_count_compares
	SinkNodeDown()
	Lib.debug_count_compares=debug_count_compares

	return ret
end

function NodeSet:BubbleUp(node)
	local ind=self.indices[node]
	if not ind then
		ZGV:Debug("WHAT? No index in heap for node ".. node.num .." = " ..tostring(node) .. "? Calculations might be crazy.")
		return
		--[[
		for i=1,self.count do if self[i]==node then ind=i end end
		if ind then
			error("It was at "..ind.." of "..self.count)
		else
			error("It wasn't there! WTF!")
		end
		--]]
	end
	heap=self
	indices=self.indices
	 debug_count_compares=Lib.debug_count_compares
	HeapSwimMinUp(indices[node])
	 Lib.debug_count_compares=debug_count_compares
end

function NodeSet:Clear()
	wipe(self)
	self.indices={}
	self.count=0
	ZGV:Debug("&LibRover NodeSetHeap clear")
end

function NodeSet:Length()
	return self.count
end

function NodeSet:InterfaceWithLib(lib)
	Lib=lib
end
