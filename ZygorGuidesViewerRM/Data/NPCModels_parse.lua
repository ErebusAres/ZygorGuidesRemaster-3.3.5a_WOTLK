local name,ZGV=...

local data=ZGV._NPCModels
assert(data,"NPCModels missing")
ZGV._NPCModels=nil
ZGV.NPCModels={}  setmetatable(ZygorGuidesViewer.NPCModels,{__index=function(t,k) if type(k)~='number' then return end local model=data:match('\n'..k..'=(%d+)') return tonumber(model) end})

ZGV.ModelsToNPC={} setmetatable(ZGV.ModelsToNPC, {
__index=function(t,id) 
	if type(id)~='number' then return end

	local npcid=data:match('\n(%d+)='..id.."\n") 
	return tonumber(npcid)
end})

function ZGV.ModelsToNPCCounter(id,count)
	
	local start,_,endd=0,0,0;

	while(count >= 0 ) do
		start,endd=data:find("%d+="..id.."\n",endd) --start looking at the end of the last match.
		if not endd then return end --none found now.
		count = count-1
	end
		
	local npcid=data:match("(%d+)",start)

	return tonumber(npcid)
end