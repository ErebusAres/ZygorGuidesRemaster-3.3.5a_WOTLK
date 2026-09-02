local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Necklace Repair (Repeatable)",{
	author="Advocaite (contributor); ErebusAres (maintenance)",
	type="professions",
	startlevel=77,
	description="Repeat the Necklace Repair hand-in for Timothy Jones in Dalaran. Each run consumes one dropped Damaged Necklace (item 43297) and one Chalcedony. The quest supplies a separate repair item with the same name (item 43299), then rewards a Dalaran Jewelcrafter's Token and Kirin Tor reputation.",
	condition_suggested=function() return level >= 77 and skill("Jewelcrafting") >= 375 end,
	condition_valid=function() return level >= 77 and skill("Jewelcrafting") >= 375 end,
	condition_valid_msg="You must be level 77 or higher and have at least 375 Jewelcrafting to use this guide.",
},[[
step
	label "Necklace_Start"
	collect Damaged Necklace##43297 |only if not haveq(13148)
	|tip This is the dropped starter necklace. You need one for each repeatable hand-in.
	use Damaged Necklace##43297 |only if not haveq(13148) |condition haveq(13148)
	|tip Use the dropped starter necklace to begin the quest. The quest gives you a different Damaged Necklace, item 43299, to repair.
	accept Necklace Repair##13148
step
	collect Chalcedony##36923 |only if itemcount(43298)==0
	|tip Buy one from the Auction House or prospect Northrend ore. One Chalcedony is consumed per repair.
	use Damaged Necklace##43299 |condition itemcount(43298)>0
	|tip Use the quest-provided necklace, item 43299, not the dropped starter necklace. It combines with the Chalcedony to create a Beautiful Chalcedony Necklace.
step
	goto Dalaran,40.7,35.4
	talk Timothy Jones##28701
	turnin Necklace Repair##13148
step
	'You still have another dropped Damaged Necklace. Start the next repair. |condition itemcount(43297)>0 |condition_visible itemcount(43297)>0 |next "Necklace_Start"
	'You are out of dropped Damaged Necklaces. |condition itemcount(43297)==0 |condition_visible itemcount(43297)==0
step
	'Collect another dropped Damaged Necklace, then click here to start the loop again. |confirm |next "Necklace_Start"
]])
