local ZGV = ZygorGuidesViewer	if not ZGV then return end
local Pointer = ZGV.Pointer	if not Pointer then return end

local arrowskindir,arrowskinlc,arrowskinname = "Midnight","midnight","Midnight"

local arrow = ZGV.Pointer:AddArrowSkin(arrowskinlc,arrowskinname)

local arrowframeproto = {}

arrow.features={colordist=false,smooth=true}

function arrow:CreateFrame()
	if not self.frame then
		self.frame = CreateFrame("BUTTON","ZygorGuidesViewerPointerArrow_".. arrowskindir,ZGV.Pointer.ArrowFrameCtrl,"ZygorGuidesViewerFrame_Arrow_template_".. arrowskinlc)
		self.frame.style = self.id

		for f,fu in pairs(arrowframeproto) do self.frame[f] = fu end

		self.frame:OnLoad()
	end
	return self.frame
end

------------ color
local ar,ag,ab = 0.60,0.60,0.60
local br,bg,bb = 0.95,0.95,0.95
local cr,cg,cb = 1.00,1.00,1.00

local msin,mcos,mabs,mfloor=math.sin,math.cos,math.abs,math.floor

function arrowframeproto:OnLoad()
	local skindir = ZGV.DIR.."\\Arrows\\".. arrowskindir
	self.arrow:SetTexture(true)
	self.arrow:SetTexture(skindir.."\\arrow",false)
	self.back:SetAlpha(0.8)
	self:Hide()
	self.here:SetTexture(skindir.."\\arrow-here",false)
	self.back:SetTexture(skindir.."\\arrow-back",false)
	self.precise:SetTexture(skindir.."\\arrow-precise",false)
	self.title:SetFont(ZGV.Font,9)
end

function arrowframeproto:OnUpdate (elapsed)
end

function arrowframeproto:ShowArrived()
	self.arrow:Hide()
	self.precise:Hide()

	self.here:Show()
	self.here.zoomy:Play()
	self.back:SetTexCoord(0,0,0,1,1,0,1,1)

	self.arrow.upstairs:Stop()
	self.arrow.downstairs:Stop()
end

local precspan = 0.2

function arrowframeproto:ShowTraveling (elapsed,angle,dist)
	self.here:Hide()
	self.here.zoomy:Stop()

	self.arrow:Show()
	self.precise:Show()
	self.title:Show()

	self.arrow.upstairs:Stop()
	self.arrow.downstairs:Stop()

	local profile=ZGV.db.profile

	local perc,tier

	local spangood,spanperf=0.10,0.02
	--if dist<500 then local mul=1-(dist/500)  mul=mul*mul*mul*mul*mul  spangood,spanperf = spangood+spangood*mul,spanperf+spanperf*mul  end

	Pointer.initialdist = Pointer.initialdist or dist

	perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
	perc,tier = Pointer.CalculateDirectionTiers(perc,1-spangood,1-spangood+0.02,1-spanperf,1)

	local r,g,b = ZGV.gradient3(perc, ar,ag,ab, br,bg,bb, cr,cg,cb, 1)
	self.arrow:SetVertexColor(r,g,b)


	------------ rotation of elements

	self.arrow.turn.anim:SetRadians(angle)
	self.arrow.turn:Play()
	self.arrow.angle = angle

	if perc>0.5 and self.precise.turn then
		-- precision dot
		local precangle = angle
		if precangle>3.141592 then precangle=precangle-6.283185 end
		precangle = precangle * 8  -- precision!
		while precangle>6.283185 do precangle=precangle-6.283185 end
		while precangle<0 do precangle=precangle+6.283185 end

		self.precise:SetAlpha((perc-0.5)*4)
		self.precise.turn.anim:SetRadians(precangle)
		self.precise.turn:Play()
	else
		self.precise:SetAlpha(0)
	end

	--[[
	local msin,mcos,mabs=msin,mcos,mabs

	local sin,cos = msin(angle + 2.356194)*0.85, mcos(angle + 2.356194)*0.85
	self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
	--]]

end

function arrowframeproto:ShowStairs(up)
	self.precise:Hide()
	self.here:Hide()
	self.arrow:Show()
	if up then
		self.arrow.downstairs:Stop()
		self.arrow.upstairs:Play()
	else
		self.arrow.upstairs:Stop()
		self.arrow.downstairs:Play()
	end
end

function arrowframeproto:ShowWaiting(phase)
	self.precise:Show()
	self.here:Hide()
	self.arrow:Hide()
	self.precise:SetAlpha(1)
	self.precise.turn.anim:SetRadians(phase*6.28)
	self.precise.turn:Play()
end

function arrowframeproto:ShowNothing()
	self.arrow:Hide()
	self.precise:Hide()
	self.here:Hide()
end

function arrowframeproto:ShowText (title,dist,eta,status)
	self.stairs=false

	--Pointer.ArrowFrame_Proto_ShowText(self,title,dist,eta)
	local disttxt = Pointer.ArrowFrame_Proto_GetDistTxt(self,dist)
	local etatxt = Pointer.ArrowFrame_Proto_GetETATxt(self,eta)

	local distcolor
	if type(dist)=="number" then
		local perc=max(0,1-(dist/min(max(100,Pointer.initialdist or 0),500)))
		local r,g,b = ZGV.gradient3(perc, 1.0,0.5,0.4, 1.0,0.9,0.5, 0.7,1.0,0.6, 0.7)
		distcolor = ("|cff%02x%02x%02x"):format(r*255,g*255,b*255)
	else
		distcolor = "|cffffff00"
	end

	self.title:SetText(
		(title and "|cffffffff"..title.."|r\n" or "") ..
		(disttxt and distcolor..disttxt.."|r" or "") ..  (etatxt or "") ..
		(status and "|n"..status or ""))
end

function arrowframeproto:ShowWarning()
	UIFrameFlash(self.arrow,0.2,0.2,0.2, true,0,0)
end

function arrowframeproto:OnMouseWheel(delta)
	if IsControlKeyDown() then
		ZGV.db.profile.arrowscale = ZGV.db.profile.arrowscale + delta * 0.2
		if ZGV.db.profile.arrowscale<0.4 then ZGV.db.profile.arrowscale=0.4 end
		self:SetScale(ZGV.db.profile.arrowscale)
	end
end
