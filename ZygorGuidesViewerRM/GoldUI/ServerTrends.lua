local ZGV = ZGV

local ZGVG=ZGV.Gold

ZGVG.ServerTrends={}

local Trends=ZGVG.ServerTrends

Trends.dumps={}
Trends.olddumps={}

local TRENDS_OLD = 4 * 24 --h

tinsert(ZGV.startups,{"Servertrends",function(self)
			ZGV:Debug("&startup Importing server trends (in background)")
			if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
				Trends:GetTrendsFromScan()
			else
				for i,dump in ipairs(Trends.dumps) do
					Trends:DoImport(dump)
				end
			end
			ZGV:Debug("&startup Importing server trends complete.")
	--]]
	--if not ZGV.db.profile.debug then Trends.dumps=nil end
end,after="guides_loaded"})

function Trends:ImportQuick() --DEPRECATED.
	ZGV:ShowDump("","Paste server scan data into the box:\n(DEPRECATED. Will break with full dumps. Use the files, Luke!)")
	local but=ZGV.dumpFrameBasic.OKButton
	but.oldtext = but:GetText()
	but.oldclick = but:GetScript("OnClick")
	but:SetText(ZGV_T("IMPORT"))
	but:SetScript("OnClick",function(self)
		local text = ZGV.dumpFrameBasic.editBox:GetText()
		Trends:DoImport(text,"loud")

		ZGV.dumpFrameBasic:Hide()

		-- restore old functionality
		but:SetText(but.oldtext)
		but:SetScript("OnClick",but.oldclick)
		but.oldtext,but.oldclick = nil,nil
	end)
end

function Trends:ImportServerPrices(header,data)
	if not data then
		tinsert(Trends.dumps,header) -- old style data
	else
		tinsert(Trends.dumps,{header,data})
	end
end

function Trends:DoImport(dumpdata,loud)
	ZGV:Debug("&trends Server Prices import starting...")

	if type(dumpdata)~="table" then
		return Trends:DoOldImport(dumpdata,loud)
	end

	local data = {}

	local inputheader = dumpdata[1]
	local inputdata = dumpdata[2]

	for field,value in pairs(inputheader) do
		data[field]=value
	end

	if not data.columns then
		ZGV:Print(ZGV_T("Server Trends import just failed..? No column definitions"))
	end

	local columns = {}
	for i,name in pairs(data.columns) do
		columns[i]=name
	end

	data.items = {}

	local id --TODO: unused?
	for itemid,itemdata in pairs(inputdata) do
		if id==itemid then break end -- pet cage, if some unprocessed slipped by
		data[itemid] = {}
		local idata=data[itemid]
		for i,value in pairs(itemdata) do
			idata[columns[i]] = value
		end
	end

	if data.items then
		if data.realm=="GLOBAL" then
			ZGV.Gold.servertrends_global = data
		else
			ZGV.Gold.servertrends = data
			local h_old = floor(time() - (data.date or 0))/3600
			local h_color = h_old<TRENDS_OLD and "|cff44ff00" or "|cffff0000"
			ZGV:Print((ZGV_T("Server Trends for %s imported, %s%d hours old.")):format(GetRealmName(), h_color, h_old))
			if h_old<TRENDS_OLD then ZGV:Print(ZGV_T("- Status: up to date.")) else ZGV:Print(ZGV_T("- Status: outdated, please use the Zygor Client to update.")) end
		end
		ZGVG:Update()
	else
		ZGV:Print(ZGV_T("Server Trends import just failed..? No items found..."))
	end
end

function Trends:DoOldImport(text,loud)
	ZGV:Debug("&trends Server Prices text import starting...")

	text = text .. "\n"

	local linecount=0

	local data = {}

	local index=1
	local t=debugprofilestop()
	local timeleft=10
	while (index<#text) do
		local st,en,line=string.find(text,"(.-)\n",index)
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then
			ZGV:Print("More than 100000 lines!?")
			break
		end
		if coroutine.running() and linecount%200==0 then
			if debugprofilestop()-t>timeleft then
				timeleft=coroutine.yield(st/#text*100)
				t=debugprofilestop()
			end
		end

		--[[
		line = line:gsub("^[%s	]+","")
		line = line:gsub("[%s	]+$","")
		line = line:gsub("//.*$","")
		line = line:gsub("||","|")
		--]]

		if not data.items then
			local cmd,params = line:match("([^%s]*)=(.*)")
			if cmd then data[cmd]=params end
			if cmd=="columns" then
				local columnstxt = data.columns
				data.columns={}
				for s in string.gmatch(columnstxt,"[^,]+") do
					local num=tonumber(s)
					tinsert(data.columns,num or s)
				end
			end
			if data.items then data.items={} end  -- end of header, if this is seen.
		else
			-- header is over, yay or nay?
			if data.realm and data.realm~=GetRealmName() and data.realm~="GLOBAL" then
				ZGV:Debug("&trends Wrong realm! This data is for the %s realm, you're on %s!",data.realm,GetRealmName())
				return
			end

			local id
			local n=1
			local itemdata={}
			for i in string.gmatch(line,"%d+") do
				if not id then id=tonumber(i)  else  itemdata[data.columns[n]]=tonumber(i)  n=n+1  end
				if id==82800 --[[pet cage--]] then break end
			end
			if id and next(itemdata) then data.items[id]=itemdata end
		end
	end

	-- realm and faction were checked before, if we're here, then they're fine.

	if type(data)~="table" then
		ZGV:Debug("Server Trends failed to import: no table in:\n".. tostring(data))
	elseif data.items then
		if data.realm=="GLOBAL" then
			ZGV.Gold.servertrends_global = data
		else
			ZGV.Gold.servertrends = data
			local h_old = floor(time() - (data.date or 0))/3600
			local h_color = h_old<TRENDS_OLD and "|cff44ff00" or "|cffff0000"
			ZGV:Print((ZGV_T("Server Trends for %s imported, %s%d hours old.")):format(GetRealmName(), h_color, h_old))
			if h_old<TRENDS_OLD then ZGV:Print(ZGV_T("- Status: up to date.")) else ZGV:Print(ZGV_T("- Status: outdated, please use the Zygor Client to update.")) end
		end
		ZGV.Goldguide:Update()
	else
		ZGV:Print(ZGV_T("Server Trends import just failed..? No items found..."))
	end
end


function Trends:GetTrendsFromScan(silent)
	local orderedPairs = ZGV.OrderedPairs
	local percentile = ZGV.Gold.Scan.percentile

	if not (ZGV.db and ZGV.db.factionrealm and ZGV.db.factionrealm.gold_scan_data) then return end
	ZGV.Gold.servertrends = ZGV.Gold.servertrends or {items={}}
	local trends = ZGV.Gold.servertrends

	local data = ZGV.db.factionrealm.gold_scan_data[1]
	if not data then return end

	table.wipe(trends.items)

	trends.date = ZGV.db.factionrealm.gold_scan_time[1]

	local trenddata = {}
	local trendquant = {}
	local currentcounts = {}
	for dataindex,dataset in ipairs(ZGV.db.factionrealm.gold_scan_data) do
		for itemid,itemdata in pairs(dataset) do
			if type(itemdata)=="table" then
				trenddata[itemid] = trenddata[itemid] or {}
				local total = 0
				for price,count in pairs(itemdata) do
					trenddata[itemid][price] = (trenddata[itemid][price] or 0) + count
					total = total + count
				end
				trendquant[itemid] = trendquant[itemid] or {}
				table.insert(trendquant[itemid],total)

				if dataindex==1 then
					currentcounts[itemid]=total
				end
			end
		end
	end

	for itemid,itemdata in pairs(trenddata) do
		local totalcount=0
		for price,count in pairs(itemdata) do
			totalcount=totalcount+count
		end

		local p_md = percentile(itemdata,0.5,totalcount)
		local p_lo = percentile(itemdata,0.1,totalcount)
		local p_hi = percentile(itemdata,0.9,totalcount)

		local q_hi,q_lo,q_md,points = 0,totalcount,0,0
		for _,count in pairs(trendquant[itemid]) do
			if count<q_lo then q_lo=count end
			if count>q_hi then q_hi=count end
			points = points + 1
		end
		q_md = floor(totalcount/points)

		local current_count = currentcounts[itemid] or 0
		local health = (q_md > 0) and (current_count / q_md) or (current_count > 0 and 1 or 0)

		trends.items[itemid] = {
			health=health,
			sold=current_count,  -- estimate: items currently on AH indicate market activity
			p_md=p_md,
			p_lo=p_lo,
			p_hi=p_hi,
			q_hi=q_hi,
			q_lo=q_lo,
			q_md=q_md,
		}
	end

	if not silent then
		ZGV:Print((ZGV_T("Server Trends for %s created. Trend quality: %s.")):format(GetRealmName(), Trends:GetHealth()))
	end
end

function Trends:GetHealth()
	local h = ZGV.FakeHealth or #ZGV.db.factionrealm.gold_scan_data or 0
	if h < 1 then return ZGV_T("|cffff0000Missing|r") end
	if h < 5 then return ZGV_T("|cffff7700Low|r") end
	if h < 10 then return ZGV_T("|cffffff00Fair|r") end
	return ZGV_T("|cff00ff00Good|r")
end

	