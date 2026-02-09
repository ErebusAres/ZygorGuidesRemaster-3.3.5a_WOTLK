local ZGV = ZygorGuidesViewer	if not ZGV then return end
local Pointer = ZGV.Pointer	if not Pointer then return end

local arrowskindir,arrowskinlc,arrowskinname = "Cloqwerk","cloqwerk","Cloqwerk"

local arrow = ZGV.Pointer:AddArrowSkin(arrowskinlc,arrowskinname)

local arrowframeproto = {}

arrow.features={colordist=true,smooth=true}

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
local ar,ag,ab = 0.8,0.0,0.0
local br,bg,bb = 0.7,0.6,0.0
local cr,cg,cb = 0.0,1.0,0.3

local msin,mcos,mabs=math.sin,math.cos,math.abs

function arrowframeproto:OnLoad()
	self.arrow:SetTexture(true)
	self.arrow:SetTexture(ZGV.DIR.."\\Arrows\\"..arrowskindir.."\\arrow",false)
	self:Hide()
	self.here:SetTexture(ZGV.DIR.."\\Arrows\\"..arrowskindir.."\\arrow-here",false)
	self.back:SetTexture(ZGV.DIR.."\\Arrows\\"..arrowskindir.."\\arrow-back",false)
	self.gem:SetTexture(ZGV.DIR.."\\Arrows\\"..arrowskindir.."\\arrow-gem",false)
	self.gemhl:SetTexture(ZGV.DIR.."\\Arrows\\"..arrowskindir.."\\arrow-gemhl",false)
	self.title:SetFont(ZGV.Font,9)
end

function arrowframeproto:OnUpdate (elapsed)
end

function arrowframeproto:ShowArrived()
	self.arrow:Hide()
	self.gem:Hide()
	self.gemhl:Hide()

	self.here:Show()
	self.here.zoomy:Play()
	--self.back.turny:Play()
	self.back:SetTexCoord(0,0,0,1,1,0,1,1)
end

function arrowframeproto:ShowTraveling (elapsed,angle,dist)
	self.here:Hide()
	self.back.turny:Stop()
	self.here.zoomy:Stop()

	self.arrow:Show()
	self.gem:Show()
	self.gemhl:Show()
	self.title:Show()

	local profile=ZGV.db.profile

	local perc,tier

	Pointer.initialdist = Pointer.initialdist or dist

	if profile.arrowcolordist then
		perc=max(0,1-(dist/min(max(100,Pointer.initialdist or 0),500)))
	else
		perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
		perc,tier = Pointer.CalculateDirectionTiers(perc,0.0,0.75,0.95,1.0)
	end
	local r,g,b = ZGV.gradient3(perc, ar,ag,ab, br,bg,bb, cr,cg,cb, 0.8)
	self.gem:SetVertexColor(r,g,b)


	------------ rotation of elements

	local msin,mcos,mabs=msin,mcos,mabs

	local sin,cos = msin(angle + 2.356194)*0.85, mcos(angle + 2.356194)*0.85
	self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
	self.gem:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
	self.gemhl:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)

	------------- background

	local wheelangle = angle*16
	sin,cos = msin(wheelangle + 2.356194)*0.71, mcos(wheelangle + 2.356194)*0.71
	self.back:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
end

function arrowframeproto:ShowText (title,dist,eta,status)
	--Pointer.ArrowFrame_Proto_ShowText(self,title,dist,eta)
	local disttxt = Pointer.ArrowFrame_Proto_GetDistTxt(self,dist)
	local etatxt = Pointer.ArrowFrame_Proto_GetETATxt(self,eta)

	self.title:SetText(
		(title and "|cffffffff"..title.."|r\n" or "") ..
		(disttxt and "|cffffcc00"..disttxt.."|r" or "") ..  (etatxt and "  |cffff7700"..etatxt.."|r" or "")  ..
		(status and "|n"..status or ""))
end

function arrowframeproto:ShowWaiting(phase)
	self.here:Hide()
	self.arrow:Hide()
	self.gem:Hide()
	self.gemhl:Hide()

	self.back:Show()
	self.back:SetAlpha(1)
	if self.back.turn then
		self.back.turn.anim:SetRadians(phase*6.28)
		self.back.turn:Play()
	end
end

function arrowframeproto:ShowNothing()
	self.arrow:Hide()
	self.gem:Hide()
	self.gemhl:Hide()
	self.here:Hide()
	self.back:Hide()
end

function arrowframeproto:ShowWarning()
	UIFrameFlash(self.gem,0.2,0.2,0.2, true,0,0)
end

function arrowframeproto:OnMouseWheel(delta)
	if IsControlKeyDown() then
		ZGV.db.profile.arrowscale = ZGV.db.profile.arrowscale + delta * 0.2
		if ZGV.db.profile.arrowscale<0.4 then ZGV.db.profile.arrowscale=0.4 end
		self:SetScale(ZGV.db.profile.arrowscale)
	end
end
