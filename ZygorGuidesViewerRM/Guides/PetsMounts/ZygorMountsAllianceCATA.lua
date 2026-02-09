local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsA") then return end
ZygorGuidesViewer:RegisterInclude("trainTailoring",[[
goto Orgrimmar,60.8,59.1
.talk 3363
]])
ZygorGuidesViewer:RegisterInclude("TailorSupplies",[[
goto Stormwind City 53.1,81.8
.talk 1347
]])
ZygorGuidesViewer:RegisterInclude("trainEngineering",[[
goto Stormwind City,62.8,32.0
.talk 5518
]])
ZygorGuidesViewer:RegisterInclude("EngSupplies",[[
goto Stormwind City 63.1,32.0
.talk 5519
]])
ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
goto Stormwind City 52.8,74.3
.talk 1318
]])
ZygorGuidesViewer:RegisterInclude("SWTabard",[[
goto Stormwind City,67.6,72.8  |only if rep("Stormwind")<Exalted
.talk 49877 |only if rep("Stormwind")<Exalted
.buy 1 Stormwind Tabard##45574 |only if rep("Stormwind")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("DarnTabard",[[
goto Darnassus,36.6,49.0 |only if rep("Darnassus")<Exalted
.talk 50305 |only if rep("Darnassus")<Exalted
.buy 1 Darnassus Tabard##45579 |only if rep("Darnassus")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("ExTabard",[[
goto The Exodar,54.6,36.8 |only if rep("Exodar")<Exalted
.talk 50306 |only if rep("Exodar")<Exalted
.buy 1 Exodar Tabard##45580 |only if rep("Exodar")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GnomTabard",[[
goto Ironforge,56.2,49.0 |only if rep("Gnomeregan")<Exalted
.talk 50308 |only if rep("Gnomeregan")<Exalted
.buy 1 Gnomeregan Tabard##45578 |only if rep("Gnomeregan")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("IFTabard",[[
goto Ironforge,55.8,47.8 |only if rep("Ironforge")<Exalted
.talk 50309 |only if rep("Ironforge")<Exalted
.buy 1 Ironforge Tabard##45577 |only if rep("Ironforge")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GilTabard",[[
goto Darnassus,37.0,47.8 |only if rep("Gilneas")<Exalted
.talk 50307 |only if rep("Gilneas")<Exalted
.buy 1 Gilneas Tabard##64882 |only if rep("Gilneas")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("WATabard",[[
goto Dragonblight,59.8,53.0 |only if rep("The Wyrmrest Accord")<Exalted
.talk 32533 |only if rep("The Wyrmrest Accord")<Exalted
.buy 1 Tabard of the Wyrmrest Accord##43156 |only if rep("The Wyrmrest Accord")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("RamkahenTabard",[[
goto Uldum,54.1,33.3 |only if rep("Ramkahen")<Exalted
.talk 48617 |only if rep("Ramkahen")<Exalted
.buy 1 Tabard of Ramkahen##65904 |only if rep("Ramkahen")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("main_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
#include %tabard%
.' Use this _tabard_ and _complete dungeons_ with _friends_ or in the _random dungeon finder_ to get to _exalted_ |only if rep("%rep%")<Exalted
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("misc_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
]])
ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
.' Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown 69.7,22.9
.talk 33817
..accept 13667
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13667
..accept 13828
step
goto 76.5,19.4
.talk 33646
..accept 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13835
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13828
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13835/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13837/1
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13828/1
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13828/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13837/2
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13835/2
step
'Click the red arrow on your hotbar to stop riding the steed mount|outvehicle|q 13828
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13828
step
goto 76.5,19.4
.talk 33646
..turnin 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13835
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
daily
step
goto Icecrown,76.5,19.4
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,73.8,19.4
.talk 33769
..accept 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793
only DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,69.9,23.3
.talk 33771
..accept 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan.
description Also, you must have already become a Champion with each of those factions,
description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
daily
step
goto Icecrown,69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |or
..accept 14101 |or
..accept 14102 |or
..accept 14104 |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |or
..accept 14107 |or
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 6 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Dwarf.
|confirm
step
goto Dun Morogh,36.9,70.0
.talk 37081
..accept 24469
step
goto 36.2,71.9
.kill 6 Rockjaw Invaders |q 24469/1
step
goto 36.9,70.0
.talk 37081
..turnin 24469
..accept 24470
step
goto 36.6,70.4
.talk 658
..accept 24471
step
goto 37.3,72.8
.kill 3 Rockjaw Goon |q 24470/1
.' Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
.' Aid 4 Wounded Coldridge Mountaineers |q 24471/1
step
goto 36.9,70.0
.talk 37081
..turnin 24470
step
goto 36.6,70.2
.talk 658
..turnin 24471
step
goto 36.9,70.0
.talk 37081
..accept 24473
step
goto 35.8,66.3
.talk 37087 |tip She walks around the forge at the center of the room
..turnin 24473
..accept 24474
step
goto 35.8,66.3
.talk 1104
..accept 24477
step
goto 37.1,67.4
.' Click the Keg of Gnomenbrau |tip It looks like a huge barrel next to a tree.
.get Cask of Gnomenbrau |q 24474/3
step
goto 34.8,67.4
.' Click the Keg of Stonehammer Stout |tip It looks like a huge barrel next to a tree.
.get Cask of Stormhammer Stout |q 24474/1
step
goto 31.5,67.6
.' Click the Keg of Theramore Pale Ale |tip It looks like a huge barrel next to a tree.
.get Cask of Theramore Pale Ale |q 24474/2
step
goto 32.4,68.0
.' Click Forgotten Dwarven Artifacts |tip They look like small mounds of snow on the ground around this area.
.get 5 Forgotten Dwarven Artifact |q 24477/1
.' You can find more around [38.0,66.8]
step
goto 35.8,66.3
.talk 1104
..turnin 24477
..accept 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24474
..accept 24475
step
goto 33.8,71.3
.from Rockjaw Scavenger##37105+
.get 5 Priceless Rockjaw Artifact |q 24486/1
step
goto 33.4,73.3
.from Ragged Young Wolf##705+
.get 4 Ragged Wolf Hide |q 24475/2
.from Small Crag Boar##708+
.get 3 Boar Haunch |q 24475/1
step
goto 35.8,66.3
.talk 1104
..turnin 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24475
..accept 3107 |only Dwarf Paladin
..accept 3106 |only Dwarf Warrior
..accept 3109 |only Dwarf Rogue
..accept 3110 |only Dwarf Priest
..accept 3115 |only Dwarf Warlock
..accept 3108 |only Dwarf Hunter
..accept 3115 |only Dwarf Mage
..accept 24494 |only Dwarf Shaman
..accept 24487
step
goto 35.8,66.8
.talk 926
..turnin 3107
..accept 24528
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
.' Learn Judgement |q 24528/1
.' Learn Seal of Righteousness |q 24528/3
only Dwarf Paladin
step
goto 35.9,67.7
.' Cast Seal of Righteousness on yourself, then cast Judgement on the Target Dummy
.' Practice using Judgement one time |q 24528/2
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
..turnin 24528
only Dwarf Paladin
step
goto 35.8,65.6
.talk 912
..turnin 3106
..accept 24531
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
.' Learn Charge |q 24531/2
only Dwarf Warrior
step
goto 35.7,67.7
.' Use Charge on a Target Dummy on the opposite side of the wall
.' Practice using Charge one time |q 24531/1
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
..turnin 24531
only Dwarf Warrior
step
goto 35.4,65.9
.talk 916
..turnin 3109
..accept 24532
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
.' Learn Eviscerate |q 24532/2
only Dwarf Rogue
step
goto 35.9,67.7
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24532/1
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
..turnin 24532
only Dwarf Rogue
step
goto 35.6,64.8
.talk 837
..turnin 3110
..accept 24533
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
.' Learn Flash Heal |q 24533/2
only Dwarf Priest
step
goto 36.0,64.8
.' Use Flash Heal on the Wounded Militia
.' Practice using Flash Heal 5 times |q 24533/1
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
..turnin 24533
only Dwarf Priest
step
goto 35.7,65.3
.talk 43455
..turnin 3115
..accept 26904
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
.' Learn Immolate |q 26904/2
only Dwarf Warlock
step
goto 35.9,67.7
.' Use Immolate 5 times on the Training Dummy
.' Practice Immolate 5 times |q 26904/1
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
..turnin 26904
only Dwarf Warlock
step
goto 36.2,65.9
.talk 895
..turnin 3108
..accept 24530
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
.' Learn Steady Shot |q 24530/2
only Dwarf Hunter
step
goto 35.7,67.7
.' Use the Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 24530/1
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
..turnin 24530
only Dwarf Hunter
step
goto 35.7,64.8
.talk 37121
..turnin 3115
..accept 24526
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
.' Learn Arcane Missiles |q 24526/2
only Dwarf Mage
step
goto 35.7,67.7
.' Use Arcane Missiles on the target dummies
.' Practise using Arcane Missiles 2 times |q 24526/1
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
..turnin 24526
only Dwarf Mage
step
goto 35.7,64.6
.talk 37115
..turnin 24494
..accept 24527
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
.' Learn Primal Strike |q 24527/2
only Dwarf Shaman
step
goto 35.7,67.7
.' Use Primal Strike on the training dummies
.' Practise Primal Strike 2 times |q 24527/1
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
..turnin 24527
only Dwarf Shaman
step
goto 32.1,74.2
.talk 786
..turnin 24487
..accept 182
step
goto 32.2,74.3
.talk 1354
..accept 24489
step
goto 31.9,74.4
.talk 8416
..accept 3361
step
goto 27.8,74.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Box |tip It looks like a toolbox next to the campfire.
.get Felix Box##10438 |q 3361/1
step
goto 27.8,75.2
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Mirim'koa talk
.' Scout Soothsayer Mirim'koa |q 24489/3
step
goto 29.8,78.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Chest |tip It looks like a toolbox next to the campfire.
.get Felix Chest##16313 |q 3361/2
step
goto 29.6,78.8
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Rikkari talk
.' Scout Soothsayer Rikkari |q 24489/2
step
goto 33.3,77.8
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Bucket of Bolts |tip It looks like a toolbox next to the campfire.
.get Felix's Bucket of Bolts##16314 |q 3361/3
step
goto 33.3,78.0
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Shi'kala talk
.' Scout Soothsayer Shi'kala |q 24489/1
step
goto 33.6,77.5
.kill 10 Frostmane Troll Whelp |q 182/1
step
goto 32.2,74.3
.talk 1354
..turnin 24489
step
goto 32.1,74.2
.talk 786
..turnin 182
..accept 218
step
goto 31.9,74.4
.talk 8416
..turnin 3361
step
goto 33.8,78.3 |n
.' Enter the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 36.9,78.1
.kill Wayward Fire Elemental |q 218/3
step
goto 37.4,78.4
.kill Grik'nir the Cold |q 218/1
step
goto 34.0,78.8
.from Frostmane Blade##37507+, Frostmane Novice##946+
.kill 10 Grik'nir's Servant |q 218/2
step
goto 33.8,78.3 |n
.' Leave the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 32.1,74.2
.talk 786
..turnin 218
..accept 24490
step
goto 40.9,70.7
.talk 6782
..turnin 24490
..accept 24491
step
goto 37.4,70.6
.talk 37113
..turnin 24491
..accept 24492
step
goto 35.8,66.3
.talk 37087
..accept 24493
step
goto 35.4,66.0
.' Click the Leftover Boar Meat |tip They look like golden brown turkey legs on this small square table.
.get Leftover Boar Meat##49756 |q 24492/3
step
goto 35.5,65.2
.' Click the Beer Barrel |tip It looks like a wooden barrel sitting on the ground in the corner.
.get Coldridge Beer Flagon##49754 |q 24492/1
step
goto 35.8,64.5
.' Click the Wolf-Hide Cloaks |tip It looks like a wooden crate on its side, upstairs next to some barrels of explosives.
.get Ragged Wolf-Hide Cloak##57541 |q 24492/2
step
goto 37.4,70.6
.talk 37113
..turnin 24492
.' You will fly to Kharanos |goto 53.3,49.8,0.5 |noway |c
step
goto 53.1,50.0
.talk 1872
..turnin 24493
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Gnome",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Gnome.
|confirm
step
goto Dun Morogh,25.8,32.0
.talk 45966
..accept 27670
step
goto 27.1,32.1
.kill 6 Crazed Leper Gnome |q 27670/1
step
goto 25.8,32.0
.talk 45966
..turnin 27670
..accept 28167
step
goto 27.7,31.9
.talk 47250
..turnin 28167
..accept 27671
step
goto 28.7,31.4
.' Use your Teleport Beacon on Survivors |use Teleport Beacon##62057 |tip They look like scared gnomes around this area.
.' Rescue 6 Survivors |q 27671/1
step
goto 27.7,31.9
.talk 47250
..turnin 27671
..accept 28169
step
goto 28.0,37.8
.talk 46274
..turnin 28169
..accept 27635
step
goto 28.6,37.7
.' Click a Sanitron 500 |tip They look like little helicopters flying on this spot.
.' Complete Decontamination Process |q 27635/1
step
goto 29.5,37.7
.talk 46255
..turnin 27635
..accept 27674
step
goto 29.6,38.0
.talk 46293
..' Tell him to send you to the surface |goto 33.9,38.6,0.5 |noway |c
step
goto 33.9,38.6
.talk 42396
..turnin 27674
..accept 26202 |only Gnome Warlock
..accept 26197 |only Gnome Mage
..accept 26203 |only Gnome Warrior
..accept 26206 |only Gnome Rogue
..accept 26199 |only Gnome Priest
step
goto 33.9,34.8
.talk 42323
..turnin 26199
..accept 26422
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26206
..accept 26423
only Gnome Rogue
step
goto 34.3,37.5
..turnin 26203
..accept 26425
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..turnin 26197
..accept 26421
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..turnin 26202
..accept 26424
only Gnome Warlock
step
goto 33.7,36.4
.talk 42317
..turnin 26424 |only Gnome Warlock
..turnin 26421 |only Gnome Mage
..turnin 26425 |only Gnome Warrior
..turnin 26423 |only Gnome Rogue
..turnin 26422 |only Gnome Priest
..accept 26208
.' Watch the dialogue
.' Learn about Operation: Gnomeregan |q 26208/1
step
goto 33.7,36.5
.talk 26208
..turnin 26208
..accept 26566
step
goto 34.3,34.6
.talk 42553
..turnin 26566
..accept 26222
step
goto 33.2,35.7
.' Click Spare Parts |tip They look like big pieces of metal on the ground around this area.
.get 7 Spare Part |q 26222/1
step
goto 34.3,34.6
.talk 42553
..turnin 26222
..accept 26205
step
goto 33.8,34.1
.talk 42611
..accept 26264
step
goto 33.4,39.3
.talk 42630
..accept 26265
step
goto 33.0,43.2
.kill 6 Living Contamination |q 26265/1
.from Toxic Sludge##42184+
.get 6 Recovered Possession |q 26264/1
.' Stand next to Toxic Pools |tip They look like green spots on the ground that spew liquid around this area.
.' Clean 5 Toxic Pools |q 26205/1
step
goto 33.4,39.3
.talk 42630
..turnin 26265
step
goto 33.9,34.8
.talk 42323
..accept 26200
only Gnome Priest
step
goto 33.9,34.8
.talk 42323
.' Learn Flash Heal |q 26200/2
only Gnome Priest
step
goto 33.9,34.6
.' Use your Flash Heal ability on the Wounded Infantry
.' Practice casting Flash Heal 5 times |q 26200/1
only Gnome Priest
step
goto 33.4,36.8
.talk 42366
..accept 26207
only Gnome Rogue
step
goto 33.4,36.8
.talk 42366
.' Learn Eviscerate |q 26207/2
only Gnome Rogue
step
goto 34.5,37.2
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice using Eviscerate 3 times |q 26207/1
only Gnome Rogue
step
goto 34.3,37.5
.talk 42324
..accept 26204
only Gnome Warrior
step
goto 34.3,37.5
.talk 42324
.' Learn Charge |q 26204/2
only Gnome Warrior
step
goto 34.3,37.5
.' Use your Charge ability on the Training Dummy
.' Practice using Charge 1 time |q 26204/1
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..accept 26198
only Gnome Mage
step
goto 34.5,35.1
.talk 42331
.' Learn Arcane Missiles |q 26198/2
only Gnome Mage
step
goto 34.4,37.5
.' Use your Fireball ability on the Training Dummy to trigger Arcane Missiles, then use Arcane Missiles on the Training Dummy
.' Practice casting Arcane Missiles 2 times |q 26198/1
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..accept 26201
only Gnome Warlock
step
goto 33.3,38.4
.talk 460
.' Learn Immolate |q 26201/2
only Gnome Warlock
step
goto 34.4,37.5
.' Use your Immolate ability on a Training Dummy
.' Practice Casting Immolate 5 Times |q 26201/1
only Gnome Warlock
step
goto 34.3,34.6
.talk 42553
..turnin 26205
step
goto 33.8,34.1
.talk 42611
..turnin 26264
step
goto 33.5,36.7
.talk 42489
..accept 26316
step
goto 33.9,34.8
.talk 42323
..turnin 26200
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26207
only Gnome Rogue
step
goto 34.5,35.1
.talk 42331
..turnin 26198
only Gnome Mage
step
goto 33.2,38.4
.talk 460
..turnin 26201
only Gnome Warlock
step
goto 34.3,37.5
.talk 42324
..turnin 26204
only Gnome Warrior
step
goto 33.1,48.7
.talk 42708
..turnin 26316
..accept 26285
..accept 26284
step
goto 32.9,49.9
.from Rockjaw Marauder##42222+, Rockjaw Bonepicker##42221+
.get 7 Stolen Powder Keg |q 26285/1
.' Attack Makeshift Cages to destroy them |tip They look like bone cages with brown animal hides layong on them around this area.
.' Rescue 6 Captured Demolitionists |q 26284/1
step
goto 33.1,48.7
.talk 42708
..turnin 26285
..turnin 26284
..accept 26318
step
goto 31.9,49.2 |n
.' Enter the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 28.8,49.0
.' Follow the path to the back of the cave
.kill Boss Bruggor |q 26318/2
step
goto 29.2,48.5
.' Click the Detonator |tip It looks like a small metal box with a handle on, sitting on the ground inside the cave.
.' Detonate the Trogg Tunnel |q 26318/1
step
goto 31.9,49.2 |n
.' Leave the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 33.1,48.7
.talk 42708
..turnin 26318
..accept 26329
step
goto 33.7,36.4
.talk 42317
..turnin 26329
..accept 26331
step
goto 33.4,36.8
.talk 42491
..accept 26333
step
goto 39.1,33.1
.from Irradiated Technician##42223+
.' Kill 8 Crushcog's Minions |q 26331/1
.' Use your Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200 |tip They look like yellow crab machines around this area.
.' Destroy 5 Repaired Mechano-Tanks |q 26333/1
step
goto 33.7,36.4
.talk 42317
..turnin 26331
step
goto 33.4,36.8
.talk 42491
..turnin 26333
step
goto 33.4,36.8
.talk 42366
..accept 26339
step
goto 37.4,44.0
.talk 42353
..turnin 26339
..accept 26342
step
goto 39.2,41.4
.' Use your Paintinator on Crushcog Sentry-Bots |use Paintinator##58203 |tip They look like small robots with red light heads running around on the frozen lake.
.' Blind 5 Crushcog's Sentry-Bots |q 26342/1
step
goto 37.4,44.0
.talk 42353
..turnin 26342
..accept 26364
step
goto 40.6,42.0
.talk 42849
..' Tell him you're ready to start the assault
.' Use your Orbital Targeting Device to target on Razlo Crushcog |use Orbital Targeting Device##58253
.' Defeat Razlo Crushcog |q 26364/1
step
goto 37.4,44.0
.talk 42353
..turnin 26364
..accept 26373
step
goto Dun Morogh,49.9,45.0
.talk 42933
..accept 26380
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Dun Morogh,53.9,50.7
.talk 1267
..accept 384
step
goto 54.5,50.8
.talk 1247
..turnin 26380
only Gnome
step
goto 54.5,50.8
.talk 1247
.buy Rhapsody Malt##2894 |q 384/2
step
goto 54.5,50.8
.talk 1247
.home Kharanos
step
goto 54.2,51.2
.talk 1374
..accept 315
step
goto 53.7,52.2
.talk 40950
..turnin 26373 |only Gnome
..accept 25724
step
goto 53.8,52.8
.talk 43701
.fpath Kharanos
step
goto 56.0,48.4
.from Crag Boar##1125+
.get 4 Tender Boar Rib |q 384/1
step
goto 53.9,50.7
.talk 1267
..turnin 384
step
goto 49.9,45.0
.talk 42933
..accept 26380
only Dwarf
step
goto 51.5,40.7 |n
.' Follow the path up |goto 51.5,40.7,0.5 |noway |c
step
goto 48.6,38.0
.kill 5 Frostmane Seer |q 25724/1
.kill 7 Frostmane Snowstrider |q 25724/2
.' Click Shimmerweed Baskets |tip They look like small wooden woven baskets on the ground around this area.
.get 7 Shimmerweed |q 315/1
step
goto 54.5,50.9
.talk 1247
..turnin 26380
only Dwarf
step
goto 54.2,51.2
.talk 1374
..turnin 315
step
goto 53.7,52.2
.talk 40950
..turnin 25724
..accept 25667
..accept 313
step
goto 53.7,52.1
.talk 40951
..accept 25668
step
goto 49.5,52.1 |n
.' Enter the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 48.3,47.0
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40991
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Dunstand |q 313/1
step
goto 49.2,47.8
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40994
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Lewin |q 313/2
step
goto 49.3,44.3
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 41056
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Valgrum |q 313/3
step
goto 48.3,47.0
.kill 10 Wendigo |q 25667/1
.' Click Pilfered Supplies |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.get 6 Pilfered Supplies |q 25668/1
step
goto 49.5,52.1 |n
.' Leave the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 50.5,52.5 |n
.' Follow the path up |goto 50.5,52.5,0.5 |noway |c
step
goto 53.7,52.1
.talk 40951
..turnin 25668
step
goto 53.7,52.2
.talk 40950
..turnin 25667
..turnin 313
..accept 25792
step
goto 53.3,51.9
.talk 1269
..accept 412
step
goto 57.3,56.8
.from Frostmane Scavenger##41146+
.get 8 Gyromechanic Gear |q 412/1
.' Use the Rune of Fire in your bags next to Constriction Totems |use Rune of Fire##56009 |tip They look like wooden spiked rods with green orbs at the top of them around this area.
.' 4 Constriction Totems Burned |q 25792/1
step
goto 53.7,52.2
.talk 40950
..turnin 25792
step
goto 53.3,51.9
.talk 1269
..turnin 412
step
goto 53.7,52.2
.talk 40950
..accept 25838
step
goto 56.8,47.1
.talk 41363
..turnin 25838
..accept 25839
step
goto 56.7,46.5
.' Click the Ultrasafe Personnel Launcher |tip They look like balls of lightning on a metal machine.
.' Use the Ultrasafe Personnel Launcher to deploy to Frostmane Retreat |q 25839/1
step
goto 62.5,53.7
.talk 41298
..turnin 25839
..accept 25840
..accept 25841
step
goto 62.5,53.8
.talk 50601
..accept 28868
step
goto 64.4,54.4
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Northern Frostmane Retreat |q 25841/1
step
goto 63.8,55.7
.kill Battok the Berserker |q 25840/1
step
goto 63.3,57.3
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Southern Frostmane Retreat |q 25841/2
step
goto 62.7,55.1
.kill 4 Frostmane Warrior |q 25840/2
.' Use your Viewpoint Equalizer to shrink Frostmane Builders |use Viewpoint Equalizer##67249
.' Shrink 5 Frostmane Builders |q 28868/1
step
goto 62.5,53.8
.talk 50601
..turnin 28868
step
goto 62.5,53.7
.talk 41298
..turnin 25840
..turnin 25841
..accept 25882
step
goto 69.2,51.3 |n
.' Follow the path up |goto 69.2,51.3,0.5 |noway |c
step
goto 70.4,48.9
.talk 41578
..turnin 25882
..accept 25932
.' Help Sergeant Flinthammer and his mountaineers fight off the Frostmane Raiders
.' Defend Amberstill Ranch |q 25932/1
step
goto 70.4,48.9
.talk 41578
..turnin 25932
step
goto 70.7,48.9
.talk 1261
..accept 25905
step
goto 70.3,48.1
.talk 1265
..accept 314
step
goto 69.3,49.6 |n
.' Follow the path up |goto 69.3,49.6,0.5 |noway |c
step
goto 69.7,44.4
.from Vagash##1388
.get Fang of Vagash |q 314/1
step
goto 70.3,48.1
.talk 1265
..turnin 314
step
goto 67.6,55.0
.' Whistle while standing next to Stolen Rams |script DoEmote("WHISTLE") |tip They look like different colored rams around this area.
.' Recover 6 Stolen Rams |q 25905/1
step
goto 70.7,48.9
.talk 1261
..turnin 25905
step
goto 70.4,48.9
.talk 41578
..accept 25933
step
goto 69.9,53.2 |n
.' Go to the road |goto 69.9,53.2,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..accept 433
step
goto 75.9,54.5
.talk 43702
.fpath Gol'Bolar Quarry
step
goto 76.3,54.7
.talk 1254
..turnin 25933
..accept 432
step
goto 76.2,53.0
.talk 1255
..accept 25937
step
goto 77.7,55.0 |n
.' Enter the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 78.2,53.3
.kill 8 Rockjaw Skullthumper |q 432/1
.kill 8 Rockjaw Bonesnapper |q 432/2
.' Click Frozen Artifacts |tip They look like crystals made of ice, generally along the walls of the cave.
.get 8 Frozen Artifact |q 25937/1
.' Use Runes of Return on Trapped Miners |use Runes of Return##56222 |tip They look like scared dwarves along the walls inside the cave.
.' Rescue 7 Trapped Miners |q 433/1
step
goto 77.7,55.0 |n
.' Leave the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 75.1,55.9 |n
.' Follow the path up |goto 75.1,55.9,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..turnin 433
step
goto 76.3,54.7
.talk 1254
..turnin 432
step
goto 76.2,53.0
.talk 1255
..turnin 25937
step
goto 75.9,54.3
.talk 1977
..accept 25986
step
goto 75.0,53.5 |n
.' Follow the path up to the road |goto 75.0,53.5,0.5 |noway |c
step
goto 82.6,48.3
.talk 41804
..accept 25979
step
goto 82.8,48.4
.talk 41786
..turnin 25986
..accept 25978
step
goto 83.0,51.5
.kill 6 Helm's Bed Surger |q 25979/1
.' Attack Icy Tombs |tip They look like big green chunks of ice around this area.
.' Free 6 Frozen Mountaineers |q 25978/1
step
goto 82.9,48.4
.talk 41786
..turnin 25978
step
goto 82.6,48.3
.talk 41804
..turnin 25979
step
goto 82.9,48.4
.talk 41786
..accept 25997
step
goto 85.2,60.6
.from Captain Beld##6124 |tip He's inside of the house at the bottom of the stairs
.get Dark Iron Attack Plans |q 25997/2
step
goto 84.0,58.1
.kill 5 Dark Iron Spy |q 25997/1
step
goto 82.9,48.4
.talk 41786
..turnin 25997
..accept 25998
step
goto 75.2,52.8
.' Click Mathel's Flying Machine |tip It looks like a helicopter flying in place on a wooden platform.
.' You will fly to Ironforge Airfield |goto 76.0,16.8,0.5 |noway |c
step
goto 78.3,20.5
.talk 41853
..turnin 25998
..accept 26078
step
goto 78.3,24.6
.' Use the Firefighting Gear next to the burning airplanes |use Firefighting Gear##56803
.' Extinquish 6 Fires |q 26078/1
step
goto 78.3,20.5
.talk 41853
..turnin 26078
..accept 26085
step
goto 77.7,30.1
.' Use the Ironforge Banner while standing next to Loose Snow |use Ironforge Banner##56809 |tip They look like piles of white snow on the ground around this area.
.' Plant 8 Ironforge Banners |q 26085/1
step
goto 78.3,20.5
.talk 41853
..turnin 26085
..accept 26094
step
goto 77.1,18.5
.' Click the Repaired Bomber |tip It looks like an airplane parked at the end of the runway, ready to take off.
.' Use Iron Hammer Bomb on the Dark Iron forces below |use Iron Hammer Bomb##56814
.' Kill 30 Dark Iron Attackers |q 26094/1
step
goto 78.3,20.5
.talk 41853
..turnin 26094
..accept 26102
step
goto 78.5,34.4
.kill Dark Iron Golem |n
.kill General Grimaxe |q 26102/1
step
goto 78.3,20.5
.talk 41853
..turnin 26102
..accept 26112
step
goto Ironforge,41.4,52.3
.talk 1959
..accept 26131
step
goto 39.8,57.4
.talk 26131
..turnin 26112
..accept 26118
step
goto 36.6,43.2
.' Use the Sturdy Manacles on Ambassador Slaghammer|use Sturdy Manacles##56837
.' Take Ambassaddor Slaghammer to 43.6,50.6
.' Arrest Ambassador Slaghammer and bring him to the High Seat |q 26118/1
step
goto 39.1,56.1
.talk 42129
..turnin 26118
step
goto 55.5,47.7
.talk 6388
..' Tell him Mountaineer Barleybrew said he could help you get to Loch Modan
.' You will fly to Thelsamar |goto Loch Modan,13.9,56.7,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26131
..accept 26854
step
goto 12.7,58.5 |n
.' Enter the tunnel |goto 12.7,58.5,0.5 |noway |c
step
goto Dun Morogh,87.6,50.1
.' Click the Dwarven Corpse
..turnin 26854
..accept 26855
step
goto 87.5,50.2
.from Mangeclaw##1961
.get Mangy Claw |q 26855/1
step
goto 89.6,51.8 |n
.' Enter the tunnel |goto 89.6,51.8,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26855
..accept 13635
step
goto 16.4,58.5 |n
.' Enter the tunnel |goto 16.4,58.5,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 13635
..accept 26146
step
goto 23.3,74.9
.talk 1089
..accept 26145
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 31.5,74.6
.kill 12 Stonesplinter Trogg##1161 |q 26146/1
.get 8 Trogg Stone Tooth##2536 |q 26145/1
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26146
..accept 26148
step
goto 23.3,74.9
.talk 1089
..turnin 26145
step
goto 23.3,75.1
.talk 1090
..accept 26147
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 33.1,69.3 |n
.' Enter the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 34.3,61.0
.' Follow the path in the cave down, around, and then up again
.kill Grawmug |q 26148/1
step
goto 35.5,64.9
.kill 8 Stonesplinter Bonesnapper |q 26147/2
.kill 8 Stonesplinter Shaman |q 26147/1
step
goto 33.1,69.3 |n
.' Leave the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26148
..accept 26176
step
goto 23.3,75.1
.talk 1090
..turnin 26147
step
goto 33.9,51.0
.talk 1572
.fpath Thelsamar
step
goto 35.1,46.6
.talk 1340
..turnin 26176
..accept 26842
..accept 13636
step
goto 35.5,48.4
.talk 6734
.home Stoutlager Inn
step
goto 34.8,49.3
.talk 1963
..accept 26860
step
goto 35.4,42.8
.talk 1777
..accept 25118
step
goto 37.3,46.5
.' Click the Wanted! Poster |tip It looks like a wooden sign with pictures on it next to a well.
..accept 13648
step
goto 41.4,39.0
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground under this small wooden platform.
..accept 13655
step
goto 34.6,29.6
.from Black Bear##1129+
.get 8 Bear Rumps |q 26860/1
.kill 8 Forest Lurker |q 25118/1
.' You can find more:
.' at [29.8,17.3]
.' at [39.8,52.3]
step
goto 26.9,56.3
.from Mosshide Scout##44161+, Mosshide Basher##44162+
.get 12 Mosshide Ear |q 26842/1
.' You can find more around [27.3,43.8]
step
goto 35.1,46.6
.talk 1340
..turnin 26842
step
goto 34.8,49.3
.talk 1963
..turnin 26860
step
goto 35.4,42.8
.talk 1777
..turnin 25118
step
goto 37.3,47.8
.talk 1153
..turnin 13655
step
goto 40.7,58.4 |n
.' Follow the path up |goto 40.7,58.4,0.5 |noway |c
step
goto 36.8,61.1
.kill Gorick Guzzledraught |q 13648/1
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground inside the small cave, next to the campfire.
..accept 13656
step
goto 37.3,47.8
.talk 1153
..turnin 13656
step
goto 34.6,44.5
.talk 1139
..turnin 13648
step
goto 25.4,18.0
.talk 1343
..turnin 13636
..accept 26843
step
goto 26.2,31.8
.kill "Commander" Nazrim |q 26843/1
step
goto 25.4,18.0
.talk 1343
..turnin 26843
..accept 26844
step
goto 35.5,12.5
.kill 5 Tunnel Rat Forager |q 26844/2
.kill 5 Tunnel Rat Surveyor |q 26844/1
.' There are more deeper in, around 35.3,16.1
step
goto 25.4,18.0
.talk 1343
..turnin 26844
..accept 26845
..accept 26863
step
goto 25.4,17.8
.talk 44200
..accept 26846
step
goto 35.4,18.6 |n
.' Enter the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 34.7,27.2
.' Click Miner's League Crates and get Miners' Gear
.from Foreman Sharpsneer##44198
.get Foreman Sharpsneer's Head |q 26845/1
step
goto 35.5,27.8
.kill 5 Tunnel Rat Geomancer |q 26846/1
.' Click the Miner's League Crates |tip They look like piles of wooden boxes inside the cave.
.get 6 Miners' Gear |q 26863/1
step
goto 35.4,18.6 |n
.' Leave the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 25.4,18.0
.talk 1343
..turnin 26845
..accept 26864
..turnin 26863
step
goto 25.4,17.8
.talk 44200
..turnin 26846
step
goto 35.1,46.6
.talk 1340
..turnin 26864
..accept 26927
step
map Ironforge
'To continue gaining reputation with the Ironforge faction:
.' You can buy an Ironforge Tabard from Captain Stonehelm at [Ironforge 55.9,47.9] |tip Wear the Ironforge Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
.'
.'
'To continue gaining reputation with the Gnomeregan faction:
.' You can buy a Gnomeregan Tabard from Master Tinker Trini at [Ironforge 56.2,48.5] |tip Wear the Gnomeregan Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Stormwind\\Human",[[
description This guide will help you to get Exalted
description reputation with the Stormwind faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Human.
|confirm
step
goto Elwynn Forest,48.2,42.1
.talk 197
..accept 28757 |only Human Mage
..accept 28762 |only Human Paladin
..accept 28763 |only Human Priest
..accept 28764 |only Human Rogue
..accept 28765 |only Human Warlock
..accept 28766 |only Human Warrior
..accept 28767 |only Human Hunter
step
goto 46.9,39.3
.kill 6 Blackrock Battle Worg |q 28757/1 |only Human Mage
.kill 6 Blackrock Battle Worg |q 28762/1 |only Human Paladin
.kill 6 Blackrock Battle Worg |q 28763/1 |only Human Priest
.kill 6 Blackrock Battle Worg |q 28764/1 |only Human Rogue
.kill 6 Blackrock Battle Worg |q 28765/1 |only Human Warlock
.kill 6 Blackrock Battle Worg |q 28766/1 |only Human Warrior
.kill 6 Blackrock Battle Worg |q 28767/1 |only Human Hunter
step
goto 48.2,42.1
.talk 197
..turnin 28757 |only Human Mage
..accept 28769 |only Human Mage
..turnin 28762 |only Human Paladin
..accept 28770 |only Human Paladin
..turnin 28763 |only Human Priest
..accept 28771 |only Human Priest
..turnin 28764 |only Human Rogue
..accept 28772 |only Human Rogue
..turnin 28765 |only Human Warlock
..accept 28773 |only Human Warlock
..turnin 28766 |only Human Warrior
..accept 28774 |only Human Warrior
..turnin 28767 |only Human Hunter
..accept 28759 |only Human Hunter
step
goto 45.4,43.3
.kill 8 Blackrock Spy |q 28769/1 |only Human Mage |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28770/1 |only Human Paladin |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28771/1 |only Human Priest |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28772/1 |only Human Rogue |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28773/1 |only Human Warlock |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28774/1 |only Human Warrior |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28759/1 |only Human Hunter |tip They creep around near the trees around this area.
step
goto 48.2,42.0
.talk 197
..turnin 28769 |only Human Mage
..accept 3104 |only Human Mage
..turnin 28770 |only Human Paladin
..accept 3101 |only Human Paladin
..turnin 28771 |only Human Priest
..accept 3103 |only Human Priest
..turnin 28772 |only Human Rogue
..accept 3102 |only Human Rogue
..turnin 28773 |only Human Warlock
..accept 3105 |only Human Warlock
..turnin 28774 |only Human Warrior
..accept 3100 |only Human Warrior
..turnin 28759 |only Human Hunter
..accept 26910 |only Human Hunter
step
goto 49.7,39.4
.talk 198
..turnin 3104
..accept 26916
only Human Mage
step
goto 49.7,39.4
.talk 198
.' Learn Arcane Missiles |q 26916/2
only Human Mage
step
goto 48.6,44.2
.' Use your Arcane Missiles ability on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26916/1
only Human Mage
step
goto 49.7,39.4
.talk 198
..turnin 26916
..accept 28784
only Human Mage
step
goto 50.3,39.9
.talk 915
..turnin 3102
..accept 26915
only Human Rogue
step
goto 50.3,39.9
.talk 915
.' Learn Eviscerate |q 26915/2
only Human Rogue
step
goto 48.7,44.2
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 26915/1
only Human Rogue
step
goto 50.3,39.9
.talk 915
..turnin 26915
..accept 28787
only Human Rogue
step
goto 49.9,42.6
.talk 459
..turnin 3105
..accept 26914
only Human Warlock
step
goto 49.9,42.6
.talk 459
.' Learn Immolate |q 26914/2
only Human Warlock
step
goto 48.7,44.2
.' Use your Immolate ability on the Training Dummy
.' Practice using Immolate 5 times |q 26914/1
only Human Warlock
step
goto 49.9,42.6
.talk 459
..turnin 26914
..accept 28788
only Human Warlock
step
goto 48.6,42.6
.talk 43278
..turnin 26910
..accept 26917
only Human Hunter
step
goto 48.6,42.6
.talk 43278
.' Learn Steady Shot |q 26917/2
only Human Hunter
step
goto 48.6,44.2
.' Use your Steady Shot ability on the Target Dummy
.' Practice Steady Shot 5 times |q 26917/1
only Human Hunter
step
goto 48.6,42.6
.talk 43278
..turnin 26917
..accept 28780
only Human Hunter
step
goto 49.8,39.5
.talk 375
..turnin 3103
..accept 26919
only Human Priest
step
goto 49.8,39.5
.talk 375
.' Learn Flash Heal |q 26919/2
only Human Priest
step
goto 49.9,39.7
.' Use your Flash Heal ability on the Wounded Trainee
.' Practice Flash Heal 5 times |q 26919/1
only Human Priest
step
goto 49.8,39.5
.talk 375
..turnin 26919
..accept 28786
only Human Priest
step
goto 50.4,42.1
.talk 925
..turnin 3101
..accept 26918
only Human Paladin
step
goto 50.4,42.1
.talk 925
.' Learn Judgement |q 26918/1
.' Learn Seal of Righteousness |q 26918/3
only Human Paladin
step
goto 48.8,44.3
.' Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy
.' Practice Judgement 1 time |q 26918/2
only Human Paladin
step
goto 50.4,42.1
.talk 925
..turnin 26918
..accept 28785
only Human Paladin
step
goto 50.2,42.3
.talk 911
..turnin 3100
..accept 26913
only Human Warrior
step
goto 50.2,42.3
.talk 911
.' Learn Charge |q 26913/2
only Human Warrior
step
goto 48.5,44.3
.' Use your Charge ability on a Target Dummy
.' Practice Charge 1 time |q 26913/1
only Human Warrior
step
goto 50.2,42.3
.talk 911
..turnin 26913
..accept 28789
only Human Warrior
step
goto 48.8,38.4
.talk 823
..turnin 28789 |only Human Warrior
..accept 28797 |only Human Warrior
..turnin 28785 |only Human Paladin
..accept 28793 |only Human Paladin
..turnin 28780 |only Human Hunter
..accept 28791 |only Human Hunter
..turnin 28786 |only Human Priest
..accept 28794 |only Human Priest
..turnin 28788 |only Human Warlock
..accept 28796 |only Human Warlock
..turnin 28784 |only Human Mage
..accept 28792 |only Human Mage
..turnin 28787 |only Human Rogue
..accept 28795 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..accept 28813 |only Human Warrior
..accept 28809 |only Human Paladin
..accept 28806 |only Human Hunter
..accept 28810 |only Human Priest
..accept 28812 |only Human Warlock
..accept 28808 |only Human Mage
..accept 28811 |only Human Rogue
step
goto Elwynn Forest,47.4,35.4
.kill 8 Goblin Assassin |q 28797/1 |only Human Warrior
.kill 8 Goblin Assassin |q 28793/1 |only Human Paladin
.kill 8 Goblin Assassin |q 28791/1 |only Human Hunter
.kill 8 Goblin Assassin |q 28794/1 |only Human Priest
.kill 8 Goblin Assassin |q 28796/1 |only Human Warlock
.kill 8 Goblin Assassin |q 28792/1 |only Human Mage
.kill 8 Goblin Assassin |q 28795/1 |only Human Rogue
.' Click Injured Stormwind Infantry |tip They look like Alliance soldiers laying on the ground around this area.
.' Revive 4 Injured Soldiers |q 28813/1 |only Human Warrior
.' Revive 4 Injured Soldiers |q 28809/1 |only Human Paladin
.' Revive 4 Injured Soldiers |q 28806/1 |only Human Hunter
.' Revive 4 Injured Soldiers |q 28810/1 |only Human Priest
.' Revive 4 Injured Soldiers |q 28812/1 |only Human Warlock
.' Revive 4 Injured Soldiers |q 28808/1 |only Human Mage
.' Revive 4 Injured Soldiers |q 28811/1 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..turnin 28813 |only Human Warrior
..turnin 28809 |only Human Paladin
..turnin 28806 |only Human Hunter
..turnin 28810 |only Human Priest
..turnin 28812 |only Human Warlock
..turnin 28808 |only Human Mage
..turnin 28811 |only Human Rogue
step
goto 48.8,38.4
.talk 823
..turnin 28797 |only Human Warrior
..turnin 28793 |only Human Paladin
..turnin 28791 |only Human Hunter
..turnin 28794 |only Human Priest
..turnin 28796 |only Human Warlock
..turnin 28792 |only Human Mage
..turnin 28795 |only Human Rogue
..accept 28823 |only Human Warrior
..accept 28819 |only Human Paladin
..accept 28817 |only Human Hunter
..accept 28820 |only Human Priest
..accept 28822 |only Human Warlock
..accept 28818 |only Human Mage
..accept 28821 |only Human Rogue
step
goto 48.2,42.1
.talk 197
..turnin 28823 |only Human Warrior
..turnin 28819 |only Human Paladin
..turnin 28817 |only Human Hunter
..turnin 28820 |only Human Priest
..turnin 28822 |only Human Warlock
..turnin 28818 |only Human Mage
..turnin 28821 |only Human Rogue
..accept 26389
step
goto 48.1,42.5
.talk 9296
..accept 26391
step
goto 54.0,49.2
.from Blackrock Invader##42937+
.get 8 Blackrock Orc Weapon |q 26389/1
.' Use Milly's Fire Extinguisher on the fires in the area |use Milly's Fire Extinguisher##58362
.' Extinguish 8 Vineyard fires |q 26391/1
step
goto 48.1,42.5
.talk 9296
..turnin 26391
step
goto 48.2,42.1
.talk 197
..turnin 26389
..accept 26390
step
goto 57.0,40.7
.kill Kurtok the Slayer |q 26390/1
step
goto 48.2,42.1
.talk 197
..turnin 26390
..accept 54
step
goto 45.6,47.7
.talk 6774
..accept 2158
step
goto 41.7,64.6
.talk 42983
.fpath Goldshire
step
goto 42.1,65.9
.talk 240
..turnin 54
..accept 62
step
goto 42.1,67.3
.talk 241
..accept 47
step
goto 43.3,65.7
.talk 253
..accept 60
step
goto 43.8,65.8
.talk 295
..turnin 2158
step
goto 43.8,65.8
.talk 295
.home Goldshire
step
goto 41.7,65.5
.talk 514
..accept 26393
only Human
step
goto 41.7,64.6
.talk 42983
..turnin 26393
..accept 26394
only Human
step
goto Stormwind City,77.2,61.0
.talk 1323
..turnin 26394
..accept 26395
only Human
step
goto 70.9,72.5
.talk 352
..turnin 26395
..accept 26396
only Human
step
goto Elwynn Forest,41.7,65.5
.talk 514
..turnin 26396
only Human
step
goto 39.0,82.4 |n
.' Enter the mine |goto 39.0,82.4,0.5 |noway |c
step
goto 39.9,80.0
.' Go to this spot inside the mine
.' Explore the Fargodeep Mine |q 62/1
step
goto 38.1,82.9
.from Kobold Tunneler##475+, Kobold Miner##40+
.get 10 Gold Dust |q 47/1
.get 8 Large Candle |q 60/1
step
goto 43.3,65.7
.talk 253
..turnin 60
..accept 26150
step
goto 42.1,65.9
.talk 240
..turnin 62
..accept 76
step
goto 42.1,67.3
.talk 241
..turnin 47
step
goto 43.1,89.6
.talk 251
..turnin 26150
..accept 106
step
goto 34.5,84.3
.talk 246
..accept 85
step
goto 29.8,86.0
.talk 252
..turnin 106
..accept 111
step
goto 34.9,83.9
.talk 248
..turnin 111
..accept 107
step
goto 43.1,85.7
.talk 247
..turnin 85
..accept 86
step
goto 42.1,86.6
.from Stonetusk Boar##113+
.get 4 Chunk of Boar Meat |q 86/1
step
goto 34.5,84.3
.talk 246
..turnin 86
..accept 84
step
goto 43.1,85.7
.talk 247
..turnin 84
..accept 87
step
goto 40.1,80.6
.from Goldtooth##327
.get Bernice's Necklace |q 87/1
step
goto 34.5,84.3
.talk 246
..turnin 87
step
goto 34.7,84.5
.talk 244
..accept 88
step
goto 33.0,84.7
.from Princess##330
.get Brass Collar |q 88/1
step
goto 34.7,84.5
.talk 244
..turnin 88
step
goto 42.1,67.3
.talk 241
..accept 40
step
goto 42.1,65.9
.talk 240
..turnin 40
..accept 35
step
goto 43.3,65.7
.talk 253
..turnin 107
..accept 112
step
goto 49.5,66.3
.from Murloc##285+, Murloc Streamrunner##735+
.get 4 Crystal Kelp Frond |q 112/1
step
goto 43.3,65.7
.talk 253
..turnin 112
..accept 114
step
goto 43.1,89.6
.talk 251
..turnin 114
step
goto 42.1,65.9
.talk 240
..' Tell him you wish to ride the Stormwind charger
.' Ride the horse to the east side of Elwynn Forest |goto 73.9,72.5,0.5 |noway |c
step
goto 74.0,72.2
.talk 261
..turnin 35
..accept 37
..accept 52
step
goto 74.0,72.3
.' Click the Bounty Board |tip It's a wooden sign to the left of the wooden bridge.
..accept 46
..accept 26152
step
goto 79.5,68.7
.talk 278
..accept 83
step
goto 78.7,67.1
.kill James Clark |q 26152/1
.collect Gold Pickup Schedule##1307 |n
.' Click the Gold Pickup Schedule in your bags |use Gold Pickup Schedule##1307
..accept 123
step
goto 81.4,66.1
.talk 10616
..accept 5545
step
goto 81.8,66.6
.talk 43000
.fpath Eastvale Logging Camp
step
goto 81.8,66.0
.talk 42256
..turnin 26152
..turnin 123
..accept 147
step
goto 72.7,60.3
.' Click the Half-Eaten body |tip On the ground next to some big rocks by the river and a tree.
..turnin 37
..accept 45
step
goto 75.1,56.3
.from Rogue Wizard##474+
.get 6 Linen Scrap |q 83/1
step
goto 79.8,55.5
.' Click Rolf's Corpse |tip On the ground next to a murloc hut.
..turnin 45
..accept 71
step
goto 77.6,59.0
.from Murloc Lurker##732+, Murloc Forager##46+
.get 8 Torn Murloc Fin |q 46/1
step
goto 80.9,61.5
.kill 8 Prowler or Forest Wolf |q 52/1
.kill 5 Young Forest Bear |q 52/2
.' Click Bundles of Wood |tip They look like little stacks of 3 firewood at the base of trees in this area.
.get 8 Bundle of Wood |q 5545/1
step
goto 81.4,66.1
.talk 10616
..turnin 5545
step
goto 79.5,68.7
.talk 278
..turnin 83
step
goto 74.0,72.2
.talk 261
..turnin 71
..accept 59
..turnin 52
..turnin 46
step
goto 71.0,80.8
.from Morgan the Collector##473
.get The Collector's Ring |q 147/1
step
goto 79.5,68.7
.talk 278
..turnin 59
step
goto 81.8,66.0
.talk 42256
..turnin 147
..accept 26378
step
goto 61.7,53.9 |n
.' Enter the Jasperlode Mines |goto 61.7,53.9 |noway |c
step
goto 60.4,49.8
.' Go to this spot inside the mine
.' Explore the Jasperlode Mine |q 76/1
step
goto 42.1,65.9
.talk 240
..turnin 76
..accept 239
step
goto 24.6,78.2
.' Click the Wanted Poster |tip It's a sign next to the road.
..accept 176
step
goto 24.2,74.5
.talk 963
..turnin 239
..accept 11
step
goto 24.9,95.0
.from Hogger##448 |tip Don't worry that he's elite, he is pretty easy to kill.
.' Deal with "The Hogger Situation" |q 176/1
step
goto 24.8,95.3
.' Click the Westfall Deed |tip It's a rolled up scroll in the hand of a dead body on the ground.
..accept 184
step
goto 25.2,92.9
.from Riverpaw Outrunner##478+, Riverpaw Runt##97+
.get 8 Painted Gnoll Armband |q 11/1
step
goto 42.1,65.9
.talk 240
..turnin 176
step
goto 24.2,74.5
.talk 963
..turnin 11
step
goto Westfall,60.1,19.3
.talk 42308
..turnin 26378
..accept 26209
..turnin 184
step
goto 59.0,18.2
.talk 42384
.talk 42391
..' Offer them a couple copper and ask them who killed the Furbrowls
.' Obtain Clue #1 |q 26209/1
.' Obtain Clue #2 |q 26209/2
.' Obtain Clue #3 |q 26209/3
.' Obtain Clue #4 |q 26209/4
step
goto 60.1,19.3
.talk 42308
..turnin 26209
..accept 26213
..accept 26214
step
goto 56.5,15.4
.from Riverpaw Gnoll##725+, Riverpaw Scout##500+
.get Riverpaw Gnoll Clue |q 26213/1
step
goto 54.5,11.6
.from Murloc Raider##515+, Murloc Coastrunner##126+
.get Murloc Clue |q 26214/1
step
goto 60.1,19.3
.talk 42308
..turnin 26213
..turnin 26214
..accept 26215
step
goto 49.8,18.7
.talk 42406
.fpath Furlbrow's Pumpkin Farm
step
goto 49.6,19.4
.talk 42405
..turnin 26215
..accept 26228
step
goto 49.6,19.6
.talk 42498
..accept 26229
step
goto 49.5,19.1
.talk 42497
..accept 26230
step
goto 50.4,21.1
.from Coyote##834+
.get 6 Coyote Tail |q 26230/1
.' Click Fresh Dirt |tip They look like mounds of dirt on the ground around this area.
.get 5 Fresh Dirt |q 26230/2
step
goto 44.5,25.0 |n
.' Enter the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 46.3,19.0
.' Use Two-Shoed Lou's Old House at the back of Jangolode Mine |use Two-Shoed Lou's Old House##57761
.' Learn about Livin' the Life |q 26228/1
step
goto 44.5,25.0 |n
.' Leave the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 44.8,25.8
.kill 12 Kobold Digger |q 26229/1
step
goto 49.6,19.6
.talk 42498
..turnin 26229
step
goto 49.6,19.4
.talk 42405
..turnin 26228
..accept 26232
step
goto 49.5,19.1
.talk 42497
..turnin 26230
step
goto 48.2,19.6
.' Stand next to the 4 Thugs behind the barn
.from Thug##42387+
.' Eavesdrop on Thugs |q 26232/1
step
goto 49.7,19.5
.talk 42558
..turnin 26232
..accept 26236
step
goto 56.0,31.2
.talk 233
..turnin 26236
..accept 26237
step
goto 56.4,30.5
.talk 235
..accept 26241
step
goto 50.6,35.7
.from Goretusk##157+, Young Goretusk##454+
.get 6 Goretusk Flank |q 26241/2
.from Fleshripper##1109+ |tip They are spread out and rare around this area, so you will need to search a little for them.
.get 6 Stringy Fleshripper Meat |q 26241/3
.' You can find more Fleshrippers around [59.1,32.5]
step
goto 55.5,32.0
.kill 10 Harvest Watcher##114+ |q 26237/1
.collect Harvest Watcher Heart##57935 |n
.' Click the Harvest Watcher Heart in your bags |use Harvest Watcher Heart##57935
..accept 26252
.' Click Okra |tip They look like big blue and green bushes on the ground around this area.
.get 6 Okra |q 26241/1
step
goto 56.0,31.2
.talk 233
..turnin 26237
..turnin 26252
..accept 26257
step
goto 56.4,30.5
.talk 235
..turnin 26241
step
goto 56.0,31.2
.talk 233
..accept 26270
step
goto 56.4,30.5
.talk 235
..turnin 26270
..accept 26266
step
goto 49.8,34.4
.' Use Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
.' Enable an Overloaded Harvest Golem |q 26257/1
step
goto 47.5,35.0
.' Use the abilities on your action bar to do the following:
.kill 25 Energized Harvest Reaper |q 26257/2
step
goto 50.1,33.8 |n
.' Click the red arrow on your hotbar to stop controlling the Harvest Watcher |outvehicle |q 26257
step
goto 56.0,31.2
.talk 233
..turnin 26257
step
goto 56.6,49.4
.talk 523
.fpath Sentinel Hill
step
goto 57.0,47.1
.talk 42575
..turnin 26266
..accept 26271
step
goto 56.3,47.5
.talk 234
..accept 26286
step
goto 56.5,47.6
.talk 821
..accept 26287
step
goto 52.9,53.7
.talk 8931
.home Sentinel Hill
step
goto 53.9,50.0
.from Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
.' Slay 12 attacking Riverpaw Gnolls |q 26287/1
.get Gnoll Attack Orders |q 26286/1
step
goto 56.9,57.6
.' Use Westfall Stew next to Homeless Stormwind Citizens, West Plains Drifters, and Transients |use Westfall Stew##57991
.' Feed 20 Westfall Homeless |q 26271/1
.' You can find more at [58.2,40.2]
step
goto 56.3,47.5
.talk 234
..turnin 26286
step
goto 56.5,47.6
.talk 821
..turnin 26287
..accept 26288
step
goto 57.0,47.1
.talk 42575
..turnin 26271
step
goto 56.3,47.5
.talk 234
..accept 26289
step
goto 62.3,76.4
.kill Jango Spothide  |q 26288/3
step
goto 63.4,76.2
.kill 5 Riverpaw Mystic |q 26288/1
.kill 5 Riverpaw Taskmaster |q 26288/2
step
goto 68.3,70.4
.talk 7024
..turnin 26289
..accept 26290
step
goto 70.5,74.5
.' You can safely attack the elite mobs, Agent Kearnen will kill them for you.
.' Use your Potion of Shrouding inside the tower |use Potion of Shrouding##58112
.' Become Invisible |havebuff Interface\Icons\Ability_Mage_Invisibility |q 26290
step
goto 70.6,74.1
.' Go to the top of the tower
.' Reveal Helix's Secret |q 26290/1
step
goto 68.3,70.4
.talk 7024
..turnin 26290
..accept 26291
step
goto 56.3,47.5
.talk 234
..turnin 26291
..accept 26292
step
goto 56.5,47.6
.talk 821
..turnin 26288
step
goto 56.4,47.3
.talk 878
..accept 26371
step
goto 42.1,64.1
.talk 42425
..turnin 26292
..accept 26295
step
goto 42.1,63.3
.talk 42426
.fpath Moonbrook
step
goto 41.5,67.5
.from Moonbrook Thug##42677
.collect Red Bandana##58117 |n
.' Click the Red Bandana in your bags |use Red Bandana##58117
..accept 26296
step
goto 41.6,66.4
.' Click the Informational Pamphlet |tip It looks like a small brown book sitting on a busted barrel.
.get Informational Pamphlet |q 26295/1
step
goto 41.3,66.5
.' Click the Mysterious Propaganda |tip It looks like a crumbled scroll nailed to the wall.
.get Mysterious Propaganda |q 26295/4
step
goto 43.3,69.9
.' Click The Moonbrook Times |tip It looks like a long scroll laying flat on the ground next to the big fountain in the middle of Moonbrook.
.get Issue of the Moonbrook Times |q 26295/2
step
goto 43.5,66.6
.' Click the Secret Journal |tip It looks like a small blue book laying on the floor, upstairs in the very back room, in the building that looks like an inn.
.get Secret Journal |q 26295/3
step
goto 42.5,69.5
.from Moonbrook Thug##42677+ |tip They are found inside the buildings around Moonbrook.
.get 6 Red Bandana |q 26296/1
step
goto 42.1,64.1
.talk 42425
..turnin 26295
..accept 26297
..turnin 26296
step
goto 43.6,69.5
.' Stand in the crowd
.' Gather information from the Moonbrook Rally |q 26297/1
step
goto 42.1,64.1
.talk 42425
..turnin 26297
..accept 26319
step
goto 43.0,65.0
.talk 42651
..turnin 26319
..accept 26320
step
goto Westfall,38.3,77.5 |n
.' Enter the Defias Hideout and follow the trail of homeless people to this spot
.' Go through the swirling portal into the Deadmines
|confirm
step
'Inside the Deadmines, right at the entrance, do the following:
.' Use your Incense Burner |use Incense Burner##58147
.' Uncover a vision of the past |q 26320/1
step
'Go back through the dungeon portal out of the Deadmines dungeon
|confirm
step
goto Westfall,42.6,71.7
.' Follow the trail of homeless people to leave The Deadmines
|confirm
step
goto 30.5,85.6
.talk 392
..turnin 26371
..accept 26348
..accept 26347
..accept 26349
step
goto 32.8,82.6
.from Old Murk-Eye##391 |tip He's a gray murloc that walks along this beach, so you may need to search for him.
.get Scale of Old Murk-Eye |q 26349/1
..kill 7 Murloc Tidehunter |q 26348/1
..kill 7 Murloc Oracle |q 26348/2
.collect Captain Sanders' Treasure Map##1357 |n
.' Click Captain Sanders' Treasure Map in your bags |use Captain Sanders' Treasure Map##1357
..accept 26353
.' You can find more Murloc Tidehunters and Murloc Oracles at [28.9,73.9]
step
goto 25.9,47.8
.' Click the Captain's Footlocker |tip It's a rectangle wooden box half-buried in the sand.
..turnin 26353
..accept 26354
step
goto 40.5,47.8
.' Click the Broken Barrel |tip It looks like a busted barrel sitting on the ground.
..turnin 26354
..accept 26355
step
goto 40.2,45.8
.from Chasm Slime##42669+
.get 5 Chasm Ooze |q 26347/1
step
goto 40.6,17.0
.' Click the Old Jug |tip It looks like a blue bottle sitting on the ground next to a log and a wooden windmill.
..turnin 26355
..accept 26356
step
goto 26.0,16.9
.' Click the Locked Chest |tip It looks like a brown treasure chest sitting next to a small wooden shack on this tiny island.
..turnin 26356
step
goto 56.3,47.5
.talk 234
..turnin 26320
..accept 26322
step
goto 56.3,47.5
.' Watch the dialogue
.' Witness the Rise of the Brotherhood |q 26322/1
step
goto 30.5,85.6
.talk 392
..turnin 26348
..turnin 26347
..turnin 26349
step
goto 85.8,31.7
.talk 29611
..turnin 26322
..accept 26370
step
goto Westfall,56.4,49.6
.talk 234
..turnin 26370
..accept 26761 |only Human
step
goto 56.4,49.5
.talk 821
..accept 26365
only Human
step
goto Redridge Mountains,16.1,64.6
.' Click the Wanted Poster |tip It looks like a wooden sign with a tan scroll in it, next to the tower entrance.
..accept 26504
step
goto 15.6,65.3
.talk 379
..accept 26506
step
goto 15.3,64.6
.talk 464
..turnin 26365
..accept 26503
step
goto 17.4,65.1
.from Tarantula##442+
.get 4 Tarantula Eye |q 26506/1
.from Dire Condor##428+ |tip You can find them resting on rocks and flying around in the sky.
.get 4 Condor Giblet |q 26506/2
step
goto 16.2,55.3
.' Click the Gnoll Battle Plan |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Battle Plans |q 26503/1
step
goto 30.6,62.7
.' Click the Gnoll Strategy Guide |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Strategy Guide |q 26503/3
step
goto 31.0,63.2
.from Great Goretusk##547
.get 4 Goretusk Kidney##58893 |q 26506/3
step
goto 28.0,74.9
.' Click the Gnoll Orders |tip It's a small scroll laying flat on top of a small barrel, next to a small tent.
.get Gnoll Orders |q 26503/2
step
goto 28.3,73.2
.from Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
.kill 15 Redridge Gnoll |q 26504/1
step
goto 15.6,65.3
.talk 379
..turnin 26506
step
goto 15.3,64.6
.talk 464
..turnin 26504
..turnin 26503
..accept 26505
step
goto 29.4,53.8
.talk 931
.fpath Lakeshire
step
goto 28.7,41.0
.talk 900
..accept 26511
step
goto 28.9,41.1
.talk 344
..turnin 26505
..accept 26510
..turnin 26761 |only Human
step
goto 26.4,41.4
.talk 6727
.home Lakeshire
step
goto 22.1,42.7
.talk 342
..accept 26509
step
goto 17.2,45.0
.from Bellygrub##345
.get Bellygrub's Tusk |q 26509/1
step
goto 22.1,42.7
.talk 342
..turnin 26509
step
goto 28.4,48.9
.talk 8965
..accept 26508
step
goto 32.1,50.3
.' Click the Glinting Mud |tip It looks like a mound of dirt on the ground underwater.  It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
.get Nida's Necklace |q 26508/1
step
goto 37.8,42.1
.' Click the Gnomecorder |tip It looks like a metal control console with some levers and a tan scroll on it, on this tiny island.
.get Gnomecorder |q 26510/1
.from Murloc Scout##578+, Murloc Flesheater##422+
.kill 10 Lake Everstill Murloc |q 26511/1
step
goto 28.3,48.9
.talk 8962
..turnin 26508
step
goto 28.7,41.0
.talk 900
..turnin 26511
step
goto 28.9,41.1
.talk 344
..turnin 26510
..accept 26512
step
goto 31.9,44.9
.talk 382
..accept 26513
step
goto 32.3,39.5
.' Go to this spot
.' Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26512
..accept 26514
step
goto 30.8,38.4
.from Redridge Basher##446+, Redridge Alpha##445+, Redridge Mystic##430+
.get 10 Redridge Gnoll Collar |q 26514/1
.' More Redridge Gnolls can be found around [22.7,33.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26514
..accept 26544
.collect Dirt-Stained Scroll##58898 |n
.' Click the Dirt-Stained Scroll in your bags |use Dirt-Stained Scroll##58898
..accept 26519
.' Click Redridge Supply Crates |tip They look like tan wooden boxes on the ground around this area.
.get 8 Redridge Supply Crate |q 26513/1
.' You can find more crates around [36.5,27.7]
step
goto 21.0,27.3 |n
.' Enter the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 20.2,26.0
.from Blackrock Overseer##43185
.get Blackrock Orc Missive |q 26544/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26544
..accept 26545
step
goto 18.0,18.6
.kill Ardo Dirtpaw |q 26519/1 |tip Follow the path in the cave to the left.  He's at the very back of the cave on top of a rock platform.
step
goto 17.9,18.6
.' Click the Ettin Control Orb |tip It looks like a green glowing orb in a metal stand with 2 wings on it, next to Ardo Dirtpaw.
..turnin 26519
..accept 26520
step
goto 21.0,27.3 |n
.' Leave the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 24.1,32.2
.' Use your Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895 |tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
.' While controlling the Subdued Canyon Ettin, go to 31.5,44.3
.' Use your Ettin Control Orb to make the Ettin pick up the Huge Boulder |use Ettin Control Orb##58895
.' Save Foreman Oslow |q 26520/1
step
goto 31.9,44.9
.talk 382
..turnin 26513
step
goto 39.5,34.3 |n
.' The path to Yowler starts here |goto 39.5,34.3,0.5 |noway |c
step
goto 26.9,21.9
.kill Yowler |q 26545/1 |tip He is a level 16 elite, so you should be able to kill him easily.
.get Blackrock Invasion Plans |q 26545/2
step
goto 28.9,41.1
.talk 344
..turnin 26520
..turnin 26545
step
goto 28.9,40.9
.talk 43221
..accept 26567
step
goto 26.3,40.1
.talk 43184
..turnin 26567
..accept 26568
step
goto 28.6,40.7
.talk 43221
..turnin 26568
..accept 26571
..accept 26586
step
goto 29.7,44.5
.talk 43194
..accept 26569
step
goto 29.7,44.5
.talk 382
..accept 26570
step
goto 47.5,41.9
.talk 43270
..turnin 26586
..accept 26587
step
goto 50.4,39.9 |n
.' The path to the Blackrock Key Pouch starts here |goto 50.4,39.9,0.5 |noway |c
step
goto 49.2,38.0
.' Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs |tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
.' Click the Blackrock Key Pouch |tip It looks like a light brown bag hanging on the side of this small stump.
.get Messner's Cage Key |q 26587/1
step
goto 51.5,41.3
.from Murduck##43327
.get Keeshan's Bow |q 26571/1
.from Homurk##43329
.get Keeshan's Survival Knife |q 26571/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26571
..accept 26573
step
goto 47.5,41.9
.talk 43270
..turnin 26587
step
'Next to you:
.talk 43300
..accept 26560
step
goto 43.5,10.9
.from Utroka the Keymistress##43350
.get Jorgensen's Cage Key |q 26560/1
step
goto 38.0,16.2 |n
.' The path to Jorgensen starts here |goto 38.0,16.2,0.5 |noway |c
step
goto 33.6,11.8
.talk 43272
..turnin 26560
step
'Next to you:
.talk 43305
..accept 26561
step
goto 31.7,9.4 |n
.' Enter the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 26.0,10.5
.kill Ritualist Tarak |q 26561/1
step
goto 26.6,10.5
.' Click the Blackrock Coffer |tip It looks like a big gray metal chest sitting on the ground inside the cave.
.get Keeshan's Red Headband |q 26573/1
.get Keeshan's Jade Amulet |q 26573/2
step
goto 25.9,10.5
.talk 43274
..turnin 26561
step
'Next to you:
.talk 43303
..accept 26562
step
goto 27.7,18.1
.' Follow the path back and around inside the cave.
.kill Overlord Barbarius |q 26562/1
.get Blackrock Lever Key |q 26562/2
step
goto 27.8,17.9
.' Click the Chain Lever |tip It looks like a small lever on the ground with a tiny skull at the top of it.
.' Swim out to Danforth in middle of the pool of water at [28.3,17.0]
.talk 43275
..turnin 26562
step
'Next to you:
.talk 43302
..accept 26563
step
goto 31.7,9.4 |n
.' Leave the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 32.8,9.9
.from Blackrock Tracker##615+, Blackrock Summoner##4463+
.kill 25 Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1
.get 5 Blackrock Spyglass |q 26569/1
step
goto 28.7,40.7
.talk 43221
..turnin 26573
..turnin 26563
..accept 26607
step
goto 26.3,40.1
.talk 43184
..turnin 26607
..accept 26616
step
goto 29.6,44.5
.talk 43194
..turnin 26569
step
goto 29.7,44.5
.talk 382
..turnin 26570
step
goto 34.4,46.0
.' Click Keeshan's Riverboat |tip It looks like a small wooden boat with a few people sitting in it, next to the shore.
.' Complete Keeshan's Riverboat Ride |q 26616/1
step
goto 52.9,54.6
.talk 43371
.fpath Camp Everstill
step
goto 52.5,55.4
.talk 43458
..turnin 26616
..accept 26639
step
goto 52.5,55.6
.talk 43462
..accept 26638
step
goto 52.4,55.5
.talk 43459
..accept 26637
step
goto 52.4,55.4
.talk 43461
..accept 26636
step
goto 48.9,58.4
.from Muckdweller##43532+ |tip They are underwater and found throughout the entire lake.
..get 8 Muckdweller Gland |q 26637/1
step
goto Redridge Mountains,52.4,55.5
.talk 43459
..turnin 26637
step
goto 53.1,67.8
.talk 43508
..turnin 26639
..accept 26640
step
goto 49.8,66.8
.kill 8 Blackrock Hunter |q 26638/1
.' Click Piles of Leaves |tip They look like piles of orange leaves on the ground around this area.
.get 5 Pile of Leaves |q 26636/1
.' Click Fox Poop |tip They look like dark mounds on the ground around this area.
.get 5 Fox Poop |q 26636/2
step
goto 52.5,55.6
.talk 43462
..turnin 26638
step
goto 52.5,55.4
.talk 43458
..turnin 26640
step
goto 52.4,55.4
.talk 43461
..turnin 26636
step
goto 52.5,55.4
.talk 43458
..accept 26646
step
goto 53.9,57.7
.' Use your Bravo Company Field Kit |use Bravo Company Field Kit##60384
.' Activate your Bravo Company Field Kit |havebuff Interface\Icons\INV_Misc_EngGizmos_20 |q 26646
step
'Use the Camouflage ability on your hotbar
.' Hide your party from sight |havebuff Interface\Icons\Spell_Nature_ProtectionformNature |q 26646
step
goto 69.5,76.3
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click the Blackrock Key Pouch |tip It looks like a small tan bag hanging on the wall in the back of this small cave.
.collect Blackrock Holding Pen Key##59261 |q 26646
step
goto 69.3,59.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click a Blackrock Holding Pen |tip They look like 3 huge round cages.
.' Free the Prisoners of War |q 26646/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26646
..accept 26651
step
goto 66.4,71.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability in the small room at the top of the tower
.' Plant Seaforium at the Blackrock Tower |q 26651/2
step
goto 63.8,70.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability inside this hut, next to all the Blackrock Explosive Devices
.' Plant Seaforium at the Munitions Hut |q 26651/1
step
goto 72.7,64.4 |n
.' The path up to John J. Keeshan starts here |goto 72.7,64.4,0.5 |noway |c
step
goto 77.7,65.5
.talk 43611
..turnin 26651
step
map Stormwind City
'To continue gaining reputation with the Stormwind faction:
.' You can buy a Stormwind Tabard from Captain Lancy Revshon at [Stormwind City 67.7,72.8] |tip Wear the Stormwind Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\The Exodar\\Draenei",[[
description This guide will help you to get Exalted
description reputation with the Exodar faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Draenei.
|confirm
step
goto Azuremyst Isle,84.2,43.0
.talk 16475
..accept 9279
step
goto 80.4,45.9
.talk 16477
..turnin 9279
..accept 9280
step
goto 78.6,45.4
.from Vale Moth##16520+
.get 6 Vial of Moth Blood |q 9280/1
step
goto Azuremyst Isle,80.4,45.9
.talk 16477
..turnin 9280
..accept 9409
step
goto 80.1,48.8
.talk 16502
..turnin 9409
..accept 9283
step
goto 80.4,45.9
.talk 16477
..accept 9371
step
goto 79.1,46.5
.talk 16514
..turnin 9371
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..accept 10302
step
goto 78.4,43.5
.kill 8 Volatile Mutation |q 10302/1
step
goto 79.8,39.2
.' Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru |tip They are Draeneis that are laying on the ground around this area.  They spawn in random locations, so you may have to search for one.
.' Save a Draenei Survivor |q 9283/1
step
goto 79.1,46.5
.talk 16514
..turnin 10302
..accept 9293
step
goto 79.1,46.6
.talk 20233
..accept 9799
step
goto Azuremyst Isle,80.1,48.8
.talk 16502
..turnin 9283
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..accept 26966
.' Learn Spell: Seal of Righteousness |q 26966/3
.' Learn Spell: Judgement |q 26966/1
only Draenei Paladin
step
goto 79.9,46.3
.' Cast Seal of Righteousness, then use Judgement on the Training Dummy
.' Practice Judgement 1 time |q 26966/2
only Draenei Paladin
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..turnin 26966
only Draenei Paladin
step
goto 79.9,49.7
.talk 16499
..accept 26963
.' Learn Steady Shot |q 26963/2
only Draenei Hunter
step
goto 79.8,45.8
.' Use your Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 26963/1
only Draenei Hunter
step
goto 79.9,49.7
.talk 16499
..turnin 26963
only Draenei Hunter
step
goto 79.6,49.5
.talk 16503
..accept 26958
.' Learn Charge |q 26958/2
only Draenei Warrior
step
goto 79.7,45.9
.' Practice using Charge on the Target Dummy
.' Practice Charge 1 time |q 26958/1
only Draenei Warrior
step
goto 79.6,49.5
.talk 16503
..turnin 26958
only Draenei Warrior
step
goto 79.4,51.2
.talk 17071
..accept 9305
step
goto 79.5,51.6
.talk 16535
..accept 9303
step
goto Azuremyst Isle,74.9,50.4
.from Mutated Root Lasher##16517+
.get 10 Lasher Sample |q 9293/1
.' Click the Corrupted Flowers |tip The Corrupted Flowers are tall red flowers around this area.
.get 3 Corrupted Flower |q 9799/1
step
goto 79.1,46.6
.talk 20233
..turnin 9799
step
goto 79.1,46.5
.talk 16514
..turnin 9293
..accept 9294
step
goto Azuremyst Isle,77.3,58.7
.' Click the Irradiated Power Crystal |tip It's a huge purple crystal sitting in the lake.
.' Disperse the Neutralizing Agent |q 9294/1
step
goto Azuremyst Isle,78.4,60.4
.' Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
.' Inoculate 6 Nestlewood Owlkins |q 9303/1
step
goto Azuremyst Isle,84.7,65.6
.' Go through the tunnel into the small clearing
.' Click the Emitter Spare Parts |tip They look like purple crystal guns sitting on the ground.
.get 4 Emitter Spare Part |q 9305/1
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..turnin 9294
step
goto 79.4,51.2
.talk 17071
..turnin 9305
step
goto 79.5,51.6
.talk 16535
..turnin 9303
..accept 9309
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 9309
..accept 10303
step
goto Azuremyst Isle,71.3,60.7
.kill 10 Blood Elf Scout |q 10303/1
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 10303
..accept 9311
step
goto Azuremyst Isle,69.3,65.7
.kill Surveyor Candress |q 9311/1
.collect Blood Elf Plans##24414 |n
.' Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
..accept 9798
step
goto 79.5,51.6
.talk 16535
..turnin 9311
..turnin 9798
..accept 9312
step
goto 79.4,51.2
.talk 17071
..turnin 9312
..accept 9313
step
goto 68.3,53.9 |n
.' The path through the mountains starts here |goto 68.3,53.9,0.5 |noway |c
step
goto Azuremyst Isle,64.5,54
.talk 16554
..accept 9314
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..accept 9452
step
goto Azuremyst Isle,61.9,51.6
.' Use your Draenei Fishing Net next to Schools of Red Snapper |use Draenei Fishing Net##23654 |tip They look like little round schools of fish in the water.
.get 10 Red Snapper |q 9452/1
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..turnin 9452
..accept 9453
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9453
..accept 9454
step
goto Azuremyst Isle,48.4,51.8
.talk 17214
..accept 9463
step
goto Azuremyst Isle,48.7,50.3
.talk 16551
..turnin 9313
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9314
.home Azure Watch
step
goto 49.7,49.1
.talk 43991
.fpath Azure Watch
step
goto Azuremyst Isle,50.3,56.6
.from Moongraze Stag##17200+
.get 6 Moongraze Stag Tenderloin|q 9454/1
.from Root Trapper##17196+
.get 8 Root Trapper Vine|q 9463/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..accept 9506
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..accept 9512
step
goto Azuremyst Isle,47.6,73
.from Skittering Crawler##17216+
.get 6 Skittering Crawler Meat|q 9512/1
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..turnin 9512
step
goto Azuremyst Isle,47,70.2
.talk 17241
..accept 9513
step
goto Azuremyst Isle,47.2,70
.talk 17242
..accept 9523
step
goto Azuremyst Isle,58.6,66.4
.' Click the Nautical Map |tip It's sitting on a box under a green canopy.
.get Nautical Map##23739 |q 9506/2
step
goto Azuremyst Isle,59.6,67.6
.' Click the Nautical Compass |tip It's sitting on a box under the blue canopy with a green stripe on it
.get Nautical Compass##23738 |q 9506/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9506
..accept 9530
step
goto Azuremyst Isle,45.9,65.7
.' Click a Hollowed Out Tree |tip They look like tall, skinny tree stumps around this area.
.get Hollowed Out Tree |q 9530/1
.' Click Piles of Leaves |tip They look like small piles of purple leaves on the ground around this area.
.get 5 Pile of Leaves |q 9530/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9530
..accept 9531
step
goto Azuremyst Isle,36.1,77
.' Click Ancient Relics |tip They look like white glowing orbs on small stands around this area.
.get 8 Ancient Relic |q 9523/1
.kill 5 Wrathscale Myrmidon |q 9513/1
.kill 5 Wrathscale Naga |q 9513/2
.kill 5 Wrathscale Siren |q 9513/3
.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
.collect Rune Covered Tablet##23759 |n
.' Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
..accept 9514
step
goto Azuremyst Isle,18.5,84.3
.' Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |tip It's a red flag on a metal pole on the beach.
.' Watch the conversation
.' Uncover the Traitor |q 9531/1
step
goto 48.4,51.8
.talk 17214
..turnin 9463
step
goto 48.4,51.5
.talk 17215
..accept 9473
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9454
..accept 10324
step
goto Azuremyst Isle,50.6,46.2
.from Moongraze Buck##17201+
.get 6 Moongraze Buck Hide |q 10324/1
.from Infected Nightstalker Runt##17202+
.collect Faintly Glowing Crystal##23678 |n
.' Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
..accept 9455
step
goto Azuremyst Isle,50.4,37.1
.' Click Azure Snapdragons |tip They are tall flowers with big bulbs that puff smoke at the base of trees.
.get 5 Azure Snapdragon Bulb |q 9473/1
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 10324
step
goto Azuremyst Isle,48.4,51.8
.talk 17215
..turnin 9473
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9455
..accept 9456
step
goto Azuremyst Isle,49,51.1
.talk 17488
..accept 10428
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..accept 9603
step
goto 49.7,49.1
.talk 43991
..turnin 9603
..accept 9604
step
goto 57.0,50.1
.talk 16768
..turnin 9604
..accept 9605
step
goto 54.5,36.3
.talk 17555
..turnin 9605
..accept 9606
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9606
step
goto Azuremyst Isle,45.7,43.9
.kill 8 Infected Nightstalker Runt|q 9456/1
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9456
step
goto 47.0,70.2
.talk 17240
..turnin 9531
..accept 9537
step
goto 47.1,70.3
.talk 17241
..turnin 9513
..turnin 9514
step
goto Azuremyst Isle,47.2,70
.talk 17242
..turnin 9523
step
goto 47.1,70.3
.talk 17241
..accept 9515
step
goto Azuremyst Isle,48.2,72.5
.talk 17243
..' Tell him it's over
.from Engineer "Spark" Overgrind##17243
.get Traitor's Communication |q 9537/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9537
..accept 9602
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9602
step
goto Azuremyst Isle,49.40,51.0
.talk 17232
..accept 9538
.' Click the Stillpine Furbolg Language Primer in your bags |use Stillpine Furbolg Language Primer##23818
.' Read the Stillpine Furbolg Language Primer |q 9538/1
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..turnin 9538
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..accept 9539
step
goto 55.2,41.7
.' Follow the ghost furbolg as he runs up the hill
.' Click the Totem of Coo
..turnin 9539
..accept 9540
step
goto 55.6,41.6
.' Follow the ghost furbolg to the edge of the cliff
.' He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540
step
goto Azuremyst Isle,64.5,39.8
.' Click the Totem of Tikti
..turnin 9540
..accept 9541
step
goto 63.8,40.2
.' Follow the ghost furbolg to the river
.' He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541
step
goto Azuremyst Isle,63,67.9
.' Click the Totem of Yor underwater
..turnin 9541
..accept 9542
step
goto 61.0,69.5
.' Follow the ghost furbolg out of the water
.' He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542
step
goto Azuremyst Isle,28.1,62.4
.' Follow the panther as he runs
.' Click the Totem of Vark
..turnin 9542
..accept 9544
step
goto Azuremyst Isle,28.5,66.4
.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
.collect Bristlelimb Key##23801 |n
.' Click Bristlelimb Cages |tip They look like yellow cages around this area.
.' Free 8 Stillpine Captives |q 9544/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Enter the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,25.2,74.2
.' Follow the path to the bottom of the cave
.kill Warlord Sriss'tiz |q 9515/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Leave the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 10428
..accept 9527
step
goto Azuremyst Isle,14.8,92
.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
.get Remains of Cowlen's Family |q 9527/1
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 9527
step
goto Azuremyst Isle,49.41,51.0
.talk 17114
..turnin 9544
..accept 9559
step
goto Azuremyst Isle,47,70.2
.talk 17241
..turnin 9515
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..accept 9562
step
goto 44.8,23.9
.talk 17442
..accept 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9559
step
goto 53.1,20.8
.from Ravager Specimen##17199+
.get 8 Ravager Hide |q 9560/1
step
goto Azuremyst Isle,33.8,25.7
.' Follow the road around
.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
.' Click Stillpine Grain |tip They look like bags near the murloc huts along the beach.
.get 5 Stillpine Grain |q 9562/1
.from Murgurgala##17475
.collect Gurf's Dignity##23850 |n
.' Click Gurf's Dignity in your bags |use Gurf's Dignity##23850
..accept 9564
step
goto 34.0,26.5
.from Blood Elf Bandit##17591+
..collect Blood Elf Communication##23910
.' Click the Blood Elf Communication in your bags |use Blood Elf Communication##23910
..accept 9616
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..turnin 9562
..turnin 9564
step
goto 44.8,23.9
.talk 17442
..turnin 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9565
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..accept 9573
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,47.4,14.1
.' Go to the upper level of the cave
.kill Chieftain Oomooroo |q 9573/1
step
goto Azuremyst Isle,50.5,11.5
.' Click the Blood Crystal |tip It's a huge red crystal on a little dirt island in the water.
..turnin 9565
..accept 9566
step
goto Azuremyst Isle,47.4,16.0
.kill 9 Crazed Wildkin |q 9573/2
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9566
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..turnin 9573
step
goto 47.0,22.3
.talk 17443
..accept 9570
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 49.9,13.0
.from The Kurken##17447
..get The Kurken's Hide |q 9570/1
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 47.0,22.3
.talk 17443
..turnin 9570
..accept 9571
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9622
..turnin 9616
step
goto Azuremyst Isle,44.8,23.9
.talk 17442
..turnin 9571
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9622
..accept 9623
step
goto Azuremyst Isle,35.1,43.4
.' Follow the ramp up and outside The Exodar
.talk 17584
..turnin 9623
..accept 9625
step
goto Bloodmyst Isle,63.0,87.9
.talk 17586
..turnin 9625
..accept 9634
step
goto 63.0,87.5
.talk 17649
..accept 9663
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
.' Warn High Chief Stillpine |q 9663/1
step
goto 47.1,50.6
.talk 17116
.' Warn Exarch Menelaous |q 9663/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
.' Warn Admiral Odesyus |q 9663/3
step
goto Bloodmyst Isle,63.0,87.5
.talk 17649
..turnin 9663
..accept 9666
step
goto 63.4,88.8
.talk 17599
..accept 9624
step
goto 57.4,89.8
.kill 10 Bloodmyst Hatchling |q 9634/1
.' Click Sand Pears |tip They look like light brown pears at the base of trees around this area.
.get 10 Sand Pear |q 9624/1
step
goto 63.0,87.9
.talk 17586
..turnin 9634
step
goto 63.4,88.8
.talk 17599
..turnin 9624
step
goto 68.3,81.1
.talk 17682
..accept 9667
step
goto 64.5,77.7
.' Kill furbolgs in this camp until High Chief Bristlelimb appears
.from High Chief Bristlelimb##17702
.collect The High Chief's Key##24099 |q 9667
step
goto 68.8,68.1
.kill Lord Xiz |q 9666/2
.' Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
.' Declare your Power |q 9666/1
step
goto 68.2,81.1
.' Click Princess Stillpine's Cage
.' Save Princess Stillpine |q 9667/1
step
goto 63.0,87.5
.talk 17649
..turnin 9666
..accept 9668
step
goto 55.2,56.0
.talk 18803
..turnin 9667
step
goto 55.2,59.1
.' Click the Wanted Poster
..accept 9646
step
goto 55.9,59.8
.talk 17553
.home Blood Watch
step
goto 53.3,57.8
.talk 17434
..accept 9629
step
goto 56.4,56.8
.talk 17663
..accept 9648
step
goto 57.7,53.9
.talk 17554
.fpath Bloodmyst Isle
step
goto 52.7,53.2
.talk 17658
..turnin 9668
..accept 9693
step
goto 52.6,53.2
.talk 17423
..accept 9581
step
goto 55.4,55.3
.talk 17684
..turnin 9693
..accept 9694
step
goto 62.3,53.0
.' Click a Blood Mushroom |tip They can be found at the base of trees in this area.
.get Blood Mushroom |q 9648/2
step
goto 59.7,71.0
.from Stinkhorn Striker##17673
.get Aquatic Stinkhorn |q 9648/1
step
goto 60.7,42.0
.' Click a Ruinous Polyspore
.get Ruinous Polyspore |q 9648/3
step
goto 58.1,83.3
.' Use the Crystal Mining Pick on Impact Site Crystal|use Crystal Mining Pick##23875
.get Impact Site Crystal Sample##23878 |q 9581/1
step
goto 47.8,94.4
.' Use the Murloc Tagger on Blacksilt Scout|use Murloc Tagger##23995
.' Tag 6 Blacksilt Scouts |q 9629/1
step
goto 44.4,82.4
.' Click a Fel Cone Fungus
.get Fel Cone Fungus |q 9648/4
step
goto 53.3,57.8
.talk 17434
..turnin 9629
..accept 9574
step
goto 56.4,56.8
.talk 17663
..turnin 9648
step
goto 52.6,53.2
.talk 17423
..turnin 9581
..accept 9620
step
goto 55.4,55.3
.talk 17684
..accept 9641
step
goto 55.1,58.0
.talk 17433
..accept 9567
step
goto 49.5,47.4
.kill 10 Sunhawk Spy |q 9694/1
step
goto 55.4,55.3
.talk 17684
..turnin 9694
step
goto 61.3,48.4
.' Click the Draenei Cartographer lying on the ground
..turnin 9620
..accept 9628
step
goto 61.6,43.6
.from Wrathscale Marauder##17334, Wrathscale Sorceress##17336
.get Survey Data Crystal |q 9628/1
step
goto 36.4,74.6
.from Corrupted Treant##17352
.get 6 Crystallized Bark |q 9574/1
step
goto 36.5,71.5
.' Click the Nazzivus Monument Glyphs
.get Nazzivus Monument Glyph##23859 |q 9567/1
.from Tzerak##17528
.collect Tzerak's Armor Plate##23900 |n
..accept 9594
step
goto 37.7,76.7
.kill 8 Nazzivus Satyr |q 9594/1
.kill 8 Nazzivus Felsworn |q 9594/2
.get 10 Irradiated Crystal Shard |q 9641/1
step
goto 55.1,58.0
.talk 17433
..turnin 9594
..turnin 9567
..accept 9569
step
goto 53.2,57.8
.talk 17434
..turnin 9629
..turnin 9574
step
goto 55.9,57.0
.talk 17642
..accept 9643
..accept 9580
step
goto 55.4,55.3
.talk 17684
..turnin 9641
..accept 9779
step
goto 56.3,54.2
.talk 18804
..accept 10063
step
goto 52.6,53.2
.talk 17423
..turnin 9628
..accept 9584
step
goto 48.8,45.9
.from Sunhawk Spy##17604+
.get Sunhawk Missive##24399 |q 9779/1
step
goto 45.7,47.7
.' Use the Crystal Mining Pick on Altered Bloodmyst Crystal|use Crystal Mining Pick##23876
.get Altered Crystal Sample##23879 |q 9584/1
step
goto 46.6,35.2
.from Elder Brown Bear##17348
.get 8 Elder Brown Bear Flank |q 9580/1
.from Mutated Constrictor##17344
.get 6 Thorny Constrictor Vine |q 9643/1
.' More can be found at [46.6,35.2]
step
goto 55.4,55.3
.talk 17684
..turnin 9779
..accept 9696
step
goto 55.9,57.0
.talk 17642
..turnin 9643
..turnin 9580
..accept 9647
step
goto 54.4,54.5
.talk 17825
..turnin 9696
..accept 9698
step
goto 52.6,53.2
.talk 17423
..turnin 9584
..accept 9585
step
goto 44.5,50.4
.kill 10 Royal Blue Flutterer |q 9647/1
.' More can be found:
.' Around [47.3,32.2]
.' Around [44.6,38.0]
.' Around [44.9,56.0]
step
goto 42.1,21.2
.talk 17421
..turnin 10063
..accept 9548
..accept 9549
step
goto 40.4,20.1
.collect Clopper's Equipment##23830
.' Copper's Equipment spawns around the murloc buildings.
step
goto 38.7,21.2
.from Blacksilt Seer##17330+
.get 3 Crude Murloc Idol |q 9549/1
.from Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+,
.get 6 Crude Murloc Knife |q 9549/2
step
goto 37.1,30.3
.from Deathclaw##17661
.get Deathclaw's Paw##24025 |q 9646/1
step
goto 42.1,21.2
.talk 17421
..turnin 9548
..turnin 9549
.' Click the Weathered Teasure Map|use Weathered Treasure Map##23837
..accept 9550
step
goto 38.2,37.4
.kill 5 Axxarien Shadowstalker |q 9569/2
.kill 5 Axxarien Helcaller |q 9569/3
.' Click the Corrupted Crystals around Axxarien
.get 5 Corrupted Crystal |q 9569/4
step
goto 41.9,29.5
.kill Zevrax##17494 |q 9569/1
step
goto 41.3,30.9
'Use the Crystal Mining Pick on the Axxarien Crystal|use Crystal Mining Pick##23877
.get Axxarien Crystal Sample##23880 |q 9585/1
step
goto 61.2,41.9
.' Click Battered Ancient Book
..turnin 9550
..accept 9557
step
goto 54.7,53.9
.talk 17424
..turnin 9557
..accept 9561
step
goto 52.6,53.2
.talk 17423
..turnin 9646
..turnin 9585
step
goto 56.4,56.8
.talk 17663
..accept 9649
step
goto 55.9,57.0
.talk 17642
..turnin 9647
step
goto 56.0,56.5
.talk 17703 |tip He patrols around camp.
..accept 9671 |instant
step
goto 55.1,58.0
.talk 17433
..turnin 9569
step
goto 55.2,59.2
'Go to your mailbox and retrieve the letter from Admiral Odesyus
.collect A Letter from the Admiral##24132 |n
'Click the Leter from the Admiral in your bags |use A Letter from the Admiral##24132
..accept 9672
step
goto 53.3,57.7
.talk 17434
..accept 9578
step
goto 61.1,49.7
'Click the Mound of Dirt
..turnin 9561
step
goto 74.2,33.5
.talk 17674
.' He Patrols along the bottom of the island
..accept 9687
step
goto 56.8,34.0
'Click the Dragon Bones around Ragefeather Ridge
.get 8 Dragon Bone |q 9687/1
step
goto 74.2,33.5
.talk 17674
..turnin 9687
..accept 9688
step
goto 75.4,29.6
.kill 5 Veridian Whelp |q 9688/1
.kill 5 Veridian Broodling |q 9688/2
step
goto 74.2,33.5
.talk 17674
..turnin 9688
step
goto 75.7,28.5
'Click Ysera's Tears around Wyrmscar Island
.get 2 Ysera's Tear##24049 |q 9649/1
step
goto 79.2,22.6
.talk 17712
..turnin 9672
..accept 9674
step
goto 82.4,26.2
.kill 10 Bloodcursed Naga |q 9674/1
step
goto 79.1,22.6
.talk 17712
..turnin 9674
..accept 9682
step
goto 85.7,14.3
.from Bloodcursed Voyager##17714
.get 4 Bloodcursed Soul |q 9682/1
step
goto 79.1,22.6
.talk 17712
..turnin 9682
..accept 9683
step
goto 85.9,54.3
'Click the Statue of Queen Azshara
.kill Atoph the Bloodcursed |q 9683/1
step
goto 79.1,22.6
.talk 17712
..turnin 9683
step
goto 56.4,56.8
.talk 17663
..turnin 9649
step
goto 37.5,61.2
'Click Galaen's Corpse
..turnin 9578
..accept 9579
'Click Galaen's Journal
..accept 9706
step
goto 39.6,58.9
.from Sunhawk Reclaimer##17606
.get Galaen's Amulet |q 9579/1
.' The Reclaimers spawn all around the Cryo-Core
step
goto 53.3,57.7
.talk 17434
..turnin 9579
step
goto 53.3,57.0
.talk 17676
..accept 9669
step
goto 52.6,53.2
.talk 17423
..accept 10064
step
goto 55.6,55.2
.talk 17843
..turnin 9706
step
goto 30.8,46.9
.talk 17986
..accept 10067
..accept 10066
step
goto 30.2,45.9
.talk 17927
..turnin 10064
..accept 10065
step
goto 30.3,45.9
.talk 17926
..accept 9741
step
goto 31.5,55.8
.kill 8 Mutated Tangler##17346 |q 10066/1
.kill 10 Enraged Ravager##17527 |q 10065/1
.' There are more around [31.4,61.7]
step
goto 20.4,63.3
.kill 12 Void Critter |q 9741/1
step
goto 55.5,55.4
.talk 17844
..turnin 9741
step
goto 30.8,46.9
.talk 17986
..turnin 10066
step
goto 30.3,45.9
.talk 17927
..turnin 10065
step
goto 30.7,40.3
.kill 6 Fouled Water Spirit##17358+ |q 10067/1
step
goto 30.8,46.9
.talk 17986
..turnin 10067
step
goto 24.9,34.4
.talk 17686
..accept 9670
step
goto 18.1,36.2
.kill 8 Myst Leecher |q 9669/1
.kill 8 Myst Spinner |q 9669/2
.kill Zarakh |q 9669/3
..goal 5 Expedition Researcher Freed |q 9670/1
.' There will be webbed creatures along the mountainside.
step
goto Bloodmyst Isle,24.9,34.4
.talk 17686
..turnin 9670
step
goto 53.2,57.0
.talk 17676
..turnin 9669
step
goto 54.6,53.9
.talk 17424
..accept 9632
step
goto 32.9,54.4
.talk 17468
..turnin 9698
..accept 9699
step
goto Azuremyst Isle 24.2,54.3
.talk 17614
..turnin 9632
step
map The Exodar
'To continue gaining reputation with the Exodar faction:
.' You can buy an Exodar Tabard from Kadu at [The Exodar 69.6,61.7] |tip Wear the Exodar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Darnassus\\Night Elf",[[
description This guide will help you to get Exalted
description reputation with the Darnassus faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Teldrassil,58.0,39.2
.talk 2079
..accept 28713
step
goto 57.9,40.7
.kill 6 Young Nightsaber |q 28713/1
step
goto 58.0,39.2
.talk 2079
..turnin 28713
..accept 28714
step
goto 58.0,38.8
.talk 2077
..accept 28715
step
goto 55.8,40.1
.from Grell##1988+
.get 6 Fel Moss |q 28714/1
.' Click Melithar's Stolen Bags |tip They look like tan sacks sitting on the ground around this area.
.get 5 Melithar's Stolen Bags |q 28715/1
.' You can find more around [54.6,38.7]
step
goto 58.1,39.0
.talk 2079
..turnin 28714
..accept 28734
step
goto 58.0,38.8
.talk 2077
..turnin 28734
..turnin 28715
..accept 26841 |only NightElf Mage
..accept 3116 |only NightElf Warrior
..accept 3117 |only NightElf Hunter
..accept 3118 |only NightElf Rogue
..accept 3119 |only NightElf Priest
..accept 3120 |only NightElf Druid
step
goto 58.4,35.5
.talk 43006
..turnin 26841
..accept 26940
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
.' Learn Arcane Missiles |q 26940/2
only NightElf Mage
step
goto 58.4,35.4
.' Use Arcane Missiles on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26940/1
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
..turnin 26940
..accept 28723
only NightElf Mage
step
goto Teldrassil,58.9,33.7
.talk 3593
..turnin 3116
..accept 26945
only NightElf Warrior
step
goto Teldrassil,58.9,33.7
.talk 3593
.' Learn Charge |q 26945/2
only NightElf Warrior
step
goto 58.5,35.2
.' Use Charge on the Training Dummy
.' Practice Charge 1 time |q 26945/1
only NightElf Warrior
step
goto 58.9,33.7
.talk 3593
..turnin 26945
..accept 28723
only NightElf Warrior
step
goto 58.9,35.7
.talk 3596
..turnin 3117
..accept 26947
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
.' Learn Steady Shot |q 26947/2
only NightElf Hunter
step
goto 58.4,35.1
.' Use Steady Shot on the Training Dummies
.' Practice Steady Shot 5 times |q 26947/1
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
..turnin 26947
..accept 28723
only NightElf Hunter
step
goto Teldrassil,58.9,33.9
.talk 3594
..turnin 3118
..accept 26946
only NightElf Rogue
step
goto Teldrassil,58.9,33.9
.talk 3594
.' Learn Eviscerate |q 26946/2
only NightElf Rogue
step
goto 58.4,35.5
.' Use Eviscerate on the Training Dummy
.' Practice Eviscerate 3 times |q 26946/1
only NightElf Rogue
step
goto 58.9,33.9
.talk 3594
..turnin 26946
..accept 28723
only NightElf Rogue
step
goto 58.5,35.5
.talk 3595
..turnin 3119
..accept 26949
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
.' Learn Flash Heal |q 26949/2
only NightElf Priest
step
goto 58.5,35.4
.' Use Flash Heal on Wounded Sentinels
.' Practice Flash Heal 5 times |q 26949/1
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
..turnin 26949
..accept 28723
only NightElf Priest
step
goto Teldrassil,58.2,34.8
.talk 3597
..turnin 3120
..accept 26948
only NightElf Druid
step
goto Teldrassil,58.2,34.8
.talk 3597
.' Learn Healing Touch |q 26948/2
only NightElf Druid
step
goto 58.7,36.5
.' Use Healing Touch on Wounded Sentinels
.' Practice Healing Touch 5 times |q 26948/1
only NightElf Druid
step
goto 58.2,34.8
.talk 44617
..turnin 26948
..accept 28723
only NightElf Druid
step
goto 57.2,33.3
.talk 49479
..turnin 28723
..accept 28724
step
goto 56.6,33.8
.' Click Moonpetal Lilies |tip They look like pink flowers along the edge of the ponds around this area.
.get 7 Moonpetal Lily |q 28724/1
step
goto 57.2,33.3
.talk 49479
..turnin 28724
..accept 28725
step
goto 56.3,28.1
.from Webwood Spider##1986 |tip Killing a spider will make Tarindrella appear.
.talk 49480
..turnin 28725
..accept 28726
step
goto 56.5,24.4
.kill 12 Webwood Spider |q 28726/1
step
'Next to you:
.talk 49480
..turnin 28726
..accept 28727
step
goto 56.3,23.1
.kill Githyiss the Vile |q 28727/1
step
'Next to you:
.talk 49480
..turnin 28727
..accept 28728
step
goto 57.2,33.3
.talk 49479
..turnin 28728
..accept 28729
step
goto 59.1,29.1
.' Use your Crystal Phial while standing in the water |use Crystal Phial##5185
.get Filled Crystal Phial |q 28729/1
step
goto 57.2,33.3
.talk 49479
..turnin 28729
..accept 28730
step
goto 57.1,36.5 |n
.' Follow the ramp up |goto 57.1,36.5,0.5 |noway |c
step
goto 58.4,34.6
.talk 3514
..turnin 28730
..accept 28731
step
goto 60.2,41.7
.talk 6780
..accept 2159
step
goto 59.4,49.2
.talk 2150
..accept 488
step
goto 60.5,52.5
.from Nightsaber##2042+
.get 2 Nightsaber Fang |q 488/1
.from Strigid Owl##1995+
.get 2 Strigid Owl Feather |q 488/2
.from Webwood Lurker##1998+
.get 2 Webwood Spider Silk |q 488/3
.' There are more around [57.7,52.5]
step
goto 59.5,49.2
.talk 2150
..turnin 488
step
goto 55.8,50.4
.talk 2083
..accept 489
step
goto 55.5,50.4
.talk 40553
.fpath Dolanaar
step
goto 55.5,50.0
.talk 3567
..accept 2438
step
goto 55.7,52.0
.talk 2078
..accept 475
step
goto 55.4,52.2
.talk 6736
..turnin 2159
step
goto 55.4,52.2
.talk 6736
.home Dolanaar
step
goto 55.8,53.9
.talk 3515
..turnin 28731
..accept 929
step
goto 53.9,57.0
.' Click Fel Cones |tip They look like brown pine cones with green smoke coming out of them on the ground around this area.
.get 3 Fel Cone |q 489/1
step
goto 59.5,49.2
.talk 2150
..turnin 489
step
goto 62.1,50.8
.' Use your Jade Phial while standing in the water |use Jade Phial##5619
.get Filled Jade Phial |q 929/1
step
goto 64.6,51.2
.' Go upstairs in the house
.talk 2107
..turnin 475
..accept 476
step
goto 66.1,52.1
.' Click Tallonkai's Dresser |tip It's a wooden piece of furniture with 2 doors on it inside this small house.
.get Emerald Dreamcatcher |q 2438/1
step
goto Teldrassil 55.7,52.0
.talk 2078
..turnin 476
..accept 483
step
goto Teldrassil,55.6,52.0
.talk 2081
..accept 13945
step
goto 55.8,53.9
.talk 3515
..turnin 929
step
goto 55.8,50.4
.talk 2083
..accept 13946
step
goto 55.5,50.0
.talk 3567
..turnin 2438
..accept 2459
..accept 932
step
goto 66.9,46.6
.from Ferocitas the Dream Eater##7234
.get Tallonkai's Jewel |q 2459/2
.kill 7 Gnarlpine Mystic |q 2459/1
step
goto 55.5,50.0
.talk 3567
..turnin 2459
step
goto 53.6,47.2 |n
.' Follow this small path to the cave |goto 53.6,47.2,0.5 |noway |c
step
goto 54.5,46.0 |n
.' Enter the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 52.9,43.9
.' Take the path to the right side of the cave
.' Use your Ireroot Seeds on Shadow Sprites |use Ireroot Seeds##46716
.' Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1
.from Lord Melenas##2038
.get Melenas' Head |q 932/1
step
goto 54.5,46.0 |n
.' Leave the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 55.8,50.5
.talk 2083
..turnin 13946
step
goto 55.5,50.0
.talk 3567
..turnin 932
step
goto 45.6,50.6 |n
.' Enter the Den |goto Teldrassil,45.6,50.6 |noway |c
step
goto 45.0,53.5
.talk 7317
..accept 2541
step
'Next to you:
.talk 34249
..' Ask her where the Rune of Nesting is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of Nesting |tip It's a small gray chest.
.get Rune of Nesting |q 483/4
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Black Feather Quill is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Black Feather |tip It's a small gray chest.
.get Black Feather Quill |q 483/2
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Sapphire of Sky is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Sky |tip It's a small gray chest.
.get Sapphire of Sky |q 483/3
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Raven Claw Talisman is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Raven Claw |tip It's a small gray chest.
.get Raven Claw Talisman |q 483/1
.from Gnarlpine Shaman##2009+
.get Shaman Voodoo Charm |q 2541/1
step
'Next to you:
.talk 34249
..' Ask her where the exit is |tip You can ask her as many times as you need.
.' Follow the green mist until you see an area with 2 bridges |tip Don't actually leave the cave.
.talk 7317
..turnin 2541
..accept 2561
step
goto 45.7,52.8
.from Rageclaw##7318 |tip He's through the doors in the room immediately next to you and Oben Rageclaw.  Just walk up to the door, even though it is locked, it will automatically open for you.
.' Use your Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
.' Release Oben Rageclaw's Spirit |q 2561/1
step
goto 45.0,53.5
.talk 7317
..turnin 2561
step
'Inside of the Den:
.from Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+,
.kill 20 Ban'ethil Gnarlpine |q 13945/1
step
goto Teldrassil 55.7,52.0
.talk 2078
..turnin 483
..accept 486
step
goto 55.6,52.0
.talk 2081
..turnin 13945
step
goto 56.7,53.5
.talk 4265
..accept 6344
step
goto 55.5,50.4
.talk 40553
..turnin 6344
..accept 6341
step
goto Darnassus,36.1,53.5
.talk 7316
..turnin 6341
..accept 6342
step
goto 36.6,47.9
.talk 40552
..turnin 6342
..accept 6343
step
goto Teldrassil,56.7,53.5
.talk 4265
..turnin 6343
step
goto 49.4,44.7
.talk 2151
..accept 487
step
goto 49.4,43.2 |n
.' Follow the path up |goto 49.4,43.2,0.5 |noway |c
step
goto 51.7,39.4
.' Take the first path to the right that you come to
.kill Ursal the Mauler |q 486/1
.kill 8 Gnarlpine Ambusher |q 487/1
step
goto 49.4,44.6
.talk 2151
..turnin 487
step
goto 55.7,52.0
.talk 2078
..turnin 486
step
goto 55.8,50.5
.talk 2083
..accept 997
step
goto 60.0,59.8
.talk 2080
..turnin 997
..accept 918
..accept 919
step
goto 57.6,62.9
.' Click the Strange Fruited Plant |tip It's a big pink-glowing plants.
..accept 930
step
goto 59.7,60.4
.from Timberling##2022+
.get 6 Timberling Seed |q 918/1
.' Click Timberling Sprouts |tip They look like green plant bulbs sitting on the ground around this area.
.get 10 Timberling Sprout |q 919/1
step
goto 59.9,59.8
.talk 2080
..turnin 918
..accept 922
..turnin 919
..turnin 930
step
goto 55.8,53.9
.talk 3515
..accept 7383
step
goto 44.0,44.2
.talk 3517
..turnin 922
..accept 923
step
goto 43.6,37.4
.' Follow the river north
.from Timberling Trampler##+, Timberling Mire Beast##+ |tip Follow the water north.
.get 5 Mossy Tumor |q 923/1
step
goto 40.5,29.9
.' Use your Amethyst Phial while standing in the water|use Amethyst Phial##18152
.get Filled Amerthyst Phial |q 7383/1
step
goto 39.5,29.9
.talk 3519
..accept 937
step
goto 39.2,29.8
.talk 7313
..accept 2518
step
goto 37.3,25.5
.' Click the Strange Fronded Plant |tip It's a big pink-glowing plants.
..accept 931
step
goto 40.7,22.1
.from Lady Sathrah##7319
.get Silvery Spinnerets |q 2518/1
step
goto 37.2,29.9
.from Bloodfeather Fury##2019+, Bloodfeather Matriarch##2021+, Bloodfeather Wind Witch##2020+
.get 6 Bloodfeather Belt |q 937/1
step
goto 39.3,29.7
.talk 7313
..turnin 2518
step
goto 39.5,29.9
.talk 3519
..turnin 937
step
goto 40.9,45.7
.talk 3515
..turnin 7383
..accept 933
step
goto 43.9,44.2
.talk 2080
..turnin 931
step
goto 44.0,44.2
.talk 3517
..turnin 923
step
goto 43.9,44.2
.talk 2080
..accept 2499
step
goto 43.9,44.1
.' Click a Sprouted Frond |tip They are 3 bushes in a long wooden planter.
..accept 2399 |instant
step
goto 43.9,58.5
.' Use your Tourmaline Phial while standing in the water |use Tourmaline Phial##5621
.get Filled Tourmaline Phial |q 933/1
step
goto 42.5,58.2
.talk 1992
..turnin 933
..accept 14005
step
goto 40.7,69.3
.' Use the abilities on your hotbar to fight Bough of Corruption
.kill Bough of Corruption |q 14005/1
step
goto 42.5,58.2
.talk 1992
..turnin 14005
..accept 935
step
goto 41.0,45.6
.talk 3515
..turnin 935
..accept 14039
step
goto 47.4,35.2
.from Oakenscowl##2166 |tip He's a red and green elemental that walks around this area.
.get Gargantuan Tumor |q 2499/1
step
goto 43.9,44.2
.talk 2080
..turnin 2499
step
goto Darnassus,45.0,49.9
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28490
only Draenei,Dwarf,Gnome Human
step
goto 43.9,76.1
.talk 42936
..accept 26383
only NightElf
step
goto 48.2,14.7
.talk 48736
..accept 26385
only Worgen
step
goto 43.0,78.1
.talk 7999
..turnin 14039
step
goto 36.9,50.5 |n
.' Go inside the pink portal |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.fpath Rut'theran Village
step
goto Darkshore,51.8,18.0
.talk 32973
..turnin 28490 |only Draenei,Dwarf,Gnome Human
..turnin 26383 |only NightElf
..turnin 26385 |only Worgen
..accept 13518
step
goto 51.0,18.6
.talk 43420
.home Lor'danel
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13522
step
goto 45.0,18.2
.talk 33094
.' Rescue Volcor |q 13518/4
step
goto 44.1,17.8
.talk 32911
.' Rescue Gershala Nightwhisper |q 13518/2
step
goto 44.6,19.9
.talk 33093
.' Rescue Cerellean Whiteclaw |q 13518/1
step
goto 42.9,21.5
.talk 33095
.' Rescue Shaldyn |q 13518/3
step
goto 43.1,20.6
.kill 8 Vile Spray |q 13522/1
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13522
step
goto 51.8,18.0
.talk 32973
..turnin 13518
step
goto 50.9,18.1
.talk 32972
..accept 13520
step
goto 51.1,19.7
.talk 32977
..accept 13521
step
goto 52.4,18.8
.' Click Encrusted Clams |tip They looks like clams underwater around this area.
.get 16 Encrusted Clam Muscle |q 13520/1
step
goto 53.4,19.5
.from Corrupted Tide Crawler##32935+
.get 4 Corrupted Tide Crawler Flesh |q 13521/1
step
goto 53.3,19.6
.' Click Buzzbox 413 |tip It's a metal box with gears on it, sitting on the beach next to a hill.
..turnin 13521
..accept 13527
step
goto 55.1,21.0
.' Click the Decomposing Thistle Bear |tip It looks like a dead bear laying on the ground.
.get Foul Bear Carcass Sample |q 13527/1
step
goto 51.1,19.7
.talk 32977
..turnin 13527
..accept 13528
step
goto 50.8,18.1
.talk 32972
..turnin 13520
step
goto 55.0,24.1
.from Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+ |tip The green ones won't drop loot.
.get 6 Corrupted Thistle Bear Guts |q 13528/1
step
goto 54.2,29.3
.' Click Buzzbox 723 |tip It's a metal box with gears on it, sitting on a hill.
..turnin 13528
..accept 13554
step
goto 56.2,27.2 |n
.' Follow the path up |goto 56.2,27.2,0.5 |noway |c
step
goto 56.8,30.1
.talk 32978
..accept 13529
step
goto 56.9,31.3 |n
.' Enter the cave |goto 56.9,31.3,0.5 |noway |c
step
goto 58.2,33.0
.' Go to the lower level of the cave
.kill Zenn Foulhoof |q 13529/1
.collect Corruptor's Master Key##44927 |n
.' Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
..accept 13557
step
goto 57.4,33.8
.' Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |tip They look like metal cages all around inside the cave.
.' Click the Disgusting Workbench |tip It looks like a wooden table with chemistry equipment on it.
..accept 13831
step
goto 57.0,33.2
.from Vile Corruptor##33022+, Vile Grell##33021+
.get 6 Foul Ichor |q 13554/1
.kill 8 Vile Grell |q 13529/2
.' Click Secure Bear Cages and Secure Duskrat Cages |tip They look like metal cages all around inside the cave.
.' Free 8 Uncorrupted Animals |q 13557/1
step
goto 51.1,19.7
.talk 32977
..turnin 13554
step
goto 51.1,19.7
.talk 32978
..turnin 13529
..turnin 13557
..turnin 13831
step
goto 50.9,18.0
.talk 32960
..accept 13564
step
goto 50.8,17.9
.talk 32959
..accept 13563
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13562
step
goto 46.8,33.3
.talk 33177
..accept 13561
step
goto 45.9,34.2
.' Click The Final Flame of Bashal'Aran |tip It looks like a brazier with fire in it, up on a hill in blue light.
.' Extinguish the Final Flame of Bashal'Aran |q 13562/1
step
goto 48.5,36.6
.kill Anaya Dawnrunner |q 13563/1
.get Anaya's Pendant |q 13563/2
step
goto 48.2,36.4
.kill 6 Cursed Highborne |q 13561/1
.kill 6 Writhing Highborne |q 13561/2
step
goto 46.8,33.3
.talk 33177
..turnin 13561
step
goto 42.9,39.0
.' Go to this spot
.' Locate Grimclaw |q 13564/1 |tip He's a dead white bear laying on the ground.
step
goto 43.0,39.0
.talk 33048
..turnin 13564
..accept 13598
..accept 13566
step
goto 42.9,39.0
.talk 33126
..accept 13565
step
goto 42.4,39.8
.' Click Moonstalkers |tip They look like blue tigers laying on the ground.  Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
.get 3 Moonstalker Whisker |q 13566/1
step
goto 44.1,40.8
.' Click Mottled Does |tip They look like small deer around this area.
.get 3 Tuft of Mottled Doe Hair |q 13566/2
step
goto 46.6,38.9
.' Click Hungry Thistle Bears |tip Only click them when they are neutral, or they will attack you.
.get 3 Thistle Bear Fur |q 13566/3
step
goto 48.6,40.4
.kill Lady Janira |q 13565/1
step
goto 47.7,39.7
.from Darkscale Scout##33206+
.' Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
.' Call 6 Withered Ents |q 13565/2
.' Click Fuming Toadstools |tip They look like yellow mushrooms on the ground around this area.
.get 6 Fuming Toadstool |q 13598/1
step
goto 43.0,39.0
.talk 33048
..turnin 13598
..turnin 13566
step
goto 42.9,39.0
.talk 33126
..turnin 13565
step
goto 43.0,39.0
.talk 33048
..accept 13569
step
goto 42.9,39.0
.' Click the Grovekeeper's Incense |tip It's a small bowl on the ground in front of Keeper Karithus with red smoke coming out of it.
..' Breathe in the smoke to entice visions of the great animal spirits |havebuff Interface\Icons\Spell_Nature_Sleep |q 13569
step
goto 43.8,40.2
.talk 33133 |tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
..accept 13567 |instant
step
goto 43.0,39.0
.talk 33048
..turnin 13569
..accept 13599
step
goto 50.9,18.2
.talk 32972
..turnin 13599
step
goto 50.8,17.9
.talk 32959
..turnin 13563
step
goto 50.7,19.4
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13562
..accept 13589
step
goto 51.0,19.2
.talk 32979
..accept 13560
step
goto 53.0,11.0
.' Click the Decoy Bot Control Console |tip It looks like a silver and yellow rectangular metal box sitting on a very tiny island.
.' As the robot, walk north underwater to get near a group of murlocs
.' Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
.kill 50 Scavenging Greymist Murlocs |q 13560/1
step
goto 51.0,19.2
.talk 32979
..turnin 13560
step
goto 58.9,19.4
.talk 32963
..turnin 13589
step
goto 58.9,19.4
.talk 32965
..accept 13504
step
goto 58.9,19.5
.talk 32966
..accept 13505
step
goto 60.5,21.3
.kill 10 Shatterspear Laborer |q 13504/1
.' Click Highborne Relics |tip They look like small white objects on the ground around this area.
.get 8 Highborne Relic |q 13505/1
.from Shatterspear Overseer##32863
.collect Overseer's Orders##44979 |n
.' Click the Overseer's Orders in your bags |use Overseer's Orders##44979
..accept 13506
step
goto 58.9,19.4
.talk 32965
..turnin 13504
step
goto 58.9,19.5
.talk 32966
..turnin 13505
step
goto 58.9,19.4
.talk 32963
..turnin 13506
..accept 13508
..accept 13509
step
goto 58.9,19.4
.talk 32965
..accept 13507
step
goto 61.6,11.6
.kill 6 Horde Enforcer |q 13507/1
.kill 6 Shatterspear Mystic |q 13507/2
.' Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999 |tip They look like brown wooden crates around this area.
.' Burn 12 Shatterspear Armaments |q 13509/1
step
goto 63.8,6.0
.talk 33055
..turnin 13508
..accept 13511
step
goto 64.1,5.3
.kill Rit'ko |q 13511/1
.collect Shatterspear Torturer's Cage Key##45040 |q 13510 |future
step
goto 64.5,5.5
.' Click the Shatterspear Cage |tip It looks like a yellow cage with a night elf kneeling inside it.
.talk 32964
..accept 13510
step
goto 60.2,7.0
.' Follow Sentinel Aynasha as she runs |tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
.' Escort Sentinel Aynasha to the Dock |q 13510/1
step
goto 58.9,19.4
.talk 32965
..turnin 13507
step
goto 58.9,19.4
.talk 32963
..turnin 13511
..turnin 13509
..turnin 13510
..accept 13512
step
goto 58.9,19.5
.talk 32966
..accept 13513
step
goto 59.1,19.6
.talk 34041
..accept 13844
step
goto 61.2,20.4
.' Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995 |tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
.kill Sheya Stormweaver |q 13512/2
step
goto 58.2,23.9
.kill Teegan Holloway |q 13844/1 |tip He's an undead that walks around in this broken tower.
step
goto 58.3,24.0
.' Click the Charred Book |tip It looks like a small black book laying on the floor upstairs in this broken tower.
.get Narassin's Tome |q 13844/2
step
goto 56.8,25.9
.' Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995 |tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
.kill Lorenth Thundercall |q 13512/1
step
goto 57.2,25.1
.from Shatterspear Shaman##32860+
.get 6 Shatterspear Amulet |q 13513/1
step
goto 58.9,19.4
.talk 32963
..turnin 13512
step
goto 58.9,19.5
.talk 32966
..turnin 13513
step
goto 58.9,19.4
.talk 32963
..accept 13590
step
goto 59.1,19.6
.talk 34041
..turnin 13844
step
goto 63.6,20.0 |n
.' Follow the path up |goto 63.6,20.0,0.5 |noway |c
step
goto 67.5,18.7 |n
.' Enter the tunnel |goto 67.5,18.7,0.5 |noway |c
step
goto 69.1,19.3
.talk 33176
..accept 13514
step
goto 69.5,18.8
.' Click the Vengeful Protector to ride on it |invehicle |q 13514 |tip it looks like a big purple tree ent.
step
goto 70.3,20.1
.' Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
.' Kill 30 Shatterspear Vale Trolls |q 13514/1
.' Destroy 6 Shatterspear Structures |q 13514/2
step
goto 69.5,18.8
.' Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514
step
goto 69.1,19.3
.talk 33176
..turnin 13514
step
goto 72.3,19.1
.talk 33178
..turnin 13590
..accept 13515
step
goto 72.3,19.1
.talk 33178
..' Tell you are ready, begin the attack
.kill Jor'kil the Soulripper |q 13515/1 |tip Make sure to loot his corpse.
.collect Hellscream's Missive##46318 |n
.' Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
..accept 13591
step
goto 72.4,18.8
.talk 33178
..turnin 13515
step
goto 50.7,19.7
.talk 32971
..turnin 13591
step
goto 50.1,19.5
.talk 32959
..accept 13570 |instant
step
goto 50.3,20.4
.talk 32912
..accept 13519
..accept 13596
step
goto 44.6,30.8
.talk 32932
..accept 13523
step
goto 43.7,31.4
.kill High Cultist Azerynn |q 13519/1
step
goto 44.3,30.1
.from Enraged Tidal Spirit##32890+
.' Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
.' Sooth 6 Tidal Spirits |q 13523/1
step
goto 44.6,30.8
.talk 32932
..turnin 13523
step
goto 44.7,31.1
.kill 10 Twilight Fanatic |q 13519/2
.' Click Twilight Plans |tip They look like small scrolls on the ground around this area.
.get 6 Twilight Plans |q 13596/1
.' You can find more around [43.9,32.5]
step
goto 50.3,20.4
.talk 32912
..turnin 13519
..turnin 13596
..accept 13601
step
goto 42.5,45.0
.talk 33107
..turnin 13601
step
goto 42.5,45.2
.talk 3694
..accept 13542
step
goto 42.7,45.1
.talk 32987
..accept 13543
..accept 13573
step
goto 39.1,43.2
.talk 6887
..accept 13547
step
goto 38.1,44.0
.talk 33037 |tip She's laying on the dock.
..' Coax the spirit out of Caylais Moonfeather's still corpse
.' Coax Caylais Moonfeather's spirit |q 13547/4
step
goto 37.8,42.8
.kill Windmaster Tzu-Tzu |q 13543/2
step
goto 38.5,41.9
.talk 33035
..' Coax Taldan's corpse to give up its spirit
.' Coax Taldan's spirit |q 13547/3
step
goto 41.0,41.4
.talk 33033 |tip She's laying on the ground on the bottom floor of this building.
..' Coax the spirit out of Sentinel Elissa Stareeze's corpse
.' Coax Sentinel Elissa Starbreeze's spirit |q 13547/2
step
goto 40.8,41.5
.kill Cloudtamer Wildmane |q 13543/1
step
goto 39.3,38.9
.talk 33001 |tip He's laying on the ground inside this building.
..' Coax Thundris Windweaver's spirit
.' Coax Thundris Windweaver's spirit |q 13547/1
step
goto 39.1,38.3
.kill Skylord Braax |q 13543/3
step
goto 40.1,41.6
.from Frenzied Cyclone##32985+
.collect 8 Frenzied Cyclone Bracers##44868 |q 13542
step
goto 39.5,42.1
.' Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
.' Destroy 8 Frenzied Cyclone Bracers |q 13542/1
step
goto 39.1,43.2
.talk 6887
..turnin 13547
..accept 13558
step
goto 36.6,41.0
.' Click the Aetherion Ritual Orb |tip It looks like a floating purple ball with pink and blue electricity coming off of it on the docks.
.from Aetherion##33041
.get Aetherion's Essence |q 13558/2
step
goto 38.6,42.5
.talk 33232
..accept 13605
.' Follow her around and protect her
.' Escort Archaeologist Hollee to safety |q 13605/1
step
goto 42.5,45.1
.talk 3694
..turnin 13542
step
goto 42.6,45.3
.talk 33231
..turnin 13605
step
goto 42.7,45.1
.talk 32987
..turnin 13543
..turnin 13558
step
goto 43.5,51.5 |n
.' Follow the path up |goto 43.5,51.5,0.5 |noway |c
step
goto 43.7,53.4
.talk 33091
..turnin 13573
..accept 13575
..accept 13577
..accept 13579
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13577
..accept 13578
step
goto 44.1,48.5
.' Click Slain Wildkin Feathers |tip They look like small brown and white feathers on the ground around this area.
.get 8 Slaim Wildkin Feather |q 13578/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13578
..accept 13582
step
goto 46.6,50.7
.from Horoo the Flamekeeper##34385 |tip He's a white owlkin spirit that walks around this area.
.get Elune's Torch |q 13582/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13582
..accept 13583
step
goto 41.0,56.5
.talk 33117
..turnin 13575
..accept 13576
step
goto 40.6,59.2
.from Unbound Fire Elemental##32999+
.' Use your Soothing Totem on their corpses |use Soothing Totem##44959
.' Absorb 8 Unbound Fire Elemental |q 13576/1
step
goto 40.9,56.5
.talk 33117
..turnin 13576
..accept 13580
step
goto 39.7,62.4
.' Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
.' Defend the Energized Soothing Totem
.' Complete the Ritual of Soothing |q 13580/1
step
goto 40.9,56.5
.talk 33117
..turnin 13580
..accept 13581
step
goto 44.4,56.8
.talk 33112
..turnin 13579
..accept 13584
step
goto 44.3,55.8
.kill 8 Enraged Earth Elemental |q 13584/1
step
goto 44.4,56.8
.talk 33112
..turnin 13584
..accept 13585
step
goto 43.6,55.1 |n
.' Follow the path up |goto 43.6,55.1,0.5 |noway |c
step
goto 43.6,53.4
.talk 33091
..turnin 13581
..turnin 13583
..turnin 13585
..accept 13586
step
goto 46.5,54.3 |n
.' Follow the path up |goto 46.5,54.3,0.5 |noway |c
step
goto 47.2,56.0 |n
.' Enter the cave |goto 47.2,56.0,0.5 |noway |c
step
goto 49.0,57.1
.' Follow the path to the end of the cave
.' Click the Nightmare Portal |tip It's a swirling purple, green and black portal in the cave.
.' Enter the Nightmare World |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 13586
step
goto 49.2,56.9
.talk 33166
..turnin 13586
..accept 13587
step
goto 49.6,55.3
.from Nightmare Guardian##34398 |tip The Nightmare Guardian walks along this path.
.get Emerald Scroll |q 13587/1
step
goto 49.2,56.9
.talk 33166
..turnin 13587
..accept 13940
step
goto 43.7,53.5
.talk 33091
..turnin 13940
..accept 13588
step
goto 43.5,53.7
.' Click Thessera to ride on her |tip She's a big green dragon.
.' While flying, use the Emerald Barrage ability on your hotbar to do the following:
.kill Twilight Portal |q 13588/1
.kill 12 Twilight Rider |q 13588/2
step
'Use the Land Thessera ability on your hotbar
.' Thessera will take you back to the ground |outvehicle |q 13588
step
goto 43.7,53.5
.talk 33091
..turnin 13588
..accept 13902
step
goto 44.4,75.5
.talk 33253
.fpath Grove of the Ancients
step
goto 45.1,75.2
.talk 33250
..accept 13525
step
goto 45.3,75.1
.talk 34402
..turnin 13902
..accept 13892
step
goto 45.2,74.6
.talk 34301
..accept 13881
step
goto 45.0,79.2
.' Go to this spot underwater
.' Investigate the Watering Hole |q 13881/1
step
goto 44.7,79.4
.kill 6 Consumed Thistle Bear |q 13881/2
step
goto 43.5,81.0
.talk 32967
..turnin 13525
..accept 13526
step
goto 44.0,81.6
.' Click Bear's Paws |tip They look like green leafy plants on the ground around this area.
.get 8 Bear's Paw |q 13526/1
step
goto 43.5,81.0
.talk 32967
..turnin 13526
..accept 13544
step
goto 44.8,78.5
.from Fleetfoot##32997 |tip He's a plainstrider that walks around this pond area.
.collect Fleetfoot's Tailfeathers##44886 |q 13544
step
goto 45.3,76.8
.' Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888 |tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
.get Blessed Herb Bundle |q 13544/1
step
goto 45.2,74.6
.talk 34301
..turnin 13881
..accept 13882
step
goto 45.4,74.8
.talk 33072
..' Ask him where you may find a Seed of the Earth
.get Seed of the Earth |q 13882/1
step
goto 42.1,79.0
.' Click the Darkshore Wisp |tip It's a blue-ish floating ball of light.  Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
.get Seed of the Sky |q 13882/3
step
goto 43.5,81.0
.talk 32967
..turnin 13544
..accept 13545
step
goto 43.6,81.0
.talk 32968
..accept 13572
step
goto 44.1,82.5
.' Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
.from Spirit of Corruption##33000+
.' Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
.' Click Jadefire Brazier to destroy them |tip They look like bowls with green flames in them on the ground around this area.
.' Destroy 8 Jadefire Brazier |q 13572/1
step
goto 43.5,81.0
.talk 32967
..turnin 13545
..accept 13546
step
goto 43.6,81.0
.talk 32968
..turnin 13572
step
goto 46.3,83.7 |n
.' Enter the cave |goto 46.3,83.7,0.5 |noway |c
step
goto 46.8,84.0
.kill Sharax the Defiler |q 13546/1
step
goto 43.5,81.0
.talk 32967
..turnin 13546
step
goto 42.4,82.3
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13892
step
goto 40.6,84.5
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Stand in this spot and listen to Foreman Balsoth
.' Complete the Twilight's Hammer surveillance |q 13892/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 13892
..accept 13948
step
goto 38.6,78.2
.' Click a Glittering Shell |tip They look like white clam shells along the beach around this area.
.get Seed of the Sea |q 13882/2
step
goto 39.2,85.1
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13948
step
goto 39.8,86.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 39.8,86.4,0.5 |noway |c
step
goto 41.1,85.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 41.1,85.4,0.5 |noway |c
step
goto 39.9,84.8
.' Go to this spot
.' Watch the dialogue
.' Complete the Master's Glaive Surveillance |q 13948/1
step
goto 45.2,74.6
.talk 34301
..turnin 13882
..accept 13925
step
goto 45.3,75.1
.talk 34402
..turnin 13948
step
goto 45.3,75.1
.talk 34404
..accept 13896
step
goto 42.3,76.7
.' Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
.' Test the Lifebringer Sapling |q 13925/1
step
goto 45.2,74.6
.talk 34301
..turnin 13925
..accept 13885
step
goto 44.5,75.3
.talk 34392
..' Tell him Kathrena sent you to borrow one of his Hippogryphs
.' From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
.' Protect 8 Grizzled Thistle Bears |q 13885/1
.' Protect 8 Moonstalkers |q 13885/2
.' Protect 8 Whitetail Deers |q 13885/3
step
goto 45.2,74.6
.talk 34301
..turnin 13885
..accept 13891
step
goto 45.1,78.7
.' Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
.from Yoth'al the Devourer##34331
.' Destroy the Devouring Artifact |q 13891/1
step
goto 45.2,74.6
.talk 34301
..turnin 13891
step
map Darnassus
'To continue gaining reputation with the Darnassus faction:
.' You can buy a Darnassus Tabard from Moon Priestess Lasara at [Darnassus 36.5,48.5] |tip Wear the Darnassus Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Human Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Human.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Human.
step
goto Icecrown,76.6,19.1
.talk 33225
..accept 13593
..turnin 13593
..accept 13718
step
goto Icecrown,76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |or
..accept 13600 |or
..accept 13616 |or
step
goto 76.5,19.1
.talk 33222
..accept 13592
step
goto 76.6,19.2
.talk 33223
..accept 13665
..accept 13847
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
step
goto 76.5,19.1
.talk 33222
..turnin 13592
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13699
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1
step
goto 76.6,19.2
.talk 33225
..turnin 13699
step
'Congratulations, you are now a Champion of Stormwind! |tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Night Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Night Elf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Night Elf.
step
goto Icecrown,76.3,19.0
.talk 33592
..accept 13706
..turnin 13706
..accept 13717
step
goto Icecrown,76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |or
..accept 13758 |or
..accept 13759 |or
step
goto 76.3,19.0
.talk 33652
..accept 13760
step
goto 76.4,19.0
.talk 33654
..accept 13761
..accept 13855
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
step
goto 76.3,19.0
.talk 33652
..turnin 13760
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13725/1
step
goto 76.3,19.1
.talk 33592
..turnin 13725
step
'Congratulations, you are now a Champion of Darnassus! |tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Dwarf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Dwarf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Dwarf.
step
goto Icecrown,76.3,19.0
.talk 33312
..accept 13703
..turnin 13703
..accept 13714
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |or
..accept 13742 |or
..accept 13743 |or
step
goto 76.7,19.4
.talk 33315
..accept 13744
step
goto 76.6,19.6
.talk 33309
..accept 13745
..accept 13851
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
step
goto 76.7,19.4
.talk 33315
..turnin 13744
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13714
..accept 13713
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
.' When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13713/1
step
goto 76.3,19.1
.talk 33592
..turnin 13713
step
'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Gnome Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Gnome.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Gnome.
step
goto Icecrown,76.5,19.8
.talk 33335
..accept 13704
..turnin 13704
..accept 13715
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |or
..accept 13747 |or
..accept 13748 |or
step
goto 76.6,19.8
.talk 33648
..accept 13749
step
goto 76.5,19.9
.talk 33649
..accept 13750
..accept 13852
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
step
goto 76.6,19.8
.talk 33648
..turnin 13749
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13723/1
step
goto 76.5,19.8
.talk 33335
..turnin 13723
step
'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Draenei Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Draenei.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Draenei.
step
goto Icecrown,76.1,19.1
.talk 33593
..accept 13705
..turnin 13705
..accept 13716
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |or
..accept 13753 |or
..accept 13754 |or
step
goto 76.1,19.2
.talk 33655
..accept 13755
step
goto 76.2,19.1
.talk 33656
..accept 13756
..accept 13854
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
step
goto 76.1,19.2
.talk 33655
..turnin 13755
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
step
'Make sure you have 25 Valiant Seals:
.' Get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13724/1
step
goto 76.1,19.2
.talk 33593
..turnin 13724
step
'Congratulations, you are now a Champion of The Exodar! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Darnassus Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63637) and hasmount(65638)
model 29256
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Darnassus in the Argent Tournament
.' Become a _Champion of Darnassus_ |achieve 2777
.earn 105 Champion's Seal##241
step
goto Icecrown,76.2,19.2
.talk 33653
.buy 1 Darnassian Nightsaber##45591
.buy 1 Swift Moonsaber##46744
'|modeldisplay 29256
'|modeldisplay 14333
step
.learnmount Darnassian Nightsaber##63637 |use Darnassian Nightsaber##45591
.learnmount Swift Moonsaber##65638 |use Swift Moonsaber##46744
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Gnomeregan Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63638) and hasmount(65642)
model 35224
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Gnomeregan in the Argent Tournament
.' Become a _Champion of Gnomeregan_ |achieve 2779
.earn 105 Champion's Seal##241
step
goto Icecrown,76.4,19.6
.talk 33650
.buy 1 Gnomergan Mechanostrider##45589
.buy 1 Turbostrider##46747
'|modeldisplay 35224
'|modeldisplay 14375
step
.learnmount Gnomeregan Mechanostrider##63638 |use Gnomeregan Mechanostrider##45589
.learnmount Turbostrider##65642 |use Turbostrider##46747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Ironforge Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63636) and hasmount(65643)
model 29258
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Ironforge in the Argent Tournament
.' Become a _Champion of Ironforge_ |achieve 2780
.earn 105 Champion's Seal##241
step
goto Icecrown,76.4,19.4
.talk 33310
.buy 1 Ironforge Ram##45586
.buy 1 Swift Violet Ram##46748
'|modeldisplay 29258
'|modeldisplay 28612
step
.learnmount Ironforge Ram##63636 |use Ironforge Ram##45586
.learnmount Swift Violet Ram##65643 |use Swift Violet Ram##46748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Exodar Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63639) and hasmount(65637)
model 29255
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Exodar in the Argent Tournament
.' Become a _Champion of Exodar_ |achieve 2778
.earn 105 Champion's Seal##241
step
goto Icecrown,76.2,19.2
.talk 33657
.buy 1 Exodar Elekk##45590
.buy 1 Great Red Elekk##46745
'|modeldisplay 29255
'|modeldisplay 28606
step
.learnmount Exodar Elekk##63639 |use Exodar Elekk##45590
.learnmount Great Red Elekk##65637 |use Great Red Elekk##46745
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Stormwind Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63232) and hasmount(65640)
model 29976
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Stormwind in the Argent Tournament
.' Become a _Champion of Stormwind_ |achieve 2781
.earn 105 Champion's Seal##241
step
goto Icecrown,76.4,19.2
.talk 33307
.buy 1 Stormwind Steed##45125
.buy 1 Swift Gray Steed##46752
'|modeldisplay 29976
'|modeldisplay 29043
step
.learnmount Stormwind Steed##63232 |use Stormwind Steed##45125
.learnmount Swift Gray Steed##65640 |use Swift Gray Steed##46752
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Quel'dorei Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(66090)
model 28888
step
'Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Exalted_ with _The Silver Covenant_ |condition rep("The Silver Covenant")>=Exalted
.earn 100 Champion's Seal##241
step
goto Icecrown,76.2,19.6
.talk 34881
.buy 1 Quel'dorei Steed##46815
'|modeldisplay 28888
step
.learnmount Quel'dorei Steed##66090 |use Quel'dorei Steed##46815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(67466)
model 28918
step
'Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Earn_ the title _"Crusader"_ |achieve 2816 |tip To do this you must become a Champion and have exalted reputation for all of the factions of the Alliance.
.earn 100 Champion's Seal##241 |only if default
.earn 200 Champion's Seal##241 |only Paladin
step
goto Icecrown,69.4,23.2
.talk 34885
.buy 1 Argent Charger##47179 |only Paladin
.buy 1 Argent Warhorse##47180
'|modeldisplay 28918
step
.learnmount Argent Charger##66906 |use Argent Charger##47179 |only Paladin
.learnmount Argent Warhorse##67466 |use Argent Warhorse##47180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(63844)
model 31714
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
.earn 150 Champion's Seal##241
step
goto Icecrown,76.4,19.2 |only Human
.talk 33307 |only Human
goto Icecrown,76.2,19.2 |only NightElf,Worgen
.talk 33653 |only NightElf,Worgen
goto Icecrown,76.4,19.4 |only Dwarf
.talk 33310 |only Dwarf
goto Icecrown,76.2,19.2 |only Draenei
.talk 33657 |only Draenei
goto Icecrown,76.4,19.6 |only Gnome
.talk 33650 |only Gnome
.buy 1 Argent Hippogryph##45725
'|modeldisplay 31714
step
.learnmount Argent Hippogryph##63844 |use Argent Hippogryph##45725
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Silver Covenant Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(66087)
model 27561
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent_ _Tournament_ _Grounds_ and _The Silver Covenant pre-quests_ and _dailies_.
.' _Exalted_ with _The Silver Covenant_ |condition rep("The Silver Covenant")>=Exalted
..earn 150 Champion's Seal##241
step
goto Icecrown,76.2,19.6
.talk 34881
.buy 1 Silver Covenant Hippogryph##46813
'|modeldisplay 27561
step
.learnmount Silver Covenant Hippogryph##66087 |use Silver Covenant Hippogryph##46813
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Winterspring Frostsaber",[[
description This guide will walk you through obtaining
description the ground mounts that require special quests to
description purchase.
condition end hasmount(17229)
model 10426
step
'This mount will take _20 days_ to earn.
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
'Go to _Winterspring_ |goto Winterspring |noway |c
step
title +Winterspring Frostsaber Dailies
|use Winterspring Cub##68646
.talk 51677
..accept 29040 |or |only NightElf,Gnome,Draenei
..accept 29051 |or |only Dwarf,Worgen
..accept 29035 |or |only NightElf,Gnome,Draenei
..accept 29052 |or |only Dwarf,Worgen
..accept 29038 |or |only NightElf,Gnome,Draenei
..accept 29039 |or |only Dwarf,Worgen
..accept 29037 |or |only NightElf,Gnome,Draenei
..accept 29053 |or |only Dwarf,Worgen
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29040
|only NightElf,Gnome,Draenei
|onlyif havequest(29040)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29040
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hides_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29040/1
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hide_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29051/1
|only Dwarf,Worgen
|only if havequest(29051)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29035
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29035/1
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29052
|only Dwarf,Worgen
|only if havequest(29052)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29052/1
|only Dwarf,Worgen
|only if havequest(29052)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29038/1
|only NightElf,Gnome,Draenei
'|modelnpc 51711
|only if havequest(29038)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29039/1
|only Dwarf,Worgen
'|modelnpc 51711
|only if havequest(29039)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29037
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29037/1
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29053
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29053/1
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.talk 51677
..turnin 29040 |or |only NightElf,Gnome,Draenei |only if havequest(29040)
..turnin 29051 |or |only Dwarf,Worgen |only if havequest(29051)
..turnin 29035 |or |only NightElf,Gnome,Draenei |only if havequest(29035)
..turnin 29052 |or |only Dwarf,Worgen |only if havequest(29052)
..turnin 29038 |or |only NightElf,Gnome,Draenei |only if havequest(29038)
..turnin 29039 |or |only Dwarf,Worgen |only if havequest(29039)
..turnin 29037 |or |only NightElf,Gnome,Draenei |only if havequest(29037)
..turnin 29053 |or |only Dwarf,Worgen |only if havequest(29053)
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
.collect 1 Reins of the Winterspring Frostsaber##13086
'|modeldisplay 10426
step
.learnmount Winterspring Frostsaber##17229 |use Reins of the Winterspring Frostsaber##13086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\White Polar Bear",[[
description This guide will walk you through obtaining
description the ground mounts that require special quests to
description purchase.
condition end hasmount(54753)
model 28428
step
label	start
'This mount _requires_ you to have _The Sons of Hodir_ pre-quests completed
|confirm
|next dailies |only if completedq(13007)
|next |only if default
step
#include "A_Sons_Hodir_Pre-Quests"
step
label "dailies"
goto The Storm Peaks,50.9,65.6
.talk 29796
..accept 13424 |or
..accept 13423 |or
..accept 13422 |or
..accept 13425 |or
step
goto 49.4,67.6
'Use the Reins of the Warbear Matriarch in your bags |use Reins of the Warbear Matriarch##42499
'Use the _abilities_ on your _hotbar_ to kill the _Hyldsmeet Warbears_
.kill 6 Hyldsmeet Warbear##30174 |q 13424/1
|only if havequest(13424)
step
goto 48.2,70.1
'Talk to Victorious Challengers
.' _Challenge_ them to a fight
.kill 6 Victorious Challenger##30012 |q 13423/1
|only if havequest(13423)
step
goto 25.0,60.0
.from Valkyrion Apirant##29569
.collect Vial of Frost Oil##41612 |n
.' Use the _Vial of Frost Oils_ to destroy the _Plauged Proto-Drake Eggs_ |use Vial of Frost Oil##41612
.'Destroy Plagued Proto-Drake Egg |q 13425/1
|modeldisplay Plagued Proto Drake Egg##7398
|only if havequest(13425)
step
goto 46.5,68.3
'Use your _Disciplining Rod_ on the _Exhausted Vrykuls_ |use Disciplining Rod##42837 |tip They are located all throughout this mine
.' Exhausted Vrykul Disciplined |q 13422/1
|only if havequest(13422)
step
goto The Storm Peaks,50.9,65.6
.talk 29796
..turnin 13424
..turnin 13423
..turnin 13422
..turnin 13425
.collect 1 Hyldinr Spoils##44751
step
|use Hyldinr Spoils##44751
.collect 1 Reins of the White Polar Bear##43962 |tip This has a 2% drop rate from these bags. Do these dailies every day to have a higher chance of obtaining it!
.' _Click here_ to return to the _beginning_ of the _daily quests_ |next "dailies" |confirm
'|modeldisplay 28428
step
.learnmount White Polar Bear##54753 |use Reins of the White Polar Bear##43962
.' Click here to return to the beginning of this guide. |confirm |next start
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Darkmoon Faire Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require daily quests to
description purchase.
condition end hasmount(103081)
model 39060
step
'This mount requires Darkmoon Island to be accessible.
|confirm
step
goto Darkmoon Island 48.6,69.8
'Complete daily quests on Darkmoon Island until you have 360 Darkmoon Prize Tickets
.earn 360 Darkmoon Prize Ticket##515
.'_
.' Click here to load the Darkmoon Faire Dailies Guide |confirm |next "Zygor's Alliance Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies" |only if ZGV.guidesets['DailiesACATA']
step
goto Darkmoon Island 48.6,69.8
.talk 14846
.buy Darkmoon Dancing Bear##73766
.buy Swift Forest Strider##72140
|modeldisplay 39060
|modeldisplay 1281
step
.learnmount Darkmoon Dancing Bear##103081 |use Darkmoon Dancing Bear##73766
.learnmount Swift Forest Strider##102346 |use Swift Forest Strider##72140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Amani Battle Bear",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(98204)
model 38261
step
label "start"
goto Ghostlands 82.0,64.3
.' In order to get the Amani Battle Bear you will need to _save all 4 sacrifices_, in this dungeon, _within 15 minutes_.
.' In order to do this, kill the bosses in the following order: _Akil'zon_, _Nalorakk_, _Jan'alai_, and finally _Halazzi_.
.' Both Akil'zon and Nalorakk grant you _5 minutes of extra time_ to complete your task, giving you a _total of 25 minutes_ at most to kill all 4 bosses.
.' Click here for the locations of each boss. |confirm
step
goto Zul'Aman 34,22
.from Akil'zon##23574
|confirm
step
goto Zul'Aman 41,75
.from Nalorakk##23576
|confirm
step
goto Zul'Aman 55,70
.from Jan'alai##23578
|confirm
step
goto Zul'Aman 57,23
.from Halazzi##23577
.' Once Halazzi has died free Kasha from her cage and wait for her to blow up pots around the room, the final pot will hold Kasha's bag.
|modelnpc Kasha##52945
|model Kasha's Bag##323
|confirm
step
.click Kasha's Bag##323
.collect 1 Amani Battle Bear##69747 |tip As long as you saved all 4 sacrifices this is a guaranteed drop.
|modeldisplay 38261
step
.learnmount Amani Battle Bear##98204 |use Amani Battle Bear##69747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Rivendare's Deathcharger",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(17481)
model 16937
step
.' This mount is an _Extremely Rare_ drop from the final part of Stratholme.
.' It will likely take several runs to attain this mount.
.' To reset an instance after you have cleared it, leave via the portal.
.' Once outside of the instance, right click your character portrait and select the _Reset all instances_ option.
.' You should be able to run the instance several times before it locks out.
|confirm
step
'Kill the bosses at these locations, including the Acolyte's behind them, to open the gate to Lord Aurius.
goto Stratholme/2 74.8,46.9
.from Baroness Anastari##10436
.from Thuzadin Acolyte##10399+
.'_
goto Stratholme/2 68.2,20.0
.from Maleki the Pallid##10438
.from Thuzadin Acolyte##10399+
.'_
goto Stratholme/2 56.5,46.7
.from Nerub'enkan##10437
.from Thuzadin Acolyte##10399+
|confirm
step
goto Stratholme/2 37.1,19.9
.from Lord Aurius Rivendare##45412
.collect 1 Deathcharger's Reins##13335 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
|tip If you want, you can go outside the instance and reset it. To reset an instance, right click your portrait and click "Reset all instances". You can then kill this boss again for another chance at the mount.
|modeldisplay 16937
step
.learnmount Rivendare's Deathcharger##17481 |use Deathcharger's Reins##13335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Raven Lord",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(41252)
model 21427
step
'Traverse through Sethekk Halls
goto Sethekk Halls,48.7,95.0 |n
.' Go up the stairs here |goto Sethekk Halls,48.7,95.0,0.5 |noway |c
step
goto Sethekk Halls/2 32.1,54.8
.from Anzu##23035
.collect 1 Reins of the Raven Lord##32768 |tip This has a 1.8% drop rate, do this everyday to have a higher chance of obtaining it!
.' Note that if it doesn't drop, you will have to wait until tomorrow for a chance to get it again.
|modeldisplay 21427
step
.learnmount Raven Lord##41252 |use Reins of the Raven Lord##32768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift White Hawkstrider",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(46628)
model 19483
step
'Traverse through Magisters' Terrace
goto Magisters' Terrace,84.3,46.0 |n
.' Go down the ramp here |goto Magisters' Terrace,84.3,46.0,0.5 |noway |c
step
goto 6.9,51.0
.from Kael'thas Sunstrider##24664
.collect 1 Reins of the Swift White Hawkstrider##35513 |tip This has a 4% drop rate, do this everyday to have a higher chance of obtaining it!
' Note that if it doesn't drop, you will have to wait until tomorrow for a chance to get it again.
'|modeldisplay 19483
step
.learnmount Swift White Hawkstrider##46628 |use Reins of the Swift White Hawkstrider##35513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Wooly Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(59791)
model 26424
step
'Use the _Dungeon Finder_ to complete _Normal Difficulty Dungeons_ and _Heroic Difficulty Dungeons_ to obtain _Justice Points_
.earn 2175 Justice Point##395
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Wooly Mammoth##44230
'|modeldisplay 26424
step
.learnmount Wooly Mammoth##59791 |use Reins of the Wooly Mammoth##44230
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift Zulian Panther and Armored Razzashi Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(96499) and hasmount(96491)
model 37799
step
label "start0"
'You can either use the Dungeon Finder or get a group of friends to complete Heroic Difficulty Zul'Gurub.
'Click here for the Swift Zulian Panther |next "panther0" |confirm
'Click here for the Armored Razzashi Raptor |next "raptor0" |confirm
step
label "panther0"
Enter the Temple of Bethekk here: |goto Zul'Gurub/0 47.5,21.7,0.5
step
goto Zul'Gurub/0 47.8,20.3
'Traverse Zul'Gurub and kill High Priestess Kilnara
.collect 1 Swift Zulian Panther##68824 |tip This has an incredibly low chance of dropping. (Less than 1%)
.' Click here to return to the beginning |next "start0" |confirm
.' Click here if you have both mounts |next "end0" |confirm
|modelnpc 52059
|modeldisplay 37799
step
label "raptor0"
goto Zul'Gurub/0 60.0,80.8
.collect 1 Armored Razzashi Raptor##68823 |tip This has an incredibly low chance of dropping. (Less than 1%)
.' Click here to return to the beginning |next "start0" |confirm
.' Click here if you have both mounts |next "end0" |confirm
|modelnpc 52151
|modeldisplay 14341
step
label "end0"
.learnmount Swift Zulian Panther##96499 |use Swift Zulian Panther##68824
.learnmount Armored Razzashi Raptor##96491 |use Armored Razzashi Raptor##68823
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Armored Brown Bear",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through gold farming.
condition end hasmount(60114)
model 27821
step
'This _mount_ costs _750_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Armored Brown Bear##44225
|modeldisplay 27821
step
.learnmount Armored Brown Bear##60116 |use Reins of the Armored Brown Bear##44225
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Traveler's Tundra Mammoth",[[
description This guide will walk you through obtaining
description the gorund mounts that can be obtained
description through gold farming.
condition end hasmount(61425)
model 25451
step
'This _mount_ costs _20,000_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Traveler's Tundra Mammoth##44235
'|modeldisplay 25451
step
.learnmount Traveler's Tundra Mammoth##61425 |use Reins of the Traveler's Tundra Mammoth##44235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Mekgineer's Chopper",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(60424)
model 25870
step
'You will need at least _12,500 gold_ to obtain this _mount_ |tip This will cost more gold if you do not farm for the required materials
|confirm
|next "engineer" |only if skill("Engineering")>=450
|next "levelengineer" |only if skill("Engineering")<450 and skill("Engineering")>1
|next "auctionhouse" |only if skill("Engineering")<1
step
label "levelengineer"
'Use the _Engineering Profession_ section of this guide to level your _Engineering_ skill to _450_
.skill Engineering,450
.' Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
label "engineer"
'This will require you to be _exalted_ with _Alliance Expedition_
.' _Exalted_ with _Alliance Vanguard_ |condition rep("Alliance Vanguard")>=Exalted |tip To get to exalted with this faction: make sure you don't have a Wrath of the Lich King faction tabard on and then complete heroic and normal dungeons in Northrend (this is much easier to do with friends).
.' Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
goto Borean Tundra,57.6,66.2
.talk 32564
.buy 1 Schematic: Mekgineer's Chopper##44503 |n
.'_
.learnmount Mekgineer's Chopper##60867 |use Schematic: Mekgineer's Chopper##44503
step
label "auctionhouse"
'You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
.collect 40 Handful of Cobalt Bolts##39681
.' Click here to farm the ingredients |confirm |next farm_cobalt |only if skill("Mining")>=350
|next auctionhouse_2
step
label farm_cobalt
map Borean Tundra
path 29.6,20.6	24.7,22.2	24.1,26.2
path 28.6,26.3	29.4,21.9	32.5,25.8
path 36.6,29.7	42.7,35.4	43.1,39.1
path 39.5,42.9	34.5,48.2	30.2,54.8
path 33.1,57.3	35.2,65.9	39.4,68.2
path 44.1,66.0	46.3,62.0	50.0,62.4
path 50.8,71.7	53.6,72.0	60.5,59.2
path 67.2,47.4	83.0,44.8	91.8,39.7
path 73.9,20.6	63.9,12.6	59.9,19.0
path 42.5,14.8	46.8,40.4
.' Follow the provided path and gather all materials needed.
.collect 40 Cobalt Ore##36909
step
label auctionhouse_2
'You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
.collect 12 Titansteel Bar##37663
.' Click here to get the ingredients without mining |confirm |next farm_no_mine
.' Click here to farm the ingredients |confirm |next farm_titan |only if skill("Mining")>=450
|next arctic
step
label farm_no_mine
goto Wintergrasp/0 83.8,71.9
.from Raging Flame##30847+
.collect Crystallized Fire##37702 |n
.collect 12 Eternal Fire##36860
step
goto The Storm Peaks/0 70.1,60.0
.from Brittle Revenant##30160+
.collect Crystallized Earth##37701 |n
.collect 12 Eternal Earth##35624
step
goto Wintergrasp/0 19.5,51.7
.from Wandering Shadow##30842+
.collect Crystallized Shadow##37703 |n
.collect 12 Eternal Shadow##35627
step
#include auctioneer
.buy 36 Titanium Bar##41163
|next arctic
step
label	farm_titan
map Icecrown
path 81.2,67.2	77.7,64.7	77.6,56.3
path 77.2,49.9	76.6,45.5	73.8,38.0
path 69.7,37.8	64.0,33.1	62.0,37.3
path 58.9,43.6	57.1,44.8	56.5,33.3
path 55.5,23.3	53.6,27.8	50.6,45.6
path 48.6,36.4	48.8,30.5	44.9,26.8
path 41.3,36.9	37.8,40.1	38.5,27.2
path 31.0,31.8	30.3,41.2	33.8,47.2
path 39.9,48.3	38.8,54.9	28.9,64.3
path 36.7,65.4	40.9,64.4	47.1,70.5
path 49.5,82.0	50.8,85.7	56.3,83.3
path 54.8,79.5	60.1,74.0	65.7,64.8
path 67.1,71.3	70.7,69.0	72.1,63.3
path 75.9,66.2	78.2,70.5
.' Follow the provided path and gather all materials needed.
.collect 36 Titanium Bar##41163
|tip Mine Saronite, Cobalt and Titanium to get Crystallized Fire, Shadow and Earth
.collect Crystallized Shadow##37703 |n
.collect 12 Eternal Shadow##35627
.collect Crystallized Earth##37701 |n
.collect 12 Eternal Earth##35624
.collect Crystallized Fire##37702 |n
.collect 12 Eternal Fire##36860
'|model Saronite##7804
'|click Titanium Vein##6798
step
label	arctic
'You can either _buy_ this _item_ from the _Auction House_ or _farm_ them:
.collect 2 Arctic Fur##44128
.' Click here to farm the ingredients yourself |confirm |next skin |only if skill("Skinning")>=335
|next create
step
label	skin
goto Borean Tundra/0 44.5,43.0
.from Wooly Rhino Calf##25488+
.from Wooly Rhino Bull##25489+
.collect 2 Arctic Fur##44128
step
label create
'Have an _Engineer friend_, or find an _Engineer_, to _buy_ these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")<450
'Buy these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")>=450
goto The Storm Peaks,40.6,84.8
.talk 31247
.buy 8 Goblin-Machined Piston##44501 |only if skill("Engineering")>=450
.buy 1 Salvaged Iron Golem Parts##44499 |only if skill("Engineering")>=450
.buy 1 Elementium-Plated Exhaust Pipe##44500 |only if skill("Engineering")>=450
.collect 8 Goblin-Machined Piston##44501 |only if skill("Engineering")<450
.collect 1 Salvaged Iron Golem Parts##44499 |only if skill("Engineering")<450
.collect 1 Elementium-Plated Exhaust Pipe##44500 |only if skill("Engineering")<450
|tip Remember these items cost 12500 gold all together
step
'Have the _Engineer_ create the _Mekgineer's Chopper_ for you |only if skill("Engineering")<450
.create Mekgineer's Chopper##60867,Engineering,1 total |only if skill("Engineering")>=450
.collect 1 Mekgineer's Chopper##44413
'|modeldisplay 25870
step
.learnmount Mekgineer's Chopper##60424 |use Mekgineer's Chopper##44413 |tip Get to the Choppa!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Horse Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(23229) and hasmount(23227)and hasmount(23228)and hasmount(458)and hasmount(6648)and hasmount(472)
model 14338
step
title + Horse Mounts
#include main_rep_mount,rep="Stormwind",tabard="SWTabard"
|only Dwarf,NightElf,Gnome,Draenei,Worgen
step
'Go to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City 77.0,67.8
.talk 43694
.buy 1 Swift Brown Steed##18777
.buy 1 Swift Palomino##18776
.buy 1 Swift White Steed##18778
.buy 1 Black Stallion Bridle##2411
.buy 1 Brown Horse Bridle##5656
.buy 1 Chestnut Mare Bridle##5655
.buy 1 Pinto Bridle##2414
'|modeldisplay 14583
'|modeldisplay 14582
'|modeldisplay 14338
'|modeldisplay 2402
'|modeldisplay 2404
'|modeldisplay 2405
'|modeldisplay 2409
step
.learnmount Swift Brown Steed##23229 |use Swift Brown Steed##18777
.learnmount Swift Palomino##23227 |use Swift Palomino##18776
.learnmount Swift White Steed##23228 |use Swift White Steed##18778
.learnmount Black Stallion##470 |use Black Stallion Bridle##2411
.learnmount Brown Horse##458 |use Brown Horse Bridle##5656
.learnmount Chestnut Mare##6648 |use Chestnut Mare Bridle##5655
.learnmount Pinto##472 |use Pinto Bridle##2414
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Tiger Mounts",[[
description This guide will walk you through obtaining the ground mounts that require reputation to purchase.
condition end hasmount(23221) and hasmount(23219) and hasmount(23338) and hasmount(10789) and hasmount(66847) and hasmount(8394) and hasmount(10793)
model 14332
step
title +Tiger Mounts
#include main_rep_mount,rep="Darnassus",tabard="DarnTabard"
|only Dwarf,Human,Gnome,Draenei,Worgen
step
Go to Darnassus |goto Darnassus |noway |c
step
goto 42.4,32.8
.talk 4730
.buy 1 Reins of the Swift Frostsaber##18766
.buy 1 Reins of the Swift Mistsaber##18767
.buy 1 Reins of the Swift Stormsaber##18902
.buy 1 Reins of the Spotted Frostsaber##8632
.buy 1 Reins of the Striped Dawnsaber##47100
.buy 1 Reins of the Striped Frostsaber##8631
.buy 1 Reins of the Striped Nightsaber##8629
'|modeldisplay 14331
'|modeldisplay 14332
'|modeldisplay 14632
'|modeldisplay 6444
'|modeldisplay 29755
'|modeldisplay 6080
'|modeldisplay 6448
step
.learnmount Swift Frostsaber##23221 |use Reins of the Swift Frostsaber##18766
.learnmount Swift Mistsaber##23219 |use Reins of the Swift Mistsaber##18767
.learnmount Swift Stormsaber##23338 |use Reins of the Swift Stormsaber##18902
.learnmount Spotted Frostsaber##10789 |use Reins of the Spotted Frostsaber##8632
.learnmount Striped Dawnsaber##66847 |use Reins of the Striped Dawnsaber##47100
.learnmount Striped Frostsaber##8394 |use Reins of the Striped Frostsaber##8631
.learnmount Striped Nightsaber##10793 |use Reins of the Striped Nightsaber##8629
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Mechanostrider Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(23225) and hasmount(23223) and hasmount(23222) and hasmount(10969) and hasmount(17453) and hasmount(10873) and hasmount(17454)
model 31670
step
title +Mechanostrider Mounts
#include main_rep_mount,rep="Gnomeregan",tabard="GnomTabard"
|only NightElf,Human,Dwarf,Draenei,Worgen
step
goto Dun Morogh,56.2,46.2
.talk 7955
.buy 1 Swift Green Mechanostrider##18772
.buy 1 Swift White Mechanostrider##18773
.buy 1 Swift Yellow Mechanostrider##18774
.buy 1 Blue Mechanostrider##8595
.buy 1 Green Mechanostrider##13321
.buy 1 Red Mechanostrider##8563
.buy 1 Unpainted Mechanostrider##13322
'|modeldisplay 14374
'|modeldisplay 14376
'|modeldisplay 14377
'|modeldisplay 6569
'|modeldisplay 10661
'|modeldisplay 9473
'|modeldisplay 9476
step
.learnmount Swift Green Mechanostrider##23225 |use Swift Green Mechanostrider##18772
.learnmount Swift White Mechanostrider##23223 |use Swift White Mechanostrider##18773
.learnmount Swift Yellow Mechanostrider##23222 |use Swift Yellow Mechanostrider##18774
.learnmount Blue Mechanostrider##10969 |use Blue Mechanostrider##8595
.learnmount Green Mechanostrider##17453 |use Green Mechanostrider##13321
.learnmount Red Mechanostrider##10873 |use Red Mechanostrider##8563
.learnmount Unpainted Mechanostrider##17454 |use Unpainted Mechanostrider##13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ram Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(6898) and hasmount(6777) and hasmount(6899) and hasmount(23240) and hasmount(23239) and hasmount(23238)
model 14347
step
title +Ram Mounts
#include main_rep_mount,rep="Ironforge",tabard="IFTabard"
|only NightElf,Human,Gnome,Draenei,Worgen
step
'Go to Dun Morogh |goto Dun Morogh |noway |c
step
goto 70.6,48.8
.talk 1261
.buy 1 Swift Brown Ram##18786
.buy 1 Swift Gray Ram##18787
.buy 1 Swift White Ram##18785
.buy 1 Brown Ram##5872
.buy 1 Gray Ram##5864
.buy 1 White Ram##5873
'|modeldisplay 14347
'|modeldisplay 14576
'|modeldisplay 14346
'|modeldisplay 2785
'|modeldisplay 2736
'|modeldisplay 2786
step
.learnmount Swift Brown Ram##23238 |use Swift Brown Ram##18786
.learnmount Swift Gray Ram##23239 |use Swift Gray Ram##18787
.learnmount Swift White Ram##23240|use Swift White Ram##18785
.learnmount Brown Ram##6899 |use Brown Ram##5872
.learnmount Gray Ram##6777 |use Gray Ram##5864
.learnmount White Ram##6898 |use White Ram##5873
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Elekk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(35711) and hasmount(35710) and hasmount(35714) and hasmount(34406) and hasmount(35712) and hasmount(35713)
model 19873
step
title +Elekk Mounts
#include main_rep_mount,rep="Exodar",tabard="ExTabard"
|only Dwarf,Human,Gnome,NightElf,Worgen
step
Go to The Exodar |goto The Exodar |noway |c
step
goto 81.6,51.8
.talk 17584
.buy 1 Great Blue Elekk##29745
.buy 1 Great Green Elekk##29746
.buy 1 Great Purple Elekk##29747
.buy 1 Brown Elekk##28481
.buy 1 Gray Elekk##29744
.buy 1 Purple Elekk##29743
'|modeldisplay 19871
'|modeldisplay 19873
'|modeldisplay 19872
'|modeldisplay 17063
'|modeldisplay 19869
'|modeldisplay 19870
step
.learnmount Great Blue Elekk##35713 |use Great Blue Elekk##29745
.learnmount Great Green Elekk##35712 |use Great Green Elekk##29746
.learnmount Great Purple Elekk##35714 |use Great Purple Elekk##29747
.learnmount Brown Elekk##34406 |use Brown Elekk##28481
.learnmount Gray Elekk##35710 |use Gray Elekk##29744
.learnmount Purple Elekk##35711 |use Purple Elekk##29743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Mountain Horse Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(103196) and hasmount(103195)
model 65
step
#include main_rep_mount,rep="Gilneas",tabard="GilTabard"
goto Darnassus 37.2,47.0
.talk 50307
.buy 1 Gilneas Tabard##64882
|only Dwarf,Human,Gnome,NightElf,Worgen
step
goto Darnassus 48.1,21.8
.talk 55285
.buy 1 Swift Mountain Horse##73839
.buy 1 Mountain Horse##73838
|modeldisplay 65
|modeldisplay 229
step
.learnmount Swift Mountain Horse##103196 |use Swift Mountain Horse##73839
.learnmount Mountain Horse##103195 |use Mountain Horse##73838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Talbuk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(39315) and hasmount(34896) and hasmount(39317) and hasmount(34898) and hasmount(39318) and hasmount(34899) and hasmount(39319) and hasmount(34897)
model 19377
step
#include misc_rep_mount,rep="Kurenai"
.' Click here to continue to earn reputation with the Kurenai |confirm always |only if rep("Kurenai")<=Revered
|next "quest" |only if rep("Kurenai")<=Revered
|next "buy" |only if rep("Kurenai")==Exalted
step
label "quest"
'Routing to proper section |next |only if default
'Routing to proper section |next "bead_grind" |only if completedq(10011)
step
goto Zangarmarsh,41.9,27.2
.talk 18008
..accept 9835
..accept 10115
step
goto 41.7,27.3
.' Click the Wanted Poster|tip On a pink crystal post.
..accept 10116
step
goto 26.4,22.8
.' Click the Daggerfen Poison Vial|tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
.get Daggerfen Poison Vial|q 9848/2
.' It can also be at [25.4,25.0]
step
goto 24.4,27
.' Click the Daggerfen Poison Manual|tip At the top of the big tower, to the right as you reach the top, on the floor.
.get Daggerfen Poison Manual|q 9848/1
step
goto 23.8,26.8
.from Chieftain Mummaki##19174
.get Chieftain Mummaki's Totem|q 10116/1
step
goto 28.2,22.1
.kill 3 Daggerfen Assassin|q 10115/1
.kill 15 Daggerfen Muckdweller|q 10115/2
step
goto 34.6,29.7
.kill 5 Ango'rosh Shaman slain |q 9835/1
.kill 10 Ango'rosh Ogre slain |q 9835/2
step
goto 42.0,27.2
.talk 18008
..turnin 10116
..turnin 9835
..turnin 9835
..turnin 10115
..accept 9839
step
goto 40.8,28.7
.talk 18009
..accept 9830
..accept 9833
..accept 9902
step
goto 41.6,27.3
.talk 18010
..accept 9834
step
goto 48.1,38.4
.kill Fenclaw Thrashers|n
.get 8 Fenclaw Hide|q 9834/1
step
goto 50.4,40.8
.' Locate the drain in Serpent Lake|q 9731/1|tip Swim straight down at this spot.
step
goto 35.9,58.6
.kill 12 Marshfang Slicer|q 9833/1
step
goto 22.4,46.1
.kill Terrorclaw|q 9902/1|tip On a little island.
step
goto 17.3,38.4
.kill Marshlight Bleeders|n|tip They are all around this area on the land, to the north and south.
.get 6 Marshlight Bleeder Venom|q 9830/1
.' You'll be able to find more around [Zangarmarsh,19.6,33.3]
step
goto 17.3,10.2
.kill 10 Ango'rosh Mauler|q 9839/2
.' Click the brown crates and kill ogres around this area
step
goto 18.3,7.7
.kill 1 Overlord Gorefist|q 9839/1|tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
step
goto 40.8,28.7
.talk 18009
..turnin 9830
..turnin 9833
..turnin 9902
step
goto 41.6,27.3
.talk 18010
..turnin 9834
..accept 9905
step
goto 42.2,41.4
.kill Mragesh|q 9905/1|tip He is a big brown hydra underwater.
step
goto 41.6,27.3
.talk 18010
..turnin 9905
step
goto Nagrand 54.2,70
.talk 18416
..accept 9956
step
goto 55.5,68.8
.talk 18233
..accept 9869
step
goto 55,70.5
.talk 18353
..accept 9917
step
goto 54.6,70.7
.' Click the Telaar Bulletin Board|tip To the left of a big tree in a little circle island section in the road.
..accept 9936
..accept 9940
step
goto 54.7,70.9
.talk 18408
..accept 10476
step
goto 54.5,72.1
.talk 18222
..accept 9874
step
goto 54.5,72.3
.talk 18224
..accept 9878
step
goto 63.1,73.2
.' Kill Boulderfist Hunters
.get Boulderfist Plans|q 9917/1
step
goto 67.9,79.3
.kill 10 Kil'sorrow Agent|q 9936/2
step
goto 71.1,82.4
.kill Giselda the Crone##18391|q 9936/1
step
goto 72.6,70.7
.talk 18369
..accept 9923
.' Kill Boulderfist ogres
.collect Boulderfist Key##25490 |q 9923 |sticky
.' Free Corki |q 9923/1 |tip Click his cage to free him.
step
goto 60.7,22.1
.talk 18072
..turnin 9869
step
goto 48.3,21.5
.kill 5 Warmaul Shaman|q 9940/2
.kill 5 Warmaul Reaver|q 9940/3
.' Kill Warmaul mobs
.get 10 Obsidian Warbeads|q 10476/1
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413|q 9940/1
step
goto 27.9,29.7
.get 10 Telaar Supply Crate|q 9956/1|tip They look like little grey boxes on the ground.
step
goto 29.5,43.5
.kill 10 Murkblood Scavenger|q 9878/1
.kill 5 Murkblood Raider|q 9878/2
step
goto 33.2,47.7
.' Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water|use Torch of Liquid Fire##24560
.' Burn 10 Sunspring Villager Corpses |q 9874/1
step
goto 54.5,72.3
.talk 18224
..turnin 9878
step
goto 54.5,72.1
.talk 18222
..turnin 9874
step
goto 54.2,70
.talk 18416
..turnin 9956
step
goto 55.5,68.8
.talk 18183
..turnin 9923
..accept 9924
step
goto 55,70.5
.talk 18353
..turnin 9917
..accept 9918
step
goto 54.8,71
.talk 18408
..turnin 9936
..turnin 9940
..turnin 10476
step
goto 62.7,71.4
.' Fight Lump until he's almost dead|tip Sleeping on the hill.
.'Talk to Lump to interrogate him |q 9918/1
step
goto 55,70.5
.talk 18353
..turnin 9918
..accept 9920
step
goto 54.6,72.2
.talk 18223
..turnin 9920
..accept 9921
step
goto 72.9,69.8
.kill 8 Boulderfist Crusher|q 9921/1
.kill 8 Boulderfist Mystic|q 9921/2
step
goto 54.6,72.2
.talk 18223
..turnin 9921
..accept 9922
step
goto 40.7,35.6
.kill 10 Boulderfist Warrior |q 9922/1
.kill 10 Boulderfist Mage |q 9922/2
.collect 1 Northwind Cleft Key##25509 |q 9924 |sticky
step
goto 39.3,27.5
.' Free Corki inside the cave |q 9924/1|tip Inside the cave, way in the back, in a yellow cage again.
step
'Go outside to 54.5,72.2|goto 54.6,72.2
.talk 18223
..turnin 9922
..accept 10108
step
goto 55.5,68.8
.talk 18183
..turnin 9924
step
goto 73.8,68.1|n
'The path up to Lantresor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c
step
goto 73.8,62.6
.talk 18261
..'Listen to his story
..turnin 10108
..accept 9928
..accept 9927
step
goto 71.4,79.4
.' Click the Kil'sorrow Armaments on the ground|tip The Kil'sorrow Armaments look like skinny, square, tan boxes with a red axe logo on them.
.get 10 Kil'sorrow Armaments|q 9928/1
.' Kill Kil'sorrow mobs
.' Use your Warmaul Ogre Banners on their corpses|use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 46.5,24.3
.kill 10 Warmaul ogres|n
.' Use your Kil'sorrow Banners on their corpses|use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
.' Defend the 2 ogres that appear until they are done placing the corpse |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9933
step
goto 55.5,68.8
.talk 18183
..turnin 9933
step
goto 55.5,68.7
.talk 18183
..accept 9954
step
goto 54.7,70.9
.talk 18408
..accept 9938
step
goto Nagrand,54.8,70.5
.talk 18416
..accept 9982
step
.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
.' Click here to proceed |confirm
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
.' Follow the path around this are to look for _Durn the Hungerer_
.kill Durn the Hungerer |q 9938/1
step
goto 27.3,43.1
.talk 18417
..turnin 9982
..accept 9991 |tip You will fly around on a drake to view The Twilight Ridge.
..turnin 9991
..accept 9999
step
goto 24.5,37.9
.kill 2 Felguard Legionnaire |q 9999/1
.kill 3 Mo'arg Engineer |q 9999/2
.kill 8 Gan'arg Tinkerer |q 9999/3
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
goto 27.0,23.7 |n
.' Enter the Cave here |goto 27.0,23.7,0.5 |noway |c
step
goto 29.5,26.1
.talk 18445
|tip You may have to fight the _65 Elite_ standing next to the cage.
..turnin 9954
..accept 9955
step
goto 27.0,23.7 |n
.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 27.2,18.7 |n
.' Enter the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto Nagrand,25.8,13.8
.' Follow the path up and around
.from Cho'war the Pillager##18423+
.collect Cho'war's Key##25648 |q 9955
step
goto 27.2,18.7 |n
.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto 27.0,23.7 |n
.' Enter the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 29.5,26.1
.' Click _Corki's_ cage to unlock it
.' Free Corki |q 9955/1 |tip You may have to fight the _65 Elite_ standing next to the cage.
step
goto 27.0,23.7 |n
.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 54.7,70.9
.talk 18408
..turnin 9938
step
goto 55.5,68.7
.talk 18183
..turnin 9955
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
.from "Demos, Overseer of Hate##18535"
.collect Fel Cannon Activator##25770 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from "Xirkos, Overseer of Fear##18536"
.collect Fel Cannon Activator##25771 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
.' Destoy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
.' Once you have completed the above quests, you will have to grind your way to exalted.
.' Click to proceed. |confirm
step
label	"bead_grind"
goto Nagrand,48.9,22.7
.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
..collect Obsidian Warbeads##25433 |n
.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
.' Collect beads in sets of 10.
.' Click here when you're ready to turn in. |confirm
step
label	"turn_in"
goto Nagrand,54.7,70.9
.talk 18408
..accept 10477 |instant |repeatable
.' Click here to go back to farming. |next "bead_grind" |confirm |only if rep("Kurenai")<=Revered
.' Congratulations, you are now Exalted with The Kurenai! |condition rep("Kurenai")>=Exalted |only if rep("Kurenai")>=Exalted
step
label "buy"
goto Nagrand,54.6,75.0
.talk 20240
.buy 1 Reins of the Cobalt Riding Talbuk##31830
.buy 1 Reins of the Cobalt War Talbuk##29227
.buy 1 Reins of the Silver Riding Talbuk##31832
.buy 1 Reins of the Silver War Talbuk##29229
.buy 1 Reins of the Tan Riding Talbuk##31834
.buy 1 Reins of the Tan War Talbuk##29230
.buy 1 Reins of the White Riding Talbuk##31836
.buy 1 Reins of the White War Talbuk##29231
'|modeldisplay 21073
'|modeldisplay 19375
'|modeldisplay 21075
'|modeldisplay 19378
'|modeldisplay 21077
'|modeldisplay 19376
'|modeldisplay 21076
'|modeldisplay 19377
step
.learnmount Cobalt Riding Talbuk##39315 |use Reins of the Cobalt Riding Talbuk##31830
.learnmount Cobalt War Talbuk##34896 |use Reins of the Cobalt War Talbuk##29227
.learnmount Silver Riding Talbuk##39317 |use Reins of the Silver Riding Talbuk##31832
.learnmount Silver War Talbuk##34898 |use Reins of the Silver War Talbuk##29229
.learnmount Tan Riding Talbuk##39318 |use Reins of the Tan Riding Talbuk##31834
.learnmount Tan War Talbuk##34899 |use Reins of the Tan War Talbuk##29230
.learnmount White Riding Talbuk##39319 |use Reins of the White Riding Talbuk##31836
.learnmount White War Talbuk##34897 |use Reins of the White War Talbuk##29231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Camel Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88748) and hasmount(88749)
model 37492
step
label	hub
title +Camel Mounts
#include main_rep_mount,rep="Ramkahen",tabard="RamkahenTabard"
.'_
.' Click here for more options |confirm
step
'You can use our _dailies guide_ to earn reputation, or use our _leveling guide_ to get the prequests done for this faction.
.' Lastly, you can run dungeons with the _Ramkahen Tabard_ and continue to earn rep this way.
.' Click here to use the Dailies guide |confirm |next dailies
.'_
.' Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if ZGV.guidesets['LevelingACATA']
step
label dailies
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
'You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next hub
step
goto Uldum,54.0,33.3
.talk 48617
.buy 1 Reins of the Brown Riding Camel##63044 |n
.buy 1 Reins of the Tan Riding Camel##63045 |n
'|modeldisplay 35136
'|modeldisplay 35134
.'_
.learnmount Brown Riding Camel##88748 |use Reins of the Brown Riding Camel##63044
.learnmount Tan Riding Camel##88749 |use Reins of the Tan Riding Camel##63045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Spectral Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(92231)
model 37259
step
label "start"
' This will require that you be exalted with the Baradin Wardens. |tip The Spectral Steed costs 165 Tol Barad Commendations.
.earn 165 Tol Barad Commendation##391
.' _Exalted_ with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted
.' Click here to move on to the dailies. |confirm |next
|next "buy"
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to continue |confirm
step
goto Tol Barad Peninsula,72.9,60.9
.talk 48254
..accept 28275
..accept 27987
..accept 27978
..accept 27991
..accept 27975
..accept 27973
step
goto 73.4,59.2
.talk 47240
..accept 28059
..accept 28063
..accept 28130
..accept 28137
..accept 28065
step
goto 73.7,57.6
.talk 48255
..accept 27948
..accept 27972
..accept 27970
..accept 27971
..accept 28050
..accept 27944
step
goto 74.8,59.6
.talk 48250
..accept 28046
..accept 27967
..accept 27992
..accept 27966
..accept 27949
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 27978/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 27987/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28137/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28130/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+ |q 27944/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 27948/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 27972/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28063/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 27975/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28275/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 27973/1
step
goto 40.2,57.9
.kill 5 Restless Infantry##46823 |q 28046/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 27992/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 27967/1
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 27966/1
.click Forgotten Soldier's Tombstone##2452
.' Release 6 Tortured Souls |q 27949/1
step
goto 72.9,60.9
.talk 48254
..turnin 28275
..turnin 27987
..turnin 27978
..turnin 27991
..turnin 27975
..turnin 27973
step
goto 73.4,59.2
.talk 47240
..turnin 28059
..turnin 28063
..turnin 28130
..turnin 28137
..turnin 28065
step
goto 73.7,57.6
.talk 48255
..turnin 27948
..turnin 27972
..turnin 27970
..turnin 27971
..turnin 28050
..turnin 27944
step
goto 74.8,59.6
.talk 48250
..turnin 28046
..turnin 27967
..turnin 27992
..turnin 27966
..turnin 27949
step
'The quests below will only be able to be done if your faction currently controls Tol Barad.
.' Click here to proceed to the dailies. |confirm
.' Click here if your faction does not control Tol Barad. |confirm |next "dailyend"
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to proceed. |confirm
step
goto Tol Barad,50.9,49.7
.talk 48066
..accept 28122
..accept 28162
..accept 28163
step
goto 51.4,49.6
.talk 48061
..accept 28165
..accept 28185
..accept 28186
step
goto 51.5,49.5
.talk 48039
..accept 28117
..accept 28120
..accept 28118
step
goto 51.5,49.6
.talk 48074
..accept 28232
..accept 28188
..accept 28223
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28185/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28165/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28186/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28162/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28223/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28188/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28232/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28118/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28117/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28120/1
step
goto 51.1,29.7
.from Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
.kill 12 Horde Infantry |q 28163/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28122/1 |tip He patrols around Baradin Hold.  Some searching may be required.
step
goto Tol Barad,50.9,49.7
.talk 48066
..turnin 28122
..turnin 28162
..turnin 28163
step
goto 51.4,49.6
.talk 48061
..turnin 28165
..turnin 28185
..turnin 28186
step
goto 51.5,49.5
.talk 48039
..turnin 28117
..turnin 28120
..turnin 28118
step
goto 51.5,49.6
.talk 48074
..turnin 28232
..turnin 28188
..turnin 28223
step
label "dailyend"
'Congratulations, you have reached the end of the dailies for today.
.' You will have to come back again tomorrow in order to continue gaining rep for this faction.
.' Click here to go back to the beginning of the dailies portion of this guide. |confirm |next "start"
step
label "buy"
goto Tol Barad Peninsula,72.6,62.6
.earn 165 Tol Barad Commendation##391
.' Click here if you need more tokens. |next "start" |confirm
.talk 47328
.buy 1 Reins of the Spectral Steed##64998
'|modeldisplay 37259
step
.learnmount Spectral Steed##92231 |use Reins of the Spectral Steed##64998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ice Mammoth & Grand Ice Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
achieveid 2082,2083
condition end hasmount(59799)
model 27242
step
'Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
'Proceeding to Friendly |next friendly |only if rep('The Sons of Hodir')==Friendly
'Proceeding to Honored |next honored |only if rep('The Sons of Hodir')==Honored
'Proceeding to Revered |next revered |only if rep('The Sons of Hodir')==Revered
'Proceeding to Buy Mount |next BuyMount |only if rep('The Sons of Hodir')==Exalted
step
#include "A_Sons_Hodir_Pre-Quests"
step
label	hub
'Proceeding to Friendly Dailies |next friendly |only if rep('The Sons of Hodir')<=Friendly
'Proceeding to Honored Dailies |next honored |only if rep('The Sons of Hodir')==Honored
'Proceeding to Revered Dailies |next revered |only if rep('The Sons of Hodir')>=Revered
step
label	friendly
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006
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
.' Click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next hub
step
label	honored
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
step
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
step
'Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
step
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
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
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
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
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next hub
step
label	revered
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
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
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
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
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |n
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
.' Click here to return to the beginning of the Dailies |confirm
|next hub |only if rep('The Sons of Hodir')<Exalted
|next BuyMount |only if rep('The Sons of Hodir')==Exalted
step
label "BuyMount"
goto 66.0,61.4
.talk 32540
.buy 1 Reins of the Ice Mammoth##44080
.buy 1 Reins of the Grand Ice Mammoth##43961
'|modeldisplay 27242
'|modeldisplay 27239
step
.learnmount Ice Mammoth##59799 |use Reins of the Ice Mammoth##43958
.learnmount Grand Ice Mammoth##61470 |use Reins of the Grand Ice Mammoth##43961
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden King",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(90621)
model 36213
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs to be _level 25_
.' _Guild Level 25_ |achieve 4912
step
goto Stormwind City,64.6,76.8
.talk 46602
.buy 1 Reins of the Golden Lion King##62298
'|modeldisplay 36213
step
.learnmount Golden King##90621 |use Reins of the Golden Lion King##62298
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Fossilized Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(84751)
model 34410
step
'This mount is a _rare Archaeology "Fossil"_ solve
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
.talk 44238 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
|confirm |only if default
step
'Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Raptor"_. Solve this Archaeology puzzle.
.collect 1 Fossilized Raptor##60954
'|modeldisplay 34410
step
.learnmount Fossilized Raptor##84751 |use Fossilized Raptor##60954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Ultramarine Qiraji Battle Tank",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(92155)
model 15678
step
'This mount is a _rare Archaeology "Tol'vir"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
.talk 44238 |only if skillmax("Archaeology")<1
'Use the _Archaeology profession_ section of this guide to reach _450 Archaeology_ |only if skill("Archaeology")<450
.skill Archarology,450
step
'Open your _world map_, find dig sites in _Kalimdor_ and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Scepter of Azj'Aqir"_. _Solve_ this Archaeology puzzle |tip This is a very rare Archaeology solve. You might be doing archeology for a while.
.collect 1 Scepter of Azj'Aqir##64883
'|modeldisplay 15678
step
.learnmount Ultramarine Qiraji Battle Tank##92155 |use Scepter of Azj'Aqir##64883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22717)
model 14337
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black War Steed Bridle##29468
'|modeldisplay 14337
step
.learnmount Black War Steed##22717 |use Black War Steed Bridle##29468
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Ram",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22720)
model 14577
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black War Ram##29467
'|modeldisplay 14577
step
.learnmount Black War Ram##22720 |use Black War Ram##29467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Elekk",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(48027)
model 23928
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Reins of the Black War Elekk##35906
|modeldisplay 23928
step
.learnmount Black War Elekk##48027 |use Reins of the Black War Elekk##35906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Tiger",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22723)
model 14330
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Reins of the Black War Tiger##29471
'|modeldisplay 14330
step
.learnmount Black War Tiger##22723 |use Reins of the Black War Tiger##29471
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black Battlestrider",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22719)
model 14372
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black Battlestrider##29465
'|modeldisplay 14372
step
.learnmount Black Battlestrider##22719 |use Black Battlestrider##29465
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Stormpike Battle Charger",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(23510)
model 14777
step
.' In order to earn this mount, you will need to run Alterac Valley and become Exalted with the Frostwolf Clan.
.' Click here to move to the next step of the guide. |confirm
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Hillsbrad Foothills,44.6,46.6
.talk 13217
.buy 1 Stormpike Battle Charger##19030
'|modeldisplay 14777
step
.learnmount Stormpike Battle Charger##23510 |use Stormpike Battle Charger##19030
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(59785)
model 25450
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
.' You cannot buy this mount unless your faction owns Wintergrasp.
|confirm
step
goto Wintergrasp 51.6,17.6
.talk 32294
.buy 1 Reins of the Black War Mammoth##43956
'|modeldisplay 25450
step
.learnmount Black War Mammoth##59785 |use Reins of the Black War Mammoth##43956
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark Talbuk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(34790) and hasmount(39316)
model 19303
step
'In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
|confirm
step
'Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 350 total but can only have 100 at a time.
'When you get 100 Samples complete the quest _"Oshu'gun Crystal Powder"_ until you have 35 Halaa Research Tokens.
|confirm
step
goto Nagrand 41.2,44.2
.talk 18816
..accept 10075
..turnin 10075
.collect 35 Halaa Research Token##26044
step
'In order to obtain Halaa Battle Tokens you will need to defeat enemy players within or around Halaa
.collect 170 Halaa Battle Token##26045
step
goto 42.8,42.6
.talk 21474
.buy 1 Reins of the Dark War Talbuk##29228
.buy 1 Reins of the Dark Riding Talbuk##28915
|modeldisplay 19303
|modeldisplay 21074
step
.learnmount Dark War Talbuk##34790 |use Reins of the Dark War Talbuk##29228
.learnmount Dark Riding Talbuk##39316 |use Reins of the Dark Riding Talbuk##28915
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Bear",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(60119)
model 27819
step
'This mount is a reward for completing the _"For The Alliance!"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect 1 Black War Bear##44224
|modeldisplay 27819
step
.learnmount Black War Bear##60119 |use Black War Bear##44224
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Qiraji Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(25953) and hasmount(26056) and hasmount(26054) and hasmount(26055)
model 15681
step
goto Ahn'Qiraj: The Fallen Kingdom 46.9,7.7 |n
.' Enter _Temple of Ahn'Qiraj_ here |goto Ahn'Qiraj |noway |c
step
'Traverse through Temple of Ahn'Qiraj
.' Kill any and all mobs in the instance
.collect 1 Blue Qiraji Resonating Crystal##21218
.collect 1 Green Qiraji Resonating Crystal##21323
.collect 1 Red Qiraji Resonating Crystal##21321 |tip Why? Because It's Red! Achievement.
.collect 1 Yellow Qiraji Resonating Crystal##21324
'|modeldisplay 15672
'|modeldisplay 15679
'|modeldisplay 15681
'|modeldisplay 15680
step
.learnmount Blue Qiraji Battle Tank##25953 |use Blue Qiraji Resonating Crystal##21218
.learnmount Green Qiraji Battle Tank##26056 |use Green Qiraji Resonating Crystal##21323
.learnmount Red Qiraji Battle Tank##26054 |use Red Qiraji Resonating Crystal##21321
.learnmount Yellow Qiraji Battle Tank##26055 |use Yellow Qiraji Resonating Crystal##21324
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Fiery Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(36702)
model 19640
step
goto Karazhan 45.7,83.3
.from Attumen the Huntsman##16152 |tip Be sure to kill any enemy you come across before the encounter or they will all aggro.
.collect 1 Fiery Warhorse's Reins##30480 |tip This has a .9% drop rate, be sure to come back here every week to have a better chance of obtaining it!
'|modeldisplay 19640
step
.learnmount Fiery Warhorse##36702 |use Fiery Warhorse's Reins##30480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Grand Black War Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(61467)
model 27241
step
goto Vault of Archavon 50.0,39.0
'_Traverse_ through _Vault of Archavon_
.from Archavon the Stone Watcher##31125
.from Toravon the Ice Watcher##38433
.from Emalon the Storm Watcher##33993
.from Koralon the Flame Watcher##35013
.collect 1 Reins of the Grand Black War Mammoth##44083 |tip This has an extremely low drop rate off each boss (Less than 1%)
|modeldisplay 27241
step
.learnmount Grand Black War Mammoth##61467 |use Reins of the Grand Black War Mammoth##44083
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Spectral Tigers",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(42777)
model 21974
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 21974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Big Battle Bear",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(51412)
model 25335
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 25335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Wooly White Rhino",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74918)
model 31721
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Savage Raptor",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(97581)
model 38048
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Swift Shorestrider",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(101573)
model 17011
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Magic Rooster",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(65917)
model 29344
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 29344
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\White Riding Camel",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102488)
model 35899
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 35899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Riding Turtle",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(30174)
model 17158
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17158
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket X-TREME",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46199)
model 23647
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23647
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46197)
model 23656
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23656
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Mottled Drake",[[
description These mounts can only be obtained be
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(93623)
model 37231
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Amani Dragonhawk",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(96503)
model 37800
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Blazing Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74856)
model 31803
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31803
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Corrupted Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102514)
model 38972
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38972
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Grey Riding Camel",[[
condition end hasmount(88750)
model 35135
step
label start
map Uldum
'This mount drops off a rare spawn called Dormus the Camel-Hoarder. You get to him by clicking the Mysterious Camel Figurines around Uldum. They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
.' Check all the waypoints in each step for a chance to find the Camel Figurine.
|confirm
step
goto 22.0,64.2
|tip Next to this table in the inn.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 22.2,64.0
|tip Under the this tent, next to some boxes.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 24.2,59.8
|tip In between the wagon and the stone rock.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 24.6,60.0
|tip Behind this wagon.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 25.4,65.6
|tip Next to this tall wooden post.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 25.6,65.8
|tip Next to the boxes with nets over them.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 26.2,64.8
|tip Next to this wagon with the back down.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 26.2,65.2
|tip Next to this light colored log in the sand.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 28.6,63.6
|tip Next to the stairs at this wall.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 30.2,62.8
|tip Next to the corner of this wall.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 30.4,60.6
|tip Next to this tall and wide pillar.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 30.8,67.4
|tip At the bottom of these stairs.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 31.0,66.2
|tip At the top of these stairs, next to the stone ramp and pillar.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 31.6,69.2
|tip Next to this pillar, near the stairs going down.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.0,59.8
|tip Next to this tall wide pillar.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.0,67.6
|tip At the top of these stairs.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.0,71.8
|tip On this platform in the water.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.2,62.8
|tip Next to this door and small stairway.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 37.0,64.2
|tip Next to this pillar and ledge.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 38.2,60.4
|tip At the bottom of these stairs.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 38.6,54.8
|tip At the edge of this small cliff.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 47.2,76.8
|tip Next to this bench.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 49.0,75.8
|tip At the top of these stairs.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 49.2,75.8
|tip Next to this tree.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.2,73.4
|tip Next to these carts with items inside.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.4,73.6
|tip Next to these tables with weapons on them.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.4,72.4
|tip Next to these tables with weapons on them.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.6,72.2
|tip Next to these tables with weapons on them.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 51.0,79.6
|tip Next to these wagons and this table with weapons.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 51.8,70.6
|tip Next to these square stones.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 73.4,73.8
|tip Inside this room, check all 4 corners.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 70.0,58.2
|tip Look around both sets of stairs here.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 72.0,44.0
|tip Next to this little stone house.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 64.6,30.4
|tip In this corner with piles of sand.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 52.4,28.0
|tip On the edge of this tile in a star formation.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 52.2,27.8
|tip Next to this pillar and rocks on the ground.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.6,31.6
|tip Next to this tropical tree.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 45.2,15.8
|tip Next to this burried pillar.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 34.2,21.4
|tip Next to this tent with a bonfire nearby.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 34.2,19.6
|tip Next to this wall.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.8,25.4
|tip Next to this group of tents.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.2,28.8
|tip On top of this pillar.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 33.2,28.2
|tip In this rubble, next to the building.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 29.8,25.0
|tip In between these two trees with shrubbery.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 29.8,20.6
|tip Next to this Rock and Tree.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 51.8,49.6
|tip Next to this group of trees.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 52.0,51.0
|tip In this middle area of these houses.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 51.4,51.2
|tip Next to this small building.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 50.6,50.6
|tip At the bottom of this ramp.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 48.0,46.6
|tip Next to this group of trees, on this cliff.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 46.2,44.8
|tip Next to these group of trees.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 40.8,49.8
|tip Next to this rock formation.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 40.2,43.2
|tip In the middle of this rubble.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 40.0,44.8
|tip Next to this very little doorway with a triangle on it.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 40.0,38.6
|tip Next to this large pillar and wall with birds on it.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 32.6,47.8
|tip At the bottom of these stairs.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 32.0,45.0
|tip Next to the Pile of bones and this small cliff.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
goto 25.4,51.2
|tip Next to this wagon with items inside it.
|confirm
.'_
.' If you found the correct figurine, click here |confirm |next camel
step
'If you still have not found the figurine, click here to start over. Remember, this has a low chance of spawning.
|confirm |next start
step
label camel
.from Dormus the Camel-Hoarder |n
.collect 1 Reins of the Grey Riding Camel##63046 |n
|modeldisplay 35135
.'_
.learnmount Grey Riding Camel##88750 |use Reins of the Grey Riding Camel##63046
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Proto Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59996)
model 28041
step
goto Howling Fjord,57.3,46.6 |n
.' Enter _Heroic Utgarde Pinnacle_ here |goto Utgarde Pinnacle |noway |c |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
goto Utgarde Pinnacle,68.3,35.5
.from Skadi the Ruthless##26693
.collect 1 Reins of the Blue Protodrake##44151 |n
|tip This has a 1.2% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 28041
.learnmount Blue Protodrake##59996 |use Reins of the Blue Protodrake##44151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59569)
model 27812
step
goto The Culling of Stratholme/1 87.5,71.3
'This mount is obtained in the heroic mode version of The Culling of Stratholme.
'To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
'Obtaining this mount is much easier with a group of 3+ players
.' Enter the Culling of Stratholme |goto The Culling of Stratholme |c
step
goto The Culling of Stratholme,86.5,61.6
.talk 26527
.' Tell her you know what's going on and to skip ahead to the real action
..' Say "Yes, please!" |goto The Culling of Stratholme,47.4,18.6,0.5 |noway |c |tip This will start the timed event
step
goto The Culling of Stratholme/2 58.8,36.8
.talk 26499
.' Tell him:
.' <We're only doing what is best for Lordaron, your Highness.>
|confirm
step
'Traverse through The Culling of Stratholme instance |tip Make sure you make it to this next point with the timer still on, otherwise you will not receive the bronze drake.
goto 51.6,41.6
.from Infinite Corruptor##32273
.collect 1 Reins of the Bronze Drake##43951
'|modeldisplay 27812
step
.learnmount Bronze Drake##59569 |use Reins of the Bronze Drake##43951
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Drake of the North Wind",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(88742)
model 35755
step
'Use the _dungeon finder_ to take you to _The Vortex Pinnacle: Heroic_ |tip It is much easier to obtain this mount with friends that will let you have it
.' Go to The Vortex Pinnacle |goto The Vortex Pinnacle |noway |c
step
'_Traverse_ through _The Vortex Pinnacle_ instance
goto 52.2,80.2
.from Altairus##43873
.collect 1 Reins of the Drake of the North Wind##63040 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 35755
step
.learnmount Drake of the North Wind##88742 |use Reins of the Drake of the North Wind##63040
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Vitreous Stone Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(88746)
model 35751
step
.' For this mount, you can do it on _Normal_ or _Heroic_ difficulty.
.' To reset the instance, you can right click your character portrait and select the _Reset all isntances_ option.
.' Keep in mind you can only reset instances so many times.
|confirm
step
'_Traverse_ through _The Stonecore_ instance
goto The Stonecore,36.6,45.8
.from Slabhide##43214
.collect 1 Reins of the Vitreous Stone Drake##63043 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 35751
step
.learnmount Vitreous Stone Drake##88746 |use Reins of the Vitreous Stone Drake##63043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59568)
model 25256
step
'Gather up 3 friends and run to the Oculus on Heroic Difficulty |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
.' The difficulty must be set to  _Heroic_.
|confirm
step
goto The Oculus/0 49.5,48.9
.from Ley-Guardian Eregos##27656
.click Cache of Eregos##51
.collect Cache of the Ley-Guardian
.' Open up the Cache of the Ley-Guardian in your bags |use Cache of the Ley-Guardian##52676 |tip This has a very low chance of dropping the mount. (About 1.4%)
.collect 1 Reins of the Blue Drake##43953
|modeldisplay 25256
step
.learnmount Blue Drake##59568 |use Reins of the Blue Drake##43953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Gryphons",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(32240) and hasmount(32235) and hasmount(32239) and hasmount(32289) and hasmount(32292) and hasmount(32290) and hasmount(32242)
model 35521,36787,35534,35548,34878,34879,35358
step
goto Stormwind City,71.4,72.2
.talk 43768
.buy 1 Swift Blue Gryphon##25473
.buy 1 Swift Green Gryphon##25528
.buy 1 Swift Purple Gryphon##25529
.buy 1 Swift Red Gryphon##25527
.buy 1 Ebon Gryphon##25471
.buy 1 Golden Gryphon##25470
.buy 1 Snowy Gryphon##25472
'|modeldisplay 17759
'|modeldisplay 17703
'|modeldisplay 17717
'|modeldisplay 17718
'|modeldisplay 17694
'|modeldisplay 17697
'|modeldisplay 17696
step
.learnmount Swift Blue Gryphon##32242 |use Swift Blue Gryphon##25473
.learnmount Swift Green Gryphon##32290 |use Swift Green Gryphon##25528
.learnmount Swift Purple Gryphon##32292 |use Swift Purple Gryphon##25529
.learnmount Swift Red Gryphon##32289 |use Swift Red Gryphon##25527
.learnmount Ebon Gryphon##32239 |use Ebon Gryphon##25471
.learnmount Golden Gryphon##32235 |use Golden Gryphon##25470
.learnmount Snowy Gryphon##32240 |use Snowy Gryphon##25472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Armored Snowy Gryphon",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(61229)
model 34889
step
'This _mount_ costs _2,000_ gold. ||tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
goto Dalaran 58.1,42.1
.talk 32216
.buy 1 Armored Snowy Gryphon##44689
'|modeldisplay 34889
step
.learnmount Armored Snowy Gryphon##61229 |use Armored Snowy Gryphon##44689
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Vial of the Sands",[[
description This guide will walk you through obtaining the Sandstone Drake flying mount.
condition end hasmount(93326)
model 35750
step
'You will need at least 29,000 gold to obtain this mount
|confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")>=525
|next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label "AlchemistVialoftheSandsLearn"
'Since you're an Alchemist you can make this item yourself:
.' Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
.' Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
.collect Canopic Jar##64657 |n
.' Click the Canopic Jars |use Canopic Jar##64657
.collect 1 Recipe: Vial of the Sands##67538
.' Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")==525
step
'Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
.learn Vial of the Sands##93328
next "FarmVialoftheSands" |only if skill("Alchemy")==525
only if skill("Alchemy")==525
step
label "AHVialoftheSands"
goto Stormwind City,61.1,70.6
.talk 8719
.buy 1 Vial of the Sands##65891 |next "learn"
.' Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label "FarmVialoftheSands"
goto 61.1,70.6
.talk 8719
.buy 12 Truegold##58480
.buy 8 Flask of the Winds##58087
.buy 8 Flask of Titanic Strength##58088
.buy 8 Deepstone Oil##56850
.' If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
goto Uldum,26.6,7.2
.talk 49406
.buy 8 Sands of Time##65893
.buy 1 Pyrium-Laced Crystalline Vial##65892
step
.create Vial of the Sands##93328,Alchemy,1 total |only if skill("Alchemy")>=525
'Find an Alchemist to make your Vial of the Sands |tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
.collect 1 Vial of the Sands##65891
'|modeldisplay 35750
step
label "learn"
.learnmount Sandstone Drake##93326 |use Vial of the Sands##65891
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Dailies with Pre-Quests",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
condition end hasmount(39803) and hasmount(39798) and hasmount(39801) and hasmount(39800) and hasmount(39802)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next menu |only if completedq(11073)
step
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
.' Here[73.2,87.9]
.' Here[75.2,81.3]
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
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
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
.' Here[73.2,87.9]
.' Here[75.2,81.3]
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
.' Here[73.2,87.9]
.' Here[75.2,81.3]
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
.' Click here to do the Dailys and then grind |confirm always |next "dailies" |or
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
.' Here[73.2,87.9]
.' Here[75.2,81.3]
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
.' Here[73.2,87.9]
.' Here[75.2,81.3]
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
|confirm always
|next "menu" |only if rep("Sha'tari Skyguard")<=Revered
|next |only if rep("Sha'tari Skyguard")==Exalted
step
goto 64.3,66.2
.talk 23367
.buy Green Riding Nether Ray##32314
.buy Red Riding Nether Ray##32317
.buy Blue Riding Nether Ray##32319
.buy Purple Riding Nether Ray##32316
.buy Silver Riding Nether Ray##32318
'|modeldisplay 21152
'|modeldisplay 21158
'|modeldisplay 21156
'|modeldisplay 21157
'|modeldisplay 21155
step
.learnmount Green Riding Nether Ray##39798 |use Green Riding Nether Ray##32314
.learnmount Red Riding Nether Ray##39800 |use Red Riding Nether Ray##32317
.learnmount Blue Riding Nether Ray##39803 |use Blue Riding Nether Ray##32319
.learnmount Purple Riding Nether Ray##39801 |use Purple Riding Nether Ray##32316
.learnmount Silver Riding Nether Ray##39802 |use Silver Riding Nether Ray##32318
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518)
model 21524
step
'Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
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
step
label "Daily"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
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
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
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
.' Click here to go back to the first daily for tomorrow. |confirm |next "Daily"
' Become Friendly with the Netherwing. |condition rep('Netherwing')>=Friendly |next "F_PreQuest"
step
label "F_PreQuest"
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
.kill 1 Crazed Murkblood Foreman |q 11083/1
.kill 5 Crazed Murkblood Miner |q 11083/2
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
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
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
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around 60.4,45.2
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
step
label "Daily2"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if yu have your Skinning skill to at least 350. |or
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
'Go inside the mine to [65.1,87.5]
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
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
.' Click here to go back to the dailies for tomorrow. |confirm |next "Daily2"
' Become Honored with the Netherwing. |condition rep('Netherwing')>=Honored |next "H_PreQuest"
step
label "H_PreQuest"
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
step
label "Daily3"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
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
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
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
.' Click here to go back to the dailies for tomorrow. |confirm |next "Daily3"
' Become Revered with the Netherwing. |condition rep('Netherwing')>=Revered |next "R_PreQuest"
step
label "R_PreQuest"
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
.kill Barash the Den Mother |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer |q 11041/1
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
step
label "Daily4"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
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
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
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
.' Click here to go back to the dailies for tomorrow. |confirm |next "Daily4"
' Become Exalted with the Netherwing. |condition rep('Netherwing')==Exalted |next "E_PreQuest"
step
label "E_PreQuest"
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
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
goto Shadowmoon Valley,65.7,86.0
.talk 23489
.buy 1 Reins of the Azure Netherwing Drake##32858
.buy 1 Reins of the Cobalt Netherwing Drake##32859
.buy 1 Reins of the Violet Netherwing Drake##32862
.buy 1 Reins of the Purple Netherwing Drake##32860
.buy 1 Reins of the Veridian Netherwing Drake##32861
.buy 1 Reins of the Onyx Netherwing Drake##32857
'|modeldisplay 21521
'|modeldisplay 21525
'|modeldisplay 21524
'|modeldisplay 21523
'|modeldisplay 21522
'|modeldisplay 21520
step
.learnmount Azure Netherwing Drake##41514 |use Reins of the Azure Netherwing Drake##32858
.learnmount Cobalt Netherwing Drake##41515 |use Reins of the Cobalt Netherwing Drake##32859
.learnmount Violet Drake##41518 |use Reins of the Violet Netherwing Drake##32862
.learnmount Purple Netherwing Drake##41516 |use Reins of the Purple Netherwing Drake##32860
.learnmount Veridian Netherwing Drake##41517 |use Reins of the Veridian Netherwing Drake##32861
.learnmount Oynx Netherwing Drake##41513 |use Reins of the Onyx Netherwing Drake##32857
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Drake of the West Wind",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88741)
model 35754
daily
step
label	start
' This will require that you be exalted with the Baradin Wardens.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' Drake of the West Wind costs 200 Tol Barad Commendations.
.' _Exalted_ with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted
.' Click here to move on to the dailies. |confirm
|next only if default
|next exalted |only if rep("Baradin's Wardens")==Exalted
step
label	 dailies
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to continue |confirm
step
goto Tol Barad Peninsula,72.9,60.9
.talk 48254
..accept 28275
..accept 27987
..accept 27978
..accept 27991
..accept 27975
..accept 27973
step
goto 73.4,59.2
.talk 47240
..accept 28059
..accept 28063
..accept 28130
..accept 28137
..accept 28065
step
goto 73.7,57.6
.talk 48255
..accept 27948
..accept 27972
..accept 27970
..accept 27971
..accept 28050
..accept 27944
step
goto 74.8,59.6
.talk 48250
..accept 28046
..accept 27967
..accept 27992
..accept 27966
..accept 27949
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 27978/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 27987/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28137/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28130/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+ |q 27944/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 27948/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 27972/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28063/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 27975/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28275/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 27973/1
step
goto 40.2,57.9
.kill 5 Restless Infantry##46823 |q 28046/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 27992/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 27967/1
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 27966/1
.click Forgotten Soldier's Tombstone##2452
.' Release 6 Tortured Souls |q 27949/1
step
goto 72.9,60.9
.talk 48254
..turnin 28275
..turnin 27987
..turnin 27978
..turnin 27991
..turnin 27975
..turnin 27973
step
goto 73.4,59.2
.talk 47240
..turnin 28059
..turnin 28063
..turnin 28130
..turnin 28137
..turnin 28065
step
goto 73.7,57.6
.talk 48255
..turnin 27948
..turnin 27972
..turnin 27970
..turnin 27971
..turnin 28050
..turnin 27944
step
goto 74.8,59.6
.talk 48250
..turnin 28046
..turnin 27967
..turnin 27992
..turnin 27966
..turnin 27949
step
.' The quests below will only be able to be done if your faction currently controls Tol Barad.
.' Click here to proceed to the dailies. |confirm
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to proceed. |confirm
step
goto Tol Barad,50.9,49.7
.talk 48066
..accept 28122
..accept 28162
..accept 28163
step
goto 51.4,49.6
.talk 48061
..accept 28165
..accept 28185
..accept 28186
step
goto 51.5,49.5
.talk 48039
..accept 28117
..accept 28120
..accept 28118
step
goto 51.5,49.6
.talk 48074
..accept 28232
..accept 28188
..accept 28223
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28185/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28165/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28186/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28162/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28223/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28188/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28232/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28118/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28117/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28120/1
step
goto 51.1,29.7
.from Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
.kill 12 Horde Infantry |q 28163/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28122/1 |tip He patrols around Baradin Hold.  Some searching may be required.
step
goto Tol Barad,50.9,49.7
.talk 48066
..turnin 28122
..turnin 28162
..turnin 28163
step
goto 51.4,49.6
.talk 48061
..turnin 28165
..turnin 28185
..turnin 28186
step
goto 51.5,49.5
.talk 48039
..turnin 28117
..turnin 28120
..turnin 28118
step
goto 51.5,49.6
.talk 48074
..turnin 28232
..turnin 28188
..turnin 28223
step
'You have completed all the dailies today.
.'Click here to return to the start of the guide. |confirm |next start
|only if rep("Baradin's Wardens")<=Revered
step
label	exalted
'You must earn 200 Commendations to purchase the Drake of the West Wind.
.earn 200 Tol Barad Commendation##391
.' Click here to do more dailies |confirm |next dailies
step
goto Tol Barad Peninsula,72.6,62.6
.talk 47328
.buy 1 Reins of the Drake of the West Wind##63039 |n
.'_
.learnmount Drake of the West Wind##88741 |use Reins of the Drake of the West Wind##63039
'|modeldisplay 35754
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Netherwing Egg Hunting",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
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
'Go inside the mine to 64.8,87.2 |n
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
autoscript ZGV:FocusStep(1)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Corrupted Fire Hawk",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(97560)
model 38046
step
'This mount is a reward for completing the _"Glory of the Firelands Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Corrupted Egg of Millagazor##69230
|modeldisplay 38046
step
.learnmount Corrupted Fire Hawk##97560 |use Corrupted Egg of Millagazor##69230
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Green Proto Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(61294)
model 28053
step
'To get the Green Proto-Drake, you must first become Exalted with The Oracles.
.' Earn Exalted with The Oracles |condition rep("The Oracles")==Exalted
|confirm
|next |only if default
|next mount |only if rep("The Oracles")==Exalted
step
'Proceeding to Prequests |next |condition rep('The Oracles')<=Friendly |only if rep('The Oracles')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('The Oracles')>=Friendly |only if rep('The Oracles')>=Friendly
step
#include "A_Oracles_PreQuests"
step
label daily
#include "A_Oracles_Dailies"
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide. |confirm |next "daily"
step
goto Sholazar Basin 54.6,56.2
.talk 31910
.buy Mysterious Egg##39878
step
label	mount
.' You will have to wait a week for the egg to hatch
.' Click the Cracked Egg in your bags |use Cracked Egg##39883
.collect Reins of the Green Proto-Drake##44707 |n
.'_
.learnmount Green Proto-Drake##61294 |use Reins of the Green Proto-Drake##44707
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Bloodbathed Frostbrood Vanquisher",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(72808)
model 31156
step
'This mount is a reward for completing the _"Glory of the Icecrown Raider (10 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Bloodbathed Frostbrood Vanquisher##51954
step
.learnmount Bloodbathed Frostbrood Vanquisher##72808 |use Reins of the Bloodbathed Frostbrood Vanquisher##51954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Icebound Frostbrood Vanquisher",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(72807)
model 31154
step
'This mount is a reward for completing the _"Glory of the Icecrown Raider (25 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Icebound Frostbrood Vanquisher##51955
|modeldisplay 31154
step
.learnmount Icebound Frostbrood Vanquisher##72807 |use Reins of the Icebound Frostbrood Vanquisher##51955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Cenarion War Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
achieveid 893
condition end hasmount(43927)
model 31542
#include "A_Cenarion_Expedition_Faction"
step
label "mount"
goto Zangarmarsh,79.2,63.8
.talk 17904
.buy 1 Cenarion War Hippogryph##33999
'|modeldisplay 31542
step
.learnmount Cenarion War Hippogryph##43927 |use Cenarion War Hippogryph##33999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(59570)
model 23522
step
'This will require you to be _exalted_ with _The Wyrmrest Accord_
#include WATabard
.' Use this tabard and complete dungeons in _Northrend_ to reach _exalted_ |only if rep("The Wyrmrest Accord")<Exalted
.' _Exalted_ with _The Wyrmrest Accord_ |condition rep("The Wyrmrest Accord")>=Exalted
.'_
.' Click here to do Wyrmrest Dailies |confirm
|next |only if default
|next exalted |only if rep("The Wyrmrest Accord")>=Exalted
step
#include "A_Wyrmrest_Pre-Quests"
step
label "dailies"
#include "A_Wyrmrest_Dailies"
step
'You have completed the dailies for today.
|confirm
|next |only if default
|next exalted |only if rep("The Wyrmrest Accord")>=Exalted
step
goto Dragonblight,59.8,53.0
.talk 32533
.buy 1 Reins of the Red Drake##43955
.'_
.learnmount Red Drake##59570 |use Reins of the Red Drake##43955
'|modeldisplay 23522
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Dark Phoenix",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(88990)
model 37145
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs to have the achievement _"Guild Glory of the Cataclysm Raider"_ completed
.' _Guild Glory of the Cataclysm Raider_ |achieve 4988
step
goto Stormwind City,64.6,76.8
.talk 46602
.buy 1 Reins of the Dark Phoenix##63125
'|modeldisplay 37145
step
.learnmount Dark Pheonix##88990 |use Reins of the Dark Phoenix##63125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61451)
model 28060
step
'Click here to use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if  skill("Tailoring")<300
goto Stormwind City,53.1,81.3
.talk 1346
.learn Flying Carpet##60969
step
'You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
.collect 6 Bolt of Netherweave##21840 |next golden
.' Click here to farm this ingredient |confirm |next farm_netherweave
step
label farm_netherweave
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.collect 30 Netherweave Cloth##21877 |n
.create 6 Bolt of Netherweave##21840,Tailoring,6 total
step
label golden
'You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
.collect 4 Golden Draenite##23112 |next arcane
.' Click here to farm this ingredient |confirm |next farm_golden
step
label farm_golden
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
.' Follow the provided path and gather all materials needed.
.collect 4 Golden Draenite##23112
step
'You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
goto Stormwind City/0 61.2,70.6
.collect 4 Arcane Dust##22445 |next a
.' Click here to farm Arcane Dust from dungeons. |confirm |only if skill("Enchanting")>=325
step
goto Utgarde Keep 69.3,73.0
.' Kill any enemy inside of the instance, disenchanting any green  item that they might drop.
.' Note that armors have a higher chance of yielding _Arcane Dust_
.collect 4 Arcane Dust##22445
|only if skill("Enchanting")>=325
step
label a
#include TailorSupplies
.buy 5 Heavy Silken Thread##8343
step
.create Flying Carpet##60969,Tailoring,1 total
.collect 1 Flying Carpet##44554 |n
'|modeldisplay 28060
.learnmount Flying Carpet##61451 |use Flying Carpet##44554
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Magnificent Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61309)
model 28064
step
'Click here to level your tailoring skill if it is not level 425. |next "Profession Guides\\Tailoring\\Tailoring 1-600 Leveling Guide" |only if ZGV.guidesets["ProfessionsA"] |confirm
goto Stormwind City,53.1,81.3
.talk 1346
.learn Magnificent Flying Carpet##60971
|confirm
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 12 Bolt of Imbued Frostweave##41511
.collect 4 Monarch Topaz##36930
.collect 4 Iceweb Spider Silk##42253
|next sup |only if default
.' Click here if you wish to farm these yourself. |confirm
step
goto Icecrown 45,77
.from Chosen Zealot##32175+
..collect 60 Frostweave Cloth##33470
.' Farm the elite mobs inside of the Cathedral of Darkness.
step
goto The Storm Peaks 41,78
.' Farm spiders inside of the cave.
.collect 4 Iceweb Spider Silk##42253
step
goto Stormwind City/0 60.8,70.8
.talk 8670
.buy 4 Monarch Topaz##36930
.buy 24 Infinite Dust##34054
step
.create Bolt of Imbued Frosteweave##55900,Tailoring, 12 total
step
label sup
#include TailorSupplies
.buy 4 Red Dye##2604
.buy 2 Yellow Dye##4341
step
.create Magnificent Flying Carpet##60971,Tailoring,1 total
.collect 1 Magnificent Flying Carpet##44558
'|modeldisplay 28064
step
.learnmount Magnificent Flying Carpet##61309 |use Magnificent Flying Carpet##44558
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Frosty Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(75596)
model 31837
step
'Click here to level your tailoring skill if it is not level 425. |next "Profession Guides\\Tailoring\\Tailoring 1-600 Leveling Guide" |only if ZGV.guidesets["ProfessionsA"] |confirm
.talk 40160
.buy 1 Pattern: Frosty Flying Carpet##54798
.learn Frosty Flying Carpet##75597 |use Pattern: Frosty Flying Carpet##54798
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 4 Frozen Orb##43102
.collect 1 Moonshroud##41594
.collect 1 Spellweave##41595
.collect 1 Ebonweave##41593
.collect 4 Frozen Orb##43102
.' Click here to farm these yourself. |confirm
|next make |only if default
step
goto Icecrown 45,77
.from Chosen Zealot##32175+
..collect 15 Frostweave Cloth##33470
.' Farm the elite mobs inside of the Cathedral of Darkness.
step
goto Stormwind City/0 60.8,70.8
.talk 8670
.buy 4 Frozen Orb##43102
.buy 2 Eternal Life##35625
.buy 2 Eternal Fire##36860
.buy 2 Eternal Shadow##35627
.buy 6 Infinite Dust##34054
step
label make
.create Frosty Flying Carpet##75597,Tailoring,1 total
.collect 1 Frosty Flying Carpet##54797
'|modeldisplay 31837
step
.learnmount Frost Flying Carpet##75596 |use Frosty Flying Carpet##54797
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Flying Machine",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(44153)
model 22719
step
'Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
'Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")<1
#include trainEngineering
.learn Flying Machine##44155
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 2 Fel Iron Casing##23782
.collect 20 Elemental Blasting Powder##23781
.collect 20 Handful of Fel Iron Bolts##23783
|next a |only if default
.' Click here to farm these materials. |confirm
step
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
.collect 52 Fel Iron Ore##23424
.collect 5 Mote of Fire##22574
.collect 10 Mote of Earth##22573
step
label a
#include "vendor_Enchanting"
.buy 8 Star Wood##11291
step
.create Flying Machine##44155,Engineering,1 total
.collect 1 Flying Machine##34060
'|modeldisplay 22719
step
.learnmount Flying Machine##44153 |use Flying Machine##34060
.' _Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Turbo-Charged Flying Machine",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(44151)
model 22720
step
'Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
'Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")<1
#include trainEngineering
.learn Turbo-Charged Flying Machine##44157
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 4 Adamantite Frame##23784
.collect 8 Khorium Power Core##23786
.collect 8 Felsteel Stabilizer##23787
|next a |only if default
.' Click here if you wish to farm this yourself. |confirm
step
map Nagrand
path	72.7,64.7	74.3,60.5	69.1,48.6
path	72.3,43.1	66.1,32.3	57.7,30.8
path	59.5,27.3	49.3,24.1	47.1,20.2
path	39.6,20.4	28.2,12.1	25.7,16.5
path	26.8,23.6	30.9,21.9	27.9,25.3
path	27.5,32.1	23.2,27.8	7.1,39.9
path	25.2,61.1	31.9,81.9	41.8,81.8
path	43.5,73.7	57.4,78.3	43.0,62.2
path	32.2,60.3	29.2,54.1	34.0,52.6
path	29.7,45.7	34.1,44.3	35.5,47.3
path	38.8,36.9	45.5,43.9	42.4,50.9
path	48.0,57.5	51.5,55.6	60.5,56.9
path	56.7,64.0	70.1,83.3	69.8,72.5
.collect 32 Adamantite Ore##23425
.collect 16 Khorium Ore##23426
.collect 80 Mote of Fire##22574
.collect 60 Fel Iron Ore##23424
.collect 40 Eternium Ore##23427
step
label a
goto Shattrath City 65.6,68.8
.talk 19227
.buy 1 Hula Girl Doll##34249
step
.create Turbo-Charged Flying Machine##44157,Engineering,1 total
.collect 1 Turbo-Charged Flying Machine##34061
'|modeldisplay 22720
step
.learnmount Turbo-Charged Flying Machine##44151 |use Turbo-Charged Flying Machine##34061
.' _Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Albino Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(60025)
model 6372
step
'Obtain _50 mounts_, you can use our guide to achieve these |achieve 2143
.' Check your _mailbox_ for your _prize_!
.collect 1 Reins of the Albino Drake##44178
'|modeldisplay 6372
step
.learnmount Albino Drake##60025 |use Reins of the Albino Drake##44178
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Blue Dragonhawk",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(61996)
model 27525
step
'Obtain _100 mounts_ you can use our guide to achieve this |achieve 2536
.' Check your _mailbox_ for your _prize_!
.collect 1 Blue Dragonhawk##44843
'|modeldisplay 27525
step
.learnmount Blue Dragonhawk##61996 |use Blue Dragonhawk##44843
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Flameward Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(97359)
model 38018
step
'This mount is a reward for completing the _"The Molten Front Offensive"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Flameward Hippogryph##69213
|modeldisplay 38018
step
.learnmount Flameward Hippogryph##97359 |use Flameward Hippogryph##69213
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto-Drake",[[
description This guide will walk you through earning the achievements required to obtain the Ironbound Proto-Drake.
condition end hasmount(63956)
model 28953
step
.' This achievement requires that you complete the bosses of Uldaur on their "Hard-Mode" setting, in 25 player mode.
.' Special conditions must be met in order to complete each objective.
|confirm
step
.' _Orbit-uary_
.' This achievement is earned by activating the defense systems.
goto Ulduar/1 52.7,88.2
.talk 33686
.' Tell him to activate the secondary defense system.
|confirm
step
goto Ulduar/1 47.9,37.7
.' Destroy the _Storm Beacons_ as you make your way to the above coordinates.
.' Once at the above coordinate, destroy all enemies in the room. Doing so will prompt _The Flame Leviathan_ to spawn.
.from Flame Leviathan##33113 |tip Note that it is not possible to solo this boss while hard mode is active.
|achieve 2958/1
step
.' _Stokin' the Furnace_
.' This achievement is earned by defeating _Ignis the Furnace Master_ in 4 minutes.
goto 36.8,26.6
.from Ignis the Furnace Master##33118 |tip You will need to do at least 81,000 Damage Per second in order to achieve this.
|achieve 2958/2
step
.' _Iron Dwarf, Medium Rare (25 player)_
.' This achievement is earned by killing 25 Dark Run Guardian Dwarves with Razorscale's Flame Breath.
goto 53.6,26.6
.talk 33210 |tip Doing so will start the event.
.' The easiest way to earn this is to have two tanks; One for adds and one for the boss.
.' Have the second tank pull the Boss to the _East_ side of the room and the boss tank stand at the center.
.' When adds spawn, beat them down to at least _15,000_ health.
.' Harpoon Razorscale down, the dps her down.
.' When the ground phase ends, Razorscale will use _Flame Breath_ on anyone in front of her. Tank two needs to move the adds to her front.
|achieve 2958/3
step
.' _Heartbreaker (25 player)_
.' This achievement is earned by killing XT-002 Deconstructors heart when it is exposed before it is retracted.
.' It will expose it's heart every 25% of its health.
goto 48.6,13.6
.from XT-002 Deconstructor##33293
.' Drop XT's health to 75% to activate it's heart.
.' Dps the heart down as fast as you can.
.' Once the heart dies, it will activate hard mode and XT will regain all health.
|achieve 2958/4
step
.' _I Choose You, Steelbreaker (25 player)_
.' This achievement is earned simply by killing _Steelbreaker_ last.
.' _FOLLOW THE KILL ORDER LISTED BELOW:_
goto Ulduar/2 15.6,54.2
.from Runemaster Molgeim##32927
.from Stormcaller Brundir##32857
.from Steelbreaker##32867
.' Note that killing bosses activates special abilities in the ones that are still alive.
|achieve 2958/5
step
.' _Disarmed (25 player)_
.' Destroy Kologarn's arms and then destroy his body within 12 seconds.
goto 37.4,11.0
.from Right Arm##32934
.' Keep killing the right arm, while lowering the left arms health.
.' Once Kologarn's health is at _35%_, kill the Right AND Left arms.
.from Left Arm##32933
.from Kologarn##32930
|achieve 2958/6
step
.' _Crazy Cat Lady  (25 player)
.' Defeat Auriaya without destroying her sanctum sentries.
goto Ulduar/3 50.8,75.2
.from Auriaya##33515
.' In order to earn this achievement, you _must not_ kill the Sanctum Sentries.
.' They will dish out heavy damage when bundled, so if at all possible, keep them away from each other. |tip They must be 10 yards apart for them not to get a buff.
|achieve 2958/7
step
.' _I Could Say That This Cache Was Rare (25 player)_
.' For this achievement, you will have to defeat Hodir in under 3 minutes.
goto 68.6,64.6
.' This fight is a DPS race.
.' Free the Druids and Shaman trapped in ice to provide your group with additional damage buffs.
.' Druids will drop a beam of light the buffs your damage output by 100%.
.' Shaman will buff the raid with damage whenever they crit.
|achieve 2958/8
step
.' _Lose Your Illusion (25 player)_
goto 69.6,49.6
.' In Order to earn this achievement, you will need to run the gauntlet to Sif in under 3 minutes.
.' If you pass the 3 minute mark, Sif will despawn.
.from Thorim##32865
|achieve 2958/9
step
.' _Knock, Knock, Knock on Wood (25 player)_
goto 53.0,20.6
.from Freya##32906
.' In order to earn this achievement, leave _Elder Brightleaf, Elder Ironbranch and Elder Stonebark_ alive.
.' Clear the rest of the trash in the room.
|achieve 2958/10
step
.' _Firefighter_
goto Ulduar/5 43.8,40.6
.' In order to activate this achievement, you will need to press the _"DO NOT PUSH"_ button prior to engaging Mimiron.
.' At that point, you will have 8 minutes to kill him before you automatically die.
|achieve 2958/11
step
.' _I Love the Smell of Saronite in the Morning (25 player)_
goto Ulduar/4 53.6,61.6
.' In order to earn this achievement, you must let the _Saronite Crystals_ that spawn to merge into _Saronite Animus_.
.' _DO NOT_ kill any Saronite Crystals before all 6 spawn and _DO NOT_ kill Vezax before 6 Saronite Crystals spawn.
.from General Vezax##33271
.from Saronite Animus##33524
|achieve 2958/12
step
.' _One Light in the Darkness (25 player)_
goto Ulduar/4 68.0,40.8
.' In order to earn this achievement, you must not have aid from any of the  Watchers prior to the fight.
|achieve 2958/13
step
Earn the Glory of the Ulduar Raider (25 player) Achievement |achieve 2958
step
.' Go to any mail box.
.collect Reins of the Ironbound Proto-Drake##45801
|modeldisplay 28953
step
.learnmount Ironbound Proto-Drake##63956 |use Reins of the Ironbound Proto-Drake##45801
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Volcanic Stone Drake",[[
description This guide will walk you through earning the achievements required to obtain the Volcanic Stone Drake.
condition end hasmount(88331)
model 35551
step
.' In order to earn this achievement, you will need complete 28 parts to the achievement _Glory to the Cataclysm Hero_.
.' These parts take place in _Heroic Cataclysm Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
|confirm
step
.' _Crushing Bones and Cracking Skulls_
goto Blackrock Caverns/1 50.0,70.2
.from Rom'ogg Bonecrusher##39665
.from Angered Earth##50376
.' While fighting _Rom'ogg Bonecrusher_, you will need to look out for an ability called _Quake_.
.' After he uses _Quake_, he will spawn an _Angered Earth_ per player in the instance.
.' _Do not kill_ them!
.' At _66% and 33% Health_, he will use an ability called _Chains of Woe_.
.' Destroy the chains and leave the radius of the attack, _but keep the angered earth in the affected area_.
.' You must kill 8 Angered Earth with The Skullcracker.
|achieve 4845/2
step
.' _Arrested Development_
goto Blackrock Caverns/2 28.6,16.6
.from Corla, Herald of Twilight##39679
.' Before fighting Corla, clear this entire room of trash. You will be using the space to drag away one Evolved Zealot.
.' She will have 3 Zealots with her before engaging.
.' You will still want to block two of the beams hitting the zealots after engaging her.
.' Once one evolves, drag it to the opposite end of the room, that way it won't have the haste aura that she gives.
.' Repeat this for the other two, then kill her.
|achieve 4845/3
step
.' _Too Hot to Handle_
goto 46.6,64.8
.from Karsh Steelbender##39698
.' Save all your damage cooldowns for the last part of the fight.
.' Do the fight normally until Karsh reaches 200,000 Health.
.' At this point, _Stop all DPS!_
.' Have the tank or whoever has aggro drag him through the _Molten Metal_ at the center of the room until he has 15  stacks of _Superheated Quicksilver Armor_.
.' You will have 17 seconds to kill him after.
|achieve 4845/4
step
.' _Ascendant Descending_
goto 69.6,53.4
.from Ascendant Lord Obsidius##39705
.' At the start of the fight, he will spawn 3 Shadows.
.' _All of these shadows need to be kited!_
.' Being hit by the shadows will give you a stack of _Crepuscular Veil_.
.' In order to earn this achievement, you will need to defeat Ascendant Lord Obsidius without getting 4 stacks of Crespuscular Veil.
|achieve 4845/5
step
.' _Old Faithful_
goto Throne of the Tides/2 50.6,21.4
.' The easiest way to attain this achievement is to have some form of _Crowd Control_ (Sheep Excluded).
.' DPS the Naz'tar Tempest Witch down to 50% health, CC it, then have the party stand on top of it.
.' Once you see the cursor on the ground indicating that a Geyser is about to hit, move and let it kill the mob.
.from Lady Naz'jar##40640
|achieve 4845/6
step
.' _Prince of Tides_
goto 32.6,22.6
.from Ozumat##44566
.' 15 seconds after the event starts, an _Unyielding Behemoth_ will spawn.
.' You _MUST NOT_ kill this behemoth, so mark it with whatever you want and let your group know not to kill it.
.' Otherwise, proceed with the event as normal.
.' Once you defeat the Faceless Sappers at phase 2, you must kill the Unyielding Behemoth before the boss.
|achieve 4845/7
step
.' _Rotten to the Core_
goto The Stonecore 55.6,38.6
.' This achievement requires that you kill 60 disciples within a 10 second time frame.
.' You will need high AoE DPS.
.' Simply pull them, bunch them together, then blow them up.
|achieve 4845/8
step
.' _No Static at All_
goto The Vortex Pinnacle 29.8,39.6
.from Asaad##43875
.' In order to get this achievement, you must avoid being hit by _Static Cling._
.' To avoid being hit by this, simply jump right before the cast is finished.
.' An easy way to check for the boss casting this, set him as your focus and have enemy casting shown on portraits.
.' He will continue to cast this spell as long as he is alive, so faster dps is best.
|achieve 4845/9
step
.' _Extra Credit Bonus Stage_
.' This achievement requires you to collect 5 _Golden Orbs_ in Vortex Pinnacle.
.' Check the provided coordinates for orbs:
[The Vortex Pinnacle/1 63.5,35.5]
[The Vortex Pinnacle/1 51.6,47.1]
[The Vortex Pinnacle/1 58.2,70.5]
[The Vortex Pinnacle/1 56.4,70.6]
.' This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 50.2,82.9]
.' This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 51.1,80.2]
[The Vortex Pinnacle/1 33.2,67.3]
[The Vortex Pinnacle/1 33.2,69.9]
[The Vortex Pinnacle/1 33.5,48.8]
|achieve 4845/10
step
.' _Acrocalypse Now_
.from Augh##49045, Lockmaw##43614
.' For this achievement, you will likely need heavy  heals.
.' DPS the enemies slowly, as you will need 5 waves of adds to spawn.
.' _DO NOT KILL_ any of the crocalisk adds that spawn as it will ruin the achievement.
.' Once the 5th group has spawned, there will be 20 Frenzied Crocolisks to kill.
.' Use your AoE to kill them. _Note that you will only have 10 seconds to kill them all!_
|achieve 4845/12
step
.' _Kill It With Fire!_
.from High Prophet Barim##43612
.' DPS him down to 50% and enter the shadow zone.
.' Once there, Soul Fragments will spawn.
.' Let 3 of them spawn, then drag them through the fires left behind by the Dark Hatchling, turning them into Burning Souls.
.' Kill the 3 burning souls, then finish the boss off.
|achieve 4845/11
step
.' _Headed South_
goto 40.0,56.0
.from Siamat##44819
.' For this achievement, you will need to gather 3 _Servant of Siamat_ as them spawn.
.' You must not kill them yet.
.' Continue fighting the boss down to 75% health.
.' Once at this point, gather your group up, and kill one of the servants.
.' You will get a buff.
.' Continue the fight until the buff starts to wear off.
.' At this point, you will kill both of the other servants, causing the bosses shield to fall off.
.' You should have 3 stacks of the needed buff, and it will be time to kill the boss.
.' It will be a DPS race at this point.
|achieve 4845/13
step
.' _I Hate That Song_
goto Halls of Origination/1 57.6,63.0
.from Temple Guardian Anhuur##39425
.' At 66% and 33% health, he will enter phase 2.
.' During Phase 2 you have to pull a level that is in the pit on the right and left side of the boss platform.
.' Have a player drop down on one side to pull aggro of the snakes at the bottom.
.' Have a second player drop shortly after, pulling the level.
.' Meanwhile, have the first player run to the other switch, aggroing the snakes over there.
.' Have another player hit that switch.
.' Note that it is _EXTREMELY IMPORTANT_ to have a character who can interrupt.
.' Have that class stay up top with the boss and as soon as the levers are pulled, interrupt his channeling.
.' You will have to do this twice
|achieve 4845/14
step
.' _Straw That Broke the Camel's Back_
goto Halls of Origination/2 35.8,38.6
.clicknpc Camel##39443
.' There are more camels around [Halls of Origination/2 34.8,58.8]
.' For this achievement you simply have to kill the boss while mounted atop a camel.
.' Avoid spikes that erupt from the ground and you will easily get this achievement.
.' Earthrager Ptah is located here [Halls of Origination/2 43.6,49.6]
|achieve 4845/15
step
.' _Faster Than the Speed of Light_
[Halls of Origination/1 49.6,32.6]
[Halls of Origination/1 62.6,32.6]
[Halls of Origination/1 62.9,21.5]
[Halls of Origination/1 48.8,21.5]
.' The above coordinates are to the 4 bosses you need to kill within 5 minutes.
.' The timer starts as soon as you enter the Vault of Lights.
|achieve 4845/17
step
.' _Sun of a...._
goto Halls of Origination/3 47.0,21.0
.' For this achievement, you will need interrupt abilities.
.' The most useful ones for this fight are _Counterspell, Shield Bash and Spell Lock_, which will lock him out of using focus for 8 seconds each.
.' The goal is to get him to 50% health with 40 Focus or higher.
.' If he below 40 focus, reset and try again.
|achieve 4845/16
step
.' _Umbrage for Umbriss_
.' For this boss, you will want to crowd control the _Malignant Trogg_ that spawns at the start of the fight before it gets near anyone.
.' Kill the other 3 troggs and proceed with the fight as normal.
.' Fight Umbriss down to 15% health then stop dps.
.' Kill the Malignant Trogg, then kill Umbriss. _You will have 20 seconds_.
.from General Umbriss##39625
|achieve 4845/18
step
.' _Ready for Raiding_
goto The Deadmines/1 36.8,61.6
.' During the fight, there will be a "Wheel of Flames" that appears on the ground underneath the boss.
.' Simply run along with it, or out of range of it.
.' _DO NOT_ try and jump over it.
.from Glubtok##47162
|achieve 4845/19
step
.' _Rat Pack_
goto 50.2,88.4
.from Helix Gearbreaker##47296
.' This achievement takes place during stage one of the fight.
.' _Do not_ kill the Lumbering Oaf yet.
.' He will use an ability called _Oaf Smash_ on a random player, which will cause 4 _Helix' Crew_ goblins to spawn on top of the log.
.' Kill the 4 of them, then wait for the Lumbering Oaf to use _Oaf Smash_ again.
.' Repeat this process 5 times.
|achieve 4845/20
step
.' _Prototype Prodigy_
goto The Deadmines/2 9.6,82.0
.' This achievement requires that the prototype provided for the fight barely gets damaged.
.' Keep the Prototype away from the boss at all costs!
.' When the first _Molten Slag_ spawns, use this combination to kill it: _1-1-2_
.' For the rest of the Molten Slag spawns, use a _2-1-1_ rotation.
.from Foe Reaper 5000##43778
|achieve 4845/21
step
.' _It's Frost Damage_
goto 63.6,39.6
.' For this achievement, you will need to fight Ripsnarl down to 75%,50% or 25%.
.' At this point, he will enter a phase where _Vapors_ spawn.
.' Take a sing Vapor away from the group and tank it to the side. _Be sure not to kill it!_
.' The Goal is to get the vapor to grow and cast _Coalesce_.
.' Once it starts casting the spell, run into the cabin to avoid any damage from _Coalesce_.
|achieve 4845/22
step
.' _I'm on a Diet_
.' After Ripsnarl is defeated, enter the cabin start to "Captain" Cookie event.
.' In order to get this achievement, you _must not_ click any food that has a green aura around it.
|achieve 4845/23
step
.' _Vigorous Vancleef Vindicator_
.' Once the event with Vanessa Vancleef is started, you will be tied up above a lava cauldron.
.' There will be four valves you have to click before you are released.
.' At this point, you will have _5 Minutes_ to reach Vanessa Vancleef again.
.' Follow the path provided. At each point there will be an event where you  have to kill all enemies.
.' The first coordinate has two events that take place.
.' Upon reaching Vanessa, you will gain the achievement granted you get there in time.
map The Deadmines/2
path	12.4,72.4	29.3,50.2	41.0,49.0
path	50.4,18.4	51.8,44.4	60.7,42.2
|achieve 4845/24
step
.' _Pardon Denied_
goto Shadowfang Keep/1 67.7,72.9
.' During the fight, Ashbury will cast an ability called _Asphyxiate_.
.' Immidiately after, he will cast a spell called _Stay of Execution_.
.' _Stay of Execution MUST_ be interrupted in order to earn this achievement.
.from Baron Ashbury##46962
|achieve 4845/25
step
.' _To the Ground!_
goto Shadowfang Keep/1 28.2,61.3
.from Commander Springvale##4278
.' In order to earn this achievement, you must prevent _Wailing Guardsmen_ and _Tormented Officers_ from casting _Unholy Empowerement_ on Springvale.
.' When you see them casting, interrupt, or you won't get the achievement.
.' Kill the boss without the adds casting the spell.
|achieve 4845/26
step
.' _Bullet Time_
.' Pull Godfrey to the provided coordinates and have the tank face away from the steps.
.' Have ranged dps and heals stand at the top of the stairs.
.' Godfrey will summon a pack of Bloodthirsty Ghouls, then immidiately cast _Pistol Barrage_.
.' The object of the achievement is to kill 12 Ghouls with the _Pistol Barrage_ ability.
goto Shadowfang Keep/6 73.8,51.3
.from Lord Godfrey##46964
|achieve 4845/27
step
goto Grim Batol 86.2,82.8
.' After Erudax uses channel _Shadow Gale_ 2 _Faceless Corruptors_ will spawn at [85.4,59.4]
.' You will need to kill them as fast as you can.
.' Once they enter the room and reach the eggs they will start to hatch them, causing you to fail this achievement.
|achieve 4845/28
step
|achieve 4845
step
.' Go to any mailbox.
.collect Reins of the Volcanic Stone Drake##62900
|modeldisplay 35551
step
.learnmount Volcanic Stone Drake##88331 |use Reins of the Volcanic Stone Drake##62900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Proto Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Red Proto-Drake
condition end hasmount(59961)
model 28044
step
.' In order to earn this achievement, you will need complete 38 parts to the achievement _Glory to the Hero_.
.' These parts take place in _Heroic Wrath of the Lich King Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
|confirm
step
.' _On The Rocks_
.' In order to earn this achievement, you will need at least one other party member.
.' Prince Keleseth will cast _Frost Tomb_ on one of the party members.
.' _DO NOT BREAK THEM OUT!_ It will cause you to fail the achievement.
goto Utgarde Keep/1 30.6,65.6
.from Prince Keleseth##23953
|achieve 2136/1
step
.' _Split Personality_
.' In order to earn this achievement, you will need to kill Grand magus Telestra's Mirror Images within 5 seconds of killing the first.
.' The easiest way to do this will be to lower the Image's health to 10%.
.' Once all 3 are at 10%, kill them all.
goto The Nexus/1 27.6,41.6
.from Grand Magus Telestra##26731
|achieve 2136/2
step
.' _Chaos Theory_
.' In order to earn this achievement, you will need to defeat Anomalus without destroying any _Chaotic Rifts_.
.' At 75%, 50% and 25% he will enter a _Rift Phase_, each lasting about 25 seconds.
.' the easiest way to do this is to kite him around, spreading out each rift by at least 20 yards.
|achieve 2136/4
step
.' _Intense Cold_
goto The Nexus/1 37.0,68.4
.from Keristrasza##26723
.' For this achievement, you will need someone who can dispel, or escape movement impairing effects.
.' She will cast _Crystal Chains_, which binds you to the ground for 10 seconds.
.' In order to earn this achievement, you will need to be moving around every 3 seconds to avoid _Intense Cold_ from stacking.
|achieve 2136/3
step
.' _Watch Him Die_
.' To earn this achievement, you will need to kill Krik'thir the Gatewatcher before you kill _Watcher Silthik, Watcher Narjil and Watcher Gashra_.
.' The watchers cannot be CC'd, but they can  be stunned.
goto Azjol-Nerub/3 48.6,45.6
|achieve 2136/5
step
.' _Hadronox Denied_
goto Azjol-Nerub/2 40.4,30.6
.from Hadronox##28921
.' This achievement can be tricky. You will have to kill _Hadronox_ before he comes up the tunnel.
.' There are several ways to do this.
.' If you're a rogue, you can aggro an enemy in the main chamber and vanish, which will reset the boss.
.' Have the group move to the bottom of the tunnel, but not jump.
.' After a bit Hadronox will respawn.
.' OR
.' You could just run down the tunnel, kill all of the adds then him.
|achieve 2136/6
step
.' _Gotta Go!_
.' For this achievement, you will need to maximize your dps on the boss.
.' When he reaches 75%, 50% and 25% health, he will use an ability called _Submerge_ which will clear any status affect he's currently under and become immune to damage.
.' At this point adds will spawn, just kill them as fast as you can.
goto Azjol-Nerub/1 61.8,48.6
.from Anub'arak##29120
|achieve 2136/7
step
.' _Respect Your Elders_
.' In order to earn this achievement, you will need to kill Nadox without killing Ahn'kahet Guardians that spawn.
.' When the Guardian does spawn, have a DPS pull it to [Ahn'kahet: The Old Kingdom/1 74.6,37.8] and continue to kill Nadox.
goto Ahn'kahet: The Old Kingdom/1 69.8,27.6
.from Elder Nadox##29309
|achieve 2136/9
step
.' _Volunteer Work_
goto 49.2,71.8
.from Jedoga Shadowseeker##29310
.' In order to get this achievement, you simply have to not kill any Twilight Volunteers.
.' Letting a Twilight Volunteer sacrifice himself for Jedoga will dramatically increase her damage output.
.' If possible, disarm her to mitigate damage.
|achieve 2136/10
step
.' _Volazj's Quick Demise_
.' For this achievemnt you will need heavy AoE damage for the Insanity phase.
.' _Insanity_ is cast randomly throughout the fight. It will cause mirror images of each party member to spawn
.' You must kill all of the mirror images, then help each player kill their set before being able to attack Volazj again.
.' Once the phase is over you'll be back to dpsing Volazj down.
.' If you're a warrior, you willbe able to spell reflect _Mind Flay_ and _Shadow Bolt Volley_ for instant damage.
goto Ahn'kahet: The Old Kingdom/1 23.6,50.6
.from Herald Volazj##29311
|achieve 2136/8
step
.' _Consumption Junction_
.' In order to earn this achievement, you must prevent Trollgore from gaining 10 stacks of Consume.
.' He will use the _Consume_ ability every 10 seconds.
.' Moving out of his line of sight will prevent him from gaining a stack of consume.
.' He will gain 1 stack of consumer per party member that he can see.
.' a good strategy is to have the tank fight him at the top of the stairs, and the dps at the bottom.
.' DPS for 10 seconds, then move behind the stairwell on the left to LoS.
goto Drak'Tharon Keep/1 56.8,20.4
.from Trollgore##26630
|achieve 2136/11
step
.' _Oh Novos!_
goto 71.0,47.6
.from Novos the Summoner##26631
.' For this achievement, you must not allow any of his undead minions to reach the main area.
.' Basically, have a DPS camp out at [79.6,46.9] near the top of the steps.
.' Who ever is designated to do so must pick up the undead as the spawn.
.' Use AoE to pick them up, because if you miss one you fail the achievement.
|achieve 2136/13
step
.' _Better Off Dread_
.' In order to earn this achievement, you must kill 6 raptors whil fighting King Dred.
.' _Kill the Raptors before you kill King Dred!_
goto  63.2,87.4
.from King Dred##27483
|achieve 2136/12
step
.'_Defenseless_
.' This achievement requires that you don't let the prison seal be damaged.
.' In order to do this, you must pick up all adds before they reach the entrance to the instance and kill them.
.' Failing to pick up an add immidiately will cost the the achievements for this dungeon.
.' Click here to proceed to the rest of the achievements. |confirm
|achieve 2136/14
step
.' _Dehydration_
.' For this achievement, you will need to defeat _Ichor Globule_ before the reach the boss.
.' The Ichor Globule spawn after you destroy the 35 charges of _Protective Bubble_.
.' There will be 3 phases where this happens.
.' The easiest way to take care of this is to hit the Activation Crystals found randomly throughout the room.
.' Activation Crystals can be found at the provided locations below:
.' [The Violet Hold/1 55.3,79.8]
.' [The Violet Hold/1 46.9,39.2]
.' [The Violet Hold/1 30.7,74.7]
.from Ichoron##29313
.' Click here if this boss wasn't available. |confirm
|achieve 2136/16
step
.' _A Void Dance_
.' For this achievement, you simply have to defeat _Zuramat the Obliterator_ without defeating the void sentries he summons.
.' To avoid taking damage from the sentries, simply kite him around the room.
.' Click here if this boss wasn't available. |confirm
|achieve 2136/17
step
.' _Lockdown!_
.' This achievement requires that you kill all the bosses inside of Violet Hold.
.' This will take several runs.
|confirm
|achieve 1865/1
|achieve 1865/2
|achieve 1865/3
|achieve 1865/4
|achieve 1865/5
|achieve 1865/6
|achieve 2136/15
step
|achieve 2136/14
.' Click here if you did not earn the achievement. |confirm
step
.' _Snakes, Why'd It Have To Be Snakes?_
.' For this achievement, you will need to defeat Slad'ran without getting snake wrapped.
.' Pull the boss himself to the bottom of the stairwell at [Gundrak/1 58.2,35.9].
.' Have all ranged DPS and the Healer stand at the top of the stairwell.
.' DPS any snake that comes towards the group. The faster you damage him the more snakes spawn.
.from Slad'ran##29304
|achieve 2136/21
step
.' _Less-rabi_
.' In order to get this achievmeent, you must defeat Moorabi while preventing him from transforming into a mammoth at any point during the fight.
.' To do this, you will need dedicated interrupts.
.' Each time he attempts to cast _Transformation_ unsuccesfully, the cast time required to do it will be shorter.
.' To avoid having to interrupt a lot, you should have high dps for this fight.
goto Gundrak/1 38.8,49.0
.from Moorabi##29305
|achieve 2136/20
step
.' _What the Eck?_
goto Gundrak/1 25.6,69.2
.' For this achievement, you must defeat Eck the Ferocious while under the effects of _Eck Residue_
.' Eck the Ferocious uses an ability called _Eck Spit_ which will give you a debuff.
.' _You need to be in front of him in order to get the debuff!_
.from Eck the Ferocious##29932
.' Note that you shouldn't dps the boss too fast or you could miss the acheivement.
|achieve 2136/18
step
.' _Share the Love_
.' For this achievement, you absolutely requires you to have 5 party  memebrs.
.' To earn it, you will need 5 party members to be impaled during the fight.
.' This achievement is a bit tricky to earn, as  Moorabi randomly casts the spell on a group member, meaning it can take a while before he gets everyone at least once.
.' Just slow dps on him until you earn the achievement. This fight is more heal intensive than anything else.
goto Gundrak/1 46.4,27.6
.from Gal'darah##29306
|achieve 2136/19
step
.' _Good Grief_
.' This achievement requires that you defeat the Maiden of Grief in a minute.
.' You will need to be on the lookout for _Shock of Sorrow_.
.' When she begins casting, move into the _Storm of Grief_, which is the big black circle on the ground.
.' It will cancel the effects of Shock of Sorrow so that you can continue DPSing.
goto Halls of Stone 50.0,86.6
.from Maiden of Grief##27975
|achieve 2136/22
step
.' _Brann Spankin' New_
.' In order to earn this achievement, you will need to complete the Brann Bronzebeard event without Brann taking damage.
.' In order to do this, have the group stand at the entrance to the room.
.' Simply AoE any mob that spawns at least once to take the attention off of Brann.
goto Halls of Stone 84.9,76.1
|achieve 2136/23
step
.' _Abuse the Ooze_
.' For this achievement, you will need to kill 5 Iron Sludges during the fight with Sjonnir the Ironshaper.
.' In order to start, you will need to DPS him down to 50% of his health.
.' _You must not take him any lower!_ No dots, no DPS at this point.
.' If you are able to handle the extra adds, allow more than 2 sludges to converge at the center of the room.
.' After 2 slimes meet, _Iron Sludge_ will spawn. Kill 5 of them, then defeat Sjonnir for the achievement.
goto Halls of Stone 49.8,14.2
.from Sjonnir the Ironshaper##27978
|achieve 2136/24
step
.' _Lightning Struck_
.' Defeat General Bjarngrim while he is under the affects of _Temporary Electrical Charge_.
.' To do this achievement, you will have to engage him _AFTER_ he stops at one of 3 platforms listed below to gain the _Temporary Electrical Charge_ buff.
.' Once he does that, you will need to engage him asap.
.' Kill his guards and them him.
.' [Halls of Lightning/1 43.2,37.0]
.' [Halls of Lightning/1 54.4,52.4]
.' [Halls of Lightning/1 54.5,72.0]
.from General Bjarngrim##28586
|achieve 2136/26
step
.' _Shatter Resistant_
.' In order to get this achievement, you basically have to defeat Volkhan before he shatters more than 4 Brittle Golems.
.' This achievement is fairly easy and straight forward, just dps the boss down as fast as you can, ignoring the adds that spawn.
goto Halls of Lightning/2 40.2,19.4
.from Volkhan##28587
|achieve 2136/27
step
.' _Timely Death_
.' For this achievement, you will n eed to defeat Loken in 2 minutes or less.
.' This achievement is simple, simply avoid the _Lightning Nova_ that he casts.
goto 19.2,52.0
.from Loken##28923
|achieve 2136/25
step
.' _The Culling of Time_
.' This achievement requires that you defeat the _Infinite Corruptor_ in the Culling of Stratholme.
.' When you start the instance, a timer will start.
.' When that timer ends, you fail the achievement.
.' You will need to fight up to the last boss before the timer runs out.
goto The Culling of Stratholme/2 51.6,41.6
.from Infinite Corruptor##32273
|achieve 2136/28
step
.' _Zombiefest!_
.' This achievement is tricky to pull off.
.' There are only 85 to 90 zombies in the first area before entering the building.
.' In order to have them spawn after _Salramm the Fleshcrafter_, pull to [The Culling of Stratholme/2 54.6,36.6]
.' After killing him, make sure you don't leave the building. Wait for Arthas to come to you. _DO NOT KILL_ any zombies spawning back in the first area.
.' Proceed through the instance as normal, killing the 3rd boss.
.' For this achievement, you will need to gather _ALL_ zombies in the first area, along with 20 or more from the area after the 3rd boss.
.' Once you have them all gathered, kill them as quickly as possible. _You do not have to pull the packs together._
.' You can track this achievement in game to see how much time you've got left.
|achieve 2136/29
step
.' _The Incredible Hulk_
.' For this achievement, you will need to have _Svala Sorrow Grave_ kill a _Scourge Hulk_.
.' Before engaging Svala, pull a Scourge Hulk, which can be found at [Utgarde Pinnacle/1 35.8,85.6] or [Utgarde Pinnacle/1 24.0,69.3].
.' Beat the Hulk down to 10k Health.
.' Now, engage Svala. If you are soloing, take her to the top of the steps, to [Utgarde Pinnacle/2 39.9,68.8]. This will give you time for the Scourge Hulk to walk to you and not know you out of range of the sword while stunned.
.' If you are in a group, just have the tank pull the abomination to the alter. When the sword lands, it will either kill the Hulk, or massively damage it, leaving a dot that will kill him afterwards.
.from Svala Sorrowgrave##26668, Scourge Hulk##26555
|achieve 2136/30
step
.' _Lodi Dodi We Loves the Skadi_
.' This achievement requires that you defeat Skadi the Ruthelss within 3 minutes of starting his gauntlet event.
.' The event starts as soon as you arrive at [68.1,69.1].
.' Run to [68.0,35.7].
.' Kill all enemies that you have gathered, picking up 3 harpoons.
.' When the message _Skadi is now in range of the harpoons_ appears, click theharpoon launchers to bring him down.
.' Dps him as fast as you can and the achievement is yours.
.from Skadi the Ruthless##26693
|achieve 2136/31
.' Following the above directions will net you the _My Girl Loves to Skadi All the Time_ achievement as well, which is to kill Grauf in one passing.
|achieve 2136/32
step
.' _King's Bane_
.' This can be a difficult achievement to attain.
.' It requires that you don't trigger _Bane_ during the King Ymiron encounter.
.' During the fight, you will see Ymiron cast _Bane_.
.' It is important to _STOP ALL DPS_ when this happens. The buff lasts for 5 seconds.
.' You can use _Spellsteal_ and Warlock pets can _Devour Magic_ to get rid of it. It can be dispelled.
goto 40.6,53.4
.from King Ymiron##26861
|achieve 2136/33
step
.' _Experienced Drake Rider_
.' For this, it will take at least 3 days to complete.
.' Defeat Eregos using all 3 of the drake mounts provided inside of the instance.
.' Here is your progress.
|achieve 1871/1
|achieve 1871/2
|achieve 1871/3
|achieve 2136/34
|confirm
step
.' _Ruby Void, Emerald Void and Amber Void_
.' It is possible to earn all 3 of these achievements in one run.
.' For melee users, it might be a little tougher, but if you run around the top platform, Eregos will eventually drop down to melee range.
.' Alternatively, you can fly around until he is low enough for you to melee.
|achieve 2136/36
|achieve 2136/37
|achieve 2136/38
step
.' _Make It Count_
.' This achievement requires that you defeat Ley-Guardian Eregos within 20 minutes of defeating Drakos the Interrogator.
.' This will basically mean a speed run for the instance.
|achieve 2136/35
step
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Red Proto-Drake##44160
|modeldisplay 28044
step
.learnmount Red Proto-Drake##59961 |use Reins of the Red Proto-Drake##44160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Rusted Proto-Drake",[[
description This guide will walk you through earning the achievements required to obtain the Rusted Proto-Drake.
condition end hasmount(63963)
model 28954
step
.' This achievement requires that you complete the bosses of Uldaur on their "Hard-Mode" setting, in 10 player mode.
.' Special conditions must be met in order to complete each objective.
|confirm
step
.' _Orbit-uary (10 Player)_
.' This achievement is earned by activating the defense systems.
goto Ulduar/1 52.7,88.2
.talk 33686
.' Tell him to activate the secondary defense system.
|confirm
step
goto Ulduar/1 47.9,37.7
.' Destroy the _Storm Beacons_ as you make your way to the above coordinates.
.' Once at the above coordinate, destroy all enemies in the room. Doing so will prompt _The Flame Leviathan_ to spawn.
.from Flame Leviathan##33113 |tip Note that it is not possible to solo this boss while hard mode is active.
|achieve 2957/1
step
.' _Stokin' the Furnace (10 Player)_
.' This achievement is earned by defeating _Ignis the Furnace Master_ in 4 minutes.
goto 36.8,26.6
.from Ignis the Furnace Master##33118 |tip You will need to do at least 81,000 Damage Per second in order to achieve this.
|achieve 2957/2
step
.' _Iron Dwarf, Medium Rare (10 Player)_
.' This achievement is earned by killing 25 Dark Run Guardian Dwarves with Razorscale's Flame Breath.
goto 53.6,26.6
.talk 33210 |tip Doing so will start the event.
.' The easiest way to earn this is to have two tanks; One for adds and one for the boss.
.' Have the second tank pull the Boss to the _East_ side of the room and the boss tank stand at the center.
.' When adds spawn, beat them down to at least _15,000_ health.
.' Harpoon Razorscale down, the dps her down.
.' When the ground phase ends, Razorscale will use _Flame Breath_ on anyone in front of her. Tank two needs to move the adds to her front.
|achieve 2957/3
step
.' _Heartbreaker (10 Player)_
.' This achievement is earned by killing XT-002 Deconstructors heart when it is exposed before it is retracted.
.' It will expose it's heart every 25% of its health.
goto 48.6,13.6
.from XT-002 Deconstructor##33293
.' Drop XT's health to 75% to activate it's heart.
.' Dps the heart down as fast as you can.
.' Once the heart dies, it will activate hard mode and XT will regain all health.
|achieve 2957/4
step
.' _I Choose You, Steelbreaker (10 Player)_
.' This achievement is earned simply by killing _Steelbreaker_ last.
.' _FOLLOW THE KILL ORDER LISTED BELOW:_
goto Ulduar/2 15.6,54.2
.from Runemaster Molgeim##32927
.from Stormcaller Brundir##32857
.from Steelbreaker##32867
.' Note that killing bosses activates special abilities in the ones that are still alive.
|achieve 2957/5
step
.' _Disarmed (10 Player)_
.' Destroy Kologarn's arms and then destroy his body within 12 seconds.
goto 37.4,11.0
.from Right Arm##32934
.' Keep killing the right arm, while lowering the left arms health.
.' Once Kologarn's health is at _35%_, kill the Right AND Left arms.
.from Left Arm##32933
.from Kologarn##32930
|achieve 2957/6
step
.' _Crazy Cat Lady (10 Player)_
.' Defeat Auriaya without destroying her sanctum sentries.
goto Ulduar/3 50.8,75.2
.from Auriaya##33515
.' In order to earn this achievement, you _must not_ kill the Sanctum Sentries.
.' They will dish out heavy damage when bundled, so if at all possible, keep them away from each other. |tip They must be 10 yards apart for them not to get a buff.
|achieve 2957/7
step
.' _I Could Say That This Cache Was Rare (10 Player)_
.' For this achievement, you will have to defeat Hodir in under 3 minutes.
goto 68.6,64.6
.' This fight is a DPS race.
.' Free the Druids and Shaman trapped in ice to provide your group with additional damage buffs.
.' Druids will drop a beam of light the buffs your damage output by 100%.
.' Shaman will buff the raid with damage whenever they crit.
|achieve 2957/8
step
.' _Lose Your Illusion (10 Player)_
goto 69.6,49.6
.' In Order to earn this achievement, you will need to run the gauntlet to Sif in under 3 minutes.
.' If you pass the 3 minute mark, Sif will despawn.
.from Thorim##32865
|achieve 2957/9
step
.' _Knock, Knock, Knock on Wood (10 Player)_
goto 53.0,20.6
.from Freya##32906
.' In order to earn this achievement, leave _Elder Brightleaf, Elder Ironbranch and Elder Stonebark_ alive.
.' Clear the rest of the trash in the room.
|achieve 2957/10
step
.' _Firefighter (10 Player)_
goto Ulduar/5 43.8,40.6
.' In order to activate this achievement, you will need to press the _"DO NOT PUSH"_ button prior to engaging Mimiron.
.' At that point, you will have 8 minutes to kill him before you automatically die.
|achieve 2957/11
step
.' _I Love the Smell of Saronite in the Morning (10 Player)_
goto Ulduar/4 53.6,61.6
.' In order to earn this achievement, you must let the _Saronite Crystals_ that spawn to merge into _Saronite Animus_.
.' _DO NOT_ kill any Saronite Crystals before all 6 spawn and _DO NOT_ kill Vezax before 6 Saronite Crystals spawn.
.from General Vezax##33271
.from Saronite Animus##33524
|achieve 2957/12
step
.' _One Light in the Darkness (10 Player)_
goto Ulduar/4 68.0,40.8
.' In order to earn this achievement, you must not have aid from any of the  Watchers prior to the fight.
|achieve 2957/13
step
Earn the Glory of the Ulduar Raider (25 player) Achievement |achieve 2957
step
.' Go to any mail box.
.collect Reins of the Rusted Proto-Drake##45802
|modeldisplay 28954
step
.learnmount Rusted Proto-Drake##63963 |use Reins of the Rusted Proto-Drake##45802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Drake of the East Wind",[[
description This guide will walk you through earning the achievements required to obtain the Drake of the East Wind.
condition end hasmount(88335)
model 35757
step
.' This achievement requires that you complete 24 achievements based off of Cataclysm Heroic Raids.
|confirm
step
.' _Heroic: Magmaw and Parasite Evening_
.' For Parasite Evening, you will need to defeat Magmaw without anyone getting infected with a parasite.
.' In order to do this, you will need a lot of ranged DPS.
.' Magmaw will cast _Pillar of Flame_, which will mark the ground with a large red circle.
.' Move out of it as quickly as you can, as the Parasites will spawn out of it.
.' If a parasite touches you, you will become infected and fail the achievement.
.' _You will need to range AoE the Lava Parasites down._
.' Slow effects will help you kite them around.
goto Blackwing Descent/1 25.0,54.4
.from Magmaw##41570
|achieve/1
|achieve/13
step
.' _Heroic: Omnotron Defense System and Achieve-a-tron_
.' For this achievement, there will 4 enemies each with their own ability that you will have to avoid.
' _Electron's_ ability is _Static Shock_.
..' When he reaches 50 energy, he will begin to cast _Unstable Shield_.
..' _YOU MUST STOP DPS_ at this time, make sure there are no DoTs or pets even.
' _Toxitron_ will use an ability called _Poison Protocol_.
..' He will spawn 3 _Poison Bombs_ that target 3 random raid members.
..' People who aren't selected will need to DPS the 3 Bombs down before they reach their target.
' _Arcanotron will use an ability called _Arcane Annihilator_
..' You _WILL_ need 2 interrupters for this part. He casts Arcane Annihilator more often than a single person can interrupt.
..' A shaman with _Reverberation_ as a talent will be able to solo interrupt.
' _Magmatron_ will use an ability called _Acquiring Target_ which will be aimed at a random raid member.
.' For this, you will want the raid group spread out as much as possible.
.' The person who is the target is allowed to be hit by the flame, _NO ONE ELSE_.
goto Blackwing Descent/1 67.6,56.6
.from Magmatron##42178, Toxitron##42180, Electron##42179, Arcanotron##42166
|achieve/2
|achieve/14
step
.' _Heroic: Maloriak and Aberrant Behavior_
.' The _Abberations_ spawn during the _Red Vail_ phase.
.' You will need to gather 12 _Abberations_ and kill them within 10 seconds.
.' If you're level 90, an easier way to handle this achievement is to just force him to 20% health, forcing all 18 Abberations to spawn.
.' Otherwise it will be a lengthy process.
goto Blackwing Descent/2 70.6,69.8
.from Maloriak##41378
|achieve/3
|achieve/17
step
.' _Heroic: Atramedes and Silence is Golden_
.' In order to earn this achievement, a raid member's sound bar _must not_ go over 50%.
.' Hitting the gongs will help him take more damage, though they should be saved for _Searing Flame_.
.' The faster you end this fight the better. Basically, avoid _ALL_ his AoE attacks.
goto 48.0,21.4
.from Atramedes##41442
|achieve/4
|achieve/15
step
.' _Heroic: Chimaeron and Full of Sound and Fury_
.' You will need hard hitting DPS for this achievement, as well as at least one healer.
.' Regardless of your level, you will absolutely need to release the _Bile-O-Tron 800_ at the back of the room otherwise you will wipe.
goto 22.2,68.8
.from Chimaeron##43296
|achieve/5
|achieve/16
step
.' _Heroic: Nefarian and Keeping it in the Family_
.' For this achievement, you will need heavy dps.
.' Kill Onyxia before the 3rd Crackle.
.' There will be a phase where platforms raise and you will need to kill adds.
.' Quickly kill the adds, then burn Nefarion down to 50%.
.' You will need to kill him to get the achievement.
goto 48.0,70.8
.from Nefarian##41376
|achieve/6
|achieve/18
step
.' _Heroic: Halfus Wyrmbreaker and The Only Escape_
.' In order to earn this achievement, you will need to kill 2 drakes 10 seconds apart.
.' Kill one of the 3 drakes, then dps two down to 10% health.
.' Dps one down then quickly do the other, then pop all cooldowns to take Halfus down.
goto The Bastion of Twilight/1 55.8,16.2
.from Halfus Wyrmbreaker##44600
|achieve/7
|achieve/19
step
.' Heroic: Valiona and Theralion and Double Dragon_
.' This achievement takes place during the Airborne phase of the fight.
.' Two abilities that will take you into the Twilight Realm are _Valiona's Deep Breath_ and _Theralion's Dazzling Destruction_.
.' When you are in the Twilight Realm, kill 6 Twilight Fiends.
.' They spawn every 15 seconds.
.' After 6, dps the boss down for the achievement.
goto The Bastion of Twilight/1 53.6,77.6
.from Valiona##45992, Theralion##45993
|achieve/8
|achieve/20
step
.' _Heroic: Ascendant Council and Elementary_
.' The achievement Elementary takes place during stage 3 of the fight.
.' You must defeat the _Elemental Monstrosity_ while only creating a single Liquid Ice.
.' Once the four Council members have reached 25% health, stage 3 starts.
.' To earn this achievement, tank the Elementium Monstronsity where he spawns and _DO NO MOVE HIM_.
.' He will use an ability called _Cryogenic Aura_ that will cause a circle of ice to appear.
.' If you move him, more than one will appear.
.' DPS him down as fast as you can.
goto The Bastion of Twilight/2 41.4,44.6
.from Feludius##43687, Ignacious##43686, Arion##43688, Terrastra##43689
|achieve/9
|achieve/21
step
.' _Heroic: Cho'gall and The Abyss Will Gaze Back Into You_
.' This achievement requires that you defeat Cho'gall without a raid member gaining more than 30% Corrupted Blood.
.' Basically, you will need to avoid being hit be _ANY_ ability during the encounter.
.' To avoid stacking corruption, interrupt _Depravity_ at all costs when an _Adherent_ starts to cast it.
.' Range AoE _Blood of the Old Gods_, which spawn from the spell _Fester Blood_ cast by Cho'gall. They must be dealt with quickly.
.' When phase 2 starts, you will need to dps down tentacles while maintaining powerful dps on Cho'gall.
goto 74.6,76.2
.from Cho'gall##43324
|achieve/10
|achieve/22
step
.' Heroic: Conclave of Wind and Stay Chill_
.' For this achievement, you will need to defeat the Conclave of Wind with 7 stacks of Wind Chill.
.' This achievement is fairly simple with a full group.
.' Have a tank and healer at [Throne of the Four Winds 48.0,26.6].
.' Have the rest out the group spread out at the coordinates below:
.' Anshal is at [Throne of the Four Winds 31.8,50.6]
.' Rohash is at [Throne of the Four Winds 63.8,50.0]
.' Kill Anshal and Rohash as quickly as possible.
.' Converge with the Tank and hearler at Nezir.
.' Watch for your stacks of _Wind Chill_ to reach 7, and DPS the boss down hard.
.from Nezir##45871, Anshal##45870, Rohash##45872
|achieve/11
|achieve/23
step
.' Heroic: Al'akir and Four Play_
.' For this achievement, you will need to kill Al'Akir while he is affected by Feedback.
.' There are 3 stages to the fight.
.' During _Stage 2_, Stormlings will spawn.
.' You will need to keep one alive for phase 3.
.' DPS Al'akir down as low as possible without killing him.
.' Kill the Stormling, then Al'akir for the achievement.
goto 47.2,50.8
.from Al'Akir##46753
|achieve/12
|achieve/24
step
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Drake of the East Wind##62901
|modeldisplay 35757
step
.learnmount Drake of the East Wind##88335 |use Reins of the Drake of the East Wind##62901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59571)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 10-Man raid.
goto The Obsidian Sanctum/0 52.9,48.0
.from Sartharion##28860 |n
.collect Reins of the Black Drake##43986
step
.learnmount Black Drake##59650 |use Reins of the Black Drake##43986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59571)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 25-Man raid.
goto The Obsidian Sanctum/0 52.9,48.0
.from Sartharion##28860 |n
.collect Reins of the Twilight Drake##43954
step
.learnmount Twilight Drake##59571 |use Reins of the Twilight Drake##43954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Invincible",[[
author support@zygorguides.com
condition end hasmount(72286)
model 31248
step
'This mount is dropped by The Lich King in the Icecrown Citadel raid. It is only dropped on Heroic 25 player Difficulty.
goto Icecrown Citadel/7 49.8,52.8
.from The Lich King |n
.collect 1 Invincible's Reins##50818
|modeldisplay 31248
step
.learnmount Invincible##72286 |use Invincible's Reins##50818
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake",[[
author support@zygorguides.com
condition end hasmount(107842)
model 39561
step
'This mount is found in the Elementium Fragment within the Dragon Soul raid. It is only dropped on Normal Difficulty.
goto Dragon Soul/7 33.5,79.6
.from Deathwing |n
.click Elementium Fragment
.collect 1 Reins of the Blazing Drake##77067
|modeldisplay 39561
step
.learnmount Blazing Drake##107842 |use Reins of the Blazing Drake##77067
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Life-Binder's Handmaiden",[[
author support@zygorguides.com
condition end hasmount(107845)
model 39563
step
'This mount is found in the Elementium Fragment within the Dragon Soul raid. It is only dropped on Heroic Difficulty.
goto Dragon Soul/7 33.5,79.6
.from Deathwing |n
.click Elementium Fragment
.collect 1 Life-Binder's Handmaiden##77069
|modeldisplay 39563
step
.learnmount Life-Binder's Handmaiden##107845 |use Life-Binder's Handmaiden##77069
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Pureblood Fire Hawk",[[
author support@zygorguides.com
condition end hasmount(97493)
model 38031
step
'This mount is found in the Cache of the Fire Lord within the Firelands raid. |tip In order to access the heroic version of this cache, you must have downed all bosses on heroic. Switching between normal and heroic difficulties has been known to cause issues with this boss.
goto Firelands/3 50.4,15.4
.from Ragnaros##41634
.click Cache of the Fire Lord
.collect 1 Smoldering Egg of Millagazor##69224
|modeldisplay 38031
step
.learnmount Pureblood Fire Hawk##97493 |use Smoldering Egg of Millagazor##69224
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake",[[
author support@zygorguides.com
condition end hasmount(59567)
model 24743
step
'This mount is found in Alexstrasza's Gift within The Eye of Eternity raid.
goto The Eye of Eternity 38.4,49.8
.from Malygos##28859 |n
.click Alexstrasza's Gift##8513
.collect 1 Reins of the Azure Drake##43952
|modeldisplay 24743
step
.learnmount Azure Drake##59567 |use Reins of the Azure Drake##43952
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake",[[
author support@zygorguides.com
condition end hasmount(69395)
model 30346
step
'This mount is dropped by Onyxia in the Onyxia's Lair raid.
goto Onyxia's Lair 68.0,31.4
.from Onyxia##10184 |n
.collect 1 Reins of the Onyxian Drake##49636 |tip This has a droprate of about 0.3%
|modeldisplay 30346
step
.learnmount Onyxian Drake##69395 |use Reins of the Onyxian Drake##49636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Experiment 12-B",[[
author support@zygorguides.com
condition end hasmount(110039)
model 39229
step
'This mount is found in the Lesser Cache of the Aspects within the Dragon Soul raid.
goto Dragon Soul/7 49.9,45.7
.from Ultraxion |n
.click Lesser Cache of the Aspects
.collect 1 Experiment 12-B##78919
|modeldisplay 39229
step
.learnmount Experiment 12-B##110039 |use Experiment 12-B##78919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Ashes of Al'ar",[[
author support@zygorguides.com
condition end hasmount(40192)
model 17890
step
goto Tempest Keep/1 50.0,58.8
.from Tempest Falconer##20037+
.from Phoenix-Hawk##20039+
.from Phoenix-Hawk Hatchling##20038+
.' You do not have to clear this room first, but it helps to do so.
|confirm
step
goto Tempest Keep/1 50.1,16.6
.from Kael'thas Sunstrider |n
.collect 1 Ashes of Al'ar##32458 |n
|tip This has a 2% drop rate, be sure to come back here every week to have a better chance of obtaining it!
|modeldisplay 17890
.learnmount Ashes of Al'ar##40192 |use Ashes of Al'ar##32458
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Celestial Steed",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(75614)
model 31958
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Celestial Steed##54811
|modeldisplay 31958
step
.learnmount Celestial Steed##75614
|use Celestial Steed##54811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Winged Guardian",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(98727)
model 38260
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Winged Guardian##69846
|modeldisplay 38260
step
.learnmount Winged Guardian##98727 |use Winged Guardian##69846
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Heart of the Aspects",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Heart of the Aspects mount.
condition end hasmount(110051)
model 40029
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Heart of the Aspects##78924
|modeldisplay 40029
step
.learnmount Heart of the Aspects##110051 |use Heart of the Aspects##78924
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Tyrael's Charger",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Tyrael's Charger mount
condition end hasmount(107203)
model 39530
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Tyrael's Charger##76755
|modeldisplay 39530
step
.learnmount Tyrael's Charger##107203 |use Tyrael's Charger##76755
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Armored Bloodwing",[[
author support@zygorguides.com
condition end hasmount(139595)
model 48020
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Armored Bloodwing##95341
|modeldisplay 48020
step
.learnmount Armored Bloodwing##139595 |use Armored Bloodwing##95341
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-53 Touring Rocket",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(75973)
model 31992
step
'This mount is obtained through the Recruit-A-Friend program.
'After referring a friend who then upgrades to a paid account within 90 days you should receive this mount in the in-game mailbox.
.collect X-53 Touring Rocket##54860
|modeldisplay 31992
step
.learnmount X-53 Touring Rocket##75973 |use X-53 Touring Rocket##54860
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Big Love Rocket",[[
description This guide will walk you through obtaining
description mythical vanity pets
condition end hasmount(38207)
model 30989
step
'This requires the _Love is in the Air_ event
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Hummel_ |goto Shadowfang Keep |noway |c
step
.from Apothecary Hummel##36296
.collect Heart-Shaped Box##54537 |tip This will appear in your bags once you kill Apothecary Hummel and can only be won once a day
|use Heart-Shaped Box##54537
.collect Big Love Rocket##50250 |tip This mount has an insanely low chance of dropping.
'|modeldisplay 30989
step
.learnmount Big Love Rocket##71342 |use Big Love Rocket##50250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Time-Lost Proto Drake",[[
description This guide will walk you through obtaining
description the Time-Lost Proto Drake.
condition end hasmount(60002)
model 26711
step
map The Storm Peaks
path follow loose;loop;ants straight
path	28.0,38.2	49.8,30.2	45.2,59.6
path	50.4,70.0	40.4,65.2	45.2,83.4
path	38.2,83.8	35.8,65.2	30.0,67.8
path	26.0,61.4
.from Time-Lost Proto Drake##32491 |tip This mob is an extremely rare spawn, so you may be searching for a while.
.collect 1 Reins of the Time-Lost Proto-Drake##44168
|modeldisplay 26711
step
.learnmount Time-Lost Proto Drake##60002 |use Reins of the Time-Lost Proto-Drake##44168
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Phosphorescent Stone Drake",[[
description This guide will walk you through obtaining
description the Phosphorescent Stone Drake
condition end hasmount(88718)
model 35740
step
'This mount drops off a rare spawn found in Deepholm called Aeonaxx.
'Aeonaxx can be found flying around the Temple of Earth, he is an extremely rare find and has a spawn timer of anywhere from 5.5 to 22 hours.
|confirm
step
map Deepholm
path	51.6,42.8	46.4,44.4	42.6,48.2
path	43.8,60.2	46.6,58.8	52.8,64.4
.' Follow the provided path and search for _Aoenaxx_.
'Click Aeonaxx
.from Aeonaxx##50062 |tip After a few seconds, Aeonaxx's name will turn red and become hostile. You have a limited time to kill him before he overwhelms you. Every few seconds he will spawn young drake adds to attack you, these should be killed.
.collect 1 Reins of the Phosphorescent Stone Drake##63042
|modeldisplay 35740
step
.learnmount Phosphorescent Stone Drake##88718 |use Reins of the Phosphorescent Stone Drake##63042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Spectral Gryphon",[[
author support@zygorguides.com
condition end hasmount(107516)
step
'This mount is obtained through the Scroll of Ressurrection program.
'Send a Scroll of Ressurrection to a friend with a deactivated account and redeem your mount on battle.net. Check the mailbox of the character you assigned the mount to.
.collect 1 Spectral Gryphon##76889
step
.learnmount Spectral Gryphon##107516 |use Spectral Gryphon##76889
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Abyssal Seahorse",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(75207)
model 34956
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27724
step
goto 27.4,24.1
.talk 36799
..turnin 27724
..accept 14482
step
goto 18.5,25.4 |n
.' Ride the mercenary ship to Vashj'ir |q 14482/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
step
goto Kelp'thar Forest,45.2,23.4
.talk 36915
..turnin 14482
..accept 24432
step
goto 44.5,25.0
.click Saltwater Stars##9991
.get 3 Saltwater Starfish |q 24432/1
.click Conch Shell##9440
.get Conch Shell |q 24432/2
step
goto 45.2,23.4
.talk 36915
..turnin 24432
..accept 25281
step
goto 44.3,27.6
.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710
.' Rescue 6 Drowning Soldiers |q 25281/1
'|modelnpc Drowning Soldier##39663
step
goto 45.2,23.4
.talk 36915
..turnin 25281
..accept 25405
step
goto 45.2,23.4
.talk 36915
.home The Briny Cutter
step
goto 44.7,22.6
.talk 39887
..turnin 25405
..accept 25357
..accept 25546
step
goto 43.7,25.6
.from Splitclaw Skitterer##40685+
.get 10 Succulent Crab Meat |q 25546/1
step
goto 48.7,27.4
.kill 8 Zin'jatar Raider##39313+ |q 25357/1
step
goto 44.7,22.6
.talk 39887
..turnin 25357
..turnin 25546
..accept 25545
..accept 25564
step
goto 49.1,21.4
.from Slitherfin Eel##40855
..accept 27729 |tip This quest will automatically be accepted after you kill an eel.
step
goto 48.0,20.9
.click Stormwind Breastplates##4074
.get 5 Stormwind Breastplate |q 25545/1
.click Stormwind Helm##9486
.get 5 Stormwind Helm |q 25545/2
.click Stormwind Spear##9494
.get 5 Stormwind Spear |q 25545/3
.from Gilblin Scavenger##40811+
.get 5 Stormwind Shield |q 25545/4
.click the Stormwind S.E.A.L. Equipment##9280
.get 6 Stormwind S.E.A.L. Equipment |q 25564/1
.from Slitherfin Eel##40855+
.' Justifiably Slay 8 Disgusting Eels |q 27729/1
step
'Click the Quest Completion box that pops up
..turnin 27729
step
goto 44.7,22.6
.talk 39887
..turnin 25545
..turnin 25564
..accept 25547
step
goto 45.0,23.5
.talk 40690
..turnin 25547
..accept 25558
step
goto 44.4,24.6
.' Follow the troops out and help them defend the Briny Cutter from the waves of nagas
.' Swim over to [46.4,46.5] after you get kidnapped
.' Defense of The Briny Gutter Complete |q 25558/1
step
goto 46.3,46.9
.talk 40105
..turnin 25558
step
goto 46.0,46.9
.talk 41248
..accept 25477
step
goto 54.2,53.0
.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462 |modelnpc Speckled Sea Turtle##40223
.' Start swimming back to Moanah Stormhoof at [46.0,46.9]
.' Mount the Sea Turtle |q 25477/1
step
goto 46.0,46.9
.talk 41248
..turnin 25477
..accept 25371
step
goto 45.4,46.6
.click Braided Rope##7548
..' Tie your lure off and let it loose
.' Tie off the Seahorse lure |q 25371/1
.clicknpc Abyssal Seahorse##39629 |invehicle
step
'Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
.' Subdue an Abyssal Seahorse |q 25371/2
step
goto 46.0,46.9
.talk 41248
..turnin 25371
.collect 1 Subdued Abyssal Seahorse##54465
'|modeldisplay 34956
step
.learnmount Abyssal Seahorse##75207 |use Subdued Abyssal Seahorse##54465
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Subdued Seahorse",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(98718)
model 34955
step
'This mount is dropped by a rare spawn in Vashj'ir called Poseidus.
|confirm
step
.' _Poseidus_ usually spawns a maximum of twice per day.
.' It is subject to server restarts, meaning it may spawn right after weekly maintenance.
.' Search for it at the provided locations below:
..' [Shimmering Expanse 65.4,41.4]
..' [Shimmering Expanse 38.8,68.8]
..' [Abyssal Depths 40.0,74.2]
.from Poseidus |n
.collect 1 Reins of Poseidus##67151
|modeldisplay 34955
step
.learnmount Subdued Seahorse##98718 |use Reins of Poseidus##67151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Sea Turtle",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(64731)
model 29161
step
'Acquiring _this mount requires _ you to have _fishing_
|confirm
step
'Go to either _Twilight Highlands_, _Uldum_, _Tol Barad Peninsula_, _Howling Fjord_, _Borean Tundra_, _Deepholm_, _Grizzly Hills_, _Mount Hyjal_, _Crystalsong Forest_, _Sholazar Basin_, or _Dragonblight_.
.' Find _any_ and all _schools of fish_ that you can and _fish_ from them. |tip The more you fish, the better chances you have of obtaining this mount. It has an average of .01% drop rate, so you're going to be fishing for a while.
.collect 1 Sea Turtle##46109
|modeldisplay 29161
step
.learnmount Sea Turtle##64731 |use Sea Turtle##46109
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Swift Lovebird",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird
condition end hasmount(102350)
model 6476
step
'This pet can only be obtained during the Love is in the Air event
'It can be purchased for 270 Love Tokens |tip See Love is in the Air Events guide
.' Click here to continue. |confirm
step
goto Stormwind City,62.5,75.3
.talk 37674
.buy Swift Lovebird##72146
|modeldisplay 6476
step
.learnmount Swift Lovebird##102350 |use Swift Lovebird##72146
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Hallows End\\Headless Horseman's Mount",[[
author support@zygorguides.com
description This guide section will walk you through getting the Headless Horseman's Mount
condition end hasmount(48025)
model 25159
step
'This requires the _Hallow's End_ Holiday
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Headless Horsemen_ |goto Scarlet Monastery |noway |c
step
.from Headless Horseman##23682
.collect 1 Loot-Filled Pumpkin |tip This will appear in your bags once you kill the Headless Horsemen and can only be won once a day
|use Loot-Filled Pumpkin##54516
.collect The Horseman's Reins##37012 |tip This item has an extremely low drop rate.
'|modeldisplay 25159
step
.learnmount Headless Horseman's Mount##48025 |use The Horseman's Reins##37012
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake",[[
author support@zygorguides.com
description This guide will walk you through earning the
description Violet Proto-Drake.
step
.' This achievement is earned by completing all of the _Seasonal Events_ that happen over the course of a year.
.' Here is your progress on the acheivement:
.' To Honor One's Elders |achieve 2144/1
.' Fool For Love |achieve 2144/2
.' Noble Gardener |achieve 2144/3
.' For the Children |achieve 2144/4
.' The Flame Keeper |achieve 2144/5
.' Brewmaster |achieve 2144/6
.' Hallowed Be Thy Name |achieve 2144/7
.' Merrymaker |achieve 2144/8
|next a |only if default
|confirm
step
.' _Lunar Festival_
.' Click here for the base questline. |next "Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Main Questline" |confirm
.' Click here for the _Elders_ portion of the event. |next "Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" |confirm
.' Click here for the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/1)
step
.' _Love is in the Air_
.' Click here for the base questline. |next "Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Main Questline" |confirm
.' Click here for the Dailies portion of the event. |next "Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Dailies" |confirm
.' Click here for the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/2)
step
.' _Noblegarden_
.' Click here to cover the _Quests and Dailies_ for this event. |next "Zygor's Alliance Events Guides\\Noblegarden\\Noblegarden Quests and Dailies" |confirm
.' Click here for the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Noblegarden\\Noblegarden Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/3)
step
.' _Children's Week_
.' Click here for the _Stormwind Quests_ portion. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Stormwind Quests" |confirm
.' Click here for the _Shattrath Quests_ portion. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm
.' Click here for the _Oracle Quests_ portion. You can only do This _OR_ the Wolvar version. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm
.' Click here for the _Oracle Quests_ portion. You can only do This _OR_ the Oracle version. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm
.' Click here for the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/4)
step
.' _Midsummer Festival_
.' Click here for the _Quest_ portion. |next "Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests" |confirm
.' Click here the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements" |confirm
.' Click here for the _Pandaria Quest_ portion. |next "Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests (Pandaria)" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/5)
step
.' _Brewfest_
.' Click here for the _quest_ portion. |next "Zygor's Alliance Events Guides\\Brewfest\\Brewfest Quests" |confirm
.' Click here for the _daily_ portion. |next "Zygor's Alliance Events Guides\\Brewfest\\Brewfest Dailies" |confirm
.' Click ehre for the _Event Achievement_ portion. |next "Zygor's Alliance Events Guides\\Brewfest\\Brewfest Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/6)
step
.' _Hallow's End_
.' Click here for the _Quest Portion_ of the event. |next "Zygor's Alliance Events Guides\\Hallow's End\Hallow's End Quests" |confirm
.' Click here for the _Daily Portion_ of the event. |next "Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Dailies" |confirm
.' Click here for the _Achievement Portion_ of the event. |next "Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Achievements" |confirm
.' Click here for the _Pandaria Achievement Portion_ of the event. |next "Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Achievements (Pandaria)" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/7)
step
.' _Merrymaker_
.' Click here for the _Quest Portion_ of the event. |next "Zygor's Alliance Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests" |confirm
|next "Zygor's Alliance Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Achievements" |confirm
.' If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/8)
step
label a
.' Check your _mailbox_ for your mount.
.collect 1 Violet Proto-Drake##44177
'|modeldisplay 28043
step
.' Congratulations, you have earned the Violet Proto-Drake.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Twilight Harbinger",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(107844)
model 39562
step
'This mount is a reward for completing the _"Glory of the Dragon Soul Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Twilight Harbinger##77068
|modeldisplay 39562
step
.learnmount Twilight Harbinger##107844 |use Reins of the Twilight Harbinger##77068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Noblegarden\\Swift Springstrider",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird Mount
condition end hasmount(102349)
model 1221
step
'Thie pet can only be obtained during the Noblegarden event
'It can be purchased for 500 Noblegarden Chocolate or found in a Brightly Colored Egg |tip See Noblegarden Events guide
|confirm
step
goto Teldrassil 55.7,51.3
.talk 32836
.buy 1 Swift Springstrider##72145
|modeldisplay 1221
step
.learnmount Swift Springstrider##102349 |use Swift Springstrider##72145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Great Brewfest Kodo",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Brewfest Kodo
condition end hasmount(49379)
model 24757
step
'This pet can only be obtained during the Brewfest event
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Coren Direbrew_ |goto Blackrock Depths |noway |c
step
.from Coren Direwbrew##23872
.collect 1 Keg-Shaped Treasure Chest##54535 |tip This will appear in your bags once you kill Coren Direbrew and can only be won once a day
|use Keg-Shaped Treasure Chest##54535
.collect 1 Great Brewfest Kodo##37828 |tip This mount has a low chance of dropping. (4%)
'|modeldisplay 24757
step
.learnmount Great Brewfest Kodo##49379 |use Great Brewfest Kodo##37828
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Brewfest Rams",[[
description This guide section will walk you through getting the Swift Brewfest Ram
condition end hasmount(24368)
model 22350
step
'This pet can only be obtained during the Brewfest event
'It can be purchased for 100g
|confirm
step
goto Dun Morogh 53.6,38.6
.talk 24468
.buy Swift Brewfest Ram##33977
.buy Brewfest Ram##33976
|modeldisplay 22350
|modeldisplay 22265
step
.learnmount Swift Brewfest Ram##24368 |use Swift Brewfest Ram##33977
.learnmount Brewfest Ram##23588 |use Swift Brewfest Ram##33976
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Hallows End\\Magic Broom",[[
description This guide section will walk you through getting the Magic Broom
condition end hasmount(47977)
model 21939
step
'This pet can only be obtained during the Hallows End event, and it disappears once the event is over.
.collect 150 Tricky Treat##33226
step
goto Elwynn Forest,31.8,50.0
.talk 53728
.buy Magic Broom##37011
step
'Congratulations, you have obtained the _Magic Broom_ mount!
]])
