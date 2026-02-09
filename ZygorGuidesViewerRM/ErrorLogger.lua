local ZGV = ZygorGuidesViewer
if not ZGV then return end
do return end

local L = ZGV.L

local strfind = string.find

local errorbase={}
local errorlimit = 5

function ZGV:ErrorLogger_GetErrors()
	local errors={}
	if BugGrabber then
		local db = BugGrabber:GetDB()
		for bi,bug in ipairs(db) do
			local str = bug.message
			if type(str)=="table" then str=table.concat(str) end
			--[[
			if strfind(str,"Zygor") then
				errors[#errors+1]=str
			end
			--]]
			errors[#errors+1] = {message=str,time=bug.time}
		end
	else
		-- no buggrabber, damn! gotta do it by hand.
		errors = errorbase
	end
	return errors
end

StaticPopupDialogs["ZYGORGUIDESVIEWER_ERROR"] = {
	text = L['static_caption']..L['static_error'],
	button1 = YES,
	button2 = IGNORE,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
	OnAccept = function(self) ZGV:BugReport() end,
}

local buggrabber = GetAddOnMetadata("BugGrabber", "Version")
local looping
if not buggrabber then
	local origerrorhandler
	local function zygerrorhandler(err)
		-- kudos to the creators of BugGrabber.
		err = tostring(err)

		-- We're very very selfish (and it doesn't mean we vendor seafood).
		-- or maybe not... Errors may appear elsewhere...
		--if strfind(err,"Zygor") then 
		if true then

			-- Get the full backtrace
			local real = err:find("^.-([^\\]+\\)([^\\]-)(:%d+):(.*)$")
			          or err:find("^%[string \".-([^\\]+\\)([^\\]-)\"%](:%d+):(.*)$")
			          or err:find("^%[string (\".-\")%](:%d+):(.*)$")
			          or err:find("^%[C%]:(.*)$")

			err = err .. "\n" .. debugstack(real and 4 or 3)

			-- Normalize the full paths into last directory component and filename.
			local errmsg = ""
			looping = false

			for trace in err:gmatch("(.-)\n") do
				local match, found, path, file, line, msg, _
				found = false

				-- First detect an endless loop so as to abort it below
				if trace:find("ErrorLogger") then
					looping = true
					break
				end

				-- "path\to\file-2.0.lua:linenum:message" -- library
				if not found then
					match, _, path, file, line, msg = trace:find("^.-([^\\]+\\)([^\\]-%-%d+%.%d+%.lua)(:%d+):(.*)$")
					local addon = trace:match("^.-[A%.][d%.][d%.][Oo]ns\\([^\\]-)\\")
					if match then
						if LibStub then
							local major = file:gsub("%.lua$", "")
							local lib, minor = LibStub(major, true)
							path = major .. "-" .. (minor or "?")
							if addon then
								file = " (" .. addon .. ")"
							else
								file = ""
							end
						end
						found = true
					end
				end
				
				-- "Interface\AddOns\path\to\file.lua:linenum:message"
				if not found then
					match, _, path, file, line, msg = trace:find("^.-[A%.][d%.][d%.][Oo]ns\\(.*)([^\\]-)(:%d+):(.*)$")
					if match then
						found = true
						local addon = path:gsub("\\.*$", "")
						local addonObject = _G[addon]
						if not addonObject then
							addonObject = _G[addon:match("^[^_]+_(.*)$")]
						end
						local version, revision = nil, nil
						if LibStub and LibStub(addon, true) then
							local _, r = LibStub(addon, true)
							version = r
						end
						if type(addonObject) == "table" then
							local v, r = scan(addonObject)
							if v then version = v end
							if r then revision = r end
						end
						local objectName = addon:upper()
						if not version then version = _G[objectName .. "_VERSION"] end
						if not revision then revision = _G[objectName .. "_REVISION"] or _G[objectName .. "_REV"] end
						if not version then version = GetAddOnMetadata(addon, "Version") end
						if not version and revision then version = revision
						elseif type(version) == "string" and revision and not version:find(revision) then
							version = version .. "." .. revision
						end
						if not version then version = GetAddOnMetadata(addon, "X-Curse-Packaged-Version") end
						if version then
							path = addon .. "-" .. version .. path:gsub("^[^\\]*", "")
						end
					end
				end
				
				-- "path\to\file.lua:linenum:message"
				if not found then
					match, _, path, file, line, msg = trace:find("^.-([^\\]+\\)([^\\])(:%d+):(.*)$")
					if match then
						found = true
					end
				end

				-- "[string \"path\\to\\file.lua:<foo>\":linenum:message"
				if not found then
					match, _, path, file, line, msg = trace:find("^%[string \".-([^\\]+\\)([^\\]-)\"%](:%d+):(.*)$")
					if match then
						found = true
					end
				end

				-- "[string \"FOO\":linenum:message"
				if not found then
					match, _, file, line, msg = trace:find("^%[string (\".-\")%](:%d+):(.*)$")
					if match then
						found = true
						path = "<string>:"
					end
				end

				-- "[C]:message"
				if not found then
					match, _, msg = trace:find("^%[C%]:(.*)$")
					if match then
						found = true
						path = "<in C code>"
						file = ""
						line = ""
					end
				end

				--[[
				-- ADDON_ACTION_BLOCKED
				if not found then
					match, _, file, msg = trace:find(ADDON_CALL_PROTECTED_MATCH)
					if match then
						found = true
						path = "<event>"
						file = "ADDON_ACTION_BLOCKED"
						line = ""
						errorType = "event"
					end
				end
				--]]

				-- Anything else
				if not found then
					path = trace--"<unknown>"
					file = ""
					line = ""
					msg = line
				end

				-- Add it to the formatted error
				errmsg = errmsg .. path .. file .. line .. ":" .. msg .. "\n"
			end

			-- we have a fully formatted error now.

			local found
			for i=1,#errorbase do  if errorbase[i].message==errmsg then  found=errorbase[i]  break  end  end
			if found then
				found.count=found.count+1
				found.time=date("%Y/%m/%d %H:%M:%S")
			else
				-- file the error away
				errorbase[#errorbase+1] = {message=errmsg,count=1,time=date("%Y/%m/%d %H:%M:%S")}
				if #errorbase>errorlimit then  table.remove(errorbase,1)  end

				-- if it's our bug, announce it.
				if strfind(err,"Zygor") then 
					StaticPopup_Show("ZYGORGUIDESVIEWER_ERROR")
				end
			end

			-- err=nil
			-- always fall through. We're just a logger.

		end -- Zygor

		if err and origerrorhandler then  origerrorhandler(err)  end
	end

	-- install our own grabber, rickety as it may be.

	-- save original error handler
	origerrorhandler=geterrorhandler()
	-- replace error handler
	seterrorhandler(zygerrorhandler)

	-- save original handler setter
	local orig_seterrorhandler=seterrorhandler
	-- replace handler setter with one that keeps our handler, just changes the original pointer.
	seterrorhandler=function(newhandler)
		origerrorhandler = newhandler
	end
end