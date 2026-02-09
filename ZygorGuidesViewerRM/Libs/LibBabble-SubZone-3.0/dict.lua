dofile "AreaTable.enGB.dbc.lua"
dofile "AreaTable.deDE.dbc.lua"
dofile "AreaTable.frFR.dbc.lua"
dofile "AreaTable.itIT.dbc.lua"
dofile "AreaTable.ptPT.dbc.lua"
dofile "AreaTable.ruRU.dbc.lua"
dofile "AreaTable.esES.dbc.lua"

local T = {}

local lang = "itIT"

local xxXX = _G[lang]

print ("A = {")
for i=1,6500 do
	if enGB[i] and xxXX[i] then
		en = enGB[i][3]:gsub("\"","\\\"")
		xx = xxXX[i][3]:gsub("\"","\\\"")
		print(("[\"%s\"]=\"%s\","):format(en,xx))
	end
end
print ("}")
