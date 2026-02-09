local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FR

local CHAIN = ZGV.ChainCall

ZGV.MagicKey = {}
local MK=ZGV.MagicKey

function MK:CreateFrame()
	if FR then return FR end

	FR = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_MagicKeyHint", UIParent))
	 :SetSize(1,1)
	 :SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",-100,100)
	 :Show()
	 .__END
	self.FR = FR

	FR.Label = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("RIGHT")
	 :SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetHeight(30)
	 :SetFont(STANDARD_TEXT_FONT,16)
	 :SetText("")
	 :Show()
	 .__END

	FR.Button = CHAIN(CreateFrame("Button", "ZygorGuidesViewer_MagicKeyHint_Button", FR))
	 :SetScript("OnClick",ZGV.MagicButton_OnClick)
	 :EnableMouse()
	 :Enable()
	 :Show()
	 .__END

	return FR
end

function MK:SetHint(s)
	FR.Label:SetText(s)
end