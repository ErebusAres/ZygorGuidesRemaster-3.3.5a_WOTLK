local Log = {}

ZTA.Log = Log

Log.entries = {}
Log.size = 100
Log.loud = false

function Log:SetSize(size)
	self.size = size
	self:Trim()
end

function Log:Trim()
	local len = #self.entries
	if len>self.size then
		for i=1,len-self.size,1 do
			table.remove(self.entries,1)
		end
	end
end

function Log:Add(s)
	table.insert(self.entries,date("%H:%M:%S").."> "..s)
	if #self.entries>self.size then
		table.remove(self.entries,1)
	end
	if self.loud then
		ChatFrame1:AddMessage("|cff8888ff"..date("%H:%M:%S")..">|r |cffccccff"..s.."|r")
	end
end

function Log:Print(n)
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		ChatFrame1:AddMessage(self.entries[i])
	end
end

function Log:Dump(n)
	local s = ""
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		s = s .. self.entries[i] .. "\n"
	end
	return s
end