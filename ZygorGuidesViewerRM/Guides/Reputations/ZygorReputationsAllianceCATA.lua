local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Home Cities Reputation",[[
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to become Exalted the fastest way, with all your Hometown Factions.
.' Below you will see which faction you are Exalted with and which ones you are not:
.' Exalted with Stormwind |condition rep('Stormwind')==Exalted
.' Click to use the Stormwind rep Guide |confirm |next "sw" |only if rep ('Stormwind')<=Revered
.' or
.' Exalted with Darnassus |condition rep('Darnassus')==Exalted
.' Click to use the Darnassus rep Guide |confirm |next "darn" |only if rep ('Darnassus')<=Revered
.' or
.' Exalted with Gnomeregan |condition rep('Gnomeregan')==Exalted
.' Click to use the Gnomeregan rep Guide |confirm |next "gnom" |only if rep ('Gnomeregan')<=Revered
.' or
.' Exalted with Ironforge |condition rep('Ironforge')==Exalted
.' Click to use the Ironforge Rep Guide |confirm |next "iron" |only if rep ('Ironforge')<=Revered
.' or
.' Exalted with Exodar |condition rep('Exodar')==Exalted
.' Click to use the Exodar rep Guide |confirm |next "ex" |only if rep('The Exodar')<=Revered
.' or
.' Exalted with Gilneas |condition rep('Gilneas')==Exalted
.' Click to use the Gilneas rep Guide |confirm |next "gil" |only if rep ('Gilneas')<=Revered
.' or
.' Exalted with Tushui Pandaren |condition rep('Tushui Pandaren')==Exalted
.' Click to use the Tushui Pandaren rep Guide |confirm |next "tush" |only if rep ('Tushui Pandaren')<=Revered
|next "end" |only if achieved(948)
step
label	"sw"
goto Stormwind City,67.7,73.0
.talk 49877
.buy Stormwind Tabard##45574
step
.' Equip your Stormwind Tabard |equipped Stormwind Tabard##45574 |use Stormwind Tabard##45574
.' You can run any dungeon that grants experience to gain reputation for Stormwind.
.' Become Exalted with Stormwind |condition rep('Stormwind')==Exalted
|next "menu"
step
label	"darn"
'Skipping next part of guide |next "+darn_tab" |only if step:Find("+darn_buy"):IsComplete()
'Proceeding next step |next |only if default
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
label	"darn_buy"
goto Darnassus,36.2,48.5
.talk 50305
.buy Darnassus Tabard##45579
step
label	"darn_tab"
.' Equip your Darnassus Tabard |use Darnassus Tabard##45579
.' You can run any dungeon that grants experience to gain reputation for Darnassus.
.' Become Exalted with Darnassus |condition rep('Darnassus')==Exalted
|next "menu"
step
label	"ex"
'Skipping next part of guide |next "+ex_tab" |only if step:Find("+ex_buy"):IsComplete()
'Proceeding next step |next |only if default
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,44.2,78.7
.click Portal to The Exodar##06955
.' Teleport to The Exodar |goto The Exodar |noway |c
step
label	"ex_buy"
goto The Exodar,54.8,36.8
.talk 50306
.buy Exodar Tabard##45580
step
label	"ex_tab"
.' Equip your Exodar Tabard |equipped Exodar Tabard##45580 |use Exodar Tabard##45580
.' You can run any dungeon that grants experience to gain reputation for Exodar.
.' Become Exalted with Exodar |condition rep('Exodar')==Exalted
|next "menu"
step
label	"gnom"
'Skipping next part of guide |next "+gnom_tab" |only if step:Find("+gnom_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"gnom_buy"
goto Ironforge,55.3,48.2
.talk 50308
.buy Gnomeregan Tabard##45578
step
label	"gnom_tab"
.' Equip your Gnomeregan Tabard |equipped Gnomeregan Tabard##45578 |use Gnomeregan Tabard##45578
.' You can run any dungeon that grants experience to gain reputation for Gnomeregan.
.' Become Exalted with Gnomeregan |condition rep('Gnomeregan')==Exalted
|next "menu"
step
label	"iron"
'Skipping next part of guide |next "+iron_tab" |only if step:Find("+iron_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"iron_buy"
goto Ironforge,55.6,47.3
.talk 50309
.buy Ironforge Tabard##45577
step
label	"iron_tab"
.' Equip your Ironforge Tabard |equipped Ironforge Tabard##45577 |use Ironforge Tabard##45577
.' You can run any dungeon that grants experience to gain reputation for Ironforge.
.' Become Exalted with Ironforge |condition rep('Ironforge')==Exalted
|next "menu"
step
label	"gil"
'Skipping next part of guide |next "+gil_tab" |only if step:Find("+gil_buy"):IsComplete()
'Proceeding next step |next |only if default
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
label	"gil_buy"
goto Darnassus,37.1,47.5
.talk 50307
.buy Gilneas Tabard##64882
step
label	"gil_tab"
.' Equip your Gilneas Tabard |equipped Gilneas Tabard##64882 |use Gilneas Tabard##64882
.' You can run any dungeon that grants experience to gain reputation for Gilneas.
.' Become Exalted with Gilneas |condition rep('Gilneas')==Exalted
|next "menu"
step
label	"tush"
'Skipping next part of guide |next "+tush_tab" |only if step:Find("+tush_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"tush_buy"
goto Stormwind City 68.0,17.6
.talk 69334
.buy Tushui Tabard##83079
step
label	"tush_tab"
.' Equip your Tushui Tabard |equipped Tushui Tabard##83079 |use Gilneas Tabard##83079
.' You can run any dungeon that grants experience to gain reputation for Tushui Pandaren.
.' Become Exalted with Tushui Pandaren |condition rep('Tushui Pandaren')==Exalted
|next "menu"
step
label	"end"
.' Congratulations, you have earned the Title _Ambassador_! |achieve 948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Timbermaw Hold Faction",[[
author support@zygorguides.com
achieveid 944
#include "A_Timbermaw_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Cenarion Circle Faction",[[
author support@zygorguides.com
#include "A_Cenarion_Circle_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\The Steamwheedle Cartel",[[
description This Guide will help you get Reputation with the Steamwheedle Cartel to earn the title _The Insane_.
author support@zygorguides.com
step
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions you will need to keep Honored status with the _Bloodsail Buccaneers_.
.' If you want the Insane Title, we suggest you get your Bloodsail Buccaneers rep to Revered before working in this guide.
.' You must also become Exalted with the _Darkmoon Faire_ and _Ravenholdt_.
..' Click here to go to the _Darkmoon Faire_ Reputation Guide. |confirm |next "darkmoon"
..' Click here to go to the _Ravenholdt_ Reputation Guide. |confirm |next "raven"
.' Click here to continue to the Steamwheedle Cartel factions |confirm |next "Steam_Menu2"
step
label "darkmoon"
leechsteps "Zygor's Alliance Reputations Guides\\Azeroth\\Darkmoon Faire"
step
label "raven"
leechsteps "Zygor's Alliance Reputations Guides\\Azeroth\\Ravenholdt"
step
label	"Steam_Menu2"
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm |next "gadget" |only if rep('Booty Bay')<=Revered |tip
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm |next "gadget" |only if rep('Gadgetzan')<=Revered |tip
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm |next "ratchet" |only if rep('Everlook')<=Revered |tip
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm |next "ratchet" |only if rep('Ratchet')<=Revered |tip
|next "end" |only if default
step
label	"gadget"
goto Tanaris,72.3,47.1
.from Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+
.' You can find more Pirates around here: [69.5,53.8]
.' Gain Exalted reputation with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' And
.' Gain Exalted reputation with Booty Bay |condition rep('Booty Bay')==Exalted |tip
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
|next "ratchet"
step
label	"ratchet"
goto Northern Barrens,77.5,90.1
.from Southsea Privateer##3384+, Southsea Cutthroat##3383+, Glomp##34747, Southsea Recruit##44168+
.' Gain Exalted reputation with Ratchet |condition rep('Ratchet')==Exalted
.' And
.' Gain Exalted reputation with Everlook |condition rep('Everlook')==Exalted |tip
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations, you are Exalted with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Ravenholdt",[[
description This Guide will help you get Reputation with Ravenholdt to earn the title _The Insane_.
author support@zygorguides.com
step
'In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation.
.'Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
.' You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
|confirm always
step
goto Arathi Highlands,27.1,30.6
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+  .from Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+
.' You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
.' Reach _11,999/12,000_ Honored with Ravenholdt.
|tip You can only get 1 point away from Revered by grinding, then you will have to do quests.
.' Click here to continue |confirm
|only if repval('Ravenholdt','Honored')<=11999
step
label	"boxes"
goto Blackrock Spire/2 59.0,58.1
.' Now that you have reached Revered, or close to it, you will need to do repeatable quests until Exalted.
.' The only thing you need for the repeatable quests are _Heavy Junkboxes_.
.' You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon. |tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
.' You will need to turnin a total of 1400 _Heavy Junkboxes_ with at least 1 item left in them to go from _Revered_ to _Exalted_. |tip If you have the guild perk Mr. Popularity you only need 1170.
.collect Heavy Junkbox##16885+ |n
.' Click here to continue and turn in your Boxes. |confirm
step
goto Hillsbrad Foothills 71.4,45.0
.talk 7323
..accept 8249 |instant |repeatable |n
.' You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
.' You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
.' Reach Exalted with Ravenholdt |condition rep('Ravenholdt')==Exalted |next end
.' or
.' Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
step
label	"end"
.' Congratulations, you have reached Exalted with Ravenholdt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Darkmoon Faire",[[
description This Guide will help you get Reputation with The Darkmoon Faire to earn the title _The Insane_.
author support@zygorguides.com
step
'The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
'The Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town.
|confirm
step
'Click here to go to the Darkmoon Faire Dailies Guide. |next "dailies"
'You can also earn reputation by turning in Darkmoon Decks. Click here to view the Darkmoon Deck statistics. |next "cards" |confirm
step
label	"dailies"
#include "A_Darkmoon_Faire_Dailies"
step
label	"cards"
.' You can now only get cards using _Inscription_, or buying them at the _Auction House_.
.' Cards may be the most expensive turnin for the Faire, but they also provide the most reputation.
.' The higher level of card that you turn in, the more reputation you will receive.
.' You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks.
.' This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly.
.' Reach Neutral with Darkmoone Faire |condition rep('Darkmoon Faire')>=Neutral |only if rep('Darkmoon Faire')>=Neutral and rep('Darkmoon Faire')<=Neutral
.' Reach Friendly with Darkmoone Faire |condition rep('Darkmoon Faire')>=Friendly |only if rep('Darkmoon Faire')>=Friendly and rep('Darkmoon Faire')<=Friendly
.' Reach Honored with Darkmoone Faire |condition rep('Darkmoon Faire')>=Honored |only if rep('Darkmoon Faire')>=Honored and rep('Darkmoon Faire')<=Honored
.' Reach Revered with Darkmoone Faire |condition rep('Darkmoon Faire')>=Revered |only if rep('Darkmoon Faire')>=Revered and rep('Darkmoon Faire')<=Revered
.' Reach Exalted with Darkmoone Faire |condition rep('Darkmoon Faire')>=Exalted
|next "end"
step
label	"end"
' Congratulations, you have reached Exalted with The Darkmoon Faire! |condition rep('Darkmoon Faire')>=Exalted |only if rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Argent Dawn",[[
description This Guide will help you get Reputation with The Argent Dawn
author support@zygorguides.com
achieveid 946
#include "A_Eastern_Plaguelands_Argent_Dawn_Revered"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Hydraxian Waterlords",[[
achieveid 955
step
'This reputation can be earned by running the Molten Core raid.
'Molten Core is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
'If you have never entered Molten Core before you will need to get your attunement to the instance. Click here. |next "attune" |confirm
'If you already have your attunement, click here. |next "noattune" |confirm
step
label attune
goto Burning Steppes/16 54.3,83.5
.talk 14387
..accept 7848
step
'Follow the path and click on the Shadowforge Gate to open it |goto Blackrock Depths 37.9,66.0 <5 |c
step
goto 55.4,32.4 |n
'Follow the path to this spot and jump into the lava |goto 55.4,32.4 |c |tip It will do 600 damage every few seconds so most high levels will be in no danger.
step
'Swim through the lava to this point |goto Blackrock Depths/2 63.0,30.4 <5 |c
'If you are having trouble keeping your health up you can take breaks to heal at [Blackrock Depths/2 54.5,49.6] |n
'and [Blackrock Depths/2 59.4,33.7] |n
step
'Follow this bridge across |goto Blackrock Depths/2 62.4,29.1 <5 |c
step
goto Blackrock Depths/2 69.2,36.9
.click Core Fragment##5740
.get 1 Core Fragment |q 7848/1
step
'Enter Molten Core through the portal in front of you |goto Molten Core |noway |c
step
'Exit Molten Core through the portal behind you |goto Burning Steppes |noway |c
step
goto Burning Steppes 18.2,24.9
.talk 14387
..turnin 7848
step
label noattune
goto 18.2,24.9
.talk 14387
.' Ask Lothos to transport you to Molten Core |goto Molten Core |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place many times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Hydraxian Waterlords |condition rep('Hydraxian Waterlords')==Exalted |next "exalted" |tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
step
label exalted
'Congratulations, you are now Exalted with the Hydraxian Waterlords!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Brood of Nozdormu",[[
achieveid 956
step
'This reputation can be earned by running the Ahn'Qiraj raid.
'Ahn'Qiraj is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
'Skipping to next step |condition rep('Brood of Nozdormu')>=Friendly|next "farm" |only if rep('Brood of Nozdormu')>=Friendly
'Skipping to next step |condition rep('Brood of Nozdormu')<=Neutral |next "hun" |only if rep('Brood of Nozdormu')<=Neutral
step
label hun
goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
.' Every enemy npc in this instance gives reputation and has a chance to drop Scarabs that you can turn in. Bosses drop Ancient Qiraji Artifacts.
.' Collect as many as you can, but do not turn them in yet.
.collect Clay Scarab##20863 |n
.collect Bronze Scarab##20861+ |n
.collect Silver Scarab##20860+ |n
.collect Gold Scarab##20859+ |n
.collect Crystal Scarab##20862 |n
.collect Qiraji Lord's Insignia##21229+ |n
.collect 1 Ancient Qiraji Artifact##21230 |n
.' Use the Ancient Qiraji Artifact in your bags |use Ancient Qiraji Artifact##21230
..accept 8784 |repeatable
.' You can turn this quest in here: [Ahn'Qiraj/2 59.6,68.2]
..turnin 8784 |repeatable
.' Reach _2999/3000_ Neutral reputation with Brood of Nozdormu: |condition repval('Brood of Nozdormu','Neutral')>=2999
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm |only if rep('Brood of Nozdormu')>=Friendly
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm |only if rep('Brood of Nozdormu')>=Friendly
'|talk Andorgos##15502
step
label turninmob
goto Ahn'Qiraj/2 59.6,68.2
'Use Ancient Qiraji Artifact |use Ancient Qiraji Artifact##21230
..accept 8784 |n
.talk 15502
..turnin 8784 |n
.' Repeat this step until you run out of Ancient Scarabs.
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label turninboss
goto Ahn'Qiraj/2 59.1,68.8
.talk 15503
..accept 8579 |only if not completedq(8579) |n
..accept 8595 |only if completedq(8579) |n
..turnin 8579 |only if not completedq(8579) |n
..turnin 8595 |only if completedq(8579) |n
.' Repeat this step until you run out of Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label farm
.' You are currently _Friendly_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Friendly
.' You are currently _Honored_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Honored
.' You are currently _Revered_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Revered
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can.
'Bosses in this instance drop Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Brood of Nozdormu!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Thorium Brotherhood",[[
step
'The Thorium Brotherhood reputation is gained through questing in Searing Gorge and Burning Steppes. It is also gained by turning certain items in to Lokhtos Darkbargainer, most of these items come from Molten Core. See our Hydraxian Waterlords guide for more information on Molten Core.
'Click here to start questing in Searing Gorge |next "searing" |confirm
'Click here to start questing in Burning Steppes |next "burning" |confirm
'Click here to turn in items to Lokhtos Darkbargainer |next "turnin" |confirm
step
label searing
goto Searing Gorge,68.9,53.3
.talk 47269
..accept 27956
step
goto 68.6,53.4
.talk 47266
..turnin 28512
..accept 27963
step
goto 68.5,53.3
.talk 47267
..accept 27960
step
goto 62.2,61.3
.from Gravius Grimesilt##47270 |tip He walks around this area, so you may have to search for him.
.get Dark Iron Memo |q 27963/1
.from Dark Geologist##5839, Dark Iron Watchman##8637 |q 27960/1
.from Tempered War Golem##5853+
.get 15 Tempered Flywheel |q 27956/1
step
goto 68.5,53.3
.talk 47267
..turnin 27960
..accept 27961
..accept 27962
step
ding 47
step
goto 68.6,53.4
.talk 47266
..turnin 27963
..accept 27964
step
goto 68.9,53.3
.talk 47269
..turnin 27956
..accept 27957 |instant
step
goto 68.7,53.3
.talk 47268
..accept 27958
step
goto 58.1,62.4
.from Glassweb Spider##5856
.' Lunk will appear next to you
.talk 47280
..accept 27959
step
goto 58.1,62.4
.from Glassweb Spider##5856+
.' Let Lunk ride 7 spiders |q 27959/1
.clicknpc Lunk##47299
.get 14 Glassweb Venom |q 27958/1
.clicknpc Ash Chicken##47278+
.get 8 Ash Chicken |q 27961/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27959
step
goto 65.1,75.9 |n
.' The path up to Margol the Rager starts here |goto 65.1,75.9,0.5 |noway |c |q 27962
step
goto 71.2,73.5
.from Margol the Rager##5833
.get Margol's Gigantic Horn |q 27962/1
step
goto 68.5,53.3
.talk 47267
..turnin 27961
..turnin 27962
step
goto 68.7,53.3
.talk 47268
..turnin 27958
step
goto 63.4,38.5 |n
.' Follow the path down |goto 63.4,38.5,0.5 |noway |c |q 27964
step
goto 54.2,44.4
.from Dark Iron Footman##47275+, Dark Iron Excavator##47276+
.' Eventually, Dig-Boss Dinwhisker will spawn |tip You will see him yell in your chat window, asking what in hell's name is going on out here.  He spawns in the location where this step's arrow points to.
.from Dig-Boss Dinwhisker##47271
.click Dark Ember##5746
.get Dark Ember |q 27964/1
step
goto 58.2,40.6 |n
.' Follow the path up |goto 58.2,40.6,0.5 |noway |c |q 27964
step
goto 68.6,53.4
.talk 47266
..turnin 27964
..accept 27965
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c |future |q 27965
step
goto 37.9,30.9
.talk 2941
.fpath Thorium Point
step
goto 37.7,26.6
.talk 14634
..accept 27980
step
goto 38.1,27.0
.talk 14625
..turnin 27965
..accept 28099
step
goto 38.5,27.9
.talk 14627
..accept 27976
..accept 27981
step
goto 37.2,28.7
.talk 14626
..accept 27977
step
goto 41.0,39.6
.from Dark Iron Steamsmith##5840
.' Lunk will appear next to you
.talk 47332
..accept 27983
step
goto 41.6,41.4
.from Dark Iron Steamsmith##5840+
.' Let Lunk put 7 Dark Iron Steamsmiths to sleep |q 27983/1
.get Smithing Tuyere |q 27977/1
.get Lookout's Spyglass |q 27977/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27983
step
goto 42.6,36.6
.from Rasha'krak##47553 |tip He's a magma elemental that patrols the lava pools around this area.  You may need to search for him.
.get Rasha'krak's Bracers of Binding |q 28099/1
.' Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
.get 10 Filled Furnace Flask |q 27981/1
.' You can also find Rasha'krak, along with more elementals at the following locations:
.' At [Searing Gorge,39.3,40.5]
.' At [Searing Gorge,31.6,43.1]
|modelnpc Inferno Elemental##5852
|modelnpc Blazing Elemental##5850
|modelnpc Magma Elemental##5855
step
goto 29.8,42.0
.kill 9 Greater Lava Spider##5858+ |q 27980/1
step
goto 32.3,46.6
.kill 12 Heavy War Golem##5854+ |q 27976/1
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c |q 27976
step
goto 38.5,27.9
.talk 14627
..turnin 27976
..turnin 27981
step
goto 36.8,28.2
.talk 14626
..turnin 27977
..accept 27982
step
goto 38.5,27.9
.talk 14627
..accept 27979
step
goto 37.7,26.6
.talk 14634
..turnin 27980
step
ding 48
step
goto 38.1,27.0
.' Go to the top of the tower
.talk 14625
..turnin 28099
step
goto 24.3,33.0 |n
.' Follow the path up |goto 24.3,33.0,0.5 |noway |c |q 27979
step
goto 24.6,26.3
.from Minister Finister##47311
.collect Finister's Spherule##62824 |q 27979
step
goto 29.5,26.4
.talk 8436
..accept 27984
step
goto 29.5,26.4
.talk 8436
..' Tell him you wish to hear his tale
.' Listen to Zamael's Story |q 27984/1
step
goto 29.5,26.4
.talk 8436
..turnin 27984
..accept 27985
step
goto 23.1,35.4
.click Twilight's Hammer Crate##10106+
.get Prayer to Elune |q 27985/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27985
step
goto 22.0,36.4 |n
.' Enter the cave |goto 22.0,36.4,0.5 |noway |c |q 27979
step
goto 17.6,42.4
.' Follow the path immediately to the left after you enter the cave
.from Minister Kiyuubi##47309
.collect Kiyuubi's Spherule##62825 |q 27979
step
goto 14.6,36.2
.from Minister Letherio##47310
.collect 1 Letherio's Spherule##62823 |n
.' Use Letherio's Spherule |use Letherio's Spherule##62823
.get Twilight Tripetricine |q 27979/1
step
'All around inside this cave:
.from Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
.get 20 Twilight Collar |q 27982/1
step
goto 22.0,36.4 |n
.' Leave the cave |goto 22.0,36.4,0.5 |noway |c |q 27982
step
goto 31.9,33.3 |n
.' Follow the path up |goto 31.9,33.3,0.5 |noway |c|q 27982
step
goto 38.5,27.9
.talk 14627
..turnin 27979
..accept 27986
step
goto 38.7,28.7
.talk 14624
..turnin 27982
step
goto 39.4,66.3
.talk 47942
.home Iron Summit
step
goto 39.4,67.9
.talk 47393
..turnin 27986
..accept 28028
..accept 28029
..accept 28030
step
goto 38.8,68.9
.talk 47440
..accept 28032
step
goto 35.7,60.7
.click Sentry Brazier##524
.' Set the Southwestern Tower Ablaze |q 28029/2
step
goto 33.3,54.5
.click Sentry Brazier##524
.' Set the Western Tower Ablaze |q 28029/1
step
goto 33.3,66.2
.from Incendosaur##9318+
.get 6 Fire-Gizzard |q 28032/1
step
goto 44.0,60.9
.click Sentry Brazier##524
.' Set the Southeastern Tower Ablaze |q 28029/3
step
goto 52.5,58.0 |n
.' Cross the hanging wooden bridge |goto 52.5,58.0,0.5 |noway |c |q 28029
step
goto 50.1,54.7
.click Sentry Brazier##524
.' Set the Eastern Tower Ablaze |q 28029/4
step
goto 51.4,55.6 |n
.' Cross the hanging wooden bridge |goto 51.4,55.6,0.5 |noway |c |q 28028
step
goto 49.6,63.0
.kill 9 Dark Iron Marksman##8338+ |q 28028/1
.click Dark Iron Bullet##1868+
.get 200 Dark Iron Bullet |q 28030/1
step
goto 45.0,67.3 |n
.' Follow the path up |goto 45.0,67.3,0.5 |noway |c |q 28032
step
goto 38.8,68.9
.talk 47440
..turnin 28032
step
goto 39.4,67.9
.talk 47393
..turnin 28028
..turnin 28029
..turnin 28030
..accept 28033
step
goto 39.8,67.9
.talk 47429
..turnin 28033
..accept 28034
step
goto 40.6,68.1
.talk 47434
..' Ask them if they care to join your dance
.' Build up a three-dwarf conga line |q 28034/1
step
goto 39.4,67.9
.talk 47393
..turnin 28034
..accept 28035
step
goto 38.1,27.0
.talk 14625
..turnin 28035
..accept 28052
step
goto 37.9,30.9
.talk 2941
..' Tell her you're ready to take the flight into the Cauldron
.' Use the Shoot ability on your hotbar on the dwarves that start shooting at you
.' Secure entrance into the Slag Pit |q 28052/1
step
goto 40.8,51.7
.talk 47393
..turnin 28052
..accept 28054
..accept 28055
..accept 28056
step
goto 41.3,25.4
.' Follow the path in The Slag Pit
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
.click Altar of Suntara##328
..' Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion
.kill Obsidion##8400 |q 28056/1
.kill Lathoric the Black##8391 |q 28056/2
step
goto 42.1,25.1
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.' Free or kill 12 Slave Workers |q 28055/1
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+ |q 28054/1
step
goto 43.8,28.7
.talk 14628
..turnin 28054
..turnin 28055
..turnin 28056
..accept 28057
step
ding 49
step
goto 46.2,27.1
.click Dark Iron Pillow##5911+ |tip A big group of dwarves runs up and down the hallway once you steal some pillows. You can kill them easily, though, they have low hit points.
.get 16 Dark Iron Pillow |q 28057/1
step
goto 42.2,34.5
.talk 14626
..turnin 28057
..accept 28060
step
goto 42.3,34.6
.talk 14627
..' Tell him "Let's take out Maltorius and Arkkus!"
.kill Overseer Maltorius##14621 |q 28060/1
.kill Twilight-Lord Arkkus##47460 |q 28060/2
step
goto 47.7,42.0 |n
.' Jump off the bridge to the path below
|confirm
step
goto 50.0,39.0
.talk 14625
..turnin 28060
..accept 28062
..accept 28061
..accept 28514
step
goto 48.0,27.4
.kill 6 Searing Flamewraith##47463+ |q 28061/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28061
step
goto 42.7,30.3
.from Archduke Calcinder##47462
.' Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925 |tip You will see a message pop up when he is at about half health.
.' Banish Archduke Calcinder |q 28062/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28062
..accept 28064
step
goto 39.0,26.0
.talk 47429
..accept 28053 |instant
step
goto 38.1,27.0
.talk 14625
..turnin 28064
step
label burning
goto Burning Steppes 17.3,52.1
.talk 47811
..' You will only be able to accept 1 of these 2 quests |tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
..accept 28416 |or
..accept 28174 |or
step
goto 17.0,51.3
.talk 47779
..turnin 28514
..accept 28172
step
goto 17.5,60.5
.clicknpc Fettered Green Whelpling##47820
.' Free a Green Whelpling |q 28172/2
step
goto 19.2,61.6
.clicknpc Fettered Blue Whelpling##47821
.' Free a Blue Whelpling |q 28172/3
step
goto 17.8,61.4 |n
.' Follow the path up |goto 17.8,61.4,0.5 |noway |c |q 28172
step
goto 15.1,69.7
.clicknpc Fettered Bronze Whelpling##47822
.' Free a Bronze Whelpling |q 28172/4
step
goto 14.2,66.8
.clicknpc Fettered Red Whelpling##47814
.' Free a Red Whelpling |q 28172/1
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28416/1
.kill 5 Flamescale Broodling##7049+ |q 28416/2
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28174/1
.kill 5 Flamescale Broodling##7049+ |q 28174/2
step
goto 17.3,52.1
.talk 47811
..' You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
..turnin 28416
..turnin 28174
..accept 28177
..accept 28178
..accept 28179
step
goto 17.0,51.3
.talk 47779
..turnin 28172
step
goto 15.5,45.0
.click Obsidian-Flecked Mud##20
.get 9 Obsidian-Flecked Mud |q 28179/1
step
goto 11.8,47.7
.from Ember Worg##9690+
.get 11 Ember Worg Hide |q 28178/1
.from Venomtip Scorpid##9691+
.get 5 Razor-Sharp Scorpid Barb |q 28177/1
step
goto 17.3,52.1
.talk 47811
..turnin 28177
..turnin 28178
..turnin 28179
..accept 28180
step
goto 8.4,35.8
.talk 14437
..turnin 28180
..accept 28181
..accept 28182
step
goto 9.9,29.7
.kill Ner'gosh the Shadow##47805 |q 28182/1
step
goto 5.4,32.0
.click Slumber Sand##6483
.get Slumber Sand |q 28181/2
step
goto 5.2,30.9
.click Fel Slider Cider##334
.get Fel Slider Cider |q 28181/3
step
goto 6.8,31.8
.from Blackrock Warlock##7028+
.get Clear Glass Orb |q 28181/1
step
goto 8.4,35.8
.talk 14437
..turnin 28181
..turnin 28182
..accept 28183
step
ding 50
step
goto 17.3,52.1
.talk 47811
..turnin 28183
..accept 28184
step
goto 31.5,52.1
.from Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28184/1
step
goto 46.8,44.1
.talk 48033
..turnin 28184
..accept 28225
..accept 28226
step
goto 46.4,46.0
.talk 48109
..accept 28254
step
goto 45.5,46.4
.talk 48001
..turnin 28254
..accept 28202 |or
..accept 28203 |or
..accept 28204 |or
..accept 28205 |or
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Human
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Dwarf
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 1 Hide
..' Take 3 Handfuls of Mud
..' Take 4 Spools of Thread
.' Click to proceed. |confirm
only Gnome
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Draenei
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Worgen
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
.' Click to proceed. |confirm
only NightElf
step
goto 45.5,46.4
.talk 48001
..' Tell him you brought him some hides, mud, and thread
.' Create the Perfect Costume |q 28202/1
.' Create the Perfect Costume |q 28203/1
.' Create the Perfect Costume |q 28204/1
.' Create the Perfect Costume |q 28205/1
step
goto 46.4,46.0
.talk 48109
..turnin 28202
..turnin 28203
..turnin 28204
..turnin 28205
step
'From this point you will need to turn in items to Lokhtos Darkbargainer. He is found in Blackrock Depths.
'Click here to for the path to him. |next "turnin" |confirm
step
label turnin
'Go through this Door |goto Blackrock Depths 37.7,66.0,0.5 |c
step
'Enter this doorway |goto Blackrock Depths 40.8,66.8,0.5 |c
step
'Click the Shadowforge lock to open the door upstairs |goto Blackrock Depths/2 41.4,88.3,0.5 |c
step
'Go up the stairs and follow this path to the left |goto Blackrock Depths/2 45.9,86.2,0.5 |c
step
'Go down these stairs and to the right |goto Blackrock Depths/2 36.5,77.2,0.5 |c
step
'Enter the Grim Guzzler and speak with Lokhtos Darkbargainer |goto Blackrock Depths/2 50.3,58.4,0.5 |c
step
goto 50.3,58.5
.talk 12944 |tip All of these quests are repeatable and all of the items can be farmed in Molten Core. |n
..accept 6642 |tip Dark Iron Ore can be mined inside Molten Core, requires 175 mining. |n
..accept 6643 |tip Fiery Cores are dropped by the Fire Elementals in Molten Core, also by Molten Destroyers. |n
..accept 6644 |tip Lava Cores are dropped by the Earthen Elementals in Molten Core, also by the Molten Giants. |n
..accept 6645 |tip Core Leather can be skinned from the various Core Hounds within Molten Core. |n
..accept 6646 |tip These are dropped only by Molten Destroyers, but they can be mined from Dark Iron Deposits. |n
'Earn Exalted status with the Thorium Brotherhood |condition rep('Thorium Brotherhood')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Thorium Brotherhood!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Bloodsail Buccaneers",[[
step
'The Bloodsail Buccaneer reputation requires a lot of farming.
|confirm |next "bruiser"|only if completedq(26679)
|confirm |next "rum" |only if not completedq(26679)
step
label bruiser
'If you are going to attempt to get exalted with the Bloodsail Buccaneers, our suggestion is that you are max level, have high level gear, and have friends with you.
'The quickest way to gain reputation with the Bloodsail Buccaneers is to farm Booty Bay Bruisers.
'Bruisers have proven to be incredibly difficult to kill. They have a variety of knockbacks and nets, they have high damage and health, and they will call for help so you can quickly find yourself overwhelmed.
|confirm
step
goto The Cape of Stranglethorn 41.6,73.2
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
.from Booty Bay Bruiser##4624
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label rum
goto The Cape of Stranglethorn,42.1,73.4
.talk 2501
..accept 26593
step
goto 50.4,54.6
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto The Cape of Stranglethorn,40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto The Cape of Stranglethorn,56.6,57.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto The Cape of Stranglethorn 57.0,54.4
.click Half-Buried Bottle##204406
..accept 26603
step
goto 57.8,48.6
.talk 43377
.' Tell him, So you kno why I'm here then. all right Midriff, pay up.
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
goto The Cape of Stranglethorn,59.7,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26603
..accept 26604
step
goto The Cape of Stranglethorn 58.4,80.4
.kill 5 Jaguero Stalker##2522+ |q 26604/1 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+, Skymane Bonobo##43417+
.get Poobah's Tiara##59057 |q 26605/1
.get Poobah's Scepter##59058 |q 26605/2
.get Poobah's Slippers##59059 |q 26605/3
.get Poobah's Diary##59060 |q 26605/4
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26605
..accept 26606
step
goto The Cape of Stranglethorn 63.4,83.2
.from King Mukla##1559+
..get Shackle Key |q 26606/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26606
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 45.0,79.5
.click Bloodsail Charts##222+
.get Bloodsail Charts |q 26612/3
.click Bloodsail Orders##220+ |tip It looks like a white scroll.
.get Bloodsail Orders |q 26612/4
.' The Bloodsail Orders and Charts can also spawn at the following locations:
.' At [42.0,83.2]
.' At [40.9,82.8]
.kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505
..' Tell her you need to cut off her head, then do the deed
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
..' Tell him you need an extra-large pirate hat. Seahorn's orders.
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
..' Give him the head and the hat and tell him he's the boss
.' Return both items to Fleet Master Seahorn |q 26630/1
step
goto 41.1,73.3
.talk 2487
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto 43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.5,91.4
.talk 2548
..turnin 26631
..accept 26633
step
goto 44.5,92.5
.' Go upstairs to the top deck of the ship
.click Swabbie's Mop##9742
.clicknpc Deck Stain##43511+
.' Swab the Decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,93.3
.talk 2545
..accept 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 46.3,96.0
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 52.5,87.9
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1
.' You can find more Lime Crates around [The Cape of Stranglethorn,56.6,80.0]
step
goto 44.5,93.2
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.4,91.6
.talk 2548
..accept 26644
step
goto 46.7,95.3
.talk 2546
..turnin 26644
step
goto 46.6,95.0
.talk 2547
..accept 26647
step
goto 46.8,94.0
.' Go upstairs
.talk 43556
..accept 26648
step
goto 46.9,93.9
.clicknpc Ol' Blasty##43562
.' Use the abilities on your hotbar to shoot at Smilin' Timmy Sticks |tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
.' Hit Smilin' Timmy Sticks with 5 Cannonballs |q 26647/1
step
'Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
step
goto 46.6,95.0
.' Go downstairs
.talk 2547
..turnin 26647
..accept 26649
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
'Use the Return to Shore ability on your hotbar
.' Return to the Wild Shore |goto 46.0,89.4,0.5 |noway |c |q 26649
step
goto 46.6,95.0
.' Go downstairs in the ship
.talk 2547
..turnin 26649
step
goto 57.1,82.4
.' Use Dead-Eye's Flare Gun |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.2,91.5
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.. Ask him if the Brashtide Crew is ready for battle
.' Speak with Long John Copper |q 26662/1
step
goto 50.6,91.5
.' Go all the way downstairs in this ship
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship
.click Grog Barrel##9095
..' <Nudge the cork.>
.' Sabotage the Grog |q 26663/1
step
goto 46.7,94.2
.' Go all the way downstairs in this ship
.talk 43660
..' Ask him what he can tell you about the Brashtide Crew
.' Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship, unless you've already killed 9 of them
.click Gunpowder Barrel##9095
..' <Pour the water onto the gunpowder.>
.' Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.' Go downstairs in this ship
.talk 43661
..' Ask her if she knows the battle plan
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26662
step
goto 44.7,92.8
.' Go all the way downstairs in this ship
.click Cannonball Crate##9651+
..' <Grease the cannonballs.>
.' Sabotage the Cannonballs |q 26663/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26663
step
goto 44.8,92.9
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Accuse and kill 9 Bloodsail Corsairs |q 26664/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26664
..accept 26665
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.' Go downstairs one level
.click Barrel of Doublerum##32
..turnin 26678
..accept 26679
step
'It is very important that you do not turn this quest in. As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
|confirm
step
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
'Kill any npc with a Booty Bay I.D. in their name, most will award you reputation. |tip The following NPCs give more reputation than the others in Booty Bay: Baron Revilgaz, Viznik and Rickle Goldgrubber, Gizzlowe, and Wharfmaster Lozgil.
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Bloodsail Buccaneers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Wintersaber Trainers",[[
step
'This reputation will take _20 days_ to get to Exalted.
|confirm
step
goto Winterspring 46.6,17.6
.talk 10618
..accept 29032
step
goto 46.6,17.6
.clicknpc Frostsaber Cub##51681
.get 8 Frostsaber Cub##68638 |q 29032/1
step
goto 46.6,17.6
.talk 10618
..turnin 29032
..accept 29034
step
label "dailies"
title +Winterspring Frostsaber Dailies
'Go to _Winterspring_ |goto Winterspring |noway |c
|use Winterspring Cub##68646
.talk 51677
..accept 29040 |or
..accept 29035 |or
..accept 29038 |or
..accept 29037 |or
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29040
|only if havequest(29040)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29040
|only if havequest(29040)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hides_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29040/1
|only if havequest(29040)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29035
|only NightElf,Gnome,Draenei,Human
|only if havequest(29035)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29035/1
|only if havequest(29035)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29038/1
'|model Snow-Covered Burrow##5333
|only if havequest(29038)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29037
|only if havequest(29037)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29037/1
|only if havequest(29037)
step
|use Winterspring Cub##68646
.talk 51677
..turnin 29040 |or |only if havequest(29040)
..turnin 29035 |or |only if havequest(29035)
..turnin 29038 |or |only if havequest(29038)
..turnin 29037 |or |only if havequest(29037)
.' _Click here_ to return to the _ beginning_ of the _daily quests_ |confirm |next "dailies"
.get 20 Cub Whisker##68644 |q 29034/1
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 20 Runecloth##14047
.collect 20 Rugged Leather##8170
step
goto 46.6,17.6
.talk 10618
..turnin 29034
'Earn Exalted status with the Wintersaber Trainers |condition rep('Wintersaber Trainers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Wintersaber Trainers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Sporeggar Faction",[[
author support@zygorguides.com
achieveid 900
#include "A_Sporeggar_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Kurenai Faction",[[
description This Guide will help you reach Exalted status with the Kurenai Faction
author support@zygorguides.com
achieveid 899
#include "A_Kurenai_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
#include "A_Cenarion_Expedition_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Sha'tari Skyguard\\Skyguard Faction",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
achieveid 894
step
label "route"
'Routing to Skyguard Pre-Quests |next "pre" |only if not completedq(11073)
'Routing to Skyguard Dailies |next "menu" |only if completedq(11073)
step
label "pre"
goto Shattrath City,64.3,42.3
.talk 23449
..accept 11096
step
goto Terokkar Forest,21.8,16.1
.from 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1
.' You can find more around here [24.4,8.9]
step
goto Shattrath City,64.3,42.3
.talk 23449
..turnin 11096
..accept 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto 63.5,65.8
.talk 23415
..accept 11093
step
goto 64.0,66.9
.talk 23042
..accept 11004
step
goto 61.4,81.8
.' Use your Nether Ray Cage |use Nether Ray Cage##32834 |tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
.from Blackwind Warp Chaser##23219+
.' You can find more Warp Chasers here [64.5,84.4]
.get 10 Nether Ray Meal |q 11093/1
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.get 6 Shadow Dust |q 11004/1
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto Terokkar Forest,64.0,66.9
.talk 23042
..turnin 11004
step
goto 63.5,65.8
.talk 23415
..turnin 11093
step
goto 64.1,66.9
.talk 23038
..accept 11005
step
goto 69.7,74.7
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility |q 11005
step
goto 70.1,74.5
.kill Talonpriest Zellek##23068 |q 11005/3
step
goto 69.3,78.1
.kill Talonpriest Ishaal##23066+ |q 11005/1
.collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
..accept 11021
step
goto 69.8,81.8
.kill Talonpriest Skizzik##23067+ |q 11005/2
step
goto 64.1,66.9
.talk 23038
..turnin 11005
..turnin 11021
..accept 11024
step
goto Shattrath City 52.5,21.0
.talk 22292
..turnin 11024
..accept 11028
step
goto Terokkar Forest,64.1,66.9
.talk 18940
..turnin 11028
step
goto 64.2,66.9
.talk 23306
..accept 11056
step
goto 74.8,80.1
.click Hazzik's Package##6396
.get Hazzik's Package |q 11056/1
step
goto 64.3,66.9
.talk 23306
..turnin 11056
..accept 11029
step
goto 66.2,77.5
.' Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
.' Wear the Shabby Arakkoa Disguise |havebuff Interface\Icons\INV_Misc_Birdbeck_01
step
goto 67.0,79.7
.talk 23363
.buy Adversarial Bloodlines##32742 |q 11029
step
goto 64.3,66.9
.talk 23306
..turnin 11029
..accept 11885
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388 |q 11885 |future
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant
..collect 2 Elixir of Shadows##32446+ |q 11885 |future
step
' This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
|confirm always
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.kill Darkscreecher Akkarai##23161 |q 11885/1
.collect Akkarai's Talons##32715
.kill Karrog##23165 |q 11885/2
.collect Karrog's Spine##32717
.kill Gezzarak the Huntress##23163 |q 11885/3
.collect Gezzarak's Claws##32716
.kill Vakkiz the Windrager##23204 |q 11885/4
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto 64.2,66.9
.talk 23306
..turnin 11885
..accept 11074 |instant
step
goto 64.1,66.9
.talk 23038
..accept 11073
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
goto 64.1,66.9
.talk 23038
..turnin 11073
step
label	"menu"
'You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
.' Click here to do the Dailies and then grind |confirm always |next "dailies" |or
.' or
.' Click here to grind for reputation |confirm always |next "grind" |or
step
label	"dailies"
goto Terokkar Forest,64.5,66.7
.talk 23048
..accept 11008
step
goto 63.1,80.0
.' Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
.' Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
.Destroy 20 Monstrous Kaliri Eggs |q 11008/1
.' You can find more eggs here:  goto [61.3,79.9]
.' Here [67.5,79.3]
.' Here [68.0,85.6]
.' and here [70.3,84.5]
'|model 378
step
goto 64.5,66.7
.talk 23048
..turnin 11008
step
goto 61.0,75.6
.talk 23383
..accept 11085
.' He can also be found here: [68.4,74.0]
.' and here: [75.0,86.5]
step
.' Escort the Skyguard Prisoner to the bottom of the bridge |tip Help him kill any mobs on the way down.
.' Rescue the Skyguard Prisoner. |q 11085/1
'|modelnpc 23383
step
goto 64.5,66.7
.talk 23048
..turnin 11085
step
label	"grind"
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant |n
..collect 2 Elixir of Shadows##32446
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.from Darkscreecher Akkarai##23161
.collect Akkarai's Talons##32715
.from Karrog##23165
.collect Karrog's Spine##32717
.from Gezzarak the Huntress##23163
.collect Gezzarak's Claws##32716
.from Vakkiz the Windrager##23204
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto Terokkar Forest,64.3,66.9
.talk 23306
..accept 11074 |instant |n
.collect Time-Lost Offering##32720
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Keepers of Time Faction",[[
description This guide will help you earn Exalted
description reputation with the Keepers of Time.
step
.' This faction largely relies on running certain instances repeatedly in order to gain reputation.
.' There are a few Daily Quests to look out for in Shattrath City.  However, they won't be available to you every day.
..' Click here to proceed. |confirm
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Trade District
step
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11382 |or
.accept 11378 |or
..' Neither of the quests may be available. If that is the case, click here to proceed. |confirm
step
goto 75.5,37.3
.talk 24370
.accept 11383
..' This quest may not be available for the day.  If it isn't, click here to proceed. |confirm
step
goto Tanaris,65.3,49.7
.talk 20142
..accept 10279
.' Ask the Steward of Time to take you to the master's lair. |goto 59.1,53.9,0.5 |noway|c
step
goto 58.1,54.1
.talk 20130
.turnin 10279
..accept 10277
.' For this quest you can either follow the Custodian around or do something else while waiting.  This is a long process.
step
goto 58.1,54.1
.talk 20130
.turnin 10277
..accept 10282
step
goto Old Hillsbrad Foothills,29.0,48.3
.talk 18723
.turnin 10282
..accept 29598
.' Tell him you need a pack of incendiary bombs.
.get 1 Pack of Incendiary Bombs##25853 |q 29598
step
goto 29.2,47.9
.talk 18725
..' Tell him you're ready to go to Durnholde Keep. |goto Old Hillsbrad Foothills,69.3,71.6 |noway|c |q 29598
step
.' Go into Durnholde and cross the bridge. |goto 72.2,63.4 |c |q 29598
step
.' Go to this ledge and jump down. |goto Old Hillsbrad Foothills,77.2,61.6 |c |q 29598
step
goto 77.6,65.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm |q 29598
step
goto Old Hillsbrad Foothills,76.0,68.1
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm |q 29598
step
goto 74.6,68.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm |q 29598
step
goto 69.0,62.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm |q 29598
step
goto 68.6,58.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Internment Lodges Set Ablaze. |q 29598/1
step
goto 75.6,64.7
.kill Lieutenant Drake##17848 |n
..' After you fight him, go up the stairs.
.' Click here to continue. |confirm |q 29598
step
.' Go up the hill to the entrance of the barracks. |goto 73.2,61.4 |c |q 29598
step
goto Old Hillsbrad Foothills,74.6,58.4
.' Go down the steps here.
.' Click here once you're in the basement. |confirm |q 29598
step
goto Old Hillsbrad Foothills,74.5,57.7
.talk 17876
.turnin 29598
..accept 29599
step
.' Tell him you're ready to get out of there.
..' Follow and Protect Thrall.
.kill Captain Skarloc##17862+ |n
.' After you kill Captain Skarloc, tell Thrall that Taretha cannot see him.
.' Click here to proceed. |confirm |q 29599
step
.' Continue following and protecting Thrall until he stops again.
.' Tell him that you're ready.
.' Click here to continue. |confirm |q 29599
step
.' Follow and protect Thrall once more.
.' Once you're upstairs with Taretha, ask her about the Strange Wizard.
.' Click here to continue. |confirm |q 29599
step
.' Follow Thrall outside and protect him.
.kill Epoch Hunter##18096+ |n
..' Thrall's Destiny Fulfilled. |q 29599/1
step
goto Old Hillsbrad Foothills,50.2,30.9
.talk 18723
.turnin 29599
step
goto Tanaris,58.1,54.1
.talk 20130
..accept 10296
step
goto The Black Morass,49.3,6.5
.talk 20201
.turnin 10296
..accept 10297
step
goto The Black Morass,49.2,71.1
.' Moving to this spot will activate the event.
.' You will need to move to the portals that appear nearby, and kill everything that comes out of it.
.' If Medivh is under attack you must kill whatever is attacking him.  If his shield drops to 0% you will fail.
.' Open the Dark Portal. |q 10297/1
step
goto 49.3,6.5
.talk 20201
.turnin 10297
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11382 |or
.turnin 11378 |or
step
goto 75.5,37.3
.talk 24370
.turnin 11383
step
.' At this point you will need to grind The Black Morass and Old Hillsbrad Foothills to gain reputation.
.' If you're revered with the Keepers of time, you'll be able to talk to Zephyr in Shattrath who will teleport you to Tanaris.
.'Earn Exalted reputation with the Keepers of Time |condition rep('Keepers of Time')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Keepers of Time!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Consortium",[[
description This guide will help you earn Exalted
description reputation with The Consortium Faction.
achieveid 902
step
.' From neutral, you have a few options as to how to earn your reputation.
.' The first way is running the Mana Tombs, although it will stop giving you reputation on Normal Mode as soon as you hit Honored.
.' The second way is by doing repeatable quests in Nagrand until you hit friendly.
..' Click here to continue. |confirm
step
goto Nagrand,52.0,34.8
.talk 18335
.accept 9913
step
goto 50.8,40.1
.from Wild Elekk##18334+
.collect 3 Pair of Ivory Tusks##25463+ |future
..They are scattered all over Nagrand.  Don't confuse them with Bull Elekks.
' More can be found at the locations below:
.' [55.2,44.9]
.' [61.4,41.5]
.' [67.2,39.9]
.' [69.9,46.0]
step
goto Nagrand,31.8,56.8
.talk 18333
.accept 9914
step
goto 31.4,57.8
.talk 18265
.turnin 9913
..accept 9882
step
goto Nagrand,30.8,58.1
.talk 18276
.accept 9900
..accept 9925
step
.' Once you have accepted A Head Full of Ivory and Stealing from Thieves, you will want to complete both, but only turn one in.
.' Click here to confirm. |confirm
step
goto Nagrand,34.0,63.4
.from Vir'aani Raider##17149+
.get 10 Oshu'gun Crystal Fragment |q 9882/1
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
step
goto Nagrand,36.2,65.5
.kill Voidspawn##17981+ |q 9925/1
.' More can be found around [37.9,66.1]
step
goto 42.6,73.6
.kill Gava'xi##18298 |q 9900/1
.' He patrols around [42.1,71.2], so you might find him there.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9882
step
goto 30.8,58.1
.talk 18276
.turnin 9900
.turnin 9925
.' Click here to farm Crystals. |next crystal |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "crystal"
goto Nagrand,34.0,63.4
.click Oshu'gun Crystal Fragment##6415
.from Vir'aani Raider##17149+
.collect Oshu'gun Crystal Fragment##25416 |n
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
.' Click here when you are ready to turn in. |confirm
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9883 |instant |n
.' Click here to go back to farming. |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "friend"
goto 31.8,56.8
.talk 18333
.turnin 9914
step
goto Nagrand,31.4,57.8
.talk 18265
..accept 9886 |instant
..accept 9893
step
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.get 10 Obsidian Warbeads |q 9893/1
.' You can collect more than 10.
.' Be sure to collected multiples of 10.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9893
step
label "bead_farm"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect Obsidian Warbeads##25433
.' You can collect more than 10.
.' To get from Friendly to Honored, you will need 240 Obsidian Warbeads.
.' Be sure to collected multiples of 10.
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to continue farming Warbeads. |next bead_farm |confirm |only if rep("The Consortium")<=Friendly
|next nsquest |only if rep("The Consortium")>=Honored
step
label "nsquest"
goto Netherstorm 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
..accept 10311
step
goto 46.4,56.4
.talk 20810
..accept 10417
..accept 10348
step
goto 48.2,55.0
.click Diagnostic Equipment##7192
.get Diagnostic Results |q 10417/1
step
goto 57.6,63.9
.click Box Surveying Equipment##6881
.get 10 Box of Surveying Equipment |q 10267/1
step
goto 48.2,53.9
.click Ivory Bell##7176
.get 15 Ivory Bell |q 10348/1
step
goto 46.4,56.4
.talk 20810
..turnin 10348
..turnin 10417
..accept 10418
step
goto 46.8,53.9
.kill 8 Barbscale Crocolisk##20773+ |q 10418/1
step
goto 46.4,56.4
.talk 20810
..turnin 10418
..accept 10423
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
goto 48.1,63.5
.talk 20281
..turnin 10311
..accept 10310
step
.' Escort Drijya while he sabotages the warp-gate.
.' Burning Legion warp-gate sabotaged |q 10310/1
step
goto 46.7,56.9
.talk 20066
..turnin 10310
step
goto 43.5,35.1
.talk 20811
..turnin 10423
..accept 10424
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 47.6,26.8
.' Use Diagnostic Device next to the generator |use Diagnostic Device##29803
.' Get the Diagnostic Results |q 10424/1
step
goto 43.5,35.2
.talk 20811
..turnin 10424
..accept 10430
step
goto 44.7,14.6
.talk 20913
..turnin 10430
..accept 10436
step
goto 45.6,11.2
..kill 12 Scythetooth Raptor##20634+ |q 10436/1
step
goto 44.7,14.6
.talk 20913
..turnin 10436
..accept 10440
step
goto 43.5,35.2
.talk 20811
..turnin 10440
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 58.3,31.7
.talk 20071
..accept 10270
step
goto 59.2,32.1
.talk 20450
..accept 10422
step
goto Netherstorm,59.2,32.6
.talk 20449
..accept 10411
step
goto 59.5,32.4
.talk 20448
..accept 10339
step
goto 60.1,31.7
.talk 20907
..accept 10437
step
goto 57.1,36.5
..kill Captain Zovax##20727 |q 10339/4 |tip He walks around this area.
..kill 5 Ethereum Assassin##20452+ |q 10339/1
..kill 5 Ethereum Shocktrooper##20453+ |q 10339/2
..kill 2 Ethereum Researcher##20456+ |q 10339/3
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10339
..accept 10384
step
goto 55.8,39.9
.click Ethereum Data Cell##1247
.get Ethereum Data Cell |q 10384/1
step
goto 54.5,41.1
.from Warden Icoshock##20770+
.collect The Warden's Key##29742 |q 10422
step
goto 55.2,42.8
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Void Waste Globule##20805+ |q 10411/2
step
goto 53.3,41.5
.' Click Captain Tyralius's Prison |tip It looks like a glowing pink orb
.' Free Captain Tyralius |q 10422/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10384
..accept 10385
step
goto 56.5,38.6
.from Ethereum Shocktrooper##20453+, Ethereum Assassin##20452+
..collect Ethereum Essence##29482 |n
.' Use Ethereum Essence in your bags to see Ethereum Relays |use Ethereum Essence##29482
.from Ethereum Relay##20619+
.get 15 Ethereum Relay Data |q 10385/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10385
..accept 10405
step
goto 55.8,40.5
.from Ethereum Assassin##20452+, Ethereum Archon##20458+
..get Prepared Ethereum Wrapping |q 10405/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10405
..accept 10406
step
goto 56.8,38.6
.' Escort the Ethereum Demolishinist while he sabotages the Ethereum Conduit |tip If you have trouble with this, clear the path first before accepting the escort quest.
.' Sabotage Ethereum Conduit |q 10406/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10406
step
goto 57.1,37.6
.from Ethereum Gladiator##20854 |tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
.talk 20763
..accept 10425
step
'Escort the Captured Protectorate Vanguard to Protectorate Watch Post
.' Escort Captured Protectorate Vanguard |q 10425/1
step
goto 59.5,32.4
.talk 20448
..turnin 10425
step
goto 59.3,32.0
.talk 20450
..turnin 10422
step
goto 62.5,34.7
.from Voidshrieker##18870+, Unstable Voidwraith##18869+
..get 8 Fragment of Dimensius |q 10437/1
step
goto 59.5,39.9
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Seeping Sludge Globule##20806+ |q 10411/1
step
goto 59.4,45.0
.talk 20551
..accept 10345
step
goto 61.0,45.6 |n
'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c |q 10345
step
.' Go inside the cave to 59.8,42.6 |goto 59.8,42.6
.' Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473 |modelnpc Withered Corpse##20561
.' Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
goto 60.9,41.5
.talk 20552
..accept 10353
step
goto 61.0,41.5
.click Teleporter Power Pack##7089
.get Teleporter Power Pack |q 10270/1
step
goto 60.1,40.1
.kill Arconus the Insatiable##20554 |q 10353/1
step
goto 61.1,45.4 |n
'Leave the Access Shaft Zeon |goto 61.1,45.4,0.5 |noway |c |q 10353
step
goto 59.4,45.0
.talk 20551
..turnin 10345
step
goto 59.2,32.6
.talk 20449
..turnin 10411
step
goto 59.5,32.4
.talk 20448
..turnin 10353
step
goto 60.1,31.7
.talk 20907
..turnin 10437
..accept 10438
step
goto 60.2,31.7
.talk 20903
.' Tell the dragon you are ready to fly.
.' Use the Phase Disruptor in your bags while flying around the Void Conduit |use Phase Disruptor##29778
.' Destroy the Void Conduit |q 10438/1
step
goto 60.1,31.7
.talk 20907
.turnin 10438
..accept 10439
step
goto 60.6,32.1
.talk 20985
.' Speak to Captain Saeed |q 10439/2
.' Tell him, "Let's go!"
step
.' Follow Captain Saeed and his men to 60.8,39.3 | goto 60.8,39.3
.talk 20985
.' Tell him, "I am ready"
..kill Dimensius the All-Devouring##19554 |q 10439/1
step
goto 60.1,31.7
.talk 20907
..turnin 10439
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..accept 10408
step
goto 53.7,42.4
.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
..kill Nexus-King Salhadaar##20454+ |q 10408/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10408
step
goto 44.1,36.1
.talk 20067
..accept 10290
step
goto 71.1,39.0
.' Click the Ethereum Transponder Zeta
.' Attempt to contact Wind Trader Marid.
.talk 20518
..turnin 10270
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 44.5,21.6
.from Farahlon Breaker##18886+ |tip If you're careful you can avoid having to fight the Farahkib Shardlings
..get 4 Raw Farahlite |q 10290/1
step
goto 44.0,36.0
.talk 20067
..turnin 10290
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
..turnin 10276
step
goto 44.7,34.9
.talk 20470
..accept 10335
step
goto 44.7,34.9
.talk 20471
..accept 10336
..accept 10855
step
goto 39.1,28.9
.from Gan'arg Mekgineer##16949+
..collect 5 Condensed Nether Gas##31653 |q 10855
step
goto 38.0,25.5
.talk 22293
..turnin 10850 |n
.' Destroy Inactive Fel Reaver |q 10855/1
step
goto 51.6,20.5
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker One |q 10335/1
step
goto 54.5,22.8
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Two |q 10335/2
step
goto 55.8,20.0
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Three |q 10335/3
step
goto 51.7,20.4
..kill 10 Hound of Culuthas##20141+ |q 10336/1
..kill 5 Eye of Culuthas##20394+ |q 10336/2
step
goto 44.7,34.9
.talk 20470
..turnin 10335
step
goto 44.7,34.9
.talk 20471
..turnin 10336
..turnin 10855
..accept 10856
step
goto 41.9,23.6
..kill 12 Wrathbringer##18858+ |q 10856/1
step
goto 44.7,34.9
.talk 20471
..turnin 10856
..accept 10857
step
goto 39.2,20.0
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [39.1,20.5]
.' Destroy the Western Teleporter |q 10857/1
|modelnpc Ironspine Forgelord##20928
step
goto 41.2,19.4
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [41.2,19.4]
.' Destroy the Central Teleporter |q 10857/2
|modelnpc Ironspine Forgelord##20928
step
goto 42.2,20.9
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [42.2,20.9]
.' Destroy the Eastern Teleporter |q 10857/3
|modelnpc Ironspine Forgelord##20928
step
goto 44.7,34.9
.talk 20471
..turnin 10857
step
goto 59.5,32.4
.talk 20448
..accept 10970
step
goto 56.6,37.7
.from Ethereum Assassin##20452+, Captain Zovax##20727+, Ethereum Researcher##20456+
.get Salvaged Ethereum Prison Key |q 10970/1
step
goto 59.5,32.4
.talk 20448
..turnin 10970
step
goto 59.5,32.4
.talk 20448
..turnin 10970
..accept 10971
step
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate. You can also farm Heroic Mana-Tombs for the Keys.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10971/1
step
goto 59.5,32.4
.talk 20448
..turnin 10971
step
.' After these quests are done, you will need to grind reputation to Exalted.
.' You can either do Heroic Mana Tombs and kill everything in the instance.
.' You can do the Obsidian Warbeads in Nagrand. |next "bead" |confirm
.' You can farm Ethereal in Netherstorm. |next "heap" |confirm
.' Or you turn in Ethereum Prisoner I.D. Tag's |next "keys" |confirm |tip We do not recommend this last option due to a very low drop rate for Ethereum Prison Keys.
step
label "keys"
goto 59.5,32.4
.talk 20448
..accept 10972
step
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10972/1
step
goto 59.5,32.4
.talk 20448
..turnin 10972
step
label "heap"
goto Netherstorm,30.8,75.0
.from Zaxxis Raider##18875+, Zaxxis Stalker##19642+
.collect Zaxxis Insignia##29209+ |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto 32.4,64.2
.talk 19880
.turnin 10308 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "bead"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect Obsidian Warbeads##25433 |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "exalted"
.' Congratulations, you are now Exalted with The Consortium.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Shattered Sun Offensive\\Dailies", [[
author support@zygorguides.com
description This section is required to acces the
description Shattered Sun Offensive daily quests.
achieveid 897
daily
#include "A_SSO_PreQuest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Neutral) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through getting Neutral reputation with Netherwing faction. You need to have Artisan flying to complete this section.
achieveid 898
startlevel 80
step
goto Shadowmoon Valley,62.9,59.5
.talk 22113
..accept 10804
step
goto 60.5,57.7
.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
.collect Rocknail Flayer Giblets##31373 |n
.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 60.5,57.7
.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
.' Feed 8 Netherwing Drakes |q 10804/1
step
goto 62.9,59.5
.talk 22113
..turnin 10804
..accept 10811
step
goto 68.2,60.4
.talk 21657
..turnin 10811
..accept 10814
step
goto 68.2,60.4
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
.kill 15 Dragonmaw Orc |q 10836/1
step
goto 68.2,60.4
.talk 21657
..turnin 10836
..accept 10837
step
goto 64.1,80.7
.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
.get 12 Nethervine Crystal |q 10837/1
step
goto 68.2,60.4
.talk 21657
..turnin 10837
..accept 10854
step
goto 67.4,59.3
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
..' Free 5 Enslaved Netherwing Drakes |q 10854/1
step
goto 68.2,60.4
.talk 21657
..turnin 10854
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
goto 62.9,59.5
.talk 22113
..turnin 10870
..accept 11012 |instant
..accept 11013
step
goto 66.2,85.7
.talk 23139
..turnin 11013
..accept 11014
step
goto 66.1,86.4
.talk 23140
..turnin 11014
step
goto 66.0,86.5
.talk 23141
..accept 11019 |instant
..accept 11049
step
goto 68.5,61.2
.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
.get 1 Netherwing Egg |q 11049/1
step
goto 66.0,86.5
.talk 23141
..turnin 11049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Neutral)", [[
author support@zygorguides.com
description This guide section will walk you through getting Friendly reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.3,90.2 |n
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c |q 11015
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c |q 11015
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
'Repeat this process daily until you are Friendly with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Friendly) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Friendly reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11053
step
goto 66.2,85.7
.talk 23139
..turnin 11053
step
goto 66.1,86.4
.talk 23140
..accept 11075
step
goto 66.8,86.1
.talk 23291
..accept 11054
step
goto 65.4,90.2
.talk 23149
..turnin 11075
step
'Go inside the mine to 71.6,87.6
.talk 23166
..accept 11083
step
goto 73.7,88.1
.kill 1 Crazed Murkblood Foreman##23305 |q 11083/1
.kill 5 Crazed Murkblood Miner##23324+ |q 11083/2
step
goto 71.6,87.6
.talk 23166
..turnin 11083
step
goto 64.8,85.6
.from Black Blood of Draenor##23286+
.collect Sludge-covered Object##32724+ |n
.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
.collect Murkblood Escape Plans##32726 |n
.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
..accept 11081
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c |q 11081
step
goto 65.4,90.2
.talk 23149
..turnin 11081
..accept 11082
step
'Go inside the mine and follow the path to 73.0,82.2
.talk 23309
..' Tell him you are here for him
.' Gather Murkblood Information |q 11082/1
.get Hand of the Overseer |q 11082/2
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c |q 11082
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around [60.4,45.2]
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Friendly)", [[
author support@zygorguides.com
description This guide section will walk you through getting Honored reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
'Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Honored) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Honored reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11084
step
goto 66.2,85.7
.talk 23139
..turnin 11084
step
goto 65.9,87.2
.talk 22433
..accept 11063 |instant
step
goto 65.2,85.7
.talk 23340
..accept 11064
.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
.' Defeat Murg "Oldie" Muckjaw |q 11064/1
step
goto 65.9,87.2
.talk 22433
..turnin 11064
step
goto 65.2,85.5
.talk 23342
..accept 11067
.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
.' Defeat Trope the Filth-Belcher |q 11067/1
step
goto 65.9,87.2
.talk 22433
..turnin 11067
step
goto 65.2,85.2
.talk 23344
..accept 11068
.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
.' Defeat Corlok the Vet |q 11068/1
step
goto 65.9,87.2
.talk 22433
..turnin 11068
step
goto 65.2,85.0
.talk 13437
..accept 11069
.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
.' Defeat Wing Commander Ichman |q 11069/1
step
goto 65.9,87.2
.talk 22433
..turnin 11069
step
goto 65.2,84.9
.talk 13181
..accept 11070
.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
.' Defeat Wing Commander Mulverick |q 11070/1
step
goto 65.9,87.2
.talk 22433
..turnin 11070
step
goto 65.5,85.3
.talk 23348
..accept 11071
.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
.' Defeat Captain Skyshatter |q 11071/1
step
goto 65.9,87.2
.talk 22433
..turnin 11071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Honored)", [[
author support@zygorguides.com
description This guide section will walk you through getting Revered reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
step
'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Revered) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Revered reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11092
step
goto 66.2,85.7
.talk 23139
..turnin 11092
..accept 11094 |only if rep ('The Scryers') >= Friendly
..accept 11099 |only if rep ('The Aldor') >= Friendly
step
goto 74.5,86.3
.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
.collect Partially Digested Hand##32621 |n
.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
..accept 11041
step
goto 70.2,84.3
.kill Barash the Den Mother##23269 |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer##23264 |q 11041/1
step
goto 66.2,85.7
.talk 23139
..turnin 11041
step
goto 56.3,59.6
.talk 21955
..turnin 11094
..accept 11095
only if rep ('The Scryers') >= Friendly
step
goto 56.5,58.7
.talk 23434
..turnin 11095
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 11099
..accept 11100
only if rep ('The Aldor') >= Friendly
step
goto 62.4,29.3
.talk 23452
..turnin 11100
only if rep ('The Aldor') >= Friendly
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Revered)", [[
author support@zygorguides.com
description This guide section will walk you through getting Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 56.5,58.7
.talk 23434
..accept 11097
.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
.' Protect Commander Hobb, he must survive
.' Defeat the Dragonmaw Forces |q 11097/1
only if rep ('The Scryers') >= Friendly
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 62.4,29.3
.talk 23452
..accept 11101
.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
.' Protect Commander Arcus, he must survive
.' Defeat the Dragonmaw Forces |q 11101/1
only if rep ('The Aldor') >= Friendly
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
..turnin 11097 |only if rep ('The Scryers') >= Friendly
..turnin 11101 |only if rep ('The Aldor') >= Friendly
step
'Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
author support@zygorguides.com
description This guide section will walk you through the final steps of getting your Netherdrake Mount,
description once you've earned Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c |q 11107
step
goto Shattrath City,66.6,16.4
.talk 23433
..turnin 11108
step
goto 66.8,17.6
.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
..accept 11113 |instant |or
..accept 11114 |instant |or
..accept 11112 |instant |or
..accept 11111 |instant |or
..accept 11110 |instant |or
..accept 11109 |instant |or
step
'Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Egg Hunting - Optimized Path", [[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
"start"
goto Shadowmoon Valley,69.4,63.6 |n
.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
step
goto 70.1,62.0 |n
.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.7 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 70.9,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 71.3,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.8 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
goto 70.0,60.3 |n
.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 69.7,58.5 |n
.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
goto 68.1,59.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.3,59.8 |n
.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
step
goto 68.5,61.2 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
step
goto 67.2,61.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
step
goto 67.2,62.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.9,62.5 |n
.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
step
goto 76.0,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
step
goto 75.2,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
step
goto 73.7,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
step
goto 73.0,84.0 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
goto 71.0,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 68.2,81.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 66.2,83.8 |n
.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.7,84.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.4,76.5 |n
.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.2,75.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.2,74.2 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
step
goto 61.7,73.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
step
goto 63.0,71.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 61.3,70.7 |n
.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.6,73.4 |n
.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.3,74.1 |n
.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.0,76.7 |n
.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.6,78.3 |n
.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 61.2,77.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 62.2,77.8 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.0,83.7 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.5,84.8 |n
.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 66.0,86.5
.talk 23141
.' Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506
step
goto 64.0,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
goto 62.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 60.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.1,89.5 |n
.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 64.9,90.8 |n
.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
step
'Go inside the mine to [64.8,87.2] |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
goto 68.3,84.0 |n
.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
step
goto 68.8,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
goto 72.3,87.3 |n
.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
goto 69.9,85.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.0,89.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 68.5,81.6 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 64.8,83.0 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 65.2,84.2 |n
.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
step
goto 65.3,90.2 |n
.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
goto 65.5,94.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 68.0,94.9 |n
.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 69.6,91.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 70.9,89.2 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 71.4,86.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
goto 72.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 73.4,90.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 75.8,91.6 |n
.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
step
goto 77.6,92.6 |n
.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.4,95.7 |n
.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.3,85.9 |n
.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 76.5,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
goto 78.9,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
goto 78.1,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
goto 78.8,79.6 |n
.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
'This is the end of the path.
.' Click here to go back to the beginning of the path. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Ogri'la\\Pre-Quests and Dailies", [[
description This will walk you through the Pre-Quests for Ogri'la.
achieveid 896
step
'Proceeding to Prequests |only if not completedq(11091)
.' Proceeding to Dailies |next "reset" |only if completedq(11091)
step
goto Shattrath City,56.5,49.1
.talk 22497
.accept 10984
step
goto 64.9,68.1
.talk 22940
.turnin 10984
..accept 10983
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10983
..accept 10995
..accept 10996
..accept 10997
step
goto Blade's Edge Mountains,60.9,47.6
.kill Grulloc##20216 |n
.click Grulloc's Dragon Skull##7354
.collect 1 Grulloc's Dragon Skull |q 10995/1
step
map Blade's Edge Mountains
path follow loose; curved
path	59.3,64.7	59.6,56.8	65.0,54.1
path	67.5,58.5	68.4,65.8	68.4,73.7
.' Follow this Path to find Maggoc.
.kill Maggoc##20600 |n
.click Maggoc's Treasure Chest##41
.collect 1 Maggoc's Treasure Chest |q 10996/1
step
goto Terokkar Forest,20.3,17.5
.from Slaag##22199
.click Slaag's Standard##7215
.collect 1 Slaag's Standard##32382 |q 10997/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10995
.turnin 10996
.turnin 10997
..accept 10998
step
goto 77.3,31.8
' Stand in the fire until Vim'gol the Vile spawns
.from Vim'gol the Vile##22911 |n
.click Vim'gol's Vile Grimoire##255
.get 1 Vim'gol's Vile Grimoire##32358 |q 10998/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10998
..accept 11000
step
goto 60.0,24.1
.' Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
.' Kill all adds that spawn, defending the soul grinder.
.' Defeat Skulloc Soul Grinder
.click Skulloc's Soul##7244
.' Capture Skulloc's Soul |q 11000/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 11000
..accept 11009
step
goto Blade's Edge Mountains,28.8,57.3
.talk 23233
.turnin 11009
..accept 11025
step
goto Blade's Edge Mountains,28.8,62.4
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
..get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.4
.talk 23233
.turnin 11025
..accept 11058
step
goto 28.4,57.6
.talk 23316
..accept 11030
step
goto 29.2,65.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect Apexis Shard##32569 |q 11058
step
goto 27.7,68.1
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11058/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080
step
goto 29.2,65.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11080
step
goto 31.2,52.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect 10 Apexis Shard##32569 |q 11030
step
goto 32.8,40.5
.click a Fel Crystalforge##7392
|tip It looks like a metal machine with green bubbling floating out of it quickly.
.' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
..accept 11061
step
goto 28.8,57.4
.talk 23233
..accept 11062
step
goto 27.4,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.4,52.7
.talk 23334
..accept 11119
step
goto 27.9,52.2
.talk 23473
..turnin 11119
step
goto 28.0,51.5
.talk 23335
..accept 11065
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11065/1
step
goto 28.8,57.4
.talk 23233
..accept 11059
step
goto 31.2,52.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect 35 Apexis Shard##32569 |q 11059
step
goto 31.8,63.8
.' Click the Apexis Monument |tip It's a huge floating crystal that changes colors.
..' Insert 35 Apexis Shards, and begin!
.' Click any of the 4 big colored buttons on the ground |tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
.from Apexis Guardian##22275
.get Apexis Guardian's Head |q 11059/1
step
goto 28.8,57.4
.talk 23233
..turnin 11059
step
goto 28.0,51.5
.talk 23335
..turnin 11065
step
goto 27.4,52.7
.talk 23334
..accept 11078
step
goto 31.2,52.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect 35 Apexis Shard##32569 |q 11078
step
goto 27.2,64.8
.' Click Rivendark's Egg |tip It looks like a big brown spiked egg sitting in a nest on the ground.
..' Place 35 Apexis Shards near the dragon egg to crack it open
.from Rivendark##23061
.get Dragon Teeth |q 11078/1
step
goto 31.2,52.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect 10 Apexis Shard##32569 |q 11061
step
goto 27.4,52.7
.talk 23334
..turnin 11078
step
goto 54.4,10.8
.click the Bash'ir Crystalforge##7392
|tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
.' Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
.get Unstable Flask of the Sorcerer |q 11061/1
step
goto 28.4,57.6
.talk 23316
..turnin 11061
step
goto 28.5,58.1
.talk 23300
..accept 11079
step
goto 31.2,52.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect 35 Apexis Shard##32569 |q 11079
step
goto 33.9,44.2
.' Click the Fel Crystal Prism |tip It's a big green crystal floating in green smoke above 4 metal vents.
..' Place 35 Apexis Shards into the prism
.' There are 4 different demons that can spawn:
.from Mo'arg Incinerator##23354
.from Braxxus##23353
.from Galvanoth##22281
.from Zarcsin##23355
.get Fel Whip |q 11079/1
step
goto 28.5,58.1
.talk 23300
..turnin 11079
step
goto 28.8,57.4
.talk 23233
..accept 11091
step
goto 28.1,58.7
.talk 23428
..turnin 11091
step
label reset
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.accept 11080
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.accept 11026
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.accept 11051
|only if completedq(11026)
step
goto 28.0,51.5
.talk 23335
.accept 11066
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.accept 11023
step
goto 29.2,65.2
.' Mixed in the larger clusters all around this area.
.click Apexis Shard Formation##7210
|tip You can also get these off the corpses of the Flayers
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 29.1,79.3
.' Use your Banishing Crystal |use Banishing Crystal##32696
.' Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
.' 15 Demons Banished |q 11026/1
|modelnpc 19973
|modelnpc 22204
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto 29.1,79.3
.' Use your Banishing Crystal |use Banishing Crystal##32696
.' Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
.' 15 Demons Banished |q 11051/1
|modelnpc 19973
|modelnpc 22204
|only if completedq(11026)
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11066/1
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11023/1
step
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.turnin 11080
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.turnin 11026
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.turnin 11051
|only if completedq(11026)
step
goto 28.0,51.5
.talk 23335
.turnin 11066
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.turnin 11023
step
'You have reached the end of the dailies.
.' Click here to go back to the beginning of this guide. |confirm
|next "reset" |only if rep("Ogri'la")<=Exalted
|next "exalted" |only if rep("Ogri'la")==Exalted
step
label exalted
'Congratulations, you are now Exalted with Ogri'la.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Honor Hold",[[
author support@zygorguides.com
step
goto Blasted Lands,59.4,14.9
.talk 3546
.buy 1 Nethergarde Bitter##23848 |q 9563 |future
step
goto 54.7,50.5
.talk 16841
..accept 10119
step
goto Hellfire Peninsula,87.3,50.7
.talk 19229
..turnin 10119
..accept 10288
step
goto 87.4,52.4
.talk 18931
..turnin 10288
..accept 10140
step
goto Hellfire Peninsula 54.5,62.8
.talk 19308
..turnin 10140
..accept 10254
step
goto 54.2,63.6
.talk 16826
.home Honor Hold
step
goto 56.6,66.7
.talk 16819
..turnin 10254
..accept 10141
..accept 10160
step
goto 51.2,60
.talk 21209
..accept 10055
step
goto 50.9,60.2
.talk 16820
..turnin 10160
..accept 10482
step
goto 61.7,60.8
.talk 19309
..turnin 10141
..accept 10142
step
goto 60.4,52.1
.' Click the Salvaged Metal and Wood|They are scraps on the ground around this area.
.get 8 Salvaged Metal |q 10055/1
.get 8 Salvaged Wood |q 10055/2
.from Bonechewer Evoker##19701, Bonechewer Raider##16925, Bonechewer Mutant##16876, Bonechewer Scavenger##18952 |q 10482/1
|model Salvageable Wood##6481
|model Salvageable Metal##6999
step
goto 65.8,54.1
.' Be on the lookout for the giant Fel Reaver
.kill 1 Dreadcaller##19434 |q 10142/1
.kill 4 Flamewaker Imp##19136+ |q 10142/2
.kill 6 Infernal Warbringer##19261+ |q 10142/3
step
goto 61.7,60.8
.talk 19309
..turnin 10142
..accept 10143
step
goto 51.2,60
.talk 21209
..turnin 10055
..accept 10078
step
goto 50.9,60.2
.talk 16820
..turnin 10482
..accept 10483
step
goto 71.3,62.8
.talk 19310
..turnin 10143
..accept 10144
step
goto 72.0,59.6
.from Wrathguard##18975, Doomwhisperer##18981
.collect 4 Demonic Rune Stone##28513|q 10144
step
goto 72.7,59
.' Stand inside the portal and click it to destroy it |q 10144/2
step
goto 71.7,56.4
.from Wrathguard##18975, Doomwhisperer##18981
.collect 4 Demonic Rune Stone##28513|q 10144
step
goto 71.4,55.2
.' Stand inside the portal and click it to destroy it |q 10144/1
step
goto 71.3,62.8
.talk 19310
..turnin 10144
..accept 10146
step
goto 71.4,62.5
.talk 19409
.' Take the flight
.' Click the bomb in your bags, bomb Gateway Shaadraz |q 10146/2|use Seaforium PU-36 Explosive Nether Modulator##28038
.' Click the bomb in your bags, bomb Gateway Murketh |q 10146/1|use Seaforium PU-36 Explosive Nether Modulator##28038
step
goto 71.4,62.7
.talk 19310
..turnin 10146
..accept 10340
step
goto 78.4,34.9
.talk 20234
.fpath Shatter Point
step
goto 78.4,34.9
.talk 20234
..turnin 10340
..accept 10344
step
goto 79.3,33.9
.talk 20232
..turnin 10344
..accept 10163
step
goto 78.3,34.5
.talk 20235
.' Take a flight to the Abyssal Shelf
.' Use the Area 52 Special bomb in your bags to bomb the mobs|use Area 52 Special##28132|tip If you don't complete this in the first run, you can keep flying until it's done.
..kill 20 Gan'arg Peon##19398+ |q 10163/1
..kill 5 Mo'arg Overseer##19397+ |q 10163/2
..'Destroy 5 Fel Cannons |q 10163/3
step
goto 79.3,33.9
.talk 20232
..turnin 10163
..accept 10382
step
goto 68.3,28.6
.talk 20793
..turnin 10382
step
goto 54.3,63.6
.talk 16825
..accept 10058
step
goto 54.3,63.6
.talk 16826
..accept 9558
step
goto 56.7,66.5
.talk 16839
..accept 10047
step
goto 50.9,60.2
.talk 16827
..accept 10050
step
goto 52,62.6
.talk 16837
..accept 9355
..accept 10079
step
'Go inside the cave to 54.9,62.9|goto 54.9,62.9
.kill 12 Gan'arg Sapper##18827+ |q 10079/1
step
'Go outside the cave to 52,62.6|goto 52,62.6
.talk 16837
..turnin 10079
..accept 10099
step
'Go inside the cave to 56.3,61.4|goto 56.3,61.4
.kill Z'kral##18974 |q 10099/1|tip He is all the way at the bottom of the cave way in the back of the big room.
step
'Go outside the cave to 52,62.6|goto 52,62.6
.talk 16837
..turnin 10099
step
goto 66.1,48.8
.' Click the Trampled Skeletons|tip They look like little brown ribcages and spines.  You will find them on the grey road.  They are very easy to miss, but once you find one you will find them really fast.
.' Cleanse 8 Trampled Skeletons |q 10047/1
step
goto 58.7,47
.' Use your Flaming Torch on the Eastern Thrower to burn it |q 10078/1|use Flaming Torch##26002|tip It's a big catapult.
step
goto 55.9,46.7
.' Use your Flaming Torch on the Central Eastern Thrower to burn it |q 10078/2|use Flaming Torch##26002|tip It's a big catapult.
step
goto 53.5,47.2
.' Use your Flaming Torch on the Central Western Thrower to burn it |q 10078/3|use Flaming Torch##26002|tip It's a big catapult.
step
goto 52.8,47.1
.' Use your Flaming Torch on the Western Thrower to burn it |q 10078/4|use Flaming Torch##26002|tip It's a big catapult.
step
goto 65.8,67.2
.from Bleeding Hollow Tormentor##19424+, Bleeding Hollow Peon##16907+,Bleeding Hollow Grunt##16871+
.get Cursed Talisman|q 10483/1
step
goto 71,63.4
.talk 21133
..turnin 10483
..accept 10484
step
goto 55,86.8
.click Mysteries of the Light##6845
.get Mysteries of the Light |q 10058/1
step
goto 58,79
.kill 10 Unyielding Sorcerer##16905+ |q 10050/2
.kill 5 Unyielding Knight##16906+ |q 10050/3
.kill 12 Unyielding Footman##16904+ |q 10050/1
step
goto 49.2,74.8
.talk 19367
..accept 10161
.talk 19344
..accept 9349
step
goto 41.2,84.4
.click Ravager Egg##1867
.from Razorfury Ravagers##16933
.get 12 Ravager Egg |q 9349/1
step
goto 49.2,74.8
.talk 19344
..turnin 9349
..accept 9361
step
goto 50.2,74.8
.from Deranged Helboar##16863
.get Tainted Helboar Meat|n
.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268|tip The meat won't become purified every time, it can become toxic as well.
.get 8 Purified Helboar Meat|q 9361/1
step
goto 49.2,74.8
.talk 19344
..turnin 9361
..accept 9356
step
goto 58.1,71.3
.from Bonestripper Buzzard##16972+
.get 12 Plump Buzzard Wing |q 9356/1
.click Zeppelin Debris##7000
.get 30 Zeppelin Debris |q 10161/1
step
goto 49.2,74.8
.talk 19367
..turnin 10161
..accept 9351
.talk 19344
..turnin 9356
step
goto 47.8,65.8
.kill 15 Marauding Crust Burster##16857+ |q 9355/1|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.get Eroded Leather Case|n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 52,62.6
.talk 16837
..turnin 9355
step
goto 51.2,60
.talk 21209
..turnin 10078
step
goto 50.9,60.2
.talk 16827
..turnin 10050
..accept 10057
step
goto 54.3,63.4
.talk 16825
..turnin 10058
step
goto 56.7,66.5
.talk 16839
..turnin 10047
step
goto 24.0,72.3
.talk 16851
..accept 9563
..turnin 9563
..accept 9420
step
goto Hellfire Peninsula 23.9,72.2
.talk 16850
..turnin 9558
..accept 9417
..accept 9385
step
goto 26.1,75.9
.kill 4 Haal'eshi Windwalker##16966+ |q 9417/1
.kill 6 Haal'eshi Talonguard##16967+  |q 9417/2
.click Kaliri Nest##7143+
.from Male Kaliri Hatchling##17039+, Kaliri Swooper##17053+, Female Kaliri Hatchling##17034+, Kaliri Matriarch##17035+
.get 8 Kaliri Feather|q 9420/1
step
goto 26.1,77.1|n
.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.5|noway|c |future |q 9418
step
goto 25.7,75.1
.from Avruu##17084
.collect 1 Avruu's Orb |n
.' Click Avruu's Orb |use Avruu's Orb##23580
..accept 9418
step
goto 29,81.5
.click Haal'eshi Altar##6964
.' Place Avruu's Orb on the Altar
.' Fight Aeranas until he's almost dead
.talk 17085
..turnin 9418
step
goto 24,72.1
.talk 16850
..turnin 9417
.talk 16851
..turnin 9420
step
goto Hellfire Peninsula 22.4,67.4
.from Quillfang Ravager##16934+, Quillfang Skitterer##19189+
.kill 10 Quillfang Ravager |q 9385/1
step
goto Hellfire Peninsula 23.9,72.2
.talk 16850
..turnin 9385
step
goto 49.5,81.8
.from Uncontrolled Voidwalker##16975+
.get 10 Condensed Voidwalker Essence |q 9351/1
step
goto 53.6,81.1
.kill Arch Mage Xintor##16977 |q 10057/1|tip Near a bunch of practice fighting dummies.
step
goto 54.7,83.7
.kill Lieutenant Commander Thalvos##16978 |q 10057/2|tip Walking around on a black platform thing. He's a blue ghost dwarf.
step
goto 49.2,74.8
.talk 19367
..turnin 9351
step
goto 50.9,60.2
.talk 16827
..turnin 10057
step
goto 64.2,71.8
.from Bleeding Hollow Peon##16907, Bleeding Hollow Grunt##16871
.get 12 Cursed Talisman |q 10484/1
step
goto 71,63.4
.talk 21133
..turnin 10484
..accept 10485
step
goto 71.3,62.8
.talk 19409
..accept 10895
step
goto 70.1,69.1
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Forge Tower|q 10895/3
step
goto 70.9,71.3
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Foothill Tower |q 10895/4
step
goto 70.1,76.9
.from Warlord Morkh##16964
.get Morkh's Shattered Armor|q 10485/1
step
goto 66.4,76.6
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Southern Tower |q 10895/2
step
goto 67.9,67
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Northern Tower |q 10895/1
step
goto 71,63.4
.talk 21133
..turnin 10485
..accept 10903
step
goto 71.3,62.8
.talk 19409
..turnin 10895
step
goto 54.3,63.6
.talk 22430
..turnin 10903
..accept 10909
..accept 10916
step
goto 54.2,63.3
.click Fei Fei's Cache##20
.get Draenei Prayer Beads|q 10916/1
step
goto 45,75
.' Use the Anchorite Relic in your bags |use Anchorite Relic##31772
.' Pull orcs to the relic
.' Kill the orcs and a Fel Spirit will spawn
.from Fel Spirit##22454+
.' Jules Avenged |q 10909/1
|modelnpc Shattered Hand Berserker##16878
step
goto 54.3,63.6
.talk 22430
..turnin 10909
..turnin 10916
..accept 10935
step
goto 54.0,63.5
.talk 22431
..'Click 'I am ready...'
..'Target the purple skulls and oozes
..'Use the Ritual Prayer Beads when enemies are in the room |use Ritual Prayer Beads##31828
..'After the exorcism is done, talk to Colonel Jules on the bed to save him |q 10935/1
|modelnpc Colonel Jules##22432
|modelnpc Darkness Released##22507
|modelnpc Foul Purge##22506
step
goto 54.3,63.6
.talk 22430
..turnin 10935
..accept 10936
step
goto 56.6,66.7
.talk 16819
..turnin 10936
step
goto Hellfire Ramparts 48.5,68.1
.talk 54603
..accept 29528
..accept 29529
..accept 29594
step
'As you go through the instance do the following:
.click Hellfire Supplies##7001
.' You will need to collect 3 supplies
|confirm |q 29594
step
goto Hellfire Ramparts 74.8,33.2
.from Watchkeeper Gargolmar##17306+
.get Gargolmar's Hand |q 29529/1
step
goto Hellfire Ramparts 38.4,19.4
.from Omor the Unscarred##17308+
.get Omor's Hoof |q 29529/1
step
goto Hellfire Ramparts 35.9,81.4
.from Nazan##17307+
.get Nazan's Head |q 29528/2
step
'Make sure you have collected 3 Hellfire Supplies before you turn in your quests.
.click Hellfire Supplies##7001
|tip They are all over this instance.
.get 3 Hellfire Supplies |q 29594/1
step
goto Hellfire Ramparts 48.5,68.1
.talk 54603
..turnin 29528
..turnin 29529
..turnin 29594
step
goto The Blood Furnace 50.9,90.2
.talk 54629
..accept 29538
..accept 29539
..accept 29540
step
'As you go through this instance,
.from Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+, Shadowmoon Summoner##17395+, Laughing Skull Legionnaire##17626+
..collect 10 Fel Orc Blood Vial##29538 |n
|confirm |q 29538
step
goto The Blood Furnace 37.1,40.8
.from The Maker##17381+
.get Fel Infusion Rod |q 29538/2
step
goto The Blood Furnace 65.2,41.1
.' Fully Investigate the Blood Furnace |q 29539/1
step
goto The Blood Furnace 58.3,41.2
.kill Keli'dan the Breaker##17377 |q 29540/1
step
'Run through this tunnel to turn in your quests |goto The Blood Furnace 62.3,51.4 |c |q 29540
step
goto The Blood Furnace 50.9,90.2
.talk 54629
..turnin 29538
..turnin 29539
..turnin 29540
step
goto Shadowmoon Valley,23.5,34.9
.kill Overseer Ripsaw##21499|n
.collect Illidari-Bane Shard##30756 |use Illidari-Bane Shard##30756 |n
..accept 10621
step
goto Shadowmoon Valley,36.8,54.9
.talk 19370
..turnin 10621
..accept 10626
step
goto 22.7,35.3
.from Makazradon##21501
.get Makazradon's Glaive##30786 |q 10626/1
step
goto 23.2,38.4
.from Morgroron##21500
.get Morgroron's Glaive##30785 |q 10626/2
step
goto Shadowmoon Valley,36.8,54.9
.talk 19370
..turnin 10626
..accept 10662
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10662
..accept 10664
step
goto Shattrath City 64.7,70.7
.talk 19678
.buy 1 Demon Warding Totem##30823 |q 10664/3
step
goto Netherstorm 45.0,36.5
.talk 20981
.buy 1 Adamantite Frame |q 10664/1
step
Make sure you have everything on this list.
.collect 1 Adamantite Frame##23784 |q 10664/1
.collect 4 Heavy Knothide Leather##23793 |q 10664/2
.collect 1 Demon Warding Totem##30823 |q 10664/3
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10664
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..accept 10670 |tip You'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to receive this quest
|confirm
step
goto Hellfire Peninsula,56.6,66.6
.talk 16819
..accept 10400
..accept 10937
..accept 29689
step
goto Hellfire Peninsula/0 47.8,56.3
.kill Drillmaster Zurok##19312 |q 10937/1
step
goto Hellfire Peninsula/0 43.7,31.6
.kill Arazzius the Cruel##19191 |q 10400/1
step
goto Hellfire Peninsula/0 56.6,66.7
..turnin 10400
..turnin 10937
step
goto The Shattered Halls/1 58.6,88.4
.talk 54933
..turnin 29689
goto The Shattered Halls 58.6,88.5
.talk 54934
..accept 29652
step
goto 58.6,88.5
.talk 54933
..accept 29649
..accept 29656
..accept 29654
step
goto 34.9,69.7
.kill 4 Shattered Hand Legionnaire##16700 |q 29652/1
step
goto 34.9,69.7 |n
.' Jump down into the sewers here. |goto 34.9,69.7 <5 |noway |c |q 29649
step
goto 37.0,61.8 |n
.' Follow the sewer and turn left. Enter the Throne of the Damned here. |goto 37.0,61.8 <5 |noway |c |q 29649
step
goto 34.6,62.1
.from Grand Warlock Nethekurse##16807
.collect Grand Warlock's Amulet##23735 |q 29649
step
goto 31.9,60.6
.' Use your Grand Warlock's Amulet next to this fire. |use Grand Warlock's Amulet##23735
.get Fel Ember |q 29649/1
step
goto The Shattered Halls 29.4,14.9
.' Run down this hallway and kill all the Orcs. Watch out for flaming arrows shot at the ground.
.from Shattered Hand Blood Guard##17461+, Shattered Hand Archer##17427+
|confirm |q 29654
step
goto 53.8,26.4
.kill 2 Shattered Hand Champion##17671+ |q 29652/3
.kill 2 Shattered Hand Centurion##17465+ |q 29652/2
step
goto 53.3,33.6
.from Warbringer O'mrogg##16809 |tip He will fear random party members, this can make the fight healing intensive.
.get O'mrogg's Warcloth |q 29656/1
step
goto 67.8,55.3
.from Warchief Kargath Bladefist##16808 |tip This boss will call in Reaver Guards to help during the fight. Tank needs to pick up aggro on them.
.from Reaver Guard##17623+
.get Warchief Kargath's Fist##23723 |q 29654/1
step
goto 67.2,51.8
.talk 54933
..turnin 29652
..turnin 29649
..turnin 29656
..turnin 29654
step
goto Terokkar Forest,77.6,38.7
.talk 21465
.turnin 10670
step
'At this point you will have to grind Instances in order to gain reputation.
.' If you're past honored, you can do Shattered Halls, Heroic Hellfire Ramparts or Heroic Blood Furnace.
..' Heroic Shattered Halls should also be available.  You can also do the PVP daily quest to earn rep
..' Click here to proceed. |confirm
step
goto Hellfire Peninsula,56.3,62.8
.talk 18266
..accept 13410 |only DeathKnight
..accept 13408 |only !DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13410/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13410/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13410/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13408/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only !DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13408/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only !DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13408/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
|only !DeathKnight
step
goto Hellfire Peninsula,56.3,62.8
.talk 18266
.turnin 13408 |only DeathKnight
.turnin 13410 |only !DeathKnight
step
'After the quest is completed you will unlock a daily version of the quest.
|confirm
step
label fort
goto Hellfire Peninsula,56.3,62.8
.talk 18266
..accept 10106
.' You can also run _Hellfire Ramparts_, _The Blood Furnace_ and _The Shattered Halls_ to gain reputation.
step
goto 40.1,48.5
.' Capture The Overlook. |q 10106/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 35.7,51.5
.' Capture The Stadium. |q 10106/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 40.2,56.7
.' Capture Broken Hill. |q 10106/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto Hellfire Peninsula,56.3,62.8
.talk 18266
..turnin 10106
|next "fort" |only if rep('Honor Hold')<=Revered
|next "grats" |only if rep('Honor Hold')==Exalted
step
label grats
'Congratulations, you are now Exalted with Honor Hold!!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Lower City",[[
description This guide will walk you through how to earn
description Exalted with the Lower City.
step
goto Shattrath City,52.6,21
.talk 22292
..accept 10847
step
goto Terokkar Forest 49.9,16.5 |n
.' The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c |q 10847
step
goto 50.1,19.4
.click Eye of Veil Reskk##621
.get Eye of Veil Reskk|q 10847/1
step
goto 57.9,23.2
.click Eye of Veil Shienor##621 |tip Climb the path inside the other tree, run across the bridge
.get Eye of Veil Shienor|q 10847/2
step
goto Shattrath City,52.6,21
.talk 22292
..turnin 10847
..accept 10849
step
goto Terokkar Forest,37.4,51.5
.talk 22272
..turnin 10849
..accept 10839
step
goto 37.7,51.3
.talk 22365
..accept 10852
step
goto 37.4,51.2
.talk 22370
..accept 10878
step
goto 39.6,58.6
.kill 8 Cabal Skirmisher##21661+ |q 10878/1
.kill 4 Cabal Spell-weaver##21902+ |q 10878/2
.kill 2 Cabal Initiate##21907+ |q 10878/3
.' Get the Cabal Orders from orcs in this area
.' Click the Cabal Orders |use Cabal Orders##31707
..accept 10880
step
goto 37.4,51.2
.talk 22370
..turnin 10880
..accept 10881
..turnin 10878
step
goto 37.4,51.2
.talk 22370
..turnin 10878
step
goto 29.7,51.7
.click Cabal Chest##10
.get Gavel of K'alen |q 10881/2
step
goto 32.1,51.2
.click Cabal Chest##10
.get Drape of Arunen|q 10881/1
step
goto 31.2,46.7
.click Cabal Chest##10
.get Scroll of Atalor|q 10881/3
step
'Go outside to 37.4,51.2 |goto 37.4,51.2
.talk 22370
..turnin 10881
step
goto 32.3,41.7
.from Skithian Windripper##18453+,Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
.get Veil Skith Prison Keys|n
.click Veil Skith Cage##1787
.' Rescue 12 Children |q 10852/1
step
goto 30.8,42.1
.' Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
.' Purify the Darkstone of Terokk |q 10839/1
|model Darkstone of Terokk##2710
step
goto 37.4,51.5
.talk 22272
..turnin 10839
..accept 10848
step
goto 37.7,51.3
.talk 22365
..turnin 10852
step
goto 30.2,51.1
.kill 4 Deathtalon Spirit##21198+ |q 10848/1
.kill 4 Screeching Spirit##21200+ |q 10848/2
.kill 2 Spirit Raven##21324+ |q 10848/3
step
goto 37.4,51.5
.talk 22272
..turnin 10848
..accept 10861
step
goto 24.2,70.5
.click Cursed Egg##477
.' Redeem 3 Hatchlings |q 10861/1
.kill 3 Malevolent Hatchling##22337+ |q 10861/2
step
goto 31,76.1
.talk 22446
..accept 10913
.talk 22458
..accept 10922
.' Escort the Archaeologists |q 10922/1
step
goto 31,76.1
.talk 22481
..turnin 10922
step
goto 35,76.5
.' Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769
.' Burn 8 Slain Sha'tar Vindicator corpses |q 10913/1
.' Burn 8 Slain Auchenai Warrior corpses |q 10913/2
|modelnpc Slain Auchenai Warrior##21846
|modelnpc Slain Sha'tar Vindicator##21859
step
goto 31,76.1
.talk 22446
..turnin 10913
..accept 10914
step
goto 36.7,74.4
.kill 12 Auchenai Initiate##21284+ |q 10914/1
.kill 5 Auchenai Doomsayer##21285+ |q 10914/2
step
goto 31,76.1
.talk 22446
..turnin 10914
..accept 10915
step
goto 35.9,65.7
.click Auchenai Coffin##7251
.kill Reanimated Exarch##22452 |q 10915/1
step
goto 31,76.1
.talk 22446
..turnin 10915
step
goto 37.4,51.5
.talk 22272
..turnin 10861
..accept 10874
step
goto 37.5,50.8
.talk 22278
..accept 10840
..accept 10842
step
goto 47.0,55.2 |n
.' Enter the tomb |goto 47.0,55.2,0.5 |noway |c |q 10842
step
goto 47.6,54.8
.kill 10 Ethereal Nethermancer##21370+ |q 10840/1
.kill 10 Ethereal Plunderer##21368+ |q 10840/2
.from Vengeful Draenei##21636+
.' Slay 5 Vengeful Draenei |q 10842/1
step
goto 47.0,55.2 |n
.' Leave the tomb |goto 47.0,55.2,0.5 |noway |c |q 10842
step
goto 54.9,66.1 |n
.' The path up to Veil Shalas starts here |goto Terokkar Forest,54.9,66.0,0.5 |noway |c |q 10874
step
goto 57.3,65 |n
.' The path up to the Sapphire Signal Fire starts here |goto 57.3,65.0,0.3 |noway |c |q 10874
step
goto 55.2,67.1
.click Sapphire Signal Fire##7289 |tip Across the hanging bridge and down the spiraling stairs.
.' Extinguish the Sapphire Signal Fire |q 10874/1
step
goto 57,71.8 |n
.' The path up to the Emerald Signal Fire starts here |goto 57.0,71.8,0.3 |noway |c |q 10874
step
goto 55.5,69.7
.click Emerald Signal Fire##7200 |tip Over the hanging bridge.
.' Extinguish the Emerald Signal Fire|q 10874/2
step
goto 56,72.7 |n
.' The path up to the Bloodstone and Violet Signal Fires starts here |goto 56.0,72.7,0.3 |noway |c |tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little. |q 10874
step
goto 56.1,72.4
.click Bloodstone Signal Fire##7290 |tip Up the path inside the tree, on your left as you reach the top.
.' Extinguish the Bloodstone Signal Fire |q 10874/4
step
goto 56.7,69.2
.click Violet Signal Fire##5151 |tip Across the hanging bridge from the Bloodstone Signal Fire.
.' Extinguish the Violet Signal Fire|q 10874/3
step
goto 37.4,51.5
.talk 22272
..turnin 10874
..accept 10889
step
goto 37.5,50.8
.talk 22278
..turnin 10840
..turnin 10842
step
goto Shattrath City 52.6,21
.talk 22292
..turnin 10889
.talk 22373
.' You're about to fight 3 waves of birds and a bird boss. Make sure you're ready.
..accept 10879
step
goto 52.6,21
.' Fight off the Minions of Terokk and eventually the Avatar of Terokk
.' Thwart the Attack |q 10879/1
|modelnpc Avatar of Terokk##22375
|modelnpc Minion of Terokk##22376
step
goto 52.6,21
.talk 22292
..turnin 10879
step
goto Shattrath City,48.2,18.7
.talk 22429
..accept 10917
step
goto 58.0,15.2
.talk 19045
..accept 10180 |or
..accept 10097 |or
step
goto Terokkar Forest,50.2,17.4
.from Shienor Talonite##18449+, Shienor Sorcerer##18450+
.get 30 Arakkoa Feather |q 10917/1
step
goto 37.0,49.5
.talk 18675
..accept 10030
step
goto 32.4,56.5
.click Restless Bones |tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
.get 10 Restless Bones |q 10030/1
step
goto 31.2,52.7 |n
.' Enter the crypt |goto 31.2,52.7,0.5 |noway |c |q 10030
step
goto 30.6,49.1
.talk 22377
..accept 10887
step
goto 33.8,51.6 |n
.' Protect Akuno and escort him to this spot |goto 33.8,51.6,0.5 |noway |c |q 10887
.' Help Akuno find his way to the Refugee Caravan |q 10887/1
step
goto 38.1,51.8
.talk 22370
..turnin 10887
step
goto 35.1,66.3
.talk 19417
..turnin 10030
..accept 10031
step
goto 31.7,64.9
.kill 10 Lost Spirit##18460+ |q 10031/1
step
goto 31.0,76.2
.talk 22481
..accept 10929
step
goto 40.1,77.5
.kill 10 Broken Skeleton##16805+ |q 10031/2
.' You can find more around [48.2,71.9]
step
goto 37.6,77.3
.' Use your Fumper while standing on the ground |use Fumper##31810 |tip You can just keep using it in the same spot, it doesn't matter.
.from Mature Bone Sifter##22482+
.get 8 Mature Bone Sifter Carcass |q 10929/1
step
goto 31.0,76.2
.talk 22481
..turnin 10929
..accept 10930
step
goto 48.0,75.1
.from Decrepit Clefthoof##22105+
.' Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825 |tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
.from Hai'shulud##22038
.get Enormous Bone Worm Organs |q 10930/1
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 42.1,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 42.1,65.6,0.5 |noway |c |q 10898
step
goto Sethekk Halls 72.3,35.5
.talk 18933
..turnin 10180
step
goto Terokkar Forest 31.0,76.2
.talk 22481
..turnin 10930
step
goto 37.0,49.5
.talk 18675
..turnin 10031
step
goto Shattrath City 52.6,21.0
.talk 22292
..turnin 10898
step
goto 50.3,18.3
.talk 22429
..turnin 10917
step
'At this point you will need to Farm instances for reuptation.
.' You can farm Auchenai Crypts until 5,999/6,000 Friendly.  After you reach Honored though, you will only be able to do Heroic mode for reputation.
.' You can also grind Shadow Labyrinth and Sethekk Halls up until exalted without Heroic mode active.  You can gain addition reputation by doing it on Heroic however.
.' Click here to move onto Daily Heroic quests that may be available for reputation turn ins. |confirm
step
label h_daily
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11373 |or
.accept 11372 |or
.accept 11374 |or
.accept 11375 |or
.' These quests may no longer be available.
.' Click here if they are not offered |confirm |next "entrance"
step
'Kill your way to the end of the instance.
.from Nexus-Prince Shaffar##18344
.get Shaffar's Wondrous Amulet##33835 |q 11373/1
only if havequest(11373)
step
goto Terokkar Forest,43.2,65.6 |n
.' Go straight in, through the swirling portal at [44.9,65.6]
.' Enter Sethekk Halls. |goto Sethekk Halls|noway|c
only if havequest(11372)
step
'Kill your way to the end of the instance.
.from Talon King Ikiss##18473
.get The Headfeathers of Ikiss##33834 |q 11372/1
only if havequest(11372)
step
goto Terokkar Forest,36.0,65.6 |n
.' Go straight in, through the swirling portal at [34.3,65.6]
.' Enter the Auchenai Crypts. |goto Auchenai Crypts |noway|c
only if havequest(11374)
step
'Kill your way to the end of the instance.
.from Exarch Maladaar##18373
.get The Exarch's Soul Gem##33836 |q 11374/1
only if havequest(11374)
step
goto Terokkar Forest,39.6,71.0 |n
.' Go straight into the building and go into the swirling portal to the Shadow Labyrinth at [39.6,73.5]
.' Enter the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
only if havequest(11375)
step
'Kill your way to the end of the instance.
.from Murmur##18708
.get Murmur's Whisper##33840 |q 11375/1
only if havequest(11375)
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11373 |or
.turnin 11372 |or
.turnin 11374 |or
.turnin 11375 |or
|next "h_daily" |only if rep('Lower City')<=Revered
|next "exalted" |only if rep('Lower City')==Exalted
step
label	entrance
.' The entrance for _Shadow Labyrinth_ is here [Terokkar Forest 39.6,71.1]
.' The entrance for _Auchenai Crypts_ is here [Terokkar Forest 35.9,65.6]
.' The entrance for _Sethekk halls_ is here [Terokkar Forest 43.4,65.6]
.' Earn Exalted with Lower city |condition rep('Lower City')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Lower City!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Sha'tar",[[
description This guide will walk you through
description gaining Exalted with The Sha'tar.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210
step
goto Terokkar Forest 35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10227
..accept 10228
step
goto Shattrath City,53.7,32.6
.talk 19715
..turnin 10228
..accept 10231
step
goto 43.6,29.7
.talk 19720
.' Tell him Ezekiel said that you might have a certain book...
.' Beat down "Dirty" Larry for information |q 10231/1
..turnin 10231
..accept 10251
step
goto Nagrand,51.8,56.8
.talk 19844
..turnin 10251
..accept 10252
step
goto 30.1,64.2
.from Aged Clefthoof##17133+
.get Aged Clefthoof Blubber##28668 |q 10252/3
.' They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
goto 25.2,49.1
.from Mountain Gronn##19201+
..get Mountain Gronn Eyeball |q 10252/1
.' More can be found around [26.9,30.2], up and down the ramp
step
goto 30.9,32.9
.from Greater Windroc##17129+
..get Flawless Greater Windroc Beak |q 10252/2
step
goto 51.8,56.9
.talk 19844
..turnin 10252
..accept 10253
step
goto Terokkar Forest,39.6,71.3
.from Levixus##19847
.get 1 The Book of the Dead##28677 |q 10253/1
step
goto 35.1,66.2
.talk 19417
.turnin 10253
step
goto 31.1,76.5
.talk 22456
..accept 10877
step
goto 31.4,75.7
.talk 22364
..accept 10873
step
goto 43.9,76.4
.' Collect Restless Bones from the ground as you travel
.' Click the Massive Treasure Chest
..get the Dread Relic |q 10877/1
step
goto 49.7,76.2
.talk 22462
..accept 10920
step
goto 52.6,78.5
.kill 20 Dreadfang Widow##18467+ |q 10920/1
step
goto 49.7,76.2
.talk 22462
..turnin 10920
..accept 10921
step
goto 54.2,81.7
.kill Terokkarantula##20682 |q 10921/1
step
goto 49.7,76.2
.talk 22462
..turnin 10921
..accept 10926
step
goto 31.1,76.5
.talk 22456
..turnin 10877
..accept 10923
step
goto 50.0,67.8
.from Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
.collect 20 Doom Skull##31812 |q 10923
step
goto 48.7,67.2
.' Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811 |tip It looks like a purple glowing symbol on the ground.
.kill Teribus the Cursed##22441+ |q 10923/1
step
goto 31.1,76.5
.talk 22456
..turnin 10923
step
goto Shadowmoon Valley 36.4,56.9
.talk 21937
..accept 10680
step
goto 42.2,45.1
.talk 21024
..turnin 10680
..accept 10458
step
goto 46.5,46.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Earth Spirit##21050+
.' Capture 8 Earthen Souls |q 10458/1
.from Enraged Fire Spirit##21061+
.' Capture 8 Fiery Souls |q 10458/2
step
.goto 42.2,45.1
.talk 21024
..turnin 10458
..accept 10480
step
goto 45.8,27.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Water Spirit##21059+ |tip You can find them in the pools of water.
.' Capture 5 Watery Souls |q 10480/1
step
goto 42.2,45.1
.talk 21024
..turnin 10480
..accept 10481
step
goto 59.9,69.1
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs near the totems you plant.
.from Enraged Air Spirit##21060+
.' Capture 10 Airy Souls |q 10481/1
step
goto 42.2,45.1
.talk 21024
..turnin 10481
..accept 10513
step
goto 53.9,23.5
.talk 21183
..turnin 10513
..accept 10514
step
goto 53.5,17.3
.' Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462 |tip They look like carrots sticking out of the ground around this area.
.' If a boar is close it will run over and eat the tuber
.' Click the Shadowmoon Tuber's that spawn |model Shadowmoon Tuber##414
.get 10 Shadowmoon Tuber |q 10514/1
step
goto 53.9,23.5
.talk 21183
..turnin 10514
..accept 10515
step
goto 56.1,15.8
.click Ravenous Flayer Egg##477
.' Destroy 10 Ravenous Flayer Eggs |q 10515/1
step
goto 53.9,23.5
.talk 21183
..turnin 10515
..accept 10519
step
goto 53.9,23.5
.talk 21183
..' Tell him you are ready to listen to his story
.' Listen to the Cipher of Damnation - History and Truth |q 10519/1
step
goto 53.9,23.5
.talk 21183
..turnin 10519
..accept 10521
..accept 10527
..accept 10546
step
goto 44.5,23.6
.talk 21291
..turnin 10521
..accept 10522
step
goto 52.6,27.4
.from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
.collect Coilskar Chest Key##30426 |n
.' Click Coilskar Chests |tip They look like big gray stone containers around this area.
.get First Fragment of the Cipher of Damnation |q 10522/1
step
goto 44.5,23.6
.talk 21291
..turnin 10522
..accept 10523
step
goto 53.9,23.5
.talk 21183
..turnin 10523
step
goto 29.6,50.4
.talk 21292
..turnin 10527
..accept 10528
step
goto 28.0,47.5
.from Painmistress Gabrissa##21309+
.get Crystalline Key |q 10528/1
step
goto 29.6,50.4
.talk 21292
..turnin 10528
step
goto 29.5,50.5
.talk 21318
..accept 10537
step
goto 29.6,50.3
.from Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+
.get Lohn'goron, Bow of the Torn-Heart |q 10537/1
step
goto 29.5,50.5
.talk 21318
..turnin 10537
..accept 10540
step
goto 30.7,58.3
.' Walk with the Spirit Hunter to this spot
.from Veneratus the Many##20427
.get Second Fragment of the Cipher of Damnation |q 10540/1
step
goto 29.5,50.5
.talk 21318
..turnin 10540
..accept 10541
step
goto Shadowmoon Valley,53.9,23.5
.talk 21183
..turnin 10541
step
goto 47.6,57.2
.talk 21293
..turnin 10546
..accept 10547
step
goto 44.8,58.2
.click Rotten Arakkoa Egg##7138
.get Rotten Arakkoa Egg |q 10547/1
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
step
goto Shadowmoon Valley,47.6,57.2
.talk 21293
..turnin 10550
..accept 10570
step
goto 49.0,57.5
.' Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
.from Envoy Icarius##21409
.get Stormrage Missive |q 10570/1
step
goto 47.6,57.2
.talk 21293
..turnin 10570
..accept 10576
step
goto 49.3,60.5
.from Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
.get 6 Eclipsion Armor |q 10576/1
step
goto 47.6,57.2
.talk 21293
..turnin 10576
..accept 10577
step
goto 45.3,68.2
.' Use your Blood Elf Disguise |use Blood Elf Disguise##30639
.' Talk to Grand Commander Ruusk at [46.5,71.9]
.' Deliver Illidan's Message |q 10577/1
step
goto 47.6,57.2
.talk 21293
..turnin 10577
..accept 10578
step
goto 61.4,57.0
.from Ruul the Darkener##21315
.get Third Fragment of the Cipher of Damnation |q 10578/1
step
goto 47.5,57.2
.talk 21293
..turnin 10578
..accept 10579
step
goto 53.9,23.5
.talk 21183
..turnin 10579
..accept 10588
step
goto 43.1,44.9
.' Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
.' Go to [42.8,44.7]
.talk 21183 |tip It may take a minute or so for him to show up.
..' Tell him you are ready.
.' Follow Oronok Torn-heart
.kill Cyrukh the Firelord##21181 |q 10588/1
step
goto 42.2,45.1
.talk 21024
..turnin 10588
step
goto Shattrath City,54.8,44.3
.talk 18166
..accept 10883
step
goto 54.0,44.8
.talk 18481
.turnin 10883
..accept 10884
..accept 10885
..accept 10886
..' These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz.
step
'Before you enter The Shattered Halls, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Shattered Halls 34.2,55.3
.from Grand Warlock Nethekurse##16807
.' After you Kill Grand Warlock Nethekurse run through this doorway to gain _Korgath's Executioner Buff_ |havebuff Interface\Icons\Ability_Warrior_Cleave
|only if not completedq(10884)
step
goto The Shattered Halls 67.2,65.8
'Kill your way to the end of the instance.
.' After the first boss you will have 55 minutes to clear your way to the last boss.
.from Shattered Hand Executioner##17301
.get Unused Axe of the Executioner##31716 |q 10884/1
step
'Before you enter The Steavmvault, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Steamvault 80.6,43.6
.' In order to reach the final boss you will need to kill the other bosses.
.from Warlord Kalithresh##17798
.get Kalithresh's Trident##31721 |q 10885/1
step
'Before you enter Shadow Labyrinth, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way to Murmur at the end of the instance.
goto Shadow Labyrinth 81.2,39.2
.from Murmur##18708
.get Murmur's Essence##31722 |q 10885/2
step
'Before you enter The Arcatraz, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Arcatraz/3 62.8,30.6
'Fight your way to the end of the instance.
.from Harbinger Skyriss##20912
.' Defeat Harbinger Skyriss and make sure Millhouse lives.
.' Rescue Millhouse Manastorm. |q 10886/1
'|talk Millhouse Manastorm##20977
step
goto Shattrath City 54.0,44.8
.talk 18481
..turnin 10884
..turnin 10885
..turnin 10886
step
goto Netherstorm 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
.turnin 10276
..accept 10280
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10280
..accept 10704
step
'Before you enter The Mechanar, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way through the instance.
goto The Mechanar 28.52,60.6
.from Pathaleon the Calculator##19220
.get Bottom Shard of the Arcatraz Key##31086 |q 10704/2
step
'Before you enter The Botanica, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way through the instance.
goto The Botanica 34.0,37.8
.from Warpsplinter##17977
.get Top Shard of the Arcatraz Key##31085 |q 10704/1
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10704
step
goto Shadowmoon Valley 56.3,59.6
.talk 21955
..accept 10683
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Friendly
step
goto 58.8,36.5
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Friendly
step
goto 56.5,34.8
.' Click Baar'ri Tablet Fragment |tip They look like green glowing tablets on the ground around this area.
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
only if rep ('The Aldor') >= Friendly
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
only if rep ('The Scryers') >= Friendly
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
only if rep ('The Aldor') >= Friendly
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
only if rep ('The Scryers') >= Friendly
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
only if rep ('The Aldor') >= Friendly
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
only if rep ('The Scryers') >= Friendly
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
only if rep ('The Aldor') >= Friendly
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
only if rep ('The Scryers') >= Friendly
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
only if rep ('The Aldor') >= Friendly
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
only if rep ('The Scryers') >= Friendly
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
only if rep ('The Aldor') >= Friendly
step
goto 57.3,49.6
.talk 21826
..turnin 10686
..accept 10622
only if rep ('The Scryers') >= Friendly
step
goto 57.3,49.6
.talk 21826
..turnin 10575
..accept 10622
only if rep ('The Aldor') >= Friendly
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.5,49.8,0.5 |noway |c |q 10622
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c |q 10622
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c |q 10628
step
goto 58.1,48.2
.talk 21700
.turnin 10628
..accept 10705
step
goto The Arcatraz/3 31.6,25.0
.clicknpc Udalo##21962 |tip It is in the room before Harbinger Skyriss, the final boss of the instance.
.turnin 10705
..accept 10706
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10706
..accept 10707
step
goto Shadowmoon Valley,71.3,35.6
.kill Shadowmoon Soulstealer##22061+ |n |tip There will be 3 of them.
.' Once you kill him, it will trigger an event. Kill the Shadowmoon Retainers that spawn.
.from Shadowlord Deathwail##22006+
.get Heart of Fury##31307 |q 10707/1
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10707
..accept 11052
step
goto 53.3,59.0
.from Val'zareq the Conqueror##21979 |tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
.collect 1 The Journal of Val'zareq##31345 |n
.' Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
..accept 10793
step
goto 51.4,72.8
.click Crystal Prison##6905
.turnin 10793
..accept 10781
step
'Fight off the waves of enemies that come.
.' Crimson Sigil Forces Annihilated. |q 10781/1
step
goto Shattrath City,54,44.8
.talk 18481
.turnin 10781
..turnin 11052
step
'At this point, you will need to grind for reputation. You can farm reputation in the instances below:
.' The Mechanar
.' The Botanica
.' and The Arcatraz
..' Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day.
'Earn Exalted status with The Sha'tar |condition rep("The Sha'tar")==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Sha'tar!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Aldor",[[
description This guide will walk you through becoming
description Exalted with The Aldor faction.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10551 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10554
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
goto 30.7,34.6
.talk 18537
.accept 10325
..accept 10653
step
goto 24,29.7
.talk 18538
..turnin 10554
..accept 10021
..accept 10420
step
goto 64.5,15.1
.talk 18597
.accept 10020
step
goto Terokkar Forest,39.0,59.7
.from Cabal Spell-weaver##21902+,Cabal Initiate##21907+,Cabal Skirmisher##21661+
..collect 10 Mark of Kil'jaeden##29425
step
goto Terokkar Forest,49.2,20.3
.click the Eastern Altar
.' Purify the Eastern Altar |q 10021/2
step
goto 50.7,16.6
.click the Northern Altar
.' Purify the Northern Altar |q 10021/1
step
goto 48.1,14.5
.click the Western Altar
.' Purify the Western Altar |q 10021/3
step
goto Terokkar Forest,61.3,25.3
from Stonegazer##18648+
.get Stonegazer's Blood |q 10020/1
step
goto Shattrath City 30.7,34.6
.talk 18537
.turnin 10325
step
goto 64.5,15.1
.talk 18597
.turnin 10020
step
goto Shattrath City,24,29.7
.talk 18538
..turnin 10021
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
goto Netherstorm 32.1,64.2
.talk 19466
.turnin 11038
..accept 10241
step
goto 26.3,66.7
.kill 8 Sunfury Magister##18855+ |q 10241/1
.kill 8 Sunfury Bloodwarder##18853+ |q 10241/2
step
goto 32.1,64.2
.talk 19466
..turnin 10241
..accept 10313
step
goto 32.1,64.2
.talk 19467
..accept 10243
step
goto 25.7,60.6
.' Stand next to the Northern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Northern Pipeline |q 10313/1
step
goto 20.9,66.9
.' Stand next to the Western Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Western Pipeline |q 10313/4
step
goto 20.7,70.7
.' Stand next to the Southern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Southern Pipeline |q 10313/3
step
goto 23.2,68.2
.click the B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
..turnin 10243
..accept 10245
step
goto 29,72.7
.' Stand next to the Eastern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Eastern Pipeline |q 10313/2
step
goto 32.1,64.2
.talk 19466
..turnin 10313
step
goto 32.1,64.2
.talk 19467
..turnin 10245
..accept 10299
step
'Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10299/2
step
goto 23.2,68.1
.' Kill all Warp-Engineers in the nearest area to make your life easier.
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10299/1
step
goto 32.1,64.2
.talk 19467
..turnin 10299
..accept 10321
step
goto 32.1,64.2
.talk 19466
..accept 10246
step
goto 45.9,79.4
.kill 8 Sunfury Arcanist##20134+ |q 10246/2
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.kill 5 Sunfury Researcher##20136+ |q 10246/1
.' Kill Overseer Seylanna
..collect Coruu Access Crystal##29396 |q 10321 |sticky
.click the Coruu Control Console
..click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10321/1
step
goto 32.1,64.2
.talk 19467
..turnin 10321
..accept 10322
step
goto 32.1,64.2
.talk 19466
..turnin 10246
..accept 10328
step
goto 57.9,63.4
.from Sunfury Conjurer##20139+
.get 1 Sunfury Arcane Briefing|q 10328/2
.from Sunfury Bowman##20207+, Sunfury Centurion##20140+
.get 1 Sunfury Military Briefing|q 10328/1
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10322/2
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10322/1
step
goto 32.1,64.2
.talk 19466
..turnin 10328
..accept 10431
step
goto 32.1,64.2
.talk 19467
.turnin 10322
..accept 10323
step
goto 34.8,38.3
.talk 20780
..turnin 10431
..accept 10380
step
goto 30.8,40.8
.kill 3 Daughter of Destiny##18860+ |q 10380/2
step
goto 26.4,42.3
.kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1
.kill 6 Mo'arg Warp-Master##20326+ |q 10380/3
step
goto 26.7,36.8 |tip It's inside Manaforge Ara.
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10323/2
step
goto 26.0,38.8
.click the Ara Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10323/1
step
goto 34.8,38.3
.talk 20780
..turnin 10380
..accept 10381
step
goto 32.1,64.2
.talk 19466
..turnin 10381
step
goto 32.0,64.2
.talk 19467
.turnin 10323
..accept 10407
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10407/1
step
goto 38.0,27.4
.from Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
.collect 10 Mark of Sargeras##30809+ |q 10653/1
..collect 1 Fel Armament |q 10420/1
'More can be found at :
.' [40.4,22.9]
.' [42.4,21.5]
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10407/2
step
goto 32.0,64.2
.talk 19467
.turnin 10407
..accept 10410
step
goto Shattrath City,30.8,34.6
.from Adyen the Lightwarden##18537+
..turnin 10653
step
goto 24,29.7
.talk 18538
.turnin 10410
.turnin 10420
..accept 10409
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
.collect 1 Voren'thal's Presence##30259 |q 10409
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Defeat Socrethar.
.' Deathblow to the Legion. |q 10409/1
|modelnpc Socrethar##20132
step
goto Shattrath City 24,29.7
.talk 18538
.turnin 10409
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.accept 10587
step
goto 61.2,29.1
.talk 21822
..accept 10619
step
goto 62.6,28.4
.talk 21402
..accept 10568
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10619/1
.kill 4 Ashtongue Warrior##21454+ |q 10619/2
.kill 6 Ashtongue Shaman##21453+ |q 10619/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
step
goto 61.2,29.1
.talk 21822
..turnin 10619
..accept 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
step
goto 61.2,29.2
.talk 21860
.turnin 10587
..accept 10637
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10816/1
.kill 8 Shadowmoon Chosen##22084+ |q 10816/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10637/1
step
goto 61.2,29.2
.talk 21860
.turnin 10637
..accept 10640
step
goto 61.2,29.1
.talk 21822
..turnin 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
step
goto 57.3,49.6
.talk 21826
..turnin 10575
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
.turnin 10646
..accept 10649
step
goto Terokkar Forest,39.6,71.0 |n
'Click the doors to the Shadow Labyrinth.
.' Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
'Kill through the instance until you reach Blackheart the Inciter.
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
'Leave the instance. |goto Terokkar Forest |noway|c
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10650
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
..accept 10651
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10651/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10651/4
step
goto 72.2,53.7
.kill Varedis##21178 |q 10651/1
.' When he begins to cast _Metamorphosis_, you will need to use your _Book of Fel Names_ to weaken him. |use Book of Fel Names##30854
step
goto 72.4,48.4
.kill Theras##21168 |q 10651/3
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
step
'At this point, you will need to grind repeatable quests.
.'You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras.
..' Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks.
'Click here to proceed. |confirm
step
label farming
goto Shadowmoon Valley 22.5,34.6
.from Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
.collect Mark of Sargeras###30809 |tip You will need to collect these in multiples of 10.
.collect Fel Armament##29740
'When you're ready to turn in, click here. |confirm
step
label marks
goto Shattrath City,30.8,34.6
.talk 18537
.accept 10654 |n
.' Click here to go back to farming. |next "farming" |confirm
.' Click here to turn in Fel Armaments |next "fel" |confirm
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted"
step
label fel
goto 24.0,29.7
.talk 18538
.accept 10421 |n
.' Click here to go back to farming. |next "farming"
.' Click here to turn in Marks of Sargeras |next "marks"
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with The Aldor.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Scryers",[[
description This guide will walk you through becoming
description Exalted with The Scryers faction.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210 |tip She is the big glowing floating being in the middle of the room.
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10552 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10553
step
goto 45.2,81.5
.talk 18531
.accept 10412
.accept 10656
step
goto 42.8,91.7
.talk 18530
.turnin 10553
..accept 10416
step
goto Shattrath City,44.6,76.4
.talk 23272
..accept 11039
step
goto Netherstorm,32,64
.talk 19468
.turnin 11039
..accept 10189
step
goto 27.8,65
.from Captain Arathyn##19635 |tip He walks around this area on a big purple bird.
.get B'naar Personnel Roster |q 10189/1
step
goto 32.0,64.0
.talk 19468
..turnin 10189
..accept 10193
.talk 19469
..accept 10204
only if rep ('The Scryers') >= Friendly
step
goto 26.3,66.7
.from Sunfury Magister##18855+
.collect Bloodgem Shard##28452 |n
.' Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
.' Siphon the Bloodgem Crystal |q 10204/1
.kill 8 Sunfury Geologist##19779+ |q 10193/3
step
goto 26.9,70.5
.kill 2 Sunfury Warp-Master##18857+ |q 10193/1
.kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2
..get 10 Sunfury Signet##30810 |q 10656/1
step
goto 32,64
.talk 19468
..turnin 10193
..accept 10329
.talk 19469
..turnin 10204
step
goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10329/2
step
goto 23.2,68.1
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10329/1
step
goto 32,64
.talk 19468
..turnin 10329
..accept 10194
step
goto 33.8,64.2
.talk 20162
..turnin 10194
..accept 10652
..' Tell her you're as ready as you'll ever be.
..'You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
step
goto 48.2,86.6
.talk 19840
..turnin 10652
..accept 10197
step
goto 47.7,84.9
.from Sunfury Arcanists##20134+
.get Sunfury Arcanist Robes |q 10197/3
step
goto 49,81.5
.from Sunfury Researcher##20136+
.get Sunfury Researcher Gloves |q 10197/1
step
'Go outside to 50.8,83.2 |goto 50.8,83.2
.from Sunfury Guardsmen##18850
.get Sunfury Guardsman Medallion |q 10197/2
step
goto 48.2,86.6
.talk 19840
..turnin 10197
..accept 10198
step
'Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise |use Sunfury Disguise##28607
step
'Go inside Manaforge Coruu to 48.2,84.1 |goto 48.2,84.1
.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
.' Listen to them talk
.' Gather the Information |q 10198/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10198
..accept 10330
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.' Kill Overseer Seylanna
.get Coruu Access Crystal |q 10330/2
.click the Coruu Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10330/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10330
..accept 10200
step
goto 32,64
.talk 19468
..turnin 10200
step
goto 32.0,64.0
.talk 19469
.accept 10341
.talk 19468
..accept 10338
only if rep ('The Scryers') >= Friendly
step
goto 57.9,63.4
.kill 8 Sunfury Conjurer##20139+ |q 10341/1
.kill 6 Sunfury Bowman##20207+ |q 10341/2
.kill 4 Sunfury Centurion##20140+ |q 10341/3
only if rep ('The Scryers') >= Friendly
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10338/2
only if rep ('The Scryers') >= Friendly
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10338/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10338
.talk 19469
..turnin 10341
..accept 10202
only if rep ('The Scryers') >= Friendly
step
goto 26.2,41.6
.talk 20920
..turnin 10202
..accept 10432
only if rep ('The Scryers') >= Friendly
step
.' Go inside Manaforge Ara to 27.1,39.2 |goto 27.1,39.2
.from Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+ |tip You can also find more outside of Manaforge Ara.
..get 8 Orders From Kael'thas |q 10432/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10432
..accept 10508
only if rep ('The Scryers') >= Friendly
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10508/1
only if rep ('The Scryers') >= Friendly
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10508/2
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
.turnin 10508
..accept 10509
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10509
..accept 10507
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
.collect 1 Voren'thal's Presence##30259 |q 10409
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Socrethar slain |q 10507/1
|modelnpc Socrethar##20132
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10507
step
goto Shadowmoon Valley,55.7,58.2
.talk 21954
..accept 10687
step
goto 56.3,58.8
.talk 22211
..accept 10824
step
goto 56.3,59.6
.talk 21955
..accept 10683
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.accept 10807
step
goto 51.7,65.6
.from Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
.get 10 Sunfury Signet |q 10824/1
step
goto 56.3,58.8
.talk 22211
..turnin 10824
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
.get 1 Arcane Tome##29739 |q 10416/1
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10807/1
.kill 4 Ashtongue Warrior##21454+ |q 10807/2
.kill 6 Ashtongue Shaman##21453+ |q 10807/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.turnin 10807
..accept 10817
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10817/1
.kill 8 Shadowmoon Chosen##22084+ |q 10817/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c |q 10686
step
goto 57.3,49.6
.talk 21826
..turnin 10686
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
.turnin 10646
..accept 10649
step
goto Terokkar Forest,39.6,71.0 |n
'Click the doors to the Shadow Labyrinth.
.' Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
'Kill through the instance until you reach Blackheart the Inciter.
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
'Leave the instance. |goto Terokkar Forest |noway|c
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10691
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10650
..accept 10692
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10692/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10692/4
step
goto 72.2,53.7
.kill Varedis##21178 |q 10692/1
step
goto 72.4,48.4
.kill Theras##21168 |q 10692/3
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10692
step
goto Shattrath City,45.2,81.5
.talk 18531
.turnin 10412
.turnin 10656
..' After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm.
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10416
'When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
|next "exalted" only if rep('The Scryers')==Exalted
step
label farming
goto Netherstorm,27.8,72.6
.from Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
.get Arcane Tome##29739 |n
.get Sunfury Signet##30810 |tip You will need to collect multiples of 10. |n
'  You can find more around [25.7,67.2]
.' Click here when you're ready to turn in. |confirm
step
label signets
goto Shattrath City,45.2,81.5
.talk 18531
.accept 10658 |n
.' Click here to turn in Arcane Tomes |next "tomes" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label tomes
goto Shattrath City,42.8,91.7
.talk 18530
.accept 10419 |n
.' Click here to turn in Sunfury Signets |next "signets" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Scryers!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Ashtongue Deathsworn",[[
achieveid 958
step
'This reputation can be earned by running The Black Temple raid.
'A full clear will grant roughly 8200 reputation.
|confirm
step
label start
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
goto Black Temple/2 21.9,59.5
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with Ashtongue Deathsworn |condition rep('Ashtongue Deathsworn')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Ashtongue Deathsworn!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Violet Eye",[[
achieveid 960
step
'This reputation can be earned by running the Karazhan raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Deadwind Pass,47.0,74.8 |n
.' Enter _Karazhan_ here |goto Karazhan |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with The Violet Eye |condition rep('The Violet Eye')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Violet Eye!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Scale of the Sands",[[
achieveid 959
step
'This reputation can be earned by running the Caverns of Time: Hyjal Summit raid.
'A full clear will grant roughly 7800 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Hyjal Summit 10.5,65.1
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Earn Exalted status with The Scale of the Sands |condition rep('The Scale of the Sands')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Scale of the Sands!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually Crusader Title.
daily
step
label "start"
goto Icecrown 76.5,19.4
.talk 33625
..accept 13672
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13666 |or
..accept 13669 |or
..accept 13670 |or
step
goto 76.5,19.4
.talk 33646
..accept 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13625
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
..talk 33220
..get Ashwood Brand |q 13666/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13669
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13669/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13670
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13670/1
step
goto Icecrown,71.3,37.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13671/1
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13625
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13625/1
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13625/3
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13625/2
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13666
..turnin 13669
..turnin 13670
step
goto 76.5,19.4
.talk 33646
..turnin 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13625
step
goto 76.5,19.4
.talk 33625
..turnin 13672
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section and earn the Crusader Title.
daily
step
label "start"
goto Icecrown,76.5,19.4
.talk 33625
..accept 13679|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
goto 71.8,20.0
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle |q 13679
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13679/1
step
goto 76.5,19.4
.talk 33625
..turnin 13679
..accept 13684 |only Human
..accept 13689 |only NightElf
..accept 13685 |only Dwarf
..accept 13688 |only Gnome
..accept 13690 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13684
..accept 13718
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13689
..accept 13717
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13685
..accept 13714
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13688
..accept 13715
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13690
..accept 13716
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |or
..accept 13753 |or
..accept 13754 |or
only Draenei
step
goto 76.1,19.2
.talk 33655
..accept 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..accept 13756
..accept 13854
only Draenei
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
only Draenei
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
only Draenei
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
only Draenei
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
only Draenei
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
only Draenei
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
only Draenei
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
only Draenei
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
only Draenei
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
only Draenei
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
only Draenei
step
goto 76.1,19.2
.talk 33655
..turnin 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
only Draenei
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |or
..accept 13742 |or
..accept 13743 |or
only Dwarf
step
goto 76.7,19.4
.talk 33315
..accept 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..accept 13745
..accept 13851
only Dwarf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
only Dwarf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
only Dwarf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
only Dwarf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
only Dwarf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
only Dwarf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
only Dwarf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
only Dwarf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
only Dwarf
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
only Dwarf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
only Dwarf
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
only Dwarf
step
goto 76.7,19.4
.talk 33315
..turnin 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
only Dwarf
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |or
..accept 13600 |or
..accept 13616 |or
only Human
step
goto 76.5,19.1
.talk 33222
..accept 13592
only Human
step
goto 76.6,19.2
.talk 33223
..accept 13665
..accept 13847
only Human
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
only Human
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
only Human
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
only Human
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
only Human
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
only Human
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
only Human
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
only Human
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
only Human
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
only Human
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
only Human
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
only Human
step
goto 76.5,19.1
.talk 33222
..turnin 13592
only Human
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
only Human
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |or
..accept 13758 |or
..accept 13759 |or
only NightElf
step
goto 76.3,19.0
.talk 33652
..accept 13760
only NightElf
step
goto 76.4,19.0
.talk 33654
..accept 13761
..accept 13855
only NightElf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
only NightElf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
only NightElf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
only NightElf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
only NightElf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
only NightElf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
only NightElf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
only NightElf
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
only NightElf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
only NightElf
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
only NightElf
step
goto 76.3,19.0
.talk 33652
..turnin 13760
only NightElf
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
only NightElf
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |or
..accept 13747 |or
..accept 13748 |or
only Gnome
step
goto 76.6,19.8
.talk 33648
..accept 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..accept 13750
..accept 13852
only Gnome
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
only Gnome
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
only Gnome
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
only Gnome
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
only Gnome
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
only Gnome
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
only Gnome
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
only Gnome
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
only Gnome
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
only Gnome
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
only Gnome
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
only Gnome
step
goto 76.6,19.8
.talk 33648
..turnin 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
only Gnome
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13714
..accept 13713
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
only Draenei
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
only Human
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
only NightElf
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
only Dwarf
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
only Gnome
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
only Draenei
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1 |only Human
.' Defeat the Argent Valiant |q 13725/1 |only NightElf
.' Defeat the Argent Valiant |q 13713/1 |only Dwarf
.' Defeat the Argent Valiant |q 13723/1 |only Gnome
.' Defeat the Argent Valiant |q 13724/1 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13699
..accept 13702
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13725
..accept 13735
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13713
..accept 13732
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13723
..accept 13733
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13724
..accept 13734
only Draenei
step
goto 69.7,22.9
.talk 33817
..turnin 13702 |only Human
..turnin 13735 |only NightElf
..turnin 13732 |only Dwarf
..turnin 13733 |only Gnome
..turnin 13734 |only Draenei
..accept 13795 |only DeathKnight
..accept 13794 |only !DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13795
only DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13794
only !DeathKnight
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Crusade",[[
author support@zygorguides.com
description This guide will help you reach Exalted with the Argent Crusade
achieveid 947
#include "A_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Kalu'ak",[[
description This step will lead you up to the Daily Quest portion
description of the Kalu'ak.
achieveid 949
#include "AKaluak_rep"
step
label exalted
'Congratulations, you are Exalted with the Kalu'ak!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Sons of Hodir",[[
step
' Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
.' Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
.' Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
goto The Storm Peaks,41,86.4
.talk 29431
..turnin 12853
..accept 12818
step
goto The Storm Peaks 41.1,85.9
.talk 29904
.home K3
step
goto 41.1,86.1
.talk 29473
..accept 12843
..accept 12844
step
goto 40.9,85.3
.talk 29428
..accept 12827
..accept 12836
step
goto 40.8,84.5
.talk 29721
..fpath K3
step
goto 39.8,86.4
.click Charred Wreckage##6866
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.from Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
.click Dried Gnoll Rations##335
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill Gnarlhide##30003|q 12836/1
step
goto 41,86.4
.talk 29431
..turnin 12818
..accept 12819
step
goto 40.9,85.3
.talk 29428
..turnin 12827
..turnin 12836
..accept 12828
step
goto 35.1,87.8
.click Sparksocket's Tools##1209
.get Sparksocket's Tools|q 12819/1
step
goto 41,86.4
.talk 29431
..turnin 12819
..accept 12826
step
goto 40.9,85.3
.talk 29428
..turnin 12826
..accept 12820
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Attackers|q 12820/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.click the U.D.E.D. Dispenser##2029
.' Retrieve a bomb from the dispenser
.collect U.D.E.D.##40686|q 12828
step
'Go to [43.9,79.0] quickly
.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
.click  Mammoth Meat##2951
.get 8 Hearty Mammoth Meat|q 12828/1
step
.' Go into the cave |goto 40.4,77.8 |c |q 12829
step
.kill 12 Crystalweb Spiders |q 12829/1
'|modelnpc 29412
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Diggers##29413 |n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.from Icetip Crawler##29461
.get 1 Icetip Venom Sac|q 12831/1
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3 |q 12832/1
step
'Fly up to [39.8,73.3]
.kill Sifreldar Storm Maiden##29323+ |n
.collect 5 Cold Iron Key##40641|n
.click Rusty Cage##7469+
.' Free 5 Goblin Prisoners |q 12843/1
.click K3 Equipment##335
.get 8 K3 Equipment|q 12844/1
step
goto 41.7,80
.talk 29430
..turnin 12829
..turnin 12830
step
goto 40.9,85.3
.talk 29428
..turnin 12820
..turnin 12828
..turnin 12832
..accept 12821
step
goto 41.1,86.1
.talk 29473
..turnin 12843
..accept 12846
..turnin 12844
step
goto 45.1,82.4
.click Transporter Power Cell##8099
.get Transporter Power Cell|q 12821/1
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter |q 12821/2
step
goto 40.9,85.3
.talk 29428
..turnin 12821
..accept 12822
step
goto 50.0,81.8
.talk 29432
..accept 12823
step
'Go inside the cave to [50.5,77.8]
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut##29626 |q 12823/2
step
goto 48.1,81.9
.kill 6 Garm Watcher##29409+ |q 12822/1
.kill 8 Snowblind Devotee##29407+ |q 12822/2
step
'Go outside and go to [50.0,81.8]
.talk 29432
..turnin 12823
..accept 12824
step
Fly up into the cave to [42.8,68.9]
.talk 29481
..turnin 12846
..accept 12841
step
goto 44.2,68.9
.from Overseer Syra##29518
.get 1 Runes of the Yrkvinn|q 12841/1
step
goto 42.8,68.9
.talk 29481
..turnin 12841
..accept 12905
step
goto 44.4,68.9
.talk 29885
..turnin 12905
..accept 12906
step
goto 44.8,70.3
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |q 12906/1
'|modelnpc 30146
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal##30147 |q 12907/1
step
goto 44.4,68.9
.talk 29885
..turnin 12907
..accept 12908
step
goto 42.8,68.9
.talk 29481
..turnin 12908
..accept 12921
step
.' Follow the path in the mine east out to the other side to [47.5,69.1]
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
' Talk to Agnetta Tyrsdottar##30154
.' Tell her to skip the warmup
.kill 1 Agnetta Tyrsdottar##30154 |q 12969/1
step
goto 47.5,69.1
.talk 29975
..turnin 12969
..accept 12970
step
goto 47.5,69.1
.talk 29975
..'Ask her about her proposal
.' Listen to Lok'lira's proposal |q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
.talk 30012
.kill 6 Victorious Challenger##30012+ |q 12971/1
step
goto 47.5,69.1
.talk 29975
..turnin 12971
..accept 12972
step
goto 48.4,72.1
.talk 29997
..accept 12942
..accept 12968
step
goto 48.4,72.1
.talk 30041
..accept 12925
step
goto 53.1,65.7
.talk 29592
..turnin 12972
..accept 12851
step
goto 53.1,65.7
.clicknpc Icefang##29598
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
.' Burn 7 Frostworgs |q 12851/1
.' Burn 15 Frost Giants |q 12851/2
'|modelnpc 29358
'|modelnpc 29351
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.clicknpc Captive Proto-Drake##29708
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners |q 12856/1
.' Free 3 Proto-Drakes |q 12856/2
'|modelnpc 29639
step
goto 53.1,65.7
.talk 29592
..turnin 12856
..accept 13063
step
goto 49.7,71.8
.talk 29839
..turnin 13063
..accept 12900
step
goto 47.9,74.7
.kill Icemane Yeti##29875+|n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.kill 8 Ravenous Jormungar##29605+ |q 12989/1 |tip They are inside the cave.
step
goto 54.8,60.4
.clicknpc Injured Icemaw Matriarch##29563
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak |q 12996/1
'|modelnpc 29352
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
goto 49.1,69.4
.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear##30174+ |q 12997/1
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12997
..accept 13061
step
goto 47.5,69.1
.talk 29975
..turnin 13061
..accept 13062
step
goto 50.9,65.6
.talk 29796
..turnin 13062
..accept 12886
step
'You fly off on a drake and start flying in circles around a tower:
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
.kill Hyldsmeet Drakerider##29694+ |n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History |q 13064/1
step
goto 33.4,58
.talk 29445
..turnin 13064
..accept 12915
step
goto 27.3,63.7
.kill 12 Nascent Val'kyr##29570+ |q 12942/1
.kill Valkyrion Aspirant##29569+ |n
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |q 12925/1
'|model 3891
step
goto 24,61.8
.kill Yulda the Stormspeaker##30046 |q 12968/1
.click Harpoon Crate##8217
..accept 12953
step
goto 26,59.8
.clicknpc Valkyrion Harpoon Gun##30066
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
.' Start 6 Fires |q 12953/1
step
'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader|q 12833/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 48.4,72.1
.talk 30041
..turnin 12925
step
goto 48.4,72.1
.talk 29997
..turnin 12942
..turnin 12968
..turnin 12953
step
goto 75.8,63
.click Granite Boulder##7750+
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giant##29375+  |q 12915/2
.collect Slag Covered Metal##41556 |q 12922 |future |n
.use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.from Seething Revenant##29504+
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.click Granite Boulder##7750
.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill Fjorn##29503 |q 12915/1
step
goto 77.2,62.9
.click Fjorn's Anvil##7481
..turnin 12922
..accept 12956
step
goto 33.4,58
.talk 29445
..turnin 12956
..turnin 12915
..accept 12924
step
goto 62.6,60.9
.talk 32571
..fpath Dun Niffelem
step
goto 65.4,60.2
.talk 30105
..accept 12966
step
goto 75.4,63.6
.talk 30099
..turnin 12966
..accept 12967
step
goto 75.7,63.9
.clicknpc Snorri##30123
.' Ride Snorri |invehicle |q 12967
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
.kill 10 Seething Revenant##29504+ |q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri |outvehicle |q 12967
step
goto 75.4,63.6
.talk 30099
..turnin 12967
step
goto 63.2,63.2
.talk 30127
..turnin 12924
..accept 13009
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.kill Brittle Revenant##30160+ |n
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
.click  Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.click Horn Fragment##8222+
.get 8 Horn Fragment|q 12975/1
step
goto 65.4,60.2
.talk 30105
..turnin 12975
..accept 12976
step
goto 63.2,63.2
.talk 30127
..turnin 12976
step
goto 63.2,62.9
.click Fjorn's Anvil##7481+
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
|tip If the Horn is not here, fly far from this area, then return and it should appear.
..accept 12977
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
.kill Stormforged Ambusher##30208+ |n
.get 8 Stormforged Eye|q 12985/1
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
.' Mount Hodir's Helm |q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.click Hodir's Helm##8221+
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oil##30325+ |n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
'|modelnpc 30292
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
.kill 1 Jormuttar##30340 |q 13011/1
step
goto 33.4,58
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.click Small Proto-Drake Egg##7398+
.get 5 Small Proto-Drake Egg|q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.' use the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus |q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 65.4,60.2
.talk 30105
..turnin 13011
step
goto 65.4,60.2
.talk 30105
..'Ask him what has become of Krolmir
.' Discover Krolmir's Fate |q 13010/1
step
goto 71.4,48.8
.talk 30390
..turnin 13010
..accept 13057
step
goto 56.3,51.4
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel##29984+ |q 13005/1
.kill 20 Iron Dwarf Assailant##29978+ |q 13005/2
step
'Enter Hall of the Shaper here |goto The Storm Peaks/0 57.1,44.2 |q 13035
step
goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Eisenfaust##30341 |q 13035/1
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Halefnir the Windborn##30376 |q 13035/2
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Duronn the Runewrought##30353 |q 13035/3
step
goto 56.3,51.4
.talk 30295
..turnin 13005
..turnin 13035
..accept 13047
step
goto 35.9,31.5
.talk 30399
..'Tell him you are with him
.' Witness the Reckoning |q 13047/1
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 40.9,85.3
.talk 29428
..accept 12862
step
goto 40.9,85.3
.talk 29428
..'Tell her you are ready to head further into Storm Peaks
.'You will fly to Frosthold|goto 28.6,74.6,0.5|noway|c
step
goto 29.5,74.3
.talk 29750
..fpath Frosthold
step
goto 29.5,74.1
.talk 29650
..accept 12854
step
goto 29.4,73.8
.talk 29743
..accept 12863
step
goto 28.8,74.1
.talk 29744
..turnin 12862
..accept 12870
step
goto The Storm Peaks 28.7,74.4
.talk 29926
.home Frosthold
step
goto 29.2,74.9
.talk 29727
..turnin 12863
..accept 12864
step
goto 29.8,75.7
.talk 29732
..accept 12865
step
goto 36.4,77.3
.talk 29811
|tip High up on this frozen waterfall.
..'Ask him if he is okay
.' Locate the Missing Scout |q 12864/1
step
goto 46.5,68.3
.kill Vrykuls |n
.' Get 10 Relics of Ulduar |q 12870/1
step
'Go outside to 44.5,60.4|goto 44.5,60.4
.kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
.collect 8 Fresh Ice Rhino Meat##41340|q 12865
step
goto 36.1,64.1
.click Disturbed Snow##5333
.get Burlap-Wrapped Note|q 12854/1
step
goto 33.2,73.7
.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain|use Fresh Ice Rhino Meat##41340
.' Feed 8 Stormcrest Eagles |q 12865/1
'|modelnpc 29854
step
goto 29.5,74.1
.talk 29650
..turnin 12854
..accept 12855
step
goto 28.8,74.1
.talk 29744
..turnin 12870
step
goto 29.2,74.9
.talk 29727
..turnin 12864
..accept 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12865
..accept 12867
step
goto 33,66.8
.click Eagle Egg##1867+
.get 15 Stormcrest Eagle Egg|q 12867/1
.kill 8 Frostfeather Screecher##29792+ |q 12866/1
.kill 8 Frostfeather Witch##29793+ |q 12866/2
step
goto 36.4,64.1
.' Use the Frosthound's Collar in your bags next to this broken down tent|use Frosthound's Collar##41430
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track down the thief |q 12855/1
step
goto 48.5,60.8
.kill Tracker Thulin##29695 |q 12855/2
.collect Brann's Communicator##40971|q 12871
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12855
..accept 12858
step
goto 37.6,43.5
.kill Library Guardian##29724 |n
.collect 6 Inventor's Disk Fragment##41130|n
.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
.get The Inventor's Disk|q 12858/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12858
..accept 12860
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
.' Gather 7 Hidden Data |q 12860/1
'|modelnpc 29746
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12860
..accept 13415
step
goto 37.4,46.8
.click Inventor's Library Console##8177
..turnin 13415
..accept 12872
step
'Click the Charged Disk in your bags|use Charged Disk##44704
.from Archivist Mechaton##29775
.get Norgannon's Shell|q 12872/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12872
..accept 12871
..accept 12885
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12885
..accept 12930
step
goto 29.4,73.8
.talk 29743
..turnin 12871
..accept 12873
step
goto 29.2,74.9
.talk 29727
..turnin 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12867
step
goto 30.31,74.8
.talk 29593
..turnin 12873
..accept 12874
step
goto 29.8,75.7
.talk 29732
..'Tell him you are ready for your test|goto The Storm Peaks,53.5,35.1,0.5|c
step
goto 53.6,35.1
.click Battered Storm Hammer##1107
.collect Battered Storm Hammer##42624|q 12874
step
goto 53.5,37.9
.' Use your Battered Storm Hammer on The Iron Watcher repeatedly|use Battered Storm Hammer##42624
.' While he is stunned, run away so the Hammer can recharge
.' When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
.kill The Iron Watcher##30142 |q 12874/1
step
goto 30.31,74.8
.talk 29593
..turnin 12874
..accept 12875
step
goto 29.8,75.7
.talk 29732
..accept 12876
step
goto 27.0,66.9|n
.' The path to An Experienced Guide and Unwelcome Guests starts here|goto The Storm Peaks,27.0,66.9,0.2|noway|c |q 12876
step
goto 26.3,66.7
.kill 10 Stormforged Invaders|q 12876/1
.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
.get 5 Frostweave Cloth|q 12930/2
step
goto 25.2,68.5
.talk 29751
..turnin 12875
..accept 12877
step
goto 27.1,67.3
.from the Stormforged Monitor##29862
.get Frostgrip's Signet Ring|q 12877/1
step
goto 39.6,59.8
.talk 30052
..turnin 12877
..accept 12986
step
goto 52.6,56.9
.' Use Creteus's Mobile Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Winter |q 12986/2
step
goto 64.3,46.7
.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Life |q 12986/3
step
goto 53.5,42.3
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Order |q 12986/4
step
goto 45.6,49.2
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Invention |q 12986/1
step
goto 39.6,59.8
.talk 30052
..turnin 12986
..accept 12878
step
goto 41.5,62.1|n
.' The path to The Hidden Relic starts here|goto The Storm Peaks,41.5,62.1,0.2|noway|c |q 12878
step
goto 44.5,64.5
.click The Guardian's Charge##1387
..turnin 12878
..accept 12879
step
goto 38.2,61.7
.talk 30052
..turnin 12879
..accept 12880
step
goto 39.6,56.4
.talk 29579
..turnin 12880
..accept 12973
step
.clicknpc Brann's Flying Machine##30134
.kill the dwarves that jump on the plane as you fly|n
.' Accompany Brann Bronzebeard to Frosthold |q 12973/1
step
goto 30.3,74.8
.talk 30401
..turnin 12973
step
goto 29.8,75.7
.talk 29732
..turnin 12876
..accept 12869
step
goto 44.6,59.8
.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
.kill 16 Stormpeak Wyrm##29753+ |q 12869/1
step
goto 29.8,75.7
.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
.talk 29732
..turnin 12869
step
goto 28.3,29.4
.click Enchanted Earth##8194
.get 7 Enchanted Earth|q 12930/1
step
goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
goto The Storm Peaks 30.9,37.3
.talk 29963
.home Bouldercrag's Refuge
step
goto 28.1,36.7
.from Stormforged Raider##29377+, Stormforged Reaver##29382+ |n
.kill 10 Stormforged Attacker|q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders |q 12937/1
'|modelnpc 30035
step
goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7|goto 27.5,49.7
.kill 3 Stormforged Taskmaster##29369+ |q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes |q 12957/1
.clicknpc Ore Cart##25986
.get 5 Dark Ore Sample|q 12964/1
step
goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
step
goto 24,42.6
.click Loken's Fury##8224
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.click Loken's Power##8224
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.click Loken's Favor##8224
.' Destroy Loken's Favor |q 12965/3
step
goto 25,42.9
.from Stormforged Champion##29370+, Stormforged Magus##29374+, Stormforged War Golem##29380+
.kill 10 Nidavelir Stormforged|q 12978/1
step
goto 25,42.9
.from Stormforged Champion##29370+, Stormforged Magus##29374+
.kill 10 Nidavelir Stormforged|q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
goto 31.4,38.1
.talk 29801
..turnin 12965
step
goto 31.3,38.2
.talk 30152
..turnin 12978
..turnin 12979
..accept 12980
step
'The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c |q 12980
step
goto 32.0,40.7
.talk 30190
.' Tell him you found a strange armor plate
.' Investigate the Armor Plate |q 12980/1
step
'Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c |q 12980
step
goto 31.3,38.2
.talk 30152
..turnin 12980
step
goto 31.4,38.1
.talk 29801
..accept 12984
step
goto 24.4,52.1
.' Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
.' Help fight Valduran the Stormborn
.kill Valduran the Stormborn##29368 |q 12984/1
step
goto 31.4,38.1
.talk 29801
..turnin 12984
..accept 12988
step
goto 31.3,38.2
.talk 30152
..accept 12991
step
goto 29.0,45.8
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the North Lightning Forge |q 12988/1
step
goto 29.5,45.9
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the Central Lightning Forge |q 12988/2
step
goto 30.2,46.1
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the South Lightning Forge |q 12988/3
step
goto 30.0,46.3
.kill 10 Stormforged Artificer##29376 |q 12991/1
step
goto 31.4,38.1
.talk 29801
..turnin 12988
step
goto 31.3,38.2
.talk 30152
..turnin 12991
step
goto 31.4,38.1
.talk 29801
..accept 12993
step
goto 28.9,44.1
.click Colossus Attack Specs##210
.get Click the Colossus Attack Specs |q 12993/1
step
goto 29.9,45.8
.click Colossus Defense Specs##210
.get Click the Colossus Defense Specs |q 12993/2
step
goto 31.4,38.1
.talk 29801
..turnin 12993
..accept 12998
step
'The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c |tip It's a big metal hole on in the side of the mountain. |q 12998
step
goto 36.2,60.9
.click Heart of the Storm##7800
.' Attempt to Secure the Heart of the Storm |q 12998/1
step
'Go outside |goto 32.4,63.9,0.5 |c |q 12998
step
goto 31.4,38.1
.talk 29801
..turnin 12998
..accept 13007
step
goto 27.2,35.9
.click Jormungar Control Orb##7951
.' Start controlling a Jormungar |invehicle |c |q 13007
step
goto 27.2,42.0
.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
.kill Iron Colossus##30300 |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
step
label "Daily"
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006
step
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
only if rep ('The Sons of Hodir')>=Honored
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 55.6,63.4
.from Viscous Oil##30325+
.get 5 Viscous Oil |q 13006/1
step
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
only if rep ('The Sons of Hodir')>=Honored
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
only if rep ('The Sons of Hodir')>=Honored
step
'Leave the cave |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
only if rep ('The Sons of Hodir')>=Honored
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.click Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' Click here to reset the daily quests. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
' Become honored with The Sons of Hodir |condition rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.click Hodir's Helm##8221
..accept 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220
..accept 13003
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.kill 3 Stormforged Infiltrators##30222+ |q 12994/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220
..turnin 13003
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
' Become Revered with The Sons of Hodir |condition rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.click Hodir's Helm##8221
..accept 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220
..accept 13003
step
goto 67.6,59.9
.click Arngrim the Insatiable##8284
..accept 13046
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 56.4,65.0
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220
..turnin 13003
step
goto 67.6,59.9
.click Arngrim the Insatiable##8284
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' To restart the Hodir daily quests, click here. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Revered
' Become Exalted with The Sons of Hodir |condition rep('The Sons of Hodir')==Exalted |next "Exalted"
step
label Exalted
'Congratulations, you are now Exalted with the Sons of Hodir!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Wyrmrest Accord",[[
description This guide will walk you through earning Exalted with
description They Wyrmrest Accord faction.
achieveid 1007
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto Borean Tundra,24.3,34.1
.kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |tip You can find them all around Coldarra.
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.collect 1 Scintillating Fragment |n
.'Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
..accept 11941
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
..turnin 11941
..accept 11943
step
goto 24.1,29.6
.from Coldarra Wyrmkin##25728+
.collect 5 Frozen Axe |q 11936
step
goto 24.1,29.6
.from Warbringer Goredrak##25712
.get Energy Core|q 11943/1
step
goto 27.3,20.5
.from General Cerulean##25716
.get Prison Casing|q 11943/2
step
goto 27.8,24.2
.click Blue Dragon Egg##7247+
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
..turnin 11943
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |tip They are flying above you in the sky. |modelnpc Nexus Drake Hatchling##26127
.' Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11919
step
goto 33.3,34.5
.' Capture the Nexus Drake |q 11919/1
.talk 26117
..turnin 11919
..accept 11931
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26237
..accept 11946
..turnin 11946
..accept 11951
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.get 3 Shimmering Rune|q 11931/1
step
goto 32.7,27.8
.from Inquisitor Caleras##25720
.get Azure Codex|q 11931/2
step
goto 28.8,30.0
.click Crystallized Mana##5013
.get 10 Crystallized Mana Shard|q 11951/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26237
..turnin 11951
..accept 11957
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.'Tell her you are ready to face Saragosa|goto 21.2,22.5,0.5|noway|c |q 11957
step
'She teleports you to a platform
.click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
.from Saragosa##26231
.get Saragosa's Corpse|q 11957/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
..turnin 11957
..accept 11967
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.' Tell her to return you to Transitus Shield|goto 33.3,34.4,0.5|noway|c |q 11967
step
goto 33.3,34.5
.talk 26117
..turnin 11931
..turnin 11967
..accept 11969
step
goto 25.4,21.7
.' Use Raelorasz' Spark next to the Signal Fire|use Raelorasz' Spark##44950|model Signal Fire##1967
.' Watch the cutscene
.' Lure Malygos |q 11969/1
step
goto 33.3,34.5
.talk 26117
..turnin 11969
step
goto The Nexus,36.2,81.4
.talk 55531
.accept 11973
step
.kill Keristrasza##26206 |q 11973/1 |tip She's at the center of the Nexus.  You won't be able to activated her until you kill the other bosses of The Nexus.
step
goto 36.2,81.4
.talk 55531
.turnin 11973
step
goto 33.3,34.5
.talk 26117
.accept 13124
step
goto The Nexus,38.4,51.0
'Fight the mobs up until this point, and click the Nexus Portal.
.' Click here to continue. |confirm |q 13124
step
.kill Drakos the Interrogator##27654 |n
.talk 27658 |tip You will only be able to talk to him after Drakos is dead.
..turnin 13124
..accept 13126
step
'Talk to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence. |tip You will only be able to get one type of Dragon Essence.
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
..' Click here to proceed. |confirm |q 13126
step
' You will need to kill 10 Constructs to proceed.
.' You can find them on the platforms above you.
.' You also need to kill constructs at the center ring.
..' Once you've killed all constructs, click here to continue. |confirm |q 13126
step
.kill Varos Cloudstrider##27447 |q 13126/2
' Once you kill him Belgaristrasz appears.
.talk 28012
.turnin 13126
.accept 13127
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
..' Fly up another level to the ring above. Click here to proceed. |confirm |q 13126
step
'Kill Mage-Lord Urom on all 3 platforms.
.' Once you kill the Fake Mage-Lord Urom, fly to the center.
.kill Mage-Lord Urom##27655 |q 13127/1
step
.talk 28012
.turnin 13127
..accept 13128
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
.' Fly up to the top of the construct. Once there, click here to continue. |confirm |q 13126
step
'Once at the top, use your dragons abilities to kill Ley-Guardian Eregos.
.kill Ley-Guardian Eregos##27656 |q 13128/1
step
goto Borean Tundra,33.3,34.5
.talk 26117
.turnin 13128
step
goto Borean Tundra,33.5,34.4
.talk 26110
.accept 13412
step
goto 29.5,24.8 |tip You will have to fly up pretty high to the floating platforms.
.talk 32548
.turnin 13412
..accept 13413
step
.' Tell Corastrasza you have the courage to face Malygos drakes
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elite##32534 |q 13413/1
step
goto 29.5,24.8|n
.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
step
goto 29.5,24.8
.talk 32548
..turnin 13413
step
goto Dragonblight,29,55.5
.talk 26673
..accept 12000
step
'Go outside the cave and southwest to 22.3,54.1|goto 22.3,54.1
.'Loot the Dead Mage Hunters around the area.
.collect Mage Hunter Personal Effects##35792+ |n
.' Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
.get Moonrest Gardens Plans|q 12000/1
step
goto 29,55.5
.talk 26673
..turnin 12000
..accept 12004
step
'Go inside the building to 19.4,58.1|goto 19.4,58.1
.from Goramosh##26349
.get The Scales of Goramosh|q 12004/2
.get Goramosh's Strange Device|n
.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36742
..accept 12055
step
goto 29,55.5
.talk 26673
..turnin 12055
..accept 12060
step
goto 24.2,55.6
.' Use your Surge Needle Teleporter|use Surge Needle Teleporter##36747
.' Walk around on the platform you get teleported onto
.' Observe the Object on the Surge Needle |q 12060/1
step
'Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c |q 12060
step
goto 29,55.5
.talk 26673
..turnin 12060
..accept 12065
step
goto 26.4,65
.from Captain Emmy Malin##26762
.collect Ley Line Focus Control Ring##36751 |n
.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |q 12065/1
step
goto 29,55.5
.talk 26673
..turnin 12065
..accept 12083
step
goto 32.2,70.6
.from Lieutenant Ta'zinni##26815|tip He walks in a circle around the half-circle purple glowing thing.
.collect Ley Line Focus Control Amulet##36779|q 12083
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |q 12083/1
step
goto 29,55.5
.talk 26673
..turnin 12083
..accept 12098
step
goto 40.3,66.9
.clicknpc Mage-Commander Evenstar##26873
|tip His body is floating underwater here.
..turnin 12098
..accept 12107
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
.' Retrieve ley line focus information |q 12107/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |q 12107/2
step
goto 29,55.5
.talk 26673
..turnin 12107
..accept 12119
step
goto 57.9,54.2
.talk 26443
..turnin 12119
..accept 12766
step
goto 60,55.1
.talk 27803
..turnin 12766
..accept 12460
step
goto 52.2,50
.talk 27506
..turnin 12460
..accept 12416
step
goto 52.7,46.2
.' Help kill the following:
..'12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12416/1 |modelnpc Frigid Ghoul Attacker##27685
..'8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12416/2 |modelnpc Frigid Geist Attacker##27686
..'1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12416/3 |modelnpc Frigid Abomination##27531
.' You can find more of these at [50.9,52.4]|n
step
goto 52.2,50
.talk 27506
..turnin 12416
..accept 12417
step
goto 46.7,52.8
.click Ruby Acorn##5746
.collect 6 Ruby Acorn##37727|n
.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |q 12417/1
step
goto 52.2,50
.talk 27506
..turnin 12417
..accept 12418
step
'Go into the valley to 48.2,47.8|goto 48.2,47.8
.kill 6 Frigid Necromancer##27539+ |q 12418/1
step
'Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |q 12418/2
.get Ruby Brooch|n
.' Click the Ruby Brooch in your bags|use Ruby Brooch##37833
..accept 12419
step
goto 52.2,50
.talk 27506
..turnin 12418
..accept 12768
step
goto 57.9,54.2
.talk 26443
..turnin 12768
..accept 12123
step
goto 57.9,54.2|n
.talk 26443
.'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c |q 12123
step
goto 59.8,54.7
.talk 26917
..turnin 12123
..accept 12435
step
goto 59.2,54.3
.talk 27575
..turnin 12435
..accept 12372
step
goto 58.3,55.2
.talk 27629
..'Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon##27608+ |q 12372/1
.kill 5 Azure Drake##27682+ |q 12372/2
step
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
'Follow the fleeing kobolds to 72.5,29.2|goto 72.5,29.2
.from Chilltusk##27005
.get Emblazoned Battle Horn|n
.' Click the Emblazoned Battle Horn|use Emblazoned Battle Horn##36855
..accept 12146
step
goto 60,55.1
.talk 26983
..turnin 12146
..accept 12148
step
goto 50.0,60.0
.from Bonesunder##27006
.get Emblazoned Battle Horn |q 12148/1
step
goto 60,55.2
.talk 26983
.turnin 12148
..accept 12149
step
goto 66.3,70.5
'He patrols around this area.  Search along the canyon until you find him.
.kill Bloodfeast##27008 |q 12149/2
step
goto 68.4,50.5
.kill Iceshatter##27007 |q 12149/1
step
goto 68.0,37.7
.kill Drakegore##27009 |q 12149/3
step
goto 60,55.2
.talk 26983
.turnin 12149
..accept 12150
step
goto 72.8,49.9
' Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord.
.' Name of the Magnataur Warlord revealed. |q 12150/1
step
goto 60,55.2
.talk 26983
.turnin 12150
..accept 12151
step
goto Dragonblight,57.1,76.2
'Use the Emblazoned Battle Horn at this location. |use Emblazoned Battle Horn##36864
.from Grom'thar the Thunderbringer##27002
..get Grom'thar's Head##36853 |q 12151/1
step
goto 60,55.2
.talk 26983
.turnin 12151
step
goto 60,54.5
.talk 27856
..accept 12470
step
goto 60.1,54.2
.talk 27765
..accept 12447
step
goto 71.7,38.9
.' Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
.' Fight the mobs that spawn
.' Protect the Hourglass of Eternity |q 12470/1
step
'Go inside the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12447
..accept 12262
..accept 12261
step
'Go outside the cave to 37.9,32.0|goto 37.9,32.0
.kill 6 Burning Depths Necrolyte##27356+ |q 12262/1
.kill 10 Smoldering Skeleton##27360+ |q 12262/2
step
goto 42.1,32
.' Use your Destructive Wards in this spot|use Destructive Wards##37445
.' Defend the Destructive Ward from the mobs that spawn
.' Fully Charge the Destructive Ward |q 12261/1
step
'Go west into the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12262
..turnin 12261
..accept 12263
step
'Follow the path in the cave while disguised as a cultist to 31.8,30.5|goto 31.8,30.5
.' Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
'Follow the path back down to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12263
..accept 12264
..accept 12265
step
'Follow the path in the cave to 34.2,26.8|goto 34.2,26.8
.kill 3 Burning Depths Necromancer##27358+ |q 12264/1
.kill 6 Smoldering Construct##27362+ |q 12264/2
.kill 6 Smoldering Geist##27363+ |q 12264/3
.click Necromantic Rune##465
|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
.' Destroy 8 Necromantic Runes |q 12265/1
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12264
..turnin 12265
..accept 12267
step
'Follow the path in the cave to 31.6,31.2|goto 31.6,31.2
.' Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539|tip Stand on the edge of the rock, next to the lava.
.kill Rothin the Decaying##27355 |q 12267/2
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12267
..accept 12266
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c |q 12266
step
goto 60.1,54.2
.talk 27765
..turnin 12266
step
goto 60,54.5
.talk 27856
.turnin 12470
step
goto 59.6,54.4
.talk 27785
..accept 12458
step
goto 63.3,71
.from Emerald Lasher##27254+
.get 3 Lasher Seed|q 12458/1
step
goto 63.7,71.9
.talk 27255
..accept 12454
step
goto 63.8,72.4
.kill 5 Emerald Skytalon##27244+ |q 12454/1 |tip They fly around over your head around the lake.
step
goto 63.7,71.9
.talk 27255
.turnin 12454
..accept 12456
step
goto Dragonblight,64.6,77.2
'Use Skytalon Molts at this spot. |use Skytalon Molts##37881
.from Alystros the Verdant Keeper##27249
..get The Plume of Alystros##37880 |q 12456/1
step
goto 63.7,71.9
.talk 27255
.turnin 12456
step
goto 59.6,54.4
.talk 27785
..turnin 12458
..accept 12459
step
goto 59.5,53.3
.talk 26949
.'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c |q 12459
step
goto 55.2,45.7
.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887|tip They fly around in the sky.
.kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1
step
goto 86.2,47
.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887|tip He's an abomination standing in a small room inside this abandoned fort.
.kill Weakened Turgid the Vile##27809 |q 12459/2
step
goto 89.5,19.1
.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887|tip He's standing on an undead looking platform.
.kill Weakened Overseer Deathgaze##27807 |q 12459/3
step
goto 59.6,54.4
.talk 27785
..turnin 12459
step
goto 59.8,54.7
.talk 27990
..turnin 12419
step
'At this point, you will need to buy the tabard from the vendor in Dragonblight.
..' Click here to proceed. |confirm
step
goto Dragonblight,59.9,53.0
.talk 32533
.buy Tabard of the Wyrmrest Accord##43156
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance. |use Tabard of the Wyrmrest Accord##43156
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
' Become Exalted with The Wyrmrest Accord |condition rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Wyrmrest Accord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Kirin Tor",[[
achieveid 1008
step
goto Borean Tundra 45.3,33.3
.talk 25262
..accept 11587
step
goto 45,33.4
.talk 25291
..accept 11576
step
goto 40.5,39.2
.kill Beryl Mage Hunter##25585+ |n
.collect Beryl Prison Key##34688 |n
.click Arcane Prison##7631
.' Free an Arcane Prisoner |q 11587/1
step
goto 41.2,41.8|n
.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8,0.5 |noway |c |q 11587
step
goto 34.3,42
.' Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
.' Take the Cleftcliff Anomaly Reading |q 11576/1
step
goto 45,33.4
.talk 25291
..turnin 11576
..accept 11582
step
goto 45.3,33.3
.talk 25262
..turnin 11587
..accept 11590
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c |q 11582
step
goto 44,28.6
.' Go down the path and underwater
.' Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
.' Take the Sundered Chasm Reading |q 11582/1
step
goto 45,33.4
.talk 25291
..turnin 11582
..accept 12728
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Winterfin Cavern starts here |goto 46.8,29.3,0.5 |noway |c |q 12728
step
goto 40.1,19.7
.' Stand in the mouth of the cave, past the torches
.' Use your Arcanometer |use Arcanometer##34669
.' Take the Winterfin Cavern Reading |q 12728/1
step
goto 45,33.4
.talk 25291
..turnin 12728
step
goto 43.5,37.4
.' Fight a Beryl Sorcerer |modelnpc Beryl Sorcerer##25316+
.' Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
.' Capture a Beryl Sorcerer |q 11590/1
step
goto 45.3,33.3
.talk 25262
..turnin 11590
..accept 11646
step
'Go inside the tall tower to 46.3,32.8 |goto 46.3,32.8
.talk 25480
..turnin 11646
..accept 11648
step
'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
.' Interrogate the Prisoner |q 11648/1
|modelnpc Beryl Sorcerer##25316
step
goto 46.3,32.8
.talk 25480
..turnin 11648
..accept 11663
step
'Go outside the tower to 45.3,33.3 |goto 45.3,33.3
.talk 25262
..turnin 11663
..accept 11671
step
goto 42.1,39.5
.' Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897 |tip If it won't let you, wait until Inquisitor Salrand appears again.
.kill Inquisitor Salrand##25584+ |n
.click Salrand's Lockbox##10
.get Salrand's Broken Key |q 11671/1
step
goto 45.3,33.3
.talk 25262
..turnin 11671
..accept 11679
step
goto 45.3,34.5
.talk 24795
..turnin 11679
..accept 11680
step
goto 46.4,37.3
.talk 25356
..turnin 11680
..accept 11681
step
'Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6,0.3 |noway
step
goto 46.4,32.4
.talk 25785
..turnin 11681
..accept 11682
step
'Go outside the tower to 45.3,34.5 |goto 45.3,34.5
.talk 24795
..turnin 11682
..accept 11733
step
goto 32.9,34.4
.talk 25314
..turnin 11733
step
goto Dalaran 25.3,47.7
.talk 32287
.buy 1 Tabard of the Kirin Tor##43157
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Kirin Tor in order to earn reputation while you clear the instance. |use Tabard of the Kirin Tor##43157
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
'Earn Exalted status with the Kirin Tor |condition rep('Kirin Tor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Kirin Tor!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Knights of the Ebon Blade",[[
achieveid 1009
step
map Icecrown
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [Icecrown 57.4,37.2]
.' Point 2: [Icecrown 64.4,55.4]
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
'On the Skybreaker airship:
.talk 29799
..accept 12887
step
goto 44.3,21.5
.' Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265 |tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular |q 12887/1
step
goto 44.1,24.7
.talk 29804
..turnin 12887
..accept 12891
step
goto 43.7,24.8
.from Shadow Cultist##29717+
.get 1 Cultist Rod|q 12891/1
.from Morbid Carcass##29719+
.get 1 Abomination Hook|q 12891/2
.from Vault Geist##29720+
.get 1 Geist Rope|q 12891/3
.from Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence|q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840
.' Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
.' Turn The Leaper |q 12893/3
step
goto 44.4,27.0
.from Vile##29769
.' Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
.' Turn Vile |q 12893/1
step
goto 41.8,24.5
.from Lady Nightswood##29770
.' Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
.' Turn Lady Nightswood |q 12893/2
step
goto 44.1,24.7
.talk 29804
..turnin 12893
..accept 12896
step
'The entrance to the Shadow Vault starts here |goto 43.7,23.6,0.3 |c
step
goto 44.9,19.9
.click General's Weapon Rack##7950 |tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
.' General Lightsbane spawns
.kill General Lightsbane##29851 |q 12896/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 12896
..accept 12898
step
goto 42.8,24.9
.talk 29343
..turnin 12898
..accept 12938
..accept 13106
step
goto 44.0,22.2
.talk 30308
..home The Shadow Vault
step
goto 44.7,20.3
.talk 30002
..turnin 12938
..accept 12939
step
goto 43.6,24.7
.talk 30074
..accept 12955
step
goto 37.9,25.1
.' Watch out for the Mjordin Combatants. They will attack you!
.talk 30081
..' Challenge him to a duel
.' Defeat Efrem the Faithful |q 12955/2
step
goto 36.1,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle |q 12955/4
step
goto 37.5,24.6
.' Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
..' Challenge and defeat 6 Mjordin Combatants |q 12939/1
step
goto 37.1,22.5
.talk 30086
..' Tell her you heard vrykul women cannot fight at all
.' Defeat Sigrid Iceborn |q 12955/1
step
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun |q 12955/3
step
goto 44.7,20.3
.talk 30002
..turnin 12939
..accept 12943
step
goto 43.6,24.7
.talk 30074
..turnin 12955
..accept 12999
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
..kill Thane Ulfrang the Mighty##29919 |q 12943/1
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains |q 12949/1
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
step
goto 41.0,23.9
.talk 30056
..turnin 12949
..accept 12951
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
step
goto 42.8,24.9
.talk 29343
..turnin 12951
..accept 13085
step
goto 43.1,21.1
.talk 30218
..turnin 13085
step
goto 44.7,20.3
.talk 30002
..turnin 12943
step
goto 43.4,20.6
.talk 32538
.buy 1 Tabard of the Ebon Blade##43155
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Ebon Blade in order to earn reputation while you clear the instance. |use Tabard of the Ebon Blade##43155
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
'Earn Exalted status with the Knights of the Ebon Blade |condition rep('Knights of the Ebon Blade')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Knights of the Ebon Blade!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Oracles",[[
achieveid 951
step
'Proceeding to Prequests |next |condition rep('The Oracles')<=Friendly |only if rep('The Oracles')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('The Oracles')>=Friendly |only if rep('The Oracles')>=Friendly
step
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
.talk 28214
'If he is not following your, use his Shackles in your bags. |use Goregek's Shackles##38619
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager##28098+ |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger##28096+ |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch##28213 |q 12530/1
|modelnpc Softknuckle##28127+
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp##28086+ |q 12533/1
.kill 9 Sapphire Hive Drone##28085+ |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c |q 12534
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'Throw your Chicken Net at the Chicken Escapees |use Chicken Net##38689
.clicknpc Chicken Escapee##28161+
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.click the Skyreach Crystal Formation##7927+
|tip They are in the rocky areas along this river.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
|tip You will find him along the bank of this river. Look for the rumbling rocks.
.get Claw of Serfex |q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip##28358 |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer##28080 |q 12576/1
.kill 6 Frenzyheart Scavenger##28081 |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek##28105 |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.click the Mistwhisper Treasure##7951
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
label daily
' During this next part you will fight a boss.
.' If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa.
.' NOTE** _You must kill Artuis Slowly if you are high level_. This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
.from Zepik the Gorloc Hunter##28668
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28667
...accept 12689
...accept 12695
.' If you cannot accept than you will need to wait until the next day and try again.  |confirm
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
goto 54.6,56.4
.talk 28027
..accept 12704
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |or
..accept 12737 |or
..accept 12736 |or
..accept 12726 |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |or
..accept 12762 |or
..accept 12705 |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide.  Keep in mind that they will not be reset by clicking here. |confirm |next "daily"
|next "exalted" |only if rep('The Orcales')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Oracles!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Frenzyheart Tribe",[[
achieveid 950
step
'Proceeding to Prequests |next |condition rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
step
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c |q 12534
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
label daily
' During this next part you will fight a boss.
.' If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa.
.' NOTE** _You must kill Artuis Slowly if you are high level_. This will decrease your Reputation with the _Oracles_ to _Hated_
.from Jaloot##28667
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28668
...accept 12582
...accept 12692
.' If you cannot accept than you will need to wait until the next day and try again.  |confirm
step
goto 55.4,69.6
.talk 28138
.turnin 12692
step
goto 55.5,69.7
.talk 28138
..accept 12702
.' Tell him you need to find Goregek
.collect Goregek's Shackles##38619 |q 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12758 |or
..accept 12734 |or
..accept 12741 |or
..accept 12732 |or
step
goto 55.5,68.7
.talk 29146
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12703 |or
..accept 12760 |or
..accept 12759 |or
step
'They are all around the village
.' Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12702/1
step
goto 33.1,47.3
.from Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
.collect Venture Co. Explosives##39651 |q 12758
step
goto 26.0,35.4
.from Stormwatcher##28877+
.' Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
.' Click the Stormwatcher's Head that spawns
.get Stormwatcher's Head |q 12758/1
step
goto 59.7,70.9
.from Hardknuckle Charger##28096+
.' Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Hardknuckle Charger |q 12734/2
step
goto 59.3,75.7
.from Sapphire Hive Wasp##28086+
.' Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Sapphire Hive Wasp |q 12734/1
step
goto 43.1,40.4
.from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
.' Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
.' Blood your Blade on 3 Mistwhisper Members |q 12734/3
step
goto 26.5,35.1
.from Aqueous Spirit##28862+
.collect 3 Essence of the Monsoon##39616 |q 12741
.from Storm Revenant##28858+
.collect 3 Essence of the Storm##39643 |q 12741
step
goto 22.4,33.8
.' Stand right up next to the tall stone altar |tip You may even need to rub against, or stand next to it so that you are touching it.
.' Feel the True Power of the Tempest |q 12741/1
step
goto 59.7,23.9
.from Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
.collect Matriarch's Heartblood##39573 |q 12732
step
goto 33.8,52.1
.' Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
.collect Suntouched Water##39576 |n
.' Click the Suntouched Water in your bags |use Suntouched Water##39576
.get Suntouched Heartblood |q 12732/1
step
goto 31.6,69.5
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.collect Oracle Blood##39265 |q 12703
step
goto 23.3,83.0
.' Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 |tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
.' Take Control of Kartak |invehicle |c |q 12703
step
goto 30.7,78.0
.' Use Kartak's abilities to kill Oracle mobs around this area
.kill 50 Sparktouched Gorloc |q 12703/1
step
goto 30.1,70.7
.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.' Kill 30 Sparktouched Gorlocs |q 12760/1
step
goto 24.0,83.1
.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
.collect Spike Bomb##39697 |q 12759
.collect Ensnaring Trap##39695 |q 12759
.collect Volatile Trap##39696 |q 12759
step
goto 28.4,76.1
.' Use your Spike Bomb |use Spike Bomb##39697
.' Use your Ensnaring Trap |use Ensnaring Trap##39695
.' Use your Volatile Trap |use Volatile Trap##39696
.' Use your traps near Oracles mobs around this area
.' Kill 50 Sparktouched Gorlocs |q 12759/1
step
goto 23.4,83.3
.talk 28106
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12703
..turnin 12760
..turnin 12759
step
goto 55.5,69.7
.talk 28138
..turnin 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12758
..turnin 12734
..turnin 12741
..turnin 12732
step
'You will now have to run daily quests in order to gain reputation.
.' Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Alliance Vanguard",[[
description This guide will help you get Exalted with the Alliance Vanguard
achieveid 1012
step
.' The most efficient way to earn reputation with the _Alliance Vanguard_ is to run any level 80 Northrend dungeon, or any Northrend Heroic.
.' Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need.
.' You will need to get Exalted with four factions, and as you get Exalted with each one, continue running dungeons to reach Exalted with all four.
|confirm
step
.' You are currently _Neutral_ with Explorers' League |only if rep("Explorers' League")==Neutral
.' You are currently _Friendly_ with Explorers' League |only if rep("Explorers' League")==Friendly
.' You are currently _Honored_ with Explorers' League |only if rep("Explorers' League")==Honored
.' You are currently _Revered_ with Explorers' League |only if rep("Explorers' League")==Revered
.' Exalted with Explorers' League |condition rep("Explorers' League")==Exalted
.' You are currently _Neutral_ with The Frostborn |only if rep('The Frostborn')==Neutral
.' You are currently _Friendly_ with The Frostborn |only if rep('The Frostborn')==Friendly
.' You are currently _Honored_ with The Frostborn |only if rep('The Frostborn')==Honored
.' You are currently _Revered_ with The Frostborn |only if rep('The Frostborn')==Revered
.' Exalted with The Frostborn |condition rep('The Frostborn')==Exalted
.' You are currently _Neutral_ with The Silver Covenant |only if rep('The Silver Covenant')==Neutral
.' You are currently _Friendly_ with The Silver Covenant |only if rep('The Silver Covenant')==Friendly
.' You are currently _Honored_ with The Silver Covenant |only if rep('The Silver Covenant')==Honored
.' You are currently _Revered_ with The Silver Covenant |only if rep('The Silver Covenant')==Revered
.' Exalted with The Silver Covenant |condition rep('The Silver Covenant')==Exalted
.' You are currently _Neutral_ with Valiance Expedition |only if rep('Valiance Expedition')==Neutral
.' You are currently _Friendly_ with Valiance Expedition |only if rep('Valiance Expedition')==Friendly
.' You are currently _Honored_ with Valiance Expedition |only if rep('Valiance Expedition')==Honored
.' You are currently _Revered_ with Valiance Expedition |only if rep('Valiance Expedition')==Revered
.' Exalted with Valiance Expedition |condition rep('Valiance Expedition')==Exalted
step
.' Congratulations, you are Exalted with the _Alliance Vanguard!_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Ashen Verdict",[[
achieveid 4598
step
'This reputation can be earned by running the Icecrown Citadel raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Icecrown Citadel 39.0,7.3
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Ashen Verdict |condition rep('Ashen Verdict')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Ashen Verdict!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Baradin's Wardens",[[
description This Guide will walk you through becoming
description Exalted with Baradin's Wardens.
achieveid 5375
daily
step
label "daily_reset"
#include "A_Baradin_Hold_Dailies"
step
.' Earn Exalted status with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with Hellscream's Reach!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Guardians of Hyjal",[[
description This guide will walk you through becoming Exalted
description with the Guardians of Hyjal faction.
achieveid 5827
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27726
step
goto 82.6,28.2
.talk 15187
..' Ask her to send you to Moonglade
.' Teleport to Moonglade |goto Moonglade |noway |c |q 27726
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27726
..accept 25316
step
goto 63.1,24.1
.talk 40843
.home Nordrassil
step
goto Mount Hyjal,62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.7
.talk 39925
..accept 25460
step
goto 64.1,22.5
.talk 40278
..accept 25370
step
goto 67.1,22.6
.kill 8 Scalding Rock Elemental##40229 |q 25460/1
.click Juniper Berry##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |modelnpc Faerie Dragon##39921
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926 |q 25370/1
|modelnpc Faerie Dragon##39921
step
goto 64.1,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.7
.talk 39925
..turnin 25460
step
goto 55.7,15.9
.' Stand in this spot
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.1,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 54173
..turnin 25317
..accept 25319
step
goto 47.6,35.5
.talk 39869
..accept 25472
step
goto 48.4,29.3
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
.' You can find more fragments at [44.7,33.3]
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.5,33.4
.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107 |modelnpc Blazebound Elemental##38896
.kill 30 Unbound Flame Spirit##33838+ |q 25323/1
step
goto 47.7,35.5
.talk 54173
..turnin 25323
..accept 25464
step
goto 44.0,26.9
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
' |modelnpc 40147
step
goto 47.7,35.5
.talk 54173
..turnin 25464
step
goto 47.6,35.5
.talk 39869
..accept 25430
step
goto 48.4,18.9
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.5,21.5
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,18.9
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.5,17.3 |n
.' Enter the cave |goto 52.5,17.3,0.5 |noway |c |q 25324
step
goto 56.8,18.8
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.5,17.3 |n
.' Leave the cave |goto 52.5,17.3,0.5 |noway |c |tip Follow the path up. |q 25325
step
goto 52.2,17.4
.talk 38917
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.7,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 38.1,23.0
.kill 6 Twilight Hunter##39437+ |q 25255/1
.kill 4 Twilight Proveditor##39436+ |q 25233/1
.click Twilight Supplies##9379+ |tip The slaves will drop them after you kill the Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.7,19.7
.talk 39427
..turnin 25233
..turnin 25234
..accept 25268
step
goto 35.7,19.4
.talk 39429
..turnin 25255
step
goto 30.1,31.3
.talk 39433
..turnin 25268
..accept 25271
step
goto 29.3,30.3
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25271/1
step
goto 30.1,31.3
.talk 39433
..turnin 25271
..accept 25273
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25273/1
step
goto 32.3,37.0
.talk 39627
..turnin 25273
step
goto 29.6,29.3
.talk 39627
..accept 25280
step
goto 28.2,29.8
.talk 39433
..turnin 25280
..accept 25278
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.6,30.2
.talk 39435
..accept 25300
step
goto 28.9,32.2
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 27.6,34.2
.click Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569 |tip Inside the brazier
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.4
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 27.0,36.0 |n
.' Enter the cave |goto 27.0,36.0,0.5 |noway |c |q 25298
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.7
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.7,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.7
.click Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
.' While inside the cave do the following:
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.kill 8 Minion of Gar'gol |q 25278/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave |goto 27.1,36.0,0.5 |noway |c |q 25332
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.2,29.8
.talk 39433
..turnin 25278
..accept 25352
..accept 25353
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 27.4,39.2
.kill 8 Twilight Stormcaller##39843+ |q 25352/1
.kill 5 Howling Riftdweller##39844+ |q 25352/2
.click Lightning Channel##9816
.get Charged Condenser Jar |q 25353/1
step
'Use your Totem of Goldrinn |use Totem of Goldrinn##52853
.talk 39627
..turnin 25353
..accept 25618
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 26.2,41.0,0.5 |noway |c |q 25600
step
goto 26.3,41.9
.talk 40834
..turnin 25618
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
.' Do the following in the Firelands Forgeworks
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.click Twilight Arms Crate##9393+
.' Destroy 10 Twilight Arms Crates |q 25575/1
step
goto 26.3,42.0
.talk 40837
..turnin 25576
step
goto 26.3,41.9
.talk 40834
..turnin 25575
..turnin 25577
..accept 25599
step
goto 30.7,41.7
.kill Cindermaul##40844 |q 25599/1
.click Battered Stone Chest##1387
.get Tome of Openings |q 25599/2
step
goto 26.3,41.9
.talk 40834
..turnin 25599
..accept 25600
step
goto 31.6,46.0
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25611
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 25.9,40.9,0.1 |noway |c |q 25352
step
goto 28.2,29.8
.talk 39433
..turnin 25352
..turnin 25611
step
goto Mount Hyjal 28.2,29.8
.talk 46987
..accept 27874 |tip Skip if you have completed Wings Over Mount Hyjal
step
goto 28.2,29.9
.talk 39434
..accept 25630
step
goto 19.0,40.9
.talk 39927
..turnin 25630
..accept 25381
..accept 25382
step
goto 19.2,37.9
.talk 39930
..accept 25385
step
goto 19.0,37.0
.talk 39928
..accept 25404
step
goto 19.6,36.4
.talk 41860
.fpath Grove of Aessina
step
goto 22.3,44.9
.talk 39933
..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
.' Persuade Blackhorn |q 25404/1
step
goto 22.3,44.9
.talk 39933
..turnin 25404
..accept 25408
step
goto 21.8,43.7
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.4,45.4
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.6,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 13.3,41.4
.kill 10 Raging Firestorm##39939 |q 25381/1
.kill 6 Twilight Inferno Lord##39974 |q 25382/1
.' Click Panicked Bunnies and Terrified Squirrels
.get 10 Frightened Animal |q 25385/1
' |modelnpc 39997
' |modelnpc 39998
step
goto 19.0,40.9
.talk 39927
..turnin 25381
..turnin 25382
step
goto 19.2,37.9
.talk 39930
..turnin 25385
..accept 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25412
..accept 25428
step
goto 12.9,41.4
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 14.5,40.8
.clicknpc Injured Fawn##39999+
.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
.' Escort 3 Injured Fawns Home |q 25392/1
step
goto 19.2,37.9
.talk 39930
..turnin 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25428
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 13.6,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 14.2,32.1
.' Click the ladder at the base of the tree
.clicknpc Hyjal Bear Cub##40240
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.6,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 21.6,59.1
.kill 8 Charbringer##40336 |q 25490/1
step
goto 27.1,62.6
.talk 39858
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 27.8,63.4
.talk 54392
.fpath Sanctuary of Malorne
step
goto 36.2,58.6
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768+
.get 10 Hyjal Seedling |q 25491/1
step
goto 27.1,62.6
.talk 39858
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
ding 81
step
goto 33.0,64.6
.' Click the Flameward |tip It's a floating stone in a golden claw stand.
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 39.3,54.1
.' Use your Heap of Core Hound Innards near Nemesis |use Heap of Core Hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340
.get Nemesis Shell Fragment |q 25507/1
step
goto 27.1,62.6
.talk 39858
..turnin 25507
..accept 25510
step
goto 27.1,63.0
.talk 40331
..turnin 25502
step
goto 24.7,55.7
.talk 41504
..turnin 25510
..accept 25514
..accept 25519
step
goto 23.8,56.0
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 1 |q 25514/1
step
goto 25.3,54.8
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 2 |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.4,57.4
.from Deep Corruptor##40561+ |tip They are found underwater
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 39858
..turnin 25520
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 42.2,45.5
.talk 41006
..accept 25655
..accept 25656
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 40.3,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208 |model Aviana's Burial Circle##439
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 38.5,43.0
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Kill 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.5
.talk 41006
..turnin 25655
..turnin 25656
..accept 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25665
..accept 25664
step
goto 38.3,44.2
.click Harpy Signal Fire##7290
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 35.7,42.3
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.5
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.talk 40997 |tip He is up on the platform above Choluna.
..accept 25740
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click the Codex of Shadows##470
..accept 25763
step
goto 30.9,76.9
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##7041+
.get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.6,75.8
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
.kill 3 Twilight Juggernaut##41031 |q 25761/1
.click Shadow Cloak Generator##9532+ |tip It may not be in the first one, so keep searching.
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.' Fight Sethria
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,48.0
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room. |modelnpc Aviana's Egg##41224
.' Burn Herald's Incense |q 25807/1
step
goto 44.2,47.8
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 43.8,46.0
.talk 47002
..accept 25830
.' If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
goto 39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01 <0.3 |noway |c |q 25810
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.1
.click the Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
.clicknpc Aviana's Guardian##40723
.' Ride Aviana's Guardian |invehicle |c |q 25523
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Land next to the Guardian Flag
.' Visit the Guardian Flag |q 25523/1
' |model 9475
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.' Kill 10 Twilight Knight Riders |q 25525/1 |modelnpc Twilight Buzzard##39833+ |tip The knights are riding buzzards.
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.' Kill 10 Twilight Lancers|q 25544/1 |modelnpc Twilight Firebird##40650+ |tip The lancers are riding buzzards.
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 36.6,53.3
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs at [39.3,54.1]
' |modelnpc 40762
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
goto 39.1,57.6
.' Don't forget to equip your real weapon again
.' Go inside the blue glowing orb |goto 39.1,57.6,0.5 |noway |c |q 25832
step
goto 44.3,48.0
.talk 41308
..turnin 25832
step
goto 27.4,55.6
.talk 41381
..turnin 25830
..accept 25842
step
goto 27.1,54.5
.kill 5 Fiery Tormentor##41396 |q 25842/1
step
goto 27.4,55.6
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 39858
..turnin 25372
..accept 25843
step
goto 41.9,60.7
.talk 41504
..turnin 25843
..accept 25904
step
goto 42.3,60.6
.talk 41507
..accept 25881
..accept 25899
step
goto 46.8,58.7
.from Twilight Field Captain##41502
.get Glyph of Opening |q 25904/1
.kill 10 Twilight Scorchlord##41500 |q 25899/1
.talk 41499
..' Tell them to get on their feet
.' Rescue 8 Lost Wardens |q 25881/1
step
goto 41.9,60.7
.talk 41504
..turnin 25904
..accept 25906
step
goto 57.1,56.0
.talk 41492
..turnin 25881
..accept 25886
..turnin 25899
step
goto 56.8,56.0
.talk 41497
..accept 25901
step
goto 56.3,57.2
.click Warden's Arrows##8094
.get 15 Warden's Arrow |q 25901/1
step
goto 49.0,54.0
.kill 4 Twilight Field Captain##41502+ |q 25886/1 |tip They are uncommon, so you may need to search for them.
step
goto 56.8,56.0
.talk 41497
..turnin 25901
step
goto 57.1,56.0
.talk 41492
..turnin 25886
step
goto 64.9,54.1 |n
.' Go inside the blue portal |goto 64.53,53.54,0.3 |noway |c |q 25906
step
goto 64.3,53.6
.talk 41498
..turnin 25906
..accept 25910
..accept 25915
step
goto 65.9,58.2
.' Follow the path down
.' Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you
.' Examine the Nemesis Crystal |q 25915/1
' |model Nemesis Crystal##7989
step
goto 61.8,56.8
.kill 4 Shadowflame Master##41563 |q 25910/1
.kill 10 Molten Tormentor##41565 |q 25910/2
step
goto 64.3,53.6
.talk 41498
..turnin 25910
..turnin 25915
..accept 25923
step
goto 63.2,62.2
.' Follow the path down
.' Fight Nemesis
.' Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
.kill Nemesis##40340 |q 25923/1
step
goto 64.3,53.6
.talk 41498
..turnin 25923
..accept 25928
step
goto 64.8,53.6 |n
.' Go inside the blue portal |goto 64.8,53.6,0.3 |noway |c |q 25928
step
goto 41.9,60.7
.talk 41504
..turnin 25928
..accept 25653
step
goto 62.0,24.9
.talk 40928
..turnin 25653
..accept 25597
step
goto 71.9,58.1
.talk 39621
..turnin 25597
..accept 25274
step
goto 73.5,60.5
.talk 39619
.' Lure the Twilight Recruit away from the group to [72.3,58.9]
.' Use your Blackjack on the Twilight Recruit |use Blackjack##52683
.from Twilight Recruit
.get Twilight Recruitment Papers |q 25274/1
step
goto 71.9,58.1
.talk 39621
..turnin 25274
..accept 25276
step
goto 76.9,62.0
.talk 39442
..turnin 25276
..accept 25223
..accept 25224
step
goto 77.0,62.1
.talk 39451
..accept 25330
step
goto 83.6,62.8
.kill 8 Fiery Instructor##40564 |q 25223/1
.click Flame Blossom##2312+
.get 5 Flame Blossom |q 25224/1
.' Use your Frostgale Crystal on an Immolated Supplicant |tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common. |use Frostgale Crystal##52819
.' Save an Immolated Supplicant |q 25330/1
' |modelnpc 39453
step
goto 77.0,62.1
.talk 39451
..turnin 25330
step
goto 76.9,62.0
.talk 39442
..turnin 25223
..turnin 25224
..accept 25291
step
goto 89.6,59.1
.talk 39413
..turnin 25291
..accept 25509
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25296
step
goto 90.2,56.4
.talk 39406
..accept 25294
step
goto 89.5,55.5
.click Crate of Scrolls##8704
.get Twilight Communique |q 25296/1
step
goto 92.0,51.5
.click Hyjal Battleplans##222
.get Hyjal Battleplans |q 25296/2
step
goto 87.3,52.7
.from Spinescale Basilisk##39658+
..collect 5 Charred Basilisk Meat##52708 |q 25294
.click Darkwhisper Lodestone##2571+
..' Break 5 Darkwhisper Lodestones |q 25509/1
step
'Use your Fiery Leash |use Fiery Leash##52717
.' You will summon the Spawn of Smolderos
.' Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
.' Feed the Spawn of Smolderos 5 Times |q 25294/1
' |modelnpc Spawn of Smolderos##39659
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25296
..accept 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25509
..accept 25499
step
goto 89.2,58.0
.' Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
.' Run away from the Blazing Trainer for 1 minute
.' Complete your Physical Training |q 25499/1
|modelnpc Blazing Trainer##40434
step
goto 89.6,59.1
.talk 39413
..turnin 25499
..accept 25299
step
'Use your Orb of Ascension |use Orb of Ascension##52828
.' Use the abilities on your action bar to answer Yes or No as the Orb of Ascenion asks questions
.' You must answer 10 questions correct.
.' Complete your Mental Training |q 25299/1
|modelnpc Orb of Ascension##39601
step
goto 89.6,59.1
.talk 39413
..turnin 25299
..accept 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25294
..accept 25494
step
goto 92.1,48.9
.kill 5 Failed Supplicant##39752 |q 25309/1
step
goto 84.9,47.0
.from Spinescale Matriarch##40403
.get Spiked Basilisk Hide |q 25494/1
step
goto 77.5,48.1
.' Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
.' Put on your Ogre Disguise |havebuff Interface\Icons\inv_misc_ogrepinata |q 25308
|model Ogre Outhouse##3332
step
goto 76.5,49.1
.talk 40489
..' Tell him one of the boys is causing some trouble outside
.kill High Cultist Azennios##40491 |q 25308/1
step
'Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25494
..accept 25496
step
goto 77.8,51.4
.talk 40409
..' Tell him Instructor Devoran sends a contender against his raptor
.' Wait until your Spawn of Smolderos kills his raptor, Butcher
.from Gromm'ko
.' Complete the Grudge Match |q 25496/1
step
goto 90.2,56.4
.talk 39406
..turnin 25496
step
goto 89.6,59.1
.talk 39413
..accept 25310
..accept 25311
step
goto 65.3,65.1
.' Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
.' Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
.kill Garnoth, Fist of the Legion##39726 |q 25310/1
step
goto 66.6,66.9
.kill 10 Horrorguard##48725 |q 25311/1
step
goto 89.6,59.1
.talk 39413
..turnin 25310
..turnin 25311
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25314
step
goto 78.8,56.4
.kill Okrog##40922 |q 25314/1 |tip You will find him walking up this road from the south.
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25314
..accept 25601
step
goto 89.6,59.1
.talk 39413
..turnin 25601
..accept 25315
step
goto 95.2,51.3
.click Initiation Podium##9481
.' Use the abilities on your hotbar to respond to what the crowd says |tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
.' Please the crowd 10 times
.' Give your Graduation Speech |q 25315/1
step
'Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
goto 95.3,51.3
.talk 40619
..turnin 25315
..accept 25531
step
goto 72.2,74.7
.talk 41025
..turnin 25531
..accept 25608
step
goto 71.9,75.2
.clicknpc Emerald Drake##40780
.' Ride the Emerald Drake |invehicle |noway |c |q 25608
step
goto 77.9,61.2
.' Use your Aerial Swipe ability on Twilight Stormwakers
.kill 5 Twilight Stormwaker##40573+ |q 25608/1
.' Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
.' Kill 40 Twilight's Hammer Units |q 25608/2
step
.' Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle
step
goto 72.2,74.7
.talk 41025
..turnin 25608
step
goto 72.1,74.0
.talk 40772
..accept 25548
step
goto 71.9,74.1
.talk 41631
..accept 25554
step
goto 71.6,75.3
.talk 43549
.fpath Gates of Sothann
step
goto 59.7,80.8
.click Burning Litanies##7693
.get The Burning Litanies |q 25554/2
step
goto 58.1,78.9
.click Tome of Flame##6894
.get Tome of Flame |q 25554/3
step
goto 56.8,83.8
.click Ascendant's Codex##6893
.get Ascendant's Codex |q 25554/1
step
goto 59.1,83.9
.click Pure Twilight Egg##9455
..accept 25644
step
goto 58.6,81.3
.kill 4 Flame Ascendant##40709+ |q 25548/1
.kill 5 Twilight Subjugator##40463+ |q 25548/2
step
goto 71.9,74.1
.talk 41631
..turnin 25554
..accept 25555
step
goto 72.1,74.0
.talk 41025
..turnin 25548
..accept 25549
step
goto 72.3,74.0
.talk 40816
..turnin 25644
..accept 25552
step
goto 59.1,78.5
.from Young Twilight Drake##40687
.get Young Twilight Drake Skull |q 25552/1
step
goto 57.4,68.0
.' Use your Horn of Cenarius |use Horn of Cenarius##55153
.kill Azralon the Gatekeeper##40814 |q 25555/1
step
goto 57.0,69.4
.kill 4 Twilight Augur##40713+ |q 25549/1
.kill 4 Twilight Retainer##40767+ |q 25549/2
.kill 1 Emissary of Flame##40755 |q 25549/3
.' The Emissary of Flame patrols between the below locations:
.' [54.7,67.0]
.' [60.7,72.6]
step
goto 72.3,74.0
.talk 40816
..turnin 25552
..accept 25553
step
goto 72.1,74.0
.talk 41025
..turnin 25549
..accept 25550
step
goto 71.9,74.1
.talk 41631
..turnin 25555
step
goto 54.4,85.8
.' Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
.kill Desperiona##40974 |q 25553/1
step
goto 43.5,83.6
.' Use your Drums of the Turtle God |use Drums of the Turtle God##55179
.kill King Moltron##40998 |q 25550/1
step
goto 72.1,74.0
.talk 41025
..turnin 25550
step
goto 72.3,74.0
.talk 40816
..turnin 25553
step
goto 71.9,74.1
.talk 40773
..accept 25551
step
goto 55.5,66.3 |n
.' Go through the blue portal |goto 55.5,66.3 |noway |c |q 25551
step
goto 44.7,79.2
.talk 41631
.' Tell him you're ready.
.kill Ragnaros##41634 |q 25551/1
.' Wait for Hamuul to open a portal back to Hyjal
.' Click the portal to Hyjal |goto Mount Hyjal,72.2,74.8 |noway |c |q 25551
step
goto 72.1,74.0
.talk 40772
..turnin 25551
step
goto Mount Hyjal,62.8,23.8
.talk 50314
.buy 1 Tabard of the Guardians of Hyjal##65906
step
'Use the Guardians of Hyjal tabard and run through instances with it. |equipped Tabard of the Guardians of Hyjal##65906 |use Tabard of the Guardians of Hyjal##65906
.' Earn Exalted reputation with the Guardians of Hyjal |condition rep('Guardians of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations you are Exalted with the Guardians of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Wildhammer Clan",[[
description This guide will walk you through becoming Exalted
description with the Guardians of Hyjal faction.
achieveid 4885
#include "A_Twilight_Leveling"
step
label dailies
goto Twilight Highlands,48.6,30.7
.talk 49386
..accept 28863 |tip This is a 2-person group quest.
step
goto 49.0,29.8
.talk 46591
..accept 28860
..accept 28864
step
goto 49.8,29.2
.talk 48010
..accept 28861
..accept 28862
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 28860/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 28861/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28862/1
.' You can find more around [49.1,37.3]
step
goto 49.0,37.3
.kill Warlord Halthar |q 28863/1 |tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28864/1
step
goto 49.8,29.2
.talk 48010
..turnin 28861
..turnin 28862
step
goto 49.0,29.8
.talk 46591
..turnin 28860
..turnin 28864
step
goto 48.6,30.7
.talk 49386
..turnin 28863
step
'Click here to return to the start of the dailies, you will only be able to do these once a day. |next "dailies" |confirm
'Click here to farm dungeons for reputation |next "dungeon" |confirm
step
label dungeon
goto Twilight Highlands,48.6,30.6
.talk 49386
.buy Tabard of the Wildhammer Clan##65908
step
'Use the Wildhammer Clan tabard and run through instances with it. |equipped Tabard of the Wildhammer Clan##65908 |use Tabard of the Wildhammer Clan##65908
.' Earn Exalted reputation with the Wildhammer Clan |condition rep('Wildhammer Clan')==Exalted |next "exalted"
.' Click here to go back to the dailies section of this guide. |confirm |next "dailies"
step
label exalted
'Congratulations, you are Exalted with the Wildhammer Clan!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Ramkahen",[[
achieveid 4884
#include "A_Uldum_Leveling"
step
'From this point you will need to run dailies and dungeons to build up reputation with Ramkahen.
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label daily
goto Uldum,60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto Uldum,41.4,5.5
.talk 49523
..accept 28736
step
goto 41.4,5.5
.' Click the Confiscated Artillery |tip It looks like a war catapult car machine.
.' Use the Designate Target ability on your hotbar on the Infantrymen
.' Slay 100 Infantrymen |q 28736/1
step
goto 41.4,5.5
.talk 49523
..turnin 28736
step
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label dungeon
goto Uldum 54.0,33.2
.talk 48617
.buy 1 Tabard of Ramkahen##65904
step
'Equip your Ramkahen tabard and run Cataclysm dungeons with it. |equipped Tabard of Ramkahen##65904 |use Tabard of Ramkahen##65904
.' Earn Exalted reputation with Ramkahen|condition rep('Ramkahen')==Exalted |next "exalted"
.' Click here to return to the start of the dailies |confirm |next "daily"
step
label exalted
'Congratulations, you are now Exalted with Ramkahen!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\The Earthen Ring",[[
author support@zygorguides.com
achieveid 4882
step
'To gain reputation with The Earthen Ring you will either need to quest or run dungeons wearing The Earthen Ring Tabard.
.' Click here to start questing. |confirm
.' Click here to run dungeons. |next "dungeon" |confirm
#include "A_Vashj'ir_Leveling"
#include "A_Deepholm_Leveling"
step
'Use The Earthen Ring tabard and run through instances with it.
.' Click here to continue. |confirm
step
label dungeon
goto Shimmering Expanse 49.1,42.2
.talk 50324
.buy Tabard of the Earthen Ring##65905
step
'Equip The Earthen Ring tabard and run Cataclysm dungeons with it. |equipped Tabard of the Earthen Ring##65905 |use Tabard of the Earthen Ring##65905
.' Earn Exalted reputation with The Earthen Ring|condition rep('The Earthen Ring')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Earthen Ring!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Therazane",[[
description Contains the pre-quests to unlock
description the daily quests in Deepholm.
description
description You must be at least level 82 to
description complete this guide section.
achieveid 4881
author support@zygorguides.com
#include "A_Deepholm_Leveling"
step
label daily
'At this point you can do the daily quests at Therazane to gain reputation.
.' Click here to begin daily quests. |confirm
step
#include "A_Therazane_DailyQuest"
step
'Once you've completed the daily quests, you will have to wait a day in order to do them again.
.' To go to the start of the dailies, click here. |confirm |next "daily" |only if rep('Therazane')<=Revered
.' Earn Exalted reputation with Therazane |condition rep('Therazane')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with Therazane!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Avengers of Hyjal",[[
author support@zygorguides.com
achieveid 5827
step
'This reputation can be gained by running the Firelands raid.
'A full run will grant roughly 2400 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
goto Mount Hyjal 47.2,78.1 |n
'Enter the Firelands here |goto Mount Hyjal 47.2,78.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Avengers of Hyjal |condition rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Avengers of Hyjal!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\Silverwing Sentinels",[[
step
'In order to gain reputation with the Silverwing Sentinels you and your team must capture flags in Warsong Gulch.
'To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_.
'Earn Exalted status with the Silverwing Sentinels |condition rep('Silverwing Sentinels')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Silverwing Sentinels!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\The League of Arathor",[[
step
'In order to gain reputation with The League of Arathor you must participate in Arathi Basin, but first you should make sure you have a quest in your log before you start.
|confirm
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..accept 8105
step
'To join Arathi Basin hit the _[H]_ key, click _Arathi Basin_, and click _Join Battle_.
|confirm
step
'While in Arathi Basin:
'Click the Banners at each location. |model 6271
'Assault the Mine |q 8105/1
'Assault the Lumber Mill |q 8105/2
'Assault the Blacksmith |q 8105/3
'Assault the Farm |q 8105/4
'Upon completing this quest and reach Friendly reputation with The League of Arathor you should be able to accept another quest from Field Marshal Oslight.
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..turnin 8105
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..accept 8114
step
'Enter Arathi Basin and hold four bases at the same time. |q 8114/1
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..turnin 8114
step
'Farm Arathi Basin until you are Exalted with The League of Arathor.
'Earn Exalted status with The League of Arathor |condition rep('The League of Arathor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The League of Arathor!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\Stormpike Guard",[[
step
'In order to gain reputation with the Stormpike Guard you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
goto Hillsbrad Foothills 45.3,45.2
.talk 13816
..accept 7141
step
goto 44.7,46.2
.talk 13841
..accept 7162
step
'Enter the cave |goto 44.6,45.8 <5 |c
step
goto 43.1,43.9
.talk 13777
..accept 7081
..accept 7102
..accept 7122
step
'To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_.
|confirm
step
goto Alterac Valley 43.5,15.6
.talk 13257
..accept 7223
step
'Enter the cave |goto 40.3,28.6 <5 |c
step
goto 41.9,36.2
'Follow the path around and click the Stormpike Banner
.click Stormpike Banner##5191
.get Stormpike Banner##17849 |q 7162/1
step
'Exit the cave |goto 40.3,28.6 <5 |c
step
label checklist
'While in Alterac Valley: |tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
.'Click Horde Flag
'Assault any Graveyard |q 7081/1
'Capture any Mine |q 7122/1
.'Click Horde Flag
'Assault any Tower |q 7102/1
'Loot Horde players when they die.
.get 20 Armor Scraps##17422 |q 7223/1
.kill Drek'Thar##11946 |q 7141/1
|model Horde Flag##5652
step
'Before you leave Alterac Valley:
goto Alterac Valley 43.5,15.6
.talk 13257
..turnin 7223
step
'To return to the Alterac Valley checklist click here. |next "checklist" |confirm
'To continue forward click here. |confirm
step
goto Hillsbrad Foothills 45.3,45.2
.talk 13816
..turnin 7141
step
goto 44.7,46.2
.talk 13841
..turnin 7162
step
'Enter the cave |goto 44.6,45.8 <5 |c
step
goto 43.1,43.9
.talk 13777
..turnin 7081
..turnin 7122
..turnin 7102
step
'Continue joining Alterac Valley until you reach Friendly with the Stormpike Guard. |condition rep('Stormpike Guard')>=Friendly |next "friendly"
step
label friendly
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7168
step
'Continue joining Alterac Valley until you reach Honored with the Stormpike Guard. |condition rep('Stormpike Guard')>=Honored |next "honored"
step
label honored
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7169
step
'Continue joining Alterac Valley until you reach Revered with the Stormpike Guard. |condition rep('Stormpike Guard')==Revered |next "revered"
step
label revered
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7170
step
'Continue joining Alterac Valley until you reach Exalted with the Stormpike Guard. |condition rep('Stormpike Guard')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Stormpike Guard!'
]])
