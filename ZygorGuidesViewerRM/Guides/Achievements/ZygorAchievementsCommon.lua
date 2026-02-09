local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------------------------------------------------------------------------------------------------------------------------
-- Quest Includes
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("FrenzyheartPreQuests",[[
	step
		goto Sholazar Basin 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains |q 12654/1
	step
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
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
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
	step
		goto 59.6,75.8
		.kill 6 Sapphire Hive Wasp |q 12533/1
		.kill 9 Sapphire Hive Drone |q 12533/2
	step
		goto 59.4,79.1|n
		.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
	step
		'Follow the path down to 57.1,79.3 |goto 57.1,79.3
		.from Sapphire Hive Queen##28087
		.get Stinger of the Sapphire Queen |q 12534/1
	step
		'Go outside to 55.0,69.1|goto 55.0,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12532/1
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
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
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge |q 12536/1
	step
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
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
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.' Kill the crocodile that spawns
		.' Locate the Injured Rainspeaker Oracle |q 12540/1
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
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
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
	step
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
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
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step
		goto 75.3,54.1
		.' Travel to Mosswalker Village |q 12578/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims |q 12580/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard |q 12579/1
	step
		goto 54.5,56.6
		'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624 
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
		..accept A Hero's Burden##12581
	step
		goto 70.8,58.7
		.' Enter the cave here
		.' Follow the path inside the cave up to 72.2,57.3
		.kill Artruis the Heartless |q 12581/1 |tip Kill Jaloot, who will spawn during the fight. Killing Jaloot will make you allied with the Frenzyheart Tribe.
		.' Click Artruis's Phylactery that spawns after the fight
		..turnin A Hero's Burden##12581
	step
		..talk Zepik the Gorloc Hunter##28668
		...accept Frenzyheart Champion##12582
		...accept Return of the Lich Hunter##12692
]])

ZygorGuidesViewer:RegisterInclude("FrenzyheartDailies",[[
	step
		goto Sholazar Basin 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Return of the Lich Hunter##12692 |only if not ZGV.completedQuests[12692]
		..accept Chicken Party!##12702
		.' Tell him you need to find Goregek
		.collect Goregek's Shackles##38619 |q 12702
	step
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Hero's Headgear##12758 |or
		..accept Rejek: First Blood##12734 |or
		..accept Strength of the Tempest##12741 |or
		..accept The Heartblood's Strength##12732 |or
	step
		goto 55.5,68.7
		.talk Vekgar##29146
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Kartak's Rampage##12703 |or
		..accept Secret Strength of the Frenzyheart##12760 |or
		..accept Tools of War##12759 |or
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
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..' Ask him for some booze
		.collect Thunderbrew's Hard Ale##39738 |n
		.' Click the Wolvar Berries in your bags |use Wolvar Berries##39739
		.get Secret Strength of the Frenzyheart |q 12760/2
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
		.talk Shaman Jakjek##28106
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Kartak's Rampage##12703
		..turnin Secret Strength of the Frenzyheart##12760
		..turnin Tools of War##12759
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Chicken Party!##12702
	step
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Hero's Headgear##12758
		..turnin Rejek: First Blood##12734
		..turnin Strength of the Tempest##12741
		..turnin The Heartblood's Strength##12732
]])

ZygorGuidesViewer:RegisterInclude("OraclePreQuests",[[
	step
		goto Sholazar Basin,50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains |q 12654/1
	step
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
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
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
	step
		goto 59.6,75.8
		.kill 6 Sapphire Hive Wasp |q 12533/1
		.kill 9 Sapphire Hive Drone |q 12533/2
	step
		goto 59.4,79.1|n
		.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
	step
		'Follow the path down to 57.1,79.3 |goto 57.1,79.3
		.from Sapphire Hive Queen##28087
		.get Stinger of the Sapphire Queen |q 12534/1
	step
		'Go outside to 55.0,69.1|goto 55.0,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12532/1
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
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
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge |q 12536/1
	step
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
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
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.' Kill the crocodile that spawns
		.' Locate the Injured Rainspeaker Oracle |q 12540/1
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
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
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
	step
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
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
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step
		goto 75.3,54.1
		.' Travel to Mosswalker Village |q 12578/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims |q 12580/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard |q 12579/1
	step
		goto 54.5,56.6
		'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624 
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
		..accept A Hero's Burden##12581
	step
		goto 70.8,58.7
		.' Enter the cave here
		.' Follow the path inside the cave up to 72.2,57.3
		.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter who spawns during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.
		.' Click Artruis's Phylactery that spawns after the fight
		..turnin A Hero's Burden##12581
	step
		..talk Jaloot##28667
		...accept Hand of the Oracles##12689
		...accept Return of the Friendly Dryskin##12695
]])

ZygorGuidesViewer:RegisterInclude("OracleDailies",[[
	step
		goto Sholazar Basin 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
		..accept Appeasing the Great Rain Stone##12704
		.' Tell him you need to find Lafoo
		.collect Lafoo's Bug Bag##38622 |q 12704
	step
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Cleansing Song##12735 |or
		..accept Song of Fecundity##12737 |or
		..accept Song of Reflection##12736 |or
		..accept Song of Wind and Water##12726 |or
	step
		goto 54.2,53.8
		.talk Oracle Soo-dow##29149
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Mastery of the Crystals##12761 |or
		..accept Power of the Great Ones##12762 |or
		..accept Will of the Titans##12705 |or
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
		.talk Lightningcaller Soo-met##28107
		..turnin Mastery of the Crystals##12761
		..turnin Power of the Great Ones##12762
		..turnin Will of the Titans##12705
	step
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Cleansing Song##12735
		..turnin Song of Fecundity##12737
		..turnin Song of Reflection##12736
		..turnin Song of Wind and Water##12726
	step
		goto 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Appeasing the Great Rain Stone##12704
]])

ZygorGuidesViewer:RegisterInclude("CleansingDrakTharon",[[
	step
		goto Grizzly Hills,16.2,47.6
		.talk Samir##26424
		..accept Filling the Cages##11984
	step
		goto 16.4,48.3
		.talk Budd##26429
		..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|c
	step
		goto 13.2,60.5
		.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
		.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
		.' Capture a Live Ice Troll |q 11984/1
	step
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Filling the Cages##11984
	step
		goto 16.4,47.8
		.talk Drakuru##26423
		..accept Truce?##11989
	step
		goto 16.5,47.8
		.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
		.collect Dull Carving Knife##38083|q 11989
	step
		goto 16.4,47.8
		.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
		.talk Drakuru##26423
		..'Shake his hand
		.' Make a Blood Pact With Drakuru |q 11989/1
	step
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Truce?##11989
		..accept Vial of Visions##11990
	step
		goto 16,47.8
		.talk Ameenah##26474
		.buy 1 Crystal Vial |q 11990/1
	step
		goto 14.6,45.3
		.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
		.get 3 Haze Leaf|q 11990/2
	step
		goto 15.2,40.3
		.' Click a Waterweed|tip They look like big green bushes underwater around this area.
		.get Waterweed Frond|q 11990/3
	step
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Vial of Visions##11990
		..accept Subject to Interpretation##11991
	step
		goto 13.3,58.5
		.kill trolls|n
		.collect 5 Frozen Mojo##35799|q 11991
	step
		goto 13.2,60.9
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26500
		..turnin Subject to Interpretation##11991
		..accept Sacrifices Must be Made##12007
	step
		goto 14.5,38
		.from Warlord Zim'bo##26544
		.collect Zim'bo's Mojo##35836|q 12007
	step
		'Go up the huge stairs to 17.9,36.5|goto 17.9,36.5
		.' Click the Seer of Zeb'Halak statue|tip It's a huge blue glowing statue at the top of the stairs.
		.get Eye of the Prophets|q 12007/1
	step
		goto 17.4,36.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26543
		..turnin Sacrifices Must be Made##12007
		..accept Heart of the Ancients##12042
	step
		goto 36.9,32.4
		.' Go on top of the control station to 36.9,32.4
		.' Click the Heart of the Ancients|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
		..turnin Heart of the Ancients##12042
		..accept My Heart is in Your Hands##12802
	step
		goto 44.2,30.4
		.kill Drakkari Defenders|n
		.collect 5 Desperate Mojo##36743|q 12802
	step
		goto 45.0,28.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26701
		..turnin My Heart is in Your Hands##12802
		..accept Voices From the Dust##12068
	step
		goto 70.5,27.4
		.from Drakkari Protector##26797+, Drakkari Oracle##26795+
		.collect 5 Sacred Mojo##36758|q 12068
	step
		'Inside the crypt, go to 69.4,18.2|goto 69.4,18.2
		.' Click the Drakkari Tablets|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
		.get Drakkari Tablets|q 12068/1
	step
		goto 71.7,26.2
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26787
		..turnin Voices From the Dust##12068
		..accept Cleansing Drak'Tharon##12238
	step
		goto Grizzly Hills,17.4,21.2 |n
		.' Go through the swirling portal into the instance|goto Drak'Tharon Keep
	step
		.from Drakkari Shaman##26639+, Drakarri Guardian##26620+, Drakarri Commander##27431+ |q 12238
		.collect 5 Enduring Mojo##38303
	step
		.kill The Prophet Tharon'ja##26632|tip He's at the end of the instance |n
		.' Go behind the boss to Drakuru's Brazier.
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797|tip It's a square bowl at the top of the stairs.
		.talk Drakuru##28016
		.turnin Cleansing Drak'Tharon##12238
]])

ZygorGuidesViewer:RegisterInclude("BetrayalDrakuru",[[
	step
		goto Zul'Drak,15.5,69.8
		.from Withered Trolls
		.collect Writhing Choker##38673|n
		.use Writhing Choker##38673
		..accept Darkness Calling##12633
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Darkness Calling##12633
		..accept Close Call##12638
	step
		goto 14.3,74
		.talk Bloodrose Datura##28532
		.' Tell her Stefan said she would demonstrate the item's purpose
		.' Expose the Choker's Purpose |q 12638/1
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Close Call##12638
		..accept Silver Lining##12643
	step
		goto 19.9,73.5
		.kill Putrid Abominations|n
		.get 5 Putrid Abomination Guts|q 12643/1 |or
		.' Click the Gooey Ghoul Drool on the ground|tip They look like jelly blobs on the ground around this area.
		.get 5 Gooey Ghoul Drool|q 12643/2
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Silver Lining##12643
		..accept Suit Up!##12649
	step
		goto 19.9,75.5
		.' Use the Ensorcelled Choker to wear a ghoul costume|use Ensorcelled Choker##38699
		.talk Gristlegut##28589
		..buy 1 Bitter Plasma|q 12649/1
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		 .' You will only be able to turn in 1 of these quests
		..turnin Suit Up!##12649
		..accept Infiltrating Voltarus##12661
	step
		goto 28.4,44.9
		.' Use your Ensorcelled Choker to become a ghoul|use Ensorcelled Choker##38699
		.' Stand on this green circle
		.'Get teleported up to Overlord Drakuru|goto Zul'Drak,28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Reunited##12663
	step
		goto 29.9,47.8
		.talk Gorebag##28666
		.' Go on the tour of Zul'Drak
		.' Complete the tour of Zul'Drak |q 12663/1
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Reunited##112663
		.' Complete Overlord Drakuru's task |q 12661/1|c
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.1,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Infiltrating Voltarus##12661
		..accept So Far, So Bad##12669
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept It Rolls Downhill##12673
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 27.2,45.1
		.' Use your Scepter of Suggestion on Blight Geists|use Scepter of Suggestion##39157
		.' Use the Harvest Blight Crystal ability near Crystallized Blight|petaction Harvest Blight Crystal|tip The Crystallized Blight look like orange crystals on the ground around this area.
		.' Follow the Blight Geists back to the teleport pad
		.' Collect 7 Blight Crystals |q 12673/1
	step
		goto 26.8,47
		.' Use your Diluting Additive next to the big cauldron 5 times|use Diluting Additive##39154|tip It's a big cauldron on the back of this cart vehicle thing. Several Blightguards may pop out for you to fight.  Wait about a minute and use your Diluting Additive next to the cauldron again.  Keep repeating this process.
		.' Dilute the Cauldron 5 times |q 12669/2
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin It Rolls Downhill##12673
		.' Complete Drakuru's task |q 12669/1
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin So Far, So Bad##12669
		..accept Hazardous Materials##12677
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Zero Tolerance##12686
	step
		goto 27.1,43.9
		.' Click the Harvested Blight Crystal crates|tip They look like big wooden crates around this area in the halls and rooms.
		.get 5 Harvested Blight Crystal|q 12677/2
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 29.7,49.6
		.' Use your Scepter of Empowerment on a Servant of Drakaru|use Scepter of Empowerment##39206
		.' Take control of a Servant of Drakaru
		.' Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk at [30.4,51.5]|n
		.' Kill Darmuk |q 12686/1|tip He's a huge undead mob walking around on this platform.
	step
		ding 76
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Zero Tolerance##12686
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Hazardous Materials##12677
		..accept Sabotage##12676
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Fuel for the Fire##12690
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 32.1,40.6
		.' Use your Scepter of Command on a Bloated Abomination|use Scepter of Command##39238
		.' Take control of the Bloated Abomination
		.' Go up the hill
		.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
		.' Use the Burst at the Seams ability on your pet hotbar|petaction Burst at the Seams
		.' Kill 60 Drakkari Skullcrushers |q 12690/1
		.' Lure 3 Drakkari Chieftains |q 12690/2
	step
		goto 30.6,45.3
		.' Use your Explosive Charges next to Scourgewagons|use Explosive Charges##39165|tip They look like small catapult carts.
		.' Destroy 5 Scourgewagons |q 12676/1
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Fuel for the Fire##12690
		..accept Disclosure##12710
		.' Complete Drakuru's task |q 12676/2
	step
		goto 28.4,44.9
		.' Stand on this blue circle on the small platform above the green circle
		.' Teleport up to Drakuru's upper chamber|goto 27.4,42.5,0.5|noway|c
	step
		goto 27.2,42.3
		.' Click the Musty Coffin|tip It's a brown coffin.
		.' Explore Drakuru's upper chamber |q 12710/1
	step
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Disclosure##12710
		.' Learn Drakuru's secret |q 12676/3
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Sabotage##12676
		..accept Betrayal##12713
	step
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		.' Tell him you're ready to accompany him. |goto 28.3,45.3 |noway |c
	step
		.' Use your Scepter of Domination on Blightblood Trolls |use Scepter of Domination##39664
		.' Use the following abilities when they are off cooldown:
		.' Powerful Strike |use spell##54135
		.' Concussion Blow |use spell##54132
		.' Blightblood Infusion |use spell##54136
		.' Use the Scepter on another Blightblood Troll if yours dies.
		.collect 1 Drakuru's Skull##40425 |q 12713/1
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Kalimdor",[[
	description This guide section will walk you through completing all the Explorer achievements in Kalimdor.
	description # dragon
	author support@zygorguides.com
	condition end achieved(43) and achieved(4868)
	achieveid 46,4868,4863,4865,728,736,842,860,750,857,4996,844,861,845,846,847,848,850,849,851,852,853,854,855,856
	step
		' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Click here to explore Azshara |confirm |next "azshara" |achieve 852
		' Click here to explore Durotar |confirm |next "durotar" |achieve 728
		' Click here to explore Northern Barrens |confirm |next "n_barrens" |achieve 750
		' Click here to explore Southern Barrens |confirm |next "s_barrens" |achieve 4996
		' Click here to explore Dustwallow Marsh |confirm |next "dustwallow" |achieve 850
		' Click here to explore Thousand Needles |confirm |next "thousand" |achieve 846
		' Click here to explore Tanaris |confirm |next "tanaris" |achieve 851
		' Click here to explore Un'Goro Crater |confirm |next "ungoro" |achieve 854
		' Click here to explore Uldum |confirm |next "uldum" |achieve 4865
		' Click here to explore Silithus |confirm |next "silithus" |achieve 856
		' Click here to explore Feralas |confirm |next "feralas" |achieve 849
		' Click here to explore Desolace |confirm |next "desolace" |achieve 848
		' Click here to explore Mulgore |confirm |next "mulgore" |achieve 736
		' Click here to explore Stonetalon Mountains |confirm |next "stonetalon" |achieve 847
		' Click here to explore Ashenvale |confirm |next "ashenvale" |achieve 845
		' Click here to explore Mount Hyjal |confirm |next "hyjal" |achieve 4863
		' Click here to explore Winterspring |confirm |next "winter" |achieve 857
		' Click here to explore Moonglade |confirm |next "moon" |achieve 855
		' Click here to explore Felwood |confirm |next "felwood" |achieve 853
		' Click here to explore Darkshore |confirm |next "darkshore" |achieve 844
		' Click here to explore Teldrassil |confirm |next "teldrassil" |achieve 842
		' Click here to explore Azuremyst |confirm |next "azure" Isle |achieve 860
		' Click here to explore Bloodmyst |confirm |next "blood" Isle |achieve 861
		.' OR
		' Click here to complete Zygor's suggested path through all of the above zones. |confirm |next
	step
	label "durotar"
		'Skipping next part of guide |next "+n_barrens" |only if step:Find("+durotar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Orgrimmar,45.4,8.5
		.' Discover Orgrimmar |achieve 728/12
	step
		goto Durotar,54.0,9.0
		.' Discover Skull Rock |achieve 728/11
	step
		goto 52.4,24.2
		.' Discover Drygulch Ravine |achieve 728/10
	step
		goto 53.5,43.4 
		.' Discover Razor Hill |achieve 728/7
	step
		goto 58.1,60.2 
		.' Discover Tiragarde Keep |achieve 728/6
	step
		goto 66.6,82.9 
		.' Discover Echo Isles |achieve 728/5
	step
		goto 56.1,75.8 
		.' Discover Sen'jin Village |achieve 728/4
	step
		goto 48.5,79.1 
		.' Discover Northwatch Foothold |achieve 728/2
	step
		goto 44.5,62.2 
		.' Discover Valley of Trials |achieve 728/1
	step
		goto 44.6,50.6 
		.' Discover Razormane Grounds |achieve 728/8
	step
		goto 40.5,40.0 
		.' Discover Southfury Watershed |achieve 728/3
	step
		goto 40.3,24.7 
		.' Discover Thunder Ridge |achieve 728/9
	step
	label	"durotar1"
		'Explore Durotar |achieve 728
	step
	label	"n_barrens"
		'Skipping next part of guide |next "+s_barrens" |only if step:Find("+n_barrens1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Northern Barrens,67.2,12.1 
		.' Discover Boulder Lode Mine |achieve 750/1
	step
		goto 55.7,18.5 
		.' Discover The Sludge Fen |achieve 750/4
	step
		goto 39.6,14.1 
		.' Discover The Mor'shan Rampart |achieve 750/3
	step
		goto 25.5,31.7 
		.' Discover The Dry Hills |achieve 750/6
	step
		goto 36.8,45.9 
		.' Discover The Forgotten Pools |achieve 750/7
	step
		goto 43.1,35.4 
		.' Discover Dreadmist Peak |achieve 750/5
	step
		goto 54.9,41.1 
		.' Discover Grol'dom Farm |achieve 750/8
	step
		goto 67.0,41.3 
		.' Discover Far Watch Post |achieve 750/9
	step
		goto 58.8,50.0 
		.' Discover Thorn Hill |achieve 750/10
	step
		goto 50.2,57.3 
		.' Discover The Crossroads |achieve 750/11
	step
		goto 40.3,73.9 
		.' Discover Lushwater Oasis |achieve 750/2
	step
		goto 55.7,78.6 
		.' Discover The Stagnant Oasis |achieve 750/12
	step
		goto 70.3,84.1 
		.' Discover The Merchant Coast |achieve 750/14
	step
	label	"n_barrens1"
		'Explore Northern Barrens |achieve 750
	step
	label	"s_barrens"
		'Skipping next part of guide |next "+dustwallow" |only if step:Find("+s_barrens1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Southern Barrens,68.8,49.1 
		.' Discover Northwatch Hold |achieve 4996/7
	step
		goto 52.2,48.6 
		.' Discover Forward Command |achieve 4996/3
	step
		goto 47.8,33.68
		.' Discover The Overgrowth |achieve 4996/10
	step
		goto 39.3,22.3
		.' Discover Hunter's Hill |achieve 4996/6
	step
		goto 36.5,11.1 
		.' Discover Honor's Stand |achieve 4996/5
	step
		goto 42.4,44.0
		.' Discover Vendetta Point |achieve 4996/11
	step
		goto 44.9,54.3
		.' Discover Ruins of Taurajo |achieve 4996/9
	step
		goto 41.0,78.2
		.' Discover Frazzlecraz Motherlode |achieve 4996/4
	step
		goto 50.7,84.0
		.' Discover Bael Modan |achieve 4996/1
	step
	label	"s_barrens1"
		'Explore Southern Barrens |achieve 4996
	step
	label	"dustwallow"
		'Skipping next part of guide |next "+thousand" |only if step:Find("+dustwallow1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dustwallow Marsh,29.7,49.0 
		.' Discover Shady Rest Inn |achieve 850/5
	step
		goto 36.3,30.4 
		.' Discover Brackenwall Village |achieve 850/7
	step
		goto 41.4,12.4 
		.' Discover Blackhoof Village |achieve 850/2
	step
		goto 76.0,17.5 
		.' Discover Alcaz Island |achieve 850/9
	step
		goto 61.5,30.2 
		.' Discover Dreadmurk Shore |achieve 850/6
	step
		goto 67.1,49.8 
		.' Discover Theramore Isle |achieve 850/1
	step
		goto 46.6,46.1 
		.' Discover Direhorn Post |achieve 850/3
	step
		goto 41.4,75.1 
		.' Discover Mudsprocket |achieve 850/4
	step
		goto 43.4,75.5 
		.' Discover Wyrmbog |achieve 850/8
	step
	label	"dustwallow1"
		' Explore Dustwallow Marsh |achieve 850
	step
	label	"thousand"
		'Skipping next part of guide |next "+tanaris" |only if step:Find("+thousand1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Thousand Needles,88.4,47.8 
		.' Discover Splithoof Heights |achieve 846/10
	step
		goto 51.7,30.0 
		.' Discover Razorfen Downs |achieve 846/2
	step
		goto 33.6,38.6 
		.' Discover Darkcloud Pinnacle |achieve 846/8
	step
		goto 32.1,18.3 
		.' Discover The Great Lift |achieve 846/1
	step
		goto 13.4,10.3 
		.' Discover Westreach Summit |achieve 846/7
	step
		goto 13.1,37.5 
		.' Discover Highperch |achieve 846/12
	step
		goto 31.1,58.8 
		.' Discover Twilight Bulwark |achieve 846/6
	step
		goto 47.0,50.7 
		.' Discover Freewind Post |achieve 846/9
	step
		goto 54.9,63.2 
		.' Discover The Twilight Withering |achieve 846/5
	step
		goto 67.1,85.7 
		.' Discover Sunken Dig Site |achieve 846/3
	step
		goto 92.4,78.8 
		.' Discover Southsea Holdfast |achieve 846/4
	step
	label	"thousand1"
		' Explore Thousand Needles |achieve 846
	step
	label	"tanaris"
		'Skipping next part of guide |next "+ungoro" |only if step:Find("+tanaris1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Tanaris,37.3,14.3 
		.' Discover Zul'Farrak |achieve 851/15
	step
		goto 40.9,27.3 
		.' Discover Sandsorrow Watch |achieve 851/2
	step
		goto 52.3,45.4 
		.' Discover Broken Pillar |achieve 851/6
	step
		goto 55.1,40.9 
		.' Discover Abyssal Sands |achieve 851/5
	step
		goto 64.2,50.0 
		.' Discover Caverns of Time |achieve 851/16
	step
		goto 71.6,49.4 
		.' Discover Lost Rigger Cove |achieve 851/4
	step
		goto 63.0,59.2 
		.' Discover Southbreak Shore |achieve 851/9
	step
		goto 53.7,67.6 
		.' Discover The Gaping Chasm |achieve 851/10
	step
		goto 53.6,91.7 
		.' Discover Land's End Beach |achieve 851/12
	step
		goto 37.8,77.7 
		.' Discover Valley of the Watchers |achieve 851/3
	step
		goto 40.8,70.6
		.' Discover  Southmoon Ruins |achieve 851/13
	step
		goto 47.2,64.9
		.' Discover Eastmoon Ruins |achieve 851/11
	step
		goto 30.4,66.4
		.' Discover Thistleshrub Valley |achieve 851/14
	step
		goto 41.0,55.5
		.' Discover Dunemaul Compound |achieve 851/8
	step
		goto 34.3,45.3
		.' Discover The Noxious Lair |achieve 851/7
	step
	label	"tanaris1"
		' Explore Tanaris |achieve 851
	step
	label	"ungoro"
		'Skipping next part of guide |next "+uldum" |only if step:Find("+ungoro1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Un'Goro Crater,77.1,39.2 
		.' Discover Ironstone Plateau |achieve 854/11
	step
		goto 39.2,34.3
		.' Discover The Roiling Gardens |achieve 854/5
	step
		goto 65.7,14.3
		.' Discover Fungal Rock |achieve 854/2
	step
		goto 51.4,25.6
		.' Discover Lakkari Tar Pits |achieve 854/12
	step
		goto 42.2,41.7
		.' Discover Mossy Pile |achieve 854/4
	step
		goto 29.0,35.8
		.' Discover The Screaming Reaches |achieve 854/6
	step
		goto 34.4,54.0
		.' Discover Golakka Hot Springs |achieve 854/7
	step
		goto 33.2,70.7
		.' Discover Terror Run |achieve 854/8
	step
		goto 54.5,48.0
		.' Discover Fire Plume Ridge |achieve 854/1
	step
		goto 54.0,60.9
		.' Discover Marshal's Stand |achieve 854/3
	step
		goto 67.9,54.8
		.' Discover The Marshlands |achieve 854/10
	step
		goto 51.1,77.5
		.' Discover The Slithering Scar |achieve 854/9
	step
	label	"ungoro1"
		' Explore Un'Goro Crater |achieve 854
	step
	label	"uldum"
		'Skipping next part of guide |next "+silithus" |only if step:Find("+uldum1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Uldum,64.5,16.1
		.' Discover Khartut's Tomb |achieve 4865/3
	step
		goto 69.0,21.8
		.' Discover The Gate of Unending Cycles |achieve 4865/19
	step
		goto 64.6,31.8 
		.' Discover Obelisk of the Stars |achieve 4865/9
	step
		goto 67.1,40.9 
		.' Discover Nahorn |achieve 4865/6
	step
		goto 84.7,52.8
		.' Discover The Cursed Landing |achieve 4865/18
	step
		goto 80.3,60.0
		.' Discover The Trail of Devastation |achieve 4865/21
	step
		goto 63.9,73.3
		.' Discover Lost City of the Tol'vir |achieve 4865/4
	step
		goto 51.2,82.0
		.' Discover Neferset City |achieve 4865/7
	step
		goto 43.7,70.4
		.' Discover Cradle of the Ancients |achieve 4865/2
	step
		goto 45.6,56.2
		.' Discover Obelisk of the Sun |achieve 4865/10
	step
		goto 54.3,52.2
		.' Discover Akhenet Fields |achieve 4865/1
	step
		goto 58.3,40.9
		.' Discover Vir'naal Dam |achieve 4865/22
	step
		goto 60.5,39.2
		.' Discover Tahret Grounds |achieve 4865/16
	step
		goto 54.8,32.4
		.' Discover Ramkahen |achieve 4865/12
	step
		goto 49.0,38.4
		.' Discover Mar'at |achieve 4865/5
	step
		goto 46.1,15.5
		.' Discover Ruins of Ahmtul |achieve 4865/13
	step
		goto 40.8,22.9
		.' Discover Obelisk of the Moon |achieve 4865/8
	step
		goto 33.7,30.9
		.' Discover Temple of Uldum |achieve 4865/17
	step
		goto 40.5,39.9
		.' Discover Orsis |achieve 4865/11
	step
		goto 32.1,65.5
		.' Discover Ruins of Ammon |achieve 4865/14
	step
		goto 20.8,61.8
		.' Discover Schnottz's Landing |achieve 4865/15
	step
	label	"uldum1"
		' Explore Uldum |achieve 4865
	step
	label	"silithus"
		'Skipping next part of guide |next "+feralas" |only if step:Find("+silithus1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Silithus,60.0,71.7
		.' Discover Hive'Regal |achieve 856/5
	step
		goto 32.0,78.9
		.' Discover The Scarab Wall |achieve 856/6
	step
		goto 31.4,53.8
		.' Discover Hive'Zora |achieve 856/4
	step
		goto 30.9,16.0
		.' Discover The Crystal Vale |achieve 856/1
	step
		goto 49.4,22.4
		.' Discover Hive'Ashi |achieve 856/7
	step
		goto 54.4,34.2
		.' Discover Cenarion Hold |achieve 856/3
	step
		goto 65.3,47.4
		.' Discover Southwind Village |achieve 856/2
	step
		goto 81.3,17.8
		.' Discover Valor's Rest |achieve 856/8
	step
	label	"silithus1"
		' Explore Silithus |achieve 856
	step
	label	"feralas"
		'Skipping next part of guide |next "+desolace" |only if step:Find("+feralas1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto  Feralas,75.9,62.4
		.' Discover The Writhing Deep |achieve 849/8
	step
		goto 83.0,40.9
		.' Discover Lower Wilds |achieve 849/1
	step
		goto 76.5,44.4
		.' Discover Camp Mojache |achieve 849/9
	step
		goto 75.6,29.8
		.' Discover Gordunni Outpost |achieve 849/11
	step
		goto 68.7,40.3
		.' Discover Grimtotem Compound |achieve 849/10
	step
		goto 60.4,35.6
		.' Discover Dire Maul |achieve 849/5
	step
		goto 67.7,58.5
		.' Discover Darkmist Ruins |achieve 849/12
	step
		goto 58.6,73.0
		.' Discover Ruins of Isildien |achieve 849/7
	step
		goto 55.4,56.2
		.' Discover Feral Scar Vale |achieve 849/6
	step
		goto 49.7,49.2
		.' Discover The Forgotten Coast |achieve 849/4
	step
		goto 45.8,49.6
		.' Discover Feathermoon Stronghold |achieve 849/13
	step
		goto 28.5,49.1
		.' Discover Ruins of Feathermoon |achieve 849/2
	step
		goto 46.3,17.9
		.' Discover The Twin Colossals |achieve 849/3
	step
	label	"feralas1"
		' Explore Ferals |achieve 849
	step
	label	"desolace"
		'Skipping next part of guide |next "+mulgore" |only if step:Find("+desolace1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Desolace,36.1,88.6
		.' Discover Gelkis Village |achieve 848/12
	step
		goto 51.3,78.5
		.' Discover Mannoroc Coven |achieve 848/13
	step
		goto 36.5,69.9
		.' Discover Thargad's Camp |achieve 848/2
	step
		goto 24.2,70.9
		.' Discover Shadowprey Village |achieve 848/11
	step
		goto 35.34,57.2
		.' Discover Valley of Spears |achieve 848/9
	step
		goto 29.9,29.4
		.' Discover Slitherblade Shore |achieve 848/16
	step
		goto 28.7,9.01
		.' Discover Ranazjar Isle |achieve 848/8
	step
		goto 51.5,10.0
		.' Discover Tethris Aran |achieve 848/1
	step
		goto 54.5,25.2
		.' Discover Thunder Axe Fortress |achieve 848/5
	step
		goto 66.7,8.7
		.' Discover Nijel's Point |achieve 848/3
	step
		goto 78.2,21.6
		.' Discover Sargeron |achieve 848/4
	step
		goto 74.7,45.6
		.' Discover Magram Territory |achieve 848/7
	step
		goto 56.1,47.3
		.' Discover Cenarion Wildlands |achieve 848/6
	step
		goto 50.7,59.0
		.' Discover Kodo Graveyard |achieve 848/10
	step
		goto 70.6,74.8 
		.' Discover Shok'Thokar |achieve 848/14
	step
		goto 80.3,79.3
		.' Discover Shadowbreak Ravine |achieve 848/15
	step
	label	"desolace1"
		' Explore Desolace |achieve 848
	step
	label	"mulgore"
		'Skipping next part of guide |next "+stonetalon" |only if step:Find("+mulgore1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Mulgore,32.3,50.6
		.' Discover Bael'dun Digsite |achieve 736/10
	step
		goto 35.5,61.3
		.' Discover Palemane Rock |achieve 736/2
	step
		goto 53.8,85.8
		.' Discover Red Cloud Mesa |achieve 736/1
	step
		goto 53.7,66.7
		.' Discover Winterhoof Water Well |achieve 736/4
	step
		goto 47.8,58.4
		.' Discover Bloodhoof Village |achieve 736/3
	step
		goto 61.1,60.5
		.' Discover The Rolling Plains |achieve 736/5
	step
		goto 62.7,42.6
		.' Discover The Venture Co. Mine |achieve 736/6
	step
		goto 54.2,47.9
		.' Discover Ravaged Caravan |achieve 736/7
	step
		goto 44.9,43.5
		.' Discover Thunderhorn Water Well |achieve 736/9
	step
		goto 59.82,19.9
		.' Discover Red Rocks |achieve 736/11
	step
		goto 54.2,20.9
		.' Discover The Golden Plains |achieve 736/8
	step
		goto 43.1,14.2
		.' Discover Wildmane Water Well |achieve 736/13
	step
	label	"mulgore1"
		' Explore Mulgore |achieve 736
	step
	label "stonetalon"
		'Skipping next part of guide |next "+ashenvale" |only if step:Find("+stonetalon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Stonetalon Mountains,72.6,92.4
		.' Discover Malaka'jin |achieve 847/9
	step
		goto 76.7,75.8
		.' Discover Unearthed Grounds |achieve 847/5
	step
		goto 69.6,85.1
		.' Discover Greatwood Vale |achieve 847/12
	step
		goto 63.4,88.7
		.' Discover Boulderslide Ravine |achieve 847/11
	step
		goto 59.6,78.9
		.' Discover Webwinder Path |achieve 847/10
	step
		goto 57.2,72.7
		.' Discover Webwinder Hollow |achieve 847/6
	step
		goto 48.8,76.3
		.' Discover Ruins of Eldre'thar |achieve 847/3
	step
		goto 49.3,63.4
		.' Discover Sun Rock Retreat |achieve 847/12
	step
		goto 31.6,71.5
		.' Discover The Charred Vale |achieve 847/15
	step
		goto 37.0,54.3
		.' Discover Battlescar Valley |achieve 847/1
	step
		goto 35.8,31.5
		.' Discover Thal'darah Overlook |achieve 847/4
	step
		goto 40.9,19.9
		.' Discover Stonetalon Peak |achieve 847/17
	step
		goto 45.1,30.2
		.' Discover Cliffwalker Post |achieve 847/8
	step
		goto 51.6,47.3
		.' Discover Mirkfallon Lake |achieve 847/16
	step
		goto 59.1,57.7
		.' Discover Windshear Hold |achieve 847/7
	step
		goto 66.9,66.2
		.' Discover Krom'gar Fortress |achieve 847/2
	step
		goto 66.9,49.3
		.' Discover Windshear Crag |achieve 847/13
	step
	label	"stonetalon1"
		' Explore Stonetalon Mountains |achieve 847
	step
	label	"ashenvale"
		'Skipping next part of guide |next "+hyjal" |only if step:Find("+ashenvale1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Ashenvale,32.6,65.6
		.' Discover The Ruins of Stardust |achieve 845/10
	step
		goto 35.9,50.2
		.' Discover Astranaar |achieve 845/9
	step
		goto 21.4,55.3
		.' Discover The Shrine of Aessina |achieve 845/8
	step
		goto 20.2,41.1
		.' Discover Lake Falathim |achieve 845/5
	step
		goto 27.5,37.7
		.' Discover Maestra's Post |achieve 845/6
	step
		goto 26.0,19.7
		.' Discover Orendil's Retreat |achieve 845/2
	step
		goto 37.0,32.9
		.' Discover Thistlefur Village |achieve 845/7
	step
		goto 48.9,46.4
		.' Discover Thunder Peak |achieve 845/4
	step
		goto 53.2,32.6
		.' Discover The Howling Vale |achieve 845/11
	step
		goto 59.7,50.0
		.' Discover Raynewood Retreat |achieve 845/12
	step
		goto 68.2,47.9
		.' Discover Splintertree Post |achieve 845/14
	step
		goto 80.4,49.7
		.' Discover Satyrnaar |achieve 845/15
	step
		goto 83.1,65.3
		.' Discover Felfire Hill |achieve 845/18
	step
		goto 87.4,58.6
		.' Discover Warsong Lumber Camp |achieve 845/17
	step
		goto 93.4,39.2
		.' Discover Bough Shadow |achieve 845/16
	step
	label	"ashenvale1"
		' Explore Ashenvale |achieve 845 
	step
	label "hyjal"
		'Skipping next part of guide |next "+winter" |only if step:Find("+hyjal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Mount Hyjal,72.5,76.7
		.' Discover Gates of Sothann |achieve 4863/5
	step
		goto 76.0,64.9
		.' Discover Darkwhisper Gorge |achieve 4863/4
	step
		goto 53.4,55.1
		.' Discover The Scorched Plain |achieve 4863/10
	step
		goto 45.3,80.5
		.' Discover The Throne of Flame |achieve 4863/11
	step
		goto 31.4,84.9
		.' Discover Sethria's Roost |achieve 4863/7
	step
		goto 25.5,64.5
		.' Discover Rim of the World |achieve 4863/1
	step
		goto 31.8,53.5
		.' Discover Ashen Lake |achieve 4863/3
	step
		goto 32.9,51.2
		.' Discover The Flamewake |achieve 4863/9
	step
		goto 28.5,27.5
		.' Discover Shrine of Goldrinn |achieve 4863/8
	step
		goto 45.1,26.0
		.' Discover The Circle of Cinders |achieve 4863/2
	step
		goto 63.4,21.0
		.' Discover Nordrassil |achieve 4863/6
	step
	label	"hyjal1"
		' Explore Mount Hyjal |achieve 4863
	step
	label	"winter"
		'Skipping next part of guide |next "+azshara" |only if step:Find("+winter1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Winterspring,59.8,85.5
		.' Discover Frostwhisper Gorge |achieve 857/12
	step
		goto 64.5,77.2
		.' Discover Owl Wing Thicket |achieve 857/9
	step
		goto 67.8,64.4
		.' Discover Ice Thistle Hills |achieve 857/8
	step
		goto 68.1,48.5
		.' Discover Winterfall Village |achieve 857/9
	step
		goto 59.9,48.9
		.' Discover Everlook |achieve 857/6
	step
		goto 62.7,24.7
		.' Discover The Hidden Grove |achieve 857/10
	step
		goto 45.3,15.4
		.' Discover Frostsaber Rock |achieve 857/11
	step
		goto 47.7,39.1
		.' Discover Starfall Village |achieve 857/4
	step
		goto 51.1,55.1
		.' Discover Lake Kel'Theril |achieve 857/3
	step
		goto 54.8,62.9
		.' Discover Mazthoril |achieve 857/5
	step
		goto 36.4,56.7
		.' Discover Timbermaw Post |achieve 857/2
	step
		goto 31.9,49.3
		.' Discover Frostfire Hot Springs |achieve 857/1
	step
	label	"winter1"
		' Explore Winterspring |achieve 857
	step
	label	"azshara"
		'Skipping next part of guide |next "+moon" |only if step:Find("+azshara1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Azshara,52.25,26.95 
		.' Discover Darnassian Base Camp |achieve 852/7
	step
		goto 73.69,20.98
		.' Discover Bitter Reaches |achieve 852/4
	step
		goto 80.90,32.34
		.' Discover Tower of Eldara |achieve 852/5
	step
		goto 69.89,34.83
		.' Discover Ruins of Arkkoran |achieve 852/6
	step
		goto 58.29,51.00
		.' Discover Bilgewater Harbor |achieve 852/3
	step
		goto 68.41,75.62
		.' Discover Southridge Beach |achieve 852/13
	step
		goto 64.65,79.31
		.' Discover Ravencrest Monument |achieve 852/14
	step
		goto 56.99,76.50
		.' Discover Storm Cliffs |achieve 852/17
	step
		goto 46.54,76.25
		.' Discover The Secret Lab |achieve 852/8
	step
		goto 39.83,84.67
		.' Discover The Ruined Reaches |achieve 852/16
	step
		goto 35.72,73.99
		.' Discover Lake Mennar |achieve 852/15
	step
		goto 26.75,77.96
		.' Discover Orgrimmar Rear Gate |achieve 852/11
	step
		goto 21.04,57.1
		.' Discover Gallywix Pleasure Palace |achieve 852/1
	step
		goto 39.21,55.46
		.' Discover The Shattered Strand |achieve 852/2
	step
		goto 31.95,50.02
		.' Discover Ruins of Eldarath |achieve 852/12
	step
		goto 25.47,38.00
		.' Discover Bear's Head |achieve 852/9
	step
		goto 33.06,32.76
		.' Discover Blackmaw Hold |achieve 852/10
	step
	label	"azshara1"
		' Explore Azshara |achieve 852
	step
	label	"moon"
		'Skipping next part of guide |next "+felwood" |only if step:Find("+moon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Moonglade,67.8,53.8
		.' Discover Stormrage Barrow Dens |achieve 855/4
	step
		goto 52.5,55.4
		.' Discover Lake Elune'ara |achieve 855/1
	step
		goto 48.2,37.9
		.' Discover Nighthaven |achieve 855/2
	step
		goto 36.3,38.8
		.' Discover Shrine of Remulos |achieve 855/3
	step
	label	"moon1"
		' Explore Moonglade |achieve 855
	step
	label	"felwood"
		'Skipping next part of guide |next "+darkshore" |only if step:Find("+felwood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Felwood,61.2,11.5
		.' Discover Felpaw Village |achieve 853/1
	step
		goto 62.6,26.7
		.' Discover Talonbranch Glade |achieve 853/2
	step
		goto 50.3,26.0
		.' Discover Irontree Woods |achieve 853/3
	step
		goto 43.6,18.6
		.' Discover Jadefire Run |achieve 853/4
	step
		goto 43.1,41.9
		.' Discover Shatter Scar Vale |achieve 853/5
	step
		goto 52.2,78.2
		.' Discover Emerald Sanctuary |achieve 853/10
	step
		goto 56.6,86.8
		.' Discover Morlos'Aran |achieve 853/12
	step
		goto 48.0,89.2
		.' Discover Deadwood Village |achieve 853/11
	step
		goto 41.8,85.4
		.' Discover Jadefire Glen |achieve 853/9
	step
		goto 38.0,72.3
		.' Discover Ruins of Constellas |achieve 853/8
	step
		goto 37.0,59.1
		.' Discover Jaedenar |achieve 853/7
	step
	label	"felwood1"
		' Explore Felwood |achieve 853
	step
	label	"darkshore"
		'Skipping next part of guide |next "+teldrassil" |only if step:Find("+darkshore1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Darkshore,40.3,86.2
		.' Discover The Master's Glaive |achieve 844/11
	step
		goto 32.0,84.0
		.' Discover Nazj'vel |achieve 844/10
	step
		goto 42.5,69.5
		.' Discover Wildbend River |achieve 844/4
	step
		goto 43.7,60.5
		.' Discover Ameth'Aran |achieve 844/8
	step
		goto 43.96,39.82 
		.' Discover Withering Thicket |achieve 844/5
	step
		goto 42.9,54.9
		.' Discover The Eye of the Vortex |achieve 844/7
	step
		goto 37.9,44.1
		.' Discover Ruins of Auberdine |achieve 844/1
	step
		goto 51.2,19.2
		.' Discover Lor'danel |achieve 844/9
	step
		goto 63.9,21.9
		.' Discover Ruins of Mathystra |achieve 844/6
	step
		goto 72.5,17.3 
		.' Discover Shatterspear Vale |achieve 844/2
	step
		goto 65.9,7.0
		.' Discover Shatterspear War Camp |achieve 844/3
	step
	label	"darkshore1"
		' Explore Darkshore |achieve 844
	step
	label	"teldrassil"
		'Skipping next part of guide |next "+azure" |only if step:Find("+teldrassil1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Teldrassil,55.0,61.0
		.' Discover Lake Al'Ameth |achieve 842/6
	step
		goto 55.6,51.2
		.' Discover Dolanaar |achieve 842/3
	step
		goto 64.7,49.1
		.' Discover Starbreeze Village |achieve 842/8
	step
		goto 55.0,91.0
		.' Rut'theran Village |achieve 842/12
	step
		goto 58.4,33.0
		.' Discover Shadowglen |achieve 842/1
	step
		goto 50.7,38.0
		.' Discover The Cleft |achieve 842/2
	step
		goto 46.16,50.68 
		.' Ban'ethil Hollow |achieve 842/4
	step
		goto 44.4,34.4
		.' Discover Wellspring Lake |achieve 842/10
	step
		goto 40.0,26.7
		.' Discover The Oracle Glade |achieve 842/9
	step
		goto 30.4,50.1
		.' Discover Darnassus |achieve 842/11
	step
		goto 41.9,56.9
		.' Discover Pools of Arlithrien |achieve 842/7
	step
		goto 44.8,67.4
		.' Discover Gnarlpine Hold |achieve 842/5
	step
	label	"teldrassil1"
		' Explore Teldrassil |achieve 842
	step
	label	"azure"
		'Skipping next part of guide |next "+blood" |only if step:Find("+azure1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Azuremyst Isle,23.7,54.0
		.' Discover Valaar's Berth |achieve 860/16
	step
		goto 26.5,65.1
		.' Discover Bristlelimb Village |achieve 860/4
	step
		goto 12.7,78.6
		.' Discover Silvermyst Isle |achieve 860/13
	step
		goto 32.0,79.3
		.' Discover Wrathscale Point |achieve 860/17
	step
		goto 37.0,58.4
		.' Discover Pod Cluster |achieve 860/10
	step
		goto 49.3,50.7
		.' Discover Azure Watch |achieve 860/3
	step
		goto 46.6,72.4
		.' Discover Odesyus' Landing |achieve 860/9
	step
		goto 52.7,61.3
		.' Discover Pod Wreckage |achieve 860/11
	step
		goto 58.3,67.0
		.' Discover Geezle's Camp |achieve 860/7
	step
		goto 61.3,53.6
		.' Discover Ammen Ford |achieve 860/2
	step
		goto 77.6,43.7
		.' Discover Ammen Vale |achieve 860/1
	step
		goto 52.7,41.8
		.' Discover Moongraze Woods |achieve 860/8
	step
		goto 29.2,35.1
		.' Discover The Exodar |achieve 860/15
	step
		goto 35.3,12.4
		.' Discover Silting Shore |achieve 860/12
	step
		goto 46.0,20.0
		.' Discover Stillpine Hold |achieve 860/14
	step
		goto 58.8,17.6
		.' Discover Emberglade |achieve 860/5
	step
		goto 47.7,6.6
		.' Discover Fairbridge Strand |achieve 860/6
	step
	label	"azure1"
		' Explore Azuremyst Isle |achieve 860
	step
	label	"blood"
		'Skipping next part of guide |next "+end" |only if step:Find("+blood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Bloodmyst Isle,61.9,90.0 |kessel's crossing
	step
		goto 57.4,81.0
		.' Discover The Lost Fold |achieve 861/22
	step
		goto 67.0,78.2
		.' Discover Bristlelimb Enclave |achieve 861/7
	step
		goto 69.0,66.6
		.' Discover Wrathscale Lair |achieve 861/27
	step
		goto 85.4,52.8
		.' Discover Bloodcurse Isle |achieve 861/5
	step
		goto 72.0,29.6
		.' Discover Wyrmscar Island |achieve 861/28
	step
		goto 73.4,20.9
		.' Discover Talon Stand |achieve 861/14
	step
		goto 81.0,20.1
		.' Discover The Bloodcursed Reef |achieve 861/16
	step
		goto 74.4,7.5
		.' Discover Veridian Point |achieve 861/25
	step
		goto 62.6,25.4
		.' Discover The Crimson Reach |achieve 861/16
	step
		goto 54.2,17.1
		.' Discover The Warp Piston |achieve 861/24
	step
		goto 56.1,34.9
		.' Discover Ragefeather Ridge |achieve 861/12
	step
		goto 61.6,45.2
		.' Discover Ruins of Loreth'Aran |achieve 861/13
	step
		goto 54.6,55.4
		.' Discover Blood Watch |achieve 861/6
	step
		goto 51.7,76.6
		.' Discover Middenvale |achieve 861/9
	step
		goto 43.9,84.7
		.' Discover Mystwood |achieve 861/10
	step
		goto 33.2,90.3
		.' Discover Blacksilt Shore |achieve 861/3
	step
		goto 37.9,75.7
		.' Discover Nazzivian |achieve 861/11
	step
		goto 38.5,59.5
		.' Discover The Cryo-Core |achieve 861/19
	step
		goto 45.9,45.1
		.' Discover Bladewood |achieve 861/4
	step
		goto 40.8,33.0
		.' Discover Axxarien |achieve 861/2
	step
		goto 38.7,21.9
		.' Discover The Bloodwash |achieve 861/17
	step
		goto 32.7,19.8
		.' Discover The Hidden Reef |achieve 861/21
	step
		goto 29.2,36.8
		.' Discover The Foul Pool |achieve 861/20
	step
		goto 30.2,46.2
		.' Discover Vindicator's Rest |achieve 861/26
	step
		goto 24.4,41.2
		.' Discover Tel'athion's Camp |achieve 861/15
	step
		goto 18.8,30.9
		.' Discover Amberweb Pass |achieve 861/1
	step
		goto 18.0,53.4
		.' Discover The Vector Coil |achieve 861/23
	step
	label	"blood1"
		' Explore Bloodmyst Isle |achieve 861
	step
	label "end"
		' Congratulations! You have Explored Kalimdor |achieve 43 |only if achieved(43)
		' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not fully explored Kalimdor |only if not achieved(43)
		|confirm |next "start" |only if not achieved(43)
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Eastern Kingdoms",[[
	description This guide section will walk you through completing all the Explorer achievements in Eastern Kingdoms.
	author support@zygorguides.com
	condition end achieved(42) and achieved(4868)
	achieveid 4825,4864,4866,775,761,765,766,775,627,778,772,779,780,768,859,774,769,858,781,4995,782,773,802,841,777,770,771,868,776
	step
		' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Click to explore Elwynn Forest |confirm |next "elwynn" |achieve 776
		' Click to explore Badlands |confirm |next "badlands" |achieve 765
		' Click to explore Burning Steppes |confirm |next "burning" |achieve 775
		' Click to explore Duskwood |confirm |next "duskwood" |achieve 778
		' Click to explore Loch Modan |confirm |next "loch" |achieve 779
		' Click to explore Tirisfal Glades |confirm |next "tirisfal" |achieve 768
		' Click to explore Searing Gorge |confirm |next "searing" |achieve 774
		' Click to explore Ghostlands |confirm |next "ghost" |achieve 858
		' Click to explore The Cape of Stranglethorn |confirm |next "strangle" |achieve 4995
		' Click to explore The Hinterlands |confirm |next "hinterlands" |achieve 773
		' Click to explore Wetlands |confirm |next "wetlands" |achieve 841
		' Click to explore Western Plaguelands |confirm |next "w_plague" |achieve 770
		' Click to explore Isle of Quel'Danas |confirm |next "isle_q" |achieve 868
		' Click to explore Arathi Highlands |confirm |next "arathi" |achieve 761
		' Click to explore Blasted Lands |confirm |next "blasted" |achieve 766
		' Click to explore Dun Morogh |confirm |next "dun" |achieve 627
		' Click to explore Hillsbrad Foothills |confirm |next "hillsbrad" |achieve 772
		' Click to explore Redridge Mountains |confirm |next "redridge" |achieve 780
		' Click to explore Eversong Woods |confirm |next "eversong" |achieve 859
		' Click to explore Silverpine Forest |confirm |next "silver" |achieve 769
		' Click to explore Northern Stranglethorn |confirm |next "n_strangle" |achieve 781
		' Click to explore Swamp of Sorrows |confirm |next "swamp" |achieve 782
		' Click to explore Westfall |confirm |next "westfall" |achieve 802
		' Click to explore Deadwind Pass |confirm |next "deadwind" |achieve 777
		' Click to explore Eastern Plaguelands |confirm |next "e_plague" |achieve 771
		' Click to explore Vashj'ir |confirm |next "vashj'ir" |achieve 4825
		' Click to explore Deepholm |confirm |next "deepholm" |achieve 4864
		' Click to explore Twilight Highlands |confirm |next "twilight" |achieve 4866
		.' OR
		' Click here to complete Zygor's suggested path through all of the above zones. |confirm |next
	step
	label "deepholm"
		'Skipping next part of guide |next "+vashj'ir" |only if step:Find("+deepholm1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Deepholm,55.8,75.4
		.' Discover Storm's Fury Wreckage |achieve 4864/5
	step
		goto 68.3,77.8
		.' Discover Twilight Overlook |achieve 4864/10
	step
		goto 62.9,58.5
		.' Discover Deathwing's Fall |achieve 4864/1
	step
		goto 74.2,40.7
		.' Discover Crimson Expanse |achieve 4864/12
	step
		goto 56.6,10.9
		.' Discover Therazane's Throne |achieve 4864/8
	step
		goto 39.8,18.6
		.' Discover The Pale Roost |achieve 4864/7
	step
		goto 26.8,32.6
		.' Discover Needlerock Chasm |achieve 4864/2
	step
		goto 21.7,47.7
		.' Discover Needlerock Slag |achieve  4864/3
	step
		goto 26.3,69.5
		.' Discover Stonehearth |achieve 4864/4
	step
		goto 35.2,80.3
		.' Discover The Quaking Fields |achieve 4864/9
	step
		goto 39.2,69.1
		.' Discover Masters' Gate |achieve 4864/11
	step
	label	"deepholm1"
		' Explore Deepholm |achieve 4864
	step
	label	"vashj'ir"
		'Skipping next part of guide |next "+strangle" |only if step:Find("+vashj'ir1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Abyssal Depths,54.1,63.9
		.' Discover Korthun's End |achieve 4825/5
	step
		goto 42.2,70.0
		.' Discover Underlight Canyon |achieve 4825/3
	step
		goto 22.1,80.2
		.' Discover Abandoned Reef |achieve 4825/1
	step
		goto 32.3,54.1
		.' Discover L'ghorek |achieve 4825/6
	step
		goto 39.4,19.3
		.' Discover Deepfin Ridge |achieve 4825/4
	step
		goto 54.9,43.5
		.' Discover Seabrush |achieve 4825/7
	step
		goto 71.5,29.8
		.' Discover Abyssal Breach |achieve 4825/2
	step
		goto Shimmering Expanse,50.9,21.5
		.' Discover Shimmering Grotto |achieve 4825/20
	step
		goto 47.9,37.8
		.' Discover Silver Tide Hollow |achieve 4825/21
	step
		goto 43.6,48.4
		.' Discover Glimmerdeep Gorge |achieve 4825/9
	step
		goto 33.7,72.4
		.' Discover Ruins of Vashj'ir |achieve 4825/19
	step
		goto 55.4,83.0
		.' Discover Beth'mora Ridge |achieve 4825/16
	step
		goto 59.2,56.5
		.' Discover Nespirah |achieve 4825/17
	step
		goto 66.4,41.7
		.' Discover Ruins of Thelserai Temple |achieve 4825/18
	step
		goto Kelp'thar Forest,58.8,81.4
		.' Discover The Clutch |achieve 4825/12
	step
		goto 61.5,58.9
		.' Discover Gnaws' Boneyard |achieve 4825/10
	step
		goto 53.2,56.2
		.' Discover Gurboggle's Ledge |achieve 4825/11
	step
		goto 39.7,29.7
		.' Discover Legion's Fate |achieve 4825/14
	step
		goto 50.3,24.1 
		.' Discover Seafarer's Tomb |achieve 4825/13
	step
		goto Kelp'thar Forest,64.8,49.3
		.' Discover The Skeletal Reef |achieve 4825/15
	step
	label	"vashj'ir1"
		' Explore Vashj'ir |achieve 4825
	step
	label	"strangle"
		'Skipping next part of guide |next "+n_strangle" |only if step:Find("+strangle1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Cape of Stranglethorn,39.7,71.0
		.' Discover Booty Bay |achieve 4995/1
	step
		goto 43.5,81.4
		.' Discover The Wild Shore |achieve 4995/10
	step
		goto 60.8,81.6
		.' Discover Jaquero Isle |achieve 4995/5
	step
		goto 50.5,58.1
		.' Discover Mistvale Valley |achieve 4995/6
	step
		goto 43.0,49.1
		.' Discover Nek'mani Wellspring |achieve 4995/7
	step
		goto 34.1,32.4
		.' Discover Hardwrench Hideaway |achieve 4995/4
	step
		goto 46.3,22.5
		.' Discover Gurubashi Arena |achieve 4995/3
	step
		goto 54.4,30.3
		.' Discover Ruins of Jubuwal |achieve 4995/9
	step
		goto 62.2,43.7
		.' Discover Ruins of Aboraz |achieve 4995/8
	step
		goto 62.4,28.1
		.' Discover Crystalvein Mine |achieve 4995/2
	step
	label	"strangle1"
		' Explore The Cape of Stranglethorn |achieve 4995
	step
	label	"n_strangle"
		'Skipping next part of guide |next "+westfall" |only if step:Find("+n_strangle1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Northern Stranglethorn,53.2,66.0
		.' Discover Fort Livingston |achieve 781/4
	step
		goto 59.0,55.2
		.' Discover Balia'mah Ruins |achieve 781/2
	step
		goto 66.9,50.9
		.' Discover Mosh'Ogg Ogre Mound |achieve 781/11
	step
		goto 64.7,39.7
		.' Discover Bambala |achieve 781/3
	step
		goto 83.9,32.5
		.' Discover Zul'Gurub |achieve 781/16
	step
		goto 60.2,19.9
		.' Discover Kurzen's Compound |achieve 781/8
	step
		goto 46.7,9.5
		.' Discover Rebel Camp |achieve 781/7
	step
		goto 44.1,19.8
		.' Discover Nesingwary's Expedition |achieve 781/6
	step
		goto 42.2,38.4
		.' Discover Kal'ai Ruins |achieve 781/9
	step
		goto 46.1,52.9
		.' Discover Mizjah Ruins |achieve 781/10
	step
		goto 37.8,48.4
		.' Discover Grom'gol Base Camp |achieve 781/1
	step
		goto 33.0,42.5
		.' Discover The Vile Reef |achieve 781/14
	step
		goto 34.3,36.2
		.' Discover Bal'lal Ruins |achieve 781/13
	step
		goto 19.2,25.6
		.' Discover Zuuldaia Ruins |achieve 781/5
	step
		goto 26.4,20.2
		.' Discover Ruins of Zul'Kunda |achieve 781/15
	step
	label	"n_strangle1"
		' Explore Northern Stranglethorn |achieve 781
	step
	label	"westfall"
		'Skipping next part of guide |next "+duskwood" |only if step:Find("+westfall1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto 44.9,82.0
		.' Discover The Dagger Hills |achieve 802/12
	step
		goto 30.0,86.8
		.' Discover Westfall Lighthouse |achieve 802/11
	step
		goto 33.9,73.6
		.' Discover Demont's Place |achieve 802/10
	step
		goto 42.4,65.5
		.' Discover Moonbrook |achieve 802/8
	step
		goto 38.2,52.3
		.' Discover Alexston Farmstead |achieve 802/9
	step
		goto 39.2,43.2
		.' Discover The Raging Chasm |achieve 802/13
	step
		goto 45.3,34.9
		.' Discover the Molsen Farm |achieve 802/6
	step
		goto 44.9,23.9
		.' Discover Jangolode Mine |achieve 802/5
	step
		goto 51.0,21.4
		.' Discover Furlbrow's Pumpkin Farm |achieve 802/3
	step
		goto 57.7,15.8
		.' Discover The Jansen Stead |achieve 802/4
	step
		goto 54.4,32.3
		.' Discover Saldean's Farm |achieve 802/2
	step
		goto 55.9,49.3
		.' Discover Sentinel Hill |achieve 802/1
	step
		goto 61.5,59.2
		.' Discover the Dead Acre |achieve 802/7
	step
	label	"westfall1"
		' Explore Westfall |achieve 802
	step
	label	"duskwood"
		'Skipping next part of guide |next "+deadwind" |only if step:Find("+duskwood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Duskwood,10.1,44.3
		.' Discover The Hushed Bank |achieve 778/1
	step
		goto 19.6,41.3
		.' Discover Raven Hill Cemetery |achieve 778/4
	step
		goto 19.8,55.2
		.' Discover Raven Hill |achieve 778/3
	step
		goto 21.4,69.9
		.' Discover Addle's Stead |achieve 778/2
	step
		goto 35.8,72.7
		.' Discover Vul'Gol Ogre Mound |achieve 778/5
	step
		goto 51.0,74.0
		.' Discover The Yorgen Farmstead |achieve 778/7
	step
		goto 63.8,71.9
		.' Discover The Rotting Orchard |achieve 778/9
	step
		goto 46.8,38.6
		.' Discover Twilight Grove |achieve 778/6
	step
		goto 54.6,21.2
		.' Discover The Darkened Bank |achieve 778/13
	step
		goto 64.7,37.7
		.' Discover Brightwood Grove |achieve 778/8
	step
		goto 77.1,35.9
		.' Discover Manor Mistmantle |achieve 778/12
	step
		goto 74.5,46.2
		.' Discover Darkshire |achieve 778/11
	step
		goto 79.7,66.1
		.' Discover Tranquil Gardens Cemetery |achieve 778/10
	step
	label	"duskwood1"
		' Explore Duskwood |achieve 778
	step
	label	"deadwind"
		'Skipping next part of guide |next "+blasted" |only if step:Find("+deadwind1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Deadwind Pass,45.1,35.8
		.' Discover Deadman's Crossing |achieve 777/1
	step
		goto 42.6,68.8
		.' Discover Karazhan |achieve 777/3
	step
		goto 58.6,64.7
		.' Discover The Vice |achieve 777/2
	step
	label	"deadwind1"
		' Explore Deadwind Pass |achieve 777
	step
	label	"blasted"
		'Skipping next part of guide |next "+swamp" |only if step:Find("+blasted1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Blasted Lands,39.5,12.9
		.' Discover Dreadmaul Hold |achieve 766/1
	step
		goto 45.1,26.7
		.' Discover Rise of the Defiler |achieve 766/9
	step
		goto 47.1,40.1
		.' Discover Dreadmaul Post |achieve 766/7
	step
		goto 54.4,52.9
		.' Discover The Dark Portal |achieve 766/5
	step
		goto 32.3,45.7
		.' Discover The Tainted Scar |achieve 766/8
	step
		goto 34.2,72.3
		.' Discover The Tainted Forest |achieve 766/14
	step
		goto 44.5,86.1
		.' Discover Surwich |achieve 766/12
	step
		goto 50.7,70.9
		.' Discover Sunveil Excursion |achieve 766/11
	step
		goto 65.8,78.0
		.' Discover The Red Reaches |achieve 766/13
	step
		goto 69.1,33.5
		.' Discover Shattershore |achieve 766/10
	step
		goto 60.3,28.4
		.' Discover Serpent's Coil |achieve 766/4
	step
		goto 64.3,15.8
		.' Discover Nethergare Keep |achieve 766/3
	step
	label	"blasted1"
		' Explore Blasted Lands |achieve 766
	step
	label	"swamp"
		'Skipping next part of guide |next "+redridge" |only if step:Find("+swamp1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Swamp of Sorrows,67.8,74.9
		.' Discover Stagalbog |achieve 782/7
	step
		goto 84.2,38.9
		.' Discover Sorrowmurk |achieve 782/8
	step
		goto 77.3,13.7
		.' Discover Misty Reed Strand |achieve 782/10
	step
		goto 72.3,12.8
		.' Discover Bogpaddle |achieve 782/9
	step
		goto 68.4,35.8
		.' Discover Marshtide Watch |achieve 782/12
	step
		goto 62.6,50.0
		.' Discover Pool of Tears |achieve 782/6
	step
		goto 48.8,42.1
		.' Discover The Shifting Mire |achieve 782/4
	step
		goto 47.1,54.2
		.' Discover Stonard |achieve 782/5
	step
		goto 18.6,68.1
		.' Discover Purespring Cavern |achieve 782/11
	step
		goto 22.3,49.4
		.' Discover Splinterspear Junction |achieve 782/3
	step
		goto 14.7,35.8
		.' Misty Valley |achieve 782/1
	step
		goto 28.8,32.1
		.' Discover The Harborage |achieve 782/2
	step
	label	"swamp1"
		' Explore Swamp of Sorrows |achieve 782
	step
	label	"redridge"
		'Skipping next part of guide |next "+elwynn" |only if step:Find("+redridge1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Redridge Mountains,38.2,68.5
		.' Discover Lakeridge Highway |achieve 780/4
	step
		goto 41.9,52.6
		.' Discover Lake Everstill |achieve 780/2
	step
		goto 53.4,54.7
		.' Discover Camp Everstill |achieve 780/13
	step
		goto 60.9,52.5
		.' Discover Stonewatch Keep |achieve 780/10
	step
		goto 64.7,71.3
		.' Discover Render's Valley |achieve 780/8
	step
		goto 81.0,62.4
		.' Discover Shalewind Canyon |achieve 780/12
	step
		goto 47.2,39.2
		.' Discover Alther's Mill |achieve 780/6
	step
		goto 35.1,12.8
		.' Discover Render's Camp |achieve 780/9
	step
		goto 30.2,26.1
		.' Discover Redridge Canyons |achieve 780/5
	step
		goto 25.5,43.4
		.' Discover Lakeshire |achieve 780/1
	step
		goto 19.7,59.1
		.' Discover Three Corners |achieve 780/3
	step
	label	"redridge1"
		' Explore Redridge Mountains |achieve 780
	step
	label	"elwynn"
		'Skipping next part of guide |next "+burning" |only if step:Find("+elwynn1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Elwynn Forest,83.5,66.9
		.' Discover Eastvale Logging Camp |achieve 776/8
	step
		goto 84.8,79.4
		.' Discover Ridgepoint Tower |achieve 776/9
	step
		goto 69.4,79.4
		.' Discover Brackwell Pumpkin Patch |achieve 776/7
	step
		goto 64.6,69.3
		.' Discover Tower of Azora |achieve 776/6
	step
		goto 52.9,66.2
		.' Discover Crystal Lake |achieve 776/10
	step
		goto 48.5,85.8
		.' Discover Jerod's Landing |achieve 776/5
	step
		goto 39.5,80.3
		.' Discover Fargodeep Mine |achieve 776/4
	step
		goto 24.5,73.3
		.' Discover Westbrook Garrison |achieve 776/2
	step
		goto 42.1,64.7
		.' Discover Goldshire |achieve 776/3
	step
		goto 50.4,42.5
		.' Discover Northshire Valley |achieve 776/1
	step
		goto 74.0,51.5
		.' Discover Stone Cairn Lake |achieve 776/11
	step
	label	"elwynn1"
		' Explore Elwynn Forest |achieve 776
	step
	label	"burning"
		'Skipping next part of guide |next "+badlands" |only if step:Find("+burning1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Burning Steppes,66.7,77.5
		.' Discover Blackrock Pass |achieve 775/4
	step
		goto 73.5,68.0
		.' Discover Morgan's Vigil |achieve 775/2
	step
		goto 73.9,53.4
		.' Discover Terror Wing Path |achieve 775/3
	step
		goto 69.7,40.5
		.' Discover Dreadmaul Rock |achieve 775/1
	step
		goto 56.6,37.4
		.' Discover Ruins of Thaurissan |achieve 775/5
	step
		goto 36.1,53.5
		.' Discover Black Tooth Hovel |achieve 775/6
	step
		goto 24.3,57.7
		.' Discover The Whelping Downs |achieve 775/8
	step
		goto 32.3,36.5
		.' Discover Blackrock Stronghold |achieve 775/7
	step
		goto 20.7,29.2
		.' Discover Blackrock Mountain |achieve 775/10
	step
		goto 9.4,27.5
		.' Discover Altar of Storms |achieve 775/9
	step
	label	"burning1"
		' Explore Burning Steppes |achieve 775
	step
	label	"badlands"
		'Skipping next part of guide |next "+searing" |only if step:Find("+badlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Badlands 68.0,48.2
		.' Discover Lethlor Ravine |achieve 765/1
	step
		goto 60.1,20.7
		.' Discover Camp Kosh |achieve 765/8
	step
		goto 38.3,11.6
		.' Discover Uldaman |achieve 765/3
	step
		goto 41.1,26.5
		.' Discover Angor Fortress |achieve 765/7
	step
		goto 27.4,38.
		.' Discover The Dustbowl |achieve 765/6
	step
		goto 17.7,41.7
		.' Discover New Kargath |achieve 765/10
	step
		goto 17.2,63.0
		.' Discover Camp Cagg |achieve 765/4
	step
		goto 31.7,54.6
		.' Discover Scar of the Worldbreaker |achieve 765/5
	step
		goto 46.5,57.4
		.' Discover Agmond's End |achieve 765/2
	step
		goto 52.3,51.2
		.' Discover Bloodwatcher Point |achieve 765/9
	step
	label	"badlands1"
		' Explore Badlands |achieve 765
	step
	label	"searing"
		'Skipping next part of guide |next "+dun" |only if step:Find("+searing1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Searing Gorge,39.9,82.9
		.' Discover Blackrock Mountain |achieve 774/8
	step
		goto 21.2,80.1
		.' Discover Balckchar Cave |achieve 774/3
	step
		goto 23.8,31.8
		.' Discover Firewatch Ridge |achieve 774/1
	step
		goto 37.7,29.9
		.' Discover Thorium Point |achieve 774/7
	step
		goto 52.7,49.6
		.' Discover The Cauldron |achieve 774/2
	step
		goto 71.8,26.8
		.' Discover Dustfire Valley |achieve 774/6
	step
	label	"searing1"
		' Explore Searing Gorge |achieve 774
	step
	label	"dun"
		'Skipping next part of guide |next "+loch" |only if step:Find("+dun1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dun Morogh,84.1,51.8
		.' Discover Helm's Bed Lake |achieve 627/10
	step
		goto 76.5,57.2
		.' Discover Gol'Bolar Quarry |achieve 627/11
	step
		goto 71.5,46.2
		.' Discover Amberstill Ranch |achieve 627/9
	step
		goto 67.2,53.9
		.' Discover The Tundrid Hills |achieve 627/8
	step
		goto 58.6,57.7
		.' Discover Frostmane Front |achieve 627/3
	step
		goto 53.6,50.5
		.' Discover Kharanos |achieve 627/7
	step
		goto 48.3,52.8
		.' Discover The Grizzled Den |achieve 627/14
	step
		goto 43.9,64.5
		.' Discover Coldridge Pass |achieve 627/1
	step
		goto 34.6,75.6
		.' Discover Coldridge Valley |achieve 627/2
	step
		goto 31.5,51.9
		.' Discover Frostmane Hold |achieve 627/13
	step
		goto 33.8,37.5
		.' Discover New Tinkertown |achieve 627/4
	step
		goto 41.4,40.2
		.' Discover Iceflow Lake |achieve 627/15
	step
		goto 48.3,37.9
		.' Discover Shimmer Ridge |achieve 627/6
	step
		goto 59.6,33.8
		.' Discover Gates of Ironforge |achieve 627/15
	step
		goto 78.0,24.2
		.' Discover Ironforge Airfield |achieve 627/5
	step
		goto 90.3,37.6
		.' Discover North Gate Outpost |achieve 627/12
	step
	label	"dun1"
		' Explore Dun Morogh |achieve 627
	step
	label	"loch"
		'Skipping next part of guide |next "+twilight" |only if step:Find("+loch1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Loch Modan,20.3,78.5
		.' Discover Valley of Kings |achieve 779/11
	step
		goto 32.5,78.3
		.' Discover Stonesplinter Valley |achieve 779/10
	step
		goto 38.0,60.7
		.' Discover Grizzlepaw Ridge |achieve 779/8
	step
		goto 69.4,65.3
		.' Discover Ironband's Excavation Site |achieve 779/7
	step
		goto 82.3,65.0
		.' Discover The Farstrider Lodge |achieve 779/6
	step
		goto 71.0,23.8
		.' Discover Mo'grosh Stronghold |achieve 779/3
	step
		goto 35.2,47.6
		.' Discover Thelsamar |achieve 779/9
	step
		goto 20.2,17.1
		.' Discover North Gate Pass |achieve 779/5
	step
		goto 34.8,21.5
		.' Discover Silver Stream Mine |achieve 779/4
	step
		goto 48.0,11.4
		.' Discover Stonewrought Dam |achieve 779/2
	step
	label	"loch1"
		' Explore Loch Modan |achieve 779
	step
	label	"twilight"
		'Skipping next part of guide |next "+wetlands" |only if step:Find("+twilight1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Twilight Highlands,18.9,51.4
		.' Discover Grim Batol |achieve 4866/10
	step
		goto 28.18,37.67
		.' Discover Dragonmaw Pass |achieve 4866/4 
	step
		goto 29.0,47.8
		.' Discover Wyrms' Bend |achieve 4866/26
	step
		goto 36.39,38.03 
		.' The Gullet |achieve 4866/19
	step
		goto 39.9,46.6
		.' The Twilight Breach |achieve 4866/21
	step
		goto 43.2,58.1
		.' Discover Victor's Point |achieve 4866/25
	step
		goto 46.1,77.2
		.' Discover Crushblow |achieve 4866/3
	step
		goto 49.5,68.8
		.' Discover Dunwald Ruins |achieve 4866/6
	step
		goto 64.4,78.9
		.' Discover Obsibian Forest |achieve 4866/15
	step
		goto 71.0,70.9
		.' Discover Twilight Shore |achieve 4866/23
	step
		goto 80.7,76.8
		.' Discover Highbank |achieve 4866/11
	step
		goto 76.0,53.0
		.' Discover Dragonmaw Port |achieve 4866/5
	step
		goto 59.9,57.0
		.' Discover Firebeards's Patrol |achieve 4866/7
	step
		goto 54.0,62.9
		.' Discover Highland Forest |achieve 4866/12
	step
		goto 50.7,56.9
		.' Discover Crucible of Carnage |achieve 4866/2
	step
		goto 54.1,42.7
		.' Discover Bloodgulch |achieve 4866/1
	step
		goto 62.7,46.0
		.' Discover Gorshak War Camp |achieve 4866/9
	step
		goto 71.0,38.8
		.' Discover Slithering Cove |achieve 4866/17
	step
		goto 76.8,14.5
		.' Discover The Krazzworks |achieve 4866/20
	step
		goto 54.9,17.3
		.' Discover Kirthaven |achieve 4866/14
	step
		goto 57.9,30.3
		.' Discover The Black Breach |achieve 4866/18
	step
		goto 50.2,29.1
		.' Discover Thundermar |achieve 4866/22
	step
		goto 47.8,10.6
		.' The Maw of Madness |achieve 4866/27
	step
		goto 43.6,18.1
		.' Ruins of Drakgor |achieve 4866/16
	step
		goto 44.3,27.3
		.' Discover Humboldt Conflagration |achieve 4866/13
	step
		goto 38.3,29.0
		.' Discover Glopgut's Hollow |achieve 4866/8
	step
		goto 25.3,21.0
		.' Discover Vermillion Redoubt |achieve 4866/24
	step
	label	"twilight1"
		' Explore Twilight Highlands |achieve 4866
	step
	label	"wetlands"
		'Skipping next part of guide |next "+arathi" |only if step:Find("+wetlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Wetlands,67.9,34.9
		.' Discover Raptor Ridge |achieve 841/16
	step
		goto 57.9,40.6
		.' Discover Greenwarden's Grove |achieve 841/11
	step
		goto 61.9,56.6
		.' Discover Mosshide Fen |achieve 841/12
	step
		goto 58.4,71.0
		.' Discover Slabchisel's Survey |achieve 841/15
	step
		goto 50.0,76.4
		.' Discover Dun Algaz |achieve 841/14
	step
		goto 52.2,61.4
		.' Discover Thelgen Rock |achieve 841/10
	step
		goto 48.5,48.0
		.' Discover Angerfang Encampment |achieve 841/9
	step
		goto 35.8,48.9
		.' Discover Whelgar's Excavation Site |achieve 841/4
	step
		goto 10.2,58.2
		.' Discover Menethil Harbor |achieve 841/1
	step
		goto 19.3,46.9
		.' Discover Black Channel Marsh |achieve 841/2
	step
		goto 18.9,36.0
		.' Discover Bluegill Marsh |achieve 841/3
	step
		goto 24.5,24.3
		.' Discover Sundown Marsh |achieve 841/5
	step
		goto 32.5,17.6
		.' Discover Saltspray Glen |achieve 841/6
	step
		goto 43.6,25.9
		.' Discover Ironbeard's Tomb |achieve 841/7
	step
		goto 46.9,16.5
		.' Discover Dun Modr |achieve 841/8
	step
	label	"wetlands1"
		' Explore Wetland |achieve 841
	step
	label	"arathi" 
		'Skipping next part of guide |next "+hillsbrad" |only if step:Find("+arathi1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Arathi Highlands,41.3,91.0
		.' Discover Thandol Span |achieve 761/8
	step
		goto 49.1,78.9
		.' Discover Boulderfist Hall |achieve 761/9
	step
		goto 61.6,70.3
		.' Discover Witherbark Village |achieve 761/12
	step
		goto 56.4,57.6
		.' Discover Go'Shek Farm |achieve 761/13
	step
		goto 69.3,37.2
		.' Discover Hammerfall |achieve 761/16
	step
		goto 59.3,32.8
		.' Discover Circle of East Binding |achieve 761/15
	step
		goto 49.9,41.3
		.' Discover Dabyrie's Farmstead |achieve 761/14
	step
		goto 47.3,51.4
		.' Discover Circle of Outer Binding |achieve 761/11
	step
		goto 39.8,46.4
		.' Discover Refuge Pointe |achieve 761/10
	step
		goto 30.1,59.3
		.' Discover Circle of Inner Binding |achieve 761/7
	step
		goto 23.8,81.8
		.' Discover Faldir's Cove |achieve 761/6
	step
		goto 16.5,64.1
		.' Discover Stromgarde Keep |achieve 761/5
	step
		goto 27.5,44.2
		.' Discover Boulder'gor |achieve 761/3
	step
		goto 27.0,27.1
		.' Discover Northfold Manor |achieve 761/2
	step
		goto 13.0,36.4
		.' Discover Galen's Fall |achieve 761/4
	step
	label	"arathi1"
		' Explore Arathi Highlands |achieve 761
	step
	label	"hillsbrad"
		'Skipping next part of guide |next "+silver" |only if step:Find("+hillsbrad1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Hillsbrad Foothills,68.3,60.0
		.' Discover Durnholde Keep |achieve 772/10
	step
		goto 68.1,32.9
		.' Discover Chillwind Point |achieve 772/5
	step
		goto 58.3,23.4
		.' Discover Strahnbrad |achieve 772/22
	step
		goto 57.51,74.96
		.' Discover Nethander Stead |achieve 772/15
	step
		goto 52.4,12.6
		.' Discover The Uplands |achieve 772/26
	step
		goto 44.9,9.1
		.' Discover Dandred's Fold |achieve 772/7
	step
		goto 45.3,29.0
		.' Discover Ruins of Alterac |achieve 772/17
	step
		goto 43.2,38.5
		.' Discover Growless Cave |achieve 772/13
	step
		goto 55.6,38.5
		.' Discover Sofera's Naze |achieve 772/20
	step
		goto 56.7,46.9
		.' Discover Tarren Mill |achieve 772/23
	step
		goto 49.6,46.7
		.' Discover Corrahn's Dagger |achieve 772/3
	step
		goto 48.97,71.89
		.' Discover Ruins of Southshore |achieve 772/18
	step
		goto 44.2,48.6
		.' Discover The Headland |achieve 772/24
	step
		goto 40.0,47.6
		.' Discover Gavin's Naze |achieve 772/12
	step
		goto 35.06,26.14
		.' Discover Misty Shore |achieve 772/14
	step
		goto 33.8,46.5
		.' Discover Brazie Farmstead |achieve 772/2
	step
		goto 30.4,36.2
		.' Discover Dalaran Crater |achieve 772/6
	step
		goto 29.5,63.6
		.' Discover Southpoint Gate |achieve 772/21
	step
		goto 34.0,73.8
		.' Discover Azurlode Mine |achieve 772/1
	step
		goto 27.0,85.6
		.' Discover Purgation Isle |achieve 772/16
	step
	label	"hillsbrad1"
		' Explore Hillsbrad Foothills |achieve 772
	step
	label	"silver"
		'Skipping next part of guide |next "+tirisfal" |only if step:Find("+silver1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Silverpine Forest,46.1,79.5
		.' Discover The Battlefront |achieve 769/1
	step
		goto 42.2,63.2
		.' Discover Shadowfang Keep |achieve 769/12
	step
		goto 50.9,66.6
		.' Discover The Forsaken Front |achieve 769/3
	step
		goto 61.2,62.4
		.' Discover Ambermill |achieve 769/11
	step
		goto 46.1,51.0
		.' Discover Olsen's Farthing |achieve 769/10
	step
		goto 45.0,40.0
		.' Discover The Sepulcher |achieve 769/8
	step
		goto 37.3,28.0
		.' Discover North Tide's Beachead |achieve 769/5
	step
		goto 34.8,12.4
		.' Discover The Skittering Dark |achieve 769/4
	step
		goto 44.9,18.8
		.' Discover Forsaken Rear Guard |achieve 769/15
	step
		goto 53.2,25.6
		.' Discover Valgan's Field |achieve 769/7
	step
		goto 56.5,34.7
		.' Discover The Decrepit Fields |achieve 769/2
	step
		goto 59.3,45.4
		.' Discover Deep Elem Mine |achieve 769/9
	step
		goto 69.1,26.8
		.' Discover Fenris Isle |achieve 769/6
	step
		goto 62.0,8.7
		.' Discover Forsaken High Command |achieve 769/13
	step
	label	"silver1"
		' Explore Silverpine Forest |achieve 769
	step
	label	"tirisfal"
		'Skipping next part of guide |next "+w_plague" |only if step:Find("+tirisfal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Tirisfal Glades,32.2,63.8
		.' Discover Deathknell |achieve 768/1
	step
		goto 45.1,65.4
		.' Discover Nightmare Vale |achieve 768/4
	step
		goto 53.8,58.7
		.' Discover Cold Hearth Manor |achieve 768/5
	step
		goto 46.2,51.4
		.' Discover Calston Estate |achieve 768/16
	step
		goto 38.4,48.9
		.' Discover Solliden Farmstead |achieve 768/9
	step
		goto 45.6,32.9
		.' Discover Agamand Mills |achieve 768/3
	step
		goto 56.9,35.6
		.' Discover Garren's Haunt |achieve 768/7
	step
		goto 59.7,50.9
		.' Discover Brill |achieve 768/6
	step
		goto 68.3,45.0
		.' Discover Brightwater Lake |achieve 768/8
	step
		goto 78.4,26.9
		.' Discover Scarlet Watch Post |achieve 768/11
	step
		goto 87.00,47.2
		.' Discover Venomweb Vale |achieve 768/12
	step
		goto 79.1,54.7
		.' Discover Crusader Outpost |achieve 768/10
	step
		goto 73.7,60.0
		.' Discover Balnir Farmstead |achieve 768/9
	step
		goto 84.9,69.4
		.' Discover The Bulwark |achieve 768/15
	step
	label	"tirisfal1"
		' Explore Tirisfal Glades |achieve 768
	step
	label	"w_plague"
		'Skipping next part of guide |next "+hinterlands" |only if step:Find("+w_plague1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Western Plaguelands,27.0,57.7
		.' Discover The Bulwark |achieve 770/5
	step
		goto 36.5,54.6
		.' Discover Felstone Field |achieve 770/6
	step
		goto 45.1,51.2
		.' Discover Dalson's Farm |achieve 770/7
	step
		goto 46.0,45.5
		.' Discover Redpine Dell |achieve 770/11
	step
		goto 47.2,33.4
		.' Northridge Lumber Camp |achieve 770/9
	step
		goto 44.9,17.0
		.' Discover Hearthglen |achieve 770/10
	step
		goto 64.4,40.1
		.' Discover The Weeping Cave |achieve 770/13
	step
		goto 69.6,50.7
		.' Discover Thondroril River |achieve 770/14
	step
		goto 63.9,58.2
		.' Discover Gahrron's Withering |achieve 770/12
	step
		goto 54.9,66.2
		.' Discover The Writhing Haunt |achieve 770/8
	step
		goto 54.6,85.5
		.' Discover Sorrow Hill |achieve 770/3
	step
		goto 68.3,81.1
		.' Discover Caer Darrow |achieve 770/2
	step
	label	"w_plague1"
		' Explore Western Plaguelands |achieve 770
	step
	label	"hinterlands"
		'Skipping next part of guide |next "+e_plague" |only if step:Find("+hinterlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Hinterlands,13.9,45.0
		.' Discover Aerie Peak |achieve 773/1
	step
		goto 23.1,33.5
		.' Discover Plaguemist Ravine |achieve 773/2
	step
		goto 33.3,45.6
		.' Discover Quel'Danil Lodge |achieve 773/4
	step
		goto 34.6,72.0
		.' Discover Shadra'Alor |achieve 773/5
	step
		goto 40.5,59.3
		.' Discover Valorwind Lake |achieve 773/6
	step
		goto 48.4,66.9
		.' Discover The Altar of Zul |achieve 773/9
	step
		goto 49.0,52.1
		.' Discover The Creeping Ruin |achieve 773/8
	step
		goto 63.1,74.7
		.' Discover Jintha'Alor |achieve 773/13
	step
		goto 72.7,66.1
		.' Discover The Overlook Cliffs |achieve 773/14
	step
		goto 73.2,54.2
		.' Discover Shaol'watha |achieve 773/12
	step
		goto 57.6,42.6
		.' Discover Skulk Rock |achieve 773/11
	step
		goto 62.7,24.1
		.' Discover Seradane |achieve 773/10
	step
	label	"hinterlands1"
		' Explore The Hinterlands |achieve 773
	step
	label	"e_plague"
		'Skipping next part of guide |next "+ghost" |only if step:Find("+e_plague1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Eastern Plaguelands,35.1,84.2
		.' Discover Darrowshire |achieve 771/6
	step
		goto 24.0,78.8
		.' Discover The Undercroft |achieve 771/3
	step
		goto 22.6,66.0
		.' The Marris Stead |achieve 771/2
	step
		goto 12.5,26.3
		.' Discover Terrordale |achieve 771/20
	step
		goto 26.8,9.8
		.' Discover Statholme |achieve 771/22
	step
		goto 33.6,24.4
		.' Discover Plaguewood |achieve 771/21
	step
		goto 36.1,44.8
		.' Discover The Fungal Vale |achieve 771/5
	step
		goto 35.7,68.5
		.' Discover Crown Guard Tower |achieve 771/4
	step
		goto 57.4,74.1
		.' Discover Lake Mereldar |achieve 771/9
	step
		goto 55.6,62.9
		.' Discover Corin's Crossing |achieve 771/8
	step
		goto 46.3,43.5
		.' Discover Blackwood Lake |achieve 771/15
	step
		goto 48.1,13.1
		.' Discover Quel'Lithien Lodge |achieve 771/19
	step
		goto 50.5,20.5
		.' Discover Northpass Tower |achieve 771/18
	step
		goto 62.4,41.7
		.' Discover Eastwall Tower |achieve 771/14
	step
		goto 68.7,56.5
		.' Discover Pestilent Scar |achieve 771/7
	step
		goto 75.6,75.2
		.' Discover Tyr's Hand |achieve 771/10
	step
		goto 87.1,78.5
		.' Discover Ruins of the Scarlet Enclave |achieve 771/23
	step
		goto 76.8,53.9
		.' Discover Light's Hope Chapel |achieve 771/11
	step
		goto 78.1,35.8
		.' Discover The Noxious Glade |achieve 771/13
	step
		goto 66.1,25.0
		.' Discover Northdale |achieve 771/16
	step
		goto 66.4,10.3
		.' Discover Zul'Mashar |achieve 771/17
	step
	label	"e_plague1"
		' Explore Eastern Plaguelands |achieve 771
	step
	label	"ghost"
		'Skipping next part of guide |next "+eversong" |only if step:Find("+ghost1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Ghostlands,48.2,84.3
		.' Discover Thalassian Pass |achieve 858/16
	step
		goto 33.1,79.9
		.' Discover Deatholme |achieve 858/10
	step
		goto 12.4,57.0
		.' Discover Windrunner Spire |achieve 858/13
	step
		goto 17.9,41.4
		.' Discover Windrunner Village |achieve 858/4
	step
		goto 25.0,15.0
		.' Discover Goldenmist Village |achieve 858/3
	step
		goto 33.4,32.2
		.' Discover Sanctum of the Moon |achieve 858/5
	step
		goto 34.3,47.6
		.' Discover Bleeding Ziggurat |achieve 858/14
	step
		goto 40.4,49.8
		.' Discover Howling Ziggurat |achieve 858/9
	step
		goto 47.12,32.8
		.' Discover Tranquillien |achieve 858/1
	step
		goto 54.7,49.7
		.' Sanctum of the Sun |achieve 858/6
	step
		goto 66.6,58.9
		.' Discover Zeb'Nowa |achieve 858/11
	step
		goto 77.3,64.4
		.' Discover Amani Pass |achieve 858/12
	step
		goto 77.2,32.1
		.' Discover Farstrider Enclave |achieve 858/8
	step
		goto 78.6,18.7
		.' Discover Dawnstart Spire |achieve 858/7
	step
		goto 60.46,11.7
		.' Discover Suncrown Village |achieve 858/2
	step
		goto 48.39,11.51
		.' Discover Elrendar Crossing |achieve 858/15
	step
		goto 48.39,11.51
		.' Discover Elrendar Crossing |achieve 858/15
	step
	label	"ghost1"
		' Explore Ghostlands |achieve 858
	step
	label	"eversong"
		'Skipping next part of guide |next "+isle_q" |only if step:Find("+eversong1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Eversong Woods,36.2,86.0
		.' Discover The Scorched Grove |achieve 859/13
	step
		goto 44.1,85.8
		.' Discover Runestone Falithas |achieve 859/19
	step
		goto 55.8,84.2
		.' Discover Rusestone Shan'dor |achieve 859/20
	step
		goto 62.2,79.3
		.' Discover Zeb'Watha |achieve 859/25
	step
		goto 65.9,78.6
		.' Discover Lake Elrendar |achieve 859/18
	step
		goto 72.0,79.3
		.' Discover Tor'Watha |achieve 859/12
	step
		goto 64.6,73.1
		.' Discover Elreandar Falls |achieve 859/16
	step
		goto 61.2,63.7
		.' Discover Farstrider Rereat |achieve 859/7
	step
		goto 55.7,56.4
		.' Discover Stillwhisper Pond |achieve 859/8
	step
		goto 60.6,54.2
		.' Discover Thuron's Livery |achieve 859/23
	step
		goto 71.6,45.3
		.' Discover Azurebreeze Coast |achieve 859/15
	step
		goto 52.4,39.4
		.' Disocver Silvermoon City |achieve 859/14
	step
		goto 31.3,16.0
		.' Discover Sunstrider Isle |achieve 859/1
	step
		goto 42.9,39.3
		.' Discover Ruins of Silvermoon |achieve 859/2
	step
		goto 42.7,50.4
		.' Discover North Sanctum |achieve 859/5
	step
		goto 35.3,57.6
		.' Discover West Sanctum |achieve 859/3
	step
		goto 28.5,57.8
		.' Discover Tranquil Shore |achieve 859/24
	step
		goto 29.4,69.3
		.' Discover Sunsail Anchorage |achieve 859/4
	step
		goto 23.5,74.8
		.' Discover Golden Strand |achieve 859/22
	step
		goto 33.4,77.6
		.' Discover Goldenbough Pass |achieve 859/17
	step
		goto 38.3,73.5
		.' Discover Saltheril's Haven |achieve 859/21
	step
		goto 43.9,73.7
		.' Discover Fairbreeze Village |achieve 859/10
	step
		goto 52.3,73.1
		.' Discover East Sanctum |achieve 859/6
	step
		goto 54.2,71.9
		.' Discover The Living Wood |achieve 859/11
	step
		goto 36.2,86.0
		.' Discover The Scorched Grove |achieve 859/13
	step
	label	"eversong1"
		' Explore Eversong Woods |achieve 859
	step
	label	"isle_q"
		'Skipping next part of guide |next "+end" |only if step:Find("+isle_q1"):IsComplete()
		'Proceeding next step |next |only if default
	step
	label	"isle_q1"
		goto Isle of Quel'Danas 47.4,30.6
		' Explore Isle of Quel'Danas |achieve 868
	step
	label	"end"
		' Congratulations! You have Explored the Eastern Kingdoms |achieve 42 |only if achieved(42)
		.' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not explored all of Eastern Kingdoms yet |only if not achieved(42)
		|confirm |next "start" |only if not achieved(42)
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Outland",[[
	description This guide section will walk you through completing all the Explorer achievements in Outlands.
	author support@zygorguides.com
	condition end achieved(44)
	achieveid 862,863,867,866,865,843,864
	step
		' This guide assumes you have a flying mount. You can do this guide without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Click to explore Hellfire Peninsula |confirm |next "hellfire" |achieve 862
		' Click to explore Terokkar Forest |confirm |next "terokkar" |achieve 867
		' Click to explore Shadowmoon Valley |confirm |next "shadowmoon" |achieve 864
		' Click to explore Nagrand |confirm |next "nagrand" |achieve 866
		' Click to explore Zangarmarsh |confirm |next "zangar" |achieve 863
		' Click to explore Blade's Edge Mountains |confirm |next "blade" |achieve 865
		' Click to explore Netherstorm |confirm |next "nether" |achieve 843
		.' OR
		' Click here to complete Zygor's suggested path through all of the above zones. |confirm |next
	step
	label "hellfire"
		'Skipping next part of guide |next "+terokkar" |only if step:Find("+hellfire1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Hellfire Peninsula,87.7,50.3
		.' Discover The Stair of Destiny |achieve 862/1
	step
		goto 62.0,17.8
		.' Discover Throne of Kil'jaeden |achieve 862/12
	step
		goto 58.9,31.2
		.' Discover Forge Camp: Mageddon |achieve 862/18
	step
		goto 55.4,38.7
		.' Disocver Thrallmar |achieve 862/11
	step
		goto 70.0,50.4
		.' Discover The Legion Front |achieve 862/10
	step
		goto 79.1,72.9
		.' Discover Void Ridge |achieve 862/16
	step
		goto 70.1,73.6
		.' Discover Zeth'Gor |achieve 862/13
	step
		goto 54.3,84.3
		.' Discover Expedition Armory |achieve 862/2
	step
		goto 45.3,82.5
		.' Discover The Warp Fields |achieve 862/17
	step
		goto 54.8,64.5
		.' Discover Honor Hold |achieve 862/5
	step
		goto 47.2,52.9
		.' Discover Hellfire Citadel |achieve 862/4 
	step
		goto 41.2,32.6
		.' Discover Pools of Aggonar |achieve 862/7
	step
		goto 31.3,26.9
		.' Discover Mag'har Post |achieve 862/6
	step
		goto 23.5,40.0
		.' Discover Temple of Telhamat |achieve 862/9 
	step
		goto 26.9,62.3
		.' Discvoer Falcon Watch |achieve 862/3
	step
		goto 27.5,77.0
		.' Discover Den of Haal'esh |achieve 862/14
	step
		goto 14.3,41.0
		.' Discover Fallen Sky Ridge |achieve 862/15
	step
		goto 13.3,59.4
		.' Discover Ruins of Sha'naar |achieve 862/8
	step
	label	"hellfire1"
		' Explore Hellfire Peninsula |achieve 862
	step
	label	"terokkar"
		'Skipping next part of guide |next "+shadowmoon" |only if step:Find("+terokkar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Terokkar Forest,55.0,20.0
		.' Discover Razorthorn Shelf |achieve 867/11
	step
		goto 53.0,29.1
		.' Discover Tuurem |achieve 867/7
	step
		goto 43.8,20.2
		.' Discover Cenarion Thicket |achieve 867/3
	step
		goto 29.1,23.3
		.' Discover Shattrath City |achieve 867/8
	step
		goto 22.4,10.5
		.' Discover The Barrier Hills |achieve 867/10
	step
		goto 17.8,65.4
		.' Discover Bleeding Hollow Ruins |achieve 867/1
	step
		goto 24.4,59.9
		.' Discover Veil Rhaze |achieve 867/19
	step
		goto 31.3,52.5
		.' Discover Shadow Tomb |achieve 867/17
	step
		goto 37.5,49.6
		.' Discover Refugee Caravan |achieve 867/15
	step
		goto 42.9,51.0
		.' Discover Carrion Hill |achieve 867/14
	step
		goto 39.5,39.4
		.' Discover Grangol'var Village |achieve 867/5
	step
		goto 46.6,43.0
		.' Discover Stonebreaker Hold |achieve 867/6
	step
		goto 60.6,40.2
		.' Discover Raastok Glade |achieve 867/9
	step
		goto 71.7,34.7
		.' Discover Firewing Point |achieve 867/4
	step
		goto 66.5,52.3
		.' Discover Bonechewer Ruins |achieve 867/12
	step
		goto 57.1,56.6
		.' Discover Allerian Stronghold |achieve 867/2
	step
		goto 49.1,66.0
		.' Discover Writhing Mound |achieve 867/20
	step
		goto 39.5,65.5
		.' Discover Ring of Observance |achieve 867/16
	step
		goto 33.0,71.8
		.' Discover Auchenai Grounds |achieve 867/13
	step
		goto 43.9,76.1
		.' Discover Derelict Caravan |achieve 867/18
	step
		goto 58.9,76.4
		.' Discover Skettis |achieve 867/21
	step
	label	"terokkar1"
		' Explore terokkar Forest |achieve 867
	step
	label	"shadowmoon"
		'Skipping next part of guide |next "+nagrand" |only if step:Find("+shadowmoon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Shadowmoon Valley,24.1,39.2
		.' Discover Legion Hold |achieve 864/3
	step
		goto 29.8,52.3
		.' Discover Illidari Point |achieve 864/12
	step
		goto 35.5,60.2
		.' Discover Wildhammer Stronghold |achieve 864/10 
	step
		goto 44.9,66.8
		.' Discover Eclipse Point |achieve 864/2
	step
		goto 70.8,85.7
		.' Discover Netherwing Ledge |achieve 864/4
	step
		goto 64.2,58.5
		.' Discover Netherwing Fields |achieve 864/13
	step
		goto 57.3,50.1
		.' Discover Warden's Cage |achieve 864/9
	step
		goto 49.8,41.2
		.' Discover The Hand of Gul'dan |achieve 864/8 
	step
		goto 39.6,39.6
		.' Discover The Deathforge |achieve 864/7
	step
		goto 29.4,26.1
		.' Discover Shadowmoon Village |achieve 864/5
	step
		goto 45.3,26.3
		.' Discover Coilskar Point |achieve 864/1
	step
		goto 61.5,26.1
		.' Discover Altar of Sha'tar |achieve 864/11
	step
		goto 77.6,40.6
		.' Discover The Black Temple |achieve 864/6
	step
	label	"shadowmoon1"
		' Explore Shadowmoon Valley |achieve 864
	step
	label	"nagrand"
		'Skipping next part of guide |next "+zangar" |only if step:Find("+nagrand1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Nagrand,74.3,52.9
		.' Discover Windyreed Village |achieve 866/18
	step
		goto 75.1,66.8
		.' Discover Burning Blade Ruins |achieve 866/12
	step
		goto 68.9,79.9
		.' Discover Kil'sorrow Fortress |achieve 866/4
	step
		goto 62.5,64.3
		.' Discover Clan Watch |achieve 866/13
	step
		goto 65.8,54.0
		.' Discover The Ring of Trials |achieve 866/9
	step
		goto 49.8,55.9
		.' Discover Southwind Cleft |achieve 866/15
	step
		goto 52.8,69.1
		.' Discover Telaar |achieve 866/8
	step
		goto 42.0,71.8
		.' Discover Spirit Fields |achieve 866/6
	step
		goto 42.5,44.0
		.' Discover Halaa |achieve 866/3
	step
		goto 33.5,44.7
		.' Discover Sunspring Post |achieve 866/7
	step
		goto 20.6,51.3
		.' Discover Forge Camp: Fear |achieve 866/1
	step
		goto 10.8,39.2
		.' Discover The Twilight Ridge |achieve 866/16
	step
		goto 25.9,37.1
		.' Discover Forge Camp: Hate |achieve 866/14
	step
		goto 29.7,24.6
		.' Discover Warmaul Hill |achieve 866/11
	step
		goto 33.9,18.4
		.' Discover Zangar Ridge |achieve 866/19
	step
		goto 46.9,18.9
		.' Discover Laughing Skull Ruins |achieve 866/5
	step
		goto 56.1,36.4
		.' Discover Garadar |achieve 866/2
	step
		goto 60.8,21.1
		.' Discover Throne of the Elements |achieve 866/10
	step
		goto 72.4,36.3
		.' Discover Windyreed Pass |achieve 866/17
	step
	label	"nagrand1"
		' Explore Nagrand |achieve 866
	step
	label	"zangar"
		'Skipping next part of guide |next "+blade" |only if step:Find("+zangar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Zangarmarsh,70.6,79.9
		.' Discover Darkcrest Shore |achieve 863/18
	step
		goto 83.5,82.0
		.' Discover Umbrafen Village |achieve 863/11
	step
		goto 81.1,63.4
		.' Discover Cenarion Refuge |achieve 863/1
	step
		goto 82.5,37.5
		.' Discover The Dead Mire |achieve 863/8
	step
		goto 68.5,49.2
		.' Discover Teredor |achieve 863/7
	step
		goto 62.7,41.2
		.' Discover Bloodscale Grounds |achieve 863/14
	step
		goto 58.6,61.8
		.' Discover The Lagoon |achieve 863/9
	step
		goto 47.8,51.7
		.' Discover Twin Spire Ruins |achieve 863/10
	step
		goto 44.9,66.3
		.' Discover Feralfen Village |achieve 863/3
	step
		goto 31.8,52.3
		.' Discover Zabra'jin |achieve 863/17
	step
		goto 29.0,60.7
		.' Discover Quagg Ridge |achieve 863/6
	step
		goto 14.5,61.9
		.' Discover The Spawning Glen |achieve 863/16 
	step
		goto 17.8,49.6
		.' Discover Sporeggar |achieve 863/12
	step
		goto 21.7,39.6
		.' Discover Marshlight Lake |achieve 863/5
	step
		goto 18.0,23.1
		.' Disocver Ango'rosh Grounds |achieve 863/2
	step
		goto 18.6,8.0
		.' Discover Ango'rosh Stronghold |achieve 863/13
	step
		goto 33.6,35.3
		.' Discover Hewn Bog |achieve 863/4
	step
		goto 44.9,25.2
		.' Discover Orebor Harborage |achieve 863/15
	step
	label	"zangar1"
		' Explore Zangarmarsh |achieve 863
	step
	label	"blade"
		'Skipping next part of guide |next "+nether" |only if step:Find("+blade1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Blade's Edge Mountains,29.1,81.0
		.' Discover Forge Camp: Terror |achieve 865/10
	step
		goto 30.5,59.5
		.' Discover Vortex Summit |achieve 865/26
	step
		goto 33.5,41.1
		.' Discover Forge Camp: Wrath |achieve 865/11
	step
		goto 31.9,27.5
		.' Discover Raven's Wood |achieve 865/16
	step
		goto 39.6,19.9
		.' Discover Grishnath |achieve 865/12
	step
		goto 51.7,16.7
		.' Discover Bash'ir Landing |achieve 865/1
	step
		goto 68.0,10.8
		.' Discover Crystal Spine |achieve 865/21
	step
		goto 77.9,25.9
		.' Discover Broken Wilds |achieve 865/6
	step
		goto 72.0,22.9
		.' Discover Skald |achieve 865/19
	step
		goto 67.7,23.5
		.' Discover Gruul's Lair |achieve 865/13 
	step
		goto 55.6,26.2
		.' Discover Bloodmaul Camp |achieve 865/4
	step
		goto 40.7,53.0
		.' Discover Bladespire Hold |achieve 865/3
	step
		goto 37.0,65.4
		.' Discover Sylvanaar |achieve 865/20
	step
		goto 36.4,78.7
		.' Discover Veil Lashh |achieve 865/23
	step
		goto 46.3,77.2
		.' Discover Bloodmaul Outpost |achieve 865/5 
	step
		goto 48.0,64.9
		.' Discover Jagged Ridge |achieve 865/14
	step
		goto 56.0,69.0
		.' Discover Razor Ridge |achieve 865/17
	step
		goto 64.2,61.0
		.' Discover Death's Door |achieve 865/8
	step
		goto 53.1,54.7
		.' Discover Thunderlord Stronghold |achieve 865/22
	step
		goto 53.6,43.9
		.' Discover Circle of Blood |achieve 865/7
	step
		goto 61.2,36.5
		.' Discover Ruuan Weald |achieve 865/18
	step
		goto 65.1,31.6
		.' Discover Veil Ruuan |achieve 865/24
	step
		goto 65.9,36.8
		.' Discover Bladed Gulch |achieve 865/2
	step
		goto 74.7,41.8
		.' Discover Forge Camp: Anger |achieve 865/9
	step
		goto 73.9,62.6
		.' Discover Mok'Nathal Village |achieve 865/15
	step
		goto 77.1,75.2
		.' Discover Vekhaar Stand |achieve 865/25
	step
	label	"blade1"
		' Explore Blade's Edge Mountains |achieve 865 
	step
	label	"nether"
		'Skipping next part of guide |next "+end" |only if step:Find("+nether1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Netherstorm,23.5,72.9
		.' Discover Manaforge B'naar |achieve 843/2
	step
		goto 28.4,77.5
		.' Discover The Heap |achieve 843/9
	step
		goto 33.5,66.0
		.' Discover Area 52 |achieve 843/1
	step
		goto 39.7,73.5
		.' Discover Arklon Ruins |achieve 843/10
	step
		goto 48.8,84.5
		.' Discover Manaforge Coruu |achieve 843/3
	step
		goto 57.1,88.5
		.' Discover Kirin'Var Village |achieve 843/12
	step
		goto 56.0,77.8
		.' Discover Sunfury Hold |achieve 843/15
	step
		goto 59.6,68.2
		.' Discover Maforge Duro |achieve 843/4
	step
		goto 75.8,62.5
		.' Discover Tempest Keep |achieve 843/8
	step
		goto 72.5,38.7
		.' Discover Celestial Ridge |achieve 843/11
	step
		goto 61.7,38.2
		.' Discover Manaforge Ultris |achieve 843/6
	step
		goto 55.1,43.5
		.' Discover Ethereum Staging Grounds |achieve 843/19
	step
		goto 54.4,21.3
		.' Discover Ruins of Farahlon |achieve 843/7
	step
		goto 49.5,17.0
		.' Discover Netherstone |achieve 843/13
	step
		goto 46.1,9.6
		.' Discover Eco-Dome Farfield |achieve 843/18
	step
		goto 29.9,16.0
		.' Discover Socrethar's Seat |achieve 843/20
	step
		goto 37.5,26.4
		.' Discover Forge Base: Oblivion |achieve 843/21
	step
		goto 45.1,35.8
		.' Discover The Stormspire |achieve 843/16
	step
		goto 45.3,53.7
		.' Discover Eco-Dome Midrealm |achieve 843/22
	step
		goto 32.9,54.9
		.' Discover ruins of Enkaat |achieve 843/14
	step
		goto 23.2,55.9
		.' Discover Gyro-Plank Bridge |achieve 843/17
	step
		goto 26.8,39.3
		.' Discover Manaforge Ara |achieve 843/5
	step
	label	"nether1"
		' Explore Netherstorm |achieve 843
	step
	label	"end"
		' Congratulations! You have Explored Outlands! |achieve 44 |only if achieved(44)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		' You have not fully explored Outlands yet |only if not achieved(44)
		|confirm |next "start" |only if not achieved(44)	
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Achievements Guides\\Exploration Achievements\\Explorer Achievement\\Northrend",[[
	description This guide section will walk you through completing all the Explorer achievements in Northrend.
	description the Explorer achievement.
	author support@zygorguides.com
	condition end achieved(45)
	achieveid 1264,1263,1265,1266,1267,1268,1457,1269,1270
	step
		' This guide requires that you have a flying mount. You can _NOT_ do this guide without having a flying mount.
		|confirm always
	step
	label	"start"
		' Click to explore Borean Tundra |confirm |next "borean" |achieve 1264
		' Click to explore Dragonblight |confirm |next "dragon" |achieve 1265
		' Click to explore Zul'Drak |confirm |next "zul" |achieve 1267
		' Click to explore Crystalsong Forest |confirm |next "crystal" |achieve 1457
		' Click to explore Icecrown |confirm |next "icecrown" |achieve 1270
		' Click to explore Howling Fjord |confirm |next "howling" |achieve 1263
		' Click to explore Grizzly Hills |confirm |next "grizzly" |achieve 1266
		' Click to explore Sholazar Basin |confirm |next "sholazar" |achieve 1268
		' Click to explore Storm Peaks |confirm |next "storm" |achieve 1269
		.' OR
		' Click here to complete Zygor's suggested path through all of the above zones. |confirm |next
	step
	label	"borean"
		'Skipping next part of guide |next "+sholazar" |only if step:Find("+borean1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Borean Tundra,57.7,69.3
		.' Discover Valiance Keep |achieve 1264/11
	step
		goto 43.4,53.2
		.' Discover Warsong Hold |achieve 1264/10
	step
		goto 47.4,81.1
		.' Discover Riplash Stand |achieve 1264/3
	step
		goto 27.9,51.6
		.' Discover Garrosh's Landing |achieve 1264/5
	step
		goto 25.8,38.4
		.' Discover Coldarra |achieve 1264/7
	step
		goto 46.1,34.8
		.' Discover Amber Ledge |achieve 1264/9
	step
		goto 50.2,24.3
		.' Discover Steeljaw's Carvan |achieve 1264/2
	step
		goto 50.2,10.3
		.' Discover Bor'gorok Outpost |achieve 1264/8
	step
		goto 66.3,28.5
		.' Discover The Geyser Fields |achieve 1264/12
	step
		goto 66.2,51.1
		.' Discover Kaskala |achieve 1264/4
	step
		goto 82.4,46.4
		.' Discover Death's Stand |achieve 1264/6
	step
		goto 87.6,25.1
		.' Discover Temple City of En'kilah |achieve 1264/1
	step
		goto 76.4,16.4
		.' Discover The Dens of the Dying |achieve 1264/13
	step
	label	"borean1"
		' Explore Borean Tundra |achieve 1264
	step
	label	"sholazar"
		'Skipping next part of guide |next "+icecrown" |only if step:Find("+sholazar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Sholazar Basin,81.0,55.4
		.' Discover Makers' Overlook |achieve 1268/4
	step
		goto 65.9,60.1
		.' Discover The Lifeblood Pillar |achieve 1268/8
	step
		goto 53.7,52.5
		.' Discover Rainspeaker Canopy |achieve 1268/7
	step
		goto 48.0,63.2
		.' Discover River's Heart |achieve 1268/1
	step
		goto 36.0,75.3
		.' Discover The Mosslight Pillar |achieve 1268/3
	step
		goto 24.3,81.7
		.' Discover Kartak's Hold |achieve 1268/11
	step
		goto 33.3,52.3
		.' Discover The Suntouched Pillar |achieve 1268/6
	step
		goto 29.7,40.1
		.' Discover Makers' Perch |achieve 1268/5
	step
		goto 24.5,33.5
		.' Discover The Stormwright's Shelf |achieve 1268/12
	step
		goto 46.8,26.1
		.' Discover The Savage Thicket |achieve 1268/2
	step
		goto 50.0,36.0
		.' Discover The Glimmering Pillar |achieve 1268/10
	step
		goto 74.5,34.6
		.' Discover The Avalanche |achieve 1268/9
	step
	label	"sholazar1"
		' Explore Sholazar Basin |achieve 1268
	step
	label	"icecrown"
		'Skipping next part of guide |next "+dragon" |only if step:Find("+icecrown1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Icecrown,8.9,42.9
		.' Discover Onslaught Harbor |achieve 1270/3
	step
		goto 27.1,39.0
		.' Discover Jotunheim |achieve 1270/13
	step
		goto 36.5,24.1
		.' Discover Valhalas |achieve 1270/8
	step
		goto 44.4,22.6
		.' Discover The Shadow Vault |achieve 1270/15
	step
		goto 52.8,30.6
		.' Discover Aldur'thar: The Desolation Gate |achieve 1270/6
	step
		goto 63.7,44.0
		.' Discover The Bombardment |achieve 1270/1
	step
		goto 74.0,37.7
		.' Discover Sindragosa's Fall |achieve 1270/7
	step
		goto 78.4,60.2
		.' Discover Scourgeholme |achieve 1270/14
	step
		goto 83.8,73.4
		.' Valley of Echoes |achieve 1270/9
	step
		goto 69.2,64.4
		.' Discover The Broken Front |achieve 1270/4
	step
		goto 54.9,56.2
		.' Discover Ymirheim |achieve 1270/10
	step
		goto 43.6,56.5
		.' Discover The Conflagration |achieve 1270/11
	step
		goto 33.1,66.4
		.' Discover The Fleshwerks |achieve 1270/5
	step
		goto 48.4,70.6
		.' Discover Corp'rethar: The Horror Gate |achieve 1270/12
	step
		goto 54.2,85.8
		.' Discover Icecrown Citadel |achieve 1270/2
	step
	label	"icecrown1"
		' Explore Icecrown |achieve 1270
	step
	label	"dragon"
		'Skipping next part of guide |next "+crystal" |only if step:Find("+dragon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dragonblight,36.0,15.0
		.' Discover Angrathar the Wrath Gate |achieve 1265/10
	step
		goto 38.4,31.9
		.' Discover Obsidian Dragonshrine |achieve 1265/3
	step
		goto 25.1,43.2
		.' Discover Icemist Village |achieve 1265/7
	step
		goto 13.8,46.2
		.' Discover Westwind Refugee Camp |achieve 1265/13
	step
		goto 36.9,47.8
		.' Discover Agmar's Hammer |achieve 1265/11
	step
		goto 39.7,67.0
		.' Discover Lake Indu'le |achieve 1265/2
	step
		goto 47.3,48.7
		.' Discover Ruby Dragonshrine |achieve 1265/3
	step
		goto 54.9,32.7
		.' Discover Galakrond's Rest |achieve 1265/1
	step
		goto 59.7,49.8
		.' Discover Wyrmrest Temple |achieve 1265/12
	step
		goto 63.5,72.7
		.' Discover Emerald Dragonshrine |achieve 1265/8
	step
		goto 71.0,75.2
		.' Discover New Hearthglen |achieve 1265/4
	step
		goto 77.1,60.0
		.' Discover Venomspite |achieve 1265/14
	step
		goto 82.5,70.7
		.' Discover The Forgotten Shore |achieve 1265/15
	step
		goto 88.9,44.0
		.' Discover Naxxramas |achieve 1265/5
	step
		goto 83.6,25.6
		.' Discover Light's Trust |achieve 1265/6
	step
		goto 72.7,25.6
		.' Discover Scarlet Point |achieve 1265/17
	step
		goto 61.8,19.5
		.' Discover The Crystal Vice |achieve 1265/16
	step
		goto 50.0,17.5
		.' Discover Coldwind Heights |achieve 1265/9
	step
	label	"dragon1"
		' Explore Dragonblight |achieve 1265
	step
	label	"crystal"
		'Skipping next part of guide |next "+storm" |only if step:Find("+crystal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Crystalsong Forest,26.4,61.4
		.' Discover The Azure Front |achieve 1457/1
	step
		goto 14.5,44.1
		.' Discover Violet Stand |achieve 1457/7
	step
		goto 13.1,33.9
		.' Discover The Great Tree |achieve 1457/6
	step
		goto 16.0,15.4
		.' Discover The Decrepit Flow |achieve 1457/2
	step
		goto 43.0,42.5
		.' Discover Forlorn Woods |achieve 1457/4
	step
		goto 64.7,60.4
		.' Discover The Unbound Thicket |achieve 1457/8
	step
		goto 75.2,83.0
		.' Discover Windrunner's Overlook |achieve 1457/5
	step
		goto 76.9,46.3
		.' Discover Sunreaver's Command |achieve 1457/3
	step
	label	"crystal1"
		' Explore Crystalsong Forest |achieve 1457
	step
	label	"storm"
		'Skipping next part of guide |next "+zul" |only if step:Find("+storm1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Storm Peaks,35.1,84.0
		.' Discover Sparksocket Minefield |achieve 1269/7
	step
		goto 35.3,68.7
		.' Discover Bor's Breath |achieve 1269/4
	step
		goto 35.9,58.0
		.' Discover Temple of Storms |achieve 1269/12
	step
		goto 29.4,73.8
		.' Discover Frosthold |achieve 1269/15
	step
		goto 24.0,60.5
		.' Discover Valkyrion |achieve 1269/5
	step
		goto 23.9,50.1
		.' Discover Nidavelir |achieve 1269/16
	step
		goto 27.3,41.9
		.' Discover Snowdrift Plains |achieve 1269/13
	step
		goto 32.2,39.6
		.' Discover Narvir's Cradle |achieve 1269/2
	step
		goto 41.3,17.4
		.' Discover Ulduar |achieve 1269/10
	step
		goto 50.3,44.7
		.' Discover Terrace of the Makers |achieve 1269/6
	step
		goto 64.8,44.8
		.' Discover Temple of Life |achieve 1269/9
	step
		goto 72.9,48.5
		.' Discover Thunderfall |achieve 1269/11
	step
		goto 64.4,59.1
		.' Discover Dun Niffelem |achieve 1269/3
	step
		goto 40.9,57.2
		.' Discover Engine of the Makers |achieve 1269/8
	step
		goto 47.8,68.2
		.' Discover Brunnhildar Village |achieve 1269/1
	step
		goto 47.1,81.6
		.' Discover Garm's Bane |achieve 1269/14
	step
	label	"storm1"
		' Explore The Storm Peaks |achieve 1269
	step
	label	"zul"
		'Skipping next part of guide |next "+grizzly" |only if step:Find("+zul1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Zul'Drak,17.0,57.3
		.' Discover Thrym's End |achieve 1267/12
	step
		goto 28.2,45.1
		.' Discover Voltarus |achieve 1267/11
	step
		goto 40.5,38.8
		.' Discover Altar of Sseratus |achieve 1267/4
	step
		goto 53.3,36.5
		.' Discover Altar of Rhunok |achieve 1267/5
	step
		goto 83.7,16.7
		.' Discover Gundrak |achieve 1267/1
	step
		goto 73.2,45.6
		.' Discover Altar of Mam'toth |achieve 1267/7
	step
		goto 76.9,59.3
		.' Discover Altar of Quetz'lun |achieve 1267/6
	step
		goto 59.3,57.8
		.' Discover Zim'Torga |achieve 1267/9
	step
		goto 64.4,68.9
		.' Discover Altar of Har'koa |achieve 1267/8
	step
		goto 62.0,77.6
		.' Discover Kolrama |achieve 1267/14
	step
		goto 48.2,56.4
		.' Discover Ampitheater of Anguish |achieve 1267/3
	step
		goto 41.7,76.8
		.' Discover Drak'Sorta Fields |achieve 1267/2
	step
		goto 32.0,76.4
		.' Discover Light's Breach |achieve 1267/13
	step
		goto 21.1,75.2
		.' Discover Zeramas |achieve 1267/10
	step
	label	"zul1"
		' Explore Zul'Drak |achieve 1267
	step
	label	"grizzly"
		'Skipping next part of guide |next "+howling" |only if step:Find("+grizzly1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Grizzly Hills,17.5,23.6
		.' Discover Drak'Tharon Keep |achieve 1266/2
	step
		goto 15.8,49.6
		.' Discover Granite Springs |achieve 1266/5
	step
		goto 21.3,65.3
		.' Discover Conquest Hold |achieve 1266/1
	step
		goto 14.5,84.4
		.' Discover Venture Bay |achieve 1266/9
	step
		goto 29.0,76.5
		.' Discover Voldrune |achieve 1266/10
	step
		goto 31.4,57.9
		.' Discover Amberpine Lodge |achieve 1266/11
	step
		goto 36.0,37.9
		.' Discover Blue Sky Logging Grounds |achieve 1266/12
	step
		goto 48.2,42.2
		.' Discover Grizzlemaw |achieve 1266/6
	step
		goto 56.8,28.4
		.' Discover Westfall Brigade Encampment |achieve 1266/14
	step
		goto 68.1,14.8
		.' Discover Thor Modan |achieve 1266/8
	step
		goto 71.8,27.9
		.' Discover Drakil'jin Ruins |achieve 1266/3
	step
		goto 64.9,45.6
		.' Discover Camp Oneqwah |achieve 1266/13
	step
		goto 77.9,59.3
		.' Discover Dun Argol |achieve 1266/4
	step
		goto 50.3,57.2
		.' Discover Rage Fang Shrine |achieve 1266/7
	step
	label	"grizzly1"
		' Explore Grizzly Hills |achieve 1266
	step
	label	"howling"
		'Skipping next part of guide |next "+end" |only if step:Find("+howling1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Howling Fjord,36.6,9.5
		.' Discover Gjalerbron |achieve 1263/9
	step
		goto 47.8,12.1
		.' Discover Camp Winterhoof |achieve 1263/3
	step
		goto 54.2,16.8
		.' Discover The Twisted Glade |achieve 1263/17
	step
		goto 60.7,12.8
		.' Discover Fort Wildervar |achieve 1263/12
	step
		goto 68.6,26.5
		.' Discover Giant's Run |achieve 1263/9
	step
		goto 78.1,27.3
		.' Discover Vengeance Landing |achieve 1263/5
	step
		goto 78.2,46.2
		.' Discover Ivald's Ruin |achieve 1263/13
	step
		goto 72.5,71.3
		.' Discover Baelgun's Excavation Site |achieve 1263/20
	step
		goto 67.9,52.8
		.' Discover Nifflevar |achieve 1263/8
	step
		goto 66.6,39.1
		.' Discover Baleheim |achieve 1263/21
	step
		goto 57.6,35.9
		.' Discover Cauldros Isle |achieve 1263/2
	step
		goto 58.3,45.9
		.' Discover Utgarde Keep |achieve 1263/18
	step
		goto 50.1,54.1
		.' Discover Halgrind |achieve 1263/14
	step
		goto 52.9,69.0
		.' Discover New Agamand |achieve 1263/15
	step
		goto 34.3,75.5
		.' Discover Scalawag Point |achieve 1263/7
	step
		goto 24.9,57.7
		.' Discover Kamagua |achieve 1263/1
	step
		goto 40.0,50.6
		.' Discover Ember Clutch |achieve 1263/10
	step
		goto 45.1,33.1
		.' Discover Skorn |achieve 1263/16
	step
		goto 30.3,41.4
		.' Discover Westguard Keep |achieve 1263/19
	step
		goto 31.3,25.9
		.' Discover Steel Gate |achieve 1263/6
	step
		goto 27.0,24.1
		.' Discover Apothecary Camp |achieve 1263/4
	step
	label	"howling1"
		' Explore Howling Fjord |achieve 1263
	step
	label	"end"
		' Congratulations! You have Explored Northrend |achieve 45 |only if achieved(45)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not fully discovered Northrend yet |only if not achieved(45)
		|confirm |next "start" |only if not achieved(45)
]])

ZygorGuidesViewer:RegisterInclude("Explorer_Pandaria",[[
	step
		goto The Jade Forest 40.0,73.0
		.' Discover Nectarbreeze Orchard |achieve 6351/8
	step
		goto 46.0,90.0
		.' Discover Garrosh'ar Point |achieve 6351/15
	step
		goto 52.1,90.8
		.' Discover Dreamer's Pavilion |achieve 6351/3
	step
		goto 52.0,82.0
		.' Discover Slingtail Pits |achieve 6351/12
	step
		goto 58.0,80.0
		.' Discover Pearl Lake |achieve 6351/5
	step
		goto 57.0,57.0
		.' Discover Temple of the Jade Serpent |achieve 6351/13
	step
		goto 47.0,60.0
		.' Discover Serpent's Heart |achieve 6351/11
	step
		goto 48.0,45.0
		.' Discover Dawn's Blossom |achieve 6351/2
	step
		goto 57.0,44.0
		.' Discover The Arboretum |achieve 6351/14
	step
		goto 65.0,30.0
		.' Discover Windward Isle |achieve 6351/16
	step
		goto 50.0,26.2
		.' Discover Emperor's Omen |achieve 6351/4
	step
		goto 46.0,29.0
		.' Discover Greenstone Quarry |achieve 6351/7
	step
		goto The Jade Forest 41.2,21.5
		.' Discover Tian Monastery |achieve 6351/1
	step
		goto 40.0,13.0
		.' Discover Terrace of Ten Thunders |achieve 6351/10
	step
		goto 29.0,13.0
		.' Discover Honeydew Village |achieve 6351/17
	step
		goto 25.0,37.0
		.' Discover Camp Nooka Nooka |achieve 6351/9
	step
		goto 25.0,48.0
		.' Discover Grookin Hill |achieve 6351/6
// Valley
	step
		goto Valley of the Four Winds 75.7,24.9
		.' Discover the Thunderfoot Ranch |achieve 6969/17
	step
		goto 60.7,27.6
		.' Discover the Pools of Purity |achieve 6969/11
	step
		goto 68.6,43.3
		.' Discover Mudmug's Place |achieve 6969/8
	step
		goto 81.53,47.92
		.' Discover Zhu's Watch |achieve 6969/18
	step
		goto 73.2,58.3
		.' Discover the Rumbling Terrace |achieve 6969/12
	step
		goto 65.2,57.4
		.' Discover Silken Fields |achieve 6969/13
	step
		goto 56.1,49.8
		.' Discover Halfhill |achieve 6969/5
	step
		goto 54.2,38.7
		.' Discover the Gilded Fan |achieve 6969/3
	step
		goto 40.4,43.1
		.' Discover the Heartland |achieve 6969/16
	step
		goto 33.1,23.5
		.' Discover the Kunzen Village |achieve 6969/7
	step
		goto 16.6,38.7
		.' Discover Paoquan Hollow |achieve 6969/10
	step
		goto 25.0,43.6
		.' Discover Singing Marshes |achieve 6969/14
	step
		goto 19.0,57.0
		.' Discover Stoneplow |achieve 6969/6
	step
		goto 13.0,75.5
		.' Discover Dustback Gorge |achieve 6969/2
	step
		goto 16.1,82.7
		.' Discover the Nesingwary Safari |achieve 6969/9
	step
		goto 35.9,68.0
		.' Discover Stormstout Brewery |achieve 6969/15
	step
		goto 52.4,63.0
		.' Discover The Imperial Granary |achieve 6969/4
	step
		goto 50.1,75.1
		.' Discover Winds' Edge |achieve 6969/1
// Krasarang
	step
		goto Krasarang Wilds 76.6,8.7
		.' Discover Zhu's Watch |achieve 6975/16
	step
		goto 80.6,25.6
		.' Discover Krasarang Cove |achieve 6975/5
	step
		goto 68.5,22.8
		.' Discover The Krasari Ruins |achieve 6975/6
	step
		goto 65.3,32.9
		.' Discover the Dojan River |achieve 6975/3
	step
		goto 68.0,44.2
		.' Discover the Anglers Wharf |achieve 6975/1
	step
		goto 53.9,37.4
		.' Discover the Ruins of Dojan |achieve 6975/9
	step
		goto 45.5,31.8
		.' Discover The Deepwild |achieve 6975/12
	step
		goto 40.0,32.5
		.' Discover Crane Wing Refuge |achieve 6975/8
	step
		goto 39.1,56.8
		.' Discover the Temple of the Red Crane |achieve 6975/11
	step
		goto 43.3,90.2
		.' Discover Unga Ingoo |achieve 6975/15
	step
		goto 40.7,82.9
		.' Discover Nayeli Lagoon |achieve 6975/7
	step
		goto 31.2,63.2
		.' Discover the Cradle of Chi-Ji |achieve 6975/2
	step
		goto 12.7,59.9
		.' Discover The Southern Isle |achieve 6975/14
	step
		goto 24.0,47.1
		.' Discover the Ruins of Korja |achieve 6975/10
	step
		goto 30.2,38.3
		.' Discover Fallsong Village |achieve 6975/4
	step
		goto 14.1,39.0
		.' Discover The Forbidden Jungle |achieve 6975/13
// Kun-Lai
	step
		goto Kun-Lai Summit 71.8,92.2
		.' Discover Binan Village |achieve 6976/1
	step
		goto 68.1,73.2
		.' Discover Muskpaw Ranch |achieve 6976/8
	step
		goto 68.6,46.6
		.' Discover the Temple of the White Tiger |achieve 6976/11
	step
		goto 75.5,11.9
		.' Discover the Isle of Reckoning |achieve 6976/4
	step
		goto 62.4,29.4
		.' Discover Zouchin Village |achieve 6976/14
	step
		goto 53.4,48.3
		.' Discover the Valley of Emperors |achieve 6976/13
	step
		goto 49.3,42.9
		.' Discover Peak of Serenity |achieve 6976/9
	step
		goto 36.7,47.9
		.' Discover Shado-Pan Monastery |achieve 6976/10
	step
		goto 44.5,55.9
		.' Discover Mount Neverest |achieve 6976/7
	step
		goto 55.4,65.9
		.' Discover the Burlap Trail |achieve 6976/12
	step
		goto 58.0,74.8
		.' Discover Mogujia |achieve 6976/6
	step
		goto 55.5,92.0
		.' Discover the Gate of the August Celestials |achieve 6976/3
	step
		goto 45.4,86.2
		.' Discover Firebough Nook |achieve 6976/2
	step
		goto 38.0,75.1
		.' Discover Kota Peak |achieve 6976/5
// Townlong
	step
		goto Townlong Steppes 67.3,44.9
		.' Discover Fire Camp Osul |achieve 6977/5
	step
		goto 56.1,53.5
		.' Discover Kri'vess |achieve 6977/2
	step
		goto 39.3,62.0
		.' Discover Niuzao Temple |achieve 6977/4
	step
		goto Townlong Steppes 28.6,25.8
		.' Discover Shan'ze Dao |achieve 6977/8
	step
		goto 26.3,39.1
		.' Discover Sra'vess |achieve 6977/10
	step
		goto 49.2,71.0
		.' Discover Shado-Pan Garrison |achieve 6977/7
	step
		goto 44.6,77.5
		.' Discover Sik'vess |achieve 6977/9
	step
		goto 54.3,79.0
		.' Discover Rensai's Watchpost |achieve 6977/3
	step
		goto 66.3,69.3
		|confirm
	step
		goto 71.3,70.5
		.' Discover the Slumprushes |achieve 6977/11
	step
		goto 82.5,72.4
		.' Discover Hatred's Vice |achieve 6977/6
	step
		goto 75.5,82.5
		.' Discover the Gao-Ran Battlefront |achieve 6977/1
// Dread
	step
		goto Dread Wastes 63.2,18.4
		.' Discover Kypari Vor |achieve 6978/3
	step
		goto 50.5,12.2
		.' Discover The Sunset Brewgarden |achieve 6978/10
	step
		goto 34.6,20.0
		.' Discover Rikkitun Village |achieve 6978/5
	step
		goto 39.6,35.0
		.' Discover the Heart of Fear |achieve 6978/1
	step
		goto 46.2,34.5
		.' Discover The Clutches of Shek'zeer |achieve 6978/9
	step
		goto 53.6,34.9
		.' Discover Klaxxi'vess |achieve 6978/2
	step
		goto 38.7,62.2
		.'Discover The Briny Muck |achieve 6978/8
	step
		goto 30.5,73.6
		.' Discover Zan'vess |achieve 6978/12
	step
		goto 55.9,70.3
		.' Discover Soggy's Gamble |achieve 6978/6
	step
		goto 59.2,60.6
		.' Discover Kypari Zar |achieve 6978/4
	step
		goto 66.0,42.2
		.' Discover Writhingwood |achieve 6978/11
	step
		goto 68.3,30.4
		.' Discover Terace of Gurthan |achieve 6978/7
// Vale
	step
		goto Vale of Eternal Blossoms 86.4,62.5
		.' Discover the Shrine of Seven Stars |achieve 6979/6
	step
		goto 79.1,36.1
		.' Discover the Mogu'shan Palace |achieve 6979/3
	step
		goto 62.0,22.6
		.' Discover the Shrine of Two Moons |achieve 6979/9
	step
		goto 56.7,43.2
		.' Discover the Golden Pagoda |achieve 6979/7
	step
		goto 44.2,15.2
		.' Discover The Golden Stair |achieve 6979/5
	step
		goto 40.5,47.0
		.' Discover Whitepetal Lake |achieve 6979/10
	step
		goto 26.6,37.2
		.' Discover the Ruins of Guo-Lai |achieve 6979/1
	step
		goto 17.4,47.9
		.' Discover The Five Sisters |achieve 6979/11
	step
		goto 18.5,71.7
		.' Discover the Setting Sun Garrison |achieve 6979/4
	step
		goto 36.3,72.0
		.' Discover Mistfall Village |achieve 6979/2
	step
		goto 48.3,69.1
		.' Discover the Tu Shen Burial Ground |achieve 6979/8
]])

--[=[
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter I: Trial of the Black Prince",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept The Strength of One's Foes##31473
		..accept Trial of the Black Prince##31468
	step
		goto Vale of Eternal Blossoms/0 11.5,58.4
		.from Krik'thik Needler##63976+, Krik'thik Locust-Guard##63974+
		.' Reach _Honored_ with the Black Prince. |q 31468/1
		|tip This will take a lot of grinding. You start out Neutral with The Black Prince, and you will have to gain about 6200 rep in order to reach Honored.
	step
		'For this next quest, you will need to join raids. |tip You can go through the raid finder to get these items.
		.' You will need to run _Mogu'shan Vaults_, _Heart of Fear_, and _Terrace of Endless Spring_ and kill bosses to get 10 _Sigil of Power_ and 10 _Sigil of Wisdom_.
		..get 10 Sigil of Power##87208 |q 31473/1
		..get 10 Sigil of Wisdom##87209 |q 31473/2
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Strength of One's Foes##31473
		..turnin Trial of the Black Prince##31468
		..accept Fear Itself##31481
	step
		'This will require you to go into the _Terrace of Endless Spring_ and take down the _Sha of Fear_. |tip You can use the Raid finder to take down this boss.
		|confirm
	step
		goto Terrace of Endless Spring 39.1,48.3
		.from Sha of Fear##60999 
		..get Chimera of Fear##87210 |q 31481/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Fear Itself##31481
		..accept Breath of the Black Prince##31482
	step
		goto The Veiled Stair/0 75.2,76.4
		.talk Wrathion##64616
		..turnin Breath of the Black Prince##31482
	step
		'Congratulations, you have obtained the _Chapter 1: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter II: Wrathion's War (Horde)",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept A Test of Valor##32476
		..accept The Measure of a Leader##32427
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		.' Talk to Wrathion about the Horde. |q 32427/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Measure of a Leader##32427
		..accept The Prince's Pursuit##32429
	step
		goto Krasarang Wilds/0 82.3,25.6
		.from Lion's Landing Priest##67512+, Dwarven Mortar Team Engineer##67545+, Shieldwall Rifleman##67297+, Shieldwall Vindicator##67296+, Shieldwall Footman##67304+, Thane Stonehearth##67636+
		.' Gain _Revered_ status with The Black Prince |q 32429/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Prince's Pursuit##32429
	step
		'You will need to acquire _3000 Valor Points_ from the time you pick up the _A Test of Valor_ quest.
		.' This quest will take around 3 weeks to complete if you hit the valor cap every week. |tip Previous valor points you acquired before accepting this quest will not count.
		|achieve 8031/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin A Test of Valor##32476
		..accept Glory to the Horde##32431
		..accept A Change of Command##32430
	step
		'Open your PvP menu [H], go to the War Games Tab, and queue up for either _Temple of Kotmogu_ and _Silvershard Mines_. |tip You will need to win a battle at both locations to complete this quest.
		.' Win a battle at _Temple of Kotmogu_. |q 32431/1
		.' Win a battle at _Silvershard Mines_. |q 32431/2
	step
		goto Krasarang Wilds 86.6,25.4
		.from High Marshal Twinbraid##67801 |q 32430/1
		|tip You may want to have someone help you to make this a little easier.
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Glory to the Horde##32431
		..turnin A Change of Command##32430
		..accept The Soul of the Horde##32432
	step
		goto The Veiled Stair/0 54.9,72.6
		.talk Wrathion##64616
		..turnin The Soul of the Horde##32432
	step
		'Congratulations, you have obtained the _Chapter 2: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter II: Wrathion's War (Alliance)",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept A Test of Valor##32474
		..accept The Measure of a Leader##32423
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		.' Talk to Wrathion about the Horde. |q 32423/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Measure of a Leader##32423
		..accept The Prince's Pursuit##32374
	step
		goto Krasarang Wilds/0 22.1,55.9
		.from Grease Worker##67281+, Drudge Mook##67284+, Refining Specialist##67283+, Dominance Raider##67346+, Bilgewater Logger##67869+
		.' Earn _Revered_ status with The Black Prince |q 32374/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Prince's Pursuit##32374
	step
		'You will need to acquire _3000 Valor Points_ from the time you pick up the _A Test of Valor_ quest.
		.' This quest will take around 3 weeks to complete if you hit the valor cap every week. |tip Previous valor points you acquired before accepting this quest will not count.
		|achieve 8030/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin A Test of Valor##32474
		..accept The Lion Roars##32389
		..accept A Change of Command##32388
	step
		'Open your PvP menu [H], go to the War Games Tab, and queue up for either _Temple of Kotmogu_ and _Silvershard Mines_. |tip You will need to win a battle at both locations to complete this quest.
		.' Win a battle at _Temple of Kotmogu_. |q 32389/1
		.' Win a battle at _Silvershard Mines_. |q 32389/2
	step
		goto Krasarang Wilds 12.2,54.6
		.from Warlord Bloodhilt##67461 |q 32388/1
		|tip You may want to have someone help you to make this a little easier.
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Lion Roars##32389
		..turnin A Change of Command##32388
		..accept Call of the Packmaster##32390
	step
		goto The Veiled Stair/0 54.9,72.6
		.talk Wrathion##64616
		..turnin Call of the Packmaster##32390
	step
		'Congratulations, you have obtained the _Chapter 2: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter III: Two Princes",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept Meet Me Upstairs##32590
	step
		goto The Veiled Stair/0 54.6,71.8
		.talk Wrathion##64616 |tip Upstairs in this Tavern.
		..turnin Meet Me Upstairs##32590
		..accept Secrets of the First Empire##32591
		..accept I Need a Champion##32592
	step
		'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
		.buy 40 Trillium Bar##102167 |next "done"
		.' Click here to farm these materials yourself |confirm |next |only if skill("Mining")>=600
	step
		map Townlong Steppes
		path	61.6,76.3	59.6,68.3	59.2,58.7
		path	63.3,51.7	62.2,44.1	66.8,39.5
		path	73.2,46.9	73.2,55.5	75.0,62.7
		path	70.5,67.1	68.5,70.7
		.' Follow the provided path.
		.collect 80 Black Trillium Ore##72094
		.collect 80 White Trillium Ore##72103
	step
		goto Vale of Eternal Blossoms/3 71.5,51.0
		.create 40 Trillium Bar##102167
	step
	label "done"
		'For this next quest, you will need to join raids. |tip You can go through the raid finder to get these items.
		.' You will need to run _Throne of Thunder_ and _Siege of Orgrimmar_ and kill bosses to get 20 _Secrets of the Empire_.
		..get 20 Secrets of the Empire##94593
	step
		 goto Isle of Thunder 43.0,55.2
		.from Animated Warrior##67473+, Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+
		.' Reach _Exalted_ with The Black Prince. |q 32592/1
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Secrets of the First Empire##32591
		..turnin I Need a Champion##32592
		..accept The Thunder Forge##32593
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		.' Tell him you're ready to go.
		|confirm
//INSERT SCENARIO INFORMATION HERE
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin The Thunder Forge##32593
		..accept Spirit of the Storm Lord##32594
	step
		goto Isle of Thunder 60.0,37.4
		.' Engage _Nalak_ and use your _Lightning Lance_ on him to charge it. |use Lightning Lance##95432
		.from Nalak##69099
		..get Tempered Lightning Lance##95433
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Spirit of the Storm Lord##32594
		..accept The Crown of Heaven##32595
	step
		goto The Veiled Stair/0 75.2,76.4
		.talk Wrathion##64616
		..turnin The Crown of Heaven##32595
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept Echoes of the Titans##32596
		..accept Heart of the Thunder King##32597
	step
		'For this next quest, you will need to join raids. |tip You can go through the raid finder to get these items.
		.' You will need to run _Throne of Thunder_ and _Siege of Orgrimmar_ and kill bosses to get 12 _Titan Runestones_.
		.' You will also need to kill _Lei Shen_ in the _Throne of Thunder_ and get the _Heart of the Thunder King_.
		..get 12 Titan Runestone##94594
		..get Heart of the Thunder King##94867
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Echoes of the Titans##32596
		..turnin Heart of the Thunder King##32597
	step
		'Congratulations, you have obtained the _Chapter III: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter IV: Two Princes",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..accept A Reckoning##32598
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin A Reckoning##32598
		..accept Celestial Blessings##32805
	step
		'Click here if you wish to do the _Healing_ challenge. |confirm |next "heals"
		'Click here if you wish to do the _Tanking_ challenge. |confirm |next "tank"
		'Click here if you wish to do the _Melee DPS_ challenge. |confirm |next "meldps"
		'Click here if you wish to do the _Ranged DPS_ challenge. |confirm |next "randps"
	step
	label "heals"
		goto The Jade Forest 59.2,59.4
		.talk Yu'lon##70989
		.' Speak with Yu'lon |q 32805/1
	step
		goto Kun-Lai Summit 68.8,43.0
		.talk Xuen##71107
		.' Speak with Xuen |q 32805/3
	step
		goto Townlong Steppes 41.8,59.2
		.talk Niuzao##71144
		.' Speak with Niuzao |q 32805/4
	step
		goto Krasarang Wilds 40.4,53.4
		.talk Chi-Ji##71169
		.' Speak with Chi-Ji |q 32805/2
	step
		goto Krasarang Wilds 40.4,53.4
		.talk Chi-Ji##71169
		.' Accept Chi-Ji's challenge
		|confirm
	step
		'During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion. You will need to keep both Wrathion and yourself alive during this fight. Deathwing has 4 main abilities:
		.' _Eyes of the Destroyer_ will cause Deathwing to fixate on Wrathion. Deathwing deals bonus damage to Wrathion, so heal him as much as possible.
		.' _Molten Fury_ is a stacking DoT that will be cast on you every time you are struck by Deathwing.
		.' _Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		.' _Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
		..' Defeat Deathwing alongside Wrathion. |q 32805/5
	step
		goto Krasarang Wilds 40.4,54.2
		.talk Wrathion##71404
		..turnin Celestial Blessings##32805
		|next "chalcomp"
	step
	label "tank"
		goto Kun-Lai Summit 68.8,43.0
		.talk Xuen##71107
		.' Speak with Xuen |q 32805/3
	step
		goto The Jade Forest 59.2,59.4
		.talk Yu'lon##70989
		.' Speak with Yu'lon |q 32805/1
	step
		goto Krasarang Wilds 40.4,53.4
		.talk Chi-Ji##71169
		.' Speak with Chi-Ji |q 32805/2
	step
		goto Townlong Steppes 41.8,59.2
		.talk Niuzao##71144
		.' Speak with Niuzao |q 32805/4
	step
		goto Townlong Steppes 41.8,59.2
		.talk Niuzao##71144
		.' Accept Niuzao's challenge
		|confirm
	step
		'During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion. You will need to keep both Wrathion and yourself alive during this fight. Deathwing has 4 main abilities:
		.' _Eyes of the Destroyer_ will cause Deathwing to fixate on Wrathion. Deathwing deals bonus damage to Wrathion, so taunt him when this is casted.
		.' _Molten Fury_ is a stacking DoT that will be cast on you every time you are struck by Deathwing.
		.' _Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		.' _Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
		..' Defeat Deathwing alongside Wrathion. |q 32805/5
	step
		goto Townlong Steppes 41.4,59.6
		.talk Wrathion##71387
		..turnin Celestial Blessings##32805
		|next "chalcomp"
	step
	label "meldps"
		goto The Jade Forest 59.2,59.4
		.talk Yu'lon##70989
		.' Speak with Yu'lon |q 32805/1
	step
		goto Krasarang Wilds 40.4,53.4
		.talk Chi-Ji##71169
		.' Speak with Chi-Ji |q 32805/2
	step
		goto Townlong Steppes 41.8,59.2
		.talk Niuzao##71144
		.' Speak with Niuzao |q 32805/4
	step
		goto Kun-Lai Summit 68.8,43.0
		.talk Xuen##71107
		.' Speak with Xuen |q 32805/3
	step
		goto Kun-Lai Summit 68.8,43.0
		.talk Xuen##71107
		.' Accept Xuen's challenge
		|confirm
	step
		'During this challenge, you will be fighting against Wrathion. You will need to keep yourself alive during this fight, and dps Wrathion as much as possible. He has roughly 31 million health. Wrathion has 5 main abilities:
		.' _Blindside_ allows you to do bonus damage to Wrathion while you're behind him. Take advantage of this as much as possible.
		.' _Crumbling Arc_ is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
		.' _Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		.' _Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark blood, and deal a ton of damage. Run out of this if you can't interrupt it.
		..' Defeat Wrathion. |q 32805/5
	step
		goto Kun-Lai Summit 68.8,43.4
		.talk Wrathion##71317
		..turnin Celestial Blessings##32805
		|next "chalcomp"
	step
	label "randps"
		goto Kun-Lai Summit 68.8,43.0
		.talk Xuen##71107
		.' Speak with Xuen |q 32805/3
	step
		goto Townlong Steppes 41.8,59.2
		.talk Niuzao##71144
		.' Speak with Niuzao |q 32805/4
	step
		goto Krasarang Wilds 40.4,53.4
		.talk Chi-Ji##71169
		.' Speak with Chi-Ji |q 32805/2
	step
		goto The Jade Forest 59.2,59.4
		.talk Yu'lon##70989
		.' Speak with Yu'lon |q 32805/1
	step
		goto The Jade Forest 59.2,59.4
		.talk Yu'lon##70989
		.' Accept Yu'lon's challenge
		|confirm
	step
		'During this challenge, you will be fighting against Wrathion. You will need to keep yourself alive during this fight, and dps Wrathion as much as possible. He has roughly 31 million health. Wrathion has 5 main abilities:
		.' _Blindside_ allows you to do bonus damage to Wrathion while you're behind him. Take advantage of this as much as possible.
		.' _Crumbling Arc_ is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
		.' _Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		.' _Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark blood, and deal a ton of damage. Run out of this if you can't interrupt it.
		..' Defeat Wrathion. |q 32805/5
	step
		goto The Jade Forest 58.6,59.2
		.talk Wrathion##71352
		..turnin Celestial Blessings##32805
		|next "chalcomp"
	step
	label "chalcomp"
		goto The Veiled Stair 73.2,79.4
		.talk Wrathion##71424
		..accept Cloak of Virtue##32861
	step
		goto The Veiled Stair 75.2,76.4
		.talk Wrathion##71424
		..turnin Cloak of Virtue##32861
		..accept Preparing to Strike##32870
	step
		'Congratulations, you have obtained the _Chapter IV: Celestial Blessings_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quest Achievements\\Pandaria\\Chapter V: Judgement of the Black Prince",[[
	description Prove your worth to Wrathion and acquire a sha-touched gem upgrade.
	condition end achieved(7533)
	step
		goto The Veiled Stair/0 54.5,72.6
		.talk Wrathion##64616
		..turnin Preparing to Strike##32870
		..accept A Timeless Discovery##33088
	step
		goto Timeless Isle/0 34.4,53.9
		.talk Wrathion##72695
		..turnin A Timeless Discovery##33088
		..accept Secrets of the Timeless Isle##33098
		..accept The Emperor's Way##33100
	step
		'Kill any creatures on the Timeless Isle, and loot treasure chests to get Timeless Coins.
		.earn 5000 Timeless Coin##777 |q 33098/1
	step
		'You will need a very large group of people on your faction to help you with this quest.
		|confirm
	step
		goto Timeless Isle/0 38.1,54.7
		.from Yu'lon##71955+ |q 33100/1
		.from Niuzao##71954+ |q 33100/4
		.from Chi-Ji##71952+ |q 33100/2
		.from Xuen##71953+ |q 33100/3
	step
		goto Timeless Isle/0 34.4,53.9
		.talk Wrathion##72695
		..turnin Secrets of the Timeless Isle##33098
		..turnin The Emperor's Way##33100
		..accept A Pandaren Legend##33104
	step
		goto Vale of Eternal Blossoms 83.2,29.6
		.talk Wrathion##72695
		..turnin A Pandaren Legend##33104
		..accept Judgement of the Black Prince##33105
	step
		'Use the Timeless Essence of the Black Dragonflight on your Epic Cape you got previously. |use Timeless Essence of the Black Dragonflight##102457
		|confirm
	step
		'For this next quest, you will need to join a _Siege of Orgrimmar_ raid. |tip You can go through the raid finder to get these items.
		.' You will need to run the _Siege of Orgrimmar_ and kill _Garrosh Hellscream_ at the end.
		.from Garrosh Hellscream##71865 |q 33105/1
	step
		goto Vale of Eternal Blossoms 83.2,29.6
		.talk Wrathion##72695
		..turnin Judgement of the Black Prince##33105
	step
		'Congratulations, you have obtained the _Chapter V: Judgement of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\FARMING",[[
INSTANCE // // TIME PER RUN


//-------------------------------
//COMPLETE
//-------------------------------

//Scarlet Monastery (6m 1s)
	step
		goto Scarlet Monastery/1 75.7,45.8
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
		goto Scarlet Halls/1 34.3,90.1
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
		goto Scholomance/1 18.1,60.9
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
		goto Stratholme/1 68.02,88.46
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
		goto Shadowfang Keep 69.46,60.97
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
		goto The Stockade 50.1,68.1
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
		goto The Deadmines/1 26.5,13.4
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
		goto Gnomeregan 64.33,28.96
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
		goto Uldaman 67.03,72.71
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
		goto Blackrock Depths 34.7,77.8
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
		goto Blackrock Spire/4 26.77,38.23
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
		goto The Shattered Halls/1 61.14,92.81
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
		goto Throne of the Tides/1 49.85,88.23
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
		goto The Slave Pens 19.95,13.37
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
		goto The Steamvault 17.59,29.76
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
		goto The Underbog 29.68,67.88
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
		goto Mana-Tombs 33.52,17.29
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
		goto Auchenai Crypts/1 44.12,75.10
		'Run through the Auchenai Crypts dungeon, killing all mobs along the way.
		..collect 40 Large Prismatic Shard##22449
		..collect 50 Lesser Planar Essence##22447
		..collect 483 Netherweave Cloth##21877
		'|meta crap_items_follow=1
		..collect 30 Mag'har Grainbread##27855
//Sethekk Halls (4m 15s) 14.12
	step
		goto Sethekk Halls 73.35,36.47
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
		goto Shadow Labyrinth 22.01,12.45
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
		goto The Mechanar/1 49.41,83.51
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
		goto The Arcatraz/1 41.26,81.70
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
		goto The Botanica/1 89.59,41.09
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
		goto Magisters' Terrace/2 42.53,90.01
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
		goto The Oculus 61.30,47.58
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
		goto Azjol-Nerub/3 9.44,93.32
		'Run through the Azjol-Nerub dungeon, killing all mobs along the way.
		..collect 44 Small Dream Shard##34053
		..collect 29 Lesser Cosmic Essence##34056
		..collect 88 Infinite Dust##34054
		'|meta crap_items_follow=1
		..collect 14 Super Healing Potion##22829
		..collect 14 Thick Fur Clothing Scraps##43852
//Ahn'Kahet: The Old Kingdom (6m 57s) 8.63
	step
		goto Ahn'kahet: The Old Kingdom 88.99,79.12
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
		goto The Violet Hold 46.15,98.03
		'Run through the Violet Hold dungeon, killing all mobs along the way.
		..collect 55 Dream Shard##34052
		..collect 63 Infinite Dust##34054
		..collect 94 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 71 Thick Fur Clothing Scraps##43852
//Forge of Souls (6m 12s) 9.68
	step
		goto The Forge of Souls 66.05,88.89
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
		goto Pit of Saron 40.91,80.52
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
		goto Halls of Reflection 47.33,80.81
		'Run through the Halls of Reflection dungeon, killing all mobs along the way.
		..collect 22 Abyss Crystal##34057
		..collect 78 Infinite Dust##34054
		..collect 17 Frostweave Cloth##33470
		'|meta crap_items_follow=1
		..collect 39 Thick Fur Clothing Scraps##43852
		..collect 11 Sparkling Frostcap##35947
//Halls of Stone (11m 58s) 5
	step
		goto Halls of Stone 34.4,36.2
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
		goto Halls of Lightning 7.38,53.81
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
		goto Drak'Tharon Keep 29.38,80.96
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
		goto Utgarde Pinnacle 44.49,16.12
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
		goto Utgarde Keep 69.27,73.00
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
		goto Blackrock Caverns 32.02,70.10
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
		goto Lost City of the Tol'vir 31.78,16.78
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
		goto The Vortex Pinnacle 54.12,16.81
		'Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
		..collect 102 Hypnotic Dust##52555
		..collect 11 Lesser Celestial Essence##52718
		..collect 23 Small Heavenly Shard##52720
		..collect 62 Embersilk Cloth##53010
		..collect 57 Volatile Air##52328
//Grim Batol (13m 31s) 4.44
	step
		goto Grim Batol 12.15,55.67
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
		goto The Stonecore 54.27,93.90
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
		goto Ragefire Chasm 62.41,7.88
		'Run through the Ragefire Chasm dungeon, killing all mobs along the way.
		..collect 100 Small Glimmering Shard##10978
		..collect 60 Strange Dust##10940
		..collect 80 Greater Magic Essence##10939
		..collect 960 Linen Cloth##2589
		'|meta crap_items_follow=1
		..collect 40 Haunch of Meat##2287
//Wailing Caverns (9m 11s) 6.53
	step
		goto Wailing Caverns 45.8,59.7
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
		goto The Blood Furnace/1 47.75,90.56
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
		goto Gundrak 58.99,30.92
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
		goto Razorfen Kraul 69.89,82.97
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
		goto Razorfen Downs 23.79,18.80
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
		goto Blackfathom Deeps 44.29,10.66
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
		goto Zul'Farrak 56.60,90.95
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

--]=]