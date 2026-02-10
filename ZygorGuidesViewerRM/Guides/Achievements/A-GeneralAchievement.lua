local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance General Achievements Guide\\To All The Squirrels I've Loved Before",[[
author danaton
description Contains all the steps to get the "To All The Squirrels I've Loved Before" achievement.
startlevel 79
		step
			goto Elwynn Forest,43.8,52.8
			.talk Cat##6368
			.info Use the in-game emote "/love".
			.' Love the Cat|achieve 1206/4
		step
			goto Elwynn Forest,43.8,52.8
			.talk Cow##2442
			.info Use the in-game emote "/love".
			.' Love the Cow|achieve 1206/6
			.' You can find more Cow (1)|at 45.6,55.1
			.' You can find more Cow (2)|at 37.2,56.1
		step
			goto Elwynn Forest,41.1,54.2
			.talk Rabbit##721
			.info Use the in-game emote "/love".
			.' Love the Rabbit|achieve 1206/15
			.' You can find more Rabbit|at 36.1,55.1
		step
			goto Elwynn Forest,40.5,56.6
			.talk Deer##883
			.info Use the in-game emote "/love".
			.' Love the Deer|achieve 1206/8
		step
			goto Elwynn Forest,37.2,54.9
			.talk Fawn##890
			.info Use the in-game emote "/love".
			.' Love the Fawn|achieve 1206/10
			.' You can find more Fawn|at 32.2,53.5
		step
			goto Elwynn Forest,40.5,56.8
			.talk Sheep##1933
			.info Use the in-game emote "/love".
			.' Love the Sheep|achieve 1206/17
			.' You can find more Sheep|at 37.4,56.4
			.' You can find more Sheep|at 34.6,54.8
		step
			goto Elwynn Forest,36.5,59.9
			.talk Chicken##620
			.info Use the in-game emote "/love".
			.' Love the Chicken|achieve 1206/5
			.' You can find more Chicken|at 40.5,64.3
		step
			goto Westfall,57,15
			.kill Mouse##6271|n
			.' Kill Mouse|achieve 2556/11
			.' You can find more Mouse (1)|at 60.2,43.3
			.' You can find more Mouse (2)|at 51.8,53.9
			.' You can find more Mouse (3)|at 32.5,71.8
		step
			goto Swamp of Sorrows,14.7,55.7
			.talk Huge Toad##6653
			.info Use the in-game emote "/love".
			.' Love the Huge Toad|achieve 2557/7
		step
			goto Swamp of Sorrows,14.9,59.4
			.talk Toad##1420
			.info Use the in-game emote "/love".
			.' Love the Toad|achieve 1206/20
			.' You can find more Toad (1)|at 22.6,48.8
			.' You can find more Toad (2)|at 46.8,45.1
		step
			goto Swamp of Sorrows,25.2,57.3
			.kill Moccasin##4953|n
			.' Kill Moccasin|achieve 2556/10
			.' You can find more Moccasin (1)|at 29,60.5
			.' You can find more Moccasin (2)|at 29.9,35.6
		step
			goto Burning Steppes,28.9,62.1
			.talk Lava Crab##9700
			.info Use the in-game emote "/love".
			.' Love the Lava Crab|achieve 2557/8
		step
			goto Burning Steppes,44.9,53.7
			.kill Fire Beetle##9699|n
			.' Kill Fire Beetle|achieve 2556/5
		step
			goto Loch Modan,28.6,57.8
			.talk Ram##2098
			.info Use the in-game emote "/love".
			.' Love the Ram|achieve 1206/16
			.' You can find more Ram|at 30.3,12.4
		step
			goto Ghostlands,38.8,44.2
			.kill Maggot##16030|n
			.' Kill Maggot|achieve 2556/9
		step
			goto Ghostlands,47.9,29.5
			.kill Larva##16068|n
			.' Kill Larva|achieve 2556/8
		step
			goto Ghostlands,55.3,53.6
			.kill Spider##14881|n
			.' Kill Spider|achieve 2556/16
			.' You can find more Spider (1)|at 52.8,44.1
			.' You can find more Spider (2)|at 45.3,31.3
			.' You can find more Spider (3)|at 27.3,31
		step
			goto Azuremyst Isle,49.2,21.6
			.talk Squirrel##1412
			.info Use the in-game emote "/love".
			.' Love the Squirrel|achieve 1206/1
			.' You can find more Squirrel (1)|at 39.7,12
			.' You can find more Squirrel (2)|at 46.4,8.1
		step
			goto Azuremyst Isle,49.2,21.6
			.kill Squirrel##1412|n
			.' Kill Squirrel|achieve 2556/2
			.' You can find more Squirrel (1)|at 39.7,12
			.' You can find more Squirrel (2)|at 46.4,8.1
		step
			goto Azuremyst Isle,40.7,15.4
			.talk Skunk##17467
			.info Use the in-game emote "/love".
			.' Love the Skunk|achieve 1206/18
			.' You can find more Skunk (1)|at 46.2,8.8
			.' You can find more Skunk (2)|at 56,26.7
		step
			goto Bloodmyst Isle,70,87.6
			.talk Crab##6827
			.info Use the in-game emote "/love".
			.' Love the Crab|achieve 1206/7
		step
			goto The Barrens,39.1,13.8
			.talk Prairie Dog##2620
			.info Use the in-game emote "/love".
			.' Love the Prairie Dog|achieve 1206/21
			.' You can find more Prairie Dog|at 42,15.4
		step
			goto The Barrens,44.7,31.7
			.talk Gazelle##4166
			.info Use the in-game emote "/love".
			.' Love the Gazelle|achieve 1206/12
			.' You can find more Gazelle|at 50.9,32.1
		step
			goto Durotar,42.7,15.4
			.talk Swine##10685
			.info Use the in-game emote "/love".
			.' Love the Swine|achieve 1206/19
			.' You can find more Swine (1)|at 48.8,15.8
			.' You can find more Swine (2)|at 43.7,30.2
		step
			goto Durotar,42.7,17.8
			.talk Hare##5951
			.info Use the in-game emote "/love".
			.' Love the Hare|achieve 1206/13
			.' You can find more Hare ()|at 39,16.5
			.' You can find more Hare ()|at 46.5,19
		step
			goto Durotar,52.9,12.3
			.kill Adder##3300|n
			.' Kill Adder|achieve 2556/1
			.' You can find more Adder|at 54.2,15.3
		step
			goto Desolace,53.6,9.2
			.kill Roach##4076|n
			.' Kill Roach|achieve 2556/13
			.' You can find more Roach|at 64.1,23.3
		step
			goto Un'Goro Crater,60.1,44.4
			.talk Parrot##9600
			.info Use the in-game emote "/love".
			.' Love the Parrot|achieve 1206/14
			.' You can find more Parrot (1)|at 58.7,54.2
			.' You can find more Parrot (2)|at 53.3,63.9
		step
			goto Hellfire Peninsula,61.7,33.7
			.kill Scorpion##15476|n
			.' Kill Scorpion|achieve 2556/14
			.' You can find more Scorpion|at 50.3,44.6
		step
			goto Zangarmarsh,82.5,81.4
			.talk Frog##13321
			.info Use the in-game emote "/love".
			.' Love the Frog|achieve 1206/11
		step
			goto Zangarmarsh,83.2,86.8
			.kill Snake##2914|n
			.' Kill Snake|achieve 2556/15
		step
			goto Shattrath City,58.7,22.8
			.talk Ewe##19665
			.info Use the in-game emote "/love".
			.' Love the Ewe|achieve 1206/9
		step
			goto Borean Tundra,62.9,68.8
			.talk Tundra Penguin##28440
			.info Use the in-game emote "/love".
			.' Love the Tundra Penguin|achieve 2557/12
		step
			goto Borean Tundra,68.8,41
			.talk Steam Frog##25679
			.info Use the in-game emote "/love".
			.' Love the Steam Frog|achieve 1206/2
		step
			goto Borean Tundra,82.4,43.7
			.talk Arctic Hare##29328
			.info Use the in-game emote "/love".
			.' Love the Arctic Hare|achieve 2557/1
		step
			goto Borean Tundra,78.3,32.5
			.talk Borean Marmot##31685
			.info Use the in-game emote "/love".
			.' Love the Borean Marmot|achieve 2557/2
		step
			goto Borean Tundra,71.8,29.6
			.talk Borean Frog##25677
			.info Use the in-game emote "/love".
			.' Love the Borean Frog|achieve 1206/3
		step
			goto Sholazar Basin,27.1,60.5
			.talk Sholazar Tickbird##28093
			.info Use the in-game emote "/love".
			.' Love the Sholazar Tickbird|achieve 2557/11
		step
			goto Icecrown,65.2,12.4
			.talk Glacier Penguin##32498
			.info Use the in-game emote "/love".
			.' Love the Glacier Penguin|achieve 2557/5
		step
			goto Dalaran,55.4,63.3
			.kill Underbelly Rat##32428|n
			.' Kill Underbelly Rat|achieve 2556/17
		step
			goto Zul'Drak,45.1,61.4
			.kill Zul'Drak Rat##28202|n
			.' Kill Zul'Drak Rat|achieve 2556/18
		step
			goto Grizzly Hills,14.8,48.4
			.talk Mountain Skunk##31890
			.info Use the in-game emote "/love".
			.' Love the Mountain Skunk|achieve 2557/9
			.' You can find more Mountain Skunk|at 28.4,43
		step
			goto Grizzly Hills,16.1,51.9
			.talk Grizzly Squirrel##31889
			.info Use the in-game emote "/love".
			.' Love the Grizzly Squirrel|achieve 2557/6
			.' You can find more Grizzly Squirrel|at 32.1,48.5
		step
			goto Howling Fjord,44.7,32.5
			.kill Fjord Rat##24174|n
			.' Kill Fjord Rat|achieve 2556/6
		step
			goto Howling Fjord,44.7,32.5
			.kill Rat##4075|n
			.' Kill Rat|achieve 2556/12
		step
			goto Howling Fjord,57.1,55
			.kill Devouring Maggot##24270|n
			.' Kill Devouring Maggot|achieve 2556/4
		step
			goto Howling Fjord,35.8,80.6
			.talk Scalawag Frog##26503
			.info Use the in-game emote "/love".
			.' Love the Scalawag Frog|achieve 2557/10
		step
			goto Howling Fjord,66,83.3
			.talk Fjord Penguin##28407
			.info Use the in-game emote "/love".
			.' Love the Fjord Penguin|achieve 2557/3
		step
			goto Howling Fjord,68,70.4
			.talk Fjord Turkey##24746
			.info Use the in-game emote "/love".
			.' Love the Fjord Turkey|achieve 2557/4
		step
			.kill Crystal Spider##32261|n
			.' Kill Crystal Spider|achieve 2556/3
			.info Inside the Dungeon: Nexus
		step
			.kill Gold Beetle##32258|n
			.' Kill Gold Beetle|achieve 2556/7
			.info Inside the Dungeon: Halls of Lightning
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance General Achievements Guide\\Well Read",[[
author danaton
description Contains all the steps to get the "Well Read" achievement.
startlevel 79
		step
			goto Stormwind City,76.04,32.02
			.' Read a book: Aftermath of the Second War|achieve 1244/2
			.' Read a book: The Guardians of Tirisfal|achieve 1244/27
			.' Read a book: The Alliance of Lordaeron|achieve 1244/21
		step
			goto Stormwind City,75.7,32
			.' Read a book: The New Horde|achieve 1244/32
			.info On the ledge near the column.
		step
			goto Stormwind City,76.3,29
			.' Read a book: Beyond the Dark Portal|achieve 1244/5
		step
			goto Stormwind City,75.3,29.8
			.' Read a book: The Kaldorei and the Well of Eternity|achieve 1244/29
		step
			goto Stormwind City,83.2,33.2
			.' Read a book: War of the Spider|achieve 1244/40
		step
			goto Stormwind City,83,36.3
			.' Read a book: The Dark Portal and the Fall of Stormwind|achieve 1244/25
		step
			goto Elwynn Forest,43.8,65.7
			.' Read a book: Icecrown and the Frozen Throne|achieve 1244/10
			.info On the second floor of the tavern.
		step
			goto Westfall,56.5,30.2
			.' Read a book: Aegwynn and the Dragon Hunt|achieve 1244/1
			.info On the second floor of the house, to the left of the bed.
		step
			goto Westfall,56.9,47.5
			.' Read a book: The Scourge of Lordaeron|achieve 1244/34
		step
			goto Westfall,52.6,53
			.' Read a book: The Last Guardian|achieve 1244/30
		step
			goto Stranglethorn Vale,27.1,77.7
			.' Read a book: Sunwell - The Fall of Quel'Thalas|achieve 1244/20
			.info On the second floor of the tavern.
		step
			goto Stranglethorn Vale,27.9,77.2
			.' Read a book: The Sentinels and the Long Vigil|achieve 1244/35
			.info Inside the house next to the bed.
		step
			goto Stranglethorn Vale,27.79,77.32
			.' Read a book: The Twin Empires|achieve 1244/37
			.' Read a book: Empires' Fall|achieve 1244/8
			.' Read a book: Wrath of Soulflayer|achieve 1244/42
			.info On the very bottom floor.
		step
			goto Duskwood,72.1,46.4
			.' Read a book: The Birth of the Lich King|achieve 1244/24
		step
			goto Duskwood,73.6,45.1
			.' Read a book: The Founding of Quel'Thalas|achieve 1244/26
			.info On the second floor of the tavern.
		step
			goto Duskwood,74.1,45.4
			.' Read a book: Kil'jaeden and the Shadow Pact|achieve 1244/13
			.info On the second floor of the tavern.
		step
			goto Elwynn Forest,85.3,69.8
			.' Read a book: Lethargy of the Orcs|achieve 1244/14
			.info On the second floor of the house.
		step
			goto Ironforge,74.86,8.95
			.' Read a book: War of the Three Hammers|achieve 1244/41
			.' Read a book: Ironforge - the Awakening of the Dwarves|achieve 1244/11
		step
			goto Ironforge,77.1,9.1
			.' Read a book: Arathor and the Troll Wars|achieve 1244/3
		step
			goto Ironforge,76.92,12.54
			.' Read a book: The Alliance of Lordaeron|achieve 1244/21
			.' Read a book: Rise of the Horde|achieve 1244/18
			.' Read a book: Civil War in the Plaguelands|achieve 1244/7
		step
			goto Ironforge,75.92,10.7
			.' Read a book: The Battle of Grim Batol|achieve 1244/22
			.' Read a book: Charge of the Dragonflights|achieve 1244/6
			.' Read a book: The Old Gods and the Ordering of Azeroth|achieve 1244/33
		step
			goto Hillsbrad Foothills,51.6,58.6
			.' Read a book: Kel'Thuzad and the Forming of the Scourge|achieve 1244/12
			.info In the bedroom, on the second floor.
		step
			goto Darnassus,34.1,26
			.' Read a book: Exile of the High Elves|achieve 1244/9
			.info In the cave, on the table just behind the rogue trainer.
		step
			goto Darnassus,49.1,16.7
			.' Read a book: Rise of the Blood Elves|achieve 1244/17
			.info On the first floor.
		step
			goto Darnassus,49.1,16.1
			.' Read a book: The War of the Ancients|achieve 1244/38
			.info On the second floor!
		step
			goto Darnassus,56.2,4
			.' Read a book: The World Tree and the Emerald Dream|achieve 1244/39
		step
			goto Darnassus,66.5,76.6
			.' Read a book: The Betrayer Ascendant|achieve 1244/23
		step
			goto Ashenvale,34.5,49.5
			.' Read a book: Sargeras and the Betrayal|achieve 1244/19
		step
			goto Tanaris,51,29.4
			.' Read a book: Old Hatreds - The Colonization of Kalimdor|achieve 1244/16
		step
			.info The following books can only be found in dungeons.
			.' Read a book: The Invasion of Draenor|achieve 1244/28
			.info Only Scholomance.
			.' Read a book: The Lich King Triumphant|achieve 1244/31
			.info In Scholomance and Stratholme.
			.' Read a book: The Seven Kingdoms|achieve 1244/36
			.info In Scholomance and Stratholme.
]])

ZygorGuidesViewer.AllianceInstalled=true