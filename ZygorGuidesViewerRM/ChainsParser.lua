do return end  -- no chains.
local ZGV=ZGV

local tinsert,tremove=tinsert,tremove

local function split(str,sep)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

local function _ParseCond(text)
	if tonumber(text) then
		return tonumber(text)
	end

	if text.sub(1,5)=="func " then
		-- CODE! God help us.
		text=text.sub(6)
		local func,err = loadstring(text)
		return func
	end

	text=string.lower(text:gsub("%s* and %s*"," and "):gsub("%s* or %s*"," or "))
	local conds = split(text," or ")
	if #conds>1 then
		for c,co in ipairs(conds) do conds[c]=tonumber(conds[c]) end
		tinsert(conds,1,"OR")
		return conds
	else
		conds = split(text," and ")
		if #conds>1 then
			for c,co in ipairs(conds) do conds[c]=tonumber(conds[c]) end
			tinsert(conds,1,"AND")
			return conds
		end
	end
end

ZGV.ChainsRaw = ""
function ZGV:RegisterQuestChains(text)
	self.ChainsRaw = self.ChainsRaw .. text .."\n"
	--print("registered "..#text.." bytes of chains")
end

local yield=coroutine.yield

ZGV.Chains={}
ZGV.ChainExclusives={}
function ZGV:ParseQuestChains_yielding(text,Chains)
	if not text then  text = self.ChainsRaw  self.ChainsRaw=nil  end
	if not Chains then Chains = self.Chains end

	if not text then return end

	text=text:gsub("%s*//.-\n","\n"):gsub("\r",""):gsub("%s*\n%s*\n","\n"):gsub("%s*=%s*","="):gsub("%s*,%s*",",")

	local linecount = 0

	local maxlines=1
	local index=1
	while index do
		index=strfind(text,"\n",index+1)
		maxlines=maxlines+1
	end

	index = 1
	ZGV:Debug("Starting parsing quest chains; "..maxlines.." lines")

	while (index<#text) do
		local st,en,line=strfind(text,"%s*(.-)%s*\n",index)
		--if debug then print(line) end
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>1000000 then
			return nil,linecount,"More than 1000000 lines!?"
		end

		while (1) do

			--line = line:gsub("%s*//.*$","")	-- cut out comments

			-- and here we go.
			local fac,rest=line:match("^([AH]) (.+)")
			if fac then
				if ((fac=="A") and (UnitFactionGroup("player")=="Horde"))
				or ((fac=="H") and (UnitFactionGroup("player")=="Alliance")) then
					break
				end
				line=rest
			end

			local id,data = line:match("^(%d+)=(.*)")
			if id then
				-- that's the 1234=1235 case
				local cond = _ParseCond(data)
				Chains[tonumber(id)]=cond

				--tinsert(ZGV.Chains3,id)
				--tinsert(ZGV.Chains3,cond)
			elseif line:match("^EITHER ") then
				local data = line:match("^EITHER ([0-9%,]+)")
				local chunks=split(data,",")
				if #chunks>1 then
					for i,chunk in ipairs(chunks) do chunks[i]=tonumber(chunks[i]) end
				end
				tinsert(ZGV.ChainExclusives,chunks)
			else
				local chunks=split(line,",")
				if #chunks>1 then
					-- woohoo, mass-chaining!
					for i,chunk in ipairs(chunks) do chunks[i]=_ParseCond(chunk) end

					--tinsert(ZGV.Chains3,line)
					--tinsert(ZGV.Chains3,chunks)

					for i,cond in ipairs(chunks) do
						if i==#chunks then break end
						local post=chunks[i+1]
						if type(cond)=="number" then cond={cond} end
						if type(post)=="number" then post={post} end
						for j,postq in ipairs(post) do
							if type(postq)=="number" then
								for k,preq in ipairs(cond) do
									if type(preq)=="number" then
										-- adding preq as prerequisite for postq
										if not Chains[postq] then  -- new data
											Chains[postq]=preq
										elseif type(Chains[postq])~="table" then  -- single prereq
											Chains[postq]={"AND",Chains[postq]}
											tinsert(Chains[postq],preq)
											if cond[1]=="AND" or cond[1]=="OR" then Chains[postq][1]=cond[1] end
										else -- existing prereqs
											tinsert(Chains[postq],preq)
											if cond[1]=="AND" or cond[1]=="OR" then Chains[postq][1]=cond[1] end
										end
									end
								end
							end
						end

					end
				else
					ZGV:Print("Parsing chains failed at line "..linecount..": "..line)
				end
			end

			self.loadprogress = linecount/maxlines
		
			break
		end

		yield()
	end

	ZGV:Debug("Pruning duplicates in quest chains")
	-- now prune it; no dupes allowed!
	for q,req in pairs(Chains) do
		if type(req)=="table" then
			--self:Debug("checking table: "..table.concat(req,",")) yield()
			local i=2
			while i<#req do
				local j=i+1
				while j<=#req do
					if req[i]==req[j] then
						--self:Debug("pruned dupe "..req[i].." in "..q) yield()
						tremove(req,j)
					else
						j=j+1
					end
					assert(j<100,"Overflow 'j' in pruning quest chain dupes")
				end
				i=i+1
				assert(j<100,"Overflow 'i' in pruning quest chain dupes")
			end

			-- down to a number? strip the table.
			if #req==2 then Chains[q]=req[2] end

			--if type(Chains[q])=="table" then self:Debug("result table: "..table.concat(req,",")) else self:Debug("result number: "..Chains[q]) end yield()
		end
	end

	ZGV:Debug("Parsed quest chains.")
end

function ZGV:CreateReverseQuestChains_yielding()
	-- reverse for 'who needs me' lookups
	self.RevChains = {}
	for post,pre in pairs(self.Chains) do
		if type(pre)=="number" then
			if not self.RevChains[pre] then self.RevChains[pre] = {post} else tinsert(self.RevChains[pre],post) end
		elseif type(pre)=="table" then
			for q,pr in ipairs(pre) do
				if type(pr)=="number" then
					if not self.RevChains[pr] then self.RevChains[pr] = {post} else tinsert(self.RevChains[pr],post) end
				end
			end
		end
		yield()
	end
end


ZGV:RegisterQuestChains([[
	910005  =  910004
	910004=910003 AND 910013
	910003=910002
	910002=910001
	910013=910001 OR 910000

	900001,900002,900003,900004,900005  //comment
	900100,900111 OR 900112,900121 OR 900122 OR 900123,900131 AND 900132,900140,900150

	900201,900202
	900202,900203,900204
	900202,900211,900212
	900204 and 900212,900221,900222

	// blank

	901001 or 901002,901003 or 901004
]])


-- ([0-9]+)`([0-9]+)",\n  to  \1",\n[\2]=\1,\n
