--ooo change
assert (ZygorGuidesViewer,"Zygor Guides Viewer not loaded properly!")

local ZGV=ZygorGuidesViewer
local MapCoords = {}
ZGV.MapCoords = MapCoords

local Astrolabe = DongleStub("Astrolabe-ZGV")

MapCoords.Debug = ZGV.Debug

local throttle=0

local WorldmapCoordFrame_OnUpdate

function MapCoords:HandleWorldmapCoords()
	if ZGV.db.profile.mapcoords then
		local f
		if not self.worldmapcoordframe then
			f = CreateFrame("FRAME",nil,WorldMapFrame)
			f.playercoord = f:CreateFontString("OVERLAY",nil,"GameFontHighlightSmall")
			f.cursorcoord = f:CreateFontString("OVERLAY",nil,"GameFontHighlightSmall")
			self.worldmapcoordframe = f
			f:SetScript("OnUpdate", WorldmapCoordFrame_OnUpdate)
		else
			f = self.worldmapcoordframe
		end
		
		f.cursorcoord:SetPoint("TOPLEFT", WorldMapPositioningGuide, "BOTTOM", 100, -11)
		f.playercoord:SetPoint("TOPLEFT", WorldMapPositioningGuide, "BOTTOM", -100, -11)

		-- Show the frame
		f:Show()
	elseif self.worldmapcoordframe then
		self.worldmapcoordframe:Hide()
	end
end


-- Code courtesy ckknight
local WorldMapDetailFrame = WorldMapDetailFrame
local GetCursorPosition = GetCursorPosition
local function GetCurrentCursorPosition()
	local wmdf=WorldMapDetailFrame
	local cx,cy = GetCursorPosition()
	local l,t,w,h = wmdf:GetLeft(), wmdf:GetTop(), wmdf:GetWidth(), wmdf:GetHeight()
	local scale = wmdf:GetEffectiveScale()
	local cy = (t - cy/scale) / h
	if cy<0 or cy>1 then return end
	local cx = (cx/scale - l) / w
	if cx<0 or cx>1 then return end
	-- finally
	return cx, cy
end
--[[
local coord_fmt = "%%.%df, %%.%df"
function RoundCoords(x,y,prec)
	local fmt = coord_fmt:format(prec, prec)
	return fmt:format(x*100, y*100)
end
--]]

local throttle
local function WorldmapCoordFrame_OnUpdate(self, elapsed)
	throttle=throttle+elapsed ; if throttle<0.05 then return end ; elapsed=throttle ; throttle=0

	if not ZGV.db.profile.mapshowcoords then return end

	local c,z,x,y = Astrolabe:GetCurrentPlayerPosition()

	if not x or not y then
		self.Player:SetText("Player: ---")
	else
		self.Player:SetFormattedText("Player: %s", RoundCoords(x, y, opt.mapcoords.playeraccuracy))
	end

	local cX, cY = GetCurrentCursorPosition()

	if not cX or not cY then
		self.Cursor:SetText("Cursor: ---")
	else
		self.Cursor:SetFormattedText("Cursor: %s", RoundCoords(cX, cY, opt.mapcoords.cursoraccuracy))
	end

end
