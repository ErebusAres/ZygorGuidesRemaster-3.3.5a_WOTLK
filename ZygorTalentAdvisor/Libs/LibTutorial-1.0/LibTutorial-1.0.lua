--[[
Name: LibTutorial-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library to facilitate inserting user-created 'tutorials' into the WoW tutorial queue.
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibTutorial-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

do
	local LIBTUTORIAL_MAJOR, LIBTUTORIAL_MINOR = "LibTutorial-1.0", 1

	local LibTutorial = LibStub:NewLibrary(LIBTUTORIAL_MAJOR, LIBTUTORIAL_MINOR)
	if LibTutorial then

		LibTutorial.controllers = {}

		-- save the original function, create a wrapper
		LibTutorial.old_FlagTutorial = FlagTutorial
		function FlagTutorial(tag)
			if tonumber(tag) then
				return LibTutorial.old_FlagTutorial(tag)
			else
				return LibTutorial:FlagTutorial(tag)
			end
		end

		--- Adds a new tutorial.
		-- The tutorial is added to the global "tutorial namespace"; its flagging status is handled using the provided "controller" object.
		-- @param tag The tag of the tutorial.
		-- @param title The tutorial's title.
		-- @param text The tutorial's body text.
		-- @param controller The object to hold flag information.
		-- Typically you'll want to create a single empty table for your addon's tutorial flags, and handle it as a saved variable.
		-- For example,
		--   MyAddon.db.char.tutorialflags = {}
		--   LibTutorial:AddTutorial("mytut1","My Tutorial 1","This is my first tutorial",MyAddon.db.char.tutorialflags)

		function LibTutorial:AddTutorial(tag,title,text,controller)
			if tonumber(tag) then warn("Numeric tags are reserved for Blizzard tutorials.") return end
			_G['TUTORIAL'..tag] = text
			_G['TUTORIAL_TITLE'..tag] = title
			if controller then
				LibTutorial.controllers[tag] = controller
			end
		end

		--- Shows the tutorial, and flags it as seen.
		-- @param tag The tag of the tutorial.

		function LibTutorial:ShowTutorial(tag)
			if not _G['TUTORIAL'..tag] then print("Tutorial "..tag.." not registered") return end
			if not LibTutorial:IsTutorialFlagged(tag) then TutorialFrame_NewTutorial(tag) end
			FlagTutorial(tutorial)
		end

		--- Flags a tutorial as seen.
		-- @param tutorial The tag of the tutorial.
		-- Done automatically when displaying a tutorial.
		-- Sets a value in the tutorial's controller, under an index equal to the tag, to true:
		--   LibTutorial:AddTutorial("mytut1","My Tutorial 1","text",controller)
		--   LibTutorial:FlagTutorial("mytut1")
		--   assert(controller.mytut1==true)

		function LibTutorial:FlagTutorial(tag)
			if type(LibTutorial.controllers[tag])=="table" then LibTutorial.controllers[tag][tag]=true end
		end

		--- Checks if a tutorial was flagged as seen.
		-- @param tag The tag of the tutorial.
		-- @return true if the tutorial was seen, false otherwise.

		function LibTutorial:IsTutorialFlagged(tag)
			if LibTutorial.controllers[tag] then
				return LibTutorial.controllers[tag][tag]
			else
				return false
			end
		end

		--- Resets flags for tutorials in a specific controller.
		-- @param controller The controller object used to register the tutorial.

		function LibTutorial:ResetTutorials(controller)
			for tag,val in pairs(controller) do controller[tag]=nil end
		end

		--- Resets tutorial flags in all currently registered controllers.
		-- Note: it won't reset inactive controllers.

		function LibTutorial:ResetAllTutorials()
			for tag,controller in pairs(LibTutorial.controllers) do LibTutorial:ResetTutorials(controller) end
		end

		local function warn(message)
			local _, ret = pcall(error, message, 3)
			geterrorhandler()(ret)
		end

	end
end
