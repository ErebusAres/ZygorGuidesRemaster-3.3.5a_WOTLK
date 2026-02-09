local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesH") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Ambassador, Home Cities Reputation",[[
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to become exalted the fastest way, with all your Hometown Factions.
.' Below you will see which faction you are Exalted with and which ones you are not:
.' Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
.' Click to use the Orgrimmar rep Guide |confirm always |next "org" |only if rep ('Orgrimmar')<=Revered
.' or
.' Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
.' Click to use the Thunder Bluff rep Guide |confirm always |next "tb" |only if rep ('Thunder Bluff')<=Revered
.' or
.' Exalted with Undercity |condition rep('Undercity')==Exalted
.' Click to use the Undercity rep Guide |confirm always |next "uc" |only if rep ('Undercity')<=Revered
.' or
.' Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
.' Click to use the Darkspear Trolls Rep Guide |confirm always |next "troll" |only if rep ('Darkspear Trolls')<Revered
.' or
.' Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
.' Click to use Silvermoon City rep Guide |confirm always |next "belf" |only if rep('Silvermoon City')<=Revered
.' or
.' Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
.' Click to use the Bilgewater Cartel rep Guide |confirm always |next "bilge" |only if rep ('Bilgewater Cartel')<=Revered
|next "end" |only if achieved(762)
step
label	"org"
goto Orgrimmar,50.4,58.4
.talk 50488
.buy Orgrimmar Tabard##45581
step
.' Equip your Orgrimmar Tabard |equipped Orgrimmar Tabard##45581 |use Orgrimmar Tabard##45581
.' You can run any dungeon that grants experience to gain reputation for Orgrimmar.
.' Friendly with Orgrimmar |condition rep('Orgrimmar')>=Friendly
.' Honored with Orgrimmar |condition rep('Orgrimmar')>=Honored
.' Revered with Orgrimmar |condition rep('Orgrimmar')>=Revered
.' Become Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
|next "menu"
step
label	"tb"
'Skipping next part of guide |next "+tb_tab" |only if step:Find("+tb_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"tb_buy"
goto Thunder Bluff,47.0,50.2
.talk 50483
.buy Thunder Bluff Tabard##45584
step
label	"tb_tab"
.' Equip your Thunder Bluff Tabard |equipped Thunder Bluff Tabard##45584 |use Thunder Bluff Tabard##45584
.' You can run any dungeon that grants experience to gain reputation for Thunder Bluff.
.' Friendly with Thunder Bluff |condition rep('Thunder Bluff')>=Friendly
.' Honored with Thunder Bluff |condition rep('Thunder Bluff')>=Honored
.' Revered with Thunder Bluff |condition rep('Thunder Bluff')>=Revered
.' Become Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
|next "menu"
step
label	"belf"
'Skipping next part of guide |next "+belf_tab" |only if step:Find("+belf_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"belf_buy"
goto Eversong Woods,54.3,50.8
.talk 50484
.buy Silvermoon City Tabard##45585
step
label	"belf_tab"
.' Equip your Silvermoon City Tabard |equipped Silvermoon City Tabard##45585 |use Silvermoon City Tabard##45585
.' You can run any dungeon that grants experience to gain reputation for Silvermoon City.
.' Friendly with Silvermoon City |condition rep('Silvermoon City')>=Friendly
.' Honored with Silvermoon City |condition rep('Silvermoon City')>=Honored
.' Revered with Silvermoon City |condition rep('Silvermoon City')>=Revered
.' Become Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
|next "menu"
step
label	"uc"
'Skipping next part of guide |next "+uc_tab" |only if step:Find("+uc_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"uc_buy"
goto Undercity,63.0,49.1
.talk 50304
.buy Undercity Tabard##45583
step
label	"uc_tab"
.' Equip your Undercity Tabard |equipped Undercity Tabard##45583 |use Undercity Tabard##45583
.' You can run any dungeon that grants experience to gain reputation for Undercity.
.' Friendly with Undercity |condition rep('Undercity')>=Friendly
.' Honored with Undercity |condition rep('Undercity')>=Honored
.' Revered with Undercity |condition rep('Undercity')>=Revered
.' Become Exalted with Undercity |condition rep('Undercity')==Exalted
|next "menu"
step
label	"troll"
'Skipping next part of guide |next "+troll_tab" |only if step:Find("+troll_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"troll_buy"
goto Orgrimmar,50.0,58.1
.talk 50477
.buy Darkspear Tabard##45582
step
label	"troll_tab"
.' Equip your Darkspear Trolls Tabard |equipped Darkspear Tabard##45582 |use Darkspear Tabard##45582
.' You can run any dungeon that grants experience to gain reputation for Darkspear Trolls.
.' Friendly with Darkspear Trolls |condition rep('Darkspear Trolls')>=Friendly
.' Honored with Darkspear Trolls |condition rep('Darkspear Trolls')>=Honored
.' Revered with Darkspear Trolls |condition rep('Darkspear Trolls')>=Revered
.' Become Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
|next "menu"
step
label	"bilge"
'Skipping next part of guide |next "+bilge_tab" |only if step:Find("+bilge_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"bilge_buy"
goto Orgrimmar,50.1,58.6
.talk 50323
.buy Bilgewater Cartel Tabard##64884
step
label	"bilge_tab"
.' Equip your Bilgewater Cartel Tabard |equipped Bilgewater Cartel Tabard##64884 |use Bilgewater Cartel Tabard##64884
.' You can run any dungeon that grants experience to gain reputation for Bilgewater Cartel.
.' Friendly with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Friendly
.' Honored with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Honored
.' Revered with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Revered
.' Become Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
|next "menu"
step
label	"end"
.' Congratulations, you have earned the Title _Ambassador_! |achieve 948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Bloodsail Admiral",[[
description This Guide will help you get Reputation to earn the title _Bloodsail Admiral_.
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to earn the _Bloodsail Admiral_ the quickest way possible.
.' Honored with Bloodsail Buccaneers |condition rep('Bloodsail Buccaneeers')>=Honored
.' Click to use the Buccaneers rep Guide |confirm always |next "blood_grind"
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
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
.from Jaguero Stalker##2522+ |q 26604/1 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+
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
goto 45.0,79.7
.click Bloodsail Orders##220
.get Bloodsail Orders##220 |q 26612/4
step
goto 40.7,82.2
.click Bloodsail Orders##220
.get Bloodsail Charts |q 26612/3
.kill 8 Bloodsail Sea Dog##1565 |q 26612/1
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
.talk 43505 |tip Upstairs in this store
.' Tell Bossy _Moo_
.' <Do the Deed.>  :'(
'|get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
.' Tell him _I need an extra-large pirate hat._
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
.' Tell him _Here' the head and the hat, Fleet Master._
.' and _You're the boss._
.' Return both items to Fleet Master Seahorn |q 26630/1
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto The Cape of Stranglethorn,43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.4,91.5
.talk 2548
..turnin 26631
..accept 26633
step
.' Go up to the ship deck and use a mop to swob a deck
.click Swabbie's Mop##09742
.clicknpc Deck Stain##43511
.' Swab the decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 44.5,93.0
.talk 2545
..accept 26635
step
goto 47.3,95.5
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 44.5,92.9
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 41.9,83.0
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1 |tip You will get attacked by a lime thief when you loot these.
.' You can find more crates around: [40.3,82.9]
.' And [44.9,79.9]
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.5,91.6
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
goto 46.9,94.2
.clicknpc Ol' Blasty##43562 |invehicle |c |q 26647
.' Use your abilities to shoot the target dummy in the boat
.' Hit Smilin' Timmy Sticks with a cannoball 5 times |q 26647/1
step
.' Click the Red Arrow on your action bar to exit the Cannon |outvehicle |c |q 26647
step
goto 46.6,95.0
.talk 2547
..turnin 26647
..accept 26649
step
goto 46.8,95.1
.talk 43556
..accept 26648
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
goto 46.6,95.0
.talk 2547
..turnin 26649
step
goto 56.5,87.1
.' Use Dead-Eye's Flare Gun to reveal the ninja's around this area |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Complete Quest box in the top right of your screen
.turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.3,91.4
.' Go to the room below the stairs on this boat
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.' Tell him, _Long John Copper, is the Brashtide Crew ready for battle_ |tip He's standing in the middle of the boat.
.' Speak with Long John Copper |q 26662/1
step
goto 50.6,91.5
.click Grog Barrel##9095
.' _Nudge the cork._
.'  Sabotage the Grog |q 26663/1
step
.' Go to the lower deck of the boat
.' Talk to Bloodsail Corsair
.' Tell them _You're a mutinous dog! Draw steel!_
.kill 9 Bloodsail Corsair##43636+ |q 26664/1
.' Click the Complete Quest box in the right corner
..turnin 26664
.' You can also find Bloodsail Corsairs on the other boat around [46.8,93.7]
step
goto 46.8,93.7
.click Gunpowder Barrel##9095
.' _Pour the water onto the gunpowder_
.'  Sabotage the Gunpowder |q 26663/2
step
goto 46.8,94.2
.talk 43660
.' Tell him _What can you tell me about the Brashtide Crew?_ |tip Standing on the bottom deck of the boat.
.'  Speak with Enormous Shawn Stooker |q 26662/2
step
goto 44.5,93.2
.talk 43661 |tip Standing in the middle of the boat
.' Tell her _You know the battle plan, right?_
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Complete Quest box in the right corner
..turnin 26662
step
goto 44.6,92.8
.click Cannonball Crate##9651 |tip It's on the lowest deck of the ship.
.' _Grease the Cannonballs_
.' Sabotage the Cannonballs |q 26663/3
.' Click the Complete Quest box in the right corner
..turnin 26663
..accept 26665
step
goto 41.2,73.1
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.click Barrel of Doublerum##32
.' Just down the stairs in the room on the right
.get Barrel of Doublerum |q 26678/1
..turnin 26678
..accept 26679
step
.' _WARNING WARNING WARNING_
.' DO NOT TURN IN THIS QUEST
.' You can kill _Booty Bay citizens_ and gain repuation with the Bloodsail Buccaneers |tip You will lose reputation with ALL Steemwheedle Cartel if you do this
.' Click here to gain reputation with the Bloodsail Buccaneers |confirm always |next "Bloodsail_grind"
step
label	"Bloodsail_grind"
.' Kill any Booty Bay Citizen in this area to gain reputation with Bloodsaid Buccaneers |tip To attack them, open your Factions list, scroll down and find Booty Bay. Click on Booty Bay and check the At War box.
.' In order to accept the quest needed for the title "Bloodsail Admiral" you must be Friendly with the Bloodsail Buccaneers and Hated with Booty Bay.
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly
.' Hated with Booty Bay |condition rep('Booty Bay')==Hated
step
goto 44.5,93.0
.talk 2545
..accept 1036
step
goto 46.7,95.3
.talk 2546
..turnin 1036
..accept 4621
step
goto 41.6,73.0
.kill Fleet Master Seahorn##2487 |q 4621/2
step
goto 41.1,73.1
.kill Baron Revilgaz##2496 |q 4621/1
step
goto 46.7,95.3
.talk 2546
..turnin 4621
step
'Congratulations! You have earned the title Bloodsail Admiral!
.' Click here to farm your rep with Booty Bay again. |tip Any Steamwheedle Cartel town will be hostile toward you. Farming your reputation back up now would save you from being attacked when you enter one of these towns. |confirm
.' Or
.' Click here to continue |confirm |next "end"
step
goto 41.3,71.2
.' You can stay here and grind reputation with Booty Bay by killing Bloodsail Corsair
.from Bloodsail Corsair##43726+
.' Hated with Booty Bay |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')<=Hated
.' Hostile with Booty Bay |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')<=Hostile
.' Unfriendly with Booty Bay |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')<=Unfriendly
.' Neutral with Booty Bay |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')<=Neutral
.' Friendly with Booty Bay |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')<=Friendly
.' Honored with Booty Bay |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')<=Honored
.' Revered with Booty Bay |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')<=Revered
.' Exalted with Booty Bay |condition rep('Booty Bay')>=Exalted |only if rep('Booty Bay')<=Exalted
.' If you are at least Neutral with Booty Bay you can begin doing quests in this Area to gain rep faster.
.' Click here to start questing |confirm always |next "booty_quest" |only if rep('Booty Bay')>=Neutral
|next "end" |only if rep('Booty Bay')<=Unfriendly
step
label	"booty_quest"
goto 41.1,73.1
.talk 2496
..turnin 26679
..accept 26695
..accept 26698
step
goto 41.5,73.0
.talk 2487
..turnin 26698
..accept 26700
..accept 26699
step
goto 42.6,69.1
.click Narkk's Handbombs##9651
.get Narkk's Handbombs |q 26695/1
step
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.5,73.0
.click Blackwater Rope##7538
.' Swing over to the boat |goto 41.0,70.7,0.5 |noway |c
step
goto 41.4,71.0
.kill 8 Bloodsail Corsair##43726+ |q 26700/1
step
goto 41.1,70.9
.click Blackwater Rope##7538
.' Swing to the docks |goto 41.5,73.0,0.5 |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26699
..turnin 26700
..turnin 26695
..accept 26697
step
goto The Cape of Stranglethorn,40.4,73.4
.talk 737
.' Tell him _Sorry, not here to chat. I need a wind rider_ |invehicle |noway |c
step
.' Use the _Throw Handbombs_ key on your action bar
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destoy 6 Brashtide Attack Boats |q 26697/2 |modelnpc 43790
.' Use your _Return to Booty Bay_ button |outvehicle |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26697
..accept 26703
step
goto 35.7,66.8
.kill Fleet Master Firallon##2546 |q 26703/1
step
goto 41.2,73.1
.talk 2496
..turnin 26703
|next "end"
step
label	"blood_grind"
.' You will need a full group of 4 or 5 people to be able to reasonably farm Booty Bay for Bloodsail Reputation.
.' Once you have acquired a group, including a healer and tank, you can proceed
.' Click to continue |confirm always
step
goto The Cape of Stranglethorn 42.5,67.4
.' We suggest starting in this tunnel so you do not get overwhelmed by guards.
.' Set your Booty Bay social bar to _At War_ and begin killing Booty Bay Bruisers
.from Booty Bay Bruiser##4624+
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation with each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
step
label	"end"
.' End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Argent Champion\\Argent Dawn Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "H_Eastern_Plaguelands_Argent_Dawn"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Argent Champion\\Argent Crusade Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "H_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Jenkins",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
step
'This achievement will require you to kill 50 rookery whelps within 15 seconds.
.' It will help if you have a group of at least 2-3 players.
|confirm
step
goto Burning Steppes 21.0,38.0 |n
.' Enter Blackrock Mountain here |goto 21.0,38.0,0.5 |noway |c
step
goto 24.8,30.1 |n
.' Follow this hallway, up and to the right, to Blackrock Spire |goto 24.8,30.1,0.5 |noway |c
step
goto 24.3,25.7 |n
.' Enter Blackrock Spire here | goto 24.3,25.7,0.5 |noway |c
step
.' Follow the ramp up and to the left and enter the hallway _Dragonspire Hall_
.' Kill all the mobs in the room to the left, including all the little side rooms
.' Go through the door at the end of the room once you have killed all mobs here
|confirm
step
Run to the left side of the room _Hall of Binding_
.click Blackrock Altar##04076
.kill Pyroguard Emberseer##9816 |n
|confirm
step
'Continue through the next door into _The Rookery_
.from 50 Rookery Whelp##10161+ |achieve 2188/1 |tip You have 15 seconds from the first kill to get the rest of the 50.
step
'Congratulations! You have earned the Title _Jenkins_!!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Orc Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
description You cannot complete this section if you are an Orc.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
|confirm always
step
goto Icecrown,76.5,24.6
.talk 33361
..accept 13707
..turnin 13707
..accept 13697
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |or
..accept 13763 |or
..accept 13764 |or
step
goto 76.5,24.5
.talk 33405
..accept 13765
step
goto 76.4,24.6
.talk 33544
..accept 13767
..accept 13856
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13763
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13763/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
step
goto 76.5,24.5
.talk 33405
..turnin 13765
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1
step
goto 76.5,24.6
.talk 33361
..turnin 13726
step
'Congratulations, you are now a Champion of Orgrimmar! |tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Tauren Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
|confirm always
step
goto Icecrown,76.2,24.6
.talk 33403
..accept 13709
..turnin 13709
..accept 13720
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |or
..accept 13774 |or
..accept 13775 |or
step
goto 76.3,24.7
.talk 33539
..accept 13776
step
goto 76.1,24.6
.talk 33549
..accept 13777
..accept 13858
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13774
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13774/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
step
goto 76.3,24.7
.talk 33539
..turnin 13776
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13728/1
step
goto 76.2,24.6
.talk 33403
..turnin 13728
step
'Congratulations, you are now a Champion of Thunder Bluff! |tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Troll Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
|confirm always
step
goto Icecrown,76.0,24.5
.talk 33372
..accept 13708
..turnin 13708
..accept 13719
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |or
..accept 13769 |or
..accept 13770 |or
step
goto 76.0,24.6
.talk 33540
..accept 13771
step
goto 75.9,24.4
.talk 33545
..accept 13772
..accept 13857
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13769
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13769/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
step
goto 76.0,24.6
.talk 33540
..turnin 13771
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13727/1
step
goto 76.0,24.5
.talk 33372
..turnin 13727
step
'Congratulations, you are now a Champion of Sen'jin! |tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Blood Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Blood Elf.
|confirm always
step
goto Icecrown,76.5,23.9
.talk 33379
..accept 13711
..turnin 13711
..accept 13722
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |or
..accept 13784 |or
..accept 13785 |or
step
goto 76.4,23.8
.talk 33538
..accept 13786
step
goto 76.5,23.9
.talk 33548
..accept 13787
..accept 13859
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13784
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13784/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
step
goto 76.4,23.8
.talk 33538
..turnin 13786
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13731/1
step
goto 76.5,23.9
.talk 33379
..turnin 13731
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Undead Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
|confirm always
step
goto Icecrown,76.5,24.2
.talk 33373
..accept 13710
..turnin 13710
..accept 13721
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |or
..accept 13779 |or
..accept 13780 |or
step
goto 76.6,24.1
.talk 33541
..accept 13781
step
goto 76.5,24.3
.talk 33547
..accept 13782
..accept 13860
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13779
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13779/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
step
goto 76.6,24.1
.talk 33541
..turnin 13781
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13729/1
step
goto 76.5,24.2
.talk 33373
..turnin 13729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually the Crusader Title.
daily
step
#include "Argent Tourney_Aspirant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section and gain the Crusader Title.
daily
step
#include "Argent Tourney_Valiant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Outland Titles\\Of the Shattered Sun\\Dailies and Title",[[
author support@zygorguides.com
description These dailies will walk you through getting the reputation
description needed to purchase the Title of the Shattered Sun.
#include "H_SSO_PreQuest_with_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Flamebreaker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Veteran of the Molten Front_ achievement.
|confirm
step
\		#include "H_Firelands_PreQuests"
step
'Now that you have access to the Firelands Dailies, please use the Zygor Achievement Guides to help obtain this title.
|achieve 5879
step
'Congratulations! You have earned the title "The Flamebreaker"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
step
.' You will need to farm Cenarion Circle and Cenarion Expedition reputation.
.' Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to Honored.
.' You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
.' You can also grind reputation from Heroic Coilfang Instances up to Exalted if you would rather do that.
.' Coilfang Armaments drop in normal Steamvaults, as well as heroic Coilfang instances.
|confirm always
step
goto Hellfire Peninsula,47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.collect Eroded Leather Case##23338 |n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 15.7,52
.talk 16991
..turnin 9373
..accept 9372
step
goto 24.9,54.3
.from Hulking Helboar##16880+
.get 6 Helboar Blood Sample |q 9372/1
step
goto 15.7,52
.talk 16991
..turnin 9372
..accept 10255
step
goto 15.7,52
.talk 16888
..accept 10159
step
goto 25,54
.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
.from Dreadtusk##16992
.' Administer the Antidote |q 10255/1
step
goto 15.7,52
.talk 16991
..turnin 10255
step
goto 10.1,53.2
.kill 8 Thornfang Ravager##19349+ |q 10159/1
.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
step
goto Hellfire Peninsula,15.7,52
.talk 16888
..turnin 10159
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus##19188+ |q 10132/1
.collect Crimson Crystal Shard##29476 |n
.' Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
..accept 10134
step
goto 15.6,52.0
.talk 19293
..turnin 10132
..turnin 10134
..accept 10349
step
goto 16.0,51.6
.talk 19294
..turnin 10349
..accept 10351
step
goto 13.6,39.1
.' Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478 |tip It's a bright green symbol on the ground.
.from Goliathon##19305
.' Revitalize Fallen Sky Ridge |q 10351/1
step
goto 16.0,51.6
.talk 19294
..turnin 10351
step
goto Zangarmarsh,80.4,64.2
.talk 17909
..accept 9802
.talk 17956
..accept 9747
step
goto 79.1,65.3
.talk 17858
..accept 9728
step
goto 78.5,63.1
.talk 17834
..accept 9895
step
goto 78.4,62
.talk 17841
..turnin 9912
..accept 9716
step
goto 80.1,73.3
'Kill all mobs in this area
.get 10 Unidentified Plant Parts |q 9802/1
step
goto 81,72.2
.kill Boglash##18281 |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
step
goto 80.4,64.2
.talk 17909
..turnin 9802
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 85.3,90.9
.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
step
goto 83.1,85.2
.kill 6 Umbrafen Oracle##18077+ |q 9747/2
.kill 8 Umbrafen Seer##18079+ |q 9747/3
.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
step
goto 83.4,85.5
.talk 17969
..accept 9752
.' Escort Kayra Longmane to safety |q 9752/1
step
goto 80.4,64.2
.talk 17956
..turnin 9747
..accept 9788
.talk 17909
..accept 10096
step
goto 80.4,64.7
.talk 18070
..accept 9894
step
goto 78.4,62
.talk 17841
..turnin 9752
step
goto 74.7,91.6|n
.' The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6,0.3 |noway |c
step
'Go southwest inside the cave to 70.5,97.9 |goto 70.5,97.9
.click Ikeyen's Belongings##318
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to 72.5,94.0 |goto 72.5,94.0
.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 75.7,90.2
.kill 10 Marsh Lurker##18136+ |q 10096/2
.kill 10 Marsh Dredger##18137+ |q 10096/1
step
goto 70.9,82.1
.' Stand here to Investigate Umbrafen Lake |q 9716/1
.from Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
.get 10 Unidentified Plant Parts|q 9802/1
.get 30 Naga Claws|q 9728/1
.' You can find more Naga at:
.' [73.4,82.3]
.' [72.2,75.8]
step
goto 80.4,64.7
.talk 18070
..turnin 9894
step
goto 80.4,64.2
.talk 17956
..turnin 9788
.talk 17909
..turnin 10096
.' Turn in any stacks of 10 Unidentified Plant Parts you have
.' If you found an Uncatalogued Species, turn that in also
step
goto 79.1,65.3
.talk 17858
..turnin 9728
step
goto 78.5,63.1
.talk 17834
..accept 9957
step
goto 78.4,62
.talk 17841
..turnin 9716
..accept 9718
step
'Use your Stormcrow Amulet |use Stormcrow Amulet##25465
.' Watch yourself fly as a crow.
.' Explore the Lakes of Zangarmarsh |q 9718/1
step
goto 78.4,62
.talk 17841
..turnin 9718
..accept 9720
step
goto 80.4,64.7
.talk 18070
..accept 9785
step
goto 78.1,63.8
.talk 17901
.' Get the Mark of War |q 9785/2
step
goto 81.1,63.9
.talk 17900
.' Get the Mark of Lore |q 9785/1
step
goto 80.4,64.7
.talk 18070
..turnin 9785
step
goto 70.6,80.3
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/1 |tip The pump controls look like a little box with some levers on it
step
goto 63.1,64.1
.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
.' Disable the Lagoon Pump Controls |q 9720/4 |tip The pump controls look like a little box with some levers on it
step
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
.' Disable the Serpent Lake Controls |q 9720/3
.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
.' Get a Drain Schematics
.' Click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 50.4,40.8
.' Swim straight down into the big bubbling pipe opening below until you discover the drain
.' Locate the drain in Serpent Lake |q 9731/1
step
goto 25.4,42.9
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/2 |tip The pump controls look like a little box with some levers on it
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto 78.5,63.1
.talk 17834
..accept 9957
step
goto Hellfire Peninsula,16,52.2
.talk 16885
..turnin 9724
..accept 9732
step
goto Zangarmarsh,78.4,62
.talk 17841
.turnin 9732
..accept 29566
..accept 29616
step
goto Zangarmarsh,50.4,40.9 |n
.' Swim down this drain to Coifang Reservoir |goto Zangarmarsh,50.4,40.9,0.5 |noway |c
step
goto 49.0,35.7|n
.' Go through the swirling portal into The Slave Pens dungeon |goto The Slave Pens |noway |c
step
goto The Slave Pens 18.9,11.3
.talk 54667
..turnin 29566
step
goto The Slave Pens 18.9,11.3
.talk 54667
..accept 29563
..accept 29565
step
goto 17.9,12.1
.talk 54668
..accept 29564
step
goto 25.0,51.2 |n
.' Follow the path and go straight through this main room |goto 25.0,51.2,1 |noway |c
step
goto 40.2,35.5 |n
.' Follow this hallway |goto 40.2,35.5,0.5 |noway |c
step
goto 48.8,24.3
.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
.kill Mennu the Betrayer##17941 |q 29564/1
step
goto 48.9,83.4
.talk 17890
.' Discover Weeder Greenthumb |q 29563/2
step
goto 57.3,45.4
.from Rokmar the Crackler##17991+
.get The Invader's Claw |q 29565/1
step
goto 74.9,51.4 |n
.' Follow this path up |goto 74.9,51.4,1 |noway |c
step
goto 95.7,66.2
.talk 17893
.' Discover Naturalist Bite |q 29563/2
step
goto 95.7,66.2
.' Be ready to fight a couple mobs
.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
.talk 17893
.' Tell him
.' <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite
step
goto The Slave Pens 86.2,67.9
.from Quagmirran##17942+
.get The Slave Master's Eye |q 29565/2
step
goto The Slave Pens 17.9,12.2
.talk 54668
..turnin 29564
step
goto 18.8,11.3
.talk 54667
..turnin 29563
..turnin 29565
step
goto 21.1,13.7 |n
.' Leave this instance |goto Zangarmarsh |noway |c
step
goto Zangarmarsh 54.2,34.4 |n
.' Enter The Underbog |goto The Underbog |noway |c
step
goto The Underbog 29.5,64.7
.talk 54678
..accept 29568
step
goto 30.9,65.3
.talk 54675
..accept 29570
step
goto 31.5,65.5
.talk 54674
..accept 29567
..accept 29691
step
'As you go through the dungeon, look for Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.collect 5 Sanguine Hibiscus##24246 |n
|confirm
step
goto 42.5,62.0 |n
.' Keep following this straight path |goto 42.5,62.0,0.5 |noway |c
step
goto 57.4,82.9 |n
.' Follow this path up and around |goto 57.4,82.9,0.5 |noway |c
step
goto 70.0,90.0
.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
.' Keep moving him so that doesn't happen.
.kill Hungarfen##17770 |q 29568/1
step
goto 77.2,43.8
.' Follow the path around until you get here
.from Ghaz'an##18105
|confirm
step
goto 78.9,24.5 |n
.' Jump down in the water here  |goto 78.9,24.5,0.5 |noway |c
step
goto 79.6,15.2 |n
.' Swim across the water and jump down here |goto 79.6,15.2,0.5 |noway |c
step
goto 67.4,21.3
.talk 17885
.' Discover Earthbinder Rayge |q 29570/1
step
goto 67.0,14.0 |n
.' Follow this path down and to the right |goto 67.0,14.0,0.5 |noway |c
step
goto 41.5,25.4
.from Swamplord Musel'ek##17826, Claw##17827
.' Talk to Windcaller Claw
.' Discover Windcaller Claw |q 29570/2
step
goto The Underbog 25.9,45.5
.from The Black Stalker##17882
.get Black Stalker's Brain |q 29567/1
step
'Make sure you have picked up 5 Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.get 5 Sanguine Hibiscus##24246 |q 29691/1
step
goto The Underbog 29.5,64.5
.talk 54678
..turnin 29568
step
goto 30.8,65.3
.talk 54675
..turnin 29570
step
goto 31.6,65.5
.talk 54674
..turnin 29567
..turnin 29691
step
goto The Steamvault 17.9,27.3
.talk 54848
..turnin 29616
..accept 29613
step
goto 17.5,25.9
.talk 54849
..accept 29614
step
goto 18.9,27.8
.talk 54851
..accept 29615
step
goto 33.7,22.7
.kill 3 Bog Overlord##21694+|q 29614/1
step
goto The Steamvault 54.3,12.4
.kill Hydromancer Thespia##17797 |q 29615/1
step
goto 54.2,10.6
.click Main Chambers Access Panel##7147
.' You hear a faint echo...
|confirm always
step
goto 42.1,32.9 |n
.' Go through the opening on your left. |goto 42.1,32.9,0.5 |noway |c
step
goto 49.3,42.8 |n
.' Go up the ramp |goto 49.3,42.8,0.5 |noway |c
step
goto 55.8,47.3 |n
.' Go up to the bridge on the right side |goto 55.8,47.3,0.25 |noway |c
step
goto 39.7,69.0 |n
.' Cross the bridge and go through the hallway |goto 39.7,69.0,0.5 |noway |c
step
goto The Steamvault 33.6,81.2
.from Mekgineer Steamrigger##17796
.get Irradiated Gear |q 29614/3
.kill 6 Coilfang Leper##21338+ |q 29614/2
step
goto 31.8,84.0
.click Main Chambers Access Panel##7147
.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm always
step
goto 54.0,51.4 |n
.' Follow the tunnel back to the bridge |goto 54.0,51.4,0.5 |noway |c
step
goto 69.8,43.4 |n
.' Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4,0.5 |noway |c
step
goto 78.7,43.3 |n
.kill Warlord Kalithresh##17798 |q 29613/1
step
goto 49.1,42.6 |n
.' Follow the path down to the ramp |goto 49.1,42.6,0.5 |noway |c
step
goto 42.5,33.0 |n
.' Enter this doorway |goto 42.5,33.0,0.5 |noway |c
step
goto 18.8,27.6
.talk 54851
..turnin 29615
step
goto 18.0,27.2
.talk 54848
..turnin 29613
step
goto 17.6,25.9
.talk 54849
..turnin 29614
step
goto 17.6,30.6 |n
.' Leave The Steamvault |goto Zangarmarsh |noway |c
step
goto 51.9,38.2 |n
.' Swim through the tunnel to the other side. |goto Zangarmarsh,50.4,40.9,0.5 |noway|c
step
goto 79.1,64.8
.click Wanted Poster##15
..accept 9730
..accept 9817
step
goto Zangarmarsh 65.1,68.7
.kill Rajah Haghazed##18046 |q 9730/1
step
goto Zangarmarsh 65.1,40.9
.kill Rajis Fyashe##18044 |q 9817/1
step
goto 79.1,65.2
.talk 17858
..turnin 9730
..turnin 9817
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 9957
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424
..accept 9951
step
goto 45.1,21.8
.click Strange Object##7214
.' Examine the Strange Object |q 9971/1 |tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
goto 43.4,22.1
.kill Naphthal'ar |q 9951/1 |tip At the top of the big tower.
step
goto 45,22.5
.talk 18424
..turnin 9951
step
goto 44.3,26.3
.talk 18446
..turnin 9971
step
goto 44.1,23.8
.from Vicious Teromoth##18437+
.get 4 Vicious Teromoth Sample |q 9968/2
step
goto 45.8,29.8
.from Teromoth##18468+
.get 4 Teromoth Sample |q 9968/1
step
goto 44.3,26.3
.talk 18446
..turnin 9968
..accept 9978
step
goto 47.1,27
.talk 18482
.' Fight Empoor until he's almost dead
..turnin 9978
..accept 9979
step
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
step
goto Terokkar Forest 30.9,42.0
.from Skithian Windripper##18453+
.from Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
step
goto Shattrath City 72.3,30.9
.talk 18484
..turnin 10112
..accept 9990
step
goto Terokkar Forest 54.0,30.0
.click Sealed Box##6881
.get Sealed Box |q 9990/1
step
goto 44.4,26.3
.talk 18446
..turnin 9990
..accept 9994
step
goto 57.0,53.6
.talk 18447
..turnin 9994
..accept 10444
step
goto 69.6,44.6
.talk 21006
..turnin 10044
..accept 9996
step
goto 70.5,37.4
.kill 10 Firewing Defender##5355+ |q 9996/1
.kill 10 Firewing Bloodwarder##1410+ |q 9996/2
.kill 10 Firewing Warlock##16769+ |q 9996/3
step
goto 69.6,44.6
.talk 21006
..turnin 9996
..accept 10446
step
goto 73.4,36.3 |n
.' Enter this building |goto 73.4,36.3,0.5 |noway |c
step
goto 73.3,34.6
.click Orb of Translocation##7161
.' Run up the ramp to [73.9,35.8]
.from Sharth Voldoun##18554+
.collect The Final Code##29912
step
goto 74.2,36.5 |n
.click Orb of Translocation##7161
.' Teleport to the bottom of the tower |goto 73.3,36.3,0.5 |noway |c
step
goto 71.3,37.4
.click Mana Bomb##7213
.' Activate Mana Bomb |q 10446/1
step
goto 57.0,53.6
.talk 18459
..turnin 10446
..accept 10005
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 10005
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
goto 35.2,48.8
.from Infested Root-walker##22095+
.' Kill the Wood Mites that come out of their corpses
.kill 25 Wood Mite |q 10896/1
.' You can find more Infested Root-walkers at [39.1,47.0]
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
goto Blade's Edge Mountains 62.2,39.1
.talk 21782
..accept 10567
step
goto 62.0,39.5
.talk 22007
..accept 10682
step
goto 62.5,38.2
.talk 22133
..accept 10753
step
goto 61.3,38.4
.talk 22053
..accept 10771
..accept 10770
step
goto 58.8,39.1
.talk 21981 |tip He wanders around the Wyrmcult camps.
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
step
goto 61.8,39.6
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer##21810 |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net |q 10717/1
.collect 1 Meeting Note##31120 |n
.' Click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
step
goto 63.9,31.5
.from Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
.collect 6 Ruuan'ok Claw##30704 |q 10567
step
goto 64.5,33.1
.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
.from Harbinger of the Raven##21767 |tip On the little island in the pond.
.get Harbinger's Pendant##30706 |q 10567/1
step
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
step
goto 62,39.5
.talk 21983
..turnin 10717
step
goto 62.0,39.6
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
goto 46.7,32.9
.kill Draaca Longtail##22396 |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
goto 42.2,25.1
.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
|tip Must be within melee range to receive the buff
.' Anytime the buff wears off, kill Grishna mobs again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, next to a pond with basilisks in it.
.' Receive the Third Prophecy |q 10607/3
|model The Third Prophecy##7249
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the left ramp, then left across the hanging bridge.
.' Receive the First Prophecy |q 10607/1
|model The First Prophecy##7249
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
.' Receive the Second Prophecy |q 10607/2
|model The Second Prophecy##7249
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, in front of a hut.
.' Receive the Fourth Prophecy |q 10607/4
|model The Fourth Prophecy##7249
step
goto 32.3,34.9
.' Go inside the cave
.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121 |q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 62.0,39.5
.talk 22007
..turnin 10722
..accept 10748
step
'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3 |q 10748
step
goto 33.9,35.4
.kill Maxnar the Ashmaw##21389 |q 10748/1 |tip Follow the cave path until it dead ends into him.
step
'Leave the cave. |goto Blade's Edge Mountains,32.1,34.1,0.3 |q 10748
step
goto 62,39.5
.talk 22007
..turnin 10748
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 68.9,35.6
.kill 4 Felsworn Scalewing##21123+ |q 10753/1
.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
.kill 2 Fel Corrupter##21300+ |q 10753/3
.get Damaged Mask|n
.' Click the Damaged Mask |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds|q 10771/2
step
goto 71.6,18.5
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/3
step
goto 70.7,20.2
.kill 8 Scorch Imp##21021+ |q 10770/1
step
goto 62.7,40.4
.talk 22020
..turnin 10810
..accept 10812
step
goto 62.2,40.1
.talk 22127
..turnin 10812
..accept 10819
step
goto 62.6,38.2
.talk 22133
..turnin 10753
step
goto 61.2,38.4
.talk 22053
..turnin 10770
..turnin 10771
step
'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
.' It has a 60 minute timer on it
.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
.' Click here to continue. |confirm always
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant##19961+ |q 10820/1
.kill 4 Doomforge Engineer##19960+ |q 10820/2
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10820
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.click Legion Communicator##7091
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.3,41.7
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 73.8,41.0
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.4,40.6
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.0,39.9
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.3,42.5
.kill Doomcryer##19963 |q 10821/1
step
goto 62.4,38.4
.talk 22127
..turnin 10821
..accept 10910
step
goto 63.2,65.5
.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10910
..accept 10904
step
goto 63.8,66.5
.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
.get 5 Fel Cannonball |q 10904/1
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10904
..accept 10911
step
goto 64.8,68.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the South Warp-Gate |q 10911/1
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master##19747 |q 10912/1
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
goto Netherstorm,42.3,32.6
.talk 20871
..accept 10426
step
goto 41.2,32.2
.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
.from Mutated Farahlon Lasher##20774+
.' Test Energy Modulator 10 times |q 10426/1
step
goto 42.3,32.6
.talk 20871
..turnin 10426
..accept 10427
step
goto 40.4,35.5
.from Talbuk Doe##20610+, Talbuk Sire##20777
.' Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
.' Tag 12 Talbuk |q 10427/1
step
goto 42.3,32.6
.talk 20871
..turnin 10427
..accept 10429
step
goto 44.3,28.5
.from Markaru##20775+
..get Hulking Hydra Heart |q 10429/1
step
goto 42.3,32.6
.talk 20871
..turnin 10429
step
goto Borean Tundra,57,44.3
.talk 25809
..accept 11864 |instant
..accept 11866
..accept 11876
step
goto 57.3,44.1
.talk 25810
..accept 11869
step
goto 57,44
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
.' Free 8 Mammoth Calves |q 11876/1 |modelnpc 24613
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear |q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1 |modelnpc 25835
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
.' After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.' Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
|modelnpc Mammoth Calf##24613, Khu'nok the Behemoth##25862
step
goto 59.5,30.4
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull|n |modelnpc 25743
.' Click it to ride it|invehicle|c
step
goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.' Click Kaw's War Halberd on the ground
.get Kaw's War Halberd|q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thugs##25843 |n
.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill 1 Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 43.5,14
.talk 25197
..accept 11571
step
'Go southwest underwater to 42.5,15.9|goto 42.5,15.9
.kill Scalder##25226 |n |tip He is a water elemental that walks back and forth on the pink trench underwater.
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch|q 11571/1
step
goto 42.5,16.4
.click Winterfin Clam##261
.collect 5 Winterfin Clam##34597
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
step
goto 43,13.8
.talk 25206
..turnin 11559
step
goto 42.8,13.7
.talk 25199
..accept 11561
step
goto 43.5,14
.talk 25197
..accept 11560
step
goto 40.6,17.5
.kill 15 Winterfin murlocs|q 11561/1
.click Cage##1787
.' Rescue 20 Winterfin Tadpoles |q 11560/1
|modelnpc Winterfin Oracle##25216+, Winterfin Shorestriker##25215+, Winterfin Warrior##25217+
step
goto 42.8,13.7
.talk 25199
..turnin 11561
step
goto 43.5,14
.talk 25197
..turnin 11560
..accept 11562
step
goto 42,12.8
.talk 25205
..turnin 11562
..accept 11563
step
goto 42,13.2
.talk 25211
..accept 11564
step
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head |q 11563/1
step
goto 40.3,12.4
.kill Glimmer Bay Orca##25204+ |n
.get 7 Succulent Orca Blubber|q 11564/1
step
goto 42,12.8
.talk 25205
..turnin 11563
..accept 11565
step
goto 42,13.2
.talk 25211
..turnin 11564
step
goto 43.5,14
.talk 25197
..turnin 11565
..accept 11566
step
'Go southwest to Winterfin Village|n
.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
step
'Go inside the cave to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to [38.4,22.7]|goto 38.4,22.7
.from Keymaster Urmgrgl##25210
.get Urmgrgl's Key|q 11569/1
step
'Follow the path up and to the back of the cave to [37.6,27.4]|goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
'Go back up the path to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..turnin 11569
step
goto 37.8,23
.talk 25208
..accept 11570
.' Escort Lurgglbr to safety |q 11570/1
step
goto 43.5,14
.talk 25197
..turnin 11566
..turnin 11570
step
.' If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
.' The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
.' Click here to do the repeatable quest |confirm
step
label ears
goto Borean Tundra 60.9,63.4
.from Northsea Mercenary##25839+, Northsea Thug##25843+
.collect Nesingwary Lackey Ear##35188
.' Collect Lackey Ears in stacks of 15.
.' When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
step
label turnin
goto 57.1,44.3
.talk 25809
..accept 11867 |n
..' Click here to go back to farming ears. |next "ears" |confirm
..' Keep repeating this quest until you are Exalted with the Cenarion Expedition |condition rep('Cenarion Expedition')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Cenarion Expedition!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Circle Faction",[[
step
label	"menu"
.' There are several ways to earn reputation with _Cenarion Circle_.  Earning Exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
.' You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
.' or
.' There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to Exalted. Click here to go to these quests |confirm always |next "quest"
.' or
.' The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm"
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
label	"quest"
goto Silithus,54.9,36.0
.talk 15191
..accept 8280
step
goto 55.0,36.0
.' Click the Wanted Poster: Deathclasp |model 3053
..accept 8283 |tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 55.5,36.8
.talk 15174
.home Cenarion Hold
step
goto 55.4,36.3
.talk 15189
..accept 8277
step
goto 54.5,33.0
.talk 17082
..accept 9415
step
goto 53.2,35.1
.talk 15306
..accept 8318
step
goto 53.2,35.1
.talk 15270
..accept 8320
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8318/1
.collect 20 Encrypted Twilight Text##20404 |q 8323 |future |tip You need 10 extra Encrypted Twighlight Text for a future quest.
.kill 10 Twilight Geolord##11881+ |q 8320/1
step
goto 46.2,34.8
.from Sand Skitterer##11738+
.get 8 Sand Skitterer Fang |q 8277/2
.from Stonelash Scorpid##11735+
.get 8 Stonelash Scorpid Stinger |q 8277/1
.kill 15 Dredge Striker##11740+ |q 8280/1
step
goto 55.4,36.3
.talk 15189
..turnin 8277
..accept 8278
step
goto 54.9,36.0
.talk 15191
..turnin 8280
..accept 8281
step
goto 52.7,35.6
.talk 15306
..turnin 8318
step
goto 52.7,35.7
.talk 15270
..turnin 8320
..accept 8321
step
goto 70.2,16.1 |n
.' Enter the cave |goto 70.2,16.1,0.5 |noway |c |q 8321
step
goto 73.1,16.5
.' Follow the path inside the cave
.from Vyral the Vile##15202
.get Vyral's Signet Ring |q 8321/1
step
goto 70.2,16.1 |n
.' Leave the cave |goto 70.2,16.1,0.5 |noway |c |q 8321
step
goto 52.7,35.6
.talk 15270
..turnin 8321
step
goto 53.6,35.3
.talk 15183
..accept 8284
step
goto 31.0,13.6
.click Twilight Tablet Fragments##6419
.get 8 Twilight Tablet Fragment |q 8284/1
step
goto 53.6,35.3
.talk 15183
..turnin 8284
..accept 8285
step
goto 53.2,32.5
.talk 15181
..accept 8304
step
goto 68.7,63.0
.talk 15194
..turnin 8285
..accept 8279
step
goto 39.6,47.0
.talk 17080
..turnin 9415
..accept 9422
step
goto 50.0,49.9
.click Silithyst Geyser##6862
.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9422
.' They spawn in various locations, you find more at:
.' [53.2,41.6]
.' [57.1,47.2]
.' [60.0,41.1]
step
goto 39.1,46.9
.' Stand inside the big blue-glowing metal machine
.' Deliver Silithyst |q 9422/1
step
goto 39.6,47.0
.talk 17080
..turnin 9422
step
goto 46.2,39.8
.from Twilight Keeper Havunth##11804 |tip He walks around this area in a purple robe, so you may need to search for him.
.get Twilight Lexicon - Chapter 3 |q 8279/3
step
goto 33.9,34.1
.from Twilight Keeper Mayna##15200 |tip She walks around this area carrying a book, so you may need to search for her.
.get Twilight Lexicon - Chapter 1 |q 8279/1
step
goto 44.9,48.7
.kill 20 Dredge Crusher##11741+ |q 8281/1
.' You can find more Dredge Crushers around [Silithus,37.9,32.4]
step
goto 42.8,63.5
.from Stonelash Flayer##11737+
.get 3 Stonelash Flayer Stinger |q 8278/1
.from Stonelash Pincer##11736+
.get 3 Stonelash Pincer Stinger |q 8278/2
.from Rock Stalker##11739+
.get 3 Rock Stalker Fang |q 8278/3
step
goto 54.9,36.0
.talk 15191
..turnin 8281
step
goto 55.4,36.3
.talk 15189
..turnin 8278
step
goto 55.3,36.2
.talk 15190
..accept 8282
step
goto 46.0,79.4
.talk 15171
..' Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
.' Question Frankal |q 8304/1
step
goto 46.4,79.1
.talk 15170
..' Tell him the Commander has sent you here to gather some information about his missing wife
.' Question Rutgar |q 8304/2
step
.' Click the Complete Quest box in the top right corner of your screen
..turnin 8304
..accept 8306
step
goto 47.4,81.1 |n
.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
step
goto 49.2,81.6
.click Noggle's Satchel##323 |tip Be careful of Deathclasp, the elite scorpion that patrols this small area.
.get Noggle's Satchel##20379 |q 8282/1
step
goto 49.5,81.3
.from Deathclasp##15196
.get Deathclasp's Pincer |q 8283/1 |tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 24.8,77.3
.from Twilight Keeper Exeter##11803
.get Twilight Lexicon - Chapter 2 |q 8279/2
step
goto 55.3,36.2
.talk 15190
..turnin 8282
step
goto 54.3,34.0 |n
.' Follow the path up |goto 54.3,34.0,0.5 |noway |c
step
goto 54.5,32.0
.talk 15182
..turnin 8283
step
goto 46.0,79.4
.talk 15171
..accept 8310
step
goto 46.4,79.1
.talk 15170
..accept 8309
step
goto 58.5,78.4 |n
.' Enter the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 55.6,90.6
.from Mistress Natalia Mar'alith##15215
.' Discover the Fate of Mistress Natalia Mar'alith |q 8306/1
step
goto 55.6,90.5
.click the Hive'Regal Glyphed Crystal##6414
..' <Use the transcription device to gather a rubbing.>
.get Hive'Regal Rubbing |q 8309/1
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 58.5,78.4 |n
.' Leave the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 59.3,74.8
.from Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
.get Hive'Regal Silithid Brain |q 8310/1
.collect 1 Brann Bronzebeard's Lost Letter##20461 |n
.' Click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
..accept 8308
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8279
..accept 8287
..accept 8323
step
goto 53.2,32.5
.talk 15181
..turnin 8306
..turnin 8287
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8323/1
step
goto 46.0,79.4
.talk 15171
..turnin 8310
step
goto 46.4,79.1
.talk 15170
..turnin 8308
..turnin 8309
..accept 8314
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8323
step
goto Silithus 53.6,35.3
.talk 15183
..turnin 8314
|next "menu"
step
label	"farm_text"
goto Silithus,45.6,40.1
.from Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
.collect Encrypted Twilight Text##20404 |n
.' More Twilight mobs can be found at [28.0,74.8]
.' Here [69.7,16.6]
.' Here [33.5,33.9]
.' When you have a lot of Twilight Texts to turn in, click here |confirm
step
goto Silithus,53.2,35.1
.talk 15306
..accept 8319 |n
.' You can click here to farm more Texts |confirm |next "farm_text"
.' or
.' Click here to do quests outside of Silithus for more rep |confirm
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
goto Un'Goro Crater,55.7,60.6
.talk 38269
..accept 24854
step
goto 70.8,76.4
.talk 38274
..turnin 24854
..accept 24719
step
goto 67.4,72.3
.from Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
..get 5 White Ravasaur Claw |q 24719/1
.' More can be found around [Un'Goro Crater,69.1,57.1]
step
goto 70.6,76.8
.talk 38274
..turnin 24719
..accept 24686
step
goto 73.5,60.2
.' While traveling to the coordinates, look in the water for Bloodpetal Seeds |modelnpc 38202
.' Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
.get 4 Un'Goro Lasher Seed |q 24686/1
step
goto 70.6,75.9
.talk 38274
..turnin 24686
..accept 24689
step
goto 76.4,48.3
.talk 38263
..turnin 24689
..accept 24687
step
goto 75.8,44.1
.' Attack the Juvenile Bloodpetals in the area.
..kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1
step
goto 76.4,48.3
.talk 38263
..turnin 24687
..accept 24855
step
goto 69.9,34.1
.kill 11 Bloodpetal##6512+ |q 24855/1
step
goto 76.4,48.3
.talk 38263
..turnin 24855
step
goto Western Plaguelands 48.9,54.8
.talk 44456
..accept 26953
step
goto 48.5,54.9
.talk 44457
..accept 26956
step
goto 47.4,52.9
.click Unhealthy-Looking Pumpkin##6326
.from Thrashing Pumpkin##44487+
.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
step
goto 46.8,54.1
.click Rotten Apple##9820+
.from Pome Wraith##44488+
.' Remove 4 Rotten Apples |q 26956/2
step
goto 45.8,53.4
.click Bad Corn##9819
.from Corn Stalker##44489+
.' Remove 6 Bad Corn |q 26956/1
step
goto 50.3,59.6
.from Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+ |tip You must do this with the Troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
step
goto 48.9,54.8
.talk 44456
..turnin 26953
..accept 26954
step
goto 48.5,54.9
.talk 44457
..turnin 26956
step
goto 53.9,53.7
.' Click Zen'Kiki |tip He's the Troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
.kill 7 Diseased Hawk##44481 |q 26954/1
step
goto 48.9,54.8
.talk 44456
..turnin 26954
step
goto 49.3,55.0
.talk 44454
..accept 26999
step
goto 46.0,48.7
.from Hulking Plaguebear##44482+
.get 4 Hulking Plaguebear Sample |q 26999/3
.from Diseased Wolf##1817+
.get 4 Diseased Wolf Sample |q 26999/4
step
goto 57.0,62.7
.from Plague Lurker##1824+
.get 4 Plague Lurker Sample |q 26999/1
.from Venom Mist Lurker##1822+
.get 4 Venom Mist Lurker Sample |q 26999/2
step
goto 49.3,55.0
.talk 44454
..turnin 26999
..accept 26935
step
goto 48.1,32.4
.talk 11616
..turnin 26935
..accept 27000
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27000
step
goto 47.4,35.0
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Frighten 25 Northridge Spiders |q 27000/1
|modelnpc Northridge Spider##44284
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
step
goto 48.1,32.4
.talk 11616
..turnin 27000
..accept 27001
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27001
step
goto 47.0,35.3
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
.' The Hearthglen Recruits will kill the Northridge Spiders
.' Lure 10 Northridge Spiders to Lumber Mill |q 27001/1
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
goto 48.1,32.4
.talk 11616
..turnin 27001
..accept 27002
step
goto 42.0,14.8
.talk 44441
..turnin 27002
step
goto 49.3,54.9
.talk 44454
..accept 27053
step
goto 62.7,58.9
.from Cauldron Lord Soulwrath##11078
.get Gahrron's Withering Cauldron Key |q 27053/1
step
goto 62.6,58.6
.' Click the Scourge Cauldron |tip It's a huge shaking black pot with orange liquid in it on a stone platform.
..turnin 27053
..accept 27057
step
goto 49.3,55.0
.talk 44454
..turnin 27057
step
goto 48.9,54.8
.talk 44456
..accept 26955
step
goto 66.7,48.9
.' Click Cultist Cages |tip They look like big yellow cages around this area. |model 01787
.' Free and Heal 4 Captive Plaguebears |q 26955/1
step
goto 48.9,54.8
.talk 44456
..turnin 26955
step
goto Eastern Plaguelands,35.6,68.9
.talk 11063
..accept 27383
step
goto Eastern Plaguelands,32.5,83.7
.talk 10926
..turnin 27383
..accept 27384
step
goto 35.5,85.3
.' You can find the doll parts in all of the buildings
.click Pamela's Doll's Right Side##4233
.collect Pamela's Doll's Right Side##12888 |q 27384
.click Pamela's Doll's Left Side##4232
.collect Pamela's Doll's Left Side##12887 |q 27384
.click Pamela's Doll's Head##4231
.collect Pamela's Doll's Head##12886 |q 27384
step
'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
.get Pamela's Doll |q 27384/1
step
goto 32.4,83.7
.talk 10926
..turnin 27384
..accept 27392
step
goto 40.3,83.8
.from The Lone Hunter##45450
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.5,83.6
.talk 10926
..turnin 27392
..accept 27385
step
goto 35.6,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.3,68.1
.talk 10667
..turnin 27386
step
goto Eastern Plaguelands,35.0,68.1
.talk 45500
..accept 27544
step
goto 30.2,56.9
.talk 16135
..turnin 27544
..accept 27420
..accept 27421
step
goto 33.7,44.4
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Western Necropolis |q 27421/2
step
goto 37.8,42.5
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Northeastern Necropolis |q 27421/3
step
goto 37.6,48.3
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Southeastern Necropolis |q 27421/1
step
goto 36.4,46.0
.from Shadowmage##8550+, Dark Adept##8546+
.collect Plague Disseminator Control Rune##61037 |n
.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
.' Destroy 3 Plague Disseminators |q 27420/1
step
goto 30.2,56.9
.talk 16135
..turnin 27420
..turnin 27421
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
.' This is the end of the questing
.' Click here to go back to the Silithus Reputation menu |confirm |next "menu"
step
label	"exalted"
.' Congratulations, you are Exalted with Cenarion Expedition |only if rep('Cenarion Circle')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Timbermaw Hold Faction",[[
author support@zygorguides.com
step
goto Felwood,64.0,10.3
.talk 15395
..accept 28338
..accept 28366
step
goto 64.1,10.3
.talk 48461
..accept 28362
step
goto 60.6,9.5
.talk 47556
.turnin 28362
.accept 28364
step
goto 62.1,9.9
.from Chieftain Bloodmaw##9462
.get Drizle's Key##63695 |q 28364/1
step
goto 60.6,9.5
.talk 47556
.turnin 28364
step
goto 62.0,12.8
.from Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
.'Kill 15 Deadwood Furbolg |q 28338/1
.click Deadwood Weapon Pile##10202
.get 7 Deadwood Weapons |q 28366/1
..collect 1 Deadwood Ritual Totem##20741 |n
..accept 8470
.' You can find more around [Felwood,59.7,9.8].
step
goto 64.0,10.3
.talk 15395
..turnin 28338
..turnin 28366
..accept 28521
.' You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
goto 64.7,5.7
.talk 11558
.turnin 8470
.' You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
goto 64.9,5.2
.talk 11557
.accept 6031
only if rep ('Timbermaw Hold')>=Friendly
step
goto Winterspring,21.1,46.2
.talk 11556
..turnin 28521
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 24.5,47.6
.' Click the Winterfall Cauldron.
..turnin 28464
..accept 28467
step
goto 24.5,47.6
.from Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
.'Kill 15 Winterfall Furbolg |q 28460/1
..get 10 Winterfall Spirit Beads |q 28522/1
.' You can find more mobs around [Winterspring,27.3,49.3].
step
goto 25.1,58.5
.talk 9298
..turnin 28467
..turnin 28460
..accept 28469
..accept 28530
step
goto 29.3,54.8
.from Winterfall Runner##10916
.get Winterfall Crate |q 28469/1
.' They walk along the road so some searching may be required.
step
goto 32.7,50.6
.from Scalding Springsurge##48767+,Boiling Springbubble##48768+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..turnin 28530
..accept 28470
.' You should be honored with Timbermaw Hold at this point.
step
goto 37.0,55.6
.kill High Chief Winterfall##10738 |q 28470/1
step
goto 25.1,58.5
.talk 9298
..turnin 28470
step
goto 21.1,46.2
.talk 11556
..turnin 28522
.' You should now be able to do the quest More Beads for Salfa.
step
goto 65.3,46.2
.talk 48722
.accept 28614
step
goto 65.4,46.2
.talk 48723
..accept 28615
step
goto 67.0,47.7
' Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
.' Overload 4 Winterfall Earth Totems |q 28615/1
|modelnpc Winterfall Earth Totem##49177
step
goto 69.3,50.6
..kill Grolnar the Berserk##49178 |q 28614/1
step
goto Winterspring,65.4,46.2
.talk 48723
..turnin 28615
step
goto 65.3,46.2
.talk 48722
..turnin 28614
step
label	"the_grind"
.' At this point, you can do two repeatable quests, as well as grind to earn rep.
.' More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
.' or
.' Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood"
.' Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label	"winterfall"
goto 67.5,49.8
.from Winterfall Shaman##7439+,Winterfall Ursa##7438+
..collect Winterfall Spirit Beads##21383 |n |tip You need to collect at least 5.
.' 5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
.' More can be found at [Winterspring,35.6,56.3]
.' Click here to turn in your beads |confirm
step
goto 21.1,46.2
.talk 11556
..accept 28523 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"deadwood"
goto Felwood,61.9,12.3
.from Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
..collect Deadwood Headdress Feather##21377 |n |tip You need to collect at least 5.
.' 5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
.' More can be found at [Felwood,59.6,8.9]
.' Click here to turn in your feathers |confirm |next "turnin"
step
label	"turnin"
goto 64.0,10.3
.talk 15395
..accept 28395 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"exalted"
.' Congratulations, you are now Exalted with Timbermaw Hold!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Sporeggar Faction",[[
author support@zygorguides.com
step
label	"back up"
goto Zangarmarsh,19.1,64.2
.talk 17923
.accept 9739
.accept 9743
.' turn in these two quests 4 times to go from unfriend to friendly.
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.get 6 Bog Lord Tendril##24291 |q  9743/1
.click Mature Spore Sac##6911+
.get 10 Mature Spore Sac##24290 |q 9739/1 |tip They are on the ground throughout the area.
|only if rep('Sporeggar')<=Neutral
step
goto Zangarmarsh,19.1,64.2
.talk 17923
.turnin 9739 |repeatable
..turnin 9743 |repeatable
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291+ |n
.click Mature Spore Sac##6911+
.collect 10 Mature Spore Sac##24290 |n |tip They are on the ground throughout the area.
.' Turn in 10 Spore Sacs or 6 Bog Lord Tendrils at a time here: [19.0,63.3]
.' Reach Friendly with Sporeggar |condition rep('Sporeggar')>=Friendly
step
goto Zangarmarsh,19.1,64.2
.talk 17923
..accept 9919
step
goto 19.7,52.0
.talk 17924
..turnin 9919
step
.' Once you have reached friendly, you can farm the quest Now That We're Friends... and Bring Me A Shrubbery!  Grinding mobs at The Spawning Glen no longer will give you reputation.
.' Collecting 265 Sanguine Hibiscus from The Underbog will give you enough
.' Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
.' or
.' Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
step
label	"hibiscus_1"
goto 50.3,40.9 |n
.' Swim down through the pipe underwater to the other side. |goto 51.9,38.1,1 |c
step
goto Zangarmarsh,54.2,34.4 |n
.' Enter the Underbog |goto Zangarmarsh,54.2,34.4,0.5 |noway |c
step
goto The Underbog 31.6,65.4
.talk 54674
..accept 29691
..accept 29567
step
label	"hibiscus"
.' You can find the Sanguine Hibiscus on the ground scattered through out the instance.
.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
.collect Sanguine Hibiscus##24246 |n
.' You need 5 Sanguine Hibiscus for 750 Reputation.
.' 40 Sanguine Hibiscus = 6,000 Reputation.
.' 80 Sanguine Hibiscus = 12,000 Reputation.
.' Click when you are ready to turn in |confirm always
step
goto The Underbog 25.7,44.1
.from The Black Stalker##17882+
.get Brain of the Black Stalker |q 29567/1
step
goto The Underbog 31.6,65.4
.talk 54674
..turnin 29691
..turnin 29567
step
label	"hibiscus_r"
goto The Underbog 31.6,65.4
.talk 54674
.accept 9714 |instant |repeatable |or
.' or
.' Click here to go farming for more _Sanguine Hibiscus_ |confirm always |next "hibiscus" |or
.' or
.' Click here if you would like to farm Naga for more reputation |confirm always |next "grind_1" |or
step
goto 19.5,50.0
.talk 17856
.turnin 9715
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9715)
step
goto 19.5,50.0
.talk 17856
.turnin 9714
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9714)
step
label	"grind_1"
goto Zangarmarsh 19.5,50.0
.talk 17856
.accept 9726
|only if rep('Sporeggar')>=Friendly
|next "grind_2"
step
label	"grind_r"
goto 19.5,50.0
.talk 17856
..accept 9727 |repeatable |next "grind"|or
.' or
.' Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1" |or
|only if rep('Sporeggar')>=Friendly
step
label	"grind_2"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
|only if havequest(9726)
|next "grind_3"
step
label	"grind"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9727/1 |repeatable
.kill 6 Bloodscale Enchantress##18088+ |q 9727/2 |repeatable
|only if havequest(9727)
|next "grind_4"
step
label	"grind_3"
goto 19.5,50.0
.talk 17856
.turnin 9726
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9726)
step
label	"grind_4"
goto 19.5,50.0
.talk 17856
.turnin 9727
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9727)
step
label	"exalted"
.' Congratulations, you are now exalted with Sporeggar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Mag'har Faction",[[
description This Guide will help you reach Exalted status with the Mag'har Faction
author support@zygorguides.com
step
'Routing to proper section |next |only if not completedq(10011)
'Routing to proper section |next "done" |only if completedq(10011)
step
goto Hellfire Peninsula,55,36
.talk 3230
.accept 9400
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
step
goto 33.6,43.5
.clicknpc Fel Orc Corpse##17062
..turnin 9400
..accept 9401
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |modelnpc Fel Orc Corpse##17062
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot|goto 32,27.8,0.5|c
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
goto 55,36
.talk 3230
..turnin 9406
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag##17130+ |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc##17128+ |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof##18205+ |q 9789/1
.from Wild Elekk##18334
.collect 3 Pair of Ivory Tusks##25463 |q 9914 |future
.from Dust Howlers##17158
.collect Howling Wind##24504 |n
.' Use the Howling Wind in your bags |use Howling Wind##24504
..accept 9861
.' You can find more Clefthoofs, Elekks, and Dust Howlers at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 57.2,35.2
.talk 18808
.fpath Garadar
step
goto 57.1,34.9
.talk 18302
..accept 9944
step
goto 56.6,34.6
.talk 18913
.home Garadar
step
goto 55.4,37.4
.talk 18090
..turnin 9797
step
goto 55.5,37.6
.talk 18106
..accept 9888
step
goto 55.8,38
.talk 18407
..accept 10479
.click the Garadar Bulletin Board
..accept 9935
..accept 9939
step
goto 55,39
.talk 18234
..accept 9870
step
goto 54.7,39.7
.talk 18066
..accept 9863
.talk 18067
..accept 9864
.talk 18068
..accept 9867
step
goto 51.9,34.8
.talk 18335
..accept 9913
step
goto 60.5,22.4
.talk 18074
..turnin 9861
..accept 9862
.talk 18072
..turnin 9870
.talk 18073
..accept 9800
..accept 9815
.talk 18071
..accept 9818
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9818
..accept 9819
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer##17131+ |q 9858/1
.click Dung##3675
.get 8 Digested Caracoli |q 9800/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull##17132+ |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413 |q 9939/1 |tip Inside the cave at the top of the hill.
step
goto 48.3,21.5
.from 5 Warmaul Shaman##18064+ |q 9939/2
.from 5 Warmaul Reaver##17138+ |q 9939/3
.get 10 Obsidian Warbeads |q 10479/1
step
goto 32.4,36.1
.talk 18229
..turnin 9864
..accept 9865
.talk 18414
..turnin 9944
..accept 9945
.talk 18415
..accept 9948
step
goto 29.2,31.6 |n
.' The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here |goto 29.2,31.6,0.5 |noway |c
step
goto 23.4,29.2
.kill 8 Warmaul Brute##18065+ |q 9945/1
.kill 8 Warmaul Warlock##18037+ |q 9945/2
.collect Warmaul Prison Key##25604 |n
.click the yellow cages around this area
.' Free 5 Mag'har Prisoners |q 9948/1
step
goto 32.4,36.1
.talk 18414
..turnin 9945
.talk 18415
..turnin 9948
step
goto 41.5,40.9
.from Muck Spawn##17154+
.get 5 Muck-ridden Core |q 9815/1
step
goto 32,39.1
.kill 20 Murkblood Scavenger##18207+ |q 9865/1
.kill 10 Murkblood Raider##18203+ |q 9865/2
.kill 5 Murkblood Putrifier##18202+ |q 9862/1
.get 10 Murkblood Idol |q 9863/1
step
goto 30.9,42.3
.from Ortor of Murkblood##18204 |tip He's standing inside the big building here.
.get Head of Ortor of Murkblood |q 9867/1
step
goto 32.4,36.1
.talk 18229
..turnin 9865
..accept 9866
step
goto 30.8,58.1
.talk 18276
..accept 9900
..accept 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9913
..accept 9882
step
goto 31.8,56.8
.talk 18333
..accept 9914
..turnin 9914
step
goto 33.4,62.4
.click Oshu'gun Crystal Fragment##6415
.from Vir'aani Raider##17149
.get 10 Oshu'gun Crystal Fragment |q 9882/1
step
goto 30.6,67.5
.kill 8 Voidspawn##17981+ |q 9925/1
step
goto 42.4,73.5
.kill Gava'xi##18298 |q 9900/1 |tip He spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
step
goto 48.4,61.5
.kill 12 Ravenous Windroc##18220+ |q 9855/1
step
goto 30.8,58.1
.talk 18276
..turnin 9900
..turnin 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9882
step
goto 61.7,67.1
.talk 19035
..accept 10109
step
goto 65.4,70.8
.kill 10 Tortured Earth Spirit##17156+ |q 9819/1
step
goto 69.4,56.9
.from Dust Howler##17158+
.get 3 Air Elemental Gas |q 10109/1
.' You can find more Dust Howlers at [65.5,46.9]
step
goto 61.7,67.1
.talk 19035
..turnin 10109
step
goto Terokkar Forest,19.8,60.9
.talk 18273
..turnin 9888
..accept 9889
step
goto 20,63.1
.kill 10 Boulderfist Invader##18260+ |q 9889/1
step
goto 20,63.1
.' Fight Unkor the Ruthless until he submits |q 9889/2
.talk 18262
..turnin 9889
..accept 9890
step
goto 19.8,60.9
.talk 18273
..turnin 9890
..accept 9891
step
goto Nagrand,55.5,37.6
.talk 18106
..turnin 9891
..accept 9906
step
goto 55.8,38
.talk 18407
..turnin 10479
..turnin 9939
step
goto 55.5,37.6
.talk 18300
..accept 9910
step
goto 54.7,39.7
.talk 18066
..turnin 9863
.talk 18067
..turnin 9866
.talk 18068
..turnin 9867
step
goto 61.8,24.4
.talk 18099
..turnin 9819
..accept 9821 |tip He may not be in this spot, he wanders around the Throne of Elements area.
step
goto 60.5,22.4
.talk 18073
..turnin 9800
..accept 9804
..turnin 9815
.talk 18074
..turnin 9862
step
goto 59.7,27.3
.kill 8 Lake Spirit##17153+ |q 9804/1
step
goto 60.5,22.4
.talk 18073
..turnin 9804
..accept 9805
step
goto 52,20.2
.from Enraged Crusher##18062+ |tip You can find them all along this cliffside.
.get 10 Enraged Crusher Core |q 9821/1
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9821
..accept 9849
step
goto 71.6,40.5
.talk 18218
..turnin 9858
.talk 18180
..turnin 9850
.talk 18200
..turnin 9855
step
goto 70.8,51.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Western Hut |q 9805/2
step
goto 72.4,50.3
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Large Hut |q 9805/1
step
goto 72.8,54.7
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Eastern Hut |q 9805/4
step
goto 71.2,53.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Southern Hut |q 9805/3
step
goto 60.5,22.4
.talk 18073
..turnin 9805
..accept 9810
step
goto 72.1,69.9
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
.' Place the First Battle Standard |q 9910/1
step
goto 74.7,69.8
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip Up the hill on the middle ledge, overlooking the camp.
.' Place the Second Battle Standard |q 9910/2
step
goto 75.8,68.4
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip All the way up the hill.
.' Place the Third Battle Standard |q 9910/3
step
goto 72.9,69.8
.kill 8 Boulderfist Mystic##17135+ |q 9906/1
.kill 8 Boulderfist Crusher##17134+ |q 9906/2
step
goto 55.5,37.6
.talk 18106
..turnin 9906
..accept 9907
step
goto 55.5,37.6
.talk 18300
..turnin 9910
..accept 9916
step
goto 40.8,31.5
.kill 10 Boulderfist Warrior##17136+ |q 9907/1
.kill 10 Boulderfist Mage##17137+ |q 9907/2
.click Bleeding Hollow Supply Crate##5531
.get 10 Bleeding Hollow Supply Crate |q 9916/1 |tip They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
step
goto 33.8,48.9
.kill 8 Lake Surger##17155+ |q 9810/2
step
goto 33.1,50.8
.kill Watoosun's Polluted Essence##18145 |q 9810/1 |tip He's underwater.
step
goto 27.9,77.6
.' Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
.' Kill the Minions of Gurok that spawn from their corpses
.kill 30 Minion of Gurok##18181+ |q 9849/1
step
goto 55.5,37.6
.talk 18300
..turnin 9916
step
goto 55.5,37.6
.talk 18106
..turnin 9907
..accept 10107
step
goto 73.8,68.1 |n
.' The path up to Lantresor of the Blade starts here |goto 73.8,68.1,0.5 |noway |c
step
goto 73.8,62.6
.talk 18261
.' Listen to his story
.' Hear the story of the Blademaster |q 10107/1
..turnin 10107
..accept 9928
..accept 9927
step
goto 71.1,82.4
.kill Giselda the Crone##18391 |q 9935/1 |tip Inside the big circle building, in the middle.
step
goto 71.4,79.4
.click the Kil'sorrow Armaments##6959 |tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
.click Kil'sorrow Armaments##6959
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
.' Kill 10 Kil'sorrow Agents |q 9935/2
.' Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 55.8,38
.talk 18407
..turnin 9935
step
goto 61.8,24.4
.talk 18099
..turnin 9849
step
goto 60.5,22.4
.talk 18073
..turnin 9810
step
goto 46.5,24.3
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.' Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658 |tip It looks like a big burning bonfire.
.' Defend the 2 ogres that spawn until they finish placing corpses around
.' Plant the Kil'sorrow Bodies |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9934
step
goto 55.5,37.6
.talk 18063
..turnin 9934
step
goto Nagrand,55.8,38.0
.talk 18407
..accept 9937
step
goto 55.2,36.1
.talk 18301
..accept 9983
step
.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
.' Click here to proceed |confirm always
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
.' Follow the path around this are to look for _Durn the Hungerer_
.kill Durn the Hungerer##18411 |q 9937/1
step
goto 27.3,43.1
.talk 18417
..turnin 9983
..accept 9991 |tip You will fly around on a drake to view The Twilight Ridge.
..turnin 9991
..accept 9999
step
goto 25.2,38.3
.kill 2 Felguard Legionnaire##17152+ |q 9999/1
.kill 3 Mo'arg Engineer##16945+ |q 9999/2
.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto Nagrand,17.5,50.3
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
.' You can also find the Mater Planner around [23.3,35.4]
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto 32.3,36.2
.talk 18414
..accept 9946
step
goto Nagrand,25.8,13.8
.' Follow the path up and around
.from Cho'war the Pillager##18423
.get Head of Cho'war |q 9946/1
step
goto 27.2,18.7 |n
.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto 32.3,36.2
.talk 18414
..turnin 9946
step
goto Nagrand,55.8,38.0
.talk 18407
..turnin 9937
step
goto Shattrath City,77.3,34.9
.talk 18584
.' Tell him "Altruis sent me. He said that you could help me." |tip He will immediately start attacking you!
.' Persuad Sal'salabim |q 10004/1
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.5
.talk 18585
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.9,91.1
.talk 18586
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.2,58.1
.talk 18588
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Floon's Debt |q 10009/3
step
goto 77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto Nagrand,25.0,36.1
.from "Demos\,\ Overseer of Hate##18535"
.collect Fel Cannon Activator##25770 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from "Xirkos\,\ Overseer of Fear##18536"
.collect Fel Cannon Activator##25771 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
.' Destoy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
label "done"
.' Once you have completed the above quests, you will have to grind your way to exalted.
.' Click to proceed. |confirm always
step
label	"bead_grind"
goto Nagrand,48.9,22.7
.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
..collect Obsidian Warbeads##25433 |n
.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
.' Collect beads in sets of 10.
.' Click here when you're ready to turn in. |confirm always
step
label	"turn_in"
goto Nagrand,55.8,37.9
.talk 18407
..accept 10478 |n
.' Click here to go back to farming. |next "bead_grind" |confirm |only if rep("The Mag'har")<=Revered
.' Earn Exalted status with The Mag'har |condition rep("The Mag'har")==Exalted |next "exalted"
step
label exalted
.' Congratulations, you are now Exalted with The Mag'har! |condition rep("The Mag'har")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Loremaster",[[
description This guide will refer you to the correct location to go, to get the Loremaster Title.
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get the Loremaster achievement.
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need.
|achieve 7520
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Seeker",[[
description This guide will refer you to the correct location to go, to get the Seeker Title.
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get The Seeker achievement.
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need.
|achieve 978
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Patient",[[
description This guide will instruct you on how to get The Patient Title.
author support@zygorguides.com
step
'Getting the title _The Patient_ is obtained by running random dungeons with 50 different people.
|confirm
step
'Press the letter _[I]_ on your keyboard to bring up your _Dungeon Finder_
.' Choose any Random Heroic Dungeon and make sure to kill the final boss.
.' Run random Heroic Dungeons with 10 random people |achieve 4476/1
step
'Press the letter _[I]_ on your keyboard to bring up your _Dungeon Finder_
.' Choose any Random Heroic Dungeon and make sure to kill the final boss.
.' Run random Heroic Dungeons with 50 random people |achieve 4477/1
step
'Congratulations! You have achieved the title The Patient |achieve 4477
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Exalted",[[
description This guide will instruct you on how to get The Exalted Title.
author support@zygorguides.com
step
'Use our Reputations guide to get Exalted reputation with 45 different reputations.
.' Earn Exalted reputation with 45 different reputations |achieve 5374
step
'Congratulations! You have achieved the title The Exalted! |achieve 5374
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Camel-Hoarder",[[
step
'This title is attained when you learn a mount dropped by a rare spawn.
|confirm
step
'This mount drops off a rare spawn called Dormus the Camel-Hoarder. You get to him by clicking the Mysterious Camel Figurines around Uldum. They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
'Go to Uldum |goto Uldum |noway |c
step
.from Dormus the Camel-Hoarder |n
.collect 1 Reins of the Grey Riding Camel##63046
|modeldisplay 35135
step
.learnmount Grey Riding Camel##88750 |use Reins of the Grey Riding Camel##63046
.' Learn the Grey Riding Camel mount. |achieve 5767
step
'Congratulations! You have achieved the title The Camel-Hoarder! |achieve 5767
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\Dailies",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Kickin'_It_Up_a_Notch"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\Achievements",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
step
.' If you need to level your cooking, click here |confirm |next "ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
.' Click here if you have already reached 450 Cooking. |confirm
#include "H_The_Outland_Gourmet"
#include "H_The_Northrend_Gourmet"
#include "H_Our_Daily_Bread"
#include "H_Critter_Gitter"
#include "H_Captain_Rumsey's_Lager"
#include "H_Dinner_Impossible"
#include "H_Kickin'_It_Up_a_Notch"
#include "H_second_that_emotion"
#include "H_the_cake_is_not_a_lie"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Archaeology\\Assistant Professor, Associate Professor, and Professor",[[
step
'These titles require the solving of rare artifacts of any kind.
goto Orgrimmar 49.0,70.7 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
|confirm |only if default
step
'Open your world map, find dig sites, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.' Find and solve a rare artifact and earn the Assistant Professor title |achieve 4854
.' Find and solve 10 rare artifacts and earn the Associate Professor title |achieve 4855
.' Find and solve 20 rare artifacts and earn the Professor title |achieve 4856
step
'Congratulations! You have earned all of the Archaeology titles!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty",[[
description This guide will walk you through the steps
description to earn the title Salty
author support@zygorguides.com
step
.' This title is earned once you have completed a majority of the Fishing achievements.
.' Click here to proceed. |confirm
step
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch 1000 Fish. |achieve 1561/1
.' Catch a 32 Pound Catfish |achieve 878
step
#include "H_Fish_Don't_Leave_Footprints"
#include "H_Old_Gnome_and_the_Sea"
#include "H_The_Scavenger"
#include "H_The_Fishing_Diplomat"
#include "H_Old_Man_Barlowned"
#include "H_Outland_Angler"
#include "H_Mr._Pinchy's_Magical_Crawdad_Box"
#include "H_The_Lurker_Above"
#include "H_The_Coin_Master"
#include "H_Master_Angler_of_Azeroth"
#include "H_Master_Angler_of_Northrend"
step
|achieve 1516
step
.' Congratulations, you have obtained the _Salty_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Bloodsail Buccaneers Solo",[[
step
.' You can only kill NPC's in one place alone now as Booty Bay Bruisers require a 5 man group to kill.
.' Click here to farm the small cove with NPC's for Bloodsail Buccaneer Reputation. |confirm always
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
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
.from Jaguero Stalker##2522+ |q 26604/1 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+
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
goto 45.0,79.7
.click Bloodsail Orders##220
.get Bloodsail Orders##220 |q 26612/4
step
goto 40.7,82.2
.click Bloodsail Charts##222
.get Bloodsail Charts |q 26612/3
.kill 8 Bloodsail Sea Dog##1565 |q 26612/1
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
.talk 43505 |tip Upstairs in this store
.' Tell Bossy _Moo_
.' <Do the Deed.>  :'(
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
.' Tell him _I need an extra-large pirate hat._
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
.' Tell him _Here' the head and the hat, Fleet Master._
.' and _You're the boss._
.' Return both items to Fleet Master Seahorn |q 26630/1
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto The Cape of Stranglethorn,43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.4,91.5
.talk 2548
..turnin 26631
..accept 26633
step
.' Go up to the ship deck and use a mop to swob a deck
.click Swabbie's Mop##09742
.clicknpc Deck Stain##43511a
.' Swab the decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 44.5,93.0
.talk 2545
..accept 26635
step
goto 47.3,95.5
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 44.5,92.9
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 41.9,83.0
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1 |tip You will get attacked by a lime thief when you loot these.
.' You can find more crates around: [40.3,82.9]
.' And [44.9,79.9]
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.5,91.6
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
goto 46.9,94.2
.clicknpc Ol' Blasty##43562 |invehicle |c |q 26647
.' Use your abilities to shoot the target dummy in the boat
.' Hit Smilin' Timmy Sticks with a cannoball 5 times |q 26647/1
step
.' Click the Red Arrow on your action bar to exit the Cannon |outvehicle |c |q 26647
step
goto 46.6,95.0
.talk 2547
..turnin 26647
..accept 26649
step
goto 46.8,95.1
.talk 43556
..accept 26648
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
.' Tell the Oarsman to Return to Shore |outvehicle |q 26649
step
goto 46.6,95.0
.talk 2547
..turnin 26649
step
goto 56.5,87.1
.' Use Dead-Eye's Flare Gun to reveal the ninja's around this area |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Complete Quest box in the top right of your screen
.turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
.' Go to the room below the stairs on this boat
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.' Tell him, _Long John Copper, is the Brashtide Crew ready for battle_ |tip He's standing in the middle of the boat.
.' Speak with Long John Copper |q 26662/1
step
.' Go to the lower deck of the boat
.' Talk to Bloodsail Corsair
.' Tell them _You're a mutinous dog! Draw steel!_
.kill 9 Bloodsail Corsair##43636+ |q 26664/1
.' Click the Complete Quest box in the right corner
..turnin 26664
step
goto 50.6,91.5
.click Grog Barrel##9095
.' _Nudge the cork._
.'  Sabotage the Grog |q 26663/1
step
goto 46.8,94.2
.talk 43660
.' Tell him _What can you tell me about the Brashtide Crew?_ |tip Standing on the bottom deck of the boat.
.'  Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.click Gunpowder Barrel##9095
.' _Pour the water onto the gunpowder_
.'  Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.talk 43661 |tip Standing in the middle of the boat
.' Tell her _You know the battle plan, right?_
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Complete Quest box in the right corner
..turnin 26662
step
goto 44.6,92.8
.click Cannonball Crate##9651
.' _Grease the Cannonballs_
.' Sabotage the Cannonballs |q 26663/3
.' Click the Complete Quest box in the right corner
..turnin 26663
..accept 26665
step
goto 41.2,73.1
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.click Barrel of Doublerum##32
.' Just down the stairs in the room on the right
.get Barrel of Doublerum |q 26678/1
..turnin 26678
..accept 26679
step
.' _WARNING WARNING WARNING_
.' DO NOT TURN IN THIS QUEST
.' You can kill _Booty Bay citizens_ and gain repuation with the Bloodsail Buccaneers |tip You will lose reputation with ALL Steemwheedle Cartel if you do this
.' Click here to gain reputation with the Bloodsail Buccaneers |confirm |next "Bloodsail_grind"
step
label	"Bloodsail_grind"
.' Kill any Booty Bay Citizen in this area to gain reputation with Bloodsaid Buccaneers |tip To attack them, open your Factions list, scroll down and find Booty Bay. Click on Booty Bay and check the At War box.
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation
.' With each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
|next "end" |only if default
step
goto 41.3,71.2
.' You can stay here and grind reputation with Booty Bay by killing Bloodsail Corsair
.from Bloodsail Corsair##43726+
.' Hated with Booty Bay |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')<=Hated
.' Hostile with Booty Bay |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')<=Hostile
.' Unfriendly with Booty Bay |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')<=Unfriendly
.' Neutral with Booty Bay |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')<=Neutral
.' Friendly with Booty Bay |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')<=Friendly
.' Honored with Booty Bay |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')<=Honored
.' Revered with Booty Bay |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')<=Revered
.' Exalted with Booty Bay |condition rep('Booty Bay')>=Exalted |only if rep('Booty Bay')<=Exalted
.' If you are at least Neutral with Booty Bay you can begin doing quests in this Area to gain rep faster.
.' Click here to start questing |confirm |next "booty_quest" |only if rep('Booty Bay')>=Neutral
|next "end" |only if rep('Booty Bay')<=Unfriendly
step
label	"booty_quest"
goto 41.1,73.1
.talk 2496
..turnin 26679
..accept 26695
..accept 26698
step
goto 41.5,73.0
.talk 2487
..turnin 26698
..accept 26700
..accept 26699
step
goto 42.6,69.1
.click Narkk's Handbombs##9651
.get Narkk's Handbombs |q 26695/1
step
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.5,73.0
.click Blackwater Rope##7538
.' Swing over to the boat |goto 41.0,70.7,0.5 |noway |c
step
goto 41.4,71.0
.kill 8 Bloodsail Corsair##43726+ |q 26700/1
step
goto 41.1,70.9
.click Blackwater Rope##7538
.' Swing to the docks |goto 41.5,73.0,0.5 |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26699
..turnin 26700
..turnin 26695
..accept 26697
step
goto The Cape of Stranglethorn,40.4,73.4
.talk 737
.' Tell him _Sorry, not here to chat. I need a wind rider_ |invehicle |noway |c
step
.' Use the _Throw Handbombs_ key on your action bar
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destoy 6 Brashtide Attack Boats |q 26697/2 |modelnpc 43790
.' Use your _Return to Booty Bay_ button |outvehicle |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26697
..accept 26703
step
goto 35.7,66.8
.kill Fleet Master Firallon##2546 |q 26703/1
step
goto 41.2,73.1
.talk 2496
..turnin 26703
|next "end"
step
goto 26.0,83.8
'You can kill only a handful of NPCs here, but due to their relatively quick respawn time you can get about 2000 rep an hour before perks.
.' Click here to do the Booty Bay questline |next "blood_quest"
step
label "end"
'End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Bloodsail Buccaneers Group",[[
description This Guide will help you get Reputation to earn the title _The Insane_.
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to earn the Insane in the Membrane Achievement the quickest way possible.
.' Honored with Bloodsail Buccaneers |condition rep('Bloodsail Buccaneeers')>=Honored
.' Click to use the Buccaneers rep Guide |confirm |next "blood_grind"
step
label	"blood_grind"
.' You will need a full group of 4 or 5 people to be able to reasonably farm Booty Bay for Bloodsail Reputation.
.' Once you have acquired a group, including a healer and tank, you can proceed
.' Click to continue |confirm
step
goto The Cape of Stranglethorn 42.5,67.4
.' We suggest starting in this tunnel so you do not get overwhelmed by guards.
.' Set your Booty Bay social bar to _At War_ and begin killing Booty Bay Bruisers
.from Booty Bay Bruiser##4624+
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation with each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
step
label	"end"
.' End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\The Steamwheedle Cartel",[[
description This Guide will help you get Reputation with the Steamwheedle Cartel to earn the title _The Insane_.
author support@zygorguides.com
step
label	"Steam_Menu"
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions
.' you will need to keep Honored status with the _Bloodsail Buccaneers_.
.' Click here to continue |confirm always
step
label	"Steam_Menu2"
.' You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
.' You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
.' You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm always |next "gadget" |only if rep('Booty Bay')<=Revered
.' You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
.' You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
.' You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm always |next "gadget" |only if rep('Gadgetzan')<=Revered
.' You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
.' You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
.' You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm always |next "ratchet" |only if rep('Everlook')<=Revered
.' You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
.' You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
.' You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm always |next "ratchet" |only if rep('Ratchet')<=Revered
|next "end" |only if default
step
label	"gadget"
goto Tanaris,72.3,47.1
.from Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+
.' You can find more Pirates around here: [69.5,53.8]
.' Hated |condition rep('Gadgetzan')>=Hated |only if rep('Gadgetzan')>=Hated and rep('Gadgetzan')<=Hated
.' Hostile |condition rep('Gadgetzan')>=Hostile |only if rep('Gadgetzan')>=Hostile and rep('Gadgetzan')<=Hostile
.' Unfriendly |condition rep('Gadgetzan')>=Unfriendly |only if rep('Gadgetzan')>=Unfriendly and rep('Gadgetzan')<=Unfriendly
.' Neutral |condition rep('Gadgetzan')>=Neutral |only if rep('Gadgetzan')>=Neutral and rep('Gadgetzan')<=Neutral
.' Friendly |condition rep('Gadgetzan')>=Friendly |only if rep('Gadgetzan')>=Friendly and rep('Gadgetzan')<=Friendly
.' Honored |condition rep('Gadgetzan')>=Honored |only if rep('Gadgetzan')>=Honored and rep('Gadgetzan')<=Honored
.' Revered |condition rep('Gadgetzan')>=Revered |only if rep('Gadgetzan')>=Revered and rep('Gadgetzan')<=Revered
.' Gain Exalted reputation with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' And
.' Hated |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')>=Hated and rep('Booty Bay')<=Hated
.' Hostile |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')>=Hostile and rep('Booty Bay')<=Hostile
.' Unfriendly |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')>=Unfriendly and rep('Booty Bay')<=Unfriendly
.' Neutral |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')>=Neutral and rep('Booty Bay')<=Neutral
.' Friendly |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')>=Friendly and rep('Booty Bay')<=Friendly
.' Honored |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')>=Honored and rep('Booty Bay')<=Honored
.' Revered |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')>=Revered and rep('Booty Bay')<=Revered
.' Gain Exalted reputation with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu"
|next "ratchet"
step
label	"ratchet"
goto Northern Barrens,77.5,90.1
.from Southsea Privateer##3384+, Southsea Cutthroat##3383+, Glomp##34747, Southsea Recruit##44168+
.' Hated |condition rep('Ratchet')>=Hated |only if rep('Ratchet')>=Hated and rep('Ratchet')<=Hated
.' Hostile |condition rep('Ratchet')>=Hostile |only if rep('Ratchet')>=Hostile and rep('Ratchet')<=Hostile
.' Unfriendly |condition rep('Ratchet')>=Unfriendly |only if rep('Ratchet')>=Unfriendly and rep('Ratchet')<=Unfriendly
.' Neutral |condition rep('Ratchet')>=Neutral |only if rep('Ratchet')>=Neutral and rep('Ratchet')<=Neutral
.' Friendly |condition rep('Ratchet')>=Friendly |only if rep('Ratchet')>=Friendly and rep('Ratchet')<=Friendly
.' Honored |condition rep('Ratchet')>=Honored |only if rep('Ratchet')>=Honored and rep('Ratchet')<=Honored
.' Revered |condition rep('Ratchet')>=Revered |only if rep('Ratchet')>=Revered and rep('Ratchet')<=Revered
.' Gain Exalted reputation with Ratchet |condition rep('Ratchet')==Exalted
.' And
.' Hated |condition rep('Everlook')>=Hated |only if rep('Everlook')>=Hated and rep('Everlook')<=Hated
.' Hostile |condition rep('Everlook')>=Hostile |only if rep('Everlook')>=Hostile and rep('Everlook')<=Hostile
.' Unfriendly |condition rep('Everlook')>=Unfriendly |only if rep('Everlook')>=Unfriendly and rep('Everlook')<=Unfriendly
.' Neutral |condition rep('Everlook')>=Neutral |only if rep('Everlook')>=Neutral and rep('Everlook')<=Neutral
.' Friendly |condition rep('Everlook')>=Friendly |only if rep('Everlook')>=Friendly and rep('Everlook')<=Friendly
.' Honored |condition rep('Everlook')>=Honored |only if rep('Everlook')>=Honored and rep('Everlook')<=Honored
.' Revered |condition rep('Everlook')>=Revered |only if rep('Everlook')>=Revered and rep('Everlook')<=Revered
.' Gain Exalted reputation with Everlook |condition rep('Everlook')==Exalted
.' Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations! You are honored with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Ravenholdt",[[
description This Guide will help you get Reputation with Ravenholdt to earn the title _The Insane_.
author support@zygorguides.com
step
'In order to get exalted with Ravenholdt Faction, you need to grind mobs to 11,999/12,000 Honored reputation.
.'Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
.' You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
.' You can farm Syndicate mobs at [Arathi Highlands,27.1,30.6] - [Arathi Highlands,19.5,61.9] - or around [Hillsbrad Foothills,57.9,25.3]
|confirm always
step
goto Arathi Highlands,27.1,30.6
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+  .from Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+
.' You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
.' Reach _11,999/12,000_ Honored with Ravenholdt. |tip You can only get 1 point away from Revered by grinding, then you will have to do quests.
.' Click here to continue |confirm always
step
label	"boxes"
.' Now that you have reached Revered, or close to it, you will need to do repeatable quests until exalted.
.' The only thing you need for the repeatable quests are _Heavy Junkboxes_.
.' You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon. |tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
.' You will need to turnin a total of 7000 unopened _Heavy Junkboxes_, to go from _Revered_ to _Exalted_.
.collect Heavy Junkbox##16885+ |n
.' Click here to continue and turn in your Boxes. |confirm always
step
goto Hillsbrad Foothills,70.6,45.7
.talk 6707
..accept 8249 |instant |repeatable |n
.' Reached Honored with Ravenholdt |condition rep('Ravenholdt')>=Honored
.' Reached Revered with Ravenholdt |condition rep('Ravenholdt')>=Revered
.' Reach Exalted with Ravenholdt |condition rep('Ravenholdt')==Exalted
.' or
.' Click here to get more _Heavy Junkboxes_ |confirm always |next "boxes"
step
label	"end"
.' Congratulations, you have reached Exalted with Ravenholdt! |condition rep('Ravenholdt')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Darkmoon Faire",[[
description This Guide will help you get Reputation with The Darkmoon Faire to earn the title _The Insane_.
author support@zygorguides.com
step
'The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
'the Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town.
|confirm
step
'Look at Zygor's Darkmoon Faire Dailies Guide for more information on dailies.
'You can also earn reputation by turning in Darkmoon Decks. Click here to view the Darkmoon Deck statistics. |next cards |confirm
step
label	"cards"
.' Cards may be the most expensive turnin for the Faire, but they also provide the most reputation.
.' The higher level of card that you turn in, the more reputation you will receive.
.' You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks.
.' This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly.
.' Reach Neutral with Darkmoone Faire |condition rep('Darkmoon Faire')>=Neutral
.' Reach Friendly with Darkmoone Faire |condition rep('Darkmoon Faire')>=Friendly
.' Reach Honored with Darkmoone Faire |condition rep('Darkmoon Faire')>=Honored
.' Reach Revered with Darkmoone Faire |condition rep('Darkmoon Faire')>=Revered
.' Reach Exalted with Darkmoone Faire |condition rep('Darkmoon Faire')>=Exalted
|next "end"
step
label	"end"
' Congratulations, you have reached Exalted with The Darkmoon Faire! |condition rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Champion of the Frozen Wastes",[[
author support@zygorguides.com
step
'This title is earned by completing the _Champion of the Frozen Wastes_ achievement.
'Complete every Wrath of the Lich King Heroic Instance, with the exception of The Forge of Souls, the Pit of Saron, and the Halls of Reflection. Then defeat the final bosses in The Eye of Eternity, Naxxramas, and The Obsidian Sanctum.
|achieve 1658
step
'Congratulations! You have earned the title "Champion of the Frozen Wastes"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Defender of a Shattered World",[[
author support@zygorguides.com
step
'This title is earned by completing the _Defender of a Shattered World_ achievement.
'Complete the following instances on Heroic difficulty: Blackrock Caverns, Throne of the Tides, The Stonecore, The Vortex Pinnacle, Grim Batol, Halls of Origination, Lost City of Tol'vir, Deadmines, and Shadowfang Keep.
'Complete the following raid instances: Blackwing Descent, Throne of the Four Winds, and The Bastion of Twilight.
|achieve 5506
step
'Congratulations! You have earned the title "Defender of a Shattered World"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Nightfall",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (10 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2051
step
'Congratulations! You have earned the title "of the Nightfall"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Twilight Vanquisher",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (25 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2054
step
'Congratulations! You have earned the title Twilight Vanquisher!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Starcaller",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (10 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3036
step
'Congratulations! You have earned the title Starcaller!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Astral Walker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (25 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3037
step
'Congratulations! You have earned the title The Astral Walker
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Kingslayer",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Frozen Throne"_ achievement from the Icecrown Citadel raid. This can be completed on either 10 or 25 player.
'Traverse Icecrown Citadel raid and defeat The Lich King.
.from The Lich King##36597
|achieve 4530 |or
|achieve 4597 |or
step
'Congratulations! You have earned the title The Kingslayer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Bane of the Fallen King",[[
author support@zygorguides.com
step
'This title is earned by completing the _Bane of the Fallen King_ achievement from 10 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4583
step
'Congratulations! You have earned the title Bane of the Fallen King!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Light of Dawn",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Light of Dawn"_ achievement from 25 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4584
step
'Congratulations! You have earned the title The Light of Dawn!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Ashen Verdict",[[
step
'This title is gained by becoming Exalted with The Ashen Verdict reputation.
'This reputation can be earned by running the Icecrown Citadel raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Icecrown 53.8,87.1
.' Enter Icecrown Citadel here. |goto Icecrown 53.8,87.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Ashen Verdict |condition rep('Ashen Verdict')==Exalted |next "exalted"
step
label exalted
'Congratulations! You have earned the title "of the Ashen Verdict"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Dragonslayer",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Sinestra_ achievement from Heroic: The Bastion of Twilight.
'Traverse The Bastion of Twilight on Heroic difficulty and defeat Sinestra.
.from Sinestra##45213
|achieve 5121
step
'Congratulations! You have earned the title Dragonslayer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Four Winds",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Al'Akir_ achievement from Heroic: Throne of the Four Winds. This can be completed on either 10 or 25 player.
'Traverse the Throne of the Four Winds on Heroic difficulty and defeat Al'Akir.
.from Al'Akir##46753
|achieve 5123
step
'Congratulations! You have earned the title "of the Four Winds"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Blackwing's Bane",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Nefarian_ achievement from Heroic: Blackwing Descent.
'Traverse Blackwing Descent on Heroic difficulty and defeat Nefarian.
.from Nefarian##41376
|achieve 5116
step
'Congratulations! You have earned the title Blackwing's Bane!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Firelord",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Ragnaros_ achievement from Heroic: Firelands. This can be completed on either 10 or 25 player.
'Traverse the Firelands on Heroic difficulty and defeat Ragnaros.
.from Ragnaros##41634
|achieve 5803
step
'Congratulations! You have earned the title Firelord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Avenger of Hyjal",[[
author support@zygorguides.com
step
'This title is gained by becoming Exalted with The Avengers of Hyjal reputation.
'This reputation can be gained by running the Firelands raid.
'A full run will grant roughly 2400 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
goto Mount Hyjal 47.2,78.1
'Enter the Firelands here |goto Mount Hyjal 47.2,78.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Avengers of Hyjal |condition rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations! You have earned the title Avenger of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Destroyer's End",[[
author support@zygorguides.com
step
'This title is earned by completing the _Destroyer's End_ achievement from the Dragon Soul raid. This can be completed on either 10 or 25 player and on either Normal or Heroic difficulty.
'Traverse Dragon Soul and defeat Deathwing.
.from Deathwing##56173
|achieve 6177
step
'Congratulations! You have earned the title Destroyer's End!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Savior of Azeroth",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Madness of Deathwing_ achievement from Heroic. This can be completed on either 10 or 25 player.
'Traverse Dragon Soul on Heroic Difficulty and defeat Deathwing.
.from Deathwing##56173
|achieve 6116
step
'Congratulations! You have earned the title Savior of Azeroth!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Kalimdor",[[
description This guide section will walk you through completing
description the Explorer achievement.
leechsteps "Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Eastern Kingdoms",[[
description This guide section will walk you through completing
description the Explorer achievement.
leechsteps "Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Eastern Kingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Outland",[[
description This guide section will walk you through completing
description the Explorer achievement.
leechsteps "Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Outland"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Northrend",[[
description This guide section will walk you through completing
description the Explorer achievement.
leechsteps "Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Flame Keeper\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
#include "Midsummer_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Flame Keeper\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
step
'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
|confirm
step
goto Undercity,66.9,13.6
.talk 26221
..' Queue for The Frost Lord Ahune battle.
..' Click Find Group
..from Lord Ahune##25740
.' Complete the Ice the Frost Lord Achievement |achieve 263
step
goto Undercity,68.1,11.2
.talk 26124 |tip You will only be able to afford all this if you've done the Midsummer Quest Guide.
.buy 15 Juggling Torch##34599
.buy 1 Mantle of the Fire Festival##23324
.buy 1 Vestment of Summer##34685
.buy 1 Sandals of Summer##34683
step
goto Undercity,68.0,14.4
.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
.' Equip your Vestment of Summer |use Vestment of Summer##34685
.' Equip your Sandals of Summer |use Sandals of Summer##34683
.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
.' Let your character spin around for 1 minute
.' Complete the Burning Hot Pole Dance Achievement |achieve 271
step
'Don't forget to put your regular gear back on
|confirm
step
goto Dalaran,36.8,44.1
.' Use your 15 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
.' Complete the Torch Juggler Achievement |achieve 272
step
'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
#include "H_Lunar_Festival_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
#include "H_Lunar_Festival_Elders"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Achievements",[[
author support@zygorguides.com
#include "H_Lunar_Festival_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
step
#include "H_Love_Is_In_The_Air_Main_Questline"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event daily quests.
step
#include "H_Love_Is_In_The_Air_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
step
#include "H_Love_Is_In_The_Air_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Noble\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
#include "H_Noblegarden_Quests_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Noble\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
#include "H_Noblegarden_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Orgrimmar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.
startlevel 10
#include "H_Children's_Week_Ogrimmar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
startlevel 60
#include "H_Children's_Week_Shattrath_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
startlevel 70
#include "H_Children's_Week_Oracle_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
startlevel 70
#include "H_Children's_Week_Wolvar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
startlevel 10
#include "H_Children's_Week_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
step
goto Orgrimmar,51.6,75.2
.talk 19175
..accept 11446
step
goto Durotar,42.6,17.8
.talk 24497
..accept 11409
step
'As you run around on the ram:
.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds. To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
.' Maintain a Trot for 8 seconds |q 11409/1
.' Maintain a Canter for 8 seconds |q 11409/2
.' Maintain a Gallop for 8 seconds |q 11409/3
step
goto Durotar,42.6,17.9
.talk 24497
..turnin 11409
..accept 11412
step
goto 50.6,13.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
.' Bok Dropcertain will throw you a keg when you get close
.' Once you have a keg, run back and turn it in to Driz Tumblequick at [42.6,17.7] |tip Just get near him and you will throw the keg to him.
.' Deliver 3 Kegs in Under 4 Minutes|q 11412/1
step
goto Durotar,42.6,17.8
.talk 24497
..turnin 11412
step
goto Durotar,42.7,17.7
.talk 24510
.' You will only be able to accept one of these quests
..accept 29396 |or
..accept 13931 |or
step
goto Durotar,41.6,18.4
.talk 24711
..turnin 11446
step
goto Durotar,41.5,17.6
.talk 27216
..accept 12191
step
goto Durotar,41.5,17.5
.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
.' Hit S.T.O.U.T. 5 Times |q 12191/1
step
goto 41.5,17.5
.talk 27216
..turnin 12191
step
goto 41.2,18.5
.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
.talk 24657
..accept 11431
..accept 11120
step
goto 41.3,17.9
.talk 24657
..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
.collect Synthebrew Goggles##46735 |q 11431
step
goto 40.3,17.9
.talk 24495
.' You will only be able to turn in one of these quests
..turnin 29396 |or
..turnin 13931 |or
step
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11431
step
goto Durotar,41.2,18.1
.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
.get 5 Stunned Wolpertinger |q 11431/1
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11431
.' Earn Does Your Wolpertinger Linger? achievement |achieve 1683/6
step
goto Orgrimmar,50.9,55.7 |n
.' Ride the zepplin to Tirisfal Glades |goto Tirisfal Glades |noway|c
step
goto Undercity,70.5,12.0
.' Use your Elekk Dispersion Ray on Tirisfal Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Tirisfal Pink Elekk##23530 |q 11120/3
step
goto Eversong Woods,57.0,53.1
.' Use your Elekk Dispersion Ray on Eversong Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Eversong Pink Elekk##23531 |q 11120/1
step
goto Thunder Bluff,34.7,74.7
.' Go down the lifts
.' Use your Elekk Dispersion Ray on Mulgore Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Mulgore Pink Elekk##23529 |q 11120/2
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11120
step
'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
.' You will fight Coren Direbrew
.from Coren Direbrew##23872
.collect 1 Direbrew's Dire Brew##38281 |n
.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38281
..accept 12492
.' Kill Coren Direbrew |achieve 1683/3
step
'Click the green eye on the edge of your minimap
.' Teleport Out of the Dungeon |goto Durotar |noway |c
step
goto Durotar,41.6,18.5
.talk 24711
..turnin 12492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Dailies",[[
description This guide section will walk you through completing the daily quests for the Brewfest event.
daily
step
goto Durotar,40.6,18.2
.talk 24498
..accept 11407 |or
.' Go to [Durotar,40.2,17.1]
.talk 24499
..accept 11408 |or
.' You will only be able to accept one of these quests per day.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11407
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11294
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
goto Orgrimmar,52.1,75.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11407/1
step
goto 67.0,48.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11407/2
step
goto 44.3,49.1
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11407/3
step
goto 38.0,75.6
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11407/4
step
goto Orgrimmar,52.9,66.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11408/1
step
goto 71.5,34.8
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11408/2
step
goto 43.8,36.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11408/3
step
goto 37.0,74.3
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11408/4
step
goto Durotar,40.6,18.2
.talk 24498
..turnin 11407
step
goto Durotar,43.6,17.6
.talk 24499
..turnin 11408
step
goto 40.4,18.0
.click Dark Iron Mole Machine Wreckage##7000 |tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
..accept 12192
step
goto 41.5,17.6
.talk 27216
..turnin 12192
.' Earn the Down With the Dark Iron achievement |achieve 1683/4
step
goto 42.7,17.6
.talk 24497
..accept 29393 |instant
.' On your Ram, run to Bok Dropcertain at [50.6,13.5] |tip Bok Dropcertain will throw you a keg when you get close.
.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Achievements",[[
description This guide section will walk you through completing the achievements for the Brewfest event.
step
goto Durotar,41.0,18.3
.talk 23603
.buy 1 The Essential Brewfest Pretzel##33043 |achieve 1185
step
'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
.' Eat The Essential Brewfest Pretzels |achieve 1185/7
step
goto 40.2,17.7
.talk 23604
.buy 1 Spiced Onion Cheese##34065 |achieve 1185
step
'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
.' Eat the Spiced Onion Cheese |achieve 1185/4
step
goto 41.2,17.3
.talk 23605
.buy 1 Dried Sausage##34063 |achieve 1185
.buy 1 Succulent Sausage##34064 |achieve 1185
.buy 1 Savory Sausage##33023 |achieve 1185
.buy 1 Pickled Sausage##33024 |achieve 1185
.buy 1 Spicy Smoked Sausage##33025 |achieve 1185
.buy 1 The Golden Link##33026 |achieve 1185
step
'Do the following:
.' Click the Dried Sausage in your bags |use Dried Sausage##34063
.' Eat the Dried Sausage |achieve 1185/1
.' Click the Succulent Sausage in your bags |use Succulent Sausage##34064
.' Eat the Succulent Sausage |achieve 1185/6
.' Click the Savory Sausage in your bags |use Savory Sausage##33023
.' Eat the Savory Sausage |achieve 1185/3
.' Click the Pickled Sausage in your bags |use Pickled Sausage##33024
.' Eat the Pickled Sausage |achieve 1185/2
.' Click the Spicy Smoked Sausage in your bags |use Spicy Smoked Sausage##33025
.' Eat Spicy Smoked Sausage |achieve 1185/5
.' Click the The Golden Link in your bags |use The Golden Link##33026
.' Eat The Golden Link |achieve 1185/8
.' Earn The Brewfest Diet |achieve 1683/1
step
goto 40.3,17.9
.talk 24495
.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
step
'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
.' Make your Mount Festive for Brewfest! |achieve 303
.' Earn Have Keg, Will Travel |achieve 1683/5
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto 40.3,17.9
.talk 24495
.buy 1 "Brew of the Month" Club Membership Form##37599 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
..accept 12306
.buy Wolpertinger's Tankard##32233
.learnpet Wolpertinger##22943 |use Wolpertinger's Tankard##32233|achieve 1683/6
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.4,73.5
.talk 27489
..turnin 12306
.' Earn the Brew of the Month achievement |achieve 1683/2
step
'Congratulations, you are a Brewmaster! |achieve 1683
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Quests",[[
description This guide section will walk you through completing the quests for the Hallow's End event.
#include "Hallows_End_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Dailies",[[
description This guide section will walk you through completing the daily quests for the Hallow's End event.
daily
#include "Hallows_End_Dailies_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Achievements",[[
description This guide section will walk you through completing the achievements for the Hallow's End event.
#include "Hallows_End_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
#include "Pilgrims_Bounty_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Achievement",[[
#include "Pilgrims_Bounty_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Merrymaker\\Feast of Winter Veil Quests",[[
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
#include "H_Winterveil_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Merrymaker\\Feast of Winter Veil Achievements",[[
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
#include "H_Winterveil_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Of the Horde",[[
step
'This title is earned by achieving 100,000 honorable kills in any Player vs Player environment.
|achieve 870
step
'Congratulations! You have earned the title of the Horde!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\The Bloodthirsty",[[
step
'This title is earned by achieving 250,000 honorable kills in any Player vs Player environment.
|achieve 5363
step
'Congratulations! You have earned the title "The Bloodthirsty"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Arena Master",[[
step
'This title is earned by completing the _"The Arena Master"_ achievement. |tip This is an incredibly difficult title to obtain.
|achieve 1174
step
'Congratulations! You have earned the title Arena Master!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Battlemaster",[[
step
'This title is earned by completing the _Battlemaster_ achievement.
'In order to complete the _Battlemaster_ achievement you must obtain 5 achievements that make you the master of the following battlegrounds: Alterac Valley, Warsong Gulch, Strand of the Ancients, Arathi Basin, and Eye of the Storm.
|achieve 1175
step
'Congratulations! You have earned the title Battlemaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Conqueror",[[
step
'This title is earned by completing the _"The Conqueror"_ achievement.
'In order to complete the _"The Conqueror"_ achievement you must become Exalted with The Defilers, the Warsong Outriders, and the Frostwolf Clan. Use Zygor's Reputation Guides to do so.
|achieve 714
step
'Congratulations! You have earned the title Conqueror!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Scout",[[
step
'This title is earned by achieving a rated battleground score of 1100.
|achieve 5345
step
'Congratulations! You have earned the title Scout!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Grunt",[[
step
'This title is earned by achieving a rated battleground score of 1200.
|achieve 5346
step
'Congratulations! You have earned the title Grunt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1300.
|achieve 5347
step
'Congratulations! You have earned the title Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Senior Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1400.
|achieve 5348
step
'Congratulations! You have earned the title Senior Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\First Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1500.
|achieve 5349
step
'Congratulations! You have earned the title First Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Stone Guard",[[
step
'This title is earned by achieving a rated battleground score of 1600.
|achieve 5350
step
'Congratulations! You have earned the title Stone Guard!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Blood Guard",[[
step
'This title is earned by achieving a rated battleground score of 1700.
|achieve 5351
step
'Congratulations! You have earned the title Blood Guard!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Legionnaire",[[
step
'This title is earned by achieving a rated battleground score of 1800.
|achieve 5352
step
'Congratulations! You have earned the title Legionnaire!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Centurion",[[
step
'This title is earned by achieving a rated battleground score of 1900.
|achieve 5338
step
'Congratulations! You have earned the title Centurion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Champion",[[
step
'This title is earned by achieving a rated battleground score of 2000.
|achieve 5353
step
'Congratulations! You have earned the title Champion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Lieutenant General",[[
step
'This title is earned by achieving a rated battleground score of 2100.
|achieve 5354
step
'Congratulations! You have earned the title Lieutenant General!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\General",[[
step
'This title is earned by achieving a rated battleground score of 2200.
|achieve 5355
step
'Congratulations! You have earned the title General!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Warlord",[[
step
'This title is earned by achieving a rated battleground score of 2300.
|achieve 5342
step
'Congratulations! You have earned the title Warlord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\High Warlord",[[
step
'This title is earned by achieving a rated battleground score of 2400.
|achieve 5356
step
'Congratulations! You have earned the title High Warlord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Veteran of the Horde",[[
step
'This title is a reward for completing the _"Veteran of the Horde"_ achievement.
'To earn this achievement win 75 Rated Battlegrounds.
|achieve 5325
step
Congratulations! You have earned the title Veteran of the Horde!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Warbringer",[[
step
'This title is a reward for completing the _"Warbringer of the Horde"_ achievement.
'To earn this achievement win 300 Rated Battlegrounds.
|achieve 5326
step
Congratulations! You have earned the title Warbringer!
]])
