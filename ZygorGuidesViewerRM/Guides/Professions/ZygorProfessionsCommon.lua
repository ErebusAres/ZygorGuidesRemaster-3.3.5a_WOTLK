local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------------------------------------------------------------------------------------------------------------------------
-- Quest Includes
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("go_farm",[[
		'You have sufficient %skill% skill to gather these yourself. |only if skill("%skill%")>=%req%
		'Click here if you want to go gathering. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
		'You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])

ZygorGuidesViewer:RegisterInclude("go_farm_level",[[
		'You can gather these yourself. Click here if you want to go gathering. |confirm |next "%goto%" |only if level>=%level%
		'You need to be level %level% to gather these yourself. |only if level<%level%
]])

ZygorGuidesViewer:RegisterInclude("go_disenchant",[[
		'You have sufficient %skill% skill to obtain these yourself by disenchanting items. |only if skill("%skill%")>=%req%
		'Click here if you want to go farming. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
		'You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Starting Includes.
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude ("profession_levelcheck",[[
		'_Note:_ Your current level is _{intlevel}_. You MUST be at least level _5_ to learn a profession. |only if level<5
		'Your current skill in %prof1% is \|cffbbff88{skill("%prof1%")}\|r. |only if level>=5 and skill("%prof1%")>0  // and 600>=skill("%prof1%")
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 75 until you're level _10_. |only if level>=5 and level<10
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 150 until you're level _20_. |only if level>=10 and level<20
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 225 until you're level _35_. |only if level>=20 and level<35
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 300 until you're level _50_. |only if level>=35 and level<50
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 375 until you're level _65_. |only if level>=50 and level<65
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 450 until you're level _75_. |only if level>=65 and level<75
		'_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 525 until you're level _80_. |only if level>=75 and level<80
]])

ZygorGuidesViewer:RegisterInclude ("profession_single_start",[[
	step 
		|title + %prof1% 1-600
		'This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"
		|confirm

	// make room for %prof1%
	step 
		|title Two profession limit
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof1%")==0  // voodoo.
		'You used to have two professions, but now you have a free profession slot. |only if not (_G.select(1,_G.GetProfessions()) and _G.select(2,_G.GetProfessions()))
		'You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0) or "Unemployed"}_. |only if default
		'Abandon one of your professions now, to make space for _%prof1%_. |condition local p1,p2=_G.GetProfessions()  return (not p1 or not p2) or skill("%prof1%")>0
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
]])

ZygorGuidesViewer:RegisterInclude ("profession_secondary_start",[[
	step
		|title + %prof1% 1-525
		'This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"
		|confirm
]])


ZygorGuidesViewer:RegisterInclude("profession_dual_start",[[
	step 
		|title + %prof1% 1-525
		'This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"

		'You'll be given the choice to use your _%prof2%_ skill to gather necessary ingredients. |only if skill("%prof2%")>0
		'You'll be given the choice to pick up _%prof2% as your second profession_ to gather necessary ingredients. |only if skill("%prof2%")==0
		|confirm 

	// make room for %prof1%
	step
		|title Two profession limit
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof1%")==0  // voodoo.
		'You used to have two professions, but now you have a free profession slot. |only if not (_G.select(1,_G.GetProfessions()) and _G.select(2,_G.GetProfessions()))
		'You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0) or "Unemployed"}_. |only if default
		'Abandon one of your professions now, to make space for _%prof1%_. |condition local p1,p2=_G.GetProfessions()  return (not p1 or not p2) or skill("%prof1%")>0
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
		tip Don't drop %prof2%, though. |only if skill("%prof2%")>0

	// make room for %prof2%
	step
		|only if skill("%prof2%")==0
		|title Second profession: %prof2%
		'It can be expensive to level %prof1% by buying all the materials off of the Auction House.
		'_%prof2%_ is strongly suggested as your second profession, to let you reduce costs by gathering ingredients yourself. |only if skill("%prof2%")==0
		'Click this button if you wish to pick up %prof2%. |only if skill("%prof2%")==0 |confirm |next "+1"
		'Click here to proceed without %prof2%. |confirm
		|next "route"  // leave the header

	// optional: picking up %prof2%
	step
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof2%")==0
		|title Two profession limit, again
		'You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0 ) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0 ) or "Unemployed"}_.
		'You'll need to abandon one of them, in order to learn _%prof2%_. |condition local p1,p2=_G.GetProfessions() return not p1 or not p2 // pass if player has a free profession slot.
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
		tip Careful, don't drop %prof1% by accident. |only if skill("%prof1%")>0

	step
		#include "trainer_%prof2%"  // go to proper trainer
		.skillmax %prof2%,75

	// fall out of the header now.
	// do a "route" step next.
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Farming
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("follow_path_herbs",[[
		.' Zoom your minimap all the way out, track herbs, and follow the path while gathering herbs from yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("follow_path_mine",[[
		.' Zoom your minimap all the way out, track ore, and follow the path while mining yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("follow_path_mine_herb",[[
		.' Zoom your minimap all the way out, track ore and herbs, and follow the path while mining and gathering at yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("max_skill_warning",[[
		'Warning! You have maxed your current _%skill%_ rank. Click here to go and learn the next rank. |confirm |next "%goto%" |only if skill("%skill%")==skillmax("%skill%") and skill("%skill%")<525
]])

ZygorGuidesViewer:RegisterInclude("cooking_fire",[[
		.' Stand next to a fire, or create one yourself |cast Cooking fire##818
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_125",[[
	step end_of_prof_trial
		.' This Trial guides only goes up to 125.
		.' To continue further, please purchase the full Zygor Profession Guides!
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_150",[[
	step end_of_prof_trial
		.' This Trial guides only goes up to 150.
		.' To continue further, please purchase the full Zygor Profession Guides!
]])
