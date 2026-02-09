local ZGV = ZygorGuidesViewer
if not ZGV then return end

ZGV.Skins = {}

-- Skeleton class for the skins to use
-- TODO this metatable magic is probably undeeded, we can add methods directly
local Skin={}
local Style={}

ZGV.SkinProto = Skin
ZGV.SkinProto_mt = { __index=Skin }

ZGV.StyleProto = Style
ZGV.StyleProto_mt = { __index=Style }


function Skin:New(data)
	setmetatable(data,ZGV.SkinProto_mt)
	return data
end

function Style:New(data)
	setmetatable(data,ZGV.StyleProto_mt)
	return data
end

local function Skin_AddStyle(skin,id,name)
	if not id then id="style" end
	local style={id=id or "style",name=name or "default",skin=skin}
	Style:New(style)
	skin.styles[id]=style
	return style
end

-- Why do we have it so complex? TODO merge into AddSkin if nobody objects
local function _new_skin(id,name)
	local skin = {id=id or "skin", name=name or "unnamed skin",styles={}, AddStyle=Skin_AddStyle, defaultstyle={} }
	Skin:New(skin)
	return skin
end

function ZGV:AddSkin(id,name)
	local skin = _new_skin(id,name)
	self.Skins[id] = skin
	return skin
end

function ZGV:GetSkinPath(skin,style)
	if not skin then skin=self.db.options.skin end
	if not style then style=self.db.options.skinstyle end
	return ZGV.DIR .. "\\Skins\\" .. skin .. "\\" .. style .. "\\"
end

function ZGV:SetSkin(skin,style)
	-- no style? grab default
	if not skin then
		skin = next(self.Skins)
		assert(skin,"No skin to fall back to!")
		return self:SetSkin(skin)
	end
	
	-- Old skin conversion mechanic
	if skin=="midnight" then
		ZGV:Print("Midnight skin is now a style under the default skin, correcting your setup.")
		self.db.profile.skin="default" self.db.profile.skinstyle="stealth"
		return self:SetSkin("default","stealth")
	end
	
	local skindata = self.Skins[skin]
	if not skindata then
		ZGV:Print("Unknown skin '"..skin.."', falling back to default")
		return self:SetSkin()
	end
	-- skin,skindata accounted for
	if not style then
		style = next(skindata.styles)
		if not style then
			ZGV:Print("No styles in skin "..skin..", falling back to default skin")
			return self:SetSkin()
		end
	end
	local styledata=skindata.styles[style]
	if not styledata then
		ZGV:Print("Unknown style "..style.." in skin "..skin..", falling back to default style")
		return self:SetSkin(skin)
	end
	-- style,styledata accounted for. WHEW.
		
	self.db.profile.skin = skin
	self.db.profile.skinstyle = style

	self.CurrentSkin = skindata
	self.CurrentSkinStyle = styledata
	self.SkinDir = self:GetSkinPath(skin,style)

	skindata:CreateFrame()
	if ZGV.CV then
		ZGV.CV:UpdateSkin()
	end
	if ZGV.Loot.GrayFrame then
		ZGV.Loot:UpdateSkin()
	end
end

local setmetatable,unpack,CHAIN=setmetatable,unpack,ZGV.ChainCall

-- Simple shortcut function, tries to find a getter func for the given property and return the default value if it's not found
-- see below for usage
function Style:SkinData(propertyname)
	local function GetProperty(self,propertyname)
		local prop = self[propertyname]
		if type(prop)=="function" then -- if it's a function, call it.
			return prop(self)
		else -- a property then
			return prop
		end
	end
	
	-- First trying the style itself, then skin's defaultstyle object
	local r=self[propertyname] or self.skin.defaultstyle[propertyname]
	if r then
		if type(r)=="function" then -- if it's a function, call it.
			return r(self)
		else -- a property then
			return r
		end
	else
		--error("Unknown property requested: "..propertyname)
	end
end