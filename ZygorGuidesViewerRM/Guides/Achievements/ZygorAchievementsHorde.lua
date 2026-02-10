local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.HordeInstalled then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\One That Didn't Get Away",[[
description This guide will show you how to earn the achievement, One That Didn't Get Away.
step
condition achieved(878)
goto Stormwind City,55.0,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
goto 54.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch a 32 Pound Catfish |achieve 878
step
'Congratulations! You have earned the achievement, _One That Didn't Get Away_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\The Right Stuff",[[
description Learn the artisan riding skill.
author support@zygorguides.com
step
condition achieved(892)
'Reach level 20 to get this Achievement.
.' Earn the Giddy Up Achievement |achieve 891
step
goto Orgrimmar,48.9,59.3
.talk 44919
.' Learn the Journeyman Riding Skill.
.' Earn the Fast and Furious Achievement |achieve 889
.' Learn the Expert Riding Skill.
.' Earn the Into the Wild Blue Yonder Achievement |achieve 890
.' Learn the Artisan Riding Skill.
.' Earn The Right Stuff Achievement |achieve 892
step
'Congratulations!  You've earned the The Right Stuff Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Shave and a Haircut",[[
description Visit a Barber Shop and get your hair cut.
author support@zygorguides.com
step
condition achieved(545)
goto Orgrimmar,40.0,60.7
.' Click on the Barbershop Chair |tip It looks like a mechanical chair with a foot rest.
.' Change your Hair Style or Hair Color, than click "Okay".
.'
.' Earn the Shave and a Haircut Achievement |achieve 545
step
'Congratulations!  You've earned the Shave and a Haircut Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Dual Talent Specialization",[[
description Visit your class trainer when you are at least level 30 and activate your Dual Talent Specialization.
author support@zygorguides.com
step
condition achieved(2716)
goto Orgrimmar,63.8,32.7
.talk 3352
.' Learn Dual Talent Specialization |achieve 2716
only Hunter
step
goto Orgrimmar,45.9,66.9 |n
.' Enter the cave |goto Orgrimmar,45.9,66.9,0.5 |noway |c
only Rogue,Mage,Warlock
step
goto Orgrimmar,44.4,61.6
.talk 3328
.' Learn Dual Talent Specialization |achieve 2716
only Rogue
step
goto Orgrimmar,49.2,70.9
.talk 45337
.' Learn Dual Talent Specialization |achieve 2716
only Priest
step
goto Orgrimmar,44.8,51.5
.talk 44726
.' Learn Dual Talent Specialization |achieve 2716
only Druid
step
goto Orgrimmar,49.3,71.1
.talk 23128
.' Learn Dual Talent Specialization |achieve 2716
only Paladin
step
goto Orgrimmar,48.6,62.7
.talk 47247
.' Learn Dual Talent Specialization |achieve 2716
only Mage
step
goto Orgrimmar,44.6,52.0
.talk 44740
.' Learn Dual Talent Specialization |achieve 2716
only Shaman
step
goto Orgrimmar,48.4,55.9
.talk 5815
.' Learn Dual Talent Specialization |achieve 2716
only Warlock
step
goto Orgrimmar,44.7,53.3
.talk 44723
.' Learn Dual Talent Specialization |achieve 2716
only Warrior
step
goto Orgrimmar,68.8,40.2
.talk 62445
.' Learn Dual Talent Specialization |achieve 2716
only Monk
step
'Congratulations!  You've earned the Dual Talent Specialization Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Safe Deposit",[[
description Buy 7 additional bank slots.
step
condition achieved(546)
'This achievement will cost you _111.1_ Gold to complete.
|confirm
step
goto Orgrimmar,48.7,84.0
.talk 44852
.' Purchase 7 Bank Slots.
.' Earn the Safe Deposit Achievement |achieve 546
step
'Congratulations, you've earned the _Safe Deposit_ Achievement!
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Greedy Achievement",[[
description Win a greed roll on a superior or better item above level 185 by rolling 100.
author support@zygorguides.com
step
condition achieved(558)
For this achievement you will need to be in a group and roll a 100 on a superior (blue) item of item level 185 that drops from a mob in the following dungeons:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning.
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm or Pandaria.
.' Click here to continue to the next step |confirm
step
'Greed Roll a 100 on a Superior (Blue) item with iLvl 185+
.' Earn the Greedy Achievement |achieve 558
step
'Congratulations!  You've earned:
.' Greedy Achievement |only if achieved(558)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Needy Achievement",[[
description Win a need roll on a superior or better item above level 185 by rolling 100.
author support@zygorguides.com
step
condition achieved(559)
For this achievement you will need to be in a group and roll a 100 on a superior (blue) item of item level 185 that drops from a mob in the following dungeons:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning.
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm or Pandaria.
.' Click here to continue to the next step |confirm
step
'Need Roll a 100 on a Superior (Blue) item with iLvl 185+
.' Earn the Needy Achievement |achieve 559
step
'Congratulations!  You've earned:
.' Needy Achievement |only if achieved(559)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\My Sack is Gigantique",[[
description Equip Haris Pilton's "Gigantique" Bag.
author support@zygorguides.com
step
condition achieved(1165)
'For this achievement, you will need to purchase and equip a bag you can purchase from Haris Pilton. The bag is 1200 gold, so you may have to save up before completing this achievement.
|confirm
step
goto Shattrath City,75.4,30.5
.talk 18756
.buy "Gigantique" Bag##38082 |n
.' Click the Gigantique Bag to equip it |use "Gigantique" Bag##38082
.' Earn the My Sack is Gigantique Achievement |achieve 1165
step
'Congratulations!  You've earned the My Sack is Gigantique Achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Friend or Fowl?",[[
description Slay 15 turkeys in 3 minutes.
author support@zygorguides.com
step
condition achieved(1254)
goto Howling Fjord,66.3,71.1
.from Fjord Turkey##24746+ |tip Kill them as fast as you can, then hurry to kill another one each time.
.' Slay 15 Turkeys in 3 Minutes |achieve 1254
step
'Congratulations!  You've earned the Friend or Fowl? Achievement! |achieve 1254
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Going Down?",[[
description Fall 65 yards without dying.
author support@zygorguides.com
step
condition achieved(964)
'For this achievement you must fall 65 yards without dying. You can do this in several different ways, depending on yoiur class, but we listed the easiest way regardless of level and class.
|confirm
step
goto Orgrimmar,51.5,62.8
.' Jump down the elevator shaft when the elevator is at the bottom
.' Earn the Going Down? Achievement |achieve 964
step
'Congratulations!  You've earned the Going Down? Achievement! |achieve 964
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Well Read",[[
description Read books.
author support@zygorguides.com
step
condition achieved(1244)
.' This guide will walk you through the _Well Read_ Achievement.
.' Unfortunately, after the Mists of Pandaria update, a lot of books were removed from the game.
.' Also, the Horde will have to travel through a lot of hostile faction areas, as they aren't available in any friendly zones.
|confirm
step
goto Silvermoon City,66.8,73.9
.' Click on The Alliance of Lordaeron |tip It looks like a blue book laying on the floor upstairs in this building.
.' Read The Alliance of Lordaeron |achieve 1244/21
step
goto 68.6,64.1
.' Click on The Betrayer Ascendant |tip It looks like a black book sitting on a wooden crate inside of a building.
.' Read The Betrayer Ascendant |achieve 1244/23
step
goto Undercity,67.6,37.3
.' Click on Civil War in the Plaguelands |tip It looks like a green book sitting on this small wooden table.
.' Read Civil War in the Plaguelands |achieve 1244/7
step
goto 61.9,57.8
.' Click on Exile of the High Elves |tip It looks like a blue book sitting on a wooden crate.
.' Read Exile of the High Elves |achieve 1244/9
step
goto 56.0,50.6
.' Click on The Old Gods and the Ordering of Azeroth |tip It looks like a blue book sitting on the edge of this wooden table.
.' Read The Old Gods and the Ordering of Azeroth |achieve 1244/33
step
goto Tirisfal Glades,60.9,52.1
.' Click on Aegwynn and the Dragon Hunt |tip It looks like a brownish red book laying on the ground.
.' Read Aegwynn and the Dragon Hunt |achieve 1244/1
step
goto 60.9,50.6
.' Click on Charge of the Dragonflights |tip It looks like a brown book laying on the ground behind this big building.  It's outside, not inside the building.
.' Read Charge of the Dragonflights |achieve 1244/6
step
goto Scholomance/1,63.3,60.6
.from Instructor Chillheart##58633
|confirm
step
goto Scholomance/2,59.7,19.4
.from Jandice Barov##59184
|confirm
step
goto Scholomance/2,45.9,26.6
.from Rattlegore##59153
|confirm
step
goto Scholomance/2,56.4,41.1
.' Click on the _The Invasion of Draenor_, on the ledge in the corner.
.' Read The Invasion of Draenor |achieve 1244/28
step
goto Stratholme/1,39.0,37.9
.' Click on War of the Spider |tip It looks like a blue book laying on the ground.
.' Read War of the Spider |achieve 1244/40
.' This can also be found at [25.8,71.5].
step
goto Stratholme/1,30.1,41.3
.' Click on The Seven Kingdoms |tip It looks like a brown book on the edge of the middle table here.
.' Read The Seven Kingdoms |achieve 1244/36
step
goto 30.5,40.7
.' Click on Kil'Jaeden and the Shadow Pact |tip It looks like a black book on this small table.
.' Read Kil'Jaeden and the Shadow Pact |achieve 1244/13
step
goto Stratholme/1,25.8,71.6
.' Click on Icecrown and the Frozen Throne |tip It looks like a blue book on the corner of this small table.
.' Read Icecrown and the Frozen Throne |achieve 1244/10
step
goto Stratholme/1,25.1,70.3
.' Click on Kel'Thuzad and the Forming of the Scourge |tip It looks like a black book on the edge of this small table.
.' Read Kel'Thuzad and the Forming of the Scourge |achieve 1244/12
.' Click on The Birth of the Lich King |tip It looks like a black book on the corner of this table.
.' Read The Birth of the Lich King |achieve 1244/24
.' Click on The Lich King Triumphant |tip It looks like a brown book on the corner of this table.
.' Read The Lich King Triumphant |achieve 1244/31
step
goto Hillsbrad Foothills,56.7,47.5
.' Click on Arathor and the Troll Wars |tip It looks like a green book laying on the ground.
.' Read Arathor and the Troll Wars |achieve 1244/3
.' This can also be found at [58.5,47.9]
step
goto Arathi Highlands,69.2,33.1
.' Click on Rise of the Blood Elves |tip It looks like a red book on the corner of this table.
.' Read Rise of the Blood Elves |achieve 1244/17
step
goto Loch Modan,37.2,46.9
.' Click on The Last Guardian |tip It looks like a green book on a small wooden table next to a bed downstairs in this house.
.' Read The Last Guardian |achieve 1244/30
.' You can also find it in Westfall at 52.6,53.1 |goto Westfall,52.6,53.1 |n |tip Click to set waypoint.
step
goto Swamp of Sorrows,49.3,55.5
.' Click on The Dark Portal and the Fall of Stormwind |tip It looks like a blue book on the ledge next to the wall.
.' Read The Dark Portal and the Fall of Stormwind |achieve 1244/25
step
goto Swamp of Sorrows,49.2,55.4
.' Click on The New Horde |tip It looks like a green book sitting on a bench all the way upstairs in this building.
.' Read The New Horde |achieve 1244/32
step
goto 47.8,54.9
.' Click on Rise of the Horde |tip It looks like a brown book sitting on a bench all the way upstairs in this building.
.' Read Rise of the Horde |achieve 1244/18
step
goto Stormwind City,85.3,23.4
.' Click on The World Tree and the Emerald Dream |tip It looks like a green book at the edge of this table.
.' Read The World Tree and the Emerald Dream |achieve 1244/39
.' Click on The War of the Ancients |tip It looks like a green book at the edge of this table.
.' Read The War of the Ancients |achieve 1244/38
step
goto Duskwood,74,45 |tip The book is upstairs.
.' Click on Kil'Jaeden and the Shadow Pact |tip It looks like a black book on this small table.
.' Read Kil'Jaeden and the Shadow Pact |achieve 1244/13
step
goto Blasted Lands,60.1,13.6
.' The only place to get this book is inside of Alliance cities at the moment.
.' Click on Aftermath of the Second War |tip It looks like a blue book at the edge of this table.
.' Read Aftermath of the Second War |achieve 1244/2
step
goto The Cape of Stranglethorn,41.0,74.4
.' Click on Sunwell - The Fall of Quel'Thalas |tip It looks like a green book sitting on a small wooden table inside the inn.
.' Read Sunwell - The Fall of Quel'Thalas |achieve 1244/20
step
goto The Cape of Stranglethorn,40.7,7..8 |tip It will be on the edge of a table.
.' Click on Beyond the Dark Portal |tip It looks like a green book laying on the corner of this table.
.' Read Beyond the Dark Portal |achieve 1244/5
step
goto 41.9,73.5
.' Click The Scourge of Lordaeron
.' Read The Scourge of Lordaeron |achieve 1244/34
step
goto 42.1,73.8
.' Click on Empires' Fall |tip It looks like a blue book sitting on a bookshelf downstairs in this building.
.' Read Empires' Fall |achieve 1244/8
step
goto 42.1,73.8
.' Click on The Twin Empires |tip It looks like a green book sitting on a bookshelf downstairs in this building.
.' Read The Twin Empires |achieve 1244/37
step
goto 42.2,73.6
.' Go upstairs through the building to the north
.' Click on The Sentinels and the Long Vigil |tip It looks like a brown book sitting on a small wooden table next to a bed upstairs in this building.
.' Read The Sentinels and the Long Vigil |achieve 1244/35
step
goto Northern Barrens,66.9,74.7
.' Click on Mount Hyjal and Illidan's Gift |tip It looks like a green book sitting on the corner of a wooden table inside this building.
.' Read Mount Hyjal and Illidan's Gift |achieve 1244/15
step
goto Northern Barrens,67.0,75.0
.' Click on Sargeras and the Betrayal |tip It looks like a black book on a square table.
.' Read Sargeras and the Betrayal |achieve 1244/19
step
goto Northern Barrens,68.0,73.5
.' Click on Archimonde's Return and the Flight to Kalimdor |tip It looks like a brown book laying on the ground.
.' Read Archimonde's Return and the Flight to Kalimdor |achieve 1244/4
step
goto Southern Barrens,65.5,46.7
.' Click on Lethargy of the Orcs |tip It looks like a reddish book sitting on a chair at the bottom of this tower.
.' Read Lethargy of the Orcs |achieve 1244/14
step
goto Southern Barrens,50.1,86.6
.' Click on War of the Three Hammers |tip It looks like a brown book on a wooden table in this small side room.
.' Read War of the Three Hammers |achieve 1244/41
step
goto Mulgore,32.6,49.5
.' Click on Ironforge - the Awakening of the Dwarves |tip It looks like a blue book on corner of this wooden table.
.' Read Ironforge - the Awakening of the Dwarves |achieve 1244/11
step
goto 32.6,49.5
.' Click on The Battle of Grim Batol |tip It looks like a brown book on this wooden table.
.' Read The Battle of Grim Batol |achieve 1244/22
step
goto Tanaris,64.9,50.0 |n
.' Enter the Caverns of Time tunnel |goto Tanaris,64.9,50.0,0.5 |noway |c |travelfor 1
step
goto 66.5,49.8
.' Follow the path down
.' Click on The Kaldorei and the Well of Eternity |tip It looks like a brown book sitting on a ledge inside this small side room.
.' Read The Kaldorei and the Well of Eternity |achieve 1244/29
step
goto Tanaris,51.4,29.4
.' Click on Old Hatreds - The Colonization of Kalimdor |tip It looks like a brown book on this table.
.' Read Old Hatreds - The Colonization of Kalimdor |achieve 1244/16
step
goto Dalaran,66.9,36.1
.' Click on The Guardians of Tirisfal |tip It looks like a black book laying on the ground upstairs in this building.
.' Read The Guardians of Tirisfal |achieve 1244/27
step
'Congratulations!  You've earned the Well Read Achievement! |achieve 1244
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Higher Learning",[[
description Read the volumes of "The Schools of Arcane Magic" found in Dalaran.
step
condition achieved(1956)
'Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times), so this achievement may take you a while to get. |tip The book you want won't always be there.  Fake trash books spawn to make the achievement even harder to get, but keep at it.  Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
.' This is an achievement that you may want to dedicate a lot of time to, if you want it. |tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide.
.' Good luck!
|confirm
step
label "RestartHigherLearning"
goto Dalaran,64.4,52.4
.' Click The Schools of Arcane Magic - Illusion |tip It looks like a brown book laying on a wooden crate.
.' Read The Schools of Arcane Magic - Illusion |achieve 1956/6
.' Click here if this book isn't available |confirm
step
goto 56.6,45.6
.' Click The Schools of Arcane Magic - Introduction |tip It looks like a blue book laying on ground next to a bookshelf inside this building.
.' Read The Schools of Arcane Magic - Introduction |achieve 1956/1
.' Click here if this book isn't available |confirm
step
goto 52.3,54.8
.' Click The Schools of Arcane Magic - Abjuration |tip It looks like a brown book laying on ground next to a small table inside this building.
.' Read The Schools of Arcane Magic - Abjuration |achieve 1956/2
.' Click here if this book isn't available |confirm
step
goto 43.6,46.7
.' Click The Schools of Arcane Magic - Enchantment |tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
.' Read The Schools of Arcane Magic - Enchantment |achieve 1956/5
.' Click here if this book isn't available |confirm
step
goto 46.8,40.0
.' Click The Schools of Arcane Magic - Transmutation |tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Transmutation |achieve 1956/8
.' Click here if this book isn't available |confirm
step
goto 46.8,39.1
.' Click The Schools of Arcane Magic - Necromancy |tip It looks like a blue book laying on a bookshelf upstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Necromancy |achieve 1956/7
.' Click here if this book isn't available |confirm
step
goto 30.8,46.0
.' Click The Schools of Arcane Magic - Conjuration |tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
.' Read The Schools of Arcane Magic - Conjuration |achieve 1956/3
.' Click here if this book isn't available |confirm
step
goto 26.5,52.1
.' Click The Schools of Arcane Magic - Divination |tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
.' Read The Schools of Arcane Magic - Divination |achieve 1956/4
.' Click here if this book isn't available |confirm |next "RestartHigherLearning"
step
'Congratulations!  You've earned the Higher Learning Achievement! |achieve 1956
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\It's Happy Hour Somewhere",[[
description Drink 25 different types of beverages.
step
condition achieved(1833)
goto Orgrimmar,53.6,78.8
.talk 6929
.buy 1 Refreshing Spring Water##159
.buy 1 Ice Cold Milk##1179
.buy 1 Melon Juice##1205
.buy 1 Sweet Nectar##1708
.buy 1 Moonberry Juice##1645
.buy 1 Morning Glory Dew##8766
.buy 1 Filtered Draenic Water##28399
.buy 1 Fresh Water##58274
.buy 1 Pugnent Seal Whey##33444
.buy 1 Honeymint Tea##33445
.buy 1 Sparkling Oasis Water##58256
.buy 1 Highland Spring Water##58257
step
'Drink the Refreshing Spring Water |use Refreshing Spring Water##159
'Drink the Ice Cold Milk |use Ice Cold Milk##1179
'Drink the Melon Juice |use Melon Juice##1205
'Drink the Sweet Nectar |use Sweet Nectar##1708
'Drink the Moonberry Juice |use Moonberry Juice##1645
'Drink the Morning Glory Dew |use Morning Glory Dew##8766
'Drink the Filtered Draenic Water |use Filtered Draenic Water##28399
'Drink the Pugnent Seal Whey |use Pugnent Seal Whey##33444
'Drink the Fresh Water |use Fresh Water##58274
'Drink the Honeymint Tea |use Honeymint Tea##33445
'Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256
'Drink the Highland Spring Water |use Highland Spring Water##58257
|confirm
step
goto Thousand Needles,76.5,74.8
.talk 40832
.buy 1 Bottle of Pinot Noir##2723
.buy 1 Glass of Eversong Wine##44570
.buy 1 Honey Mead##40035
.buy 1 Flask of Port##2593
.buy 1 Bottle of Silvermoon Port##44571
.buy 1 Skin of Dwarven Stout##2596
.buy 1 Flask of Bitter Cactus Cider##44575
.buy 1 Snowplum Brandy##40036
.buy 1 Flagon of Mead##2594
.buy 1 Cup of Frog Venom Brew##44573
.buy 1 Caraway Burnwine##40042
.buy 1 Jug of Bourbon##2595
.buy 1 Skin of Mulgore Firewater##44574
step
'Drink the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
'Drink the Glass of Eversong Wine |use Glass of Eversong Wine##44570
'Drink the Honey Mead |use Honey Mead##40035
'Drink the Flask of Port |use Flask of Port##2593
'Drink the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
'Drink the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
'Drink the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
'Drink the Snowplum Brandy |use Snowplum Brandy##40036
'Drink the Flagon of Mead |use Flagon of Mead##2594
'Drink the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
'Drink the Caraway Burnwine |use Caraway Burnwine##40042
'Drink the Jug of Bourbon |use Jug of Bourbon##2595
'Drink the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
.' Earn the It's Happy Hour Somewhere achievement! |achieve 1833
step
'Congratulations!  You've earned the It's Happy Hour Somewhere achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Tastes Like Chicken",[[
description Sample 50 different kinds of Azeroth's delectable dishes.
step
condition achieved(1832)
goto Orgrimmar,53.6,78.8
.talk 6929
.buy 1 Tough Jerky##117
.buy 1 Haunch of Meat##2287
.buy 1 Mutton Chop##3770
.buy 1 Wild Hog Shank##3771
.buy 1 Cured Ham Steak##4599
.buy 1 Roasted Quail##8952
.buy 1 Smoked Talbuk Venison##27854
.buy 1 Salted Venison##33454
.buy 1 Mead Basted Caribou##35953
.buy 1 Roasted Beef##58268
step
goto Orgrimmar,53.6,78.8
.talk 6929
.buy 1 Massive Turkey Leg##58269
.buy 1 Tough Hunk of Bread##4540
.buy 1 Freshly Baked Bread##4541
.buy 1 Moist Cornbread##4542
.buy 1 Mulgore Spice Bread##4544
.buy 1 Soft Banana Bread##4601
.buy 1 Homemade Cherry Pie##8950
.buy 1 Mag'har Grainbread##27855
.buy 1 Crusty Flatbread##33449
.buy 1 Sweet Potato Bread##35950
.buy 1 Pine Nut Bread##58260
.buy 1 Buttery Wheat Roll##58261
step
'Eat the Tough Jerky |use Tough Jerky##117
'Eat the Tough Hunk |use Tough Hunk of Bread##4540
'Eat the Haunch of Meat |use Haunch of Meat##2287
'Eat the Freshly Baked Bread |use Freshly Baked Bread##4541
'Eat the Mutton Chop |use Mutton Chop##3770
'Eat the Moist Cornbread |use Moist Cornbread##4542
'Eat the Wild Hog Shank |use Wild Hog Shank##3771
'Eat the Mulgore Spice Bread |use Mulgore Spice Bread##4544
'Eat the Cured Ham Steak |use Cured Ham Steak##4599
'Eat the Soft Banana Bread |use Soft Banana Bread##4601
|confirm
step
'Eat the Roasted Quail |use Roasted Quail##8952
'Eat the Homemade Cherry Pie |use Homemade Cherry Pie##8950
'Eat the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
'Eat the Mag'har Grainbread |use Mag'har Grainbread##27855
'Eat the Salted Venison |use Salted Venison##33454
'Eat the Crusty Flatbread |use Crusty Flatbread##33449
'Eat the Mead Basted Cariboy |use Mead Basted Caribou##35953
'Eat the Sweet Potato Bread |use Sweet Potato Bread##35950
'Eat the Roasted Beef |use Roasted Beef##58268
'Eat the Pine Nut Bread |use Pine Nut Bread##58260
'Eat the Massive Turkey |use Massive Turkey Leg##58269
'Eat the Buttery Wheat Roll |use Buttery Wheat Roll##58261
|confirm
step
goto 32.1,69.5
.talk 45008
.buy 1 Slitherskin Mackerel##787
.buy 1 Longjaw Mud Snapper##4592
.buy 1 Bristle Whisker Catfish##4593
.buy 1 Rockscale Cod##4594
.buy 1 Striped Yellowtail##21552
.buy 1 Spinefin Halibut##8957
.buy 1 Sunspring Carp##27858
.buy 1 Fillet of Icefin##33451
.buy 1 Poached Emperor Salmon##35951
.buy 1 Sliced Raw Billfish##58262
.buy 1 Grilled Shark##58263
step
goto 32.6,68.6
.talk 45008
.buy 1 Shiny Red Apple##4536
.buy 1 Tel'Abim Banana##4537
.buy 1 Snapvine Watermelon##4538
.buy 1 Goldenbark Apple##4539
.buy 1 Moon Harvest Pumpkin##4602
.buy 1 Deep Fried Plantains##8953
.buy 1 Skethyl Berries##27856
.buy 1 Tundra Berries##35949
.buy 1 Savory Snowplum##35948
.buy 1 Sour Green Apple##58264
.buy 1 Highland Pomegranate##58265
step
'Eat the Slitherskin Mackerel |use Slitherskin Mackerel##787
'Eat the Shiny Red Apple |use Shiny Red Apple##4536
'Eat the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
'Eat the Tel'Abim Banana |use Tel'Abim Banana##4537
'Eat the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
'Eat the Snapvine Watermelon |use Snapvine Watermelon##4538
'Eat the Rockscale Cod |use Rockscale Cod##4594
'Eat the Goldenbark Apple |use Goldenbark Apple##4539
'Eat the Striped Yellowtail |use Striped Yellowtail##21552
'Eat the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
|confirm
step
'Eat the Spinefin Hailibut |use Spinefin Halibut##8957
'Eat the Deep Fried Plantains |use Deep Fried Plantains##8953
'Eat the Sunspring Carp |use Sunspring Carp##27858
'Eat the Skethyl Berries |use Skethyl Berries##27856
'Eat the Fillet of Icefin |use Fillet of Icefin##33451
'Eat the Tundra Berries |use Tundra Berries##35949
'Eat the Poached Emperor |use Poached Emperor Salmon##35951
'Eat the Savory Snowplum |use Savory Snowplum##35948
'Eat the Sliced Raw Billfish |use Sliced Raw Billfish##58262
'Eat the Sour Green Apple |use Sour Green Apple##58264
'Eat the Grilled Shark |use Grilled Shark##58263
'Eat the Highland Pomegranate |use Highland Pomegranate##58265
|confirm
step
goto Orgrimmar,45.9,66.9 |n
.' Follow the path down |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto Orgrimmar,49.7,61.8
.talk 3329
.buy 1 Forest Mushroom Cap##4604
.buy 1 Red-Speckeled Mushroom##4605
.buy 1 Spongy Morel##4606
.buy 1 Delicious Cave Mold##4607
.buy 1 Raw Black Truffle##4608
.buy 1 Dried King Bolete##8948
step
'Eat the Forest Mushroom |use Forest Mushroom Cap##4604
'Eat the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
'Eat the Spongy Morel |use Spongy Morel##4606
'Eat the Delicious Cave Mold |use Delicious Cave Mold##4607
'Eat the Raw Black Truffle |use Raw Black Truffle##4608
'Eat the Dried King Bolete |use Dried King Bolete##8948
.' Earn the Tastes Like Chicken achievement! |achieve 1832
step
'Congratulations!  You've earned the Tastes Like Chicken Achievement!
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Armored Brown Bear",[[
description Obtain an Armored Brown Bear from Mei Francis in Dalaran.
step
condition achieved(2076)
'You will need 750 gold to complete this achievement
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Armored Brown Bear##44226 |n
.' Click the Reins of the Armored Brown Bear |use Reins of the Armored Brown Bear##44226
.' Earn the Armored Brown Bear achievement! |achieve 2076
step
'Congratulations!  You've earned the Armored Brown Bear achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Wooly Mammoth",[[
description Obtain a Wooly Mammoth from Mei Francis in Dalaran.
step
condition achieved(2077)
'You will need 2,175 Justice Points to complete this achievement |tip You earn Justice Points for completing your first random normal dungeon each day, as well as for killing Heroic dungeon bosses.
.earn 2175 Justice Point##395
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Wooly Mammoth##44231 |n
.' Click the Reins of the Wooly Mammoth |use Reins of the Wooly Mammoth##44231
.' Earn the Wooly Mammoth achievement! |achieve 2077
step
'Congratulations!  You've earned the Wooly Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Traveler's Tundra Mammoth",[[
description Obtain a Traveler's Tundra Mammoth from Mei Francis in Dalaran.
step
condition achieved(2078)
'You will need 20,000 gold to complete this achievement
.' You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Traveler's Tundra Mammoth##44234 |n
.' Click the Reins of the Traveler's Tundra Mammoth |use Reins of the Traveler's Tundra Mammoth##44234
.' Earn the Traveler's Tundra Mammoth achievement! |achieve 2078
step
'Congratulations!  You've earned the Traveler's Tundra Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Ring of the Kirin Tor",[[
description Purchase a Signet of the Kirin Tor, Band of the Kirin Tor, Loop of the Kirin Tor, or Ring of the Kirin Tor in Dalaran.
step
condition achieved(2084)
'You will need 8,500 gold to complete this achievement
.' You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
|confirm
step
goto Dalaran,40.4,33.8
.talk 32172
..' Buy any of these 4 rings, whichever you prefer
.buy Band of the Kirin Tor##40586 |n
.buy Loop of the Kirin Tor##44934 |n
.buy Ring of the Kirin Tor##44935 |n
.buy Signet of the Kirin Tor##40585 |n
.' Earn the Ring of the Kirin Tor achievement! |achieve 2084
step
'Congratulations!  You've earned the Ring of the Kirin Tor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\One Hump or Two?",[[
description Obtain a camel mount in Uldum (with just one hump).
step
condition achieved(4888)
'You will need 100 gold to complete this achievement
.' You also need to be Exalted with the Ramkahen faction |tip Use the Ramkahen Reputation guide in the Cataclysm Dailies guide to become Exhalted with the Ramkahen faction.
|confirm
step
goto Uldum,54.0,33.3
.talk 48617
..' Buy either of these 2 camel mounts
.buy Reins of the Brown Riding Camel##63044 |n
.buy Reins of the Tan Riding Camel##63045 |n
.' Click the Reins of the Brown Riding Camel |use Reins of the Brown Riding Camel##63044
.' Click the Reins of the Tan Riding Camel |use Reins of the Tan Riding Camel##63045
.' Earn the One Hump or Two? achievement! |achieve 4888
step
'Congratulations!  You've earned the One Hump or Two? achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\From Hell's Heart I Stab At Thee",[[
description This guide will help you obtain the From Hell's Heart I Stab At Thee Achievement
step
condition achieved(4975)
goto Shimmering Expanse,70.6,55.0
.' The _Whale Shark_ swims in a circle around Nespirah. Some searching may be required.
.' When fighting the whale shark, it is important to know that you cannot use melee attacks, as he will kill you rather quickly. The best strategy is to use ranged attacks to kite him around and just slowly drain his health to 0.
.from Whale Shark##40728 |achieve 4975
step
'Congratulations!  You've earned the From Hell's Heart I Stab At Thee achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Bloody Rare",[[
description Kill all of the Rare enemies in Outlands
step
achieveid 1311
condition achieved(1312)
goto Hellfire Peninsula,69.0,71.4
.from Mekthorg the Wild##18677
.' If Mekthorg the Wild is not here, you may be able to find him in the following locations:
.' [41.6,71.6]
.' [47.2,58.4]
.' [52.0,51.2]
.' [46.6,43.0]
|achieve 1312/14
step
goto 57.2,71.8
.from Fulgorge##18678
.' If Fulgorge is not here, you may be able to find him in the following locations:
.' [42.8,71.8]
.' [43.6,50.6]
.' [30.8,63.0]
.' [27.6,42.6]
|achieve 1312/9
step
goto 41.0,32.8
.from Vorakem Doomspeaker##18679
.' If Vorakem Doomspeaker is not here, you may be able to find him in the following locations:
.' [54.4,28.6]
.' [65.4,31.4]
.' [73.6,40.2]
.' [70.0,45.6]
.' [72.6,56.8]
|achieve 1312/20
step
goto Blade's Edge Mountains,30.6,67.2
.from Hemathion##18692
.' If Hemathion is not here, you may be able to find him at [30.6,48.4]
|achieve 1312/11
step
goto 68.8,70.0
.from Morcrush##18690
.' If Morcrush is not here, you may be able to find him in the following locations:
.' [62.6,52.6]
.' [65.8,47.8]
.' [71.0,42.0]
.' [73.8,28.6]
.' [61.0,23.0]
|achieve 1312/15
step
goto 44.6,77.4
.from Speaker Mar'Grom##18693
.' If Speaker Mar'Grom is not here, you may be able to find him in the following locations:
.' [42.0,50.8]
.' [57.6,29.6]
.' [66.2,23.6]
|achieve 1312/18
step
goto Zangarmarsh,25.0,24.0
.from Bog Lurker##18682
.' If Bog Lurker is not here, you may be able to find him in the following locations:
.' [41.2,60.8]
.' [50.6,59.4]
.' [86.6,82.6]
|achieve 1312/2
step
goto 25.8,42.6
.from Coilfang Emissary##18681
.' If Coilfang Emissary is not here, you may be able to find him in the following locations:
.' [63.0,38.0]
.' [64.4,69.6]
.' [73.6,82.4]
|achieve 1312/4
step
goto 10.6,51.0
.from Marticar##18680
.' If Marticar is not here, you may be able to find him in the following locations:
.' [18.0,34.4]
.' [38.6,34.8]
.' [54.4,33.8]
.' [72.0,35.8]
.' [79.6,53.6]
|achieve 1312/13
step
goto Netherstorm,59.8,66.4
.from Chief Engineer Lorthander##18697
.' If Chief Engineer Lorthander is not here, you may be able to find him in the following locations:
.' [47.6,81.2]
.' [27.8,39.4]
|achieve 1312/3
step
goto 58.2,37.8
.from Ever-Core the Punisher##18698 |tip He walks around the towers in Netherstorm, so you will need to search for him.
|achieve 1312/8
step
goto 25.6,82.6
.from Nuramoc##20932
.' If Nuramoc is not here, you may be able to find him in the following locations:
.' [40.6,79.8]
.' [67.6,61.0]
.' [53.0,59.2]
.' [34.0,33.6]
.' [36.0,20.8]
|achieve 1312/16
step
goto Nagrand,39.8,71.0
.from Voidhunter Yar##18683 |tip He walks in a circle around Oshu'Gun, you may need to fly around to find him.
|achieve 1312/19
step
goto 34.0,50.0
.from Goretooth##17144
.' If Goretooth is not here, you may be able to find him in the following locations:
.' [44.8,44.8]
.' [59.6,28.4]
.' [77.0,80.2]
|achieve 1312/10
step
goto Terokkar Forest,39.0,63.6
.from Crippler##18689 |tip He walks around and inside Auchindoun, so you may need to search for him.
|achieve 1312/6
step
goto 70.2,49.0
.from Doomsayer Jurim##18686
.' If Doomsayer Jurim is not here, you may be able to find him in the following locations:
.' [56.8,32.6]
.' [54.4,20.4]
.' [43.2,26.4]
.' [35.8,37.4]
|achieve 1312/7
step
goto 56.6,67.6
.from Okrek##18685
.' If Okrek is not here, you may be able to find him in the following locations:
.' [31.8,42.6]
.' [50.0,19.6]
.' [59.8,24.2]
|achieve 1312/17
step
goto Shadowmoon Valley,71.0,61.6
.from Ambassador Jerrikar##18695
.' If Ambassador Jerrikar is not here, you may be able to find him in the following locations:
.' [47.6,68.6]
.' [29.6,52.6]
.' [46.2,28.8]
.' [57.6,38.2]
|achieve 1312/1
step
goto 70.8,66.8
.from Collidus the Warp-Watcher##18694
.' If Collidus the Warp-Watcher is not here, you may be able to find him in the following locations:
.' [58.6,71.6]
.' [46.0,53.2]
.' [37.6,43.6]
.' [60.0,22.0]
.' [73.8,29.2]
|achieve 1312/5
step
goto 59.6,46.6
.from Kraator##18696
.' If Kraator is not here, you may be able to find him in the following locations:
.' [42.0,68.8]
.' [31.0,45.6]
.' [42.0,40.6]
.' [45.6,12.6]
|achieve 1312/12
step
'Congratulations, you have earned the Bloody Rare achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Frostbitten",[[
description Kill all of the extremely rare and hard to find Northrend Creatures.
step
achieveid 2256
condition achieved(2257)
goto Borean Tundra,25.6,34.4
.from Old Crystalbark##32357 |tip He walks all around the Nexus, so you may need to search for him.
|achieve 2257/4
step
goto 63.8,26.6
.from Fumblub Gearwind##32358 |tip He is flying around this whole section of the map, so you may need to search for him.
|achieve 2257/5
step
goto 88.6,39.8
.from Icehorn##32361
.' If Icehorn is not here, you may be able to find him in the following locations:
.' [84.6,46.8]
.' [80.8,46.0]
.' [81.4,31.4]
.' [85.8,34.6]
.' [91.6,32.6]
|achieve 2257/6
step
goto Dragonblight,26.6,58.6
.from Crazed Indu'le Survivor##32409 |tip He walks around this area, so you may need to search for him.
|achieve 2257/11
step
goto 67.6,60.0
.from Tukemuth##32400
.' If Tukemuth is not here, you may be able to find him in the following locations:
.' [70.8,30.2]
.' [62.6,42.2]
.' [59.0,60.2]
.' [54.6,56.8]
.' [61.0,31.0]
|achieve 2257/10
step
goto 72.6,25.8
.from Scarlet Highlord Daion##32417
.' If Scarlet Highlord Daion is not here, you may be able to find him in the following locations:
.' [86.8,41.6]
.' [72.0,74.0]
|achieve 2257/12
step
goto Grizzly Hills,25.0,57.0
.from Grocklar##32422
.' If Grocklar is not here, you may be able to find him in the following locations:
.' [13.2,48.6]
.' [22.4,73.2]
.' [12.2,70.6]
|achieve 2257/13
step
goto 40.2,48.8
.from Seething Hate##32429
.' If Seething Hate is not here, you may be able to find it in the following locations:
.' [34.6,49.0]
.' [28.6,45.8]
|achieve 2257/14
step
goto 69.6,32.2
.from Syreian the Bonecarver##32438 |tip She walks around in this area, so you may need to search for her.
|achieve 2257/15
step
goto Howling Fjord,33.2,80.6
.from King Ping##32398 |tip He is wandering about this island and the one north of it. You may need to search for him.
|achieve 2257/9
step
goto 72.6,52.0
.from Vigdis the War Maiden##32386 |tip She wanders around this area, so you may need to search for her a bit.
|achieve 2257/8
step
goto 50.6,4.8
.from Perobas the Bloodthirster##32377
.' If Perobas the Bloodthirster is not here, you may be able to find him in the following locations:
.' [53.0,11.4]
.' [60.8,20.2]
.' [68.6,17.6]
.' [71.6,13.8]
|achieve 2257/7
step
goto Icecrown,48.6,80.2
.from High Thane Jorfus##32501
.' If High Thane Jorfus is not here, you may be able to find him in the following locations:
.' [32.0,69.6]
.' [60.8,20.2]
.' [72.8,38.8]
|achieve 2257/2
step
goto 32.4,29.6
.from Hildana Deathstealer
.' If Hildana Deathstealer is not here, you may be able to find her in the following locations:
.' [31.8,41.8]
.' [58.2,54.2]
|achieve 2257/3
step
goto 55.6,41.2
.from Putridus the Ancient##32487 |tip He walks around this whole trench, so you may need to search for him.
|achieve 2257/23
step
goto Sholazar Basin,54.8,52.6
.from Aotona##32481
.' If Aotona is not here, you may be able to find it in the following locations:
.' [58.2,64.0]
.' [52.6,72.2]
.' [41.8,69.6]
.' [41.0,58.6]
.' [45.8,54.4]
|achieve 2257/19
step
goto 64.6,81.0
.from King Krush##32485
.' If King Krush is not here, you may be able to find him in the following locations:
.' [59.0,80.8]
.' [50.6,78.2]
.' [27.6,45.2]
.' [37.6,28.8]
.' [49.8,45.0]
|achieve 2257/20
step
goto 71.6,72.0
.from Loque'nahak##32517
.' If Loque'nahak is not here, you may be able to find him in the following locations:
.' [67.0,79.6]
.' [51.0,81.6]
.' [22.6,70.6]
.' [31.0,66.6]
.' [36.6,31.0]
.' [59.4,22.6]
|achieve 2257/1
step
goto The Storm Peaks,68.0,47.6
.from Dirkee##32500
.' If Dirkee is not here, you may be able to find him in the following locations:
.' [37.8,58.6]
.' [41.0,51.6]
.' [41.6,40.6]
|achieve 2257/22
step
goto 41.2,59.0
.from Vyragosa##32630 |tip This dragon flies around the whole zone, so you may need to search for him a bit.
|achieve 2257/21
step
goto Zul'Drak,21.2,79.8
.from Griegen##32471
.' If Griegen is not here, you may be able to find him in the following locations:
.' [25.8,76.8]
.' [26.6,71.2]
.' [22.0,70.6]
.' [18.0,70.6]
.' [14.6,56.8]
.' [23.0,62.8]
.' [26.6,55.4]
|achieve 2257/17
step
goto 40.4,64.0
.from Zul'drak Sentinel##32447 |tip He wanders around this area, so you may need to search for him.
|achieve 2257/16
step
goto 53.6,31.6
.from Terror Spinner##32475
.' If Terror Spinner is not here, you may be able to find him in the following locations:
.' [61.2,36.6]
.' [71.6,23.4]
.' [72.2,28.4]
.' [81.6,34.6]
.' [77.6,42.8]
.' [74.8,66.4]
|achieve 2257/18
step
'Congratulations, you have obtained the Frostbitten achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Giddy Up!",[[
step
condition achieved(891)
.' For this achievement, you will need to reach level 20.
|confirm
step
goto Orgrimmar,49.0,59.6
.talk 44919
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [61.6,35.6]
|only Orc
|next "end"
step
goto Tirisfal Glades,61.8,51.8
.talk 4773
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [61.8,51.8]
|only Undead
|next "end"
step
goto Mulgore,47.6,58.0
.talk 3690
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [47.6,58.0]
|only Tauren
|next "end"
step
goto Durotar,55.2,75.4
.talk 7953
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [55.2,75.6]
|only Troll
|next "end"
step
goto Eversong Woods,61.2,54.0
.talk 16280
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [61.0,54.6]
|only Blood Elf
|next "end"
step
goto Orgrimmar,36.6,87.0
.talk 48513
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [36.2,86.6]
|only Goblin
|next "end"
step
goto Orgrimmar,49.0,59.6
.talk 44919
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [69.8,41.0]
|only Pandaren
|next "end"
step
label "end"
'Congratulations, you have obtained the _Giddy Up!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Fast and Furious",[[
step
condition achieved(889)
.' For this achievement, you will need to reach level 40.
|confirm
step
goto Orgrimmar,49.0,59.6
.talk 44919
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [61.6,35.6]
|only Orc
|next "end"
step
goto Tirisfal Glades,61.8,51.8
.talk 4773
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [61.8,51.8]
|only Undead
|next "end"
step
goto Mulgore,47.6,58.0
.talk 3690
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [47.6,58.0]
|only Tauren
|next "end"
step
goto Durotar,55.2,75.4
.talk 7953
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [55.2,75.6]
|only Troll
|next "end"
step
goto Eversong Woods,61.2,54.0
.talk 16280
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [61.0,54.6]
|only Blood Elf
|next "end"
step
goto Orgrimmar,36.6,87.0
.talk 48513
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [36.2,86.6]
|only Goblin
|next "end"
step
goto Orgrimmar,49.0,59.6
.talk 44919
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [69.8,41.0]
|only Pandaren
|next "end"
step
label "end"
'Congratulations, you have obtained the _Giddy Up!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Into The Wild Blue Yonder",[[
step
condition achieved(890)
'For this achievement, you will need to reach level 60.
'The cost of this riding training is _250 Gold_ (but can be reduced by faction discounts).
|confirm
step
goto Orgrimmar,49.0,59.6
.talk 44919
.learn Expert Riding##34090
.' You can also purchase a mount from the vendor at [49.0,59.6]
|next "end"
step
label "end"
'Congratulations, you have obtained the _Into The Wild Blue Yonder_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Epic",[[
description Equip items in each slot that have at least an item level of 213
step
condition achieved(556)
For this achievement you will need to simply equip a Epic (purple) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or run dungeons for them. The lowest level dugneons you can run are:
.' (Non Heroic) Forge of Souls
.' (Non Heroic) Pit of Saron
.' (Non Heroic) Halls of Reflection
|tip You can also find these items in these WotLK Heroic Dungeons and any Heroic dungeon from Cataclysm.
|confirm
step
'Equip an Epic item in every slot with a minimum item level of 213
.' Earn the Epic Achievement |achieve 556 |next "finish"
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 556/1
..' Neck |achieve 556/2
..' Shoulder |achieve 556/3
..' Chest |achieve 556/4
..' Waist |achieve 556/5
..' Legs |achieve 556/6
..' Feet |achieve 556/7
..' Wrist |achieve 556/8
..' Hands |achieve 556/9
..' Left Ring |achieve 556/10
..' Right Ring |achieve 556/11
..' First Trinket |achieve 556/12
..' Second Trinket |achieve 556/13
..' Cloak |achieve 556/14
..' Weapon |achieve 556/15
step
label "finish"
.' Congratulations, you have earned the _Epic_ achievement!
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Superior",[[
description Equip a superior item in every slot with a minimum item level of 187. Equip an epic item in every slot with a minimum item level of 213.
step
condition achieved(557)
For this achievement you will need to simply equip a Superior (blue) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or run dungeons and quests for them. The lowest level dungeons you can run are:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm.
|confirm
step
'Equip a Superior item in every slot with a minimum item level of 187
.' Earn the Superior Achievement |achieve 557 |next "finish"
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 557/1
..' Neck |achieve 557/2
..' Shoulder |achieve 557/3
..' Chest |achieve 557/4
..' Waist |achieve 557/5
..' Legs |achieve 557/6
..' Feet |achieve 557/7
..' Wrist |achieve 557/8
..' Hands |achieve 557/9
..' Left Ring |achieve 557/10
..' Right Ring |achieve 557/11
..' First Trinket |achieve 557/12
..' Second Trinket |achieve 557/13
..' Cloak |achieve 557/14
..' Weapon |achieve 557/15
step
label "finish"
.' Congratulations, you have earned the _Superior_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Get to the Choppa!",[[
description Learn the Mekgineer's Chopper.
step
condition achieved(2097)
.' In order to earn this achievement, you will need to either purcahse or create a Mechano-Hog.
.' |next collect |confirm
.' |confirm
step
goto Orgrimmar,66.5,36.3
.talk 46637
.buy Mechano-Hog##41508
|next learn
step
label "collect"
..collect 12 Titansteel Bar##37663 |tip You will need Mining or a Miner for this. 450
..collect 40 Handful of Cobalt Bolts##39681 |tip You will need Engineering or an Engineer to attain these. 350
..collect 2 Arctic Fur##44128 |tip You will need Skinning or a Skinner to attain this. From Northrend Enemies
.' Once you have collected these items, you will need to collect 3 more, which come from vendors.
|confirm
step
goto Vale of Eternal Blossoms/0,64.1,41.4
.talk 61650
.buy 1 Salvaged Iron Golem Parts##44499 |tip 3,000 gold
.buy 8 Goblin-Machined Piston##44501 |tip 8,000 gold
.buy 1 Elementium-Plated Exhaust Pipe##44500 |tip 1,500 gold
.' Note that these can also be salvaged or dropped from _Ulduar_.
.' _Flame Leviathan_ and _XT-002 Deconstructor_ are the bosses you are looking for.
'|modelnpc 33293
'|modenpc 33113
step
label learn
.' Use your Mechano-Hog. |use Mechano-Hog##41508
..learnmount Mechano-Hog##60867
|achieve 2097
step
.' Congratulations, you have earned the _Get to the Choppa!_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Surveying the Damage",[[
description
step
condition achieved(4827)
.' In order to earn this achievement, you will need to visit the places that Deathwing had the most effect on during Cataclysm.
|confirm
step
goto Durotar/0,38.8,38.5
.' Southfury Watershed in Durotar /7
step
goto Ashenvale/0,48.2,53.5
.' Thunder Peak in Ashenvale /6
step
goto Darkshore/0,38.6,45.3
.' The Ruins of Auberdine in Darkshore /4
step
goto Southern Barrens/0,45.5,70.3
.' The Battlescar in Southern Barrens /1
step
goto Desolace/0,57.5,54.3
.' Cenarion Wildlands in Desolace /8
step
goto Thousand Needles/0,74.4,82.1
.' The Shimmering Deep in Thousand Needles /9
step
goto Tanaris/0,37.7,78.9
.' The Valley of the Watchers in Tanaris /5
step
goto Northern Stranglethorn,50.4,66.5
.' The Sundering in Stranglethorn |achieve 4827/2
step
goto Westfall/0,38.5,42.3
.' The Raging Chasm in Westfall |achieve 4827/11
step
goto Badlands/0,43.4,42.5
.' The Scar of the Worldbreaker in Badlands /3
step
goto Loch Modan/0,42.0,11.3
.' The Stonewrought Dam in Loch Modan /12
step
goto Hillsbrad Foothills/0,51.3,71.4
.' Ruins of Southshore in Hillsbrad Foothills /13
step
goto Ruins of Gilneas/0,60.2,10.5
.' The Greymane Wall in Silverpine /10
step
.' Congratulations, you have earned the _Surveying the Damage_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\General Achievements\\Leeeeeeeeeeeeeroy!",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
step
'This achievement will require you to kill 50 rookery whelps within 15 seconds.
|confirm
step
goto Blackrock Spire/6,33.1,27.1
.click Blackrock Altar##04076
.kill Pyroguard Emberseer##9816 |n
|confirm
step
goto Blackrock Spire/6,30.8,35.0
.from 50 Rookery Whelp##10161+ |achieve 2188/1 |tip You have 15 seconds from the first kill to get the rest of the 50.
step
'Congratulations! You have earned the Title _Jenkins_!!
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Dungeon Quests Completed",[[
description Complete dungeon quests.
step
condition achieved(4957)
goto Orgrimmar,45.9,66.9 |n
.' Follow the path down |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto Orgrimmar,52.6,57.8
.' Walk into the Ragefire Chasm Portal |tip It looks like a big swirling portal.
.' Enter Ragefire Chasm |goto Ragefire Chasm |noway |c
step
goto Ragefire Chasm,68.6,11.9
.talk 44217
..accept 26856
..accept 26858
step
goto 70.5,11.3
.talk 44216
..accept 26862
step
goto 70.1,64.2
.kill Oggleflint |q 26856/3
step
goto 65.3,69.5 |n
.' Follow this path up |goto 65.3,69.5,0.5 |noway |c
step
goto 53.7,30.2
.from Molten Elemental##11321+
.get 6 Searing Binding |q 26862/1
step
goto 40.7,57.3
.from Taragaman the Hungerer##11520+
.get Taragaman the Hungerer's Heart |q 26858/4
step
goto 31.6,70.1 |n
.' Follow this path |goto 31.6,70.1,0.5 |noway |c
step
goto 33.0,84.5
.kill Jergosh the Invoker |q 26856/1
step
goto 30.3,56.2 |n
.' Go back and follow this path |goto 30.3,56.2,0.5 |noway |c
step
goto 41.5,86.4
.kill Bazzalan |q 26856/2
step
goto 33.3,66.9
.kill 4 Searing Blade Cultist |q 26858/1
.kill 4 Searing Blade Enforcer |q 26858/2
.kill 2 Searing Blade Warlock |q 26858/3
step
goto 51.0,44.1 |n
.' Follow the path down |goto 51.0,44.1,0.5 |noway |c
step
goto 68.6,11.9
.talk 44217
..turnin 26856
..turnin 26858
step
goto 70.5,11.3
.talk 44216
..turnin 26862
step
goto 62.3,7.8
.' Walk into the Ragefire Chasm Portal |tip It looks like a big swirling portal.
.' Leave Ragefire Chasm |goto Orgrimmar |noway |c
step
goto Northern Barrens,39.1,69.8 |n
.' Enter this cave |goto Northern Barrens,39.0,69.3,0.5 |noway |c
step
goto 42.1,66.6
.' Walk into the Wailing Caverns Portal |tip It looks like a big swirling portal.
.' Enter Wailing Caverns |goto Wailing Caverns |noway |c
step
goto Wailing Caverns,46.7,59.2
.talk 5768
..accept 26870
step
goto 46.6,58.4
.talk 5767
..accept 26872
..accept 26873
step
'While inside Wailing Caverns:
.from Deviate Ravager##3636+, Deviate Guardian##3637+, Deviate Crocolisk##5053+
.get 10 Deviate Hide##6443 |n
.' Click Serpentblooms |tip They look like little flowers on the ground everywhere inside Wailing Caverns.
.get 5 Serpentbloom##5339 |n
|confirm
step
goto 30.5,43.2
.kill Lady Anacondra |q 26870/2
step
goto 31.7,40.0 |n
.' Jump down here |goto 31.7,40.0,0.5 |noway |c
step
goto 20.0,41.5
.' Follow the path
.kill Lord Pythas |q 26870/3
step
goto 15.6,58.4
.' Follow the path
.kill Lord Cobrahn |q 26870/1
step
goto 15.4,51.7 |n
.' Jump down here |goto 15.4,51.7,0.5 |noway |c
step
goto 52.5,47.8 |n
.' Follow this path |goto 52.5,47.8,0.5 |noway |c
step
goto 62.4,53.6
.kill Lord Serpentis |q 26870/4
step
'Make sure to:
.from Deviate Ravager##3636+, Deviate Guardian##3637+, Deviate Crocolisk##5053+
.get 10 Deviate Hide |q 26872/1
.' Click Serpentblooms |tip They look like little flowers on the ground everywhere inside Wailing Caverns.
.get 5 Serpentbloom |q 26873/1
step
goto 55.2,43.1 |n
.' Jump down here |goto 55.2,43.1,0.5 |noway |c
step
goto 39.9,37.7 |n
.' Follow the path up |goto 39.9,37.7,0.5 |noway |c
step
goto 37.8,44.1 |n
.' Follow the path up |goto 37.8,44.1,0.5 |noway |c
step
goto 46.7,59.2
.talk 5768
..turnin 26870
step
goto 46.6,58.4
.talk 5767
..turnin 26872
..turnin 26873
.' Earn the 5 Dungeon Quests achievement! |achieve 4956
step
'Congratulations!  You've earned the 5 Dungeon Quests achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Hemet Nesingwary: The Collected Quests",[[
description Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.
step
condition achieved(941)
.' This guide will walk you through obtaining the Hemet Nesingwary: The Collected Quests achievement.
.' Click here to continue. |confirm
step
title +Hunting down quests
.' Redirecting to The Green Hills of Stranglethorn |next "TheGreenHills" |only if not completedq(208)
.' Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
label "TheGreenHills"
title +The Green Hills of Stranglethorn
goto Northern Stranglethorn,44.3,22.1
.talk 716
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger |q 185/1
.' You can find more Young Stranglethorn Tigers to kill around 38.7,20.3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger |q 186/1
.' You can find more Stranglethorn Tigers around 56.5,28.7
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
goto 38.5,32.5
.from Sin'Dall##729
.get 1 Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 45.8,43.1
.kill 10 Lashtail Raptor |q 195/1
.' You can find more Lashtail Raptors around 39.3,43.9
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 54.3,47.2
.kill 10 Jungle Stalker |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera can also spawn
.' at [61.7,50.6]
.' at [64.4,36.6]
step
goto 62.5,61.3
.from Tethis##730
.get Talon of Tethis |q 197/1
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 197
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
goto 44.0,23.3
.talk 715
..turnin 208
'Earn The Green Hills of Stranglethorn achievement! |achieve 940
step
.' Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
label "WhiteElekks"
title +Hills Like White Elekks
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof |q 9789/1
.' You can find more Clefthoofs at [70.8,46.4]
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
goto 48.4,61.5
.kill 12 Ravenous Windroc |q 9855/1
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer |q 9858/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 71.6,40.5
.talk 18218
..turnin 9858
..accept 9859
.talk 18180
..turnin 9850
..accept 9851
.talk 18200
..turnin 9855
..accept 9856
step
goto 32.6,25.6
.from Gutripper##18257
.get 1 Eye of Gutripper |q 9856/1
step
goto 26.0,53.0
.from Bach'lor##18258 |tip He sometimes roams up north
.get 1 Hoof of Bach'lor3 |q 9859/1
step
goto 43.0,63.0
.from Banthar##18259 |tip He roams around this area and is sometimes past Oshu'gun
.get 1 Horn of Banthar |q 9851/1
step
goto 71.6,40.5
.talk 18218
..turnin 9859
.talk 18200
..turnin 9856
.talk 18180
..turnin 9851
..accept 9852
step
goto 44.2,65.2
.from Tusker##18290
.get 1 Heart of Tusker |q 9852/1
step
goto 71.6,40.5
.talk 18180
..turnin 9852
.' Earn the Hills Like White Elekk achievement! |achieve 939
step
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
label "Snows"
title +The Snows of Northrend
goto Dalaran,68.3,42.2
.talk 28160
..accept 12521
step
goto Dalaran,68.3,42.2
.talk 28160
.' Tell him you're ready to fly to Sholazar Basin
.' You will fly to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,39.7,58.6
.talk 27987
..turnin 12521
..accept 12489
step
goto 27.1,58.7
.talk 27986
..turnin 12489
step
goto 27.2,59.8
.talk 28032
..accept 12524
step
goto 25.4,58.4
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine |q 12522/1
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts |q 12523/1
step
goto 37.4,46.1
.kill 15 Venture Company member |q 12524/1
step
goto 25.4,58.4
.talk 28033
..turnin 12523
step
goto Sholazar Basin,27.2,59.8
.talk 28032
..turnin 12524
..accept 12525
step
goto 27.1,58.7
.talk 27986
..turnin 12688
step
goto Sholazar Basin,36.1,50.5
.kill Foreman Swindlegrin |q 12525/1
.kill Meatpie |q 12525/2
step
goto 27.2,59.8
.talk 28032
..turnin 12525
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |q 12589/1
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber |q 12549/1
.kill 15 Shardhorn Rhino |q 12520/1
.from Dreadsaber##28001+, Shardhorn Rhino##28009+
.' Kill 60 Game Animals |q 12592/1
.' You can find more Rhino's and Dreadsabers around 38.2,45.3
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 27.1,59.8
.talk 28328
..turnin 12592
step
goto 27.2,59.8
.talk 28032
..accept 12551
step
goto 39.9,43.7
.' Click Dreadsaber Tracks |tip They look like brown paw prints on the ground around this area.
.' Identify 3 Shango Tracks |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29,62.5
.kill 15 Mangal Crocolisk |q 12551/1
step
goto 36.3,65.8
.from Emperor Cobra##28011+
.get 5 Intact Cobra Fang |q 12543/1
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.' Click Sandferns |tip They look like ferns on the beach.
.get 5 Sandfern |q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.from Bushwhacker##28317
.get Bushwhacker's Jaw |q 12569/1
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs |tip The Primordial Drake Eggs look like white eggs next to trees around this area.
.' Click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling |q 12605/1
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
step
goto 42.1,28.9
.talk 28374
..accept 12607
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar
.' Deliver the Shattertusk Mammoth |q 12607/1
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..accept 12614
step
goto 47.0,21.1
.kill Broodmother Slivina |q 12614/1 |tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..turnin 12614
.' Earn The Snows of Northrend achievement! |achieve 938
step
label "end"
.' Earn the Hemet Nesingwary: The Collected Quests achievement! |achieve 941
step
'Congratulations! You've earned the Hemet Nesingwary: The Collected Quests achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\The Green Hills Of Stranglethorn",[[
description Complete the Green Hills of Stranglethorn questline.
step
condition achieved(940)
title +The Green Hills of Stranglethorn
goto Northern Stranglethorn,44.3,22.1
.talk 716
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger |q 185/1
.' You can find more Young Stranglethorn Tigers to kill around 38.7,20.3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger |q 186/1
.' You can find more Stranglethorn Tigers around 56.5,28.7
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
goto 38.5,32.5
.from Sin'Dall##729
.get 1 Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 45.8,43.1
.kill 10 Lashtail Raptor |q 195/1
.' You can find more Lashtail Raptors around 39.3,43.9
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 54.3,47.2
.kill 10 Jungle Stalker |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera can also spawn
.' at [61.7,50.6]
.' at [64.4,36.6]
step
goto 62.5,61.3
.from Tethis##730
.get Talon of Tethis |q 197/1
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 197
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
goto 44.0,23.3
.talk 715
..turnin 208
'Earn The Green Hills of Stranglethorn achievement! |achieve 940
step
'Congratulations! You've earned the _The Green Hills of Stranglethorn_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Hills Like White Elekk",[[
description Complete the Hills Like White Elekk questline.
step
condition achieved(939)
title +Hills Like White Elekks
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof |q 9789/1
.' You can find more Clefthoofs at [70.8,46.4]
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
goto 48.4,61.5
.kill 12 Ravenous Windroc |q 9855/1
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer |q 9858/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 71.6,40.5
.talk 18218
..turnin 9858
..accept 9859
.talk 18180
..turnin 9850
..accept 9851
.talk 18200
..turnin 9855
..accept 9856
step
goto 32.6,25.6
.from Gutripper##18257
.get 1 Eye of Gutripper |q 9856/1
step
goto 26.0,53.0
.from Bach'lor##18258 |tip He sometimes roams up north
.get 1 Hoof of Bach'lor3 |q 9859/1
step
goto 43.0,63.0
.from Banthar##18259 |tip He roams around this area and is sometimes past Oshu'gun
.get 1 Horn of Banthar |q 9851/1
step
goto 71.6,40.5
.talk 18218
..turnin 9859
.talk 18200
..turnin 9856
.talk 18180
..turnin 9851
..accept 9852
step
goto 44.2,65.2
.from Tusker##18290
.get 1 Heart of Tusker |q 9852/1
step
goto 71.6,40.5
.talk 18180
..turnin 9852
.' Earn the Hills Like White Elekk achievement! |achieve 939
step
'Congratulations! You've earned the _Hills Like White Elekk_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\The Snows of Northrend",[[
description Complete the Snows of Northrend questline.
step
condition achieved(938)
title +The Snows of Northrend
goto Dalaran,68.3,42.2
.talk 28160
..accept 12521
step
goto Dalaran,68.3,42.2
.talk 28160
.' Tell him you're ready to fly to Sholazar Basin
.' You will fly to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,39.7,58.6
.talk 27987
..turnin 12521
..accept 12489
step
goto 27.1,58.7
.talk 27986
..turnin 12489
step
goto 27.2,59.8
.talk 28032
..accept 12524
step
goto 25.4,58.4
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine |q 12522/1
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts |q 12523/1
step
goto 37.4,46.1
.kill 15 Venture Company member |q 12524/1
step
goto 25.4,58.4
.talk 28033
..turnin 12523
step
goto Sholazar Basin,27.2,59.8
.talk 28032
..turnin 12524
..accept 12525
step
goto 27.1,58.7
.talk 27986
..turnin 12688
step
goto Sholazar Basin,36.1,50.5
.kill Foreman Swindlegrin |q 12525/1
.kill Meatpie |q 12525/2
step
goto 27.2,59.8
.talk 28032
..turnin 12525
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |q 12589/1
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber |q 12549/1
.kill 15 Shardhorn Rhino |q 12520/1
.from Dreadsaber##28001+, Shardhorn Rhino##28009+
.' Kill 60 Game Animals |q 12592/1
.' You can find more Rhino's and Dreadsabers around 38.2,45.3
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 27.1,59.8
.talk 28328
..turnin 12592
step
goto 27.2,59.8
.talk 28032
..accept 12551
step
goto 39.9,43.7
.' Click Dreadsaber Tracks |tip They look like brown paw prints on the ground around this area.
.' Identify 3 Shango Tracks |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29,62.5
.kill 15 Mangal Crocolisk |q 12551/1
step
goto 36.3,65.8
.from Emperor Cobra##28011+
.get 5 Intact Cobra Fang |q 12543/1
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.' Click Sandferns |tip They look like ferns on the beach.
.get 5 Sandfern |q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.from Bushwhacker##28317
.get Bushwhacker's Jaw |q 12569/1
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs |tip The Primordial Drake Eggs look like white eggs next to trees around this area.
.' Click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling |q 12605/1
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
step
goto 42.1,28.9
.talk 28374
..accept 12607
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar
.' Deliver the Shattertusk Mammoth |q 12607/1
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..accept 12614
step
goto 47.0,21.1
.kill Broodmother Slivina |q 12614/1 |tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..turnin 12614
.' Earn The Snows of Northrend achievement! |achieve 938
step
'Congratulations! You've earned the _The Snows of Northrend_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Of Blood And Anguish",[[
description Complete the Ring of Blood and Amphitheater of Anguish.
step
condition achieved(1576)
goto Nagrand,42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
.' Earn the Of Blood and Anguish achievement! |achieve 1576
step
goto Zul'Drak,48.4,56.4
.talk 30007
..accept 12954
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12954
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood",[[
description Complete the Ring of Blood, Amphitheater of Anguish and Crucible of Carnage.
step
condition achieved(4958)
goto Nagrand,42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
.' Earn the Of Blood and Anguish achievement! |achieve 1576
step
goto Zul'Drak,48.4,56.4
.talk 30007
..accept 12954
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12954
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
step
'You will need a group for these quests
|confirm
step
goto Twilight Highlands,50.7,58.3
.talk 46935
..' You will only be able to accept one of these quests
..accept 27863 |or
..accept 27861 |or
..accept 27862 |or
step
goto 51.4,57.8
.from Hurp'derp##46944
.' Defeat Hurp'derp |q 27863/1 |only if havequest(27863) or completedq(27863)
.' Defeat Hurp'derp |q 27861/1 |only if havequest(27861) or completedq(27861)
.' Defeat Hurp'derp |q 27862/1 |only if havequest(27862) or completedq(27862)
step
'Click the Complete Quest box that appears under your minimap
..turnin 27863 |only if havequest(27863) or completedq(27863)
..turnin 27861 |only if havequest(27861) or completedq(27861)
..turnin 27862 |only if havequest(27862) or completedq(27862)
step
goto 50.7,58.3
.talk 46935
..accept 27865
step
goto 51.4,57.8
.from Sully Kneecapper##46946
.' Defeat Sully Kneecapper |q 27865/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27865
step
goto 50.7,58.3
.talk 46935
..accept 27866
step
goto 51.4,57.8
.from Cadaver Collage##46947
.' Defeat Cadaver Collage |q 27866/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27866
step
goto 50.7,58.3
.talk 46935
..accept 27867
step
goto 51.4,57.8
.from Lord Geoffery Tulvan##46948
.' Defeat Lord Geoffery Tulvan |q 27867/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27867
step
goto 50.7,58.3
.talk 46935
..accept 27868
step
goto 51.4,57.8
.from Emberscar the Devourer##46949
.' Defeat Emberscar the Devourer |q 27868/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27868
.' Earn the Round Three. Fight! achievement! |achieve 4960
.' Earn the The First Rule of Ring of Blood is You Don't Talk About Ring of Blood achievement! |achieve 4958
step
'Congratulations!  You've earned the The First Rule of Ring of Blood is You Don't Talk About Ring of Blood achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\A Simple Re-Quest",[[
description Complete a daily quest every day for five consecutive days.
step
condition achieved(31)
'To earn this achievement, you must complete a daily quests every day for five consecutive days.
'The easiest achievement to do for this achievement is Overstock in the Storm Peaks |tip For this quest, you must be at least level 77.
|confirm
step
goto The Storm Peaks,40.9,85.3
.talk 29428
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader |q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
'Complete a daily quest every day for 5 consecutive days. |achieve 31/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Quests Completed Achievements",[[
description Complete
description 50, 100, 250, 500, 1000, 1500, 2000 and
description 3000 Quests.
step
achieveid 503,504,505,506,507,508,32
condition achieved(978)
.' In order to complete these achievements, you simply have to complete regular quests. You can work through Ares' Leveling and Loremaster guides to obtain all of these achievements.
.' Daily and Repeatable quests do not count towards the achievements.
|confirm
step
.' In order to complete these achievements, you simply have to complete regular quests.
.' Daily and Repeatable quests do not count towards the achievements.
.' 50 Quests Completed |achieve 503/1
.' 100 Quests Completed |achieve 504/1
.' 250 Quests Completed |achieve 505/1
.' 500 Quests Completed |achieve 506/1
.' 1,000 Quests Completed |achieve 507/1
.' 1,500 Quests Completed |achieve 508/1
.' 2,000 Quests Completed |achieve 32/1
.' 3,000 Quests Completed |achieve 978/1 |tip Once you earn this achievement, you earn the title "The Seeker".
]])








ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Outland\\Blade's Edge Bomberman",[[
description Complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group.
step
condition achieved(1276)
goto Blade's Edge Mountains,28.8,57.5
.talk 23233
..accept 11025
step
goto 29.5,63.1
.from Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
.get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.5
.talk 23233
..turnin 11025
..accept 11058
step
goto 28.4,57.7
.talk 23316
..accept 11030
step
goto 29.5,63.1
.from Mo'arg Extractor##22304+, Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
.collect 10 Apexis Shard##32569 |q 11025
step
goto 32.8,40.5
.' Click a Fel Crystalforge |tip It looks like a metal machine with green bubbling floating out of it quickly.
..' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
step
goto 28.8,57.5
.talk 23233
..accept 11062
step
goto 27.5,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.6,52.9
.talk 23120
..' Make sure you're not in a group |tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
..accept 11023
step
goto 37.7,38.2
.' HURRY!  HURRY! |tip You have to complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group
.' Use the Skyguard Bombs to destroy the Fel Cannonball Stacks |use Skyguard Bombs##32456 |tip Bomb your way from here toward the Skyguard Outpost and remember to KEEP MOVING!
.' Destroy 15 Fel Cannonball Stacks |q 11010/1 |tip They look like stacks of cannon balls next to the Fel Cannons, they have red markers over them
step
goto 27.6,52.9
.' HURRY!  Hurry! |tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
.talk 23120
..turnin 11023
.' Earn the Blade's Edge Bomberman achievement! |achieve 1276
step
'Congratulations! You've earned the Blade's Edge Bomberman achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Outland\\Bombs Away",[[
description Complete the Fires Over Skettis quest in under 2 minutes 15 seconds while not in a group.
step
condition achieved(1275)
goto Shattrath City,64.2,42.3
.talk 23449
..accept 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..' Make sure you're not in a group |tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
..accept 11008
step
goto 74.5,88.3
.' HURRY! HURRY! |tip You have to complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group
.' Use your Skyguard Blasting Charges to destroy the Monstrous Kaliri Eggs |use Skyguard Blasting Charges##32406 |tip They look like big white egg cocoons all over the tops of buildings in Skettis.  Bomb your way to here and fly toward the Blackwind Landing and remember to KEEP MOVING and hit as many eggs as you can!
.' Destroy 20 Monstrous Kaliri Egg |q 11008/1
step
goto 64.5,66.7
.' HURRY! HURRY! |tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
.talk 23048
..turnin 11008
.' Earn the Bombs Away achievement! |achieve 1275
step
'Congratulations! You've earned the Bombs Away achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Honorary Frenzyheart",[[
description Complete the 8 daily quests for the Frenzyheart listed below.
step
condition achieved(961)
label "begin"
#include FrenzyheartPreQuests
step
#include FrenzyheartDailies
step
'The 8 Dailies are as follows: |tip It will take several days to earn this achievement, so try to be patient.
.' Complete the "Chicken Party!" daily |achieve 961/1
.' Complete the "Tools of War" daily |achieve 961/2
.' Complete "The Heartblood's Strength" daily |achieve 961/3
.' Complete the "Rejek: First Blood" daily |achieve 961/4
.' Complete the "Kartak's Rampage" daily |achieve 961/5
.' Complete the "Secret Strength of the Frenzyheart" daily |achieve 961/6
.' Complete the "Strength of the Tempest" daily |achieve 961/7
.' Complete "A Hero's Headgear" daily |achieve 961/8
.' Earn the Honorary Frenzyheart achievement! |achieve 961
|confirm |next "begin"
step
'Congratulations!  You've earned the Honorary Frenzyheart achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Savior of the Oracles",[[
description Complete the 8 daily quests for the Oracles listed below.
step
condition achieved(962)
#include OraclePreQuests
step
#include OracleDailies
step
'The 8 Dailies are as follows: |tip It will take several days to earn this achievement, so try to be patient.
.' Complete the "Appeasing the Great Rain Stone" daily |achieve 962/1
.' Complete the "Will of the Titans" daily |achieve 962/2
.' Complete the "Mastery of the Crystals" daily |achieve 962/3
.' Complete the "Power of the Great Ones" daily |achieve 962/4
.' Complete the "Song of Reflection" daily |achieve 962/5
.' Complete the "Song of Wind and Water" daily |achieve 962/6
.' Complete "A Cleansing Song" daily |achieve 962/7
.' Complete the "Song of Fecundity" daily |achieve 962/8
.' Earn the Savior of the Oracles achievement! |achieve 962
|confirm |next "begin"
step
'Congratulations!  You've earned the Savior of the Oracles achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Guru of Drakuru",[[
description Complete the main storyline quests involving Drakuru.
step
condition achieved(1596)
#include "CleansingDrakTharon"
step
#include "BetrayalDrakuru"
step
goto Zul'Drak,14.1,73.8
.talk 28518
..turnin 12713
.' Complete the Betrayal |achieve 1596/2
.' Earn the Guru of Drakuru achievement! |achieve 1596
step
'Congratulations!  You've earned the Guru of Drakuru achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Rapid Defense",[[
description Complete the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.
step
condition achieved(1277)
'For this quests, you will want to go as fast as you can. |tip If you track the achievement, a timer will automatically appear for you.  You will want to use your speed increase ability as often as possible.
.' You will have to complete this quest in under 3 minutes, while not in a group
|confirm
step
goto Dragonblight,59.2,54.3
.talk 27575
..' Make sure you're not in a group
..accept 12372
step
goto 58.3,55.2
.talk 27629
..' Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon |q 12372/1
.kill 5 Azure Drake |q 12372/2
step
goto 55.1,66.4
.' HURRY! HURRY! |tip You have to complete the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 58.7,54.5 |n
.' HURRY! HURRY! |tip You have to complete the Defending Wyrmrest Temple quest in under 3 minutes while not in a group
.' Click the red arrow to get off the dragon on the middle level of the temple |outvehicle |c
step
goto 59.2,54.3
.' HURRY! HURRY! |tip You have to complete the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.  However, if you fail, you can try again - but just make sure not to turn in the quest if you know you've already failed.
.talk 27575
..turnin 12372
.' Earn the Rapid Defense achievement! |achieve 1277
step
'Congratulations!  You've earned the Achievement Rapid Defense achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Mine Sweeper",[[
description Get caught in 10 consecutive land mine explosions in the Sparksocket Minefield without landing.
step
condition achieved(1428)
goto The Storm Peaks,36.2,86.9
.'  Run into the mine field |tip They look like a bunch of small metal objects on the ground around this area.  Use a ground mount and run into them as fast as you can.  There will be a short timer, allowing you to run into the next land mine.
.' Get "caught" by 10 mines consecutively without landing
.' Earn the Mine Sweeper achievement! |achieve 1428
step
'Congratulations! You've earned the Mine Sweeper achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Northrend\\Veteran of the Wrathgate",[[
description Complete the Dragonblight quests leading up to and including the Return to Angrathar.
author support@zygorguides.com
step
condition achieved(547)
goto Dragonblight,12.8,48.5
.talk 26181
..accept 11978
step
goto 15.5,51.2
.' Click Horde Armament crates|tip The Horde Armaments look like crates sitting on the ground around this area.
.get 10 Horde Armaments|q 11978/1
step
goto 12.8,48.5
.talk 26181
..turnin 11978
..accept 11983
step
goto 12.8,48.5
.talk 26181
..turnin 11978
..accept 11983
step
.talk 26184
.' Admit 5 Taunka Into the Horde |q 11983/1
step
goto 12.8,48.5
.talk 26181
..turnin 11983
..accept 12008
step
goto 38.1,46.3
.talk 26379
..turnin 12008
..accept 12034
step
goto 36.6,46.6
.talk 26415
..turnin 12034
..accept 12036
step
'Inside the cave, go to 26.2,50.4|goto 26.2,50.4
.' Explore the Pit of Narjun |q 12036/1 |tip Next to the instance portal.
step
goto 36.6,46.6
.talk 26415
..turnin 12036
..accept 12053
step
goto 24.8,41.2
.' Use your Warsong Battle Standard in this spot|use Warsong Battle Standard##36738
.' Defend the Warsong Battle Standard |q 12053/1
step
goto 36.6,46.6
.talk 26415
..turnin 12053
..accept 12071
step
goto 37.2,45.7
.talk 26574
..turnin 12071
..accept 12072
step
goto 27.5,44.8
.' Use Valnok's Flare Gun on this bridge to call a Kor'kron War Rider|use Valnok's Flare Gun##36774
.' Click the Kor'kron War Rider to ride it|invehicle|c
step
goto 27.8,38.9
.' Use the abilities on your action bar
.kill 25 Anub'ar Blightbeast|q 12072/1|tip They are flying around the buildings here.
step
goto 37.2,45.7
.talk 26574
..turnin 12072
step
goto 35.8,46.7
.talk 26652
..accept 12063
step
goto 22.6,41.7
.talk 26733
..turnin 12063
..accept 12064
step
goto 26.6,39.2
.from Tivax the Breaker##26770
.get Tivax's Key Fragment|q 12064/2
.' You can also find Tivax the Breaker in another big hut at [24.0,39.5]|c |n
step
goto 26.2,44.5
.from Sinok the Shadowrager##26771
.get Sinok's Key Fragment|q 12064/3
.' Sinok the Shadowrager will has several spawn points inside of the building.
step
goto 24.9,43.9
.from Anok'ra the Manipulator##26769
.get Anok'ra's Key Fragment|q 12064/1
step
goto 22.6,41.7
.talk 26733
..turnin 12064
..accept 12069
step
goto 25.6,40.9
.' Click the Anub'ar Mechanism to free Roanauk Icemist|tip It's a floating purple crystal.
.' Help him kill Under-king Anub'et'kan
.' Click Anub'et'kan's Carapace
.get Fragment of Anub'et'kan's Husk|q 12069/1
step
goto 38.2,46.3
.talk 26379
..turnin 12069
..accept 12140
step
goto 36.2,45.4
.talk 26810
.' Initiate Roanauk Icemist |q 12140/1
step
goto 36.3,45.6
.talk 26379
..turnin 12140
step
goto Dragonblight,36.1,48.9
.talk 26505
..accept 12189 |tip You may not be able to pick up the quest if you have done 'To Venomspite!'
step
goto 77.7,62.8
.talk 27172
..turnin 12189 |tip You may not be able to pick up the quest if you have done 'To Venomspite!'
..accept 12188
step
goto 82.9,65.1
.kill Forgotten ghosts|n
.get 10 Ectoplasmic Residue|q 12188/1
step
goto 77.7,62.8
.talk 27172
..turnin 12188
..accept 12200
step
'Go souhwest to 63.3,70.3|goto 63.3,70.3
.' Click Emerald Dragon Tears|tip They look like green jewels laying on the ground around this area.
.get 8 Emerald Dragon Tear|q 12200/1
step
goto 77.7,62.8
.talk 27172
..turnin 12200
..accept 12218
step
goto 77.8,61.6|n
.' Click a Forsaken Blight Spreader to ride it|invehicle|c|tip They look like big catapult car things.
step
goto 85.9,57.9
.' Shoot your catapult toward the ghouls and skeletons to the northwest
.kill 30 Hungering Dead|q 12218/1
step
goto 77.7,62.8
.talk 27172
..turnin 12218
..accept 12221
step
goto 36.1,48.9
.talk 26505
..turnin 12221
step
goto 38.2,46.3
.talk 26379
..accept 12224
step
goto 40.7,18.1
.talk 25257
..turnin 12224
..accept 12496
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 12496
..accept 12497
step
goto 59.5,53.3
.talk 26949
..turnin 12497
..accept 12498
step
'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it|invehicle|c
step
'Fly to 57.2,33.1|goto 57.2,33.1
.' Use the abilities on your hotbar
.kill 30 Wastes Scavenger|q 12498/1
step
'Fly to 54.5,31.3|goto 54.5,31.3
.' Use the abilities on your hotbar
.kill Thiassi the Lightning Bringer|n|tip At the peak of this mountain.
.' Jump off the dragon|script VehicleExit()
.from Grand Necrolord Antiok##28006
.' Click the Scythe of Antiok
.get Scythe of Antiok|q 12498/2
step
'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it|invehicle|c
step
'Fly to 59.8,54.7|goto 59.8,54.7
.' Jump off the dragon|script VehicleExit()
.talk 26917
..turnin 12498
..accept 12500
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
step
goto 40.7,18.1
.talk 25257
..turnin 12500
step
.' Congratulations, you have earned the Veteran of the Wrathgate achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\D.E.H.T.A's Little P.I.T.A.",[[
description Complete the D.E.H.T.A. questline in Borean Tundra
step
condition achieved(561)
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
.' He walks around the small pond in the middle of the camp
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228 |modelnpc Trapped Mammoth Calf##25850
.' Free 8 Mammoth Calves |q 11876/1
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox" |kill "Lunchbox" |q 11884/2
.kill Nedar, Lord of Rhinos##25801 |q 11884/1 |tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground |tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs |use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1
step
'Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids. |nobuff Ability_Seal
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.' He walks around the small pond in the middle of the camp
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.'Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |modelnpc Orphaned Mammoth Calf##25861 |tip The calf is slow so don't move too fast or you'll lose it.
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull |n
.' Click it to ride it |invehicle
step
goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.click Kaw's War Halberd##7687
.get Kaw's War Halberd |q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thug##25843+ |n
.click Shipment of Animal Parts##7678
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill Clam Master K##25800 |q 11872/1
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 57.0,44.2
.talk 25809
..accept 11892
step
goto 50.0,41.4
.' Use the Cenarion Horn in your bags to help you fight Harold Lane |use Cenarion Horn##35293
.kill Harold Lane##25804 |q 11892/1
step
goto 57.0,44.2
.talk 25809
..turnin 11892
|achieve 561
step
'Congratulations, you have obtained the _D.E.T.H.A's Little P.I.T.A._ achievement!
]])






























ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Cake Is Not A Lie Achievement",[[
description Bake a Delicious Chocolate Cake.
author support@zygorguides.com
step
condition achieved(877)
#include "H_the_cake_is_not_a_lie"
step
'Congratulations!  You've earned The Cake Is Not A Lie Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Kickin' It Up a Notch Achievement",[[
description Complete each of The Rokk's 4 cooking daily quests.
author support@zygorguides.com

step
condition achieved(906)
#include "H_Kickin'_It_Up_a_Notch"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Outland Gourmet Achievement",[[
description Cook each of the Outland cooking recipes.
step
condition achieved(1800)
'You must have a _Cooking_ skill level of at least 350 for this achievement.
|confirm
step
title +The Burning Crusade Recipes
#include "H_The_Outland_Gourmet"
step
Congratulations! You're earned The Outland Gourmet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Northrend Gourmet Achievement",[[
description Cook 45 of the Northrend recipes.
step
condition achieved(1779)
achieveid 1777,1778
'You must have a _Cooking_ skill level of at least 450 for this achievement.
|confirm
step
title +Wrath of the Lich King Recipes
#include "H_The_Northrend_Gourmet"
]])



ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Critter Gitter Achievement",[[
description Using Critter Bites, coerce 10 critters to be your pet within 3 minutes or less.

step
condition achieved(1781)
#include "H_Critter_Gitter"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Dinner Impossible Achievement",[[
description Present a Great Feast in each of the battlegrounds listed below.

step
condition achieved(1785)
#include "H_Dinner_Impossible"]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Cooking With Style Achievement",[[
description Obtain a Chef's Hat.
step
condition achieved(3296)
label "start"
'Use the Dalaran Cooking Dailies section of this guide to earn 100 Dalaran Cooking awards
|confirm
step
goto Howling Fjord,78.6,29.5
.talk 26953
..accept 13089|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13089)
step
goto 75.1,33.9
.from Wild Worg##24128+
.get 4 Chilled Meat |q 13089/1
|only if not completedq(13089)
step
goto 78.6,29.5
.talk 26953
..turnin 13089
|only if not completedq(13089)
step
#include "H_Dalaran_Cooking_Dailies"
step
.earn 100 Dalaran Cooking Award##81 |next "turnin"
.' Click here to go back to the beginning of the dailies |confirm |next "start"
step
label "turnin"
'Go to Dalaran |goto Dalaran |noway |c
step
goto 70.2,37.2
.talk 31031
.buy 1 Chef's Hat##46349
.' Obtain a Chef's Hat |achieve 3296
step
Congratulations! You've earned the Cooking with Style achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Captain Rumsey's Lager Achievement",[[
description Brew up some of Captain Rumsey's Lager.
step
condition achieved(1801)
'Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe
|confirm
step
'Routing to the proper section |next "create" |only if knowspell(45695)
'Routing to the proper section |next "dailies" |only if default
step
label "dailies"
goto Orgrimmar,65.7,41.1
.talk 43239
..' You will only be able to complete 1 of the following quests per day
..accept 26588 |or
..accept 26572 |or
..accept 26557 |or
..accept 26543 |or
..accept 26556 |or
step
goto Durotar,37.4,16.8
.' Fish in the river in this spot
.get Giant Furious Pike |q 26588/1 |tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
step
goto 42.8,24.0
.' Use Razgar's Fillet Knife on a Drowned Thunder Lizard |use Razgar's Fillet Knife##58955 |tip They look like dead dinosaurs underwater around this area.
.collect Drowned Thunder Lizard Tail##58958 |n
.' Use your Drowned Thunder Lizard Tail next to Golden Stonefish |use Drowned Thunder Lizard Tail##58958 |tip They look like big yellow fish underwater around this area.
.get 3 Golden Stonefish |q 26572/1
step
goto 57.2,9.5
.' Click Monstrous Clams |tip They look like huge white clams underwater around this area.
.get 10 Monstrous Clam Meat |q 26543/1
step
goto Azshara,27.6,74.5
.from Weakened Mosshoof Stag##35096+
.collect 1 Stag Eye##58949 |q 26557
step
goto Orgrimmar,46.2,46.5
.' Use your Stag Eye |use Stag Eye##58949
.' Fish in the water off the dock in this spot
.get Sandy Carp |q 26557/1
step
goto 38.5,80.1
.' Fish in the water in this spot
.get 6 Toxic Puddlefish |q 26556/1
step
goto 65.7,41.1
.talk 43239
..' You will only be able to complete 1 of the following quests per day
..turnin 26588
..turnin 26572
..turnin 26557
..turnin 26543
..turnin 26556
step
goto Shattrath City,61.8,15.6
.talk 24393
.' You will only be able to accept one of these daily quests per day
..accept 11381 |or |next "soup"
..accept 11379 |or |next "stew"
..accept 11380 |or |next "mana"
..accept 11377 |or |next "tasty"
step
label "soup"
goto Nagrand,58.0,35.6
.talk 20097
.buy Recipe: Roasted Clefthoof##27691 |n
.' Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
.learn Roasted Clefthoof##33287 |q 11381
step
goto Nagrand,47.0,64.7
.from Clefthoof##18205+, Clefthoof Calf##19183+
.collect 4 Clefthoof Meat##27678 |q 11381
.' You can find more Clefthooves at  45.5,72.7
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create Roasted Clefthoof##33287,Cooking,4 total |q 11381
step
goto 25.9,59.5
.' Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
.' Cook a Spiritual Soup |q 11381/1
|next "turnin"
step
label "stew"
goto Blade's Edge Mountains,62.5,40.3
.talk 20916
.buy Recipe: Mok'Nathal Shortribs##31675 |n
.' Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
.learn Mok'Nathal Shortribs##31672 |q 11379
.buy Recipe: Crunchy Serpent##31674 |n
.' Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
.learn Crunchy Serpent##31673 |q 11379
step
goto Blade's Edge Mountains,49.6,46.2
.from Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
.collect 4 Raptor Ribs##31670+ |q 11379
step
goto 68.2,63.2
.from Scalewing Serpent##20749+, Felsworn Scalewing##21123+
.collect 1 Serpent Flesh##31671 |q 11379
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
step
goto 29.0,84.5
.from Abyssal Flamebringer##19973+
.' Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
.get Demon Broiled Surprise |q 11379/1
|next "turnin"
step
label "mana"
goto Netherstorm,45.6,54.2
.click Mana Berry Bush##186729+
.get 15 Mana Berry##33849+ |q 11380/1
|next "turnin"
step
label "tasty"
goto Terokkar Forest,48.8,45.0
.talk 18957
.buy Recipe: Warp Burger##27692 |n
.' Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
.learn Warp Burger##33288 |q 11377
step
goto 64.0,83.5
.from Blackwind Warp Chaser##23219+
.collect 3 Warped Flesh##27681 |q 11377
step
goto 67.6,74.7
.from Monstrous Kaliri##23051+ |tip They fly around in the sky close to the tree outposts and bridges.
.collect Giant Kaliri Wing##33838 |q 11377
step
goto 25.9,59.5
.' Build a Basic Campfire |cast Basic Campfire##818
.create Warp Burger##33288,Cooking,3 total |q 11377
.' Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
.create Kaliri Stew##43718,Cooking,1 total |q 11377/1
|next "turnin"
step
label "turnin"
goto Shattrath City,61.8,15.6
.talk 24393
..turnin 11381
..turnin 11379
..turnin 11380
..turnin 11377
step
goto Howling Fjord,78.6,29.5
.talk 26953
..accept 13089|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13089)
step
goto 75.1,33.9
.from Wild Worg##24128+
.get 4 Chilled Meat |q 13089/1
|only if not completedq(13089)
step
goto 78.6,29.5
.talk 26953
..turnin 13089
|only if not completedq(13089)
step
#include "H_Dalaran_Cooking_Dailies"
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..accept 13833 |or
..accept 13834 |or
..accept 13832 |or
..accept 13836 |or
..accept 13830 |or
step
goto Borean Tundra,54.6,41.8
.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
step
goto 53.7,42.9
.' Walk into the water here to create a pool of blood
.' Fish in the pool of blood
.get 5 Bloodtooth Frenzy |q 13833/1
step
goto Wintergrasp,79.9,41.8
.' Fish in this big lake
.get 10 Terrorfish |q 13834/1
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto 44.4,66.2
.' Fish in the water in the Dalaran sewers
.get 1 Corroded Jewelry |q 13832/1
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto Dalaran,64.8,60.8
.collect Bloated Slippery Eel##45328|n
.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
.get 1 Severed Arm |q 13836/1
step
goto Sholazar Basin,49.3,61.8
.' Fish in the water here
.collect 1 Phantom Ghostfish##45902|n
.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
.' Discover the Ghostfish mystery |q 13830/1
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..turnin 13833
..turnin 13834
..turnin 13832
..turnin 13830
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
step
'You have completed the maximum amount of dailies you can do today.
.' Click here to go back to the beginning of the dailies. |confirm |next "dailies"
.collect 1 Recipe: Captain Rumsey's Lager##34834 |next "learn"
step
.learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
label "create"
goto Thousand Needles,76.5,74.8
.talk 40832
.buy 1 Flagon of Mead##2594
.buy 1 Skin of Dwarven Stout##2596
step
.create Captain Rumsey's Lager##45695,Cooking,1 total
.' Brew up Captain Rumsey's Lager |achieve 1801
step
'Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Our Daily Bread Achievement",[[
description Complete each of the cooking daily quests offered by Katherine Lee in Dalaran.

step
condition achieved(1783)
#include "H_Our_Daily_Bread"]])




ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Hail to the Chef Achievement",[[
description This guide will show you all the achievements you need to complete the Hail to the Chef Achievement.
step
condition achieved(1563)
label	start
'Complete the Achievement Grand Master Cook |achieve 125
.'_
.'Click here to use our _Cooking Guide_ and level up your Cooking skill. |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
step
'Complete the Achievement The Cake Is Not A Lie |achieve 877
.'_
.' Click here to use our _The Cake Is Not A Lie_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Cake Is Not A Lie Achievement"
step
'Complete the Achievement Kickin' It Up a Notch |achieve 906
.'_
.' Click here to use our _Kickin' It Up a Notch_ guide Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Kickin' It Up a Notch Achievement"
step
'Complete the Achievement The Northrend Gourmet |achieve 1779
.'_
.' Click here to use our _The Northrend Gourmet_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Northrend Gourmet Achievement"
step
'Complete the Achievement Second That Emotion |achieve 1780
.'_
.' Click here to use our _Second That Emotion_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Second That Emotion Achievement"
step
'Complete the Achievement Critter Gitter |achieve 1781
.'_
.' Click here to use our _Critter Gitter_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Critter Gitter Achievement"
step
'Complete the Achievement Our Daily Bread |achieve 1783
.'_
.' Click here to use our _Our Daily Bread_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Our Daily Bread Achievement"
step
'Complete the Achievement Dinner Impossible |achieve 1785
.'_
.' Click here to use our _Dinner Impossible_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Dinner Impossible Achievement"
step
'Complete the Achievement Sous Chef |achieve 1798
.'_
.' Click here to use our _Sous Chef_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Iron Chef"
step
'Complete the Achievement Captain Rumsey's Lager |achieve 1801
.'_
.' Click here to use our _Captain Rumsey's Lager_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\Captain Rumsey's Lager Achievement"
step
'Complete the Achievement The Outland Gourmet |achieve 1800
.'_
.' Click here to use our _The Outland Gourmet_ Achievement Guide |confirm |next "Zygor's Horde Achievements Guides\\Profession Achievements\\Cooking\\The Outland Gourmet Achievement"
step
'You still have some Achievements to earn before you complete the _Hail to the Chef_ Achievement. |only if not achieved(1563)
.'_ |only if not achieved(1563)
.' Click here to return to the beginning of this guide |confirm |only if not achieved(1563) |next start
'Congratulations! You have earned the Achievement _Hail to the Chef_! |achieve 1563 |only if achieved(1563)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Journeyman Fisherman",[[
description Obtain 150 skill points in fishing.
step
condition achieved(126)
.' To get this, you simply need to achieve 150 fishing.  You can fish anywhere for this, but Stormwind is recommended for the easiest catches.
step
#include trainFishing
.' Learn the Apprentice Fishing skill |skillmax Fishing,75
step
goto Orgrimmar,66.6,41.6
.talk 3333
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 75 |skill Fishing,75
step
#include trainFishing
.' Learn the Journeyman Fishing skill |skillmax Fishing,150
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 150 |skill Fishing,150
step
.' Earn Journeyman Fisherman Achievement. |achieve 126
step
'Congratulations! You've earned the Journeyman Fisherman achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\The Old Gnome and the Sea",[[
description Successfully fish from a school.
step
condition achieved(153)
'Go to Ashenvale |goto Ashenvale |noway |c
step
goto Ashenvale,78.0,51.7
.' Look for Sagefish Schools in the water.  Walk along the rivers until you find one if you're unable to see one at this spot.
.' It looks like a swarm of fish.
.' Use you fishing skill until your lure is inside of the school of fish, then catch one. |cast Fishing##7620
.' Earn The Old Gnome and the Sea Achievement. |achieve 153
step
'Congratulations! You've earned The Old Gnome and the Sea achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\The Scavenger",[[
description Successfully fish each of the junk nodes.
step
condition achieved(1257)
goto Zangarmarsh,57.0,56.0
.' Look for Steam Pump Flotsam in the water around this area and fish from it |cast Fishing##7620
.' Fish from Steam Pump Flotsam |achieve 1257/1
step
goto Orgrimmar,67.4,38.2
.' Look for Floating Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Floating Wreckage |achieve 1257/5
step
goto Feralas,63.1,51.5
.' Look for Waterlogged Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Waterlogged Wreckage |achieve 1257/4
step
goto Northern Stranglethorn,55.0,64.0
.' Look for Schooner Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Schooner Wreckage |achieve 1257/3
step
goto The Cape of Stranglethorn,30.9,81.5
.' Look for Bloodsail Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Bloodsail Wreckage |achieve 1257/2
step
.' Successfully fish in each of the junk nodes |achieve 1257
step
'Congratulations! You've earned The Scavenger achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\The Fishing Diplomat",[[
description Fish something up in Orgrimmar and Stormwind.
step
condition achieved(150)
goto Orgrimmar,24.8,62.8
.' Use your fishing skill in the pond |cast Fishing##7620
.' Fish in Orgrimmar |achieve 150/1
step
goto Stormwind City,69.0,92.2
.' Use your fishing skill in the moat in front of Stormwind City |cast Fishing##7620
.' Fish in Stormwind City |achieve 150/2
step
.' Earn The Fishing Diplomat. |achieve 150
step
'Congratulations! You've earned The Fishing Diplomat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Mr. Pinchy's Magical Crawdad Box",[[
description Fish your way to Mr. Pinchy's Magical Crawdad Box.
step
condition achieved(726)
goto Northern Stranglethorn,31.0,37.7
.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
.collect Weather-Beaten Journal##34109
.learn Find Fish##43308 |use Weather-Beaten Journal##34109
step
goto Terokkar Forest,65.0,76.8
.' Use your Find Fish ability to locate Highland Mixed Schools
.' Use your fishing skill to fish in the pond |cast Fishing##7620
step
goto Terokkar Forest,66.5,84.3
.' Here [Terokkar Forest,66.5,84.3]
.' Here [Terokkar Forest,65.9,73.1]
.' Here [Terokkar Forest,60.6,59.9]
.' Here [Terokkar Forest,45.0,40.5]
.collect 1 Magical Crawdad Box##27445
'|modeldisplay 3215
.learn pet Magical Crawdad##33050 |use Magical Crawdad Box##27445
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\1000 Fish",[[
description Fish up 1000 items.
step
condition achieved(1561)
achieveid 1560,1559,1558,1557,1556
goto Orgrimmar,66.6,41.6
.talk 3333
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch 1000 Fish. |achieve 1561/1
step
'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Old Crafty",[[
description Fish up Old Crafty in Orgrimmar.
step
condition achieved(1836)
.' In order to Earn this achievement, you will need to fish from any pool of water in Orgrimmar.
.' The higher level your fishing skill, the better.  You will catch less junk the higher you are, which gives you a higher chance to catch Old Crafty.
.' Click here when you're ready to proceed to the next step in the guide |confirm
step
goto Orgrimmar,59.3,39.9
.' Use your fishing ability in the stream of water. |cast Fishing##7620
.collect Old Crafty##34486
step
.' Earn the Old Crafty Achievement. |achieve 1836
step
'Congratulations! You've earned the Old Crafty achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Old Ironjaw",[[
description Fish up Old Ironjaw in Ironforge.
step
condition achieved(1837)
.' In order to Earn this achievement, you will need to fish from any pool of water (or lava) in Ironforge.
.' The higher level your fishing skill, the better. You will catch less junk the higher you are, which gives you a higher chance to catch Old Ironjaw.
.' Click here when you're ready to proceed to the next step in the guide |confirm
step
goto Ironforge,47.6,14.2
.' Use your fishing ability in the pond. |cast Fishing##7620
.collect Old Ironjaw##34484
step
.' Earn the Old Ironjaw Achievement. |achieve 1837
step
'Congratulations! You've earned the Old Ironjaw achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\The Lurker Above",[[
description Fish up The Lurker Below in Serpentshrine Cavern.
step
condition achieved(144)
.' In order to earn this achievement, you will need to be in a raid group.
.' You will also need to be at least Level 70.
.' It would be best if you picked up Elixirs of Water Walking
.' You won't need a certain level of fishing, but the high level you are, the higher change you have of fishing up 'The Lurker Below'.
.' Click here after you have read the requirements for this achievement. |confirm
step
goto Zangarmarsh,50.4,41.0 |n
.' Swim down underwater through the tube to the Coilfang Reservoir |goto 51.9,38.0 |c
step
goto Serpentshrine Cavern,13.5,59.6
.' Ride the elevator down
.' Click here once you're at the bottom and off of the elevator |confirm
step
goto Serpentshrine Cavern,19.6,68.5
.' Walk up the ramp and ride the elevator up.
.' Click here once you ride the elevator up. |confirm
step
goto Serpentshrine Cavern,22.7,72.8 |n
.' Use your water walking potion and jump into the water. |use Elixir of Water Walking##8827
.' If you jump into the water without water walking, fish will attack you and you will have to kill them before using your Elixir.
.' Walk over to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5 |c
step
.' Once you're there, use your fishing ability and make sure that your lure lands in the Strange Pool. |cast Fishing##7620
.' Earn The Lurker Above Achievement. |achieve 144
step
'Congratulations! You've earned The Lurker Above achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Old Man Barlowned",[[
description Complete each of Old Man Barlo's 5 fishing daily quests.
step
condition achieved(905)
.' In order the earn this achievement, you will need to have completed these 5 daily quests:
.' Crcolisks in the City |achieve 905/1
.' Bait Bandits |achieve 905/2
.' Felblood Fillet |achieve 905/3
.' The One That Got Away |achieve 905/4
.' Shrimpin' Ain't Easy |achieve 905/5
.' Click here to proceed |confirm
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.' You will only be able to pick up 1 of 5 dailies per day.
.accept 11665 |or
.accept 11666 |or
.accept 11669 |or
.accept 11667 |or
.accept 11668 |or
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Terokkar Forest,51.8,37.2
.' Fish in the river here |cast Fishing##7620
..get Blackfin Darter##34865 |q 11666/1
only if havequest(11666)
step
goto Nagrand,37.4,47.1
.' Use your fishing ability to fish in the lake. |cast Fishing##7620
..get World's Largest Mudfish##34868 |q 11667/1
only if havequest(11667)
step
goto Zangarmarsh,77.9,79.7
.' Fish from the Lake here |cast Fishing##7620
.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
only if havequest(11668)
step
goto Shadowmoon Valley,29.9,38.8
.' Use your fishing ability in the green lava. |cast Fishing##7620
..get Monstrous Felblood Snapper |q 11669/1
only if havequest(11669)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.' You will only be able to pick up 1 of 5 dailies per day.
.turnin 11665 |or
.turnin 11666 |or
.turnin 11669 |or
.turnin 11667 |or
.turnin 11668 |or
step
.' Crcolisks in the City |achieve 905/1
.' Bait Bandits |achieve 905/2
.' Felblood Fillet |achieve 905/3
.' The One That Got Away |achieve 905/4
.' Shrimpin' Ain't Easy |achieve 905/5
step
.' Earn the Old Man Barlowned Achievement. |achieve 905
step
'Congratulations! You've earned the Old Man Barlowned achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Outland Angler",[[
description Catch a fish in specific nodes.
step
condition achieved(1225)
.' In order to earn this achievement, you will need to fish from 6 different pools of fish in the Outlands.
.' Click here to proceed. |confirm
step
goto Zangarmarsh,72.5,59.9
.' Use your fishing skill on Sporefish School's around Umberfen Lake |cast Fishing##7620
.' Fish from a Sporefish School |achieve 1225/6
step
goto Terokkar Forest,60.8,59.0 |n
.' You will need to fly to reach the Highland Mixed Schools.  There are two more spots you can check for them below:
.' The large Skettis Lake |goto 66.4,80.0 |n
.' Lake Jorune |goto 45.9,39.5 |n
.' Fish from a Highland Mixed School |achieve 1225/5
step
map Terokkar Forest
path follow loose;loop off;ants straight
path	 60.5,51.9	62.9,48.1	63.6,45.0
path	 60.0,36.5
.' Follow the stream until you find a School of Darfters or Brackish Mixed School in the river.
.' Use your fishing skill to fish from either Brackish Mixed or School of Darters
.' Fish from a School of Darters |achieve 1225/4
.' Fish from a Brackish Mixed School |achieve 1225/1
step
map Nagrand
path follow loose;loop off;ants straight
path	 47.2,44.4	48.7,45.3	51.1,43.2
path	 50.9,47.6	48.8,48.1	47.4,48.6
path	 46.5,47.6
.' Follow the stream until you find a Bluefish and a Mudfish School.
.' Use your fishing  skill to fish from either Bluefish and a Mudfish School |cast Fishing##7620
.' Fish from a Bluefish School |achieve 1225/2
.' Fish from a Mudfish School |achieve 1225/3
step
.' Earn the Outland Angler Achievement. |achieve 1225
step
'Congratulations! You've earned the Outland Angler achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Northrend Angler",[[
description Catch a fish in specific nodes
step
condition achieved(1517)
.' In order to earn this achievement, you will have to fish from 10 different schools of fish in Northrend.
.' Click here to proceed. |confirm
step
.' Borean Man O'War School |achieve 1517/1
.' Dragonfin Angelfish School |achieve 1517/3
.' Glacial Salmon School |achieve 1517/5
.' Imperial Manta Ray School |achieve 1517/7
.' Musselback Sculpin School |achieve 1517/9
.' Deep Sea Monsterbelly School |achieve 1517/2
.' Fangtooth Herring School |achieve 1517/4
.' Glassfin Minnow School |achieve 1517/6
.' Moonglow Cuttlefish School |achieve 1517/8
.' Neettlefish School |achieve 1517/10
.' Click here to proceed. |confirm
step
map Borean Tundra
path follow loose;loop off;ants straight
path	54.3,75.2	49.5,79.0	45.8,80.9
path	43.4,78.5	40.3,77.0
.' Follow the coast until you find and Imperial Manta Ray and a Borean Man O' War School.  You mayb need to fish out other schools in order to force new ones to spawn.
.' Fish from an Imperial Manta Ray School |achieve 1517/7 |cast Fishing##7620
.' Fish from a Borean Man O' War School |achieve 1517/1 |cast Fishing##7620
step
goto Borean Tundra,51.2,42.4
.' You will be able to find Musselback Sculpin Schools around Lake Kum'uya.
.' Fish from a Musselback Scuplin School |achieve 1517/9
step
goto Borean Tundra,82.7,59.5
.' Around the Glacier, you will find Schools of Moonglow Cuttlefish and Deep Sea Monsterbelly.
.' Fish from a Deep Sea Monsterbelly School |achieve 1517/2 |cast Fishing##7620
.' Fish from a Moonglow Cuttlefish School |achieve 1517/8 |cast Fishing##7620
step
goto Sholazar Basin,46.8,64.7
.' All around River's Heart, you will find schools of Nettlefish.
.' Fish from a Nettlefish School |achieve 1517/10 |cast Fishing##7620
step
goto Dragonblight,42.3,67.8
.' You can find Dragonfin Angelfish School all along Lake Indu'le.
.' Fish from a Dragonfin Angelfish School |achieve 1517/3 |cast Fishing##7620
step
goto Crystalsong Forest,49.0,54.1
.' Along the Twilight Rivulet you will find schools of Glassfin Minnow.
.' Fish from a Glassfin Minnow School |achieve 1517/6 |cast Fishing##7620
step
map Grizzly Hills
path follow loose;loop off;ants straight
path	26.4,64.9	28.6,60.8	29.5,55.8
.' You can find Schools of Glacial Salmon along this river.
.' Fish from a Glacial Salmon School |achieve 1517/5 |cast Fishing##7620
step
map Howling Fjord
path follow loose;loop off;ants straight
path	59.5,58.8	60.8,60.3	60.6,64.5
.' You can find Fangtooth Herring Schools along Daggercap Bay.
.' Fish from a Fangtooth Herring School |achieve 1517/4 |cast Fishing##7620
step
.' Earn the Northrend Angler Achievement. |achieve 1517 |cast Fishing##7620
step
'Congratulations! You've earned the Northrend Angler achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Chasing Marcia",[[
description Complete each of Marcia Chase's 5 fishing daily quests.
step
condition achieved(3217)
label "start"
.' In order to earn this Achievement, you will have to complete 5 daily quests.
.' You will only be able to accept one per day, so this may take longer than 5 days to achieve.
.' Click here to proceed |confirm
step
'Below is a list of the 5 daily quests you will need to complete.
.' The Ghostfish |achieve 3217/1
.' Jewel Of The Sewers |achieve 3217/2
.' Dangerously Delicious |achieve 3217/3
.' Blood is Thicker |achieve 3217/4
.' Disarmed! |achieve 3217/5
.' Click to proceed |confirm
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..accept 13833 |or
..accept 13834 |or
..accept 13832 |or
..accept 13836 |or
..accept 13830 |or
step
goto Borean Tundra,54.6,41.8
.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
only if havequest (13833)
step
goto 53.7,42.9
.' Walk into the water here to create a pool of blood
.' Fish in the pool of blood
.get 5 Bloodtooth Frenzy |q 13833/1
only if havequest (13833)
step
goto Wintergrasp,79.9,41.8
.' Fish in this big lake
.get 10 Terrorfish |q 13834/1
only if havequest (13834)
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
only if havequest (13832)
step
goto 44.4,66.2
.' Fish in the water in the Dalaran sewers
.get 1 Corroded Jewelry |q 13832/1
only if havequest (13832)
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
only if havequest (13832)
step
goto Dalaran,64.8,60.8
.' Stand on the this circular platform and fish in the water here
.collect Bloated Slippery Eel##45328|n
.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
.get 1 Severed Arm |q 13836/1
only if havequest (13836)
step
goto Sholazar Basin,49.3,61.8
.' Fish in the water here
.collect 1 Phantom Ghostfish##45902|n
.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
.' Discover the Ghostfish mystery |q 13830/1
only if havequest (13830)
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..turnin 13833
..turnin 13834
..turnin 13832
..turnin 13830
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
|next "start" |only if default
|next |only if achieved(3217)
step
.' Earn the Chasing Marcia Achievement. |achieve 3217
step
'Congratulations! You've earned the Chasing Marcia achievement!
]])




ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Fish Don't Leave Footprints",[[
description Learn the ability to find fish.
step
condition achieved(1243)
goto Northern Stranglethorn,31.0,37.7
.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
.collect Weather-Beaten Journal##34109
.' Use the Weather-Beaten Journal. |use Weather-Beaten Jounral##34109
.' Earn the Fish Don't Leave Footprints achievement. |achieve 1243
step
.' Congratulations, you have earned the Fish Don't Leave Footprints achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\The Coin Master",[[
description Complete the coin fishing achievements.
step
condition achieved(1243)
achieveid 2094,2095,1957
.' This guide will help you earn the achievements _A Penny For Your Thoughts_, _Silver in the City_, _There's Gold In That There Fountain_, and finally, _The Coin Master_.
.' Click here to proceed. |confirm
step
.' Here is your current progression on The Coin Master.
.' A Penny For Your Thoughts. |achieve 2096/1
.' Silver in the City. |achieve 2096/2
.' There's a Gold In That There Fountain. |achieve 2096/3
.' Click here to proceed. |confirm
step
label	hub
goto Dalaran,52.6,66.5
.' This fountain is where you will be fishing from to earn these achievements. Use your fishing skills to fish up Copper, Silver and Gold Coins. |cast Fishing##7620
.' Earn the A penny For Your Thoughts achievement. |achieve 2096/1
.' Click here for a more detailed look of this achievement |confirm |next penny
.'_
.' Earn the Silver in the City achievement. |achieve 2096/2
.' Click here for a more detailed look of this achievement |confirm |next silver
.'_
.' Earn the There's Gold In That There Fountain achievement. |achieve 2096/3
.' Click here for a more detailed look of this achievement |confirm |next gold
.' This achievement takes a lot of time, so try to be patient.
step
.' Earn the A penny For Your Thoughts Achiement. |achieve 2094
.' Earn the Silver in the City achievement. |achieve 2095
.' Earn the There's Gold In That There Fountain achievement. |achieve 1957
.' Earn The Coin Master achievement. |achieve 2096
|next congrats
step
label	penny
goto Dalaran,52.6,66.5
'You will need to fish up each one of the coins listed below to complete this acheivement:
.' Fish up: Alonsus Faol's Copper Coin |achieve 2094/1
.' Fish up: Attumen's Copper Coin |achieve 2094/3
.' Fish up: Dornaa's Shiny Copper Coin |achieve 2094/5
.' Fish up: Elling Trias' Copper Coin |achieve 2094/7
.' Fish up: Genn's Copper Coin |achieve 2094/9
.' Fish up: Krasus' Copper Coin |achieve 2094/11
.' Fish up: Landro Longshot's Copper Coin |achieve 2094/13
.' Fish up: Murky's Copper Coin |achieve 2094/15
.' Fish up: Private Marcus Jonathan's Copper Coin |achieve 2094/17
.' Fish up: Squire Rowe's Copper Coin |achieve 2094/19
.' Fish up: Vareesa's Copper Coin |achieve 2094/21
.' Fish up: Ansirem's Copper Coin |achieve 2094/2
.' Fish up: Danath's Copper Coin |achieve 2094/4
.' Fish up: Eitrigg's Copper Coin |achieve 2094/6
.' Fish up: Falstad Wildhammer's Copper Coin |achieve 2094/7
.' Fish up: Inigo's Copper Coin |achieve 2094/10
.' Fish up: Kryll's Copper Coin |achieve 2094/12
.' Fish up: Molok's Copper Coin |achieve 2094/14
.' Fish up: Princess Calia Menethil's Copper Coin |achieve 2094/16
.' Fish up: Salandria's Shiny Copper Coin |achieve 2094/18
.' Fish up: Stalvan's Copper Coin |achieve 2094/20
.' Fish up: Vargoth's Copper Coin |achieve 2094/22
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	silver
goto Dalaran,52.6,66.5
.' Fish up: Aegwynn's Silver Coin |achieve 2095/1
.' Fish up: Alleria's Silver Coin |achieve 2095/2
.' Fish up: Antonidas' Silver Coin |achieve 2095/3
.' Fish up: Arcanist Doan's Silver Coin |achieve 2095/4
.' Fish up: Fandral Staghelm's Silver Coin |achieve 2095/5
.' Fish up: High Tinker Mekkatorque's Silver Coin |achieve 2095/6
.' Fish up: Khadgar's Silver Coin |achieve 2095/7
.' Fish up: King Anasterian Sunstrider's Silver Coin |achieve 2095/7
.' Fish up: King Terenas Menethil's Silver Coin |achieve 2095/8
.' Fish up: King Varian Wrynn's Silver Coin |achieve 2095/9
.' Fish up: Maiev Shadowsong's Silver Coin |achieve 2095/10
.' Fish up: Medivh's Silver Coin |achieve 2095/11
.' Fish up: Muradin Bronzebeard's Silver Coin |achieve 2095/12
.' Fish up: Prince Magni Bronzebeard's Silver Coin |achieve 2095/13
.' Fish up: A Peasant's Silver Coin |achieve 2095/14
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	gold
goto Dalaran,52.6,66.5
.' Fish up: Anduin Wrynn's Gold Coin |achieve 1957/1
.' Fish up: Archimonde's Gold Coin |achieve 1957/2
.' Fish up: Arthas' Gold Coin |achieve 1957/3
.' Fish up: Arugal's Gold Coin |achieve 1957/4
.' Fish up: Brann Bronzebeard's Gold Coin |achieve 1957/5
.' Fish up: Chromie's Gold Coin |achieve 1957/6
.' Fish up: Kel'Thuzad's Gold Coin |achieve 1957/7
.' Fish up: Lady Jaina Proudmoore's Gold Coin |achieve 1957/8
.' Fish up: Lady Katrana Prestor's Gold Coin |achieve 1957/9
.' Fish up: Prince Kael'thas Sunstrider's Gold Coin |achieve 1957/10
.' Fish up: Sylvanas Windrunner's Gold Coin |achieve 1957/11
.' Fish up: Teron's Gold Coin |achieve 1957/12
.' Fish up: Thrall's Gold Coin |achieve 1957/13
.' Fish up: Tirion Fordring's Gold Coin |achieve 1957/14
.' Fish up: Uther Lightbringer's Gold Coin |achieve 1957/15
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	congrats
.' Congratulation, you have earned The Coin Master achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\I Smell A Giant Rat",[[
description Fish up the Giant Sewer Rat from The Underbelly in Dalaran.
step
condition achieved(1958)
goto Dalaran,59.7,47.3 |n
.' Go down the ramp into Dalaran Sewers. |goto Dalaran,62.7,46.8 |noway|c
step
goto Dalaran,44.1,66.4
.' Use your fishing skill to fish from the dock. |cast Fishing##7620
.' Catch a Giant Sewer Rat.
.get Giant Sewer Rat##43698 |n
.' Use the Giant Sewer Rat. |use Giant Sewer Rat##43698
.' Earn I Smell A Giant Rat. |achieve 1958
step
.' Congratulations, you have earned the I Smell A Giant Rat achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Turtles All the Way Down",[[
description Fish up a Sea Turtle mount from any fishing pool in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, or Northrend.
step
condition achieved(3218)
.' In order to earn this achievement, you will need to fish from any school of fish within a Northrend or Cataclysm Zone.
.' Click here to proceed. |confirm
step
goto Crystalsong Forest,48.7,54.0
.' Fish from school of fish along the river here. |cast Fishing##7620
.' You will only be able to catch the sea turtle from fish schools.
.collect Sea Turtle##46109
.' Use the Sea Turtle. |use Sea Turtle##46109
.' Earn the Turtles All the Way Down achievement. |achieve 3218
step
.' Congratulations, you have earned the Turtles All the Way Down achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\Accomplished Angler",[[
description Complete the fishing achievements
step
condition achieved(1516)
.' This achievement is earned once you have completed a majority of the Fishing achievements.
.' Once you complete this, you will have earn the title "Salty".
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
.' Congratulations, you have earned the _Accomplished Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Journeyman Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
step
condition achieved(131)
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(131)
step
'You can use our First Aid guide to earn the achievement Journeyman Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement _Journeyman Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Expert Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
step
condition achieved(132)
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(132)
step
'You can use our First Aid guide to earn the achievement Expert Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Expert Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Artisan Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
step
condition achieved(133)
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(133)
step
'You can use our First Aid guide to earn the achievement Artisan Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Artisan Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
step
condition achieved(134)
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(134)
step
'You can use our First Aid guide to earn the achievement Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Grand Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
step
condition achieved(135)
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(135)
step
'You can use our First Aid guide to earn the achievement Grand Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Grand Master Medic_!
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Stocking Up",[[
step
condition achieved(137)
title + First Aid 350-450
label "aid_350-450"
#include "trainer_FirstAid"
.skillmax First Aid,450 |tip You must be at least level 65.
.learn Heavy Frostweave Bandage##45546
step
label	create
#include "auctioneer"
.buy Frostweave Cloth##33470 |n
.' You need _{_G.ceil(_G.max(0, (1000-itemcount(33470))))}_ Frostweave Cloth to make 500 Bandages.
.create 500 Heavy Frostweave Bandage##45546,First Aid,500 total |n
.' Create a total of 500 Heavy Frostweave Bandages |achieve 137/1 |next end
.' Click here to farm these instead of buying them. |confirm |next farm
step
label	farm
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+,Dark Zealot##34728+
.collect Frostweave Cloth##33470 |n
|confirm |next create
step
'Congratulations! You have earned the Achievement _Stocking Up_!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\First Aid\\Ultimate Triage",[[
step
condition achieved(141)
.' For this Achievement, you will need to _bandage_ a player who is _at 5% health_.
.' You must use a Bandage that is a Heavy Frostweave or above in level.
|confirm
step
'You will first need to find someone who is at _5% health_.
.' You can duel someone, or have them use spells or even just go into a Battleground to do this.
.'_
.' Use Heavy Frostweave Bandage |use Heavy Frostweave Bandage##34722
.' Use Embersik Bandage |use Embersilk Bandage##53049
.' Use Dense Embersilk |use Dense Embersilk##53050
.' Use Heavy Embersilk Bandage |use Heavy Embersilk Bandage##53050
.' Use Field Bandage: Dense Embersilk |use Field Bandage: Dense Embersilk##53051
.' Use Windwool Bandage |use Windwool Bandage##72985
.' Use Heavy Windwool Bandage _Rank 1_ |use Heavy Windwool Bandage##72986
.' Use Heavy Windwool Bandage _Rank 2_ |use Heavy Windwool Bandage##82830
.'_
.' Earn the Achievement: _Ultimate Triage_. |achieve 141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Pilgrim's Bounty",[[
description This guide will walk you through earning
description the Pilgrim's Bounty Achievements.

step
#include "Pilgrims_Bounty_Quests_Horde"
#include "Pilgrims_Bounty_Achievements_Horde"
#include "Pilgrims_Bounty_Dailies"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Darkmoon Faire\\Darkmoon Faire Achievements", [[
description This guide will help you navigate through the Darkmoon Faire Event

step
#include "H_Darkmoon_Faire_Achievements"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Lunar Festival",[[
description This guide will walk you through earning
description the Lunar Festival Achievements.

step
#include "H_Lunar_Festival_Elders"
#include "H_Lunar_Festival_Quests"
#include "H_Lunar_Festival_Achievements"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Love is in the Air",[[
description This guide will walk you through earning
description the Love is in the Air Achievements.

step
#include "H_Love_Is_In_The_Air_Achievements"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Noblegarden",[[

step
#include "H_Noblegarden_Achievements"]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Children's Week\\Children's Week Achievements",[[
step
#include "H_Children's_Week_Achievements"
.' You will need to do this questline in order to obtain Egbert's Egg, Sleepy Willy, and the Elekk Training Collar.
|confirm
#include "H_Children's_Week_Shattrath_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Midsummer Fire Festival",[[
description This guide will walk you through earning the
description Midsummer Fire Festival Achievements.

step
#include "Midsummer_Achievements"]])







































































































































































































ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\FARMING",[[



step
INSTANCE // // TIME PER RUN
//-------------------------------
//COMPLETE
//-------------------------------
//Scarlet Monastery (6m 1s)
		goto Scarlet Monastery/1,75.7,45.8
		'Run through the Scarlet Monastery dungeon, killing all mobs along the way.
		..collect 60 Soul Dust##11083
		..collect 10 Lesser Mystic Essence##11134
		..collect 40 Small Glowing Shard##11138
		..collect 820 Silk Cloth##4306
		..collect 20 Wool Cloth##2592
		'|meta crap_items_follow=1
		..collect 50 Stormwind Brie##1707
//Scarlet Halls (5m 36s)
	step
		goto Scarlet Halls/1,34.3,90.1
		'Run through the Scarlet Halls dungeon, killing all mobs along the way.
		..collect 32 Greater Astral Essence##11082
		..collect 86 Soul Dust##11083
		..collect 43 Small Glowing Shard##11138
		..collect 289 Silk Cloth##4306
		..collect 86 Wool Cloth##2592
		'|meta crap_items_follow=1
		..collect 96 Thick Furry Mane##4583
		..collect 182 Lean Wolf Flank##1015
		..collect 139 Ruined Pelt##4865
//Scholomance (7m 29s)
	step
		goto Scholomance/1,18.1,60.9
		'Run through the Scholomance dungeon, killing all mobs along the way.
		..collect 48 Small Radiant Shard##11177
		..collect 88 Vision Dust##11137
		..collect 216 Mageweave Cloth##4338
		'|meta crap_items_follow=1
		..collect 312 Soft Banana Bread##4601
		..collect 152 Moonberry Juice##1645
		..collect 144 Bone Fragments##22526
//Stratholme (9m 48s)
	step
		goto Stratholme/1,68.02,88.46
		'Run through the Stratholme dungeon, killing all mobs along the way.
		..collect 42 Large Radiant Shard##11178
		..collect 24 Vision Dust##11137
		..collect 24 Dream Dust##11176
		..collect 6 Small Brilliant Shard##14343
		..collect 1032 Mageweave Cloth##4338
		..collect 30 Ichor of Undeath##7972
		..collect 18 Righteous Orb##12811
		'|meta crap_items_follow=1
		..collect 222 Moonberry Juice##1645
		..collect 222 Superior Healing Potion##3928
		..collect 96 Greater Mana Potion##6149
		..collect 168 Bone Fragments##22526
		..collect 54 Nightcrawlers##6530
		..collect 474 Raw Black Truffle##4608
		..collect 102 Fine Aged Cheddar##3927
//Shadowfang Keep (9m 47s)
	step
		goto Shadowfang Keep,69.46,60.97
		'Run through the Scholomance dungeon, killing all mobs along the way.
		..collect 78 Strange Dust##10940
		..collect 18 Greater Magic Essence##10939
		..collect 42 Small Glimmering Shard##10978
		..collect 24 Lesser Astral Essence##10998
		..collect 432 Wool Cloth##2592
		..collect 12 Silk Cloth##4306
		..collect 204 Linen Cloth##2589
		..collect 42 Copper Ore##2770
		'|meta crap_items_follow=1
		..collect 24 Spongy Morel##4606
//Stockade (4m 16s)
	step
		goto The Stockade,50.1,68.1
		'Run through the Scholomance dungeon, killing all mobs along the way.
		..collect 56 Small Glimmering Shard##10978
		..collect 140 Strange Dust##10940
		..collect 840 Wool Cloth##2592
		..collect 420 Linen Cloth##2589
		..collect 70 Silk Cloth##4306
		'|meta crap_items_follow=1
		..collect 84 Healing Potion##929
		..collect 252 Melon Juice##1205
		..collect 84 Inert Elemental Particle##55974
		..collect 126 Inert Elemental Granule##55982
		..collect 112 Inert Elemental Grain##55975
		..collect 98 Inert Elemental Flake##55978
		..collect 504 Mutton Chop##3770
		..collect 84 Lesser Mana Potion##3385
//The Deadmines (7m 16s)
	step
		goto The Deadmines/1,26.5,13.4
		'Run through the Deadmines dungeon, killing all mobs along the way.
		..collect 149 Strange Dust##10940
		..collect 33 Greater Magic Essence##10939
		..collect 58 Small Glimmering Shard##10978
		..collect 8 Lesser Magic Essence##10938
		..collect 289 Wool Cloth##2592
		..collect 339 Linen Cloth##2589
		..collect 25 Tigerseye##818
		..collect 33 Copper Ore##2770
		'|meta crap_items_follow=1
		..collect 50 Haunch of Meat##2287
		..collect 50 Dalaran Sharp##414
		..collect 41 Ice Cold Milk##1179
//Gnomeregan (14m 11s)
	step
		goto Gnomeregan,64.33,28.96
		'Run through the Deadmines dungeon, killing all mobs along the way.
		..collect 17 Large Glimmering Shard##11084
		..collect 25 Vision Dust##11137
		..collect 34 Greater Astral Essence##11082
		..collect 415 Silk Cloth##4306
		..collect 157 Wool Cloth##2592
		'|meta crap_items_follow=1
		..collect 165 Grime-Encrusted Object##9308
		..collect 51 Moist Cornbread##4542
		..collect 25 Mutton Chop##3770
		..collect 25 Lesser Mana Potion##3385
		..collect 8 Healing Potion##929
//Uldaman (9m 20s)
	step
		goto Uldaman,67.03,72.71
		'Run through the Uldaman dungeon, killing all mobs along the way.
		..collect 13 Greater Mystic Essence##11135
		..collect 84 Vision Dust##11137
		..collect 6 Small Glowing Shard##11138
		..collect 39 Large Glowing Shard##11139
		..collect 412 Silk Cloth##4306
		..collect 26 Deeprock Salt##8150
		..collect 219 Mageweave Cloth##4338
		..collect 58 Solid Stone##7912
		..collect 96 Mystery Meat##12037
		'|meta crap_items_follow=1
		..collect 13 Super Healing Potion##22829
		..collect 13 Soft Banana Bread##4601
		..collect 19 Moonberry Juice##1645
		..collect 26 Shiny Pebble##54831
		..collect 64 Broken Scorpid Leg##4867
		..collect 26 Broken Basilisk Teeth##11384
//Blackrock Depths (12m 55s) 4.65
	step
		goto Blackrock Depths,34.7,77.8
		'Run through the Blackrock Depths dungeon, killing all mobs along the way.
		..collect 153 Illusion Dust##16204
		..collect 37 Large Brilliant Shard##14344
		..collect 9 Greater Eternal Essence##16203
		..collect 1051 Runecloth##14047
		..collect 33 Thick Spider's Silk##4337
		..collect 23 Ironweb Spider Silk##14227
		..collect 33 Shadow Silk##10285
		..collect 23 Mystery Meat##12037
		'|meta crap_items_follow=1
		..collect 70 White Spider Meat##12205
		..collect 56 Tender Wolf Meat##12208
		..collect 60 Red Wolf Meat##12203
		..collect 14 Spider Palp##4428
		..collect 33 Dripping Spider Mandible##4585
		..collect 214 Immature Venom Sac##12586
		..collect 9 Greater Mana Potion##6149
		..collect 33 Major Mana Potion##13444
		..collect 42 Roasted Quail##8952
//Blackrock Spire (12m 4s) 4.97
	step
		goto Blackrock Spire/4,26.77,38.23
		'Run through the Blackrock Spire dungeon, killing all mobs along the way.
		..collect 25 Greater Eternal Essence##16203
		..collect 45 Large Brilliant Shard##14344
		..collect 35 Illusion Dust##16204
		..collect 338 Runecloth##14047
		'|meta crap_items_follow=1
		..collect 15 Fiery Gland##4557
		..collect 10 Major Healing Potion##13446
		..collect 35 Roasted Quail##8952
		..collect 25 Morning Glory Dew##8766
		..collect 10 Major Mana Potion##13444
//The Shattered Halls (6m 27s) 9.30
	step
		goto The Shattered Halls/1,61.14,92.81
		'Run through the Shattered Halls dungeon, killing all mobs along the way.
		..collect 65 Greater Planar Essence##22446
		..collect 214 Arcane Dust##22445
		..collect 37 Large Prismatic Shard##22449
		..collect 697 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 93 Wretched Ichor##25445
		..collect 65 Broken Skull##25447
		..collect 28 Smoked Talbuk Venison##27854
		..collect 28 Purified Draenic Water##27860
//Throne of Tides (11m 30s) 5.22
	step
		goto Throne of the Tides/1,49.85,88.23
		'Run through the Throne of the Tides dungeon, killing all mobs along the way.
		..collect 31 Small Heavenly Shard##52720
		..collect 16 Hypnotic Dust##52555
		..collect 5 Lesser Celestial Essence##52718
		..collect 73 Embersilk Cloth##53010
		'|meta crap_items_follow=1
		..collect 10 Sliced Raw Billfish##58262
		..collect 31 Ruined Embersilk Scraps##68198
		..collect 63 Abyssal Clam##52340
		..collect 57 Shiny Fish Scales##17057
		..collect 5 Greasy Whale Milk##59029
		..collect 57 Fish Oil##17058
//The Slave Pens (7m 15s) 8.28
	step
		goto The Slave Pens,19.95,13.37
		'Run through the Slave Pens dungeon, killing all mobs along the way.
		..collect 17 Lesser Planar Essence##22447
		..collect 25 Small Prismatic Shard##22448
		..collect 75 Arcane Dust##22445
		..collect 207 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 282 Jaggal Clam##24476
		..collect 240 Shiny Fish Scales##17057
		..collect 17 Tarnished Plate Helmet##25386
		..collect 199 Fish Oil##17058
		..collect 248 Grime-Encrusted Scale##25429
		..collect 108 Ripped Fin##25431
		..collect 25 Major Healing Potion##13446
		..collect 66 Sunspring Carp##27858
		..collect 17 Filtered Draenic Water##28399
//The Steamvault (6m 50s) 8.78
	step
		goto The Steamvault,17.59,29.76
		'Run through the Steamvault dungeon, killing all mobs along the way.
		..collect 35 Large Prismatic Shard##22449
		..collect 105 Arcane Dust##22445
		..collect 9 Greater Planar Essence##22446
		..collect 158 Mote of Water##22578
		..collect 53 Mote of Life##22575
		'|meta crap_items_follow=1
		..collect 158 Coilfang Armaments##24368
		..collect 158 Elemental Fragment##24508
		..collect 211 Jaggal Clam##24476
		..collect 193 Shiny Fish Scales##17057
		..collect 35 Primordial Essence##24511
		..collect 44 Sunspring Carp##27858
		..collect 140 Fish Oil##17058
		..collect 61 Swamp Moss##25451
		..collect 17 Death Cap Fungus##25453
//The Underbog (8m 26s) 7.11
	step
		goto The Underbog,29.68,67.88
		'Run through the Underbog dungeon, killing all mobs along the way.
		..collect 28 Small Prismatic Shard##22448
		..collect 142 Arcane Dust##22445
		..collect 14 Lesser Planar Essence##22447
		..collect 185 Netherweave Cloth##21877
		..collect 92 Mote of Life##22575
		..collect 7 Living Essence##12803
		..collect 149 Sanguine Hibiscus##24246
		'|meta crap_items_follow=1
		..collect 434 Creeping Moss##25450
		..collect 242 Blighted Fungus##25452
		..collect 21 Luminescent Globe##25454
		..collect 14 Fish Oil##17058
		..collect 21 Jaggal Clam##24476
		..collect 128 Glowing Spores##25456
		..collect 57 Pheromone Sample##56205
		..collect 107 Insect Nociceptor Sample##56206
//Mana-Tombs (5m 51s) 10.26
	step
		goto Mana-Tombs,33.52,17.29
		'Run through the Mana Tombs dungeon, killing all mobs along the way.
		..collect 31 Small Prismatic Shard##22448
		..collect 92 Lesser Planar Essence##22447
		..collect 103 Arcane Dust##22445
		..collect 687 Netherweave Cloth##21877
		..collect 82 Mote of Shadow##22577
		'|meta crap_items_follow=1
		..collect 195 Shredded Wyrm Wing##28058
		..collect 51 Iridescent Eye##28059
		..collect 72 Smoked Talbuk Venison##27854
		..collect 31 Filtered Draenic Water##28399
//Auchenai Crypts (5m 58s) 10.06
	step
		goto Auchenai Crypts/1,44.12,75.10
		'Run through the Auchenai Crypts dungeon, killing all mobs along the way.
		..collect 40 Large Prismatic Shard##22449
		..collect 50 Lesser Planar Essence##22447
		..collect 483 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 30 Mag'har Grainbread##27855
//Sethekk Halls (4m 15s) 14.12
	step
		goto Sethekk Halls,73.35,36.47
		'Run through the Sethekk Halls dungeon, killing all mobs along the way.
		..collect 56 Large Prismatic Shard##22449
		..collect 42 Greater Planar Essence##22446
		..collect 127 Arcane Dust##22445
		..collect 537 Netherweave Cloth##21877
		..collect 99 Light Feather##17056
		'|meta crap_items_follow=1
		..collect 678 Brilliant Feather##25426
		..collect 56 Super Healing Potion##22829
		..collect 155 Savage Talon##25428
		..collect 28 Serpent Flesh##31671
		..collect 42 Iridescent Scale##30812
		..collect 56 Spirit Shard##28558
//Shadow Labyrinth (6m 59s) 8.59
	step
		goto Shadow Labyrinth,22.01,12.45
		'Run through the Shadow Labyrinth dungeon, killing all mobs along the way.
		..collect 43 Large Prismatic Shard##22449
		..collect 34 Greater Planar Essence##22446
		..collect 146 Arcane Dust##22445
		..collect 722 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 515 Mark of Sargeras##30809
		..collect 86 Fel Armament##29740
		..collect 17 Smoked Talbuk Venison##27854
		..collect 34 Purified Draenic Water##27860
		..collect 17 Super Healing Potion##22829
		..collect 69 Spirit Shard##28558
//The Mechanar (5m 36s) 10.71
	step
		goto The Mechanar/1,49.41,83.51
		'Run through the Mechanar dungeon, killing all mobs along the way.
		..collect 64 Large Prismatic Shard##22449
		..collect 161 Arcane Dust##22445
		..collect 11 Greater Planar Essence##22446
		..collect 568 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 86 Bottled Nethergon Energy##32902
		..collect 139 Mark of Sargeras##30809
		..collect 43 Mag'har Grainbread##27855
		..collect 21 Bottled Nethergon Vapor##32905
		..collect 171 Sunfury Signet##30810
//The Arcatraz (9m 2s) 6.64
	step
		goto The Arcatraz/1,41.26,81.70
		'Run through the Arcatraz dungeon, killing all mobs along the way.
		..collect 33 Large Prismatic Shard##22449
		..collect 33 Arcane Dust##22445
		..collect 13 Greater Planar Essence##22446
		..collect 106 Netherweave Cloth##21877
		..collect 86 Mote of Shadow##22577
		'|meta crap_items_follow=1
		..collect 33 Sunfury Signet##30810
		..collect 40 Gnarled Claw##25421
		..collect 60 Lifeless Tendril##29799
		..collect 13 Evil Eye##29800
		..collect 13 Purified Draenic Water##27860
		..collect 60 Bottled Nethergon Energy##32902
		..collect 166 Razor Sharp Fang##25418
//The Botanica (6m 7s) 9.81
	step
		goto The Botanica/1,89.59,41.09
		'Run through the Botanica dungeon, killing all mobs along the way.
		..collect 57 Large Prismatic Shard##22449
		..collect 39 Greater Planar Essence##22446
		..collect 196 Arcane Dust##22445
		..collect 657 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 29 Arcane Tome##29739
		..collect 157 Brilliant Feather##25426
		..collect 59 Serrated Petal##18223
		..collect 39 Gnarled Claw##25421
		..collect 20 Mag'har Grainbread##27855
		..collect 137 Razor Sharp Fang##25418
		..collect 186 Thorny Vine##18222
		..collect 294 Sunfury Signet##30810
		..collect 128 Bottled Nethergon Energy##32902
		..collect 98 Bottled Nethergon Vapor##32905
		..collect 461 Lasher Blossom##18224
//Magisters' Terrace (7m 22s) 8.14
	step
		goto Magisters' Terrace/2,42.53,90.01
		'Run through the Magisters' Terrace dungeon, killing all mobs along the way.
		..collect 16 Void Crystal##22450
		..collect 33 Large Prismatic Shard##22449
		..collect 81 Arcane Dust##22445
		..collect 16 Greater Planar Essence##22446
		..collect 358 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 33 Mag'har Grainbread##27855
		..collect 16 Elemental Fragment##24508
		..collect 24 Glimmering Scale##25430
		..collect 16 Purified Draenic Water##27860
//The Oculus (8m 24s) 7.14
	step
		goto The Oculus,61.30,47.58
		'Run through the Oculus dungeon, killing all mobs along the way.
		..collect 36 Dream Shard##34052
		..collect 7 Greater Cosmic Essence##34055
		..collect 57 Infinite Dust##34054
		..collect 29 Crystallized Fire##37702
		..collect 29 Crystallized Water##37705
		..collect 29 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 207 Scintillating Stone Shard##39209
		..collect 271 Frosted Claw##33631
		..collect 93 Icicle Fang##33632
		..collect 36 Shattered Stone##39210
		..collect 21 Thick Fur Clothing Scraps##43852
		..collect 50 Rubicund Scale##39567
		..collect 50 Hoary Crytals##39512
		..collect 21 Poached Emperor Salmon##35951
		..collect 21 Serrated Fang##39211
		..collect 14 Efflorescing Shards##39513
//Azjol-Nerub (4m 4s) 14.75
	step
		goto Azjol-Nerub/3,9.44,93.32
		'Run through the Azjol-Nerub dungeon, killing all mobs along the way.
		..collect 44 Small Dream Shard##34053
		..collect 29 Lesser Cosmic Essence##34056
		..collect 88 Infinite Dust##34054
		'|meta crap_items_follow=1
		..collect 14 Super Healing Potion##22829
		..collect 14 Thick Fur Clothing Scraps##43852
//Ahn'Kahet: The Old Kingdom (6m 57s) 8.63
	step
		goto Ahn'kahet: The Old Kingdom,88.99,79.12
		'Run through the Ahn'Kahet: The Old Kingdom dungeon, killing all mobs along the way.
		..collect 35 Dream Shard##34052
		..collect 17 Lesser Cosmic Essence##34056
		..collect 242 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 9 Super Mana Potion##22832
		..collect 43 Thick Fur Clothing Scraps##43852
		..collect 268 Frosty Spinneret##33629
		..collect 26 Honey-Spiced Lichen##33452
		..collect 17 Pungent Seal Whey##33444
		..collect 52 Icy Fang##33630
//The Violet Hold (7m 39s) 7.84
	step
		goto The Violet Hold,46.15,98.03
		'Run through the Violet Hold dungeon, killing all mobs along the way.
		..collect 55 Dream Shard##34052
		..collect 63 Infinite Dust##34054
		..collect 94 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 71 Thick Fur Clothing Scraps##43852
//Forge of Souls (6m 12s) 9.68
	step
		goto The Forge of Souls,66.05,88.89
		'Run through the Forge of Souls dungeon, killing all mobs along the way.
		..collect 29 Abyss Crystal##34057
		..collect 58 Infinite Dust##34054
		..collect 10 Greater Cosmic Essence##34055
		..collect 223 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 19 Runic Healing Potion##33447
		..collect 19 Thick Fur Clothing Scraps##43852
//Pit of Saron (8m 53s) 6.75
	step
		goto Pit of Saron,40.91,80.52
		'Run through the Pit of Saron dungeon, killing all mobs along the way.
		..collect 27 Abyss Crystal##34057
		..collect 7 Greater Cosmic Essence##34055
		..collect 142 Infinite Dust##34054
		..collect 94 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 121 Thick Fur Clothing Scraps##43852
		..collect 13 Honeymint Tea##33445
		..collect 13 Sparkling Frostcap##35947
//Halls of Reflection (10m 48s) 5.56
	step
		goto Halls of Reflection,47.33,80.81
		'Run through the Halls of Reflection dungeon, killing all mobs along the way.
		..collect 22 Abyss Crystal##34057
		..collect 78 Infinite Dust##34054
		..collect 17 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 39 Thick Fur Clothing Scraps##43852
		..collect 11 Sparkling Frostcap##35947
//Halls of Stone (11m 58s) 5
	step
		goto Halls of Stone,34.4,36.2
		'Run through the Halls of Stone dungeon, killing all mobs along the way.
		..collect 30 Dream Shard##34052
		..collect 5 Small Dream Shard##34053
		..collect 100 Infinite Dust##34054
		..collect 5 Greater Cosmic Essence##34055
		..collect 170 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 220 Relic of Ulduar##42780
		..collect 10 Honeymint Tea##33445
		..collect 45 Shattered Stone##39210
		..collect 15 Salted Venison##33454
//Halls of Lightning (8m 8s) 7.38
	step
		goto Halls of Lightning,7.38,53.81
		'Run through the Halls of Lightning dungeon, killing all mobs along the way.
		..collect 59 Dream Shard##34052 (5 from bosses)
		..collect 66 Greater Cosmic Essence##34055
		..collect 192 Infinite Dust##34054
		..collect 207 Frostweave Cloth##33470
		..collect 37 Crystallized Fire##37702
		..collect 30 Crystallized Water##37705
		..collect 30 Crystallized Air##37700
		'|meta crap_items_follow=1
		..collect 605 Relic of Ulduar##42780
		..collect 244 Scintillating Stone Shard##39209
		..collect 15 Honeymint Tea##33445
		..collect 52 Thick Fur Clothing Scraps##43852
		..collect 517 Hoary Crystals##39512
		..collect 52 Efflorescing Shards##39513
		..collect 30 Salted Venison##33454
//Drak'Tharon Keep (6m 28s) 9.28
	step
		goto Drak'Tharon Keep,29.38,80.96
		'Run through the Drak'tharon Keep dungeon, killing all mobs along the way.
		..collect 37 Dream Shard##34052
		..collect 130 Infinite Dust##34054
		..collect 37 Lesser Cosmic Essence##34056
		..collect 176 Frostweave Cloth##33470
		..collect 19 Iceweb Spider Silk##42253
		'|meta crap_items_follow=1
		..collect 19 Honey-Spiced Lichen##33452
		..collect 93 Bent Raptor Talon##44782
		..collect 37 Thick Fur Clothing Scraps##43852
		..collect 19 Vicious Fang##33546
		..collect 74 Icy Fang##33630
		..collect 28 Pungent Seal Whey##33444
		..collect 93 Frosty Spinneret##33629
		..collect 37 Barbed Fang##33569
		..collect 28 Rending Talon##33571
		..collect 28 Blood-Soaked Raptor War Feather##44783
//Utgarde Pinnacle (9m 24s) 6.38
	step
		goto Utgarde Pinnacle,44.49,16.12
		'Run through the Utgarde Pinnacle dungeon, killing all mobs along the way.
		..collect 32 Dream Shard##34052
		..collect 70 Infinite Dust##34054
		..collect 19 Greater Cosmic Essence##34055
		..collect 26 Worg Haunch##43011
		..collect 108 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 26 Thick Fur Clothing Scraps##
		..collect 13 Honeymint Tea##33445
		..collect 115 Serrated Fang##39211
//Utgarde Keep (6m 33s) 9.16
	step
		goto Utgarde Keep,69.27,73.00
		'Run through the Utgarde Keep dungeon, killing all mobs along the way.
		..collect 37 Small Dream Shard##34053
		..collect 55 Lesser Cosmic Essence##34056
		..collect 46 Infinite Dust##34054
		..collect 27 Worg Haunch##43011
		..collect 128 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 46 Vicious Fang##33546
		..collect 27 Fur-Clothing Scraps##43851
		..collect 27 Salted Venison##33454
		..collect 18 Super Healing Potion##22829
		..collect 27 Pungent Seal Whey##33444
		..collect 18 Hardened Claw##33547
		..collect 165 Caustic Claw##39532
//Blackrock Caverns (9m 13s) 6.51
	step
		goto Blackrock Caverns,32.02,70.10
		'Run through the Blackrock Caverns dungeon, killing all mobs along the way.
		..collect 33 Hypnotic Dust##52555
		..collect 46 Small Heavenly Shard##52720
		..collect 124 Embersilk Cloth##53010
		..collect 20 Volatile Fire##52325
		'|meta crap_items_follow=1
		..collect 59 Ruined Embersilk Scraps##68198
		..collect 26 Roasted Beef##58268
//Lost City of the Tol'vir (10m 35s) 5.67
	step
		goto Lost City of the Tol'vir,31.78,16.78
		'Run through the Lost City of Tol'vir dungeon, killing all mobs along the way.
		..collect 28 Heavenly Shard##52721
		..collect 17 Lesser Celestial Essence##52718
		..collect 11 Hypnotic Dust##52555
		..collect 108 Embersilk Cloth##53010
		'|meta crap_items_follow=1
		..collect 51 Rending Fang##60576
		..collect 28 Toughened Flesh##62778
		..collect 11 Wispy Tail Hair##60392
		..collect 40 Ruined Embersilk Scraps##68198
//The Vortex Pinnacle (10M 34S) 5.68
	step
		goto The Vortex Pinnacle,54.12,16.81
		'Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
		..collect 102 Hypnotic Dust##52555
		..collect 11 Lesser Celestial Essence##52718
		..collect 23 Small Heavenly Shard##52720
		..collect 62 Embersilk Cloth##53010
		..collect 57 Volatile Air##52328
//Grim Batol (13m 31s) 4.44
	step
		goto Grim Batol,12.15,55.67
		'Run through the Grim Batol dungeon, killing all mobs along the way.
		..collect 27 Heavenly Shard##52721
		..collect 80 Hypnotic Dust##52555
		..collect 9 Lesser Celestial Essence##52718
		..collect 275 Embersilk Cloth##53010
		'|meta crap_items_follow=1
		..collect 58 Ruined Embersilk Scraps##68198
		..collect 13 Wolk's Blunted Shiv##62066
		..collect 9 Singed Gloves##62113
		..collect 31 Scavenged Animal Parts##68197
		..collect 22 Roasted Beef##58268
//The Stonecore (13m 6s) 4.58
	step
		goto The Stonecore,54.27,93.90
		'Run through the Stonecore dungeon, killing all mobs along the way.
		..collect 32 Small Heavenly Shard##52720
		..collect 32 Hypnotic Dust##52555
		..collect 27 Lesser Celestial Essence##52718
		..collect 137 Embersilk Cloth##53010
		..collect 9 Volatile Fire##52325
		'|meta crap_items_follow=1
		..collect 32 Ruined Embersilk Scraps##68198
		..collect 18 Roasted Beef##58268
//Ragefire Chasm (3m00s)
	step
		goto Ragefire Chasm,62.41,7.88
		'Run through the Ragefire Chasm dungeon, killing all mobs along the way.
		..collect 100 Small Glimmering Shard##10978
		..collect 60 Strange Dust##10940
		..collect 80 Greater Magic Essence##10939
		..collect 960 Linen Cloth##2589
		'|meta crap_items_follow=1
		..collect 40 Haunch of Meat##2287
//Wailing Caverns (9m 11s) 6.53
	step
		goto Wailing Caverns,45.8,59.7
		'Run through the Wailing Caverns dungeon, killing all mobs along the way.
		..collect 170 Strange Dust##10940
		..collect 46 Small Glimmering Shard##10978
		..collect 39 Greater Magic Essence##10939
		..collect 20 Light Feather##17056
		..collect 78 Linen Cloth##2589
		..collect 59 Wool Cloth##2592
		..collect 13 Shadowgem##1210
		'|meta crap_items_follow=1
		..collect 98 Small Raptor Tooth##5124
		..collect 33 Flecked Raptor Scale##3180
		..collect 20 Deviate Scale##6470
		..collect 13 Decomposed Boot##3674
		..collect 20 Slimy Ichor##3676
		..collect 33 Partially Digested Meat##3181
		..collect 33 Rough Crocolisk Scale##3401
		..collect 26 Brittle Molting##6445
		..collect 91 Forked Tongue##6444
		..collect 39 Forest Mushroom Cap##4604
//The Blood Furnace (8m30s) 7.06
	step
		goto The Blood Furnace/1,47.75,90.56
		'Run through the Blood Furnace dungeon, killing all mobs along the way.
		..collect 28 Small Prismatic Shard##22448
		..collect 99 Arcane Dust##22445
		..collect 21 Lesser Planar Essence##22447
		..collect 586 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 35 Roasted Quail##8952
		..collect 21 Morning Glory Dew##8766
//Gundrak (8m43s) 6.88
	step
		goto Gundrak,58.99,30.92
		'Run through the Gundrak dungeon, killing all mobs along the way.
		..collect 41 Dream Shard##34052
		..collect 41 Infinite Dust##34054
		..collect 69 Frostweave Cloth##33470
		..collect 14 Crystallized Water##37705
		'|meta crap_items_follow=1
		..collect 21 Salted Venison##33454
		..collect 365 Rubicund Scale##39567
		..collect 83 Hollow Fang##39568
		..collect 55 Thick Fur Clothing Scraps##43852
//Razorfen Kraul (7m 10s) 8.37
	step
		goto Razorfen Kraul,69.89,82.97
		'Run through the Razorfen Kraul dungeon, killing all mobs along the way.
		..collect 59 Small Glowing Shard##11138
		..collect 42 Soul Dust##11083
		..collect 17 Vision Dust##11137
		..collect 8 Lesser Mystic Essence##11134
		..collect 8 Greater Magic Essence##10939
		..collect 17 Citrine##3864
		..collect 301 Silk Cloth##4306
		..collect 75 Wool Cloth##2592
		'|meta crap_items_follow=1
		..collect 25 Small Bat Skull##11393
		..collect 42 Severed Bat Claw##11392
		..collect 84 Goldenbark Apple##4539
		..collect 50 Sweet Nectar##1708
		..collect 25 Bat Heart##11394
//Razorfen Downs (8m 48s) 6.82
	step
		goto Razorfen Downs,23.79,18.80
		'Run through the Razorfen Downs dungeon, killing all mobs along the way.
		..collect 116 Vision Dust##11137
		..collect 27 Lesser Nether Essence##11174
		..collect 14 Greater Nether Essence##11175
		..collect 14 Greater Mystic Essence##11135
		..collect 34 Small Radiant Shard##11177
		..collect 14 Dream Dust##11176
		..collect 286 Silk Cloth##4306
		..collect 225 Mageweave Cloth##4338
		..collect 14 Shadow Silk##10285
		'|meta crap_items_follow=1
		..collect 27 Dripping Spider Mandible##4585
		..collect 136 Raw Black Truffle##4608
		..collect 27 Thick Spider Hair##3167
		..collect 41 Boar Ribs##2677
		..collect 34 Chipped Boar Tusk##771
		..collect 170 Moonberry Juice##1645
		..collect 136 Moon Harvest Pumpkin##4602
		..collect 116 Superior Healing Potion##3928
		..collect 75 Greater Mana Potion##6149
//Blackfathom Deeps (7m 38s) 7.86
	step
		goto Blackfathom Deeps,44.29,10.66
		'Run through the Blackfathom Depths dungeon, killing all mobs along the way.
		..collect 31 Lesser Astral Essence##10998
		..collect 55 Small Glimmering Shard##10978
		..collect 118 Strange Dust##10940
		..collect 8 Soul Dust##11083
		..collect 55 Crawler Meat##2674
		..collect 63 Murloc Fin##1468
		..collect 220 Wool Cloth##2592
		..collect 24 Silk Cloth##4306
		..collect 63 Linen Cloth##2589
		..collect 47 Crawler Claw##2675
		'|meta crap_items_follow=1
		..collect 299 Thick-Shelled Clam##5524
		..collect 16 Healing Potion##929
		..collect 173 Shiny Fish Scales##17057
		..collect 24 Speckled Shell Fragment##4556
		..collect 39 Seaweed##5569
		..collect 39 Raw Bristle Whisker Catfish##6308
		..collect 24 Slimy Murloc Scale##5784
//Zul'Farrak (10m 2s) 5.98
	step
		goto Zul'Farrak,56.60,90.95
		'Run through the Zul'Farrak dungeon, killing all mobs along the way.
		..collect 6 Greater Nether Essence##11175
		..collect 42 Large Prismatic Shard##22449
		..collect 24 Dream Dust##11176
		..collect 48 Basilisk Scale##11385
		..collect 54 Compound Eye##56202
		..collect 771 Mageweave Cloth##4338
		..collect 60 Silk Cloth##4306
		'|meta crap_items_follow=1
		..collect 36 Crusted Bandages##9332
		..collect 84 Flask of Mojo##8151
		..collect 18 Large Basilisk Tail##4093
		..collect 144 Superior Healing Potion##3928
		..collect 72 Greater Mana Potion##6149
		..collect 78 Cracked Pottery##9334
		..collect 443 Cured Ham Steak##4599
		..collect 251 Troll Sweat##1520
		..collect 167 Moonberry Juice##1645
		..collect 60 Broken Obsidian Club##9335




//NEEDS AREA




//NEEDS MULTIPLIED DOWN





//HAS ISSUES

//The Culling of Stratholme (11m 24s) (MISSING NORMAL DROPS)
		1 Greater Cosmic Essence##
		17 Infinite Dust##
		6 Dream Shard##
//Caverns of Time The Black Morass (10m 20s) (MISSING NORMAL DROPS)
		4 Large Prismatic Shard##
		2 Greater Planar Essence##
//Caverns of Time Old Hillsbrad Foothills (13m 50s) (MISSING NORMAL DROPS)
		3 Large Prismatic Shard##
		8 Arcane Dust##
//The Nexus (7m 49s) 7.68 (NO DISENCHANT LOOT?)
	step
	drop
		15 Vicious Fang##
		5 Hardened Claw##
		16 Frostweave Cloth##
		4 Thick Fur Clothing Scraps##
		5 Salted Venison##
		3 Elemental Husk##
		18 Primordial Infusion##
//Sunken Temple (MISSING TIME)
	step
		..collect 2 Dream Dust##
		..collect 7 Small Brilliant Shard##
		..collect 33 Roasted Quail##
		..collect 20 Runecloth##
		..collect 17 Morning Glory Dew##
		..collect 10 Major Healing Potion##
		..collect 7 Troll Sweat##
		..collect 2 Brilliant Scale##
		..collect 4 Forked Tongue##
//Hellfire Ramparts (MISSING TIME)
	step
		..collect 4 Small Prismatic Shard##
		..collect 7 Arcane Dust##
		..collect 7 Lesser Planar Essence##
		..collect 69 Runecloth##
		..collect 3 Roasted Quail##
		..collect 10 Fractured Canine##
		..collect 10 Hardened Claw##
		..collect 7 Netherweave Cloth##
		..collect 2 Morning Glory Dew##
//Trial of the Champion (MISSING TIME)
	step
		..collect 5 abyss crystal##
//Maraudon Purple (4m 38s) (MISSING NORMAL DROPS)
		2 Small Glowing Shard##
		3 Greater Mystic Essence##
		5 Soul Dust##
//Maraudon Falls (6m 37s) (MISSING NORMAL DROPS)
		4 Large Glowing Shard##
		1 Vision Dust##
//Maraudon Orange (3m 29s) (MISSING NORMAL DROPS)
		11 Soul Dust##
		2 Large Glowing Shard##
		2 Greater Mystic Essence##
//Diremaul Gardens (9m 32s) (MISSING NORMAL DROPS)
		7 Small Radiant Shard##
		4 Lesser Nether Essence##
		3 Vision Dust##
		1 Greater Mystical Essence
//Diremaul Warpwood (10m 40s) (MISSING NORMAL DROPS)
		4 Small Radiant shard##
		2 Vision Dust##
//Dire Maul Ogres (10m 35s) (MISSING NORMAL DROPS)
		2 Lesser Nether Essence##
		5 Vision Dust##
		4 Dream Dust##
		8 Large Prismatic Shards##
]])

ZygorGuidesViewer.HordeInstalled=true --!TRIAL
