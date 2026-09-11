-- Regression coverage for the Auction House launcher anchor and visibility setting.
-- Usage: lua tools/gold/test_auction_button.lua <addon directory>
local addon = assert(arg[1], "pass the addon directory")

local function read(path)
	local file = assert(io.open(path, "rb"))
	local source = file:read("*a")
	file:close()
	return source
end

local view = read(addon.."/GoldUI/Auctiontools-View.lua")
local options = read(addon.."/Options.lua")

local buttonStart = assert(view:find("function Appraiser:MakeOptionsButton()", 1, true))
local buttonEnd = assert(view:find("function Appraiser:MakeInventoryTable()", buttonStart, true))
local button = view:sub(buttonStart, buttonEnd - 1)

assert(view:find("function Appraiser:UpdateAuctionButtonVisibility()", 1, true), "launcher must expose immediate visibility refresh")
assert(view:find("auction_button_show == false", 1, true), "launcher visibility must honor the profile setting")
assert(button:find('SetPoint("CENTER",AuctionFrame,"BOTTOMLEFT",dx,dy)', 1, true), "startup and saved positions must use the same BOTTOMLEFT anchor")
assert(button:find("AuctionFrame:GetWidth()+oldx", 1, true), "legacy top-right offsets must be migrated")
assert(button:find("if self.buttonDragging then", 1, true), "cursor tracking must require an explicit launcher drag")
assert(button:find("buttonDragging=true", 1, true) and button:find("buttonDragging=false", 1, true), "launcher drag state must be started and stopped explicitly")
assert(not button:find(":IsDragging()", 1, true), "generic frame drag detection can conflict with AuctionFrame movers")
assert(not button:find(":StartMoving()", 1, true), "launcher drag must not start a second frame-move operation")

assert(options:find("auction_button_show = true", 1, true), "Auction House launcher must remain visible by default")
assert(options:find('name = "Show Zygor Auction House button"', 1, true), "launcher visibility must be exposed in options")
assert(options:find("appraiser:UpdateAuctionButtonVisibility()", 1, true), "visibility changes must apply without reloading")

print("Auction House launcher regression passed")
