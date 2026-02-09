local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonAMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Tank Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
.item Axe of the Tauren Chieftains##72814 |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight
.item Gauntlets of Temporal Interference##72800 |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
.item Girdle of Lost Heroes##72803 |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
.item Bloodhoof Legguards##72815 |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
.item Gloves of the Hollow##72805 |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only Druid
.item Breastplate of Tarnished Bronze##72818 |tip This item is dropped from Echo of Murozond |only DeathKnight, Paladin, Warrior
.item Time Twisted Tunic##72824 |tip This item is dropped from Echo of Murozond |only Druid
.item Chrono Boots##72819 |tip This item is dropped from Echo of Murozond |only Druid
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Dps Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
from Echo of Jaina##54445 |only Druid, Priest, Warlock, Shaman, Mage, Paladin
item Jaina's Staff##72808 |tip Two-Hand Staff |only Druid, Priest, Warlock, Shaman, Mage
item Ward of Incantations##72809 |tip Shield |only Paladin, Shaman
'_ |only Druid, Priest, Warlock, Shaman, Mage, Paladin
from Echo of Tyrande##54544 |only Shaman, Paladin, Warlock, Priest, Mage
item Crescent Moon##72812 |tip Main Hand Axe |only Shaman, Paladin
item Whisperwind Robes##72813 |tip Chest |only Warlock, Priest, Mage
'_ |only Shaman, Paladin, Warlock, Priest, Mage
from Echo of Sylvanas##54123 |only Rogue, Hunter, Druid, Shaman
item Windrunner's Bow##72810 |tip Bow |only Rogue, Hunter
item Cloak of the Banshee Queen##72811 |tip Cloak |only Druid, Rogue, Hunter, Shaman
'_ |only Rogue, Hunter, Druid, Shaman
from Echo of Jaina##54445, Echo of Tyrande##54544, Echo of Sylvanas##54123, Echo of Baine##54431 |only DeathKnight, Paladin, Warrior, Shaman, Druid, Rogue, Warlock, Priest, Mage, Hunter
item Axe of the Tauren Chieftains##72814 |tip Two-Hand Axe |only DeathKnight, Paladin, Warrior
item Dragonshrine Scepter##72804 |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
item Echoing Headguard##72806 |tip Head |only Shaman
item Breastplate of Sorrow##72801 |tip Chest |only DeathKnight, Paladin, Warrior
item Gloves of the Hollow##72805 |tip Hands |only Druid, Rogue
item Cord of Lost Hope##72798 |tip Waist |only Druid
item Echoing Headguard##72806 |tip Head |only Shaman
item Time Traveler's Leggings##72802 |tip Legs |only Warlock, Priest, Mage
item Dead End Boots##72799 |tip Feet |only Shaman, Hunter
'_ |only DeathKnight, Paladin, Warrior, Shaman, Druid, Rogue, Warlock, Priest, Mage, Hunter
from Murozond##54432 |only Rogue, Shaman, Hunter, DeathKnight, Paladin, Warrior, Priest, Mage, Warlock, Druid
item Jagged Edge of Time##72822 |tip One-Hand Dagger |only Rogue, Shaman, Hunter
item Crown of Epochs##72820 |tip Head |only DeathKnight, Paladin, Warrior
item Timeway Headgear##72823 |tip Head |only Druid
item Mantle of Time##72825 |tip Shoulder |only Mage, Warlock, Priest
item Temporal Pauldrons##72821 |tip Shoulder |only DeathKnight, Paladin, Warrior
item Robes of Fate##72826 |tip Chest |only Mage, Warlock, Priest
item Time Twisted Tunic##72824 |tip Chest |only Rogue, Druid
item Distortion Greaves##72816 |tip Hands  |only Shaman
item Arrow of Time##72897 |tip Trinket  |only Rogue, Shaman, Hunter, Druid
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Healer Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
.item Time Traveler's Leggings##72802 |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Priest
.item Waistguard of Lost Time##72807 |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Paladin
.item Cord of Lost Hope##72798 |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Druid
.item Echoing Headguard##72806 |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Shaman
.item Jaina's Staff##72808 |tip This item is dropped from Echo of Jaina. |only Druid,Priest,Shaman
.item Ward of Incantations##72809 |tip This item is dropped from Echo of Jaina. |only Shaman,Paladin
.item Crescent Moon##72812 |tip This item is dropped from Echo of Tyrande. |only Shaman,Priest,Paladin,Druid
.item Whisperwind Robes##72813 |tip This item is dropped from Echo of Tyrande. |only Priest
.item Timeway Headgear##72823 |tip This item is dropped from Murozond's Temporal Cache. |only Druid
.item Mantle of Time##72825 |tip This item is dropped from Murozond's Temporal Cache. |only Priest
.item Distortion Greaves##72816 |tip This item is dropped from Murozond's Temporal Cache. |only Shaman
.item Time Altered Legguards##72817 |tip This item is dropped from Murozond's Temporal Cache. |only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Tank Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
item Thornwood Staff##72846 |tip This item drops from Mannoroth and Varo'then |only Druid
.item Gavel of Peroth'arn##72827 |tip This item drops from Peroth'arn |only DeathKnight, Paladin, Warrior
.item Annihilan Helm##72842 |tip This item drops from Mannoroth and Varo'then |only DeathKnight, Paladin, Warrior
.item Helm of Thorns##72847 |tip This item drops from Mannoroth and Varo'then |only Druid
.item Puppeteer's Pantaloons##72835 |tip This item drops from Queen Azshara |only Druid
.item Mannoroth's Signet##72845 |tip This item drops from Mannoroth and Varo'then |only Druid
.item Queen's Boon##72837 |tip This item drops from Queen Azshara |only DeathKnight, Paladin, Warrior
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Dps Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
from Peroth'arn##55085 |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Priest, Mage, Warlock, Druid
item Trickster's Edge##72828 |tip One-Hand Axe |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman
item Orb of the First Satyrs##72829 |tip Held In Off Hand |only Paladin, Priest, Shaman, Mage, Warlock, Druid
item Girdle of the Queen's Champion##72832 |tip Waist |only Warrior, Paladin, DeathKnight
item Peroth'arn's Belt##72830 |tip Waist  |only Druid, Rogue
item Horned Band##72831 |tip Finger |only Paladin, Priest, Shaman, Mage, Warlock, Druid
'_ |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Priest, Mage, Warlock, Druid
from Queen Azshara##54853 |only Paladin, Priest, Shaman, Druid, Warrior, Hunter, Rogue, DeathKnight, Mage, Warlock
item Scepter of Azshara##72833 |tip Main Hand Mace |only Paladin, Priest, Shaman, Druid
item Cloak of the Royal Protector##72838 |tip Cloak |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
item Breastplate of the Queen's Guard##72834 |tip Chest |only Hunter, Shaman
item Puppeteer's Pantaloons##72835 |tip Legs |only Rogue, Druid
item Slipper's of Wizardry##72836 |tip Feet |only Priest, Mage, Warlock
'_ |only Paladin, Priest, Shaman, Druid, Warrior, Hunter, Rogue, DeathKnight, Mage, Warlock
from Mannoroth##54969 |only Warrior, Paladin, DeathKnight, Shaman, Druid, Hunter, Priest, Mage, Warlock, Rogue
item Pit Lord's Destroyer##72844 |tip Two-Hand Mace |only Warrior, Paladin, DeathKnight, Shaman, Druid
item Thornwood Staff##72846 |tip Two-Hand Staff |only Hunter, Druid
item Cowl of Highborne Sorcerors##72839 |tip Head |only Priest, Mage, Warlock
item Helm of Thorns##72847 |tip Head |only Rogue, Druid
item Spaulders of Eternity##72840 |tip Shoulders |only Druid
item Legguards of the Legion##72848 |tip Legs |only Hunter, Shaman
item Mannoroth's Signet##72845 |tip Finger |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
item Varo'then's Brooch##72899 |tip Trinket |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Healer Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Tank Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
item Corrupted Carapace##72855 |tip This item drops from Asira Dawnslayer |only Paladin, Warrior
.item Desecrated Shoulderguards##72868 |tip This item drops from Archbishop Benedictus |only Druid
.item Pauldrons of the Dragonblight##72861 |tip This item drops from Archbishop Benedictus |only DeathKnight, Paladin, Warrior
.item Iceward Cloak##72854 |tip This item drops from Arcurion |only DeathKnight, Paladin, Warrior
.item Wayfinder Boots##72849 |tip This item drops from Arcurion |only Druid
.item Veil of Lies##72900 |tip This item drops from Archbishop Benedictus |only Druid, Paladin, DeathKnight, Warrior
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Dps Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
from Arcurion##54590 |only Druid, Warlock, Priest, Mage, Paladin, DeathKnight, Warrior, Shaman, Rogue
item Evergreen Wristbands##76150 |tip Wrist |only Druid
item Chillbane Belt##72851 |tip Waist |only Warlock,Priest,Mage
item Arcurion Legguards##72853 |tip Legs |only Paladin,DeathKnight,Warrior
item Surestride Boots##72850 |tip Feet |only Shaman
item Wayfinder Boots##72849 |tip Feet |only Rogue,Druid
'_|only Druid, Warlock, Priest, Mage, Paladin, DeathKnight, Warrior, Shaman, Rogue
from Asira Dawnslayer##54968 |only Rogue, Shaman, Druid, Priest
item Mandible of the Old Ones##72860 |tip Off Hand Dagger |only Rogue,Shaman
item Dawnslayer Helm##72859 |tip Head |only Rogue,Shaman
item Pauldrons of Midnight Whispers##72856 |tip Shoulder |only Druid
item Cloak of Subtle Light##76151 |tip Cloak |only Priest,Druid,Shaman
item Leggings of Blinding Speed##72857 |tip Legs |only Druid
'_ |only Rogue, Shaman, Druid, Priest
from Archbishop Benedictus##54938 |only Druid, Shaman, Priest, Mage, Warlock, Rogue, Warrior, DeathKnight, Hunter, Paladin
item Stalk of Corruption##72863 |tip Two-Hand Staff |only Druid,Shaman,Priest,Mage,Warlock
item Clattering Claw##72867 |tip Main Hand Fist Weapon |only Rogue,Shaman
item Fanged Tentacle##72862 |tip Main Hand Dagger |only Mage,Shaman,Warlock,Priest,Druid
item Treachery's Bite##72866 |tip One Hand Sword |only Warrior,DeathKnight
item Dragonsmaw Blaster##72869 |tip Gun |only Hunter
item Betrayer's Pauldrons##72870 |tip Shoulder |only Hunter,Shaman
item Desecrated Shoulderguards##72868 |tip Shoulder. |only Rogue,Druid
item Mantle of False Virtue##72865 |tip Shoulder |only Mage,Pirest,Warlock
item Rosary of Light##72901 |tip Trinket |only Warrior,Paladin,DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Healer Gear",[[
description This will help you see what gear you can use in the End Time Dungeon
step
.item Evergreen Wristbands##76150 |tip This item is dropped from Arcurion. |only Druid
.item Surestride Boots##72850 |tip This item is drops from Arcurion. |only Shaman
.item Pauldrons of Midnight Whispers##72856 |tip This item is drops from Asira Dawnslayer. |only Druid
.item Cloak of Subtle Light##76151 |tip This item is drops from Asira Dawnslayer. |only Priest,Paladin,Druid,Shaman
.item Leggings of Blinding Speed##72857 |tip This item is drops from Asira Dawnslayer. |only Druid
.item Stalk of Corruption##72863 |tip This item is drops from Archbishop Benedictus. |only Druid,Shaman,Priest
.item Pauldrons of Conviction##72864 |tip This item drops from Archbishop Benedictus. |only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\End Time (ET) Tank Guide",[[
description This Guides will walk you through tanking the End of Time dungeon and questing.
author support@zygorguides.com
step
goto End Time 79.6,45.1
.talk 57864
..accept 30097
step
goto 79.6,45.0
.talk 54476
..accept 30096
step
label	"transit"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Emerald"
'In this section, you will need to start the trash by aggroing a _Nightsaber_. Once you have started, you will have to fight until the boss appears.
.' There are _Nightsabers_ and _Sentinel's_ which keep spawning, that you will have to fight constantly (they do not hit hard) and stack together to keep aggro.
.' _Run to the Moonlight_ and stay in anytime it appears, this helps with killing the mobs. When one dissappears, run to the next one that spawns.
.' _Repeat until Tyrande_ show up.
.from Time-Twisted Nightsaber##54688+
.from Time-Twisted Sentinel##54512+
|confirm
step
label	"pre_Tyrande"
goto End Time/5 51.8,42.9
.from Echo of Tyrande##54544
.' Absorb or Reflect _Moonbolt_ when possible.
.' Dodge _Moonlance_.
.' Use a Damage Modifer when Tyrande _30% Health_.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight. |confirm |next "Tyrande" |or
.' or
|confirm |next "next_1" |or
step
label	"Tyrande"
goto End Time/5 51.8,42.9
.from Echo of Tyrande##54544
.' As a tank you can either Spell Reflect or use a Spell Damage modifier for when _Tyrande_ casts _Moonbolt_, a direct damage spell she casts often.
.' _Tyrande_ throws arcane lances appear to be a streak of blue then splits into three and need to be dodged by ranged. This cannot be dodged by the Tank and will stun if it hits you.
.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Tyrande" |or
|confirm |or
step
label	"next_1"
.' Click Time Transit Device and choose one of the destinations:
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Azure"
'Clearing the trash mobs in this room is not very difficult. You want to start killing the _Priest_, then the _Riflemen_. Make sure to have the Dps kill the Fountain of Light that are summoned also.
.' If you can, _Control the Sorceress_ by using _Shackle_ or _Turn Undead_. If you cannot, kill Sorceress 2nd.
.' Below is the
.from Time-Twisted Priest##54690+
.from Time-Twisted Sorceress##54691+
.from Time-Twisted Rifleman##54693+
.from Time-Twisted Footman##54687+
|modelnpc Fountain of Light##54795+
'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
|confirm
step
label	"pre_Jaina"
.from Echo of Jaina##54445
.' Absorb or Reflect _Pyroblast_ when possible.
.' Immediately touch _Flarecore_.
.' Dodge _Frost Blades_.
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight. |confirm  |next "Jaina" |or
.' or
|confirm |next "next_2" |or
step
label	"Jaina"
.from Echo of Jaina##54445
.' _Jaina_ will _Pyroblast_ the tank throughout the whole fight, this is just a fireball that causes medium damage. This cannot be silenced but can be reflected.
.' _Jaina_ randomly creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over.
.' Rinse and repeat the fight.
.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Jaina" |or
|confirm |or
step
label	"next_2"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Ruby"
.from Time-Twisted Geist##54511+
.' Target the _Geists_ and kill the group with AoE, kill all _Geists_ first, they cause the most damage.
.' You will take massive damage after a few seconds from Bleed effects and Disease. Save any cooldowns for about 10 seconds.
'|modelnpc 54507
|confirm
step
label	"pre_Sylvanas"
goto End Time/3 55.8,39.0
.from Echo of Sylvanas##54123
.' Spread out 10 yards apart.
.' Avoid _Blighted Ground_.
.' Kill _Risen Ghoul_.
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight |confirm  |next "Sylvanas" |or
.' or
|confirm |next "next_3" |or
step
label	"Sylvanas"
goto End Time/3,55.8,39.0
.from Echo of Sylvanas##54123
.' _Sylvanas_ has two parts to her fight.
.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage and hit anyone within 10 yards of them.
.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
.' Rinse and reapeat fight.
.' Kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Sylvanas" |or
.' or
|confirm  |or
step
label	"next_3"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Obsidian"
'If you can, try and Control the _Twisted Breaker_, this mob can hit very hard.
.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. Make sure to pull a group away from the lava as you fight them.
.' Below is the _kill order_ for these mobs.
.from Time-Twisted Drake##54543+
.from Time-Twisted Seer##54553+
.from Time-Twisted Breaker##54552+
'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for good control, however depending on your gear, you can simply tank through these fights.
|confirm
step
label	"pre_Baine"
.from Echo of Baine##54431
.' Run to other rocks as they explode.
.' Use damage reduction ability during _Motlen Axe_.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight. |confirm  |next "Baine" |or
.' or
|confirm |next "next_4" |or
step
label	"Baine"
.from Echo of Baine##54431
.' You will need to start tanking _Baine_ on the right or left rocks floating in lava that you see.
.' _Baine_ has a few abilities to watch out for. When he is in the Lava, he will gain a 10 second buff _Molten Axe_ that will do additional 10k damage per hit, make sure to use cooldowns at this time as a tank.
.' If you step in the Lava briefly, you will gain a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit.
.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Baine" |or
.' or
|confirm |or
step
label	"next_4"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	 "pre_Muronzond"
.from Muronzond##54432
.' Face boss away from group.
.' Use damage reduction ability during _Infinite Breath_.
.' Rotate Boss away from _Distortion Bombs_.
.' Click _Hourglass_ to reset fight.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight. |confirm  |next "Muronzond" |or
.' or
|confirm |next "next_5" |or
step
label	"Muronzond"
.' _Muronzond_
.' As a tank you will need to face Boss aways from group. _Muronzond_ has _Tail Swipe_ so group cannot be directly behind boss.
.' Tank and Melee cannot avoid _Temporal Blast_, a small AoE that deals 25k damage, this will need to be healed through.
.' Tank will be hit with _Infinite Breath_. This is shadow damage that is dealt in a cone in front of _Muronzond_ and will follow tank if he moves left or right. This will need to be healed through.
.' When tanking, you will have to pay attention to _Distortion Bombs_, which will be cast at ranged players and leave a circle or arcane on the ground. Move the boss slightly in a circle to allow ranged to avoid standing directly behind the boss in order to avoid these.
.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives all health and clears the _Distortion Bombs_ on the ground.
.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
.from Muronzond##54432 |only if not havequest(30096)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Muronzond" |or
.' or
|confirm |or
step
label	"next_5"
.' After you kill Murozond wait for Alurmi
.talk 57864
..turnin 30097
step
goto 52.1,44.5
.talk 54751
..turnin 30096
step
goto 52.1,44.5
.talk 54751
..accept 30098
step
goto 52.1,44.5
.talk 54751
.' Tell him
.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\End Time (ET) Damage Guide",[[
dungeon 820
description This Guides will walk you through tanking the End of Time dungeon and questing.
author support@zygorguides.com
step
goto End Time,79.6,45.1
.talk 57864
..accept 30097
step
goto 79.6,45.0
.talk 54476
..accept 30096
step
goto 79.7,45.4
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Emerald"
'For this section, the tank should start by attacking the _Nightsabers_ and _Sentinel's_
'When the Moonlight rays randonly appear on the map you need to run over to them.
.'AoE the rounded up mobs if you can, otherwise just kill them while they are standing in the beam of light.
.'_Repeat until Tyrande_ show up.
.from Time-Twisted Nightsaber##54688+
.from Time-Twisted Sentinel##54512+
|confirm
step
.from Echo of Tyrande##54544
.' Tyrande will cast _Eyes of the Goddess_ which move around the outside of the pool causing damage and silencing players.
.' It is best to remain in the pool to avoid these, but the pool will reduce your casting speed so use any speed increasing abilities you have to counteract this.
.' Tyrande will will send out waves of _Moonlance_ which you will need to avoid.
.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
|confirm
step
.' Click Time Transit Device and choose one of the destinations:
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Azure"
'Your party will need to make their way around the map clearing trash and collecting fragments,
.'The kill order should be _Priest_ first, then the _Riflemen_. As a DPS you will need to kill the Fountain of Light that appear also.
.' Below is the mobs you will encounter:
.from Time-Twisted Priest##54690+
.from Time-Twisted Sorceress##54691+
.from Time-Twisted Rifleman##54693+
.from Time-Twisted Footman##54687+
|modelnpc Fountain of Light##54795+
'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
|confirm
step
.from Echo of Jaina##54445
.' _Jaina_ periodically creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over.
.' Rinse and repeat the fight.
.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
|confirm
step
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Ruby"
.from Time-Twisted Geist##54511+
.' Target the and kill all _Geists_ first, they cause the most damage.
'|modelnpc 54507
|confirm
step
.from Echo of Sylvanas##54123
.' _Sylvanas_ has two parts to her fight.
.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage.
.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will say "watch as Death surrounds you" and pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe the party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
.' Rinse and reapeat fight.
.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
|confirm
step
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Obsidian"
'Clear the dragons as a group.
.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. The tank should pull a group away from the lava as you fight them.
.' Below is the _kill order_ for these mobs.
.from Time-Twisted Drake##54543+
.from Time-Twisted Seer##54553+
.from Time-Twisted Breaker##54552+
'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for extra crowd control if needed.
|confirm
step
.from Echo of Baine##54431
.' The tank should start attacking _Baine_ on the right or left rocks floating in lava that you see.
.' Do damage to _Baine_ on the same platform he is standing on.
.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.
.' Falling into the Lava will give you a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit. This is unavoidable when moving platforms but try to stay out as much as possible.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
|confirm
step
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Bronze"
.' Muronzond has a frontal attack called _Infinite Breath_ that you will need to avoid. The tank should keep him turned in a way that prevents this from happening.
.' When tanking, you will have to pay attention to _Distortion Bombs_, which will gradually fill the area with temporal rifts you will want to stay away from.
.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, which will revive everyones health and clear the _Distortion Bombs_ on the ground.
.from Murozond##54432 |only if not havequest(30096)
|confirm |only if not havequest(30096)
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
step
.' After you kill Murozond wait for Alurmi
.talk 57864
..turnin 30097
step
goto 52.1,44.5
.talk 54751
..turnin 30096
step
goto 52.1,44.5
.talk 54751
..accept 30098
step
goto 52.1,44.5
.talk 54751
.' Tell him
.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\End Time (ET) Healer Guide",[[
description This Guides will walk you through tanking the End of Time dungeon and questing.
author support@zygorguides.com
step
goto End Time,79.6,45.1
.talk 57864
..accept 30097
step
goto 79.6,45.0
.talk 54476
..accept 30096
step
label	"transit"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Emerald"
'Follow your tank as they pull mobs.
.' _Run to the Moonlight_ and stay in anytime it appears, this helps with killing the mobs. When one dissappears, run to the next one that spawns.
.' _Repeat until Tyrande_ show up.
|confirm
step
label	"pre_Tyrande"
goto End Time/5,51.8,42.9
.from Echo of Tyrande##54544
.' Dodge _Moonlances_
.' Avoid _Eyes of the Goddess_.
.' At 30% health, she uses _Tears of Elune_. Extra heals may be needed.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight |confirm |next "Tyrande" |or
.' or
|confirm |next "next_1" |or
step
label	"Tyrande"
goto End Time/5 51.8,42.9
.from Echo of Tyrande##54544
.' As a Healer you may need to use AoE heals. _Moonlance_ can be dispelled if a party member is hit by it and appear to be a streak of blue that splits into three and need to be dodged by ranged.
.' _Piercing Gaze of Elune_ can also be dispelled.
.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm  |next "pre_Tyrande" |or
|confirm |or
step
label	"next_1"
.' Click Time Transit Device and choose one of the destinations:
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Azure"
'The mobs in this room don't hit very hard, though the fights can be lengthy depending on your groups damage.
'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
|confirm
step
label	"pre_Jaina"
.from Echo of Jaina##54445
.' Immediately touch _Flarecore_.
.' Dodge _Frost Blades_	.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight |confirm  |next "Jaina" |or
.' or
|confirm |next "next_2" |or
step
label	"Jaina"
.from Echo of Jaina##54445
.' _Jaina_ randomly creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over.
.' Use _Resistance Auras_ if you have them.
.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Jaina" |or
|confirm |or
step
label	"next_2"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Ruby"
.from Time-Twisted Geist##54511+
.' _Dispel diseases_ from group members.
'|modelnpc 54507
|confirm
step
label	"pre_Sylvanas"
goto End Time/3,55.8,39.0
.from Echo of Sylvanas##54123
.' Spread out 10 yards apart.
.' Avoid _Blighted Ground_.
.' Dispel _Shriek of the Highborne_ if you can dispel magic.
.' _Unholy Shot_ deals out moderate damage, heal it.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight |confirm  |next "Sylvanas" |or
.' or
|confirm |next "next_3" |or
step
label	"Sylvanas"
goto End Time/3,55.8,39.0
.from Echo of Sylvanas##54123
.' _Sylvanas_ has two parts to her fight.
.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage and hit anyone within 10 yards of them.
.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
.' You can use the time to recooperate your mana if need be.
.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Sylvanas" |or
.' or
|confirm |or
step
label	"next_3"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	"Obsidian"
'If you can, try and Control the _Twisted Breaker_, this mob can hit very hard.
.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. Make sure to pull a group away from the lava as you fight them.
.' Below is the _kill order_ for these mobs.
.from Time-Twisted Drake##54543+
.from Time-Twisted Seer##54553+
.from Time-Twisted Breaker##54552+
'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for good control, however depending on your gear, you can simply tank through these fights.
|confirm
step
label	"pre_Baine"
.from Echo of Baine##54431
.' Run to other rocks as they explode.
.' _Molten Axe_ increases Baines damage output.
.' Use _resistance aura's_ if you have them.
.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
.' Click here for more details of the boss fight |confirm  |next "Baine" |or
.' or
|confirm |next "next_4" |or
step
label	"Baine"
.from Echo of Baine##54431
.' _Baine_ will gain _Molten Axe_ when dragged through lava. Extra heals will be needed.
.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.
.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Baine" |or
.' or
|confirm |or
step
label	"next_4"
.' Click Time Transit Device and choose one of the destinations:
.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
.' or
.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
.' or
.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
.' or
.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label	 "pre_Muronzond"
.from Muronzond##54432
.' Don't be in front of behind the boss.
.' Avoid _Distortion Bombs_.
.' Click _Hourglass_ to reset fight.
.' Click here for more details of the boss fight |confirm |next "Muronzond" |or
.' or
|confirm |next "next_5" |or
step
label	"Muronzond"
.' _Muronzond_
.' _Muronzond_ has _Tail Swipe_ so group cannot be directly behind boss.
.' Tank and Melee cannot avoid _Temporal Blast_, a small AoE that deals 25k damage, this will need to be healed through.
.' Tank will be hit with _Infinite Breath_. This is shadow damage that is dealt in a cone in front of _Muronzond_ and will follow tank if he moves left or right. This will need to be healed through.
.' _Distortion Bombs_ will be cast at ranged players and leave a circle or arcane on the ground. Move the boss slightly in a circle to allow ranged to avoid standing directly behind the boss in order to avoid these.
.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives all health and clears the _Distortion Bombs_ on the ground.
.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
.from Muronzond##54432 |only if not havequest(30096)
.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Muronzond" |or
.' or
|confirm |only if not havequest (30096) |or
step
label	"next_5"
.' After you kill Murozond wait for Alurmi
.talk 57864
..turnin 30097
step
goto 52.1,44.5
.talk 54751
..turnin 30096
..accept 30098
step
goto 52.1,44.5
.talk 54751
.' Tell him
.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Well of Eternity (WoE) Tank Guide",[[
step
goto Well of Eternity,27.3,64.2
.talk 55624
..turnin 30098
step
goto Well of Eternity,27.3,64.2
.talk 55624
..accept 30099
step
goto 26.0,63.0
.talk 57864
..accept 30104
step
goto Well of Eternity 26.2,65.6
.from Legion Demon##55503
.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
|confirm |only if not havequest(30104)
step
goto Well of Eternity 19.6,68.8
.talk 55500
.' <I am ready to be hidden by your shadowcloak>.
|confirm
step
goto 27.1,56.7
'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable the First portal. |q 30099/1 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 18.7,38.4
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Second portal. |q 30099/2 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 15.9,35.1
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Third portal |q 30099/3 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
label	"pre_Peroth"
goto 19.5,52.0
.' Tanks take 20% increased damage during this fight.
.' At _60%_ Peroth'arn will vanish, _avoid_ the _Eyes of Peroth'arn_ at all costs.
.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
.from Peroth'arn##55085 |only if not havequest(30099)
.' Click here for a more detailed boss fight. |confirm |next "Peroth" |or
.' or
|confirm |next "part2" |or
step
label	"Peroth"
goto 19.5,52.0
.' Tanks will receive a debuff that increases their damage taken by 20%, this is unavoidable.
.' _Fel Decay_ will target a random player, then leave an AoE circle on the ground. Stay out of this.
.' At _60% health_, Peroth'arn will _stun the group_, and deal shadow damage for 4 seconds. He will vanish after this and the group can recover before the eyes spawn.
.' While he is stealthed, _avoid detection_ by the _Eyes of Peroth'arn_. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
.from Peroth'arn##55085 |only if not havequest(30099)
.' Click here for a less detailed boss fight. |confirm |next "pre_Peroth" |or
.' or
|confirm |or
step
label	"part2"
goto 29.4,40.0
.talk 55624
..turnin 30099
step
goto 29.4,40.0
.talk 55624
..accept 30100
step
goto 33.6,35.1
.' Walking along this path you will encounter groups of 3.
.' Kill spellcasters first as they do damage to the whole group.
.from Enchanted Highmistress##56579
.from Enchanted Magus##54882
.from Eternal Champion##54612
|confirm
step
goto 31.5,29.4
.from Eye of the Legion##54747
.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
|confirm
step
goto 43.7,27.3
.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
.from Royal Handmaiden##54645+
.' Archive Royal Handmaiden |q 30104/2
|only if havequest(30104)
step
label	"pre_Queen"
goto 47.2,36.9
.' Kill all the commanded _Magus'_.
.' Interrupt Queen Azhara's _Total Obedience_.
.from Queen Azshara##54853
.' Click here for a more detailed boss fight. |confirm |next "Queen" |or
.' or
|confirm |next "part3" |or
step
label	"Queen"
goto 47.2,36.9
.' Tank can start the fight by _hitting or taunting Queen Azshara_: |tip *NOTE* You will not attack the Queen, killing all guards will end the fight.
.' The _Queen_ will _summon 2 Magus'_ to life to attack the group. These will be summoned about _every 30 seconds_. Pick these adds up.
.' The Queen will often use the spell _Total Obedience_ and charm your entire party. _Interrupt_ this or it will kill your group. It is best to have a _ranged DPS, or a healer_ that can _interrupt_ this at all times.
.' There are 3 types of Magus' that will be summoned in pairs.Each of these use basic spells and keeping aggro will allow your group to survive.
.from Queen Azshara##54853
.' Defeat Queen Azshara. |q 30100/1 |only if havequest(30100)
.' Click here for a less detailed boss fight. |confirm |next "pre_Queen" |or
.' or
|confirm
step
label	"part3"
goto 43.9,32.9
.' Click the Time Transit Device.
.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
step
goto 71.7,80.6
.talk 55624
..accept 30101
step
goto Well of Eternity 73.2,77.7
.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
.from Doomguard Annihilator##55519+
|confirm
step
goto 83.8,61.2
.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
.from Abyssal Doombringer##55510
|confirm
step
label	"pre_Mannoroth"
goto 84.7,55.0
.from Captain Varo'then##55419
.' Avoid _Fel Firestorm_
.' Keep threat on Demons from open Portal.
.' Once in Demon form, kill Mannoroth.
.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
.from Mannoroth##54969 |only if not havequest(30101)
.' Click here for a more detailed boss fight. |confirm |next "Mannoroth" |or
.' or
|confirm |next "part4" |only if not havequest(30101) or not havequest(30104)|or
step
label	"Mannoroth"
goto 84.7,55.0
.' _PART ONE_
.from Captain Varo'then##55419
.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_. This jumps to any player nearby.
.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it.
.' _PART TWO_
.' After Varo'then is dead, click the sword that falls and start attacking Mannoroth, you will not have to hold threat. After a short time, a portal will open releasing lots of Doomguards and Demons.
.' Stand near the portal and aoe any demon that comes out. _Tyrande Whisperwind_ will cast _Light of Elune_, bringing all demons in this light kills them much faster.
.' Continue picking up demons and killing them until Mannoroth is weak. When he gets to 40%, your entire party will be turned into demons, at this point the fight is over. Fight until Mannoroth retreats.
.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
.' Click here for a less detailed boss fight. |confirm always |next "pre_Mannoroth"
.' or
|confirm |only if not havequest(30101)
step
label	"part4"
goto 87.8,49.9
.talk 57864
..turnin 30104
step
goto 84.6,55.9
.talk 55532
..turnin 30101
step
goto 87.3,49.3
.talk 57913
..accept 30102
step
goto 87.3,49.3
.talk 57913
.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Well of Eternity (WoE) Damage Guide",[[
dungeon 816
step
goto Well of Eternity,27.3,64.2
.talk 55624
..turnin 30098
step
goto Well of Eternity,27.3,64.2
.talk 55624
..accept 30099
step
goto 26.0,63.0
.talk 57864
..accept 30104
step
goto Well of Eternity,26.2,65.6
.from Legion Demon##55503
.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
|confirm |only if not havequest(30104)
step
goto Well of Eternity 19.6,68.8
.talk 55500
.' <I am ready to be hidden by your shadowcloak>.
|confirm
step
goto 27.1,56.7
'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable the First portal. |q 30099/1 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 18.7,38.4
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Second portal. |q 30099/2 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 15.9,35.1
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Third portal |q 30099/3 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 19.5,52.0
.' _Fel Decay_ will target a random player, then leave an AoE circle on the ground. Stay out of this.
.' At _60% health_, Peroth'arn will _stun the group_, and deal shadow damage for 4 seconds. He will vanish after this, giving you time to recover.
.' While he is stealthed, _avoid detection_ by the _Eyes of Peroth'arn_. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
.' He will return if the group remains undetected by the _Eyes of Peroth'arn_ for 40 seconds.
.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
.from Peroth'arn##55085 |only if not havequest(30099)
|confirm |only if not havequest(30099)
step
goto 29.4,40.0
.talk 55624
..turnin 30099
step
goto 29.4,40.0
.talk 55624
..accept 30100
step
goto 33.6,35.1
.' Walking along this path you will encounter groups of 3.
.' Kill spellcasters first as they do damage to the whole group.
.from Enchanted Highmistress##56579
.from Enchanted Magus##54882
.from Eternal Champion##54612
|confirm
step
goto 31.5,29.4
.from Eye of the Legion##54747
.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
|confirm
step
goto 43.7,27.3
.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
.from Royal Handmaiden##54645+
.' Archive Royal Handmaiden |q 30104/2
|only if havequest(30104)
step
goto 47.2,36.9
.' *NOTE* You will not attack the Queen, killing all guards will end the fight.
.' The _Queen_ will _summon 2 Magus'_ to life to attack the group. These will be summoned about _every 30 seconds_.
.' The Frost Magus unleashes a very powerful attack you will want to dodge called _Coldflame_. This looks like a blue line of energy on the ground. You will know it's coming by the spinning blue circles that appear before it hits.
.' The Queen will often use the spell _Total Obedience_ and charm your entire party. _Interrupt_ this or it will kill your group. It is best to have a _ranged DPS, or a healer_ that can _interrupt_ this at all times.
.' She will also cast _Servant of the Queen_ which mind controls a player. Kill the puppet strings above that character to release them.
.from Queen Azshara##54853
.' Defeat Queen Azshara |q 30100/1 |only if havequest(30100)
|confirm
step
goto 43.9,32.9
.' Click the Time Transit Device
.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
step
goto 71.7,80.6
.talk 55624
..accept 30101
step
goto Well of Eternity,73.2,77.7
.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
.from Doomguard Annihilator##55519+
|confirm always
step
goto 83.8,61.2
.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
.from Abyssal Doombringer##55510
|confirm
step
goto 84.7,55.0
.' _PART ONE_
.from Captain Varo'then##55419
.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_. This jumps to any player nearby.
.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it.
.' _PART TWO_
.' After Varo'then is dead, click the sword that falls and start attacking Mannoroth. After a short time, a portal will open releasing lots of Doomguards and Demons.
.' Stand near the portal and aoe any demon that comes out until Tyrande Whisperwind is free.
.' Attack Mannoroth and avoid the fire that rains from the sky. If you attract any adds run to your tank so that he may pick them up.
.' Attack Mannoroth until he gets to 40%. At this point, your entire party will be turned into demons and the fight is over. Fight until Mannoroth retreats.
.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
|confirm |only if not havequest(30101)
step
goto 87.8,49.9
.talk 57864
..turnin 30104
step
goto 84.6,55.9
.talk 55532
..turnin 30101
step
goto 87.3,49.3
.talk 57913
..accept 30102
step
goto 87.3,49.3
.talk 57913
.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Well of Eternity (WoE) Healer Guide",[[
description This guide will walk you through the Well of Eternity
description instance with quests involved from a Healers perspective.
step
goto Well of Eternity,27.3,64.2
.talk 55624
..turnin 30098
step
goto Well of Eternity,27.3,64.2
.talk 55624
..accept 30099
step
goto 26.0,63.0
.talk 57864
..accept 30104
step
goto Well of Eternity,26.2,65.6
.from Legion Demon##55503
.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby
.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
|confirm |only if not havequest(30104)
step
goto Well of Eternity 19.6,68.8
.talk 55500
.' <I am ready to be hidden by your shadowcloak>.
|confirm
step
goto 27.1,56.7
'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable the First portal. |q 30099/1 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 18.7,38.4
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Second portal |q 30099/2 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 15.9,35.1
.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
.click Portal Energy Focus##6905
.' Disable Third portal |q 30099/3 |only if havequest(30099)
|confirm |only if not havequest(30099)
step
goto 19.5,52.0
.' Tanks take 20% increased damage during this fight.
.' For this fight, be careful of healing those with the Fel Decay debuff. You will take equal damage that your heals do to that target.
.' He randomly places a DoT called _Fel Flames_ on a party member, so be ready to heal through it.
.' When he hits 60%, he will deal massive AoE damage, so be sure to heal up the party before hand.
.' He will return if the group remains undetected by the _Eyes of Peroth'arn_ for 40 seconds. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
.from Peroth'arn##55085 |only if not havequest(30099)
|confirm |only if not havequest(30099)
step
goto 29.4,40.0
.talk 55624
..turnin 30099
step
goto 29.4,40.0
.talk 55624
..accept 30100
step
goto 33.6,35.1
.' Walking along this path you will encounter groups of 3.
.' Kill spellcasters first as they do damage to the whole group.
.from Enchanted Highmistress##56579
.from Enchanted Magus##54882
.from Eternal Champion##54612
|confirm
step
goto 31.5,29.4
.from Eye of the Legion##54747
.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
|confirm
step
goto 43.7,27.3
.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
.from Royal Handmaiden##54645+
.' Archive Royal Handmaiden |q 30104/2
|only if havequest(30104)
step
goto 47.2,36.9
.' The adds Queen Azshara summons will place random AoE spells on the ground, avoid them if at all possible.
.' If you have any form of interrupt, use it to interrupt _Total Obedience_, which Queen Azshara casts herself. It will be a wipe if you don't.
.from Queen Azshara##54853
.' Defeat Queen Azshara. |q 30100/1 |only if havequest(30100)
|confirm |only if not havequest(30100)
step
goto 43.9,32.9
.' Click the Time Transit Device.
.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
step
goto 71.7,80.6
.talk 55624
..accept 30101
step
goto Well of Eternity 73.2,77.7
.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
.from Doomguard Annihilator##55519+
|confirm
step
goto 83.8,61.2
.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
.from Abyssal Doombringer##55510
|confirm
step
goto 84.7,55.0
.' _PART ONE_
.from Captain Varo'then##55419
.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_. This jumps to any player nearby.
.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it.
.' _PART TWO_
.' After Varo'then is dead, click the sword that falls.
.' Your tank will be picking up a lot of adds so this is where the majority of your attention should be.
.' When Mannoroth reaches 40% your entire group will be turned into demons, at this point the fight is over.
.' Archive Captain Varo'then |q 30104/3 |only if havequest(30104)
.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
.from Mannoroth##54969  |only if not havequest(30101)
|confirm |only if not havequest(30101) or not havequest(30104)
step
goto 87.8,49.9
.talk 57864
..turnin 30104
step
goto 84.6,55.9
.talk 55532
..turnin 30101
step
goto 87.3,49.3
.talk 57913
..accept 30102
step
goto 87.3,49.3
.talk 57913
.' Tell Chromie
.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Hour of Twilight (HoT) Tank Guide",[[
step
goto Hour of Twilight,48.7,19.7
.talk 54548
..turnin 30102
..accept 30103
step
goto Hour of Twilight,48.7,19.7
.talk 54548
.' <Yes Thrall>
|confirm always
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	50.9,20.3	52.3,21.6	53.9,23.1
.' Follow this path and kill the groups.
.' Talk to Thrall when you are ready to face the boss.
|confirm always
step
label	"pre_Arcurion"
goto 56.7,27.4
.from Arcurion##54590
.' Avoid _Icy Boulders_.
.' Interrupt or use damage reduction ability on _Hand of Frost_.
.' At 30% use damage modifiers as needed.
.' Click here for a more detailed boss fight. |confirm |next "Arcurion" |or
.' or
|confirm |next "part2"
step
label	"Arcurion"
goto 56.7,27.4
'Arcurion will cast _Hand of Frost_ dealing _50k damage_ to his target.
.' Arcurion will cast _chains of frost_, freezing all targets (65yds) and _dealing 10k damage_.
.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are throwing _Icy Boulders_ and you will freeze if caught in it.
.' Keep _Thrall out of the Ice block_ by damaging it when he is frozen, he will keep the Frozen Servitors at a minimum for less circles.
.' At _30% health_, boss will do a _massive aoe_ in which all damage needs to be directed at boss for final blows.
.from Arcurion##54590
.' Click here for a less detailed boss fight. |confirm |next "pre_Arcurion" |or
.' or
|confirm
step
label "part2"
.talk 54548
.' <Lead the Way>
|confirm always
step
goto 43.7,45.3
.talk 54548
.' <Yes Thrall lets do this>
|confirm always
step
map Hour of Twilight
path follow loose;loop off;ants straight
path	45.5,47.1	45.6,49.0
path	43.0,50.0	40.4,48.7
.' _Follow Thrall_ through this canyon.
.' You will have to fight a _few groups_ through this area.
.from Twilight Assassin##55106+
.from Twilight Thug##55111+
.from Twilight Bruiser##55112+
.from Twilight Ranger##55107+
.from Twilight Shadow-Walker##55109+
'|modelnpc 55474
|confirm always
step
label	"pre_Asira"
goto Hour of Twilight,39.5,52.4
.from Asira Dawnslayer##54968
.' Avoid _Choking Smoke Bomb_.
.' Stan in _Thrall's Fire Totem_.
.' Click here for a more detailed boss fight. |confirm |next "Asira" |or
.' or
|confirm |next "part3"
step
label	"Asira"
goto Hour of Twilight,39.5,52.4
.' Asira will _mark_ a random _spellcaster_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits.
.' Asira will create _Choking Smoke Bomb_ which will not allow players to target into this cloud, while also inflicting _5k Nature damage_ every .5 seconds.
.' Make sure to stand near _Thall's Fire Totem_, this will _increase health and damage_ of party members nearby.
.from Asira Dawnslayer##54968
.' Click here for a less detailed boss fight |confirm |next "pre_Asira" |or
.' or
|confirm |next "part3"
step
label	"part3"
goto Hour of Twilight 39.5,52.4
.from Asira Dawnslayer##54968
.collect Urgent Twilight Missive##77957 |n
.' Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
..accept 30105
step
goto 40.1,50.8
.clicknpc Life Warden##55549
|invehicle |c
step
.' You will land next to Thrall on the road to Wyrmrest Temple.
|outvehicle |c
step
map Hour of Twilight
path follow loose; loop off; straight
path	49.8,70.2	49.7,71.7	49.4,75.4
path	49.4,81.0
path	49.6,82.8
.' _Follow Thrall_ through this canyon.
.' Kill the _Shadow Borer's first_, they interrupt and stop healing.
.from Faceless Shadow Weaver##54633+
.from Faceless Brute##54632+
.from Shadow Borer##54686+
.' Enter Wyrmrest Temple here. |goto Hour of Twilight 49.6,82.8 <5|noway |c
step
label	"pre_Bishop"
goto Hour of Twilight/2 47.2,50.9
.from Archbishop Benedictus##54938
.' Spread out 10 yards.
.' Avoid _Wave of Virtue_ stand in blue shell.
.' Avoid _Wave of Twilight_ run to the side.
.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
.' Click here for a more detailed boss fight |confirm |next "Bishop" |or
.' or
|confirm |next "part4"
step
label	"Bishop"
goto Hour of Twilight/2 47.2,50.9
.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts.
.' Thrall will help with the first part of the fight, he will put a blue shell on the ground that you can use for protection and a damage buff. Stand in his _Water Shell_ whenever you see it.
.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run to the side to avoid or stand in the _Water Shell_ for the first part of fight.
.' Archbishop will target a random member and cast _Twilight Shear_ or _Purifying Blast_ dealing damage to the target and nearby friendly players.
.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference is that Thrall will be trapped and damage will be shadow instead of holy.
.from Archbishop Benedictus##54938
.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
.' Click here for a less detailed boss fight |confirm |next "pre_Bishop" |or
.' or |only if havequest(30103) or havequest(30105)
|confirm |only if havequest(30103) or havequest(30105)
step
label	"part4"
goto 46.9,45.0
.talk 54971
..turnin 30103
..turnin 30105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Hour of Twilight (HoT) DPS Guide",[[
dungeon 819
step
goto Hour of Twilight,48.7,19.7
.talk 54548
..turnin 30102
..accept 30103
step
goto Hour of Twilight,48.7,19.7
.talk 54548
.' <Yes Thrall>
|confirm always
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	50.9,20.3	52.3,21.6	53.9,23.1
.' Follow this path and kill the groups.
.' Talk to Thrall when you are ready to face the boss.
|confirm always
step
goto 56.7,27.4
.' Arcurion will cast _Chains of Frost_, freezing all targets in place and _dealing 10k damage_.
.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are _throwing boulders_ and you will freeze if caught in it.
.' Keep _Thrall out of the Ice block_ by damaging it when he is frozen, he will keep the Frozen Servitors at a minimum for less circles.
.' At _30% health_, Arcurion will do a _massive aoe_, burn him down.
.from Arcurion##54590
|confirm always
step
.talk 54548
.' <Lead the Way>
|confirm always
step
goto 43.7,45.3
.talk 54548
.' <Yes Thrall lets do this>
|confirm always
step
map Hour of Twilight
path follow loose;loop off;ants straight
path	45.5,47.1	45.6,49.0
path	43.0,50.0	40.4,48.7
.' _Follow Thrall_ through this canyon.
.' You will have to fight a _few groups_ through this area.
.from Twilight Assassin##55106+
.from Twilight Thug##55111+
.from Twilight Bruiser##55112+
.from Twilight Ranger##55107+
.from Twilight Shadow-Walker##55109+
'|modelnpc 55474
|confirm always
step
goto Hour of Twilight,39.5,52.4
.' Asira will use _Mark of Silence_ on a random _spellcaster_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits.
.' Boss will create _Choking Smoke Bomb_ which will not allow players to target while in this cloud. It will also inflict _5k Nature damage_ every .5 seconds.
.' Make sure to stand near _Thall's Fire Totem_ if you can, this will _increase health and damage_ of party members nearby.
.from Asira Dawnslayer##54968
|confirm always
step
goto Hour of Twilight,39.5,52.4
.from Asira Dawnslayer##54968
.collect Urgent Twilight Missive##77957 |n
.' Click the Urgent Twilight Missive in your bags |use Urgent Twilight Missive##77957
..accept 30105
step
goto 40.1,50.8
.clicknpc Life Warden##55549
|invehicle |c
step
.' You will land next to Thrall on the road to Wyrmrest Temple
|outvehicle |c
step
map Hour of Twilight
path follow loose; loop off; straight
path	49.8,70.2	49.7,71.7	49.4,75.4
path	49.4,81.0
path	49.6,82.8
.' _Follow Thrall_ through this canyon.
.' As Damage you should kill the _Shadow Borer's first_, as they interrupt and stop healing.
.from Faceless Shadow Weaver##54633+
.from Faceless Brute##54632+
.from Shadow Borer##54686+
.' Enter Wyrmrest Temple here |goto Hour of Twilight,49.6,82.8,1|noway |c
step
goto Hour of Twilight/2,47.2,50.9
.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts.
.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run over to Thrall's blue _Water shield_ when you see this coming.
.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference is that Thrall will be trapped and damage will be shadow instead of holy.
.from Archbishop Benedictus##54938
|confirm always
step
goto 46.9,45.0
.talk 54971
..turnin 30103
..turnin 30105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Hour of Twilight (HoT) Healer Guide",[[
description This guide will walk you through the Hour of Twilight
description instance with quests involved from a Healers perspective.
step
goto Hour of Twilight,48.7,19.7
.talk 54548
..turnin 30102
..accept 30103
step
goto Hour of Twilight,48.7,19.7
.talk 54548
.' <Yes Thrall>
|confirm always
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	50.9,20.3	52.3,21.6	53.9,23.1
.' Follow this path and kill the groups.
.' Talk to Thrall when you are ready to face the boss.
|confirm always
step
label	"pre_Arcurion"
goto 56.7,27.4
.from Arcurion##54590
.' Avoid _Icy Boulders_
.' Dispel _Chains of Ice_. Mass Dispel is extremely effective here.
.' At 30% use Area of Effect healsa long with resistance aura's if you have them.
.' Click here for a more detailed boss fight. |confirm |next "Arcurion" |or
.' or
|confirm |next "part2"
step
label	"Arcurion"
goto 56.7,27.4
'Arcurion will cast _Hand of Frost_ dealing _50k damage_ to his target.
.' Arcurion will cast _chains of frost_, freezing all targets (65yds) and _dealing 10k damage_.
.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are throwing _Icy Boulders_ and you will freeze if caught in it.
.' At _30% health_, boss will do a _massive aoe_ in which you will need to use _Resistance Auras_, _Area of Effect Heals_ or _Big Heals_ as needed.
.from Arcurion##54590
.' Click here for a less detailed boss fight |confirm |next "pre_Arcurion" |or
.' or
|confirm
step
label "part2"
.talk 54548
.' <Lead the Way>
|confirm always
step
goto 43.7,45.3
.talk 54548
.' <Yes Thrall lets do this>
|confirm always
step
map Hour of Twilight
path follow loose;loop off;ants straight
path	45.5,47.1	45.6,49.0
path	43.0,50.0	40.4,48.7
.' _Follow Thrall_ through this canyon.
.' You will have to fight a _few groups_ through this area.
.from Twilight Assassin##55106+
.from Twilight Thug##55111+
.from Twilight Bruiser##55112+
.from Twilight Ranger##55107+
.from Twilight Shadow-Walker##55109+
'|modelnpc 55474
|confirm always
step
label	"pre_Asira"
goto Hour of Twilight,39.5,52.4
.from Asira Dawnslayer##54968
.' Avoide _Choking Smoke Bomb_.
.' Stand in _Thrall's Fire Totem_.
.' Use _Large or Area of Effect Heals_ as needed.
.' Click here for a more detailed boss fight. |confirm |next "Asira" |or
.' or
|confirm |next "part3"
step
label	"Asira"
goto Hour of Twilight,39.5,52.4
.' Asira will _mark spellcasters_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits. Use _Big Heals_.
.' Asira will create _Choking Smoke Bomb_ which will not allow players to target into this cloud, while also inflicting _5k Nature damage_ every .5 seconds.
.' Make sure to stand near _Thall's Fire Totem_, this will _increase health and damage_ of party members nearby.
.from Asira Dawnslayer##54968
.' Click here for a less detailed boss fight |confirm |next "pre_Asira" |or
.' or
|confirm |next "part3"
step
label	"part3"
goto Hour of Twilight 39.5,52.4
.from Asira Dawnslayer##54968
.collect Urgent Twilight Missive##77957 |n
.' Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
..accept 30105
step
goto 40.1,50.8
.clicknpc Life Warden##55549
|invehicle |c
step
.' You will land next to Thrall on the road to Wyrmrest Temple.
|outvehicle |c
step
map Hour of Twilight
path follow loose; loop off; straight
path	49.8,70.2	49.7,71.7	49.4,75.4
path	49.4,81.0
path	49.6,82.8
.' _Follow Thrall_ through this canyon.
.' Kill the _Shadow Borer's first_, they interrupt and stop healing.
.from Faceless Shadow Weaver##54633+
.from Faceless Brute##54632+
.from Shadow Borer##54686+
.' Enter Wyrmrest Temple here. |goto Hour of Twilight 49.6,82.8 |noway |c
step
label	"pre_Bishop"
goto Hour of Twilight/2,47.2,50.9
.from Archbishop Benedictus##54938
.' Spread out 10 yards.
.' Avoid _Wave of Virtue_ stand in blue shell.
.' Avoid _Wave of Twilight_ run to the side.
.' Dispel _Righteous Shear_ as well as _Twilight Shear_.
.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
.' Click here for a more detailed boss fight. |confirm |next "Bishop" |or
.' or
|confirm |next "part4"
step
label	"Bishop"
goto Hour of Twilight/2,47.2,50.9
.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts.
.' Thrall will help with the first part of the fight, he will put a blue shell on the ground that you can use for protection and a damage buff. Stand in his _Water Shell_ whenever you see it.
.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run to the side to avoid or stand in the _Water Shell_ for the first part of fight.
.' Archbishop will target a random member and cast _Twilight Shear_ or _Purifying Blast_ dealing damage to the target and friendly players.
.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference is that Thrall will be trapped and damage will be shadow instead of holy.
.' Area of Effect Heals will be need during some phases.
.from Archbishop Benedictus##54938
.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
.' Click here for a less detailed boss fight. |confirm |next "pre_Bishop" |or
.' or |only if havequest(30103) or havequest(30105)
|confirm |only if havequest(30103) or havequest(30105)
step
label	"part4"
goto 46.9,45.0
.talk 54971
..turnin 30103
..turnin 30105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Ragefire Chasm (RFC) 15-18",[[
dungeon 680
description This guide will walk you through the Ragefire Chasm dungeon.
achieveid 629
author support@zygorguides.com
step
label	"start"
goto Ragefire Chasm 69.4,11.0
.talk 61823
..accept 30998
..accept 30996
step
goto 68.3,12.8
.talk 61822
..accept 30997
..accept 30995
step
'Follow this path down, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing |goto 65.9,21.6 <5
step
'_As you go through this Dungeon:_
.from Corrupted Houndmaster##61666+, Corrupted Flamecaller##61705+, Dark Shaman Acolyte##61672+, Corrupted Reaver##61678+
.get 5 Corrupted Insignia |q 30998/1 |n
|confirm
|only if not completedq(30998)
step
goto 68.7,64.2
.from Adarogg##61408 |only if not havequest(30997)
.kill Adarogg##61408 |q 30997/1 |only if havequest(30997)
|confirm |only if not havequest(30997)
step
goto 65.0,70.8
.talk 61780
.' Tell him:
.' <It's Safe to come out now.>
|confirm
|only if not completedq(30995)
step
'Follow this path up, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing. |goto 61.5,69.1 <5
step
goto 53.0,26.1
.talk 61790
.' Tell him:
.' <It's Safe to come out now.>
|confirm
|only if not completedq(30995)
step
goto 51.8,31.7
.from Dark Shaman Koranthal##61412 |only if not havequest(30996)
.kill Dark Shaman Koranthal##61412 |q 30996/1 |only if havequest(30996)
|confirm |only if not havequest(30996)
step
goto 38.6,58.6
.from Slagmaw##61463 |only if not havequest(30997)
.kill Slagmaw##61463 |q 30997/2 |only if havequest(30997)
|confirm |only if not havequest(30997)
step
goto 42.8,66.5
.clicknpc SI:7 Ranger##61788
|confirm
|only if not completedq(30995)
step
goto 33.7,81.4
.from Lava Guard Gordoth##61528 |only if not havequest(30996)
.kill Lava Guard Gordoth##61528 |q 30996/2 |only if havequest(30996)
|confirm |only if not havequest(30996)
step
goto 36.1,84.3
.click Scout Cages
.' Rescue 5 SI:7 Rangers |q 30995/1
|modelnpc SI:7 Ranger##61788
|only if havequest(30995)
step
'_Make sure you have:_
.from Corrupted Houndmaster##61666+, Corrupted Flamecaller##61705+, Dark Shaman Acolyte##61672+, Corrupted Reaver##61678+
.get 5 Corrupted Insignia |q 30998/1
|only if havequest(30998)
step
goto 33.5,80.6
.talk 61823
..turnin 30998
..turnin 30996
step
goto 31.7,76.5
.talk 61822
..turnin 30997
..turnin 30995
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Deadmines (DM) 15-18",[[
dungeon 756
description This guide will walk you through the Deadmines dungeon.
achieveid 628
step
label "start"
goto The Deadmines 30.3,28.6
.talk 46612
..accept 27756
step
goto 37.7,61.2
.from Glubtok##47162 |only if not havequest(27756)
.kill Glubtok##47162 |q 27756/1 |only if havequest(27756)
|confirm |only if not havequest(27756)
|only if not heroic_dung()
step
goto 37.7,61.2
.' _Glubtok_
.' Phase 1:
.' He will _Blink_ occasionally, dropping threat of all enemies. The tank will need to provoke immediately after.
.' Phase 2:
.' When he casts _Fire Blossom_, Fire Blossom creatures spawn and need to be picked up by the tank.
.' When he casts _Frost Blossom_. Frost Blossom Creatures spawn and need to be picked up by the tank.
.from Glubtok##47162 |only if not havequest(27756)
.kill Glubtok |q 27756/1 |only if havequest(27756)
|confirm |only if not havequest(27756)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up.
..turnin 27756
step
goto 43.8,79.6
.click Heavy Door##400
|confirm
step
.' Once inside, click the Quest Discovered Box that pops up.
..accept 27758
step
goto 49.0,87.4 |n
.from Lumbering Oaf##47297
.from Helix Gearbreaker##47296 |only if not havequest(27758)
..kill Helix Gearbreaker##47296 |q 27758/1 |only if havequest(27758)
|confirm |only if not havequest(27758)
|only if not heroic_dung()
step
goto 49.0,87.4 |n
.from Lumbering Oaf##47297
.' Phase 1 (Lumbering Oaf):
.' Avoid _Sticky Bombs_ on the ground.
.' The Lumbering Oaf will periodically use _Oaf Smash_, picking up a player and slamming them, dealing 100% of the players health as damage.
.' The Lumbering Oaf will use _Throw Helix_ onto a player for 10 seconds,
.' After Throw Helix, there will be a _Chest Bomb_ on the player, dealing 46k-57k fire damage.
.' _Helix' Crew_ throws bombs at random players throughout the entire fight.
.' Phase 2:
.' Helix will use _Leap_ to random players, attacking for 10 seconds before moving to the next.
.' After Throw Helix, there will be a _Chest Bomb_ on the player, dealing 46k-57k fire damage.
.from Helix Gearbreaker##47296 |only if not havequest(27758)
..kill Helix Gearbreaker##47296 |q 27758/1 |only if havequest(27758)
|confirm |only if not havequest(27758)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up.
..turnin 27758
step
goto 61.0,75.0
.click Heavy Door##400
|confirm
step
.' Click the Quest Completion Box that pops up.
..accept 27781
step
.' Clear the Goblin Foundry of Defias Watchers.
.from Defias Watcher##47404+
|confirm
step
goto The Deadmines/2 10.0,82.7
.from Foe Reaper 5000##43778 |only if not havequest(27781)
..kill Foe Reaper 5000##43778 |q 27781/1 |only if havequest(27781)
|confirm |only if not havequest(27781)
|only if not heroic_dung()
step
goto The Deadmines/2 10.0,82.7
.' _Foe Reaper 5000_
.' If you're the _Prototype Reaper_ pilot, click here. |confirm |next "Proto_Reap"
.' The Foe Reaper 5000 will use _Overdrive_ which will cause it to move around randomly, attacking anyone near him as well as knocking them back.
.' It will also use _Harvest_ which targets a random player, the move to where they are. It attacks anyone in front of him within a 60 degree cone. Once at the target location, it will preform a sweep attack, dealing damage to anyone within 10 yards.
.' At 30% of his total health, he will use _Safety Restrictions Off-line_ which increases his damage by 100% for the duration of the fight.
.' Avoid being in it's path when it uses it's abilities and you should be fine.
.from Foe Reaper 5000##43778 |only if not havequest(27781)
..kill Foe Reaper 5000##43778 |q 27781/1 |only if havequest(27781)
|confirm |next "canon_blast" |only if not havequest(27781)
|only if heroic_dung()
step
label "Proto_Reap"
.' You will spend your time at the bottom of the ramp, waiting for _Molten Slag_ to spawn.
.' You will have 2 abilities to use to control the adds.
.' Use _Reaper Strike_ twice in a row, then use _Reaper Charge_ to stun them.
.' Repeat this until they are defeated.
.from Molten Slag##49229+
|confirm
|only if heroic_dung()
step
label "canon_blast"
.' Click the Quest Completion Box that pops up.
..turnin 27781
step
goto The Deadmines/2 27.9,52.7
.click Defias Cannon##245
|confirm
step
.' Click the Quest Completion Box that pops up.
..accept 27785
step
.' Proceed along the docks avoiding the cannonballs that are being shot at the ground. |goto 53.0,20.7 <5 |noway|c
step
'Follow the ramp up to the top of the ship. |goto 57.8,33.4 <5 |c
step
goto 63.9,39.5
.' _Admiral Ripsnarl_
.' Has a _Swipe_ ability, so attack him from behind.
.' Has the _Thirst for Blood_ ability, moving faster and gaining attack speed each time he hits, stacking up to 20 times) |only if heroic_dung()
.' He will use _Go For the Throat_ through the entire fight. It damages then stuns targets for 2 seconds. |only if heroic_dung()
.' At 75%, 50% and 25% He will summon a fog.
.' During the fog, he will _Summon Vapors_ which need to be killed as soon as possible. They will grow larger before they explode, potentially killing anyone nearby. |only if heroic_dung()
.from Admiral Ripsnarl##47626 |only if not havequest(27785)
.kill Admiral Ripsnarl##47626 |q 27785/1 |only if havequest(27785)
|confirm |only if not havequest(27785)
step
.' Click the Quest Completion Box that pops up.
..turnin 27785 |only if havequest(27785)
..accept 27790
step
goto 60.6,44.5
.' _"Captain" Cookie_
.' He will throw food on the ground. If it does not say _Rotten_ then it's safe to click. You will get a haste buff each time you consume food.
..from "Captain" Cookie##47739 |only if not havequest(27790)
..kill "Captain" Cookie##47739 |q 27790/1 |only if havequest(27790)
|confirm |only if not havequest(27790)
step
.' A note will appear on the ground
.' Don't click it until your group is ready, it will start the _Vanessa VanCleef_ event.
.' Once you click it, Vanessa will come out and poison you.
.' When you awaken you'll be suspended above a lava pool. |goto 12.7,80.1 <8 |c
|only if heroic_dung()
step
goto 12.4,71.8
.' Click the _Vent Lever_ to avoid being lowered into the Lava. There will be green arrows indicating where the levers are.
.' Once you click it, you will land at the top of the spiral stairs.
.' You will be dazed and fires will appear. _Avoid the fires at all cost_ they deal out massive damage.
.' Make your way down the ramp. |goto 12.4,71.8 <5 |c
|only if heroic_dung()
step
.from Glubtok##47162
.' After you defeat Glubtok, _Helix Gearbreaker_  will appear at the door.
.' The group needs to collapse at the door, as spiders will spawn and fill the room.
.' Avoid aggroing the spiders if possible.
.from Helix Gearbreaker##47296
|confirm
|only if heroic_dung()
step
goto 29.5,50.2
.' Once the doors open there will be several rotating chains of sparks that you have to avoid as you progress.
.' Most of the time, if you touch them you will be killed, so avoid them while making your way to the coordinates.
.from Foe Reaper 5000##43778
.' Note that you should let your tank go first, since the boss will aggro.
|confirm
|only if heroic_dung()
step
goto 51.6,44.7
.' Follow the deck onto the ship.
.' You will need to save _Emma Harrington_, _Erik Harrington_ and _Calissa Harrington_ from the worgen.
.' Kill any packs of Worgen that you see.
.' Once you're at _Calissa Harrington_, burn down _Admiral Ripsnarl_ fast.
|confirm
|only if heroic_dung()
step
goto 58.9,38.7
.' Make your way back up to the main part of the ship. |goto 58.9,38.7 <5 |noway|c
|only if heroic_dung()
step
.' _Vanessa VanCleef_
.' She will use _Deflection_, which deflects all ranged, melee and spell attacks for 10 seconds. She will use the ability when her health is higher than 25%.
.' She will use _Deadly Blades_, randomly attack party members.
.' She will use _Backslash_ dealing 9k to 10k damage.
.' At 50%, she will use _Fiery Blaze_ which deals 46k to 53k fire damage every second. When this happens, ropes will appear at the end of the deck. Click them to avoid the damage.
.' There will also be adds that need to be picked up by the tank.
.' When Vanessa is at 1% of her total health, she will use _Powder Explosion_, Move as far away from her as possible to avoid death.
.from Vanessa VanCleef##49541
|confirm
|only if heroic_dung()
step
goto 60.9,38.8
.talk 46612
..turnin 27790
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Wailing Caverns (WC) 18-23",[[
dungeon 749
description This guide will walk you through the Wailing Caverns dungeon.
achieveid 630
step
label "start"
goto Wailing Caverns 46.6,59.2
.talk 5768
..accept 26870
step
goto 46.6,58.4
.talk 5767
..accept 26872
..accept 26873
step
' Do the following as you move through the instance
.from Deviate Ravager##3636+, Deviate Guardian##3637+, Deviate Crocolisk##5053+
..get 10 Deviate Hide |q 26872/1
.click Serpentbloom##390+
..get 5 Serpentbloom |q 26873/1
|confirm
step
goto 29.7,43.9
.from Lady Anacondra##3671 |only if not havequest(26870)
.kill Lady Anacondra##3671 |q 26870/2 |only if havequest(26870)
|confirm |only if not havequest(26870)
step
map Wailing Caverns
path loop off; strict
path	28.2,40.1	19.6,45.2	9.2,33.5
path	13.7,33.9	19.8,41.6
.' Jump in the water and follow this path
.from Lord Pythas##3670 |only if not havequest(26870)
..kill Lord Pythas##3670 |q 26870/3 |only if havequest(26870)
|confirm |only if not havequest(26870)
step
map Wailing Caverns
path loop off; strict
path	17.4,28.3	15.4,24.1	5.7,27.8
path	15.6,58.4
.' Follow this path and kill Lord Cobrahn.
.from Lord Cobrahn##3669 |only if not havequest(26870)
..kill Lord Cobrahn##3669 |q 26870/1 |only if havequest(26870)
|confirm |only if not havequest(26870)
step
goto 15.8,51.8 |n
.' Jump down here and follow the path to the right. |goto 15.8,51.8 <5 |noway |c
step
.' If you haven't already killed Kresh, then you will find him walking in this little river.
.from Kresh##3653
|confirm
step
goto 60.7,72.1
.from Skum##3674
|confirm
step
goto 55.0,87.6 |n
.' Follow this path up and around. |goto 55.0,87.6 <5 |noway |c
step
map Wailing Caverns
path follow strict; loop off
path	54.8,83.1	55.2,71.7	50.7,61.8
path	72.8,67.7	69.2,82.9	54.4,76.3
path	54.6,60.4	62.2,53.8
.from Lord Serpentis##3673 |only if not havequest(26870)
.kill Lord Serpentis##3673 |q 26870/4 |only if havequest(26870)
|confirm |only if not havequest(26870)
step
goto 56.4,47.5
.from Verdan the Everliving##5775
|confirm
step
goto 54.5,39.5 |n
.' Jump down this hole. |goto 54.5,39.5 <5 |noway |c
step
goto Wailing Caverns,46.6,59.2
.talk 5768
..turnin 26870
step
goto 46.6,58.4
.talk 5767
..turnin 26872
..turnin 26873
step
goto 46.5,56.0
.talk 3678
.' Tell him
.' <Let the event begin!>
|confirm
step
goto 37.1,20.9 |n
.' Escort and Protect Muyoh until you get to the boss. |goto 37.1,20.9 <5 |noway |c
step
goto 34.0,15.6 |n
.' Protect Muyoh
.' There will be 2 waves of mobs that attack him, then the boss will appear.
.from Mutanus the Devourer##3654
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Shadowfang Keep (SFK) 18-23",[[
dungeon 764
description This guide will walk you through the Shadowfang Keep dungeon.
achieveid 631
author support@zygorguides.com
step
label	"start"
goto Shadowfang Keep 62.2,57.3
.talk 47006
..accept 27917
step
map Shadowfang Keep
path follow loose; loop off
path	72.8,50.5	61.1,44.4	60.7,54.9
path	58.5,63.8
.' Follow this path and kill any mobs you come in contact with. |goto 58.5,63.8 <5 |noway |c
step
goto 67.5,72.7
.' _Baron Ashbury_ |only if heroic_dung()
.' He will commonly cast _Pain and Suffering_, which needs to be interrupted fast each time. An interrupt rotation should be established. |only if heroic_dung()
.' Note that any class that can dispel magic effect can remove Pain and Suffering. |only if heroic_dung()
.' He will cast _Asphyxiate_, which will drop the groups health to 1. |only if heroic_dung()
.' Immediately after, _Stay of Execution_ which heals the party for 10% health per tick, as well as giving him 5% health each tick. The trick is to get your health up by 20% before interrupting. |only if heroic_dung()
.' As the fight progresses,_Wracking Pains_ stacks will begin to appear on players. It increases your shadow damage vulnerability by 20% as well as inflicting shadow damage. This effect stacks. |only if heroic_dung()
.' At 25% health, he will cast _Calamity_, dealing out 5,000 shadow damage as well as increasing shadow damage enemies take every second. |only if heroic_dung()
.from Baron Ashbury##46962 |only if not havequest(27917)
.kill Baron Ashbury##46962 |q 27917/1 |only if havequest(27917)
|confirm |only if not havequest(27917)
step
goto 66.4,72.1
.talk 47006
..turnin 27917
..accept 27920
step
goto Shadowfang Keep 55.2,65.8 |n
.' Go out into the Courtyard. |goto Shadowfang Keep 55.2,65.8 <5 |noway |c
step
goto 36.8,39.6 |n
.' Enter the Dining Hall here. |goto 36.8,39.6 <5 |noway |c
step
goto Shadowfang Keep/2 31.2,73.3
.' _Baron Silverlaine_ |only if heroic_dung()
.' He will cast _Veil of Shadow_, which reduces healing taken by 50%. |only if heroic_dung()
.' It can be removed by anyone who can remove Curses. |only if heroic_dung()
.' He will also cast _Cursed Veil_ effecting all party members within 40 yards, dealing 24k to 25k shadow damage, along with reducing healing taken by 75%. |only if heroic_dung()
.' Cursed Veil can be removed by anyone who can remove magic. |only if heroic_dung()
.' At 90%, 60% and 30% he will cast _Summon Worgen Spirits_. |only if heroic_dung()
.' _Odo the Blindwatcher_ just deals damage. |only if heroic_dung()
.' _Razorclaw the Butcher_ stuns targets furthest away from them. He also drains health based on his damage done. |only if heroic_dung()
.' _Rethilgore_ drains health from enemy targets, stunning them. Heals for twice the amount that he drains. |only if heroic_dung()
.' _Wolf Master Nandos_ summons Lupine Spirits with low health. |only if heroic_dung()
.from Baron Silverlaine##3887 |only if not havequest(27920)
.kill Baron Silverlaine##3887 |q 27920/1 |only if havequest(27920)
|confirm |only if not havequest(27920)
step
'Run up the stairs and follow the hallway to the _left_. |goto 27.4,89.5 <5 |c
step
goto Shadowfang Keep 28.4,58.6
_Commander Springvale_
.' He will cast _Word of Shame_ on random party members, causing 5% of the players health every 3 seconds until he or the player is defeated. |only if heroic_dung()
.' During the fight, he will summon 2 _Wailing Guardsmans_ and _Tormented Officers_ to assist him. The tank should pick them up. |only if heroic_dung()
.' He will often use _Shield of the Perfidious_ which shoots a cone attack in front of him. It expands to 150 degrees and should be avoided. |only if heroic_dung()
.from Commander Springvale##4278 |only if not havequest(27920)
.kill Commander Springvale##4278 |q 27920/2 |only if havequest(27920)
|confirm |only if not havequest(27920)
step
goto 35.8,65.3 |n
.' Follow the stairs and go outside. |goto Shadowfang Keep/7 25.1,75.0 <5 |noway |c
step
goto Shadowfang Keep/7,48.8,83.0
.talk 47006
..turnin 27920
..accept 27921
step
map Shadowfang Keep/7
path follow loose; loop off
path	57.4,90.6	68.2,82.3	71.4,58.6
path	43.5,46.8	45.9,39.9	44.4,30.3
.' Follow this path through the dungeon, kill any mobs you come in contact with. |goto Shadowfang Keep/3 44.7,29.6 <5 |noway |c
step
map Shadowfang Keep/3
path follow strict; loop off
path	48.8,46.5	57.6,10.1	64.7,38.2
path	51.6,81.1
.' Follow this path through the dungeon, kill any mobs you come in contact with. |goto Shadowfang Keep/4 51.6,81.1 <5 |noway |c
step
.' Follow the stairwell up. |goto Shadowfang Keep/3 51.9,90.1 <5 |c
step
goto Shadowfang Keep/4 54.2,54.3
.' _Lord Walden_ |only if heroic_dung()
.' He will fire _Ice Shards_ randomly around the room, damaging enemies within 2 yards of where it lands. |only if heroic_dung()
.' He will use _Conjure Poisonous Mixture_, which will reduce your movement speed by 40% as well as leave a dot. |only if heroic_dung()
.' He will use _Toxic Coagulent_, which will be explained below: |only if heroic_dung()
.' When he has a _Red Aura_ around him, _do not move!_ You will take extra damage for each step you take. |only if heroic_dung()
.' When he has a _Green Aura_ around him, _Move around constantly!_ You will take extra damage the longer you don't move. |only if heroic_dung()
.' These effects stack up to 3 times and by the third stack you are stunned for 5 seconds. |only if heroic_dung()
.' At 35% of his total health, he will use _Toxic Catalyst_, dealing out 13k to 16k Fire damage every two seconds and increasing the targets critical strike rating to 100%. |only if heroic_dung()
.from Lord Walden##46963 |only if not havequest(27921)
.kill Lord Walden##46963 |q 27921/1 |only if havequest(27921)
|confirm |only if not havequest(27921)
step
goto 60.2,41.2
.talk 47006
..turnin 27921
..accept 27968
step
map Shadowfang Keep/5
path follow strict; loop off
path	58.6,27.3	36.8,65.2
.' Follow the path up the stairs. |goto Shadowfang Keep/5 37.0,64.8 <5 |noway |c
step
goto Shadowfang Keep/6 61.6,23.8
.' _Lord Godfrey_ |only if heroic_dung()
.' He will often cast _Cursed Bullets_ on a random target. It can be _interrupted_. |only if heroic_dung()
.' If it doesn't get interrupted it will deal out significant shadow damage every 3 seconds, increasing over time. Anyone who can remove curses can dispel it. |only if heroic_dung()
.' He will use _Pistol Barrage_ often, an attack that deals out 30k damage to anyone within a 60 degree cone in front of him. Avoid at all costs. |only if heroic_dung()
.' He will place _Mortal Wound_ on the tank, reducing healing taken by 5%, stacking 10 times. |only if heroic_dung()
.' Throughout the fight, he will _Summon Bloodthirsty Ghouls_ that have low health. They should be picked up and killed quickly. |only if heroic_dung()
.from Lord Godfrey##46964 |only if not havequest(27968)
.kill Lord Godfrey##46964 |q 27968/1 |only if havequest(27968)
|confirm |only if not havequest(27968)
step
goto Shadowfang Keep/6,58.7,53.2
.talk 47006
..turnin 27968
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Blackfathom Deeps (BFD) 22-27",[[
dungeon 688
description This guide will walk you through the Blackfathom Deeps dungeon.
achieveid 632
author support@zygorguides.com
step
label	"start"
goto Blackfathom Deeps 47.9,13.5
.talk 33256
..accept 26881
step
goto 47.9,13.1
.talk 33258
..accept 26884
step
goto 48.5,12.0
.talk 33260
..accept 26883
step
goto 48.5,11.6
.talk 33261
..accept 26885
step
'As you traverse Blackfathom Deeps make sure you pick up the following:
.get 8 Corrupted Brain Stem |q 26884/1
.get 10 Twilight Pendant |q 26883/1
|confirm
step
'Climb over the rocks here. |goto 46.0,44.7 <5 |c
step
goto 32.8,41.3
.click Pitted Iron Chest##10
..get Lorgalis Manuscript |q 26885/1
|only if havequest(26885)
step
goto Blackfathom Deeps 23.7,45.5 |n
.' Swim under the water here. |goto Blackfathom Deeps 23.7,45.5 <5 |noway |c
step
goto Blackfathom Deeps,10.1,36.1
.from Lady Sarevess##4831
|confirm
step
goto Blackfathom Deeps 24.4,46.5 |n
.' Swim under the water here. |goto Blackfathom Deeps 24.4,46.5 <5 |noway |c
step
goto Blackfathom Deeps,33.5,59.4
.from Ghamoo-Ra##4887
|confirm
step
goto 27.1,72.2 |n
'Swim underwater to pass through the tunnel. |goto 27.1,72.2 <5 |noway|c
|only if havequest(26881) or not completedq(26882)
step
goto 20.8,75.3
.talk 4787
..turnin 26881
..accept 26882
step
goto 26.1,73.1 |n
'Swim underwater to pass through the tunnel. |goto 26.1,73.1 <5 |noway |c
|only if havequest(26881) or not completedq(26882)
step
'Swim back out of the passage. |goto 27.4,72.2 <5 |c
|only if not completedq(26882)
step
.' Follow this hallway. |goto Blackfathom Deeps 32.5,90.2 <5 |c
step
goto 52.3,55.3
.from Gelihast##6243
|confirm
step
goto 58.9,72.1 |n
.' Go here and to your right. |goto Blackfathom Deeps/2 37.5,29.6 <5 |noway|c
step
.' Follow these stairs to the right and go down the path. |goto 40.8,65.8 <5 |c
step
goto 51.5,81.6
.from Twilight Lord Kelris##4832
.get Head of Kelris |q 26882/1 |only if havequest(26882)
|confirm |only if not havequest(26882)
step
goto 52.3,80.8
.click Fire of Aku'mai##00524
.' Each time you click a Fire, you will have adds come from the right and left side of the room.
.' Click all 4 of them before continuing.
|confirm
step
goto 79.1,84.2
.from Aku'mai##4829
|confirm
step
.from Blackfathom Sea Witch##4805+, Fallenroot Shadowstalker##4798+, Blackfathom Myrmidon##4807+
.get 8 Corrupted Brain Stem |q 26884/1
.from Twilight Reaver##4810+, Twilight Aquamancer##4811+, Twilight Loreseeker##4812+, Twilight Acolyte##4809+, Twilight Shadowmage##4813+, Twilight Elementalist##4814+
.get 10 Twilight Pendant |q 26883/1
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Blackfathom Deeps 48.5,12.0
.talk 33260
..turnin 26883
step
goto 48.5,11.6
.talk 33261
..turnin 26885
step
goto 48.6,13.6
.talk 33256
..turnin 26882
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\The Stockade (STOCKS) 22-27",[[
dungeon 690
description This guide will walk you through the Stockade dungeon.
achieveid 633
author support@zygorguides.com
step
label	"start"
goto The Stockade 50.0,58.5
.talk 46417
..accept 27733
step
goto 55.3,53.0
.talk 46410
..accept 27737
step
goto 42.5,53.9
.talk 46409
..accept 27739
step
goto 50.8,19.2
.from Randolph Moloch##46383 |only if not havequest(27733)
.kill Randolph Moloch##46383 |q 27733/1 |only if havequest(27733)
|confirm |only if not havequest(27733)
step
goto 81.0,48.0
.from Lord Overheat##46264
.get Lord Overheat's Fiery Core |q 27737/1 |only if havequest(27737)
|confirm |only if not havequest(27737)
step
goto 22.1,27.0
.from Hogger##46254 |only if not havequest(27739)
.kill Hogger##46254 |q 27739/1 |only if havequest(27739)
|confirm |only if not havequest(27739)
step
goto 22.1,27.1
.talk 46409
..turnin 27739
step
goto 56.1,53.9
.talk 46410
..turnin 27737
step
goto 50.0,58.1
.talk 46417
..turnin 27733
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Gnomeregan (Gnomer) 26-31",[[
dungeon 691
description This guide will walk you through the Gnomeregan dungeon.
achieveid 634
author support@zygorguides.com
step
label "start"
goto Gnomeregan 63.1,33.3
.talk 44556
..accept 26939
step
goto 81.9,65.1
.talk 7998
.' Tell her:
.' <I am ready to begin>
|confirm
step
goto 77.1,69.9
.' Get ready for the wall to break and kill lots of mobs.
.' There will be 2 waves, about 15-20 enemies.
|confirm
|modelnpc Caverndeep Ambusher##6207+, Caverndeep Burrower##6206+
step
goto 76.3,64.3
.' Get ready for the wall to break and to kill lots of mobs.
.' There will be 2 waves, about 15-20 enemies.
.from Chomper##6215, Grubbis##7361
|confirm
|modelnpc Caverndeep Ambusher##6207+, Caverndeep Burrower##6206+
step
goto 57.6,51.4 |n
.' Jump down from this ledge, onto the big gear below. |goto Gnomeregan/2 83.3,46.4 <5|noway |c
step
goto 77.0,47.0
'Viscous Fallout patrols around this area.
.from Viscous Fallout##7079 |only if not havequest(26939)
.kill Viscous Fallout##7079 |q 26939/1 |only if havequest(26939)
|confirm |only if not havequest(26939)
step
goto 65.4,47.0
.talk 44560
..turnin 26939
..accept 26941
step
.' Follow the path down to thie area, run around the ramp clockwise. |goto 39.3,67.5 <5 |c
step
.' Follow this ramp up. |goto 14.1,64.8 <5 |c
step
goto 23.7,68.3
.from Electrocutioner 6000##6235 |only if not havequest(26941)
.kill Electrocutioner 6000##6235 |q 26941/1 |only if havequest(26941)
|confirm |only if not havequest(26941)
step
goto Gnomeregan/2 23.4,72.9 |n
.' Jump down here to turn in your quest. |goto Gnomeregan/3 27.1,35.6 <5 |noway |c
step
goto 24.0,39.0
.talk 44561
..turnin 26941
..accept 26942
step
.' Pass through the doorway here. |goto 24.9,42.5 <5 |c
step
goto Gnomeregan/4 28.8,45.4 |n
.' Click the Big door and go into the room. |goto Gnomeregan/4 29.3,42.9 <5 |c
step
goto 31.3,29.9
.from Mekgineer Thermaplugg##7800 |only if not havequest(26942)
.kill Mekgineer Thermaplugg##7800 |q 26942/1 |only if havequest(26942)
|confirm |only if not havequest(26942)
step
goto 34.6,19.9
.talk 44563
..turnin 26942
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Scarlet Halls (SH) 28-31",[[
dungeon 871
dungeondifficulty Normal
description This guide will walk you through the Scarlet Halls dungeon.
achieveid 7413
author support@zygorguides.com
step
goto Scarlet Halls/1 31.9,84.4
.talk 64738
..accept 31490
..accept 31493
step
.from Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
.' Kill 50 Scarlet Crusaders. |q 31490/1
|only if havequest(31490)
step
'Prepare to cross the training ground. |goto 48.2,78.8 <5 |c
step
'In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
.from Commander Lindon##59191
|confirm
step
' Go through the tunnel |goto 49.8,36.9 <5 |c
step
'_Houndmaster Braun_
.' Houndmaster Braun will use _Piercing Throw_. This will target a player and deal damage to every player in between Braun and his target.
.' _Death Blossom_ is an AoE whirlwind, spread out to reduce its effectiveness.
.' Both of these abilities will cause _Bloody Mess_. This is DoT can stack and become deadly.
.' At _90%, 80%, 70%, and 60%_ Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
.' If the hounds remain alive at _50%_ Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a _Bloody Rage_, gaining _25% increased damage_ and _50% increased attack speed_.
.from Houndmaster Braun##59303
|confirm
step
goto 55.3,21.1 |n
'Allow the remaining dogs to kill the door guards and procede to the Athenaeum. |goto Scarlet Halls/2 |noway |c
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	47.6,88.3	56.8,79.4	61.7,69.5
path	61.7,55.5
'While following this path keep an eye out for Scarlet Cannoneers. They will spawn randomly and attack using the cannons along this path.
|goto 61.7,55.5 <5 |noway |c
|modelnpc Scarlet Cannoneer##59293
step
'_Armsmaster Harlan_
.' _Dragon's Reach_ is a cleave ability, avoid being in front of this boss.
.' Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's _Blades of Light_ ability.
.' He will use _Heroic Leap_ to the center of the pit and begin casting _Blades of Light_. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
.from Armsmaster Harlan##58632
|confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	48.6,58.1	48.7,50.5	39.1,46.8
path	39.1,23.2
.' Follow the path to the final boss.
step
'_Flameweave Koegler_
.' Koegler will try to light the book cases around the room on fire with _Book Burner_. You can avoid this mechanic by staying on the red carpet circle inside this room.
.' He will move to the center of the room and begin using _Greater Dragon's Breath_. Watch where he is facing and move around the room clockwise to avoid being hit.
.' _Quickened Mind_ will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
.from Flameweaver Koegler##59150
.get Codex of the Crusade |q 31493/1 |only if havequest(31493)
|confirm |only if not havequest(31493)
step
goto 39.3,17.0
.talk 64738
..turnin 31490
..turnin 31493
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Scarlet Monastery (SM) 30-33",[[
dungeon 874
dungeondifficulty Normal
description This guide will walk you through the Scarlet Monastery dungeon.
achieveid 637
author support@zygorguides.com
step
goto Scarlet Monastery/1 72.7,47.0
.talk 64827
..accept 31513
step
goto 30.8,46.2
.' Clear the trash up to this point. The Piles of Corpses should be killed first or you will be fighting zombies much longer than is necessary.
|confirm
step
'_Thalnos the Soulrender_
.' Thalnos will _Raise Fallen Crusaders_. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind _Mind Rot_ which is a DoT that can stack.
.' He also summons _Spirit Gales_ often. These are puddles on the ground that should not be stepped in. This ability is interruptable.
.' _Evict Soul_ is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible.
.' He will also use _Summon Empowering Spirit_. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an _Empowered Zombie_.
.' _Empowered Zombies_ are large zombies which need to be tanked. They cannot be killed without great focus.
.from Thalnos the Soulrender##59789
|confirm
step
goto 20.6,45.9
.click Blade of the Anointed
.get Blade of the Anointed |q 31513/1
step
map Scarlet Monastery/1
path follow strict;loop off;ants straight
path	34.5,52.5	34.8,78.2	39.4,81.7
path	48.5,90.3
.' Follow the path. |goto Scarlet Monastery/2 |noway |c
step
goto Scarlet Monastery/2 49.1,24.5
.talk 64855
..turnin 31513
..accept 31514
step
map Scarlet Monastery/2
path follow strict;loop off;ants straight
path	45.7,31.9	43.9,36.3	49.2,43.3
'_Brother Korloff_
.' Brother Korloff loves to play with fire.
.' _Flying Kick_ will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
.' _Blazing Fists_ is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
.' _Firestorm Kick_ is whirlwind of flame, do not stand in it.
.' _Scorched Earth_ is a fire trail that Korloff leaves behind him, do not stand in it.
.' Every 10%, Korloff wil gain a stack of _Rising Flame_. These increase his fire damage done by 10% per stack.
.from Brother Korloff##59223
|tip The boss will patrol between two groups. Pull each group carefully, keeping in mind the boss' patrol.
|confirm
step
'Enter the cathedral here |goto 49.1,57.1 <5 |c
step
'Before encountering the boss, make sure you kill the trash within the cathedral. This includes the main room and both wings.
|confirm
step
'_Phase 1_
.' Commander Durand will fight you alone.
.' He uses _Flash of Steel_ and _Dashing Strike_. Both of these abilities cause him to jump to party members quickly, but neither do much damage as long as the group is spread out.
.' When Durand dies, phase 2 begins.
'_Phase 2_
.' High Inquisitor Whitemane will come and and begin to fight.
.' She will cast _Power Word: Shield, Smite and Heal_. Make sure to interrupt Smite and Heal.
.' Whitemane will also try casting _Mass Resurrection_. _DO NOT LET THIS CAST FINISH!!_ If this cast finishes, all corpses within 100 yards will resurrect and aggro.
.' After you weaken her she will cast _Deep Sleep_. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand.
'_Phase 3_
.' Now you will have to fight the two together.
.' Kill Whitemane first, make sure to interrupt _Smite and Heal_
.' Stay spread out for Durand.
.from Commander Durand##60040
.from High Inquisitor Whitemane##3977
.' Use the Blades of the Anointed on High Inquisitor Whitemane's corpse. |use Blades of the Anointed##87390 |only if havequest(31514)
.' Blades of the Anointed thrust into Whitemane's corpse. |q 31514/1 |only if havequest(31514)
|confirm |only if not havequest(31514)
step
.talk 64842
..turnin 31514
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Razorfen Kraul (RFK) 32-37",[[
dungeon 761
description This guide will walk you through the Razorfen Kraul dungeon.
achieveid 635
author support@zygorguides.com
step
label	"start"
goto Razorfen Kraul 68.3,83.0
.talk 44402
..accept 26901
..accept 26906
..accept 26907
step
map Razorfen Kraul
path loop off
path	62.5,71.8	78.7,64.2	84.4,47.0
path	75.3,38.7
.' Follow the path to the right. |goto 75.3,38.7 <5 |noway |c
step
goto Razorfen Kraul,87.7,41.2
.from Death Speaker Jargba##4428 |only if not havequest(26907)
.kill Death Speaker Jargba##4428 |q 26907/3 |only if havequest(26907)
|confirm |only if not havequest(26907)
step
goto 81.0,53.9
.from Aggem Thorncurse##4424 |only if not havequest(26907)
.kill Aggem Thorncurse##4424 |q 26907/4 |only if havequest(26907)
|confirm |only if not havequest(26907)
step
goto 56.9,29.8
.from Overlord Ramtusk##4420 |only if not havequest(26907)
.kill Overlord Ramtusk##4420 |q 26907/2 |only if havequest(26907)
|confirm |only if not havequest(26907)
step
.' Follow this path to the right. |goto 56.0,44.2 <5 |c
step
goto Razorfen Kraul 14.2,54.6
.from Kraul Bat##4538+
.get Kraul Guano |q 26901/1
|only if not completedq(26901)
step
goto 7.2,66.9
.from Agathelos the Raging##4422 |only if not havequest(26907)
.kill Agathelos the Raging##4422 |q 26907/1 |only if havequest(26907)
|confirm |only if not havequest(26907)
step
goto 19.9,31.9
.talk 44415
..turnin 26906
..accept 26905
step
goto 26.7,32.5
.from Charlga Razorflank##4421
.get Razorflank's Heart |q 26905/1 |only if havequest(26905)
|confirm |only if not havequest(26905)
step
goto 20.0,31.9
.talk 44415
..turnin 26905
step
goto 36.3,31.6
.talk 4508
..accept 26903
step
'Escort Willix the Importer.
.' Help Willix the Importer escape from Razorfen Kraul. |q 26903/1
step
goto 65.2,81.3
.talk 4508
..turnin 26903
step
goto Razorfen Kraul 68.2,82.9
.talk 44402
..turnin 26901
..turnin 26907
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Maraudon: The Wicked Grotto (Mara) 33-38",[[
dungeon 750
description This guide will walk you through the Maraudon: The Wicked Grotto dungeon.
author support@zygorguides.com
step
label "start"
goto Maraudon 76.7,64.7
.' Click the Quest Accept box in the top right corner.
..accept 27697
step
map Maraudon
path loose; loop off
path	70.8,65.9	65.5,60.5	57.2,49.1
path	48.9,56.1
.' Follow this path.
.from Tinkerer Gizlock##13601
|confirm
step
map Maraudon
path loose; loop off
path	50.7,58.8	49.5,71.5	43.7,87.0
path	35.3,79.9	41.9,76.4	37.5,75.3
.' Follow this path
.from Lord Vyletongue##12236 |only if not havequest(27697)
.kill Lord Vyletongue##12236 |q 27697/1 |only if havequest(27697)
|confirm |only if not havequest(27697)
step
'Click the Complete Quest box in the top right corner:
..turnin 27697
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Maraudon: Foulspore Cavern (Mara) 35-40",[[
dungeon 750
description This guide will walk you through the Marudon: Foulspore Cavern dungeon.
author support@zygorguides.com
step
label	"start"
goto Maraudon 60.8,21.2
.' Click the Accept Quest box on the right side of your screen.
..accept 27698
step
goto Maraudon,54.2,25.8 |n
.' Follow the left side of this path. |goto Maraudon 54.2,25.8 <5 |noway |c
step
map Maraudon
path follow strict; loop off
path	45.3,34.0	40.0,42.5	50.3,43.2
path	52.7,33.1	45.9,25.7	34.5,10.9
.' Follow this path.
.from Noxxion##13282 |only if not havequest(27698)
.kill Noxxion##13282  |q 27698/1 |only if havequest(27698)
|confirm |only if not havequest(27698)
step
map Maraudon
path follow loose; loop off
path	36.2,27.6	32.1,40.3	24.6,36.4
path	16.4,34.1
.' Follow this path.
.from Razorlash##12258 |only if not havequest(27698)
.kill Razorlash##12258 |q 27698/2 |only if havequest(27698)
|confirm |only if not havequest(27698)
step
'Click the Complete Quest box on the right side of your screen.
..turnin 27698
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Maraudon: Earth Song Falls (Mara) 36-41",[[
dungeon 750
description This guide will walk you through the Maraudon: Earth Song Falls dungeon.
achieveid 640
author support@zygorguides.com
step
label	"start"
goto Maraudon/2 28.2,37.3 |n
.' Jump down the waterfall here. |goto 28.2,37.3 <5 |noway |c
step
goto 29.9,50.0
'Click the Quest Discovered box that displays on the right side of the screen under your minimap
..accept 27692
step
goto 33.2,60.8 |n
.' Follow the path through this doorway. |goto 33.2,60.8 <5 |noway |c
step
map Maraudon/2
path loop off
path	35.4,57.2	41.8,61.4	44.9,54.1
path	40.1,64.2	36.6,55.4	40.6,48.7
.' Follow this path and kill Landslide.
.from Landslide##12203
|confirm
step
goto 44.3,67.1 |n
.' Run down the ramp and follow this path. |goto 44.3,67.1 <5 |noway |c
step
map Maraudon/2
path loop off
path	46.1,68.1	44.4,73.8	36.6,79.7
path	29.4,78.2
.' Follow this path. |goto 29.4,78.2 <5 |noway |c
step
goto 26.6,78.8
.from Princess Theradras##12201 |only if not havequest(27692)
.kill Princess Theradras##12201 |q 27692/1 |only if havequest(27692)
|confirm |only if not havequest(27692)
step
'Click the Quest Complete box in the top right corner.
..turnin 27692
step
goto 31.3,75.6 |n
.' Jump down the waterfall here. |goto 31.3,75.6 <5 |noway |c
step
goto 41.6,79.5
.from Rotgrip##13596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Dire Maul: Warpwood Quarter (DM) 38-43",[[
dungeon 699
description This guide will walk you through the Dire Maul: Warpwood Quarter dungeon.
achieveid 644
author support@zygorguides.com
step
label	"start"
goto Dire Maul/5 7.1,36.3
.talk 44971
..accept 27107
..accept 27108
step
goto 12.5,30.9
.talk 14354
.' Tell him:
.' <Game? Are you crazy?>
|confirm
step
goto 11.2,38.4
.talk 44969
..accept 27103
..accept 27104
..accept 27105
step
goto 22.1,75.3
.talk 14354
.' Tell him:
.' <Why you little..>
|confirm
step
goto 32.5,26.9
.talk 14354
.' Tell him:
.' <Mark my words, I will catch you, imp. And when I do!>
|confirm
step
goto 66.0,38.0
.talk 14354
.' Tell him:
.' <DIE!>
|confirm
step
goto 76.3,45.5
.' Talk to Pusillin
.' Tell him:
.' <Prepare to meet your maker.>
.from Pusillin##14354
.get Book of Incantations |q 27107/1 |only if havequest(27107)
|confirm |only if not havequest(27107)
step
goto 42.8,49.1
.from Lethtendris##14327
.get Lethtendris' Web |q 27108/1 |only if havequest(27108)
|confirm |only if not havequest(27108)
step
.' Go down the Hallway here. |goto 46.6,63.9 <5 |c
step
goto Dire Maul/6,55.5,71.4
.from Hydrospawn##13280
.get Hydrospawn Essence |q 27105/1 |only if havequest(27105)
|confirm |only if not havequest(27105)
step
'Follow this hallway up. |goto 57.7,55.6 <5 |c
step
goto 57.6,74.0
.from Zevrim Thornhoof##11490 |only if not havequest(27104)
.kill Zevrim Thornhoof##11490 |q 27104/1 |only if havequest(27104)
|confirm |only if not havequest(27104)
step
.' Go through this hallway and to the right. |goto 52.8,88.5 <5 |c
step
goto 39.8,78.2 |n
.talk 11491
.' Tell him to open the Door.
.' Follow him and go through the door he opens. |goto 40.2,48.7 <5 |c
step
goto Dire Maul/6,57.7,28.9
.from Alzzin the Wildshaper##11492 |only if not havequest(27104)
.kill Alzzin the Wildshaper##11492 |q 27104/2 |only if havequest(27104)
|confirm |only if not havequest(27104)
step
goto 55.0,27.1
.click Felvine Shard##5746
.' Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539
.get Sealed Reliquary of Purity |q 27103/1
|only if havequest(27103)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Dire Maul/5 7.0,36.2
.talk 44971
..turnin 27107
..turnin 27108
step
goto 11.2,38.4
.talk 44969
..turnin 27103
..turnin 27104
..turnin 27105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Scholomance (Scholo) 40-43",[[
dungeon 898
dungeondifficulty Normal
description This guide will walk you through the Scarlet Halls dungeon.
achieveid 645
author support@zygorguides.com
step
goto Scholomance/1 27.0,58.8
.talk 64562
..accept 31440
..accept 31447
step
'Go through the gate and down these steps |goto 48.6,43.2 <5 |c
step
'Clear this room of trash and be careful not to aggro Instructor Chillheart.
|confirm
step
'_Instructor Chillheart_
'_Phase 1_
.' _Wrack Soul_ will deal damage to a party member and jump to a nearby party member when it expires. Spread out.
.' _Touch of the Grave_ causes Chillheart's next 10 basic attacks to deal additional damage.
.' _Frigid Grasp_ will summon ice at a player's feet, step out of this before it explodes.
.' _Ice Wall_ will start at the back of the room and slowly creep toward the boss. If this touches any player then they will die instantly. This will act as the enrage timer of the fight.
.' Kill Chillheart's physical body and Phase 2 will start.
.from Instructor Chillheart##58633
'_Phase 2_
.' _The Anarchist Arcanist_ will float around creating _Arcane Bombs_. These explode on impact so avoid them.
.' _Antonidas' Self Help Guide to Standing in Fire_ will cast _Burn_. This does a small AoE of fire damage around the book.
.' _Wander's Colossal Book of Shadow Puppets_ will cast _Shadow Bolt_ at the party.
.from Instructor Chillheart's Phylactery##58664
|confirm
step
goto Scholomance/1 74.7,57.5
.click In the Shadow of the Light
.' Destroy In the Shadow of the Light |q 31440/1
|only if havequest(31440)
step
map Scholomance/1
path follow strict;loop off;ants straight
path	79.3,52.0	80.6,23.8
'Follow the path downstairs. |goto Scholomance/2 77.0,26.5 <5 |c
step
goto Scholomance/2 73.9,8.6
.click Kel'Thuzad's Deep Knowledge
.' Destroy Kel'Thuzad's Deep Knowledge |q 31440/2
|only if havequest(31440)
step
'Clear all of the trash in this room before fighting Jandice Barov.
|confirm
step
'_Jandice Barov_
.' _Wondrous Rapidity_ is a large cone attack in front of Jandice, make sure nobody is in front of her.
.' _Gravity Flux_ will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily.
.' At _66%_ and _33%_ Jandice will cast _Phantasmal Images_. She will clone herself throughout the room, destroy the clones until she returns to battle.
.' While the clones are alive they will cast _Whirl of Illusion_, this does AoE damage to everybody in the group every second.
.from Jandice Barov##59184
|confirm |next
step
'Enter the Chamber of Summoning |goto 56.4,26.8 <5 |c
step
Go around the perimeter of this room and kill the Boneweavers. When all of them are dead, the boss wil initiate you.
.from Boneweaver##59193
|confirm
step
'_Rattlegore_
.' With each successful attack Rattlegore will gain a stack of _Rusting_. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room.
.' _Bone Spike_ will target a random party member and do massive damage to them. This can be prevented if every party member keeps _Bone Armor_ active.
.' _Bone Armor_ is granted by clicking on the _Bone Piles_ around the room.
.' Periodically a section of the room will be engulfed in _Soulflame_. Avoid the fire and be wary because it grows over time.
.from Rattlegore##59153
|confirm
step
'Enter the Chamber of Summoning |goto 40.3,26.6 <5 |c
step
goto 42.0,46.8
'When fighting the Flesh Horrors, aim for the Meat Grafts attached to their bodies. If all of the Grafts die then the Horrors will die with them.
.from Flesh Horror##59359+, Meat Graft##59982+
|confirm
step
goto 42.5,51.6
.click Forbidden Rites and other Rituals Necromantic
.' Destroy Forbidden Rites and other Rituals Necromantic |q 31440/3
|only if havequest(31440)
step
'Go down the steps and prepare to fight Lilian Voss. |goto 47.0,47.2 <5 |c
step
'_Lilian Voss_
'_Phase 1_
.' Lilian will _Shadow Shiv_ a random player after jumping onto them. When she latches onto you, run away from your allies to avoid AoE damage.
.' _Death's Grasp_ will pull every party member to Lilian and will be followed by _Dark Blaze_. _Dark Blaze_ causes every player to start leaving a trail of fire behind them, run to the outside of the room to trail your fire, this way the center is still open.
.' At _60%_ Phase 2 begins.
'_Phase 2_
.' Lilian's Soul will begin to attack you. She will periodically cast _Blazing Soul_ which does fire damage to all players.
.' For every melee attack Lilian lan ds she will unleash another _Blazing Soul_. You must kite her aroud.
.' _Fixate Anger_ will determine who is in charge of kiting. If she Fixates on your do not stop running.
.from Lilian's Soul##58791
'_Phase 3_
.' Phase 3 is a combination of Phases 1 and 2.
.' Be watchful of who Lilian's Soul is _Fixating_ on, this is the highest source of damage during the fight.
.' You will continued to get pulled in by _Death's Grasp_, be extra careful not to put a path of _Dark Blaze_ in somebodies way if they need to kite the Soul.
.from Lilian Voss##58722
|confirm
step
goto 54.4,56.6 |n
.' Go through this hallway.
step
'Clear the _Bored Students_ out of this room before you engage _Professor Slate_
|confirm
step
'_Professor Slate_
.' He casts _Toxic Potion_, which deals nature damage to everyone standing in the green pool that spawns. Run away to avoid being killed by this.
.' Occasionally he will use a _Fire Breath Potion_, which deals heavy fire damage to everyone in front of him.
.' At 30% health, he will use a _Potion of Brutish Force_, which increases his size and physical damage done by 50% for 2 minutes.
.from Professor Slate##59613
|confirm
step
goto Scholomance/2 47.1,73.1
.click The Dark Grimoire
.' Destroy The Dark Grimoire |q 31440/4
|only if havequest(31440)
step
goto 47.8,84.8 |n
'Go through this doorway and follow the stairs down. |goto Scholomance/3 |c
step
'_Darkmaster Gandling_
.' _Immolate_ will be used on a random party member, heal through this DoT.
.' Darkmaster Gandling will cast _Rise!_. This summons many _Failed Students_ that need to be killed. During this cast Darkmaster Gandling takes reduced damage.
.' Periodically a random party member will be teleported to one of Gandling's study rooms for a _Harsh Lesson_.
.' This party member must kill the _Expired Test Subjects_ and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the _Fresh Test Subjects_ around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage to the Expired Test Subjects.
.kill Darkmaster Gandling##59080 |q 31447/1 |only if havequest(31447)
.from Darkmaster Gandling##59080 |only if not havequest(31447)
|confirm |only if not havequest(31447)
step
'Go back up the stairs. |goto Scholomance/3 49.1,21.5 <5 |c
step
goto Scholomance/3 49.2,21.2
.talk 64562
..turnin 31440
..turnin 31447
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Uldaman (Uld) 40-45",[[
dungeon 692
description This guide will walk you through the Uldaman dungeon.
achieveid 638
author support@zygorguides.com
step
label	"start"
goto Uldaman,63.9,73.0
.talk 46233
..accept 27676
step
goto 63.7,72.6
.talk 46234
..accept 27672
step
goto 64.0,72.1
.talk 46247
..accept 27673
step
goto Uldaman 52.7,72.2
.from Revelosh##6910
|confirm
step
goto 45.4,73.5
.click the Keystone##1369
|confirm
step
goto 42.6,73.5
.from Ironaya##7228 |only if not havequest(27672)
.kill Ironaya##7228 |q 27672/1 |only if havequest(27672)
|confirm |only if not havequest(27672)
step
'Click the Complete Quest box in the top right corner.
..turnin 27672
..accept 27677
step
map Uldaman
path loop off
path	41.6,66.2	36.0,63.8	35.1,56.4
path	31.1,56.3	28.6,61.4
.' Follow this path.
.from Obsidian Sentinel##7023
.get Obsidian Power Core |q 27673/1 |only if havequest(27673)
|confirm |only if not havequest(27673)
step
map Uldaman
path loop off
path	33.0,54.5	37.8,58.0	43.6,55.1
path	48.9,54.1	47.6,46.1	47.7,41.3
.' Follow this path.
.from Ancient Stone Keeper##7206
.get Titan Power Core |q 27673/2 |only if havequest(27673)
|confirm |only if not havequest(27673)
step
map Uldaman
path loop off
path	44.7,41.3	41.1,36.7	33.7,38.0
path	29.3,34.5	25.9,35.4
.' Follow this path.
.from Galgann Firehammer##7291 |only if not havequest(27676)
.kill Galgann Firehammer##7291 |q 27676/1 |only if havequest(27676)
|confirm |only if not havequest(27676)
step
map Uldaman
path loop off
path	29.3,34.7	32.5,28.0	27.9,21.1
path	23.8,27.6	21.2,24.4
.' Follow this path.
.from Grimlok##4854
|confirm
step
map Uldaman
path loop off
path	24.7,26.4	29.9,24.3	38.5,30.1
path	43.1,33.4	44.6,26.2	41.7,16.7
.' Follow this path.
.click Altar of the Keepers
.from 4 Stone Keeper##4857+
|confirm
step
.' Follow the Hallway down, click the Temple Door and go inside. |goto Uldaman/2 58.5,60.8 <5 |c
.click Temple Door##1370
step
goto 56.0,53.1
.click Altar of Archaedas
.from Archaedas##2748 |only if not havequest(27677)
.kill Archaedas##2748 |q 27677/1 |only if havequest(27677)
|confirm |only if not havequest(27677)
step
'Click the Quest Complete box in the top right corner.
..turnin 27677
step
goto 50.0,33.6
.click The Discs of Norgannon##1427
..accept 2278
step
goto 48.0,37.2
.talk 7172
'Ask him about the Earthen.
.' Learn the lore that the stone watcher has to offer. |q 2278/1
|only if havequest(2278)
step
goto 50.0,33.6
.click The Discs of Norgannon##1427
..turnin 2278
..accept 2280
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Uldaman,63.9,73.0
.talk 46233
..turnin 27676
step
goto 63.7,72.6
.talk 46234
..turnin 2280
step
goto 64.0,72.1
.talk 46247
..turnin 27673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Dire Maul: Capital Gardens (DM) 41-46",[[
dungeon 699
description This guide will walk you through the Dire Maul: Capital Gardens dungeon.
author support@zygorguides.com
step
label	"start"
goto Dire Maul/2 87.3,52.6
.talk 44999
..accept 27109
step
goto 90.6,44.9
.talk 44991
..accept 27112
..accept 27113
step
goto 73.2,53.8
.from Mana Remnant##11483+, Arcane Aberration##11480+
.' Kill all the Remnants around the crystal to deactivate it.
|confirm
step
.' Enter this Hallway. |goto 32.1,71.6 <5 |c
step
goto Dire Maul/3,30.6,45.8
.from Magister Kalendris##11487 |only if not havequest(27112)
.kill Magister Kalendris##11487 |q 27112/1 |only if havequest(27112)
|confirm |only if not havequest(27112)
step
.' Follow this ramp up. |goto 49.4,12.7 <5 |c
step
goto Dire Maul/2 42.0,22.4
.from Mana Remnant##11483+, Arcane Aberration##11480+
.' Kill all the Remnants around the crystal to deactivate it.
|confirm
step
goto 48.4,53.8
.talk 14358
..turnin 27113
..accept 27110
step
goto 39.5,83.4
.from Mana Remnant##11483+, Arcane Aberration##11480+
.' Kill all the Remnants around the crystal to deactivate it.
|confirm
step
goto 21.7,75.8
.from Illyanna Ravenoak##11488 |only if not havequest(27112)
.kill Illyanna Ravenoak##11488 |q 27112/2 |only if havequest(27112)
|confirm |only if not havequest(27112)
step
.' Follow this ramp down. |goto 20.8,19.6 <5 |c
step
.' Go through this doorway. |goto Dire Maul/3 56.3,26.8 <5 |c
step
goto Dire Maul/2 34.6,53.3
.from Tendris Warpwood##11489 |only if not havequest(27109)
.kill Tendris Warpwood##11489 |q 27109/1 |only if havequest(27109)
|confirm |only if not havequest(27109)
step
goto 29.1,42.8 |n
.' Go through this doorway and down the Hallway. |goto Dire Maul/4 76.0,39.9 <5 |noway |c
step
goto 46.5,81.6
.from Mana Remnant##11483+, Arcane Aberration##11480+
.' Kill all the Remnants around the crystal to deactivate it.
|confirm
step
goto 44.7,34.1
.from Mana Remnant##11483+, Arcane Aberration##11480+
.' Kill all the Remnants around the crystal to deactivate it.
|confirm
step
goto 35.5,57.0
.from Immol'thar##11496 |only if not havequest(27110)
.kill Immol'thar##11496 |q 27110/1 |only if havequest(27110)
|confirm |only if not havequest(27110)
step
.' Go through this doorway. |goto 59.1,33.5 <5 |c
step
.' Go down this ramp. |goto 67.1,24.2 <5 |c
step
goto 60.4,23.5
.from Prince Tortheldrin##11486 |only if not havequest(27110)
.kill Prince Tortheldrin##11486 |q 27110/2 |only if havequest(27110)
|confirm |only if not havequest(27110)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Dire Maul/2,87.3,52.4
.talk 44999
..turnin 27109
step
goto 90.5,44.8
.talk 44991
..turnin 27112
step
.' Enter this room here. |goto 39.9,34.4 <5 |c
step
.' Follow this ramp up. |goto Dire Maul/3 48.1,12.4 <5 |c
step
goto Dire Maul/2,48.4,53.8
.talk 14358
..turnin 27110
..accept 27111
step
.' Follow this ramp down. |goto 20.8,19.6 <5 |c
|only if not completedq(27111)
step
.' Go through this doorway. |goto Dire Maul/3 56.3,26.8 <5 |c
|only if not completedq(27111)
step
goto Dire Maul/2,29.1,42.8 |n
.' Go through this doorway and down the Hallway. |goto Dire Maul/4 76.0,39.9 <5 |noway |c
|only if not completedq(27111)
step
goto 59.1,33.5 |n
.' Go through this doorway. |goto 59.1,33.5 <5 |noway |c
|only if not completedq(27111)
step
.' Go down this ramp. |goto 67.1,24.2 <5 |c
|only if not completedq(27111)
step
goto 70.6,24.1
.click Treasure of the Shen'dralar##1387
..turnin 27111
|only if not completedq(27111)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Razorfen Downs (RFD) 42-47",[[
dungeon 760
description This guide will walk you through the Razorfen Downs dungeon.
achieveid 636
author support@zygorguides.com
step
label	"start"
goto Razorfen Downs 24.6,23.7
.talk 44837
..accept 27009
..accept 27024
..accept 27029
step
'As you go through the dungeon, make sure to loot mobs for your quest item _Withered Tusk_.
|confirm
|only if havequest(27029)
step
.' Follow the left route of the dungeon. |goto 31.0,18.2 <5 |c
step
goto 59.6,28.0
.' Clear this room then click the Gong.
.' You will fight 2 small waves of spiders, then the boss will show up.
.click the Gong after each wave to summon the next group.
.from Tuten'kash##7355 |only if not havequest(27024)
.kill Tuten'kash##7355 |q 27024/3 |only if havequest(27024)
|confirm |only if not havequest(27024)
step
.' Follow the path to the left. |goto 68.9,37.9 <5 |c
step
goto Razorfen Downs 78.3,16.6 |n
.click the Holding Pin
.talk 8516
..accept 27019
..turnin 27019
..accept 27022
step
goto 46.7,22.6
.' There will be about 6 waves of mobs, and a boss to kill here for 5 minutes.
.from Plaguemaw the Rotting##7356
.' Protect Belnistrasz while he performs the ritual to shut down the idol |q 27022/1
step
goto 46.7,22.6
.click Belnistrasz's Brazier##759
..turnin 27022
|only if havequest(27022)
step
goto 76.3,34.4 |n
.' Go back the way you came and go up this ramp. |goto 76.3,34.4 <5 |noway
step
goto 85.2,46.4
.from Mordresh Fire Eye##7357 |only if not havequest(27024)
.kill Mordresh Fire Eye##7357 |q 27024/2 |only if havequest(27024)
|confirm |only if not havequest(27024)
step
.' Take this ramp up and continue following the path. |goto 75.1,40.2 <5 |c
step
goto Razorfen Downs 36.6,70.8
.from Glutton##8567 |only if not havequest (27024)
.kill Glutton##8567 |q 27024/1 |only if havequest (27024)
|confirm |only if not havequest (27024)
step
goto 44.6,59.4
.from Amnennar the Coldbringer##7358 |only if not havequest(27009)
.kill Amnennar the Coldbringer##7358 |q 27009/1 |only if havequest(27009)
|confirm |only if not havequest(27009)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Razorfen Downs 24.6,23.7
.talk 44837
..turnin 27009
..turnin 27024
..turnin 27029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Dire Maul: Gordock Commons (DM) 43-48",[[
dungeon 699
description This guide will walk you through the Dire Maul: Gordock Commons dungeon.
author support@zygorguides.com
step
label	"normal"
goto Dire Maul 71.7,92.2
.talk 45040+
..accept 27125
step
goto 69.8,75.5
.from Guard Mol'dar##14326
.' He will call out for help, so you may need to clear some of the area around him first.
|confirm
step
goto Dire Maul 62.2,66.0
.from Stomper Kreeg##14322 |tip Up the ramp, in the corner.
|confirm
step
goto 49.3,78.7
.click Fengus's Chest##41
.from Guard Fengus##14321 |tip He will walk around this area.
|confirm
step
.' Go through this doorway. |goto 40.5,78.2 <5 |c
step
goto 26.5,58.8
.' He will call out for help, so you may need to clear some of the area around him first.
.from Guard Slip'kik##14323
|confirm
step
.' Follow this ramp up. |goto 23.3,66.7 <5 |c
step
.' Go up the ramp through this doorway. |goto 29.0,65.7 <5 |c
step
goto 31.9,50.8
.from Captain Kromcrush##14325
|confirm
step
goto 31.8,26.4
.from King Gordok##11501 |only if not havequest(27125)
.kill King Gordok##11501 |q 27125/1 |only if havequest(27125)
|confirm |only if not havequest(27125)
step
goto 31.7,27.4
.talk 14353
.' Tell him:
.' <I'm the new king? What are you talking about?
.' Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well.
.click Gordok Tribute##1387
|confirm
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm |next "end"
step
label	"tribute"
goto 71.7,92.2
.talk 45040
..accept 27125
step
.' Follow this hallway to the left. |goto 57.7,85.4 <5 |c
step
.' Follow the path, avoid Guard Fengus, _DO NOT_ kill him. Go through this doorway. |goto 40.5,78.2 <5 |c
step
goto Dire Maul 28.6,55.3
.talk 14338
..accept 27119
step
goto 26.5,57.9
.click Broken Trap##5712
..accept 27118 |instant |repeatable
.' Wait for Slip'kik to get frozen before moving on. |tip You may have to aggro him and walk over the trap.
|confirm
|only if havequest(27119)
step
goto 23.7,55.6 |n
.' Up the ramp:
.click Ogre Tannin Basket##468
.get Ogre Tannin |q 27119/1
|only if havequest(27119)
step
goto 28.6,55.3
.' Jump down or go down the ramp.
.talk 14338
..turnin 27119
step
goto 23.7,55.6 |n
.' Up the ramp:
.click Ogre Tannin Basket##468
.collect 1 Ogre Tannin
|only if completedq(27119)
step
goto Dire Maul 28.6,55.3
.talk 14338
..accept 27120 |instant |repeatable
|only if completedq(27119)
step
.' Follow this ramp up. |goto 23.2,66.6 <5 |c
step
.' Go through this doorway. |goto 29.1,65.8 <5 |c
step
.' Before running down this hallway.
.' Put on your ogre disguise. |havebuff Interface\Icons\Ability_Rogue_Disguise |use Gordok Ogre Suit##18258
step
goto 31.8,26.4
.from King Gordok##11501 |only if not havequest(27125)
.kill King Gordok##11501 |q 27125/1 |only if havequest(27125)
.' Do not kill Cho'Rush the Observer.
|confirm |only if not havequest(27125)
step
goto 31.7,27.4
.talk 14353
.' Tell him:
.' <I'm the new king? What are you talking about?
.' Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well.
.click Gordok Tribute##1387
|confirm
step
goto 31.8,50.0
.talk 14325
..accept 27124
step
goto 62.0,65.8
.talk 14322
..accept 27114 |instant
step
goto 69.9,75.5
.talk 14326
..turnin 27124
step
label	"end"
goto Dire Maul 71.7,92.3
.talk 45040
..turnin 27125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Stratholme: Main Gate (Strat) 44-49",[[
dungeon 765
description This guide will walk you through the Stratholme: Main Gate dungeon.
author support@zygorguides.com
step
label	"start"
goto Stratholme 67.0,89.2
.talk 45323
..accept 27192
step
goto 65.3,87.2
.talk 45201
..accept 27185
step
goto 66.3,86.7
.talk 45200
..accept 27208
..accept 27305
..accept 27223
step
goto 54.5,70.8
.from Stratholme Courier##11082
.click Premium Siabi Tobacco##336
.from Fras Siabi##11058 |tip He will show up after you click the box.
.get Siabi's Premium Tobacco |q 27192/1
|only if havequest(27192)
step
goto 73.6,20.4
.from The Unforgiven##10516 |only if not havequest(27223)
.kill The Unforgiven##10516 |q 27223/1 |only if havequest(27223)
|confirm |only if not havequest(27223)
step
goto Stratholme 50.1,17.4
.from Timmy the Cruel##10808 |only if not havequest(27223)
.kill Timmy the Cruel##10808 |q 27223/2 |only if havequest(27223)
|confirm |only if not havequest(27223)
step
.' Go through this doorway. |goto 32.0,34.7 <5 |c
step
goto 30.6,39.9
.from Commander Malor##11032
|confirm
step
.' Go through this doorway. |goto 19.8,51.3 <5 |c
step
goto 12.5,47.5 |n
.click Blacksmithing Plans##525
.kill Risen Hammersmith##11120 |q 27185/1
|only if havequest(27185)
step
goto 3.6,50.2
.from Willey Hopebreaker##10997
|confirm
step
.' Go through this doorway. |goto 22.3,56.7 <5 |c
step
goto 27.4,75.2
.from Instructor Galford##10811
.click Unfinished Painting##4733 |tip This is on the wall next to you.
.get Of Love and Family |q 27305/1
|only if havequest(27305)
step
goto 19.3,83.1
.from Balnazzar##10813 |only if not havequest(27208)
.kill Balnazzar##10813 |q 27208/1 |only if havequest(27208)
step
goto 21.6,80.8
.talk 45200
..turnin 27208
..turnin 27305
..turnin 27223
step
goto 21.6,79.8
.talk 45323
..turnin 27192
step
goto 24.2,76.3
.talk 45201
..turnin 27185
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Zul'Farrak (ZF) 46-51",[[
dungeon 686
description
achieveid 639
step
label "start"
goto Zul'Farrak 56.7,89.2
.talk 40712
..accept 27068
..accept 27071
step
goto 58.2,89.1
.talk 7407
..accept 27070
step
goto 58.3,88.7
.talk 44929
..accept 27076
step
map Zul'Farrak
path follow strict; loop off
path 57.5,79.9	59.1,68.2	57.3,55.7
path 53.0,38.9	59.8,42.0	55.6,30.7
'Follow the path. |goto 55.5,30.7 <5 |noway|c
step
goto 54.8,29.3
..kill Theka the Martyr##7272 |q 27071/1
|only if havequest(27071)
step
goto 63.3,27.9
.' Clear the trash in this area.
.from Sandfury Shadowhunter##7246+, Sul'lithuz Sandcrawler##8095+, Sandfury Witch Doctor##5650+
|confirm
step
goto Zul'Farrak 66.0,26.0 |tip Moving to this location will cause the boss to chase your party until he aggros.
.from Antu'sul##8127 |only if not havequest(27071)
.kill Antu'sul##8127 |q 27071/3 |only if havequest(27071)
.from Servant of Antu'sul##8156+, Sul'lithuz Broodling##8138+
.' He will summon Sul'lithuz Broodlings to aid him in battle. Tanks try to pick them up quickly.
|confirm |only if not havequest(27071)
step
goto 44.1,15.8
'Witch Doctor Zum'rah will be friendly until you approach him.
.from Witch Doctor Zum'rah##7271 |only if not havequest(27071)
..kill Witch Doctor Zum'rah##7271 |q 27071/2 |only if havequest(27071)
|confirm |only if not havequest(27071)
step
goto 30.8,15.9
.from Sandfury Witch Doctor##5650+, Sandfury Shadowhunter##7246+
.' Clear the trash around the area.
|confirm
step
goto 25.1,17.9
.from Sandfury Executioner##7274
|confirm
step
'Once you kill the Executioner, click the cages behind him.
.click Troll Cage##1787
|confirm
step
'There will be an event when you release the prisoners.
.from Sandfury Drudge##7788+, Sandfury Slave##7787+, Sandfury Cretin##7789+
.' Defend Sergeant Bly from the attacking trolls.
.' Eventually Shadowpriest Sezz'zis will appear.
.from Shadowpriest Sezz'ziz##7275 |only if not havequest(27076)
..kill Shadowpriest Sezz'ziz##7275 |q 27076/2 |only if havequest(27076)
.from Nekrum Gutchewer##7796 |only if not havequest(27076)
..kill Nekrum Gutchewer |q 27076/1 |only if havequest(27076)
|confirm |only if not havequest(27076)
step
goto 30.1,16.9
.talk 7607
.' Ask him if he can blow up the door now.
|confirm
step
goto Zul'Farrak 30.5,18.1
.'Talk to Sergeant Bly
.' Tell him you're tired of taking orders from him.
.from Sergeant Bly##7604, Murta Grimgut##7608, Raven##7605, Oro Eyegouge##7606
|confirm
step
goto 43.5,34.6
.from Ruuzlu##7797, Chief Ukorz Sandscalp##7267 |only if not havequest(27071) or not havequest(27068)
..kill Ruuzlu##7797 |q 27071/4 |only if havequest(27071)
..kill Chief Ukorz Sandscalp##7267 |q 27068/1 |only if havequest(27068)
|confirm |only if not havequest(27071) or not havequest(27068)
step
goto 29.7,38.8
.from Hydromancer Velratha##7795 |tip She patrols around the room a bit, but often stops here.
..get Tiara of the Deep |q 27070/1
|only if havequest(27070)
step
goto Zul'Farrak 32.9,43.6 |n
.' Kill trash while making your way to the _Gong of Zul'Farrak_. |goto Zul'Farrak 32.9,43.6 <5 |noway|c
step
goto 32.8,43.5
.click Gong of Zul'Farrak##1827 |tip This will cause Gahz'rilla to spawn.
.from Gahz'rilla##7273
.get Gahz'rilla's Electrified Scale |q 27070/2 |only if havequest(27070)
|confirm |only if not havequest(27070)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Zul'Farrak 56.7,89.2
.talk 40712
..turnin 27068
..turnin 27071
step
goto 58.2,89.1
.talk 7407
..turnin 27070
step
goto 58.3,88.7
.talk 44929
..turnin 27076
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Stratholme: Service Entrance (Strat) 48-53",[[
dungeon 765
description This guide will walk you through the Stratholme: Service Entrance dungeon.
achieveid 646
author support@zygorguides.com
step
label	"start"
goto Stratholme/2,67.7,82.2
.talk 45328
..accept 27352
step
goto 67.1,72.6
.talk 45330
..accept 27359
step
goto 67.9,72.1
.talk 45206
..accept 27228
step
goto 68.0,72.7
.talk 45329
..accept 27227
step
goto 68.6,73.1
.talk 45331
..accept 27230
step
.click Gauntlet Gate##3614
.' Go through this gate. |goto 63.2,65.4 <5 |c
step
goto 62.4,57.9 |n
.click Gauntlet Gate##3614
.' Go through this gate. |goto 62.9,57.5 <5 |noway |c
step
.' While running through this area:
.from Wailing Banshee##10464+
.get 4 Banshee Essence |q 27359/1
|confirm
|only if havequest(27359)
step
goto 68.6,54.6
.click Crate##336
.get Stratholme Holy Water |q 27352/1
|only if havequest(27352)
step
goto 72.7,52.4
.click Blacksmithing Plans##525
.kill Black Guard Swordsmith##11121 |q 27230/1
|only if havequest(27230)
step
goto 74.8,46.8
.from Baroness Anastari##10436
.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
.from Thuzadin Acolyte##10399+
|confirm
step
goto 68.1,20.0
.from Maleki the Pallid##10438
.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
.from Thuzadin Acolyte##10399+
|confirm
step
goto 57.0,15.1
.from Magistrate Barthilas##10435
|confirm
step
goto 56.5,46.8
.from Nerub'enkan##10437
.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
.from Thuzadin Acolyte##10399+
|confirm
step
goto 66.5,49.3
.from Wailing Banshee##10464+
.get 4 Banshee Essence |q 27359/1
|only if havequest(27359)
step
goto 47.3,19.9
.' Clear this room of Abominations.
|confirm
step
goto 47.3,19.9
.from Ramstein the Gorger##10439 |only if not havequest(27228)
.kill Ramstein the Gorger##10439 |q 27228/1 |only if havequest(27228)
|confirm |only if not havequest(27228)
step
.' Before you kill the next boss, you will have a wave a mobs come from the left gate.
.' Then, you will have a wave of elite mobs come from the doorway.
.' Clear these 2 waves.
|confirm
step
goto 37.4,19.9
.from Lord Aurius Rivendare##45412 |only if not havequest(27227)
.kill Lord Aurius Rivendare##45412 |q 27227/1 |only if havequest(27227)
|confirm |only if not havequest(27227)
step
goto 44.8,20.4
.talk 45329
..turnin 27227
step
goto 43.9,14.1
.talk 45206
..turnin 27228
step
goto 42.5,12.7
.talk 45330
..turnin 27359
step
goto 49.8,18.4
.talk 45331
..turnin 27230
step
goto 49.7,22.4
.talk 45328
..turnin 27352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Sunken Temple (ST) 52-57",[[
description This guide will walk you through the Sunken Temple dungeon.
achieveid 641
step
label finder
goto The Temple of Atal'Hakkar 50.0,17.2
.talk 46077
..accept 27604
..accept 27605
..accept 27633
step
goto 76.2,54.9
' Clear the trash here. The mobs will fear you around the room, so be careful.
|confirm
step
goto 76.1,38.7
.from Jammal'an the Prophet##5710
..get Head of Jammal'an |q 27604/1 |only if havequest(27604)
|confirm |only if not havequest(27604)
step
goto 24.3,45.7
.' After clearing the trash, use your Egg of Hakkar here. |use Egg of Hakkar##10465
..kill Avatar of Hakkar##8443 |q 27633/1
|only if havequest(27633)
step
goto 26.9,45.3
.' After Clearing the trash:
.click Shrine of the Soulflayer##293
..from Avatar of Hakkar##8443
|confirm
|only if not havequest(27633)
step
goto 49.4,81.3
.from Hazzas##5722, Morphaz##5719
|confirm
step
goto 68.5,87.7
'Note that you will not be able to attack him if you haven't defeated the other bosses.
.from Shade of Eranikus##5709 |only if not havequest(27605)
.kill Shade of Eranikus##5709 |q 27605/1 |only if havequest(27605)
|confirm |only if not havequest(27605)
step
goto The Temple of Atal'Hakkar 50.0,17.2
.talk 46077
..turnin 27604
..turnin 27605
..turnin 27633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Blackrock Depths: Detention Block (BRD) 53-58",[[
dungeon 704
description This guide will walk you through the Blackrock Depths: Detention Block dungeon.
achieveid 642
author support@zygorguides.com
step
label	"start"
goto Blackrock Depths 36.2,77.3
.talk 45892
..accept 27565
step
goto 37.3,80.1
.talk 45849
..accept 27603
step
goto 36.7,74.5
.talk 45891
..accept 27568
step
.' Go through this doorway. |goto 36.1,73.7 <5 |c
step
goto 24.2,51.8
.from Bael'Gar##9016 |only if not havequest(27603)
.kill Bael'Gar##9016 |q 27603/1 |only if havequest(27603)
|confirm |only if not havequest(27603)
step
goto Blackrock Depths 56.6,31.1
.from Lord Incendius##9017
|confirm
step
.' Go through this door and up the ramp. |goto 59.8,26.2 <5 |c
step
goto Blackrock Depths/2 64.2,58.2
.from Fineous Darkvire##9056
|confirm
step
.' Enter the next room here. |goto Blackrock Depths/2 59.8,60.0 <5 |c
step
.' Enter this room. |goto Blackrock Depths 59.0,35.0 <5 |c
step
goto Blackrock Depths/2 60.7,67.4
.from Warder Stilgiss##9041
|confirm
step
.' Leave this room and go to the left. |goto 58.6,64.1 <5 |c
step
.' Go through this doorway. |goto Blackrock Depths 54.8,36.0 <5 |c
step
goto Blackrock Depths/2,54.3,69.3 |n
.click Abandoned Mole Machine##8005
.' <Hit the button labeled 'Entrance'. |goto Blackrock Depths 35.9,79.2 <5 |noway |c
step
goto 37.3,80.1
.talk 45849
..turnin 27603
step
.' Go through this doorway. |goto 37.7,66.0 <5 |c
step
goto 41.0,67.2
.talk 45894
..turnin 27568
..accept 27569
step
goto 44.3,77.9
.talk 45898
..turnin 27565
..accept 27567
step
goto 47.5,93.4
.from High Interrogator Gerstahn##9018 |only if not havequest(27567)
.kill High Interrogator Gerstahn |q 27567/1 |only if havequest(27567)
|confirm |only if not havequest(27567)
step
goto 44.3,77.9
.talk 45898
..turnin 27567
step
'Follow this path all the way to the end. |goto 49.6,72.0 <5 |c
step
goto 51.4,62.1
.from Houndmaster Grebmar##9319
|confirm
step
goto Blackrock Depths 55.2,58.9
.from Lord Roccor##9025 |tip He walks around this area. Some searching may be required.
|confirm
step
.' Enter the Ring of the Law here. |goto Blackrock Depths 51.4,67.5 <5 |c
step
goto 50.5,63.0
.' Wait for the gates to be opened and kill all the mobs.
.' There will be a couple waves of mobs and then a boss to kill.
|confirm
step
.' Enter the Hallway here. |goto 48.0,63.9 <5 |c
step
goto Blackrock Depths/2 41.4,88.3
.click The Shadowforge Lock##2851
|confirm
step
.' Go back up the stairs and follow this hallway. |goto 45.0,87.1 <5 |c
step
goto 36.6,84.4
.from General Angerforge##9033 |only if not havequest(27569)
.kill General Angerforge |q 27569/1 |only if havequest(27569)
|confirm |only if not havequest(27569)
step
goto 36.8,64.8
.from Golem Lord Argelmach##8983 |only if not havequest(27569)
.kill Golem Lord Argelmach |q 27569/2 |only if havequest(27569)
|confirm |only if not havequest(27569)
step
goto 41.2,68.3 |n
.' Follow this Hallway. |goto Blackrock Depths |noway |c
step
goto 46.9,66.1
.talk 45888
..turnin 27569
..accept 27571
step
goto Blackrock Depths/2,47.9,58.3
.click 3 Thunderbrew Lager Keg##4631+
.' A group of Dwarves will enter the room to fight, be ready for them.
.from Hurley Blackbreath##9537+, Blackbreath Crony##9541+, Blackbreath Crony##9541+ |only if not havequest(27571)
.kill Hurley Blackbreath |q 27571/1 |only if havequest(27571)
|confirm |only if not havequest(27571)
step
goto 49.1,61.8
.talk 9543
.' Tell him:
.' <You're good for nothing, Ribbly. It's time to pay for your wickedness!
.from Ribbly Screwspigot##9543 |only if not havequest(27571)
.kill Ribbly Screwspigot |q 27571/3 |only if havequest(27571)
|confirm |only if not havequest(27571)
step
goto 49.6,61.3
.from Plugger Spazzring##9499 |only if not havequest(27571)
.kill Plugger Spazzring |q 27571/2 |only if havequest(27571)
.' This will bring the guards in through the back door and all the Bar Patrons will start attacking, be ready to fight.
|confirm |only if not havequest(27571)
step
goto 53.0,62.8
.from Phalanx##9502
|confirm
step
.' Go through the Grim Guzzler's back doorway and down the small ramp to the left. |goto Blackrock Depths 53.9,27.0 <5 |c
step
goto Blackrock Depths/2,50.8,52.7
.talk 45899
..turnin 27571
..accept 27573
step
goto 54.0,48.6
.from Ambassador Flamelash##9156 |only if not havequest(27573)
.kill Ambassador Flamelash |q 27573/1 |only if havequest(27573)
|confirm |only if not havequest(27573)
step
.' Follow the hallway and go through the next doorway. |goto 49.5,42.1 <5 |c
step
goto 56.7,21.9
.talk 9039
.' Tell him:
.' <Your bondage is at an end, Doom'rel. I challenge you!>
.' Once you talk to him, you will have to fight Dwarves before you will fight Doom'rel
.from Vile'rel##9036, Hate'rel##9034, Gloom'rel##9037, Anger'rel##9035
.from Doom'rel##9039 |only if not havequest(27573)
.kill Doom'rel |q 27573/2 |only if havequest(27573)
|confirm |only if not havequest(27573)
step
goto 56.9,23.2
.click Chest of The Seven##1387
.' Loot the Armor and Weapons from the Chest.
|confirm
step
goto 58.1,22.3
.talk 45890
..turnin 27573
..accept 27578
step
.' Go through this big Doorway. |goto 60.7,18.8 <5 |c
step
'All around this room look for Flame Keepers
.from Shadowforge Flame Keeper##9956+
.collect 2 Shadowforge Torch##11885
step
goto 71.8,16.7
.' Use the Torches in your bags to light the Shadowforge Brazier.
.click Shadowforge Brazier##3411
|confirm
step
goto 71.8,7.0
.' Use the Torches in your bags to light the Shadowforge Brazier.
.click Shadowforge Brazier##3411
|confirm
step
.' Enter the hallway here. |goto 74.6,11.9 <5  |c
step
goto 82.3,12.0
.from Magmus##9938
|confirm
step
goto 93.3,12.0
.from Emperor Dagran Thaurissan##9019 |only if not havequest(27578)
.kill Emperor Dagran Thaurissan |q 27578/1 |only if havequest(27578)
|confirm |only if not havequest(27578)
step
.' Go back through these doors. |goto 74.6,11.9 <5 |c
step
goto 58.1,22.3
.talk 45890
..turnin 27578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Lower Blackrock Spire (LBRS) 57-60",[[
dungeon 721
description This guide will walk you through the Lower Blackrock Spire dungeon.
achieveid 643
author support@zygorguides.com
step
label	"start"
goto Blackrock Spire/4 30.5,39.7
.talk 10299
..accept 27440
step
.' Go through this doorway under the ramp. |goto 37.9,40.1 <5 |c
step
.' Follow this winding hallway. |goto 39.7,48.3 <5 |c
step
.' Fight your way through, down the slope, and across the two bridges. |goto Blackrock Spire/3 66.5,44.9 <5 |c
step
.' Follow the corridor through orcs and ogres. |goto 42.0,56.3 <5 |c
step
goto 34.6,55.2
.from Highlord Omokk##9196 |only if not havequest(27440)
.kill Highlord Omokk##9196 |q 27440/2 |only if havequest(27440)
|confirm |only if not havequest(27440)
step
' Follow this ramp down and to the left. |goto 56.8,51.1 <5 |c
step
.' Follow this ramp up. |goto Blackrock Spire/2 55.4,61.7 <5 |c
step
goto 55.6,71.8
.from Shadow Hunter Vosh'gajin##9236
|confirm
step
goto 56.9,58.1 |n
.' Follow this path all the way down. |goto Blackrock Spire/1 56.9,58.1 <5 |noway |c
step
goto 53.0,52.9 |n
.from War Master Voone##9237 |only if not havequest(27440)
.kill War Master Voone##9237 |q 27440/1 |only if havequest(27440)
|confirm |only if not havequest(27440)
step
.' Enter the doorway. |goto 66.1,50.4 <5 |c
step
.' Follow this path to left, you will go around a lot of rocks, keep moving through. |goto Blackrock Spire/3 52.6,49.4 <5 |c
step
.' Keep moving through. |goto Blackrock Spire/1 53.2,70.4 <5 |c
step
.' Follow this path up and to the right. |goto 57.9,70.2 <5 |c
step
goto Blackrock Spire/2 62.5,76.0
.from Mother Smolderweb##10596
|confirm
step
goto 50.7,74.4 |n
.' Go through this doorway. |goto Blackrock Spire/3 |noway |c
step
.' Proceed up the ramp to the right, through a doorway. |goto Blackrock Spire/2 54.3,75.5 <5 |c
step
.' Go through this doorway. |goto Blackrock Spire/4 42.8,73.8 <5 |c
step
goto Blackrock Spire/5 37.7,85.4
.from Halycon##10220
.' After you kill Halycon, a white wolf will come in the door to fight.
.from Gizrul the Slavener##10268
|confirm
step
.' Follow this ramp up. |goto 40.0,78.2 <5 |c
step
.' Continue up this ramp. |goto 40.6,60.4 <5 |c
step
goto Blackrock Spire/6 56.1,55.6
.from Overlord Wyrmthalak##9568 |only if not havequest(27440)
.kill Overlord Wyrmthalak##9568 |q 27440/3 |only if havequest(27440)
|confirm |only if not havequest(27440)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Blackrock Spire/4,30.5,39.6
.talk 10299
..turnin 27440
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Classic Dungeons\\Upper Blackrock Spire (UBRS) 57-60",[[
dungeon 721
description This guide will walk you through the Upper Blackrock Spire dungeon.
achieveid 1307
author support@zygorguides.com
step
label	"start"
goto Blackrock Spire/4 30.5,39.8
.talk 10299
..accept 27444
..accept 27445
step
' Climb the stairs to the overpass, turn left and keep climbing. |goto 37.2,33.0 <10 |c
step
goto Blackrock Spire/5 33.4,15.0
.from Blackhand Dreadweaver##9817+, Blackhand Summoner##9818+, Blackhand Veteran##9819+, Rage Talon Dragonspawn##9096+
.' You will need to clear this entire room before you can continue.
.' Go through this doorway when you are finished. |goto 33.2,13.7 <5 |noway |c
step
goto Blackrock Spire/6 32.9,27.0
.click Blackrock Altar##4076
.' This will force the Blackhand mobs to attack you. Once you fight them, you will have about 30 seconds, then you will fight the boss.
.from Pyroguard Emberseer##9816, Blackhand Incarcerator##10316+
|confirm
step
.' Go through this doorway. |goto 30.4,31.9 <5 |c
step
goto 38.9,38.6
.click Father Flame##1667
.' Loot the items inside.
.' Stay and kill the mobs that come to attack you in waves of 2.
.from Rookery Guardian##10258+, Rookery Hatcher##10683+
.' The boss will come out shortly.
.from Solakar Flamewreath##10264
|confirm
step
.' Follow this path up. |goto 29.6,41.6 <5 |c
step
.' Follow this ramp up and to the right. |goto Blackrock Spire/7 36.5,31.9 <5 |c
step
.' Follow this hallway and turn left. |goto 42.4,30.1 <5 |c
step
.' Enter the Stadium here. |goto 48.6,33.4 <5 |c
step
goto 48.6,20.0 |n
.' Run here but stay out of the gate.
.' Fight the waves of enemies until the boss shows up, then kill him.
.from Warchief Rend Blackhand##10429 |only if not havequest(27444)
.kill Warchief Rend Blackhand##10429 |q 27444/1 |only if havequest(27444)
|confirm |only if not havequest(27444)
step
.' Follow this ramp up and to the right. |goto 50.4,35.6 <5 |c
step
.' Jump over these fires and run to the back corner. |goto 58.9,47.0 <5 |c
step
goto 63.5,36.3
.from The Beast##10430
|confirm
step
.' Go through this doorway. |goto 43.2,45.9 <5 |c
step
goto 33.5,47.5
.' Clear this room from enemies, the boss can knock your group into them during the fight.
.from General Drakkisath##10363 |only if not havequest(27445)
.kill General Drakkisath##10363 |q 27445/1 |only if havequest(27445)
|confirm |only if not havequest(27445)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Blackrock Spire/4,30.5,39.7
.talk 10299
..turnin 27444
..turnin 27445
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Hellfire Ramparts (Ramps) 59-63",[[
dungeon 797
description This guide will walk you through the Hellfire Citadel: Hellfire Ramparts dungeon.
achieveid 647
author support@zygorguides.com
step
label	"start"
goto Hellfire Ramparts,48.5,68.1
.talk 54603
..accept 29528
..accept 29529
..accept 29594
step
goto 45.8,50.8
.click Hellfire Supplies##7001
.get 1 Hellfire Supplies |q 29594/1
|only if havequest(29594)
step
goto 51.7,45.7
.click Hellfire Supplies##7001
.get 2 Hellfire Supplies |q 29594/1
|only if havequest(29594)
step
goto 66.8,52.0
.click Hellfire Supplies##7001
.get 3 Hellfire Supplies |q 29594/1
|only if havequest(29594)
step
goto Hellfire Ramparts 76.9,34.4
.from Watchkeeper Gargolmar##17306
.get Gargolmar's Hand |q 29528/1 |only if havequest(29528)
|confirm |only if not havequest(29528)
step
goto 68.1,41.1 |n
.' Go up the spiral ramp |goto 64.0,44.7 <5 |noway |c
step
goto 39.3,21.2
.from Omor the Unscarred##17308
.get Omor's Hoof |q 29529/1 |only if havequest(29529)
|confirm |only if not havequest(29529)
step
goto 36.2,79.3
.from Vazruden the Herald##17537
.from Nazan##17536
.get Nazan's Head |q 29528/2 |only if havequest(29528)
|confirm |only if not havequest(29528)
step
goto 31.3,86.4
.click Reinforced Fel Iron Chest##5744
.' Loot your items for clearing this dungeon.
|confirm
step
goto 51.1,63.8 |n
.' Jump down here to turn in your quests. |goto 49.1,67.3 <5 |noway |c
step
goto 48.5,68.1
.talk 54603
..turnin 29528
..turnin 29529
..turnin 29594
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: The Blood Furnace (BF) 60-64",[[
dungeon 725
description This guide will walk you through the Hellfire Citadel: The Blood Furnace dungeon.
achieveid 648
author support@zygorguides.com
step
label	"start"
goto The Blood Furnace 51.4,90.0
.talk 54629
..accept 29538
..accept 29539
..accept 29540
step
'You can collect Blood Vials from all Orcs in this instance.
.from Laughing Skull Enforcer##17370+, Shadowmoon Adept##17397+, Laughing Skull Rogue##17491+, Shadowmoon Warlock##17371+
..collect Fel Orc Blood Vial##23894 |n
|confirm
|only if havequest(29538)
step
goto The Blood Furnace 36.6,40.7
.from The Maker##17381
.get Fel Infusion Rod |q 29538/2 |only if havequest(29538)
|confirm |only if not havequest(29538)
step
goto 43.4,21.9
.click Cell Door Lever##6899
.' This will start the boss fight. You will have 4 cell doors open and have to fight Orcs until all 4 waves are complete.
.' Once you have killed the Orcs, the Boss will come in.
.' Try not to stand in the greem mist from the boss, this will deal lots of damage to you.
.from Broggok##17380
|confirm
step
'Make sure you have collected Fel Orc Blood
.get 10 Fel Orc Blood Vial##23894 |q 29538/1
|only if havequest(29538)
step
goto The Blood Furnace 64.3,41.4
.'Investigate The Blood Furnace |q 29539/1
|only if havequest(29539)
step
goto 59.2,42.5
.from Keli'dan the Breaker##17377 |only if not havequest(29540)
.kill Keli'dan the Breaker |q 29540/1 |only if havequest(29540)
|confirm |only if not havequest(29540)
step
goto 62.5,50.6 |n
.' Follow this path to the entrance |goto 62.5,50.6 <5 |noway |c
step
goto 51.4,90.1
.talk 54629
..turnin 29538
..turnin 29539
..turnin 29540
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens (SP) 61-65",[[
dungeon 728
description This guide will walk you through the Coilfang Reservoir: Slave Pens dungeon.
achieveid 649
author support@zygorguides.com
step
label	"start"
goto The Slave Pens 18.9,11.3
.talk 54667
..accept 29563
..accept 29565
step
goto 17.9,12.1
.talk 54668
..accept 29564
step
.' Follow the path and go straight through this main room. |goto 25.0,51.2 <5 |c
step
.' Follow this hallway. |goto 40.2,35.5 <5 |c
step
goto 48.8,24.3
.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
.from Mennu the Betrayer##17941 |only if not havequest(29564)
.kill Mennu the Betrayer##17941 |q 29564/1 |only if havequest(29564)
|confirm |only if not havequest(29564)
step
goto 48.8,14.0 |n
.' Follow this ramp up and then follow the path across. |goto 48.8,14.0 <5 |noway |c
step
goto 52.2,65.4 |n
.' Jump down here |goto 52.2,65.4 <5 |noway |c
step
goto 48.9,83.4
.talk 17890
.' Discover Weeder Greenthumb. |q 29563/2
|only if havequest(29563)
step
goto 57.3,45.4
.from Rokmar the Crackler##17991
.' Rokmar will put a bleed effect on you. This will not go away until you are fully healed to 100%, so bring some food or a healer.
.get The Invader's Claw##72118 |q 29565/1 |only if havequest(29565)
|confirm |only if not havequest(29565)
step
goto 74.9,51.4 |n
.' Follow this path up. |goto 74.9,51.4 <5 |noway |c
step
goto 95.7,66.2
.talk 17893
.' Discover Naturalist Bite. |q 29563/1
|only if havequest(29563)
step
goto 95.7,66.2
.' Be ready to fight a couple mobs
.talk 17893
.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
.' Talk to Naturalist Bite
.' Tell him <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite
step
goto The Slave Pens 86.2,67.9
.from Quagmirran##17942
.get The Slave Master's Eye |q 29565/2 |only if havequest(29565)
|confirm |only if not havequest(29565)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto The Slave Pens 17.9,12.2
.talk 54668
..turnin 29564
step
goto 18.8,11.3
.talk 54667
..turnin 29563
..turnin 29565
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog (UB) 62-66",[[
dungeon 726
description This guide will walk you through the Coilfang Reservoir: Underbog dungeon.
achieveid 650
author support@zygorguides.com
step
label	"start"
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
'As you go through the dungeon, look for Sanguine Hibiscus.
.click Sanguine Hibiscus##5031
.collect 5 Sanguine Hibiscus##24246 |q 29691/1
|confirm
|only if havequest(29691)
step
.' Keep following this straight path. |goto 42.5,62.0 <5 |c
step
.' Follow this path up and around. |goto 57.4,82.9 <5 |c
step
goto 70.0,90.0
.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
.' Keep moving him so that doesn't happen.
.from Hungarfen##17770 |only if not havequest(29568)
.kill Hungarfen##17770 |q 29568/1 |only if havequest(29568)
|confirm |only if not havequest(29568)
step
goto 77.2,43.8
.' Follow the path around until you get here.
.from Ghaz'an##18105
|confirm
step
.' Jump down in the water here.  |goto 78.9,24.5 <5 |c
step
.' Swim across the water and jump down here. |goto 79.6,15.2 <5 |c
step
goto 67.4,21.3
.talk 17885
.' Discover Earthbinder Rayge |q 29570/1
|only if havequest(29570)
step
.' Follow this path down and to the right. |goto 67.0,14.0 <5 |c
step
goto 41.5,25.4
.from Swamplord Musel'ek##17826, Claw##17827
.' Talk to Windcaller Claw |only if havequest(29570)
.' Discover Windcaller Claw |q 29570/2 |only if havequest(29570)
|confirm |only if not havequest(29570)
step
goto The Underbog 25.9,45.5
.from The Black Stalker##17882
.get Black Stalker's Brain |q 29567/1 |only if havequest(29567)
|confirm |only if not havequest(29567)
step
'Make sure you have picked up 5 Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.get 5 Sanguine Hibiscus##24246 |q 29691/1
|only if havequest(29691)
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Auchindoun: Mana-Tombs (MT) 63-67",[[
dungeon 732
description This guide will walk you through the Auchindoun: Mana-Tombs dungeon.
achieveid 651
author support@zygorguides.com
step
label	"start"
goto Mana-Tombs 32.7,19.4
.talk 54694
..accept 29574
step
goto 34.4,19.4
.talk 54692
..accept 29573
..accept 29575
step
goto 48.2,27.7
.from Pandemonius##18341 |tip Clear out this room before you pull the boss, they will aggro with him.
.get Pandemonius' Essence |q 29574/1 |only if havequest(29574)
|confirm |only if not havequest(29574)
step
goto 61.3,74.0
.from Tavarok##18343
.get Tavarok's Heart |q 29574/2 |only if havequest(29574)
|confirm |only if not havequest(29574)
step
goto 32.4,50.7
.from Nexus-Prince Shaffar##18344
.get Shaffar's Wrappings |q 29575/1 |only if havequest(29575)
|confirm |only if not havequest(29575)
step
.' Follow this Hallway. |goto 32.6,44.3 <5 |c
step
goto Mana-Tombs 34.3,19.6
.talk 54692
..turnin 29573
..turnin 29575
step
goto 32.8,19.4
.talk 54694
..turnin 29574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Auchindoun: Auchenai Crypts (AC) 64-68",[[
dungeon 722
description This guide will walk you through the Auchindoun: Auchenai Crypts dungeon.
achieveid 666
author support@zygorguides.com
step
label	"start"
goto Auchenai Crypts 44.3,72.6
.talk 54725
..accept 29590
..accept 29596
step
.from Auchenai Monk##18497+, Auchenai Soulpriest##18493+, Auchenai Vindicator##18495+
.' This room can be a little rough for low level groups. Pull the _Soulpriest's_ first with a silence or charge them, they will cast spells the whole fight.
.' Kill the _Vindicators Soulpriest's first_, then deal with the _Monks_ afterward.
.' You will have to also fight summoned adds, this is unavoidable.
|confirm
step
.' Follow the stairs up |goto Auchenai Crypts 43.8,17.3 <5 |c
step
goto Auchenai Crypts/2 51.0,17.9
.talk 54698
..accept 29591
step
goto 46.2,68.7
.from Shirrak the Dead Watcher##18371 |only if not havequest(29590)
.kill Shirrak the Dead Watcher##18371 |q 29590/1 |only if havequest(29590)
|confirm |only if not havequest(29590)
step
goto 58.1,88.1
.kill 5 Raging Skeleton##18524+ |q 29591/2
|only if havequest(29591)
step
goto 73.9,70.6
.kill 3 Auchenai Necromancer##18702+ |q 29591/3
|only if havequest(29591)
step
goto 74.2,49.9
.from Exarch Maladaar##18373 |only if not havequest(29596)
.kill Exarch Maladaar |q 29596/1 |only if havequest(29596)
|confirm |only if not havequest(29596)
step
' Run to the beginning of the dungeon to turn in your quests.
|confirm
step
goto Auchenai Crypts/2 51.0,17.9
.talk 54698
..turnin 29591
step
goto Auchenai Crypts 44.3,72.6
.talk 54725
..turnin 29590
..turnin 29596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Caverns of Time: Escape from Durnholde Keep (Durn) 65-69",[[
dungeon 734
description This guide will walk you through the Caverns of Time: Escape from Durnholde Keep dungeon.
achieveid 652
author support@zygorguides.com
step
label	"start"
goto Old Hillsbrad Foothills 28.9,48.3
.talk 18723
..accept 29598
..collect Pack of Incendiary Bombs##25853
step
goto 28.9,48.3
.talk 18723
..collect Pack of Incendiary Bombs##25853
|only if completedq(29598)
step
goto 29.2,47.9
.talk 18725
.' Tell him
.' <I'm ready to go to Durnholde Keep.> |goto 69.3,71.5 <5 |noway |c
step
.' Enter Durnholde Keep here. |goto 70.3,67.5 <5 |c
step
.' Go across the Bridge and follow this path to the right. |goto 74.5,63.1 <5 |c
step
goto 77.3,61.5 |n
.' Jump down here. |goto 78.0,62.1 <5 |noway |c
step
goto 77.6,66.0
.click Barrel##334
.' You will need to click the Barrels in each building, until you have 5 Bombs set.
.' You can find the barrels inside the buildings at the waypoints.
.' Set 5 Internment Lodges on Fire |q 29598/1 |only if havequest(29598)
|confirm |only if not havequest(29598) or completedq(29598)
'|goto 76.7,67.4
'|goto 73.5,67.8
'|goto 68.9,62.7
'|goto 67.9,59.7
step
goto 75.7,64.8
.' Lieutenant Drake will come down these stairs when the building are on fire.
.from Lieutenant Drake##17848
|confirm
step
goto 73.2,61.2 |n
.' Go up the stairs and into this building. |goto 73.2,61.2 <5 |noway |c
step
goto 74.5,57.7
.talk 17876 |tip He is in the basement.
..turnin 29598
..accept 29599
step
goto 74.5,57.7
.talk 17876
.' Tell him
.' <We are ready to get you out of here Thrall. Let's go!>
|confirm
step
goto 69.6,68.4
.from Captain Skarloc##17862
.' After you kill the boss, talk to Thrall
.talk 17876
.' Tell him
.' <Taretha cannot see you, Thrall.>
|confirm
step
goto 52.8,41.2 |n
.' Follow Thrall until he stops near Tarren Mill, you will have to fight guards along the way.
.talk 17876
.' Tell him
.' < We're ready, Thrall.>
|confirm
step
goto 51.3,29.8 |n
.' Follow Thrall until he comes upstairs here.
.talk 18887
.' Tell her:
.' <Strange wizard?>
|confirm
step
.' Follow Thrall outside
.' You will have to fight a few waves of dragonkin
.' The Boss will come down to fight once you have killed enough mobs.
.from Epoch Hunter##18096
.' Fulfill Thrall's Destiny |q 29599/1
|only if havequest(29599)
step
.' Follow Thrall outside
.' You will have to fight a few waves of dragonkin
.' The Boss will come down to fight once you have killed enough mobs.
.from Epoch Hunter##18096
|confirm
|only if not havequest(29599)
step
goto 50.3,30.9
.talk 18723
..turnin 29599
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Auchindoun: Sethekk Halls 67-69",[[
dungeon 732
description This guide will walk you through the Auchindoun: Sethekk Halls dungeon.
achieveid 653
author support@zygorguides.com
step
label	"start"
goto Sethekk Halls 72.2,35.5
.talk 54840
..accept 29605
..accept 29606
step
.' When entering this room, you will fight lots of Arakkoa.
.from Time-Lost Controller##18327+ |tip Kill these first, they will put down a mind control totem, and turn a party member against you group.
.' Go through into the main room through this doorway. |goto 64.7,27.8 <5 |c
step
goto 48.6,67.5
.from Darkweaver Syth##18472
.' He will summon 4 elementals periodically through the fight, they will attack anyone that pulls aggro.
.get Terokk's Mask |q 29606/1 |only if havequest(29606)
|confirm |only if not havequest(29606)
step
goto Sethekk Halls 48.3,67.7
.talk 54847
..accept 29607
step
goto 50.8,70.8
.talk 18956
.' Tell him
.' <You are free to go>
.' Free Lakka |q 29605/1
|only if havequest(29605)
step
.' As you run through the next part of this dungeon
.from Cobalt Serpent##19428+
.get 3 Cobalt Eye |q 29607/1 |n
|confirm
|only if havequest(29607)
step
goto Sethekk Halls 51.1,95.2 |n
.' Go up these stairs. |goto Sethekk Halls/2 |noway |c
step
goto 32.5,66.6 |n
.from Cobalt Serpent##19428+
.get 3 Cobalt Eye |q 29607/1
|only if havequest(29607)
step
goto Sethekk Halls/2 32.4,56.0
.from Anzu##23035
|confirm
|only if heroic_dung()
step
goto 32.2,29.5
.from Talon King Ikiss##18473
.get Terokk's Quill |q 29606/2 |only if havequest(29606)
|confirm |only if not havequest(29606)
step
goto 39.7,27.4 |n
.' Follow this hallway down |goto Sethekk Halls |noway |c
|only if not havequest(29606)
step
goto Sethekk Halls/2 53.1,87.6 |n
.' Go down these stairs. |goto Sethekk Halls |noway |c
|only if havequest(29606)
step
goto Sethekk Halls 48.1,67.7
.talk 54847
..turnin 29607
step
goto 72.2,35.5
.talk 54840
..turnin 29605
..turnin 29606
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Auchindoun: Shadow Labyrinth (SL or Slabs) 68-70",[[
dungeon 732
description This guide will walk you through the Auchindoun: Shadow Labyrinth dungeon.
achieveid 654
author support@zygorguides.com
step
label	"start"
goto Shadow Labyrinth 22.6,12.5
.talk 54891
..accept 29640
step
goto 21.3,13.1
.talk 54890
..accept 29643
..accept 29645
step
.' Follow this hallway up. |goto 34.3,22.3 <5 |c
step
goto 29.5,39.1
.' To activate this boss, kill all the Ritualists in this room. Once you kill the final mob, the Boss will become unleashed.
.kill 12 Cabal Ritualist##18794+ |q 29645/1
|only if havequest(29645)
step
goto 21.4,39.7
.' To activate this boss, kill all the Ritualists in this room. Once you kill the final mob, the Boss will become unleashed.
.from Ambassador Hellmaw##18731 |only if not havequest(29645)
.kill Ambassador Hellmaw |q 29645/2 |only if havequest(29645)
|confirm |only if not havequest(29645)
step
goto 17.0,22.4
.talk 18891
..turnin 29640
..accept 29641
step
.' As you traverse the Shadow Labyrinth:
.click Soul Device##7010+
.get 5 Soul Devices |q 29641/1 |n
|confirm
|only if havequest(29641)
step
goto 26.2,68.2
.from Blackheart the Inciter##18667 |tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|confirm
step
goto 53.3,56.5
.from Grandmaster Vorpil##18732 |tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|confirm
step
goto 53.3,59.0
.click Codex of Blood##6892
..turnin 29643
..accept 29644
step
goto 80.8,39.1
.from Murmur##18708 |tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|confirm
step
.' Make sure you have 5 Soul Devices.
.click Soul Device##7010+
.get 5 Soul Devices |q 29641/1
|only if havequest(29641)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto 21.3,13.1
.talk 54890
..turnin 29644
..turnin 29645
step
goto 22.6,12.5
.talk 54891
..turnin 29641
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Mechanar (Mech) 68-70",[[
dungeon 730
description This guide will walk you through the Tempest Keep: The Mechanar dungeon.
achieveid 658
author support@zygorguides.com
step
label	"start"
goto The Mechanar/1 49.4,83.5
.' Click the Accept Quest box on the right side of your screen.
..accept 29657
step
.' Take the left passage. |goto The Mechanar 43.5,70.6 <5 |c
step
goto 46.4,58.4
.from Gatewatcher Gyro-Kill##19218
|confirm
step
.' Click the Accept Quest box on the right side of your screen.
..accept 29659
step
goto The Mechanar 51.1,30.4
.from Mechano-Lord Capacitus##19219 |only if not havequest(29657)
.kill Mechano-Lord Capacitus##19219 |q 29657/1 |only if havequest(29657)
|confirm |only if not havequest(29657)
step
.' Click the Turnin Quest box on the right side of your screen.
..turnin 29657
step
.' Click the Turnin Quest box on the right side of your screen.
..accept 29658
step
60.2,36.8
.from Gatewatcher Iron-Hand##19710
|confirm
step
goto 39.4,28.3
.click Cache of the Legion##7216
.' Loot the items inside.
.get Blinding Fury |q 29659/1 |only if havequest(29659)
|confirm |only if not havequest(29659)
step
.' Click the Quest Complete Box in the top right corner.
..turnin 29659
step
goto 41.8,25.7 |n
.' Ride the elevator up to the Calculation Chamber. |goto The Mechanar/2 |noway|c
step
goto 53.1,27.4 |n
.' Clear this whole room before pulling this boss.
|confirm
step
goto 47.6,20.8 |n
.from Nethermancer Sepethrea##19221
.' Do not kill the _Raging Flames_ that she summons, try to avoid them and their _AoE_ spells. They are not hard to avoid.
|modelnpc Raging Flames##20481+
|confirm
step
map The Mechanar/2
path follow loose; loop off
path	52.8,36.4	52.6,50.9	49.6,58.1
path	38.5,60.9
.' Follow this long hallway, and kill the mobs that spawn in groups.
.from Bloodwarder Centurion##19510+, Sunseeker Engineer##20988+, Sunseeker Astromage##19168+, Bloodwarder Physician##20990+, Tempest-Forge Destroyer##19735+
|confirm
step
goto 27.8,61.4
.from Pathaleon the Calculator##19220 |only if not havequest(29658)
.kill Pathaleon the Calculator##19220 |q 29658/1 |only if havequest(29658)
|confirm |only if not havequest(29658)
step
.' Click the Quest Complete Box in the top right corner.
..turnin 29658 |only if havequest(29658)
step
goto 27.3,74.6 |n
' You can use this portal to exit The Mechanar |goto Netherstorm |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Tempest Keep: Botanica (Bot) 68-70",[[
dungeon 729
description This guide will walk you through the Tempest Keep: Botanica dungeon.
achieveid 659
author support@zygorguides.com
step
label	"start"
goto The Botanica 85.5,47.3
' Click the Accept Quest box on the right side of your screen.
..accept 29660
step
map The Botanica
path follow loose; loop off
path	79.3,49.4	53.0,51.0	47.8,43.3
.' Follow the path through the halls until you reach this room. |goto 47.7,43.4 <5 |noway|c
step
goto 47.4,18.2
.from Commander Sarannis##17976 |only if not havequest(29660)
.kill Commander Sarannis##17976 |q 29660/1 |only if havequest(29660)
|confirm |only if not havequest(29660)
step
goto 25.9,25.5
.from High Botanist Freywinn##17975 |only if not havequest(29660)
.kill High Botanist Freywinn##17975 |q 29660/2 |only if havequest(29660)
|confirm |only if not havequest(29660)
step
goto 8.2,47.6
.from Thorngrin the Tender##17978 |only if not havequest(29660)
.kill Thorngrin the Tender##17978 |q 29660/3 |only if havequest(29660)
|confirm |only if not havequest(29660)
step
.' Click the Complete Quest Box in the top right corner.
..turnin 29660
..accept 29667
step
goto 16.5,76.7
..kill 6 Mutate Fleshlasher##19598 |q 29667/1
..kill 6 Mutate Fear-Shrieker##19513 |q 29667/2
..kill 6 Mutate Horror##19865 |q 29667/3
.' You can find more at [29.1,81.9]
.' You may have to run the dungeon more than once to get all of them.
|confirm |only if not completedq(29667)
step
goto 34.1,89.3
.from Laj##17980
.get Rapidly Evolving Frond |q 29667/4 |only if havequest(29667)
|confirm |only if not havequest(29667)
step
'Click the Quest complete box at the top right of the screen
..turnin 29667
..accept 29669
step
goto 34.1,35.8
.from Warp Splinter##17977 |only if not havequest(29669)
.kill Warp Splinter##17977 |q 29669/1 |only if havequest(29669)
|confirm |only if not havequest(29669)
step
.' Click the Complete Quest box at the top right of the screen.
..turnin 29669
step
goto 34.1,18.0 |n
' You can use this portal to exit The Botanica. |goto Netherstorm |noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Tempest Keep: Arcatraz (Arca) 68-70",[[
dungeon 731
description This guide will walk you through the Tempest Keep: Arcatraz dungeon.
achieveid 660
author support@zygorguides.com
step
label	"start"
goto The Arcatraz/1 41.3,73.7
' Click the Quest Accept Box that pops up.
..accept 29674
step
goto 61.6,24.8
.from Zereketh the Unbound##20870 |only if not havequest(29674)
.kill Zereketh the Unbound##20870  |q 29674/1 |only if havequest(29674)
|confirm |only if not havequest(29674)
step
' Click the Quest Accept Box that pops up.
..turnin 29674
..accept 29675
step
.' Go up the stairs. |goto The Arcatraz/1 65.0,35.6 |c
step
goto The Arcatraz/2 21.4,77.0
..from Wrath-Scryer Soccothrates##20886 |only if not havequest(29675)
..kill Wrath-Scryer Soccothrates##20886 |q 29675/1 |only if havequest(29675)
|confirm |only if not havequest(29675)
step
goto 35.7,78.4
..from Dalliah the Doomsayer##20885 |only if not havequest(29675)
..kill Dalliah the Doomsayer##20885 |q 29675/2 |only if havequest(29675)
|confirm |only if not havequest(29675)
step
' Click the Quest Turnin Box that pops up.
..turnin 29675
..accept 29681
step
.' Go through this passage and up the stairs |goto 37.2,57.2 <5 |c
step
goto The Arcatraz/3 58.2,30.5
.' Attack Warden Mellichar to get the fight stared. |modelnpc Warden Mellichar##20904
.' He will unleash several monsters and then Harbinger Skyriss.
..from Harbinger Skyriss##20912 |only if not havequest(29681)
..kill Harbinger Skyriss##20912 |q 29681/1 |only if havequest(29681)
|confirm |only if not havequest(29681)
step
' Click the Quest Turnin Box that pops up.
..turnin 29681
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Caverns of Time: Opening the Dark Portal (CoT:Dark Portal or BM) 68-70",[[
dungeon 733
description This guide will walk you through the Caverns of Time: Opening the Dark Portal dungeon.
achieveid 655
author support@zygorguides.com
step
label	"start"
goto The Black Morass 49.3,6.4
.talk 20201
..accept 10297
step
goto The Black Morass 48.9,71.8
.' Protect Medivh while he attempts to open the Dark Portal. If his shield gets too low you will fail.
.' Monsters will appear randomly in the swamp out of yellow portals. To stop the flow of monsters you have to kill the Rift Lords and Rift Keepers summmoning the portals.
.' Time Rifts 6, 12, and 18 will spawn bosses instead of Rift Lords or Rift Keepers.
|confirm
step
.from Rift Lord##17839+, Rift Keeper##21148+
.' Open 6 Time Rifts by killing Rift Lords and Rift Keepers and then kill Chrono Lord Deja.
.from Chrono Lord Deja##17879
|confirm
step
.from Rift Lord##17839+, Rift Keeper##21148+
.' Open 12 Time Rifts by killing Rift Lords and Rift Keepers and then kill Temporus.
.from Temporus##17880
|confirm
step
.from Rift Lord##17839+, Rift Keeper##21148+
.' Open 18 Time Rifts by killing Rift Lords and Rift Keepers and then kill Aeonus.
.from Aeonus##17881
.' Open the Dark Portal |q 10297/1 |only if havequest(10297)
|confirm |only if not havequest(10297)
step
goto 49.3,6.5
.talk 20201
..turnin 10297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Shattered Halls (SH or Shatt Halls) 68-70",[[
dungeon 710
description This guide will walk you through the Hellfire Citadel: Shattered Halls dungeon.
achieveid 657
author support@zygorguides.com
step
label	"start"
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
|only if havequest(29652)
step
goto 34.9,69.7 |n
.' Jump down into the sewers here. |goto 34.9,69.7 <5 |noway |c
step
goto 37.0,61.8 |n
.' Follow the sewer and turn left. Enter the Throne of the Damned here. |goto 37.0,61.8 <5 |noway |c
step
goto 34.6,62.1
.from Grand Warlock Nethekurse##16807
.collect Grand Warlock's Amulet##23735 |only if havequest(29649)
|confirm |only if not havequest(29649)
step
goto 31.9,60.6
.' Use your Grand Warlock's Amulet next to this fire. |use Grand Warlock's Amulet##23735
.get Fel Ember |q 29649/1
|only if havequest(29649)
step
goto The Shattered Halls 29.4,14.9
.' Run down this hallway and kill all the Orcs. Watch out for flaming arrows shot at the ground.
.from Shattered Hand Blood Guard##17461+, Shattered Hand Archer##17427+
|confirm
step
goto 53.8,26.4
.kill 2 Shattered Hand Champion##17671+ |q 29652/3
.kill 2 Shattered Hand Centurion##17465+ |q 29652/2
|only if havequest(29652)
step
goto 53.3,33.6
.from Warbringer O'mrogg##16809 |tip He will fear random party members, this can make the fight healing intensive.
.get O'mrogg's Warcloth |q 29656/1 |only if havequest(29656)
|confirm |only if not havequest(29656)
step
goto 67.8,55.3
.from Warchief Kargath Bladefist##16808 |tip This boss will call in Reaver Guards to help during the fight. Tank needs to pick up aggro on them.
.from Reaver Guard##17623+
.get Warchief Kargath's Fist##23723 |q 29654/1 |only if havequest(29654)
step
goto 67.2,51.8
.talk 54933
..turnin 29652
..turnin 29649
..turnin 29656
..turnin 29654
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault (SV) 68-70",[[
dungeon 727
description This guide will walk you through the Coilfang Reservoir: The Steamvault dungeon.
achieveid 656
author support@zygorguides.com
step
label	"start"
goto The Steamvault 17.9,27.3
.talk 54848
..accept 29613
step
goto 17.5,25.9
.talk 54849
..accept 29614
step
goto 18.9,27.8
.'Talk to Windcaller Claw |modelnpc Windcaller Claw##17827
..accept 29615
step
goto 33.7,22.7
.kill 3 Bog Overlord##21694+|q 29614/1
|only if havequest(29614)
step
goto The Steamvault 54.3,12.4
.from Hydromancer Thespia##17797 |only if not havequest(29615)
.kill Hydromancer Thespia##17797 |q 29615/1 |only if havequest(29615)
|confirm |only if not havequest(29615)
step
goto 54.2,10.6
.click Main Chambers Access Panel##7147
.' You hear a faint echo...
|confirm
step
.' Go through the opening on your left. |goto 42.1,32.9 <5 |c
step
.' Go up the ramp. |goto 49.3,42.8 <5 |c
step
.' Go up to the bridge on the right side. |goto 55.8,47.3 <5 |c
step
.' Cross the bridge and go through the hallway. |goto 39.7,69.0 <5 |c
step
goto The Steamvault 33.6,81.2
.from Mekgineer Steamrigger##17796
.get Irradiated Gear |q 29614/3  |only if havequest(29614)
.kill 6 Coilfang Leper##21338+ |q 29614/2 |only if havequest(29614)
|confirm |only if not havequest(29614)
step
goto 31.8,84.0
.click Main Chambers Access Panel##7147
.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm
step
.' Follow the tunnel back to the bridge. |goto 54.0,51.4 <5 |c
step
.' Take a right after crossing the bridge, and go up a ramp. |goto 69.8,43.4 <5 |c
step
goto 78.7,43.3 |n
.from Warlord Kalithresh##17798 |only if not havequest(29613)
.kill Warlord Kalithresh##17798 |q 29613/1 |only if havequest(29613)
|confirm |only if not havequest(29613)
step
.' Follow the path down to the ramp. |goto 49.1,42.6 <5 |c
step
.' Enter this doorway. |goto 42.5,33.0 <5 |c
step
goto 18.8,27.6
.'Talk to Windcaller Claw |modelnpc Windcaller Claw##17827
..turnin 29615
step
goto 18.0,27.2
.talk 54848
..turnin 29613
step
goto 17.6,25.9
.talk 54849
..turnin 29614
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Outland Dungeons\\Magisters' Terrace (MT) 70",[[
dungeon 798
description This guide will walk you through the Magisters' Terrace dungeon.
achieveid 661
author support@zygorguides.com
step
label start
goto Magisters' Terrace 42.6,87.2
.talk 55007
..accept 29684
..accept 29686
..accept 29687
step
map Magisters' Terrace/2
path follow loose;loop off;ants straight
path	42.6,74.5	42.6,31.2	42.6,23.5
.' Follow this path and kill Selin Fireheart.
.from Selin Fireheart##24723 |only if not havequest(29687)
.kill Selin Fireheart##24723 |q 29687/1 |only if havequest(29687)
|confirm |only if not havequest(29687)
step
goto 60.8,23.7
.talk 24822
..turnin 29684
..accept 11490
step
goto 81.6,26.8
.from Vexallus##24744
.get Volatile Essence |q 29686/1 |only if havequest(29686)
|confirm |only if not havequest(29686)
step
goto 94.2,26.8
.click Scrying Orb##4891
.' Activate the Scrying Orb |q 11490/1
|only if havequest(11490)
step
goto 94.1,35.9
.talk 24848
..turnin 11490
..accept 29685
step
goto 83.2,46.2 |n
.' Follow this ramp down and go through the doorway. |goto Magisters' Terrace 79.8,56.3 <5 |noway |c
step
goto 39.0,56.1
.' Kill Priestess Delrissa and her four companions.
.from Priestess Delrissa##24560 |only if not havequest(29687)
.kill Priestess Delrissa##24560 |q 29687/2 |only if havequest(29687)
|confirm |only if not havequest(29687)
|modelnpc Kagani Nightstrike##24557
|modelnpc Ellrys Duskhallow##24558
|modelnpc Eramas Brightblaze##24554
|modelnpc Yazzai##24561
|modelnpc Warlord Salaris##24559
|modelnpc Apoko##24553
|modelnpc Zelfan##24556
step
map Magisters' Terrace
path follow loose;loop off;ants straight
path	31.0,56.1	19.2,49.7	7.7,50.1
.' Follow the path and kill Kael'thas Sunstrider.
.from Kael'thas Sunstrider##24664
.get Head of Kael'thas |q 29685/1 |only if havequest(29685)
|confirm |only if not havequest(29685)
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
|only if havequest(29685)
step
goto 13.4,50.0
.talk 55007
..turnin 29686
..turnin 29687
..turnin 29685
step
goto 4.3,49.6
.click Escape to the Isle of Quel'Danas##7161 |goto Isle of Quel'Danas 47.3,30.6 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Keep (UK) 69-72",[[
dungeon 523
description This guide will walk you through the Utgarde Keep dungeon.
achieveid 477
step
label "lfg"
goto Utgarde Keep 67.6,71.0
.talk 24111
.accept 29763
.accept 29764
.accept 29803
step
.' While going through the instance, look for _Vrykul Weapons_ along the walls.
.click Vrykul Weapons##8388
|confirm
|only if havequest(29764)
step
map Utgarde Keep
path follow strict;loop off;ants straight
path	65.1,32.5	58.3,25.7	50.2,28.5
.' Kill the groups at each of the waypoints.  It will deactivate the flame walls blocking you.
|confirm
step
goto 29.5,67.0
.from Prince Keleseth##23953 |only if not havequest(29803)
.kill Prince Keleseth##23953 |q 29803/1 |only if havequest(29803)
|confirm |only if not havequest(29803)
step
map Utgarde Keep
path follow strict;loop off;ants straight
path	22.1,74.3	27.2,90.0	40.3,86.5
path	48.6,84.4
.' Go up the steps here. |goto Utgarde Keep 48.6,84.4 <5 |noway|c
step
goto Utgarde Keep/2 58.5,65.4
.' There will be two bosses, _Skarvald & Dalronn the Controller_.
.' Skarvald - He has two abilities:
.' He will _Charge_ random party member, stunning them for 2 second, as well as using _Stone Strike_ on the tank, knocking them back.
.' Dalronn - Uses two abilities:
.' His basic attack is _Shadow Bolt_, and he will randomly cast _Debilitate_ slowing the targets melee, moving, spell casting and ranged attack speed by 50% as well as putting a dot on the target.
.' If you can, try to kill them at the same time. When one dies, a ghost with the same abilities will spawn, but won't be targetable to control in any way.
.from Dalronn##24201
.from Skarvald the Constructor##24200
|confirm
step
goto 53.6,26.5 |n
.' Go up the steps. |goto 53.6,26.5 <5 |noway|c
step
goto Utgarde Keep/3 72.7,38.8
.' There are two phases to this fight.
.' Phase 1:
.' He will often use _Staggering Roar_, which will interrupt any spell casts. Be sure to stop casting if you see him using this.
.' He will use _Smash_, which is a cone attack that attacks whoever is in front of him. It can be avoided by side stepping.
.' Phase 2:
.' He will often use _Dreadful Roar_, which will interrupt any spell casts. Be sure to stop casting if you see him using this.
.' He will use _Woe Strike_, which will leave a debuff that will hurt anyone who heals the target afflicted by this.
.' He will use _Dark Smash_, which will do massive cone damage and can be easily avoided by side stepping. Unlike Smash, this attack will additionally hit everyone in the group, knocking them down.
.' He will also use _Shadow Axe_, which is cast at a random target.  You will have to run away from it.
.from Ingvar the Plunderer##23954
.get Ingvar's Head |q 29763/1 |only if havequest(29763)
|confirm |only if not havequest(29763)
step
.' If you haven't collected
.click Vrykul Weapons##8388
.get 5 Vrykul Weapon |q 29764/1
|only if havequest(29764)
step
goto 48.1,55.6 |n
.' Jump down into the water below. Then go to [50.2,54.5].
.' Jump down again.
|confirm
step
goto Utgarde Keep 67.6,71.0
.talk 24111
..turnin 29763
..turnin 29764
..turnin 29803
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\The Nexus (Nexus) 70-73",[[
dungeon 520
description This guide will walk you through the The Nexus dungeon.
achieveid 478
author support@zygorguides.com
step
label "lfg"
goto The Nexus 36.2,83.0
.talk 55537
..accept 13094
step
goto 37.2,81.4
.talk 55536
..accept 11911
step
goto 36.2,81.4
.talk 55531
..accept 11973
step
goto 35.1,81.4
.talk 55535
..accept 11905
step
map The Nexus
path follow loose; loop off
path	32.8,76.3	26.8,68.8	21.8,66.4
path	21.6,56.2	19.0,51.8
.' Follow the path |goto The Nexus 19.0,51.1 <5 |c |noway
step
goto The Nexus 19.0,51.8
.from Horde Commander##27947
.click Berinand's Research##8128 |only if havequest(13094)
.get Berinand's Research |q 13094/1 |only if havequest(13094)
|only if havequest(13094)
step
goto 27.6,38.6
.from Grand Magus Telestra##26731
.' Follow the path left and you will reach her.
|confirm
step
map The Nexus
path follow loose; loop off
path	27.4,30.3	31.6,22.0	45.6,25.3	47.3,21.7
path	58.2,22.0
.' Follow the path |goto The Nexus 61.5,21.9 <5 |c |noway
step
goto The Nexus 61.5,21.9
.from Anomalus##26763
|confirm
step
goto 65.1,21.8
.' Use your Interdimensional Refabricator here |use Interdimensional Refabricator##35479
.' Stall the Interdimensional Rift |q 11905/1
|only if havequest(11905)
step
map The Nexus
path follow strict; loop off
path	53.9,18.4	52.0,15.0	50.9,25.5	53.9,35.8
path	56.4,53.0	64.2,52.7	60.3,64.8
.' Follow this path to the next boss |goto 60.3,64.8 <5 |c |noway
step
goto 60.3,64.8
.from Crystalline Protector##26792
.get 5 Arcane Splinter |q 11911/1 |only if havequest(11911)
.' You can find more _Protectors here_ [53.3,55.6] |only if havequest(11911)
step
goto 56.9,70.3
.from Ormorok the Tree-Shaper##26794
.' Go up the ramp on the right and jump down.
|confirm
step
goto 38.3,67.2
.' Kill the Azure Magus in the room, then look for the Containment Spheres around the room.
.click Telestra's Containment Sphere##7800
.' Make sure that you move often during the fight.  If you don't you will get a debuff that lowers your attack and casting speed.
.from Keristrasza##26723
.' Keristrasza Laid to Rest. |q 11973/1 |only if havequest(11973)
step
goto The Nexus 36.2,83.0
.talk 55537
..turnin 13094
step
goto 37.2,81.4
.talk 55536
..turnin 11911
step
goto 36.2,81.4
.talk 55531
..turnin 11973
step
goto 35.1,81.4
.talk 55535
..turnin 11905
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Azjol-Nerub (AN) 71-74",[[
dungeon 533
description This guide will walk you through the Azjol-Nerub dungeon.
achieveid 480
step
label "lfg"
goto Azjol-Nerub/3,15.2,83.8
.talk 55564
.accept 29807
.accept 29808
.accept 29811
step
goto 34.6,48.7
.click Nerubian Scourge Egg##7803
.' Destroy 6 Nerubian Scourge Eggs. |q 29808/1
|only if havequest(29808)
step
goto 46.3,45.2
.from Krik'thir the Gatewatcher##28684
.get The Gatewatcher's Talisman |q 29811/1 |only if havequest(29811)
|confirm |only if not havequest(29811)
step
goto 87.4,53.5
.' Pull the mobs that are standing in the middle of the room.
.' Once you pull them, it will trigger an event.  Clear all the mobs that come at you until _Hadronox_ engages you.
.from Hadronox##28921
|confirm
step
goto 72.6,30.0 |n
.' Follow this path to the right. |goto Azjol-Nerub/2 40.7,28.5 <5 |noway |c
step
goto Azjol-Nerub/2 49.3,65.3 |n
.' Jump down the hole here. |goto Azjol-Nerub 25.6,51.9 <5 |noway |c
step
goto Azjol-Nerub,87.4,53.5
.from Anub'arak##29120
.get Anub'arak's Broken Husk |q 29807/1 |only if havequest(29807)
|confirm |only if not havequest(29807)
step
goto 62.2,48.5
.talk 55564
.turnin 29807
.turnin 29808
.turnin 29811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Ahn'kahet: The Old Kingdom (OK) 72-75",[[
dungeon 522
description This guide will walk you through the Ahn'kahet: The Old Kingdom dungeon.
achieveid 481
step
label "lfg"
goto Ahn'kahet: The Old Kingdom 87.2,72.6
.talk 55658
.accept 29825
step
.' Note that as you're killing trash, target the _Ahn'kahar Spell Flingers_ first.
.' If possible interrupt the  _Shadow Blast_ ability every chance you get.
|confirm
step
goto 70.4,28.6
.from Elder Nadox##29309 |only if not havequest(29825)
.kill Elder Nadox##29309 |q 29825/1 |only if havequest(29825)
|confirm |only if not havequest(29825)
step
.' Click the quest complete box in the top right corner.
.turnin 29825
.accept 29826
step
goto 56.7,24.4
.' Kill the mobs around the Ancient Nerubian Device, then click it.
.click Ancient Nerubian Device##8393
|confirm
step
goto 50.1,29.9
.kill 3 Eye of Taldaram##30285+ |q 29826/1 |only if havequest(29826)
.click Ancient Nerubian Device##8393
|confirm
step
goto 56.9,38.2
.kill Bonegrinder##30284 |q 29826/2
|only if havequest(29826)
step
goto 63.1,50.4
.from Prince Taldaram##29308 |only if not havequest(29826)
.kill Prince Taldaram##29308 |q 29826/3 |only if havequest(29826)
|confirm |only if not havequest(29826)
step
.' Click the Quest Complete box on the top right:
.turnin 29826
.accept 13187
step
goto 49.3,72.3
.from Jedoga Shadowseeker##29310
.' The boss here is optional, click here to skip it. |confirm
step
goto 32.4,50.1
.from 3 Forgotten One##30414+ |only if not havequest(13187)
.kill 3 Forgotten One##30414+ |q 13187/1 |only if havequest(13187)
.' Avoid Shadow Crash, an AoE attack that targets the ground.
|confirm |only if not havequest(13187)
step
.' Herald Volazj casts a spell called _Insanity_, which makes you kill a mirror image of each of your party members.
.' Note that if you're by yourself, _Insanity_ will not do anything.
.from Herald Volazj##29311 |only if not havequest(13187)
.kill Herald Volazj##29311 |q 13187/2 |only if havequest(13187)
|confirm |only if not havequest(13187)
step
goto 26.9,50.4
.talk 55658
.turnin 13187
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Drak'Tharon Keep (DTK) 73-76",[[
dungeon 534
description This guide will walk you through the Drak'Tharon Keep dungeon.
achieveid 482
step
label "lfg"
goto Drak'Tharon Keep 35.5,83.2
.talk 55677
.accept 13129
.accept 29828
step
goto 37.0,80.9
.talk 58149
.accept 30120
step
map Drak'Tharon Keep
path follow strict;loop off;ants straight
path	47.1,83.2	47.9,74.0	47.4,54.4
path	47.3,43.2	54.6,35.0
.' Clear the trash at each of these points.
|confirm
step
goto Drak'Tharon Keep/1 56.8,19.3
.' Trollgore will use the _Consume_ ability, eating his fallen allies and gaining a damage buff. You can avoid this by kiting him away from the bodies.
.' He will also use _Corpse Explode_ on his fallen allies, damaging those around.
.' He'll put an _Infected Wound_ debuff on the tank, making him take extra damage.
.from Trollgore##26630
|confirm
step
goto Drak'Tharon Keep 73.3,47.6
.' Attack Novos the Summoner to start the event.
.' Kill the mobs that come down the steps here.
.' 4 Crystal Handlers will come one at a time from the waypoints on each of the summoners side.
.' Once they are dead, Novos will become vulnerable to attack.
.' He will cast _Blizzard_ on random party members.
.' He will put _Wrath of Misery_ on random party members, which leaves a dot.
.from Novos the Summoner##26631
.' Use Kurzel's Blouse Scrap on Novos the Summoner's corpse. |use Kurzel's Blouse Scrap##43214 |only if havequest(13129)
.get Ichor-Stained Cloth |q 13129/1 |only if havequest(13129)
'|goto Drak'Tharon Keep,67.4,55.9
'|goto Drak'Tharon Keep,67.2,38.0
|confirm |only if not havequest(13129)
step
goto Drak'Tharon Keep 67.8,80.2
.' Clear the trash before engaging King Dred.
.' If you didn't clear the trash he will use an ability called _Raptor Call_, calling all raptors in the area to assist him.
.' Stand at max range if you're a caster / healer. He uses _Bellowing Roar_ which fears everyone within 35 yards. It can be countered with Fear Ward or Tremor Totem.
.' He will hit the tank with _Grievous Bite_ which deals damage until the target is fully healed.
.' He will also use _Mangling Slash_, which increases the damage the bleed does.
.' He will use _Piercing Slash_ which reduces your armor by 75%, all damage reduction and avoidance abilities should be used at this time.
.from King Dred##27483
.get King Dred's Tooth |q 29828/1 |only if havequest(29828)
|confirm |only if not havequest(29828)
step
goto 63.7,71.8 |n
.' Go up the stairs here. |goto Drak'Tharon Keep/2 51.2,71.8 <5 |noway |c
step
.' Kill trolls in this area and collect _Enduring Mojo_.
.from Drakkari Commander##27431+,Drakkari Guardian##26620+,Drakkari Shaman##26639+
.collect 5 Enduring Mojo##38303 |q 30120
'|goto Drak'Tharon Keep/2,37.1,67.2
'|goto Drak'Tharon Keep/2,37.3,29.2
|only if havequest(30120)
step
goto 51.3,13.2
.' The Prophet Tharon'ja has two Phases.
.' Skeletal:
.' He will cast _Shadowbolt Volley_, an AoE Shadow attack.
.' He will cast _Rain of Fire_ at grouped up allies.
.' He will use _Decay Flesh_, which turns you into a skeleton and puts you into the second phase where he is a serpent.
.' Serpent:
.' He will use _Lightning Breath_, an AoE Nature attack that jumps to nearby targets.
.' He will cast _Poison Cloud_ on the ground.
.' You will have 4 attacks as a skeleton.
.' Tanks should use all four abilities on cooldown.
.' DPS and Heals should use everything but _Taunt_.
.' He will use _Return Flesh_, which turns starts phase one over again.
.' Repeat the actions until he is defeated.
.from The Prophet Tharon'ja##26632
|confirm
step
goto 37.9,13.2
.' Use Drakuru's Elixer at the giant brazier here. |use Drakuru's Elixir##35797
.' Follow Drakuru.
.talk 28016
.turnin 30120
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Drak'Tharon Keep 35.5,83.2
.talk 55677
..turnin 13129
..turnin 29828
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\The Violet Hold (VH) 73-76",[[
dungeon 536
description This guide will walk you through the The Violet Hold dungeon.
achieveid 483
step
label "lfg"
goto The Violet Hold 47.7,89.7
.talk 30658
.accept 29830
step
.' Tell Lieutenant Sinclari that you will activate the crystals when in trouble.
|confirm
step
.' In this instance, _Blue Portals_ will randomly pop up at each of the large pink shields in the room.
.' You will need to go to it and defeat the monsters that come out until it closes.
.' On waves 6, 12 and 18 bosses will spawn.
|confirm
step
label "the_list"
.' Click here for Erekem. |next "Erekem" |confirm
.' Click here for Moragg. |next "Moragg" |confirm
.' Click here for Ichoron. |next "Ichoron" |confirm
.' Click here for Xevozz. |next "Xevozz" |confirm
.' Click here for Lavanthor. |next "Lavanthor" |confirm
.' Click here for Zuramat the Obliterator. |next "Zuramat_the_Obliterator" |confirm
.' Click here for Cyanigosa. |next "final_boss" |confirm
step
label "Erekem"
goto 28.1,61.9
.' He comes with 2 friends.  Attack him first.
.' Interrupt _Chain Heal_ when he casts it.
.' Dispel, Purge, or Spellsteal when he casts _Earth Shield_.
.' Purge or Spellsteal when he uses _Bloodlust_.
.from Erekem##29315
.' Click here to go back to the list of bosses. |confirm |next "the_list"
step
label "Moragg"
goto 65.0,55.3
.' Moragg puts _Corrosive Saliva_ which reduces the targets armor by 5% per application (Stacking effect).
.' It will cast _Optic Link_ on a random party member. The damage slowly builds, getting higher the longer he channels it.
.' It will put _Ray of Suffering_ on a random party member, dealing out 8% of the targets total health each tick.
.from Moragg##29316
.' Click here to go back to the list of bosses. |confirm |next "the_list"
step
label "Ichoron"
goto 53.8,42.5
.' Ichoron has a _Protective Bubble_, preventing 99% of the damage you do to him. This shield has a charge, and every time he is hit a charge is taken away.
.' Each time you remove his Protective Bubble, he splits into many smaller water elementals.  When they start appearing, go to one of the waypoints on the map and click the crystal on the wall.
.' He will use _Water Blast_ to knock your tank around.
.' He often casts _Water Bolt Volley_, an AoE frost based attack.
.' You will need to destroy the _Protective Bubble_ 3 times before he is _Drained_ and you are able to kill him.
.' When his shield is gone, he will gain a _Frenzy_ effect, increasing his caster speed and damage output.
.from Ichoron##29313
.' Click here to go back to the list of bosses. |confirm |next "the_list"
'|goto The Violet Hold,31.0,75.6
'|goto The Violet Hold,46.5,39.8
'|goto The Violet Hold,55.5,79.9
step
label "Xevozz"
.' Xevozz will need to be kited around the room.
.' He spawns _Ethereal Spheres_ which deal massive damage when you come into contact with them.  They will give the boss a huge damage buff, and give the player a huge arcane resistance debuff.
.' The orbs also cast a constant _Arcane Explosion_ so stay away from them.
.' He will put _Arcane Buffet_ on a random party member. It can be dispelled (Magic Effect).
.' He often spams _Arcane Barrage Volley_.
.from Xevozz##29266
.' Click here to go back to the list of bosses. |confirm |next "the_list"
step
label "Lavanthor"
goto 59.4,73.8
.' Lavanthor uses a cone attack, _Flame Breath_ so don't be in front of him.
.' He will cast _Lava Burn_ at random party members.
.' He casts _Firebolt_ which can be interrupted.
.' He places _Lava Burn_ on the ground, which deals damage if you stand in it.
.from Lavanthor##29312
.' Click here to go back to the list of bosses. |confirm |next "the_list"
step
label "Zuramat_the_Obliterator"
.' This boss will _Summon Void Sentries_ which spam Shadowbolt Volley.
.' He will cast _Void Shift_ on a random party member, this will allow them to see the Void Sentries. Whoever gets this debuff is responsible for clearing Void Sentries.
.' _Shroud of Darkness_ is a buff Zuramat throws on himself that reduces the healing the group can receive. It is a magic effect and needs to be dispelled.
.from Zuramat the Obliterator##29314
.' Click here to go back to the list of bosses. |confirm |next "the_list"
step
label "final_boss"
goto 45.1,54.6
.' DPS and Heals should stand on either of her sides, to avoid _Uncontrollable Energy_ and_Tail Swipe_.
.' She will use _Arcane Grip_, which pulls all party members to her and drops aggro. The tank should _Taunt_ immediately.
.' She will cast _Blizzard_ on a random party member.
.kill Cyanigosa##31134 |q 29830/1 |only if havequest(29830)
.from Cyanigosa##31134 |only if not havequest(29830)
step
goto The Violet Hold 45.9,91.2
.turnin 29830
|only if havequest(29830)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Gundrak (GD) 75-78",[[
dungeon 530
description This guide will walk you through the Gundrak dungeon.
achieveid 484
step
label "lfg"
goto Gundrak,57.3,34.6
.talk 55738
.accept 29834
.accept 29839
.accept 29844
step
.' There will be Drakkari History Tablets throughout the dungeon. You will need to collect 6 to complete the quest.
.click Drakkari History Tablet##7356
|confirm
|only if havequest(29844)
step
goto Gundrak,58.8,40.0
.' Follow the ramp down.
|confirm
step
goto 56.7,48.7
.click Drakkari History Tablet##7356 |only if havequest(29844)
.' Slad'ran has several abilities.
.' When he is casting _Poison Nova_ move away from him as quickly as you can.
.' He will randomly cast _Venom Bolt_ on party members.
.' He summons _Slad'ran Constrictors_ which could be AoE'd down. If they aren't killed, they will use _Grip of Slad'ran_ which will incapacitate whoever get attacked with it.
.from Slad'ran##29304 |only if not havequest(29834)
.kill Slad'ran##29304 |q 29834/1 |only if havequest(29834)
|confirm |only if not havequest(29834)
step
goto 53.8,48.7
.click Altar of Slad'ran##8278
|confirm
step
goto 46.6,73.8
.' Kill the trash mobs in this area.
|confirm
step
goto 46.9,66.3
.' The Drakkari Colossus splits into two bosses.
.' The Drakkari Colossus uses _Mortal Strike_ reducing healing taken by 50% on the tank.
.' At 50% health, the Drakkari Elemental will Emerge. Swtich DPS to it.
.' The Drakkari Elemental will put purple puddles on the ground. Move out of them.
.' It will charge forward in a straight line and damage anyone in its path.
.' At 50% health, it will merge back with the Drakkari Colossus.
.' Repeat until it is defeated.
.from Drakkari Colossus##29307
.from Drakkari Elemental##29573
.get Drakkari Colossus Fragment |q 29839/1 |only if havequest(29839)
|confirm |only if not havequest(29839)
step
goto 46.5,62.5
.click Altar of the Drakkari Colossus##8278
|confirm
step
goto 41.2,72.4 |n
.' Jump down into the water here
|confirm
step
goto 37.4,59.3 |n
.' Swim to land. |goto 37.4,59.3 <5 |noway|c
step
goto 37.4,49.1
.' Moorabi uses several abilities:
.' _Ground Tremor_ is an ability that damages melee.
.' He will also use _Mojo Frenzy_ which increases his casting speed, as well as his damage taken.
.' He will use _Numbing Shout_ which reduces spell casting speed by 25%.
.' He will occassionally cast _Transformation_ which can be interrupted. Each time he casts it, it is faster.
.from Moorabi##29305 |only if not havequest(29834)
.kill Moorabi##29305 |q 29834/2 |only if havequest(29834)
|confirm |only if not havequest(29834)
step
goto 32.0,49.2 |n
.' Pass through the new opening here. |goto 32.0,49.2 <5 |noway |c
|only if heroic_dung()
step
goto 25.1,66.2
.' Clear the Ruins Dwellers in the area. |goto 25.1,66.2 <5 |noway|c
.from Ruins Dweller##29920+
|only if heroic_dung()
step
.from Eck the Ferocious##29932
.' Eck will appear once all the Ruin Dwellers have been defeated.
|confirm
|only if heroic_dung()
step
goto 39.6,49.2
.click Altar of Moorabi##8278
|confirm
step
goto 44.6,54.3 |n
.' Jump down and swim across to land. |goto 44.6,54.3 <5 |noway|c
step
goto 46.5,28.4
.' He will randomly throw a spear at a party member, giving them a bleed effect for 2 minutes called _Puncture_.
.' He will use _Stampede_ on a random target, knocking them into the air.
.' He has the ability _Whirling Slash_ which deals out massive damage if you're in melee range of him.
.' Eventually he will transform into a Rhino.
.' While transformed, he will use different abilities, listed below:
.' _Enrage_ increases his attack speed by 100%.
.' Gal'darah will use _Impaling Charge_ throughout the fight, randomly knocking back a party member.
.' He will use _Stomp_ to knock melee away from him.
.from Gal'darah##29306 |only if not havequest(29834)
.kill Gal'darah##29306 |q 29834/3 |only if havequest(29834)
|confirm |only if not havequest(29834)
step
.get 6 Drakkari History Tablet |q 29844/1
.' If you haven't collected all 6, search through the instance for them.
.' They are near walls.
|only if havequest(29844)
step
goto Gundrak 51.7,20.9
.talk 55738
.turnin 29834
.turnin 29839
.turnin 29844
|only if havequest(29834) or havequest(29839) or havequest(29844)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Halls of Stone (HoS) 76-79",[[
dungeon 526
description This guide will walk you through the Halls of Stone dungeon.
achieveid 485
step
label "lfg"
goto Halls of Stone 35.8,35.0
.talk 55835
.accept 29848
.accept 29850
|only if not completedq(29848) or not completedq(29850)
step
goto 46.0,36.0
.kill 2 Dark Rune Giant##27969 |q 29850/1
|only if havequest(29850)
step
map Halls of Stone
path follow strict;loop off;ants straight
path	42.6,53.6	39.1,52.9	31.9,51.7
path	34.0,68.0	38.1,65.5
.' Clear trash following this path.  It will lead you to _Krystallus_.
|confirm
step
goto 39.6,61.8
.' It is important to spread out on this fight.
.' Krystallus will use _Boulder Toss_ on a random player, knocking them down and dealing damage to those around the target.
.' He will also use _Stomp_, knocking the group backwards.
.' He will turn the group to stone, followed by using the ability _Shatter_ which will damage the entire group.
.from Krystallus##27977 |only if not havequest(29850)
.kill Krystallus##27977 |q 29850/2 |only if havequest(29850)
|confirm |only if not havequest(29850)
step
goto 41.0,57.5
.' Jump down here. Once you have, click here to proceed. |confirm
step
goto 50.0,85.4
.' The _Maiden of Grief_ will cast Pillar of Woe on random party members. It causes shadow damage over time and can be dispelled. It is a magic effect.
.' Throughout the fight she will place _Storm of Grief_ on the ground, which is a large black circle that deals shadow damage. Avoid when possible.
.' She will use the ability _Shock of Sorrow_, which will damage the entire group and incapacitate them for 6 seconds. To avoid the incapacitating effect, stand in _Storm of Grief_ before she finishes casting _Shock of Sorrow_.
.from Maiden of Grief##27975
.get Crystal Tear of Grief |q 29848/1 |only if havequest(29848)
|confirm |only if not havequest(29848)
step
goto 59.2,53.6
.kill 3 Dark Rune Giant##27969 |q 29850/1
|only if havequest(29850)
step
goto 70.9,48.6
.talk 28070
.accept 13207
.' When you're ready to go, tell Brann that it would be our honor!
|confirm
|only if not completedq(13207)
step
goto 70.9,48.6
.talk 28070
.' When you're ready to go, tell Brann that it would be our honor!
|confirm
|only if completedq(13207)
step
goto 81.7,71.1
.' Once here, you will be at the next event.
.' You will need to protect Brann Bronzebeard from waves of enemies that attack.
.' Let Brann know you're ready to move.
.' Click here to continue when the event is over. |confirm
step
goto 84.2,74.8
.talk 28070
.' Tell him we need to get moving.
|confirm
step
goto 49.9,28.7
.talk 28070
.' Tell Brann to open the door.
|confirm
step
'Sjonnir The Ironshaper
.' He has a _Lightning Shield_ that can be _Purged_ or _Dispelled_.
.' He places _Static Charge_ on a random party member. The afflicted member should move away from the group.
.' He channels _Lightning Ring_ which you should move away from.
.from Sjonnir The Ironshaper##27978
|confirm
step
goto 49.9,11.6
.talk 28070
..turnin 13207
step
goto Halls of Stone 35.8,34.9
.talk 55835
.turnin 29848
.turnin 29850
|only if havequest(29848) or havequest(29850)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme (CoS) 79-80",[[
dungeon 521
description This guide will walk you through the Caverns of Time: The Culling of Stratholme dungeon.
achieveid 479
step
label  "start"
goto The Culling of Stratholme 86.5,61.5 |n
.talk 26527
.accept 13149 |only if not completedq(13149)
.' <Chromie, you and I both know what's going to happen in this time stream. |only if completedq(13151) |goto The Culling of Stratholme/2 50.5,76.0 <5 |noway |c |next "dungeon"
step
map The Culling of Stratholme
path follow loose; loop off
path	83.8,59.2	81.2,59.8	77.8,55.0
path	73.5,54.9	70.2,51.2
.' Use your Arcane Disruptor on the 5 Suspicious Grain Crates at the waypoints. |use Arcane Disruptor##37888
.' Click here when you have all 5 Dispelled|confirm |only if not havequest(13149)
.' Plague Grain Crates Dispelled. |q 13149/1 |only if havequest(13149)
'|click Plagued Grain Crate##336
step
goto 47.6,39.8
.talk 27915
.turnin 13149
|only if havequest(13149)
step
goto 47.6,39.8
.talk 27915
..accept 13151 |only if not havequest(13151)
|only if not completedq(13151)
step
goto 47.6,39.8
.talk 27915
.' Ask Chromie what they're up to.
|confirm
step
goto 47.3,24.9 |n
.' Cross the bridge into Stratholme. |goto The Culling of Stratholme/2 50.5,96.4 <5 |noway|c
step
goto The Culling of Stratholme/2,50.5,79.2
.talk 26499
.' Let him know that you are ready.
|confirm
step
label dungeon
.' Move between these waypoints in order to find the mobs that spawn.
.' Click here when _Meathook_ spawns on Scourge Wave 5. |confirm
'|goto 45.1,64.9
'|goto 46.6,58.5
'|goto 53.1,62.4
'|goto 61.5,52.9
'|goto 59.7,39.0
step
goto 52.9,62.4
.' Meathook walks around this area.
.' He has two main attacks:
.' He will use _Constricting Chains_ on a random party member, stunning them for 5 seconds and dealing damage.
.' He will use _Disease Expulsion_, which will deal out damage and interrupt spell casts to players nearby.
.from Meathook##26529
|confirm
'|goto 47.2,59.8
'|goto 61.2,53.0
'|goto 60.2,44.4
step
.' Move between these waypoints in order to find the mobs that spawn.
.' Click here when _Salramm the Fleshcrafter_ spawns on Scourge Wave 10. |confirm
'|goto 45.1,64.9
'|goto 46.6,58.5
'|goto 53.1,62.4
'|goto 61.5,52.9
'|goto 59.7,39.0
step
goto 52.9,62.4
.' Salramm the Fleshcrafter walks around one of these locations.
.' He will cast _Steal Flesh_ on a random group member, lowering their damage by 75% and increases his by 75%
.' He casts _Summon Ghouls_ throughout the fight. He will randomly cast _Explode Ghoul_ as well, blowing them up to do AoE damage.
.from Salramm the Fleshcrafter##26530
|confirm
'|goto 47.2,59.8
'|goto 61.2,53.0
'|goto 60.2,44.4
step
goto 58.8,36.7
.talk 26499
.' Tell _Arthas_ to lead the way.
|confirm
step
.' Fight the mobs that spawn at these points.
|confirm
'|goto 58.1,32.7
'|goto 59.0,27.0
'|goto 61.7,31.4
'|goto 65.8,28.4
step
goto 66.1,26.0
.' Chrono-Lord Epoch will come out of a portal here.
.' He will use _Time Warp_ and uses an AoE Charge.
.' He will use _Wounding Strike_ on the tank, reducing healing received by 25% as well as leaving a DoT.
.from Chrono-Lord Epoch##26532
|confirm
step
goto 65.5,28.8
.talk 26499
.' Tell Arthas that you're ready.
|confirm
step
.' Follow Arthas down the steps. |goto The Culling of Stratholme/2,64.9,14.2
step
goto 64.9,14.2
.talk 26499
.' For Lordaeron!
|confirm
step
.' Follow and protect Arthas as he goes through the tunnel. |goto 40.1,37.2
step
goto 40.1,37.2
.talk 26499
.' Tell him you're ready to battle the dreadlord.
|confirm
step
goto 33.5,44.9
.' Mal'Ganis has a few attacks to watch out for:
.' He will randomly cast _Sleep_ on a random party member, incapacitating them for 10 seconds.
.' He will cast _Carrion Swarm_ which is a cone attack in front of him.
.' He will cast _Mind Blast_ on random party members.
.' He will buff himself with _Vampiric Touch_ causing him to heal for half the damage he does. It can be _Purged_ or removed with _Dispel Magic_.
.from Mal'Ganis##26533
.' Defeat Mal'Ganis |q 13151/1 |only if havequest(13151)
|confirm |only if not havequest(13151)
step
goto 32.0,44.7
.talk 30997
.turnin 13151
|only if havequest(13151)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\The Oculus (OC) 79-80",[[
dungeon 528
description This guide will walk you through the The Oculus dungeon.
achieveid 487
step
label "lfg"
goto The Oculus 63.3,42.0
.accept 13124  |only if not havequest(13124)
|only if not completedq(13124)
step
goto 38.3,50.5 |n
.' Follow the path around the ledge.
.' Click the portal. |goto 47.9,69.4 <5 |noway|c
step
goto 48.9,76.1
.from Drakos the Interrogator##27654
|confirm
step
goto 50.1,81.2
.talk 27658
.turnin 13124
|only if havequest(13124)
step
goto 50.1,81.2
.talk 27658
..accept 13126 |only if not havequest(13126)
|only if not completedq(13126)
step
.' Talk to either Verdisa, Belgaristrasz or Eternos and attain a dragon.
.collect Ruby Essence##37860 |or |tip Talk to Belgaristrasz for the Ruby Essence.
.collect Amber Essence##37859 |or |tip Talk to Eternos for the Amber Essence.
.collect Emerald Essence##37815 |or |tip Talk to Verdisa for the Emerald Essence.
'|talk Verdisa##27657
'|talk Belgaristrasz##27658
'|talk Eternos##27659
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride a dragon. |invehicle
step
goto The Oculus/2,41.0,66.3
.kill 1 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
goto 40.2,55.5
.kill 2 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
goto 57.7,54.3
.kill 3 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
goto 57.4,66.6
.kill 4 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your dragon. |invehicle
step
goto 71.0,76.7
.kill 7 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 3 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your dragon. |invehicle
step
goto 29.3,76.3
.kill 10 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
.from 3 Centrifuge Construct##27641 |only if not havequest(13126)
|confirm |only if not havequest(13126)
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your dragon. |invehicle
step
goto 45.5,26.0
.from Varos Cloudstrider##27447 |only if not havequest(13126)
.kill Varos Cloudstrider##27447 |q 13126/2 |only if havequest(13126)
|confirm |only if not havequest(13126)
step
goto 45.7,20.4
.talk 28012
.turnin 13126
|only if havequest(13126)
step
goto 45.7,20.4
.talk 28012
.accept 13127 |only if not havequest(13127)
|only if not completedq(13127)
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your dragon. |invehicle
step
goto 57.4,33.0 |n
.' Fly up to this platform with your drake. |goto The Oculus/3 62.2,15.0 <5 |noway |c
step
goto The Oculus/3,70.8,27.2
.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
.from Mage-Lord Urom##27655
|confirm
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your drake. |invehicle
step
goto 50.4,87.8
.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
.from Mage-Lord Urom##27655
|confirm
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your drake. |invehicle
step
goto 25.6,31.1
.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
.from Mage-Lord Urom##27655
|confirm
step
.' Use your Ruby Essence. |use Ruby Essence##37860 |or
.' Use your Amber Essence. |use Amber Essence##37859 |or
.' Use your Emerald Essence. |use Emerald Essence##37815 |or
.' Ride your drake. |invehicle
step
goto The Oculus/4 39.3,36.1
.' For this fight, you will want to stay out of the _Frost Bombs_ he throws on the ground.
.from Mage-Lord Urom##27655 |only if not havequest(13127)
.kill Mage-Lord Urom##27655 |q 13127/1 |only if havequest(13127)
|confirm |only if not havequest(13127)
step
.talk 26117
.turnin 13127 |only if havequest(13127)
.accept 13128 |only if not havequest(13128)
|only if havequest(13127) or not completedq(13128)
step
goto The Oculus/4,47.1,85.2
.' For Ley-Guardian Eregos, each Drake plays a vital role in this encounter.
.' To see what you will be doing based on the Essence you picked, click below:
.' Emerald Essence: Heals |next "emerald" |confirm
.' Ruby Essence: Tank |next "ruby" |confirm
.' Amber Essence:: Damage |next "amber" |confirm
step
label "emerald"
.' As the Emerald Drake, your job will be to heal your group.
.' You 3 abilities that you will be using:
.' _Leeching Poison_ puts a DoT on your target, siphoning health from that target to you. It will be important that you keep 3 stacks up on the boss at all times at the very least.
.' _Touch the Nightmare_ damages you in order to reduce your enemies damage output. It should be used on _Ley-Guardian Eregos_ only, however _DO NOT SPAM_ this ability.
.' _Dream Funnel_ transfers 5% of your health to a friendly target. This along with Leeching Poison is what you should be using the most.
.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
.kill Ley-Guardian Eregos |q 13128/1 |only if havequest(13128)
|next "turnin"
step
label "ruby"
.' As the Ruby Drake, your job will be to Tank the boss as well as the whelplings as best you can at all times.
.' _Searing Wrath_ is your only attack, and jumps to nearby opponents when used.
.' _Evasive Aura_ is an ability that gives you a charge whenever you're damaged. The charge is used for your 3rd ability.
.' _Evasive Maneuvers_ is an ability that allows you to dodge all incoming damage.
.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
.kill Ley-Guardian Eregos##27656 |q 13128/1 |only if havequest(13128)
|next "turnin"
step
label "amber"
.' As the Amber Drake, your job will be to damage Ley-Guardian Eregos.
.' _Shock Lance_ Will be your primary attack.
.' _Stop Time_ is an important ability, freezing all enemy targets when used. It is important to use this when Ley-Guardian Eregos uses _Enraged Assault_.
.' _Temporal Rift_ is a channeled ability, which should be used until you have _10 Shock Charges_, at which point you will want to use _Shock Lance_.
.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
.kill Ley-Guardian Eregos##27656 |q 13128/1 |only if havequest(13128)
|next "turnin"
step
label "turnin"
goto The Oculus/4,47.1,85.2
.talk 27658
.turnin 13128
|only if havequest(13128)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Halls of Lightning (HoL) 79-80",[[
dungeon 525
description This guide will walk you through the Halls of Lightning dungeon.
achieveid 486
step
label "lfg"
goto Halls of Lightning 11.9,53.8
.talk 56027
.accept 29860
.accept 29861
.accept 29862
|only if not completedq(29860) or not completedq(29861) or not completedq(29862)
step
goto 54.9,71.9
.' Wait for General Bjarngrim here. Don't engage him if he has the _Temporary Electric Charge_ buff.
.' Clear trash before engaging. Avoid him if there is trash around.
.' Clear trash up to this point if he is patting further away. [54.9,53.7]
.' Kill the _Stormforged Lieutenants_ before killing the boss.
.' If you get the _Arch Weld_ debuff, you _SHOULD NOT_ move.
.' Be sure you spread out for the fight.
.from General Bjarngrim##28586 |only if not havequest(29862)
.kill General Bjarngrim##28586 |q 29862/3 |only if havequest(29862)
|modelnpc Stormforged Lieutenant##29240+
|confirm |only if not havequest(29862)
step
goto 58.1,53.7
'Make sure you have killed the following:
.kill 3 Stormforged Tactician |q 29862/2 |modelnpc Stormforged Tactician##28581+
.kill 3 Stormforged Mender |q 29862/1 |modelnpc Stormforged Mender##28582+
|only if havequest(29862)
step
goto 69.5,53.7
.' Once here, you will see an area full of _Slags_. Once you start going across, do not stop until you reach [88.0,54.1].
.' _Do not_ attack them until you're at the other side.
.' _Do not_ stand near them when you kill them.
.' Once cleared and up the steps, click here to proceed. |confirm
|modelnpc Slag##28585
step
goto Halls of Lightning/2,41.8,23.1
.' _Volkhan_ will create _Molten Golems_ throughout the fight.  The Tank should pick them up.
.' When _Volkhan_ uses his _Shattering Stomp_ ability the giants will explode and deal damage to anyone near them.
.' The more damage the _Molten Golems_ take, the slower the move, and at 1 Health they will eventually stop.
.from Volkhan##28587 |only if not havequest(29860)
.kill Volkhan##28587 |q 29860/1 |only if havequest(29860)
|confirm |only if not havequest(29860)
step
map Halls of Lightning/2
path follow loose;loop off;ants straight
path	47.2,41.3	47.0,53.5	51.4,54.2
.' Follow the path through the hallway, stopping at each waypoint.
.' At each of the waypoint, enemies will spawn.
.' Kill the _Titanium Siegebreakers_ first, they use a fear ability.
|confirm
step
goto 61.1,75.0
.' Ionar has 3 main abilities.
.' He will use _Ball of Lightning_ at random, which throws a ball that falls at moderate speed and can be avoided.
.' _Static Overload_ is placed on a random group member, damaging all party members around the target. Stay away from allies if you get this debuff.
.' When Ionar uses _Disperse_, run to [60.8,53.9].
.from Ionar##28546
|confirm
step
map Halls of Lightning/2
path follow loose;loop off;ants straight
path	47.2,69.3	40.5,65.3	29.4,75.8
.' Follow the path, killing trash at each waypoint.
.' Kill _Stormforged Runeshapers_ first, they do an Area of Effect attack that deals out massive damage.
.' There will be a _Titanium Vanguard_ patrol around the second waypoint. Wait before pulling.
.' Click here once you're safely at the last waypoint. |confirm
|modelnpc Stormforged Runeshaper##28836
step
goto 19.2,59.8
.' Loken has two main abilities to look out for:
.' The first is that he has an aura that deals nature damage.  The closer you are to him, the less damage it does. _Get as close to him as possible._
.' The Second ability, he will cast _Lightning Nova_. You will need to move 20 yards away from him to avoid the damage.
.from Loken##28923
.get Loken's Tongue |q 29861/1 |only if havequest(29861)
step
goto 19.1,62.8
.talk 56027
.turnin 29860
.turnin 29861
.turnin 29862
|only if havequest(29860) or havequest(29861) or havequest(29862)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Pinnacle (UP) 79-80",[[
dungeon 524
description This guide will walk you through the Utgarde Keep: Utgarde Pinnacle dungeon.
achieveid 488
step
label "lfg"
goto Utgarde Pinnacle/2,45.1,18.1
.talk 56072
.accept 29864
step
goto 44.0,18.2
.talk 30871
.accept 13131
.accept 13132
step
.' As you go through the instance look in corners and on ledges for the following:
.click Golden Goblet##8367
.click Shiny Bauble##7554
.click Untarnished Silver Bar##6457
.click Jade Statue##8368
|confirm
|only if havequest(13131)
step
map Utgarde Pinnacle/2
path follow strict;loop off;ants straight
path	43.0,35.7	34.0,37.5	35.3,68.9
path	42.4,76.7
.' Follow this path until you get downstairs. |goto Utgarde Pinnacle/2 42.4,76.7 <5 |noway |c
step
goto Utgarde Pinnacle,33.8,74.2
.' _Svala Sorrowgrave_ will use the ability _Ritual Preparation_ on a random party member. 3 Ghost will appear, the DPS needs to kill them to free the tareted member.
.' During Ritual Preparation, she will summon _Ritual of the Sword_, which will crash on the altar and onto the trapped party member if you don't free them.
.from Svala Sorrowgrave##26668 |only if not havequest(29864)
.kill Svala Sorrowgrave##26668 |q 29864/1 |only if havequest(29864)
|confirm |only if not havequest(29864)
step
goto 46.1,81.5 |n
.' Go up the stairs. |goto Utgarde Pinnacle 45.8,82.7 <5 |noway|c
step
goto Utgarde Pinnacle/2,61.8,84.1
.click Stasis Generator##7811
.' This will trigger an event where 3 out of 5 statues come to life, the third being the actual boss.
.' Jormunger - leaves poison on the ground and summons non-elite adds.
.' Rhino - Has a heavy stomp damage and randomly charges victims, leaving a dot.
.' Furlbog - Casts Chain Lightning and random changes aggro, as well as an AoE Fear.
.' Worgen -  Uses Mortal Strike on the tank.
.' When _Gortok Palehoof_ comes, he has 3 abilities to look out for:
.' _Arcing Smash_ Does cone damage wherever he is facing.
.' _Impale_ leaves a DoT on a random party member.
.' _Withering Roar_ decreases your maximum health by 500 and stacks.  The longer the fight lasts the harder it will become to heal.
.from Gortok Palehoof##26687
|confirm
|modelnpc 26683
|modelnpc 26686
|modelnpc 26684
|modelnpc 26685
step
goto 68.7,65.1
.' Aggroing the boss will trigger an event. Ymirjar mobs will come to fight you and you will have to battle them to [69.2,36.5].
.' The boss will be flying overhead, covering the ground with frost as you move along the path, avoid it.
.' When you kill Harpooners, they will drop their weapons.
.click Harpoon##5994
.' When you get the message "Skadi the Ruthless is within range of the harpoon launchers!" click them to shoot him down.
.click Harpoon Gun##8245
.' You will need to shoot him 3 times before he comes down.
.' When _Skadi the Ruthless_ jumps down, _Taunt_ him immediately if you're the tank.
.' Tanks will also need to kite him around when he uses _Whirlwind_.
.' Skadi will randomly throw _Poisoned Spears_ at random party members. If possible, it should be dispelled immediately (Poison).
.from Skadi the Ruthless##26693
|confirm
step
goto 60.3,37.9 |n
.' Go down the steps. |goto 60.3,37.9 <5 |noway|c
step
goto Utgarde Pinnacle,48.7,44.3 |n
.' Go up the ramp here. |goto 48.7,44.3 <5 |noway|c
step
goto Utgarde Pinnacle/2,42.6,53.5
.' At 80% and 30%, _King Ymiron_ will use _Screams of the Dead_ Stunning the entire party for 8 seconds.
.' He will often use _Dark Slash_ damaging targets with shadow damage, dealing out half the targets current health.
.' He will use _Bane_ which will trigger when he is hit with the buff, damaging the group with AoE Damage.
.' He also places _Fetid Rot_ on random party members, which should be dispelled immediately if possible (Disease).
.from King Ymiron##26861 |q 13132/1 |only if not havequest(13132)
.kill King Ymiron##26861 |q 13132/1 |only if havequest(13132)
|confirm |only if not havequest(13132)
step
'Make sure you have collected the following:
.click Golden Goblet##8367
.get 5 Untarnished Silver Bar |q 13131/1
.click Shiny Bauble##7554
.get 3 Shiny Bauble |q 13131/2
.click Untarnished Silver Bar##6457
.get 2 Golden Goblet |q 13131/3
.click Jade Statue##8368
.get Jade Statue |q 13131/4
|only if havequest(13131)
step
goto 45.1,18.1
.talk 56072
.turnin 29864
step
goto 44.0,18.2
.talk 30871
.turnin 13131
.turnin 13132
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Trial of The Champion (ToC) 80",[[
dungeon 542
description This guide will walk you through the Trial of the Champion dungeon.
achieveid 4296
step
label "lfg"
goto Trial of the Champion 49.6,30.3
'Click the Quest Discovered box that displays on the right side of the screen under your minimap |only if not completedq(29851)
.accept 29851 |only if not completedq(29851)
.click Lance Rack##130
.collect Argent Lance##46106
step
.' Go to the center to start the event. |goto Trial of the Champion 51.4,51.3 <5 |c
step
goto 57.9,33.6
.' Equip your _Argent Lance_. |equipped Argent Lance##46106 |use Argent Lance##46106
.clicknpc Argent Warhorse##36557
.' Ride an Argent Warhorse. |invehicle
step
.' Your argent war horse has 4 abilities:
.' _Thrust_ Is your primary attack, and is assigned to 1.
.' _Shield Break_ is assigned to 2, and should be used to remove and enemies _Defend_ buff.
.' _Charge_ deals out massive damage, as well as removing 1 layer of _Defend_ from the enemy. It is assigned to 3.
.' _Defend_ Reduces damage you take by 30%, stacking 3 times. This should be maintained at 3 at all times.
|confirm
step
goto 51.0,53.1
.talk 35005
.' Let him know that you're ready.
.' When the event starts there will be 3 enemies.
.' Mark a target and focus them down one by one.
.' There will be several waves of jousting enemies up until the 3 champions come out.
.' Repeat the same strategy with them and complete the event.
|confirm
step
.' The first boss encounter will consist of the last group of jousters your defeated.
.' _Runok Wildmane_ should be your first target if he is there. He has _Healing Wave_ and _Earth Shield_ which will make the fight last longer than it has to. Interrupt Healing Wave at all costs.
.' _Eressea Dawnsinger_ should be second if applicable. She will _Polymorph_ random party members, as well as use _Blast Wave_ to AoE your group down.
.' _Deathstalker Visceri_ should be third, if applicable. He will use _Poison Bottle_ leaving a green puddle on the ground that deals nature damage as well as _Fan of Knives_ as AoE.
.' _Mokra the Skullcrusher_ should be fourth, if applicable. He will use _Mortal Strike_ on the tank reducing healing done by 50% as well as a _Bladestorm_ ability, hitting everyone near him.
.' _Zul'tore_ should be fifth, if applicable. He will use _Multishot_ and _Lightning Arrow_ which can be dispelled.
.' _Kill the Champions of the Horde._
|modelnpc Runok Wildmane##35571, Mokra the Skullcrusher##35572, Eressea Dawnsinger##35569, Zul'tore##35570, Deathstalker Visceri##35617
|confirm
step
goto 54.2,48.4
.' Once you kill the boss, trash will come out.
.' There will be 3 groups of enemies that come out.
.' Each group will have an _Argent Priestess_. Be sure to kill her first.
.' Interrupt her heals and kill _Fountain of Light_ when she puts one out.
|confirm
|modelnpc Argent Priestess##35307, Argent Monk##35305, Argent Lightwielder##35309
'|goto 38.4,51.4
step
.' There will be one of two bosses at this point:
.' Click here for _Eadric_. |next "Eadric" |confirm
.' Click here for _Argent Confessor Paletress_. |next "Paletress" |confirm
|modelnpc Eadric##35119, Paletress##34928
step
label "Eadric"
goto 39.0,53.1
.' Eadric will use _Hammer of Justice_ on a random party member.
.' When Eadric casts _Radiance_, turn away from him so you aren't blinded. It will render you unable to act for 2 seconds.
.' He will also cast _Hammer of the Righteous_ at a random party member. If the party member isn't affected by Hammer of Justice, you can catch it and throw it back at him.
.from Eadric##35119
|confirm |next "Black_Knight"
step
label "Paletress"
goto 39.0,53.1
.' She will cast _Holy Fire_ on random party members. It will leave a DoT.
.' She will often cast _Holy Nova_ before Confess, which will spawn a Shadow that you will have to kill before finishing her off.
.from Argent Confessor Paletress##34928
|confirm
step
label	"Black_Knight"
goto 51.0,53.1
.talk 35005
.' Let him know you're ready for the finals.
.' He will get killed and _The Black Knight_ will appear.
|confirm
step
.' There are 3 phases to this fight.
.' _Phase 1:_
.' He will summon Ghouls which leap around and drop aggro often.  They also _Explode_ often, dealing out AoE Damage.
.' He will also random use _Death's Respite_ on random party members, stunning them for 2 seconds and knocking them back, dealing massive damage.
.' _Phase 2:_
.' He will use _Army of the Dead_, summoning several ghouls that leap around and explode.
.' He will leave _Desecration_ on the ground under a random target. It deals out damage every 2 seconds so move out of it.
.' _Phase 3:_
.' He has _Death's Bite_ aura, which deals out shadow and frost damage that leaves an increase magic damage taken of 5% debuff that stacks.
.' He will cast _Marked for Death_ which leaves a debuff that increases magic damage taken by 200% for 10 seconds.
.from The Black Knight##35451
.' Defeat the Black Knight. |q 29851/1 |only if havequest(29851)
|confirm |only if not havequest(29851)
step
'Click the Complete Quest Box in the top right corner of your screen
..turnin 29851
|only if havequest(29851)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Forge of Souls (FoS) 80",[[
dungeon 601
description This guide will walk you through the Forge of Souls dungeon.
achieveid 4516
step
label "lfg"
goto The Forge of Souls 64.0,91.2
.talk 37597
.turnin 24510 |only if havequest(24510)
.accept 24499
step
goto 43.3,49.8
.' _Bronjahm's_ has two phases.
.' He casts _Shadow Bolt_ if you're out of range.
.' He uses an ability called _Corrupt Soul_ which after 4 seconds creates an orb.  If it reaches Bronjahm, it will heal him.
.' When he reaches 30% health, he'll cast _Soulstorm_. You'll want to move into melee range or you will take damage from it.
.' Once he's in the _Soulstorm_ phase, he'll cast _Fear_ on a random target.
.from Bronjahm##36497 |only if not havequest(24499)
.kill Bronjahm##36497 |q 24499/1 |only if havequest(24499)
|confirm |only if not havequest(24499)
step
goto The Forge of Souls 45.6,14.9
.' The _Devourer of Souls_ will use an ability called _Phantom Blast_ which should be interrupted.
.' He will put a debuff on a party member called _Mirrored Soul_ which deals a percentage of the damage done to him to the target.
.' He will randomly leap at a party member with _Well of Souls_ which deals shadow damage to any who stand in it's radius.
.' He will occasionally cast _Wailing Souls_, shooting out a pink beam. Stay out of it.
.from Devourer of Souls##36502 |only if not havequest(24499)
.kill Devourer of Souls##36502 |q 24499/2 |only if havequest(24499)
|confirm |only if not havequest(24499)
step
goto 44.2,12.4
.talk 38160
.turnin 24499
.accept 24683
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Pit of Saron (PoS) 80",[[
dungeon 602
description This guide will walk you through the Pit of Saron dungeon.
achieveid 4517
step
label "lfg"
goto Pit of Saron 40.8,79.7
.talk 38160
.turnin 24683 |only if havequest(24683)
.accept 24498
step
map Pit of Saron
path follow strict;loop off;ants straight
path	48.8,69.4	53.5,65.3	56.6,65.7
path	55.8,62.7	58.4,61.3	63.5,59.3
path	62.2,55.0	63.0,49.5	59.9,49.7
.click Ball and Chain##181
.' 15 Alliance Slaves Freed. |q 24498/1
|only if havequest(24498)
step
goto 66.4,55.5
.' _Forgemaster Garfrost_
.' _Chilling Wave_ is an attack that he shoots at a party member, dealing AoE Damage to anyone in it's radius.
.' _Deep Freeze_ is randomly casted at party members, slowing their movement and inflicting frost damage.
.' If you stand within 40 yards of him you will get a debuff called _Permafrost_, increasing frost damage taken. The effect stacks.
.' He will occassionally _Throw Saronite_ at a random party target.
.from Forgemaster Garfrost##36494 |only if not havequest(24498)
.kill Forgemaster Garfrost##36494 |q 24498/2 |only if havequest(24498)
|confirm |only if not havequest(24498)
step
goto 65.5,54.9
.talk 37591
.turnin 24498
.accept 24710
step
goto 49.4,44.8
.from Plagueborn Horror##36879+
.' Clear them, then click here to continue. |confirm
step
goto 47.4,41.5
.' _Ick_ will cast _Explosive Barrage_ randomly. Players will need to move continuously to avoid damage.
.' When Ick uses _Poison Nova_, run away from him.
.' Ick will randomly use _Pursuit_ on a target during the fight. You will need to run away from him if you're the target.
.' _Krick_ will use _Shadow Bolt_ on random party members.
.' He tosses _Toxic Waste_ on the ground that you shouldn't stand in.
.from Ick##36476
|confirm
step
map Pit of Saron
path follow strict;loop;ants straight
path	50.9,36.6	49.9,33.3	52.8,30.5
path	56.7,32.0
.' There will be monsters that need to be cleared at each waypoint on the map.
.' Make sure that the _casters die first_.
.' Click here once you have cleared them. |confirm
step
goto 60.0,31.0
.' Once you get to this point, you will have reached a tunnel entrace.
.' Let your tank go in before anyone else.
.' Collect the mobs as you go along.
.' Stop at [60.9,19.8] to clear the mobs.
.' Avoid blue circles that appear on the ground.
.' Go to [47.5,19.4] next.
'|goto 47.5,19.4 <5 |noway |c
step
.' _Scourgelord Tyrannus_
.' He will be flying high up in the air. Enter the room to start the event.
.' _Make sure you DO NOT HIT HIM_ before he dismounts.  He may bug if you do so.
.' Randomly through the fight, he will mark a party member with _Mark of Rimefang_. That member will have to move away from the rest of the group.
.' He will randomly place _Overlord's Brand_ on a DPS in the group.  All damage that DPS does is transfered to the Tank, so don't dps if you get this debuff.
.' When he _Roars and Swells with Dark Might_ his movement speed will be slowed.  You should kite him through this until it wears off.
.from Scourgelord Tyrannus##36658 |only if not havequest(24710)
.kill Scourgelord Tyrannus##36658 |q 24710/1 |only if havequest(24710)
step
goto 47.5,19.4
.talk 38160 |tip you will have to wait for her to show up.
.turnin 24710
.accept 24711
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Northrend Dungeons\\Halls of Reflection (HoR) 80",[[
dungeon 603
description This guide will walk you through the Halls of Reflection dungeon.
achieveid 4518
step
label "lfg"
goto Halls of Reflection,45.0,76.3
.talk 38160
.turnin 24711 |only if havequest(24711)
.' Ask her if she can remove the sword and watch the dialogue that follows.
|confirm
|only if not completedq(24500)
step
goto Halls of Reflection,45.0,76.3
.talk 38160
.' When your group is ready, tell her that you think you hear Arthas coming. Click to proceed. |confirm
|only if completedq(24500)
step
goto 36.2,76.3
.' For this trash, have your group line of sight at the wall here for casters.
.' Groups of enemies will attack in waves.
.' Kill priority for these groups should be Ghostly Priests, Shadowy Mercenary, Phantom Mage, Tortured Rifleman then Spectral Footman when applicable.
.' At wave 5, you will face _Falric_. Click here to move onto his strategy. |confirm
|modelnpc Ghostly Priest##38175
|modelnpc Shadowy Mercenary##38177
|modelnpc Phantom Mage##38172
|modelnpc Tortured Rifleman##38176
|modelnpc Spectral Footman##38173
step
.' _Falric_
.' Falric uses the ability _Defiling Horror_ which is a fear effect that damages you as well.
.' Every time he fears, he gives players a stack of _Hopelessness_, which reduces the healing received. The longer the fight, the harder healing will become.
.' He will cast _Impending Despair_, which will stun you for 6 seconds if not dispelled within 6 seconds. It is a magic effect.
.' He will use _Quivering Strike_ on the tank, dropping their dodge by 20%. The strike is unavoidable.
.from Falric##38112
|confirm
step
.' After _Falric_ is defeated, the waves will continue.
.' Again, kill priority for these groups should be Ghostly Priests, Shadowy Mercenary, Phantom Mage, Tortured Rifleman then Spectral Footman when applicable.
.' At wave 10, you will face _Marwyn_. Click here to move onto his strategy. |confirm
|modelnpc Ghostly Priest##38175
|modelnpc Shadowy Mercenary##38177
|modelnpc Phantom Mage##38172
|modelnpc Tortured Rifleman##38176
|modelnpc Spectral Footman##38173
step
.' _Marwyn_
.' Marwyn has the ability _Corrupted Flesh_, reducing the groups maximum health by 25% for 8 seconds.
.' Everytime he uses Corrupted Flesh, he will also use _Shared Suffering_ which deals out massive shadow damage.  It should be dispelled, but note that when it is, it splits the damage between the group. Be sure everyone is at a reasonable amount of health before dispelling.
.' Throughout the fight, he will toss random _Well of Corruptions_ on the ground, which will increase the shadow damage you take. Simply move out of them.
.from Marwyn##38113
|confirm
step
'Click the Quest Discovered box that displays on the right side of the screen under your minimap
..accept
step
goto 26.1,51.1
.from Frostsworn General##36723
.' During the fight, he will spawn mirror images of your group.
.' Be sure not to stand close as you kill them. They explode when they are killed.
|confirm Wrath of the Lich King##24500
step
goto 12.9,23.2
.talk 36955
.accept 24500
.' Find Lady Jaina Proudmoore |q 24500/1 |only if havequest(24500)
.' When your group is ready, talk to Jaina and tell her "Let's go!"
|confirm
step
goto 27.5,27.5
.' Fight the undead as The Lich King summons them.
.' Generally, he will send _Raging Ghouls_ followed by _Risen Witch Doctors_ and _Lumbering Abomination_
.' Kill _Risen Witch Doctors_ first, as they will damage your group more than any of the others.
.' Face _Lumbering Abominations_ away from the group.
.' At each of the way points, there will be more and more mobs. You will need to DPS the enemies down fast, or the Lich King will kill you.
.' next [40.5,36.1]
.' next [51.1,44.9]
.' next [66.6,65.0]
.' next [77.3,77.6]
.' Escape the Lich King. |only if not havequest(24500)
.' Escape the Lich King. |q 24500/2 |only if havequest(24500)
step
goto 75.9,76.4
.talk 38160
.turnin 24500
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Abyssal Maw: Throne of the Tides (TotT) 80-82",[[
dungeon 767
description This guide will walk you through the Abyssal Maw: Throne of the Tides dungeon.
achieveid 4839
step
label "lfg"
goto Throne of the Tides,49.9,90.6
.talk 50270
.accept 28834
.accept 28836
step
goto Throne of the Tides 50.0,39.2
.' Ride the Elevator up.
.' When it's at the bottom you will have to jump to get on it.
|confirm
step
.' Run to the other side of the tunnel.
.' Combat won't end so you will need to fight you way through the waves of monsters. |goto Throne of the Tides/2 50.5,52.1 <5 |c
step
goto 50.6,21.4
.' _Lady Naz'jar_
.' This boss will use 4 abilities.
.' She will cast _Summon Geyser_ on the ground under a random players feet. Move out and away from the blue circle on the ground.
.' She will often cast _Shock Blast_ is a spell that can be interrupted.
.' She will cast _Fungal Spores_ on the ground that will leave a damage over time effect on any players caught with it.
.' At 66% and 33% she will cast _Waterspout_ which makes her immune to damage.  At this point she will summon 3 mobs, 2 casters and 1 melee. Control the casters and kill the melee.
.from Lady Naz'jar##40586 |only if not havequest(28836)
.kill Lady Naz'jar##40586 |q 28836/1 |only if havequest(28836)
|confirm |only if not havequest(28836)
|only if not heroic_dung()
step
goto 50.6,21.4
.' _Lady Naz'jar_
.' This boss will use 4 abilities.
.' She will cast _Summon Geyser_ on the ground under a random players feet. Move out and away from the blue circle on the ground.
.' She will often cast _Shock Blast_ is a spell that can be interrupted.
.' She will cast _Fungal Spores_ on the ground that will leave a damage over time effect on any players caught with it.
.' At 66% and 33% she will cast _Waterspout_ which makes her immune to damage.  At this point she will summon 3 mobs, 2 casters and 1 melee. Control the casters and kill the melee.
.' While she is in the _Waterspout_, she will send out _Water Vortex's_ which will move from Lady Naz'jar, towards a party member. These will suck anyone in that is close enough while stunning and causing damage to them for 5 seconds.
.from Lady Naz'jar##40586 |only if not havequest(28836)
.kill Lady Naz'jar##40586 |q 28836/1 |only if havequest(28836)
|confirm |only if not havequest(28836)
|only if heroic_dung()
step
goto Throne of the Tides/2 50.8,33.1
.click Throne of Tides Defense System##7147
|confirm
step
goto 50.6,41.8
.' _Commander Ulthok_
.' He uses 4 main abilities.
.' _Squeeze_ will be used on a random party member, restricting them from any actions.
.' He will use _Dark Fissure_ where the tank is standing.  It's important to move away from him when he does this as this attack may one-shot you.
.' Note that when he uses _Dark Fissure_ it leaves a circle of shadow on the ground that slowly expands the longer the fight carries on.
.' He casts _Curse of Fatigue_ at a random target, slowing their movement and haste by 50%
.' He will Enrage increasing all damage done by 50%.
.from Commander Ulthok##40765
|confirm
|only if not heroic_dung()
step
goto 50.6,41.8
.' _Commander Ulthok_
.' He uses 4 main abilities.
.' The tank should drag him along the outside of the room for Dark Fissure.
.' _Squeeze_ will be used on a random party member, restricting them from any actions.
.' He will use _Dark Fissure_ where the tank is standing.  It's important to move away from him when he does this as this attack may one-shot you.
.' Note that when he uses _Dark Fissure_ it leaves a circle of shadow on the ground that slowly expands the longer the fight carries on.
.' He casts _Curse of Fatigue_ at a random target, slowing their movement and haste by 50%
.from Commander Ulthok##40765
|confirm
|only if heroic_dung()
step
goto 51.2,52.7
.' Click the Throne of the Tides Teleporter
|confirm
step
map Throne of the Tides
path follow strict;loop off;ants straight
path	57.3,44.6	61.9,43.7	66.2,38.6
path	67.2,30.4
.' Kill the trash at these points above.
|confirm
step
goto Throne of the Tides 67.2,20.4
.' _Erunak Stonespeaker & Mindbender Ghur'sha_
.' This fight will have 2 phases:
.' Phase 1:
.' Erunak will cast _Earth Shards_ at a random party member. It will cause damage in a line, so move out of it.
.' He will cast _Lava Bolt_ at a random target.  This spell can be interrupted.
.' He will use _Magma Splash_ in a cone in front of him.
.' Phase 2:
.' _Mindbender Ghur'sha_ will put _Mind Fog_ on the ground, rendering you unable to cast or attack, as well as causing shadow damage.
.' He will randomly _Enslave_ a party member. You will have to beat the member down until they reach 50% helath.
.' Note that if you don't free the player, they will die. |only if heroic_dung()
.' The most important ability to watch out for is _Absorb Magic_. All spells cast at him while this ability is up will heal him.
.from Mindbender Ghur'sha##40788
.' Rescue Erunak Stonespeaker |q 28834/1 |only if havequest(28834)
|confirm |only if not havequest(28834)
step
goto 67.2,20.4
.talk 36915
.turnin 28834
step
goto 32.5,22.5
.talk 40792
.' Let him know you're ready.
|confirm
step
.' Phase 1:
.' _Deep Murloc Invaders_ will spawn in groups. Often, and should be AoE'd down.
.' There will be 3 _Vicious Mindlashers_ that spawn, and need to be tanked.
.' There will be 1 _Unyielding Behemoth_ that spawns and needs to be tanked.
.' After the 3 Vicious Mindlashers and Unyielding Behemoth are killed, 3 _Faceless Sappers_ will spawn.
.' Phase 2:
.' Kill the _Faceless Sappers_ 1 at a time, focusing them down quickly.
.' The tank should look for _Blight Beasts_, kiting them around the room as they spawn.
.' Once the 3 Faceless Sappers are defeated, Ozumat will appear at [36.4,17.4].
.from 3 Faceless Sapper##44752+
.from Vicious Mindlasher##44715+
.from Unyielding Behemoth##44648+
.from Ozumat##44566
|confirm |only if havequest(28836)
step
goto Throne of the Tides,49.9,90.6
.talk 50270
.turnin 28836
|only if havequest(28836)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Blackrock Caverns (BRC) 80-82",[[
dungeon 753
description This guide will walk you through the Blackrock Caverns dungeon.
achieveid 4833
step
label "lfg"
goto Blackrock Caverns,33.1,66.0
.talk 49476
.accept 28735
step
.' Clear the trash at these coordinates.
.' _Rom'ogg Bonecrusher_ patrols nearby, if you aggro him, he will do a shout attracting the nearby groups.
'|modelnpc 39665
'|goto 49.3,74.1
'|goto 51.1,70.3
.' Click here when you've cleared the groups. |confirm
step
.' Pull _Rom'ogg Bonecrusher_ when he's at [50.0,67.3].
.' For this fight, he will use _Call for Help_ when you engage him. Any mob nearby that you didnt kill will come to his aid.
.' At 66% and 33% he will use _Chains of Woe_ followed by _The Skullcracker_.
.' Players will need to _kill the Chains of Woe_, then move away from the boss in order to avoid massive, and possibly fatal damage.
.' He will also use _Wounding Strike_ on the tank, reducing healing received by 25%.
.from Rom'ogg Bonecrusher##39665 |only if not havequest(28735)
.kill Rom'ogg Bonecrushe##39665 |q 28735/1 |only if havequest(28735)
|confirm |only if not havequest(28735)
|only if not heroic_dung()
step
.' Pull _Rom'ogg Bonecrusher_ when he's at [50.0,67.3].
.' For this fight, he will use _Call for Help_ when you engage him. Any mob nearby that you didnt kill will come to his aid.
.' He will often use _Quake_, which can be avoided by moving to the side when you see him casting it. This will also summon Angered Earths.
.' He will also summon _Angered Earths_ each time he uses Quake, which need to be picked up by your tank. There will be one per ground crack.
.' At 66% and 33% he will use _Chains of Woe_ followed by _The Skullcracker_, which needs to be avoided or it will kill you.
.' Players will need to _kill the Chains of Woe_, then move away from the boss in order to avoid massive, and possibly fatal damage.
.' He will also use _Wounding Strike_ on the tank, reducing healing received by 25%.
.from Rom'ogg Bonecrusher##39665 |only if not havequest(28735)
.kill Rom'ogg Bonecrusher##39665 |q 28735/1 |only if havequest(28735)
|confirm |only if not havequest(28735)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up.
.turnin 28735
step
map Blackrock Caverns
path follow strict;loop off;ants straight
path	50.1,55.2	50.1,39.2	53.9,21.5
.accept 28737
step
goto 54.0,20.4
.' There will be an _Evolved Twilight Zealot_ patrolling here.
.' Interrupt _Shadow Stike_ whenever he uses it.
.from Evolved Twilight Zealot##39987
|confirm
step
goto 51.9,20.0 |n
.' Jump down the ledge here. |goto Blackrock Caverns/2 |noway|c
step
goto 30.3,16.6
.' There will be a group of 5 patrolling the hallway here.
.' Once they are defeated, there will be another _Evolved Twilight Zealot_ on the ramp at [29.6,14]
.' Interrupt _Shadow Stike_ whenever he uses it.
.from Evolved Twilight Zealot##39987
|confirm
step
goto 27.4,16.6
.' _Corla, Herald of Twilight_
.' You will see two beams on each side of Corla. You should have _Ranged DPS_ or _Healers_ step into the beams during the encounter.
.' This will give whoever interrupts the beams stacks of _Evolution_, when you reach 80, step out of the beams. You will need to move back in when your stack falls back off.
.' Failing to interrupt the beams, or to move out when you reach 80 will result in _Twilight Evolution_, which will enrage either a player or the minions into attacking your party members, and likely wipe you.
.' Corla, Herald of Twilight will cast _Dark Command_ on a random party member. It will be important to interrupt this, as it can ruin the _Evolution_ rotations.
.from Corla, Herald of Twilight##39679 |only if not havequest(28737)
.kill Corla, Herald of Twilight##39679 |q 28737/1 |only if havequest(28737)
|confirm |only if not havequest(28737)
|only if not heroic_dung()
step
goto 27.4,16.6
.' _Corla, Herald of Twilight_
.' You will see three beams on each side of Corla. You should have _Ranged DPS_ or _Healers_ step into the beams during the encounter.
.' This will give whoever interrupts the beams stacks of _Evolution_, when you reach 80, step out of the beams. You will need to move back in when your stack falls back off.
.' Failing to interrupt the beams, or to move out when you reach 80 will result in _Twilight Evolution_, which will enrage either a player or the minions into attacking your party members, and likely wipe you.
.' Corla, Herald of Twilight will cast _Dark Command_ on a random party member. It will be important to interrupt this, as it can ruin the _Evolution_ rotations.
.from Corla, Herald of Twilight##39679 |only if not havequest(28737)
.kill Corla, Herald of Twilight##39679 |q 28737/1 |only if havequest(28737)
|confirm |only if not havequest(28737)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up.
.turnin 28737
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	34.2,13.3	37.5,13.2	39.2,16.0
.' Hug the wall, following the way points.
.' There will be trash at the last waypoint.
.' Follow the ramp down and click here to proceed. |confirm
step
goto 43.5,57.7
.accept 28738
step
.' There will be 2 fire elementals patrolling around the room with _Karsh Steelbender_.
.from Conflagration##39994+
.' Pull one at a time back to the ramp.
|confirm
step
goto 45.6,65.6
.' _Karsh Steelbender_
.' For this fight, there will be a large pillar of flame at the center of the room.
.' The tank will need to run through the center, giving the boss a _Superheated Quicksilver Armor_ debuff, increasing the damage the boss takes.
.' When the debuff has 5 seconds left, the tank will have to _Run_ through the pillar of flame again, renewing and adding another debuff to the boss.
.' If you let _Superheated Quicksilver Armor_ fall off the boss he will gain his _Quicksilver Armor_ buff.
.from Karsh Steelbender##39698 |only if not havequest(28738)
.kill Karsh Steelbender##39698 |q 28738/1 |only if havequest(28738)
|confirm |only if not havequest(28738)
|only if not heroic_dung()
step
goto 45.6,65.6
.' _Karsh Steelbender_
.' For this fight, there will be a large pillar of flame at the center of the room.
.' The tank will need to run through the center, giving the boss a _Superheated Quicksilver Armor_ debuff, increasing the damage the boss takes.
.' When the debuff has 5 seconds left, the tank will have to _Run_ through the pillar of flame again, renewing and adding another debuff to the boss.
.' If you let _Superheated Quicksilver Armor_ fall off the boss, he will spawn adds, and gain his _Quicksilver Armor_ buff.
.from Karsh Steelbender##39698 |only if not havequest(28738)
.kill Karsh Steelbender##39698 |q 28738/1 |only if havequest(28738)
|confirm |only if not havequest(28738)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up:
.turnin 28738
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	53.5,67.2	55.7,68.3	58.5,64.9
path	61.6,71.8
.' Kill trash at the waypoints.
.' The second group should be 2 Defiled Earth Ragers. Everyone in the group needs to stand close, as they do an AoE that does more damage the further away you are.
.' Be sure you hug the wall on the left up until the last waypoint.
|confirm
|modelnpc Defiled Earth Rager##40023+
step
goto 66.1,71.6
.' Click the Quest Completion Box that pops up:
..accept 28740
step
goto 66.3,77.5
.' There will be 3 Corehound Pups. You can pull them without pulling the boss behind them.
.from Lucky##40008 |n
.from Buster##40013 |n
.from Spot##40011 |n
|confirm
|only if not heroic_dung()
step
.' _Beauty_
.' She will randomly cast _Terrifying Roar_, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
.' She will _Berserker Charge_ an enemy, knocking them back.
.' She will also use _Flamebreak_ on melee knocking them back.
.' She casts _Magma Spit_ on party members, causing AoE damage when it is dispelled.
.from Beauty##39700 |only if not havequest(28740)
.kill Beauty##39700 |q 28740/1 |only if havequest(28740)
|confirm |only if not havequest(28740)
|only if not heroic_dung()
step
.' _Beauty_
.' You will need to use crowd control on _Lucky, Buster and Spot_ or kill them before engaging the boss.
.' _DO NOT_ kill _Runty_, or the boss will enrage and deal incredible damage.
.' She will randomly cast _Terrifying Roar_, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
.' She will _Berserker Charge_ an enemy, knocking them back.
.' She will also use _Flamebreak_ on melee knocking them back.
.' She casts _Magma Spit_ on party members, causing AoE damage when it is dispelled.
.from Beauty##39700 |only if not havequest(28740)
.kill Beauty##39700 |q 28740/1 |only if havequest(28740)
|confirm |only if not havequest(28740)
|only if heroic_dung()
step
.' Click the Quest Completion Box that pops up:
.turnin 28740
step
goto 69.6,72.2
.' Wait here for the elemental patrol.
|confirm
step
goto 70.0,63.4
.' Click the Quest Completion Box that pops up.
.accept 28741
step
goto 68.8,56.0
.' _Ascendant Lord Obsidius_
.' When you get within aggro radius, he will be attacked. When Raz dies then it will be time to face the boss.
.' Ascendant Lord Obsidius will split into 3 forms.
.' During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
.from Ascendant Lord Obsidius##39705 |only if not havequest(28741)
.kill Ascendant Lord Obsidius##39705 |q 28741/1 |only if havequest(28741)
|only if not heroic_dung()
step
goto 68.8,56.0
.' _Ascendant Lord Obsidius_
.' When you get within aggro radius, he will be attacked. When Raz dies then it will be time to face the boss.
.' Ascendant Lord Obsidius will split.
.' There will be 3 _Shadows of Obsidius_ that need to be kited by a ranged DPS.
.' He will use _Thunderclap_, which will decrease allies movement speed by 50% if they are within 25 yards of it.
.' During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
.from Ascendant Lord Obsidius##39705 |only if not havequest(28741)
.kill Ascendant Lord Obsidius##39705 |q 28741/1 |only if havequest(28741)
|only if heroic_dung()
step
goto 68.8,56.0
.talk 49476
..turnin 28741
|only if havequest(28741)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\The Stonecore (SC) 82-84",[[
dungeon 768
description This guide will walk you through the The Stonecore dungeon.
achieveid 4846
step
label	"start"
goto The Stonecore 53.7,94.9
.talk 50048
..accept 28815
step
goto The Stonecore 54.6,88.4
.from Stonecore Earthshaper##43537+
.' Make sure to kill him first, if not killed fast enough, he will transform and do big group damage.
.' You will have to fight him in each group as you continue forward.
|confirm
step
goto 63.5,65.2
.click Twilight Documents##183
.get Twilight Documents |q 28815/1
|only if havequest(28815)
step
.' Click the Quest Completion Box that pops up:
..turnin 28815
..accept 28814
step
goto The Stonecore 62.4,61.2
.from Corborus##43438
.' Corborus has 2 phases to his fight.
.' _Phase 1_ Corborus will attack the Tank and use _Crystal Barrage_. These crystals will do damage to anyone standing in them.
.' _Phase 2_
.' Corborus will burrow. During this time avoid the areas with rubble when he is underground, he will jump out of these areas and hurt anyone standing in it.
.' Kill the adds he summons during this phase.
|confirm
|only if not heroic_dung()
step
goto The Stonecore 62.4,61.2
.from Corborus##43438
.' Corborus has 2 phases to his fight.
.' _Phase 1_
.' Corborus will attack the Tank and use _Crystal Barrage_. These crystals will do damage to anyone standing in them. |tip In horoic mode, these will also spawn Crystal Shards to attack. Make sure to AoE these down quickly.
.' _Crystal Barrage_ will spawn adds that need to be picked up quickly.
.' Additionally, he will randomly use _Dampening Wave_, which will reduce the healing the party takes, as well as dealing damage. Remove this from the tank as soon as possible. (Magic Effect)
.' _Phase 2_
.' Corborus will burrow. During this time avoid the areas with rubble when he is underground, he will jump out of these areas and hurt anyone standing in it.
.' Kill the adds he summons during this phase.
|confirm
|only if heroic_dung()
step
goto 37.7,44.9
.' _Slabhide_
.' He will use _Sand Blast_ which deals damage in a cone in front of him. Only the tank should be in front of him.
.' He will cast _Lava Fissure_ under a random players feet. It will erupt after 5 seconds and create a lava pool that lasts for 10 seconds.
.' He will cast _Stalactite_ often. When he does he'll move to the center of the room and cause spikes to rain from the ceiling. Avoid them, as they do massive damage. There will be a shadow where they drop.
.from Slabhide##43214
|confirm
|only if not heroic_dung()
step
goto 37.7,44.9
.' _Slabhide_
.' He will use _Sand Blast_ which deals damage in a cone in front of him. Only the tank should be in front of him.
.' He will cast _Lava Fissure_ under a ranndom players feet. It will erupt after 3 seconds and create a lava pool that lasts for 30 seconds.
.' He will cast _Stalactite_ often. When he does he'll move to the center of the room and cause spikes to rain from the ceiling. Avoid them, as they do massive damage. There will be a shadow where they drop.
.' After the Stalactite's, he will cast _Crystal Storm_, move behind the rocks out of his line of site to avoid damage.
.from Slabhide##43214
|confirm
|only if heroic_dung()
step
goto 38.7,20.6
.' As you run through this room, you will want to kill the _Stonecore Sentries_, they will aggro big groups if they are close enough.
.' _ Stonecore Bruisers_ patrol this area. When you can, kill them away from groups. |tip If you stay to the right side, you will not have to kill groups on the left side.
|modelnpc Stonecore Bruiser##42692+, Stonecore Sentry##42695+
|confirm
step
goto 47.7,20.0
.' _Ozruk_
.' Face Ozruk away from the group. He will use _Ground Slam_ that everyone, including the tank need to avoid. This causes massive damage
.' Ozruk will cast _Shatter_ shortly after Ground Slam. Run 15 yards away from him or you will take up to 45k damage.
.from Ozruk##42188
|confirm
|only if not heroic_dung()
step
goto 47.7,20.0
.' _Ozruk_
.' Face Ozruk away from the group. He will use _Ground Slam_ that everyone, including the tank need to avoid. This causes massive damage
.' Ozruk will cast _Shatter_ shortly after Ground Slam. Run 15 yards away from him or you will take damage up to 200k.
.' He will cast _Paralyze_, which needs to be dispelled.  You can also cast a DoT when Ozruk has _Elementium Bulwark_ up, or simply melee him keeping the _Elementium Spike Shield_ debuff on you at all times to break the effect.
.from Ozruk##42188
|confirm
|only if heroic_dung()
step
goto 57.64,38.24
.' There are 2 stages to this fight.
.' _Phase One_ She will need to be tanked and moved when she creates a _Gravity Well_ (purple circle with that deals shadow damage).
.' During this phase, boss will need to be tanked on the left of the Gravity Well, so the mobs will run in and die.
.' _Phase Two_ She will float up to her altar and the Tank will need to get aggro on all the _Devout Followers_ that run in.
.from High Priestess Azil##42333 |only if not havequest(28814)
.kill High Priestess Azil##42333  |q 28814/1 |only if havequest(28814)
.kill 101 Devout Follower##42428 |q 28814/2 |only if havequest(28814)
|confirm |only if not havequest(28814)
|only if not heroic_dung()
step
goto 57.64,38.24
.' There are 2 stages to this fight.
.' _Phase One_ She will need to be tanked and moved when she creates a _Gravity Well_ (purple circle with that deals shadow damage).
.' During this phase, boss will need to be tanked on the left of the Gravity Well, so the mobs will run in and die.
.' She will also use an ability called _Force Grip_ which deals massive damage to the tank and should be interrupted each time it is used.
.' _Phase Two_ She will float up to her altar and Tank will need to get aggro on all the _Devout Followers_ that run in.
.' She will use _Seismic Shard_, which throws a huge rock at a random party member. More often than not it will kill that party member, so be on the look out for a shadow on the ground.
.from High Priestess Azil##42333 |only if not havequest(28814)
.kill High Priestess Azil##42333  |q 28814/1 |only if havequest(28814)
.kill 101 Devout Follower##42428 |q 28814/2 |only if havequest(28814)
|confirm |only if not havequest(28814)
|only if heroic_dung()
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto 53.6,95.0
.talk 50048
..turnin 28814
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\The Vortex Pinnacle (VP) 82-84",[[
dungeon 769
description This guide will walk you through the Vortex Pinnacle dungeon.
achieveid 4847
step
label "lfg"
goto The Vortex Pinnacle 54.4,16.6
.talk 49943
..accept 28779
..accept 28760
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	59.1,24.3	62.0,28.7	65.4,29.7
path	65.1,33.4	62.1,34.0
.' Fight near the wall so you don't get knocked off.
.'Follow the path down the ramp.
|confirm
step
goto 55,44.6
.' _Grand Vizier Ertan_
.' When engaged, she will summon whirlwinds at the outside of the room.
.' Move in towards her to avoid them for the duration of the fight.
.' As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her.  _Move outward, away from her, avoiding the whirlwinds!_
.' If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
.from Grand Vizier Ertan##43878
.get Grand Vizier Etran's Heart##65660 |q 28779/1 |only if havequest(28779)
|confirm |only if not havequest(28779)
|only if not heroic_dung()
step
goto 55,44.6
.' _Grand Vizier Ertan_
.' When engaged, she will summon whirlwinds at the outside of the room.
.' Move in towards her to avoid them for the duration of the fight.
.' As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her.  _Move outward, away from her, avoiding the whirlwinds!_
.' If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
.from Grand Vizier Ertan##43878
.get Grand Vizier Etran's Heart##65660 |q 28779/1 |only if havequest(28779)
|confirm |only if not havequest(28779)
|only if heroic_dung()
step
goto The Vortex Pinnacle 57.6,48.9  |n
' Ride the Slipstream across the gap. |goto 63.6,59.1 <5 |noway|c
step
goto 60.6,65.3 |n
.from Young Storm Dragon##45919
.' When you pull these, move it away from the circle or it will heal for all the damage you do.
|confirm
step
goto 58.4,68.9 |n
.' There will be _Howling Gales_ that you will need to hit to cross the bridge.
.' Cross the bridge. |goto 55.2,73.6 <5 |noway|c
step
goto 53.6,76.1 |n
.from Young Storm Dragon##45919
.' When you pull these, move it away from the circle or it will heal for all the damage you do.
|confirm
step
goto 53.0,77.7
.from Empyrean Assassin##45922
.from Turbulent Squall##45924
.' For this trash, move out of _Hurricane_.
.' Interrupt _Cloudburst_ when it's cast.
.' Kill Empyrean Assassins first.
|confirm
step
goto 52,80.6
.' _Altairus_
.' When engaged, Altairus will summon a wind which will affect your haste.
.' Using the wind current to your advantage will be the deciding factor in this fight.
.' You will need to navigate around the boss. When you have the _Upwind of Altairus_ buff, stop moving. You gain a 100% haste buff for spells and attacks.
.' If you have the _Downwind of Altairus_ debuff, circle the boss until you have the Upwind buff.
.' Do not stand in front of Altairus. He uses a cone breath ability.
.from Altairus##43873
|confirm
|only if not heroic_dung()
step
goto 52,80.6
.' _Altairus_
.' When engaged, Altairus will summon a wind which will affect your haste.
.' He will also summon _Twisting Winds_, which will toss you up in the air and deal damage if you're hit by them.
.' Using the wind current to your advantage will be the deciding factor in this fight.
.' You will need to navigate around the boss. When you have the _Upwind of Altairus_ buff, stop moving. You gain a 100% haste buff for spells and attacks.
.' If you have the _Downwind of Altairus_ debuff, circle the boss until you have the Upwind buff.
.' Do not stand in front of Altairus. He uses a cone breath ability.
.from Altairus##43873
|confirm
|only if heroic_dung()
step
goto 49.4,80.7 |n
' Ride the Slipstream across the gap. |goto 31.4,80.4 <8 |noway|c
step
goto 30.8,76.2
.' For these trash pulls, always kill or use crowd control for _Temple Adepts_.
|confirm
'|modelnpc Temple Adept##45935+
step
goto 32.1,69.1
.' There will be an electric field in the area. Magic won't work on mobs in these fields.
.' Use crowd control on _Temple Adepts_ after they patrol out of the field.
|confirm
'|modelnpc Temple Adept##45935+
step
goto 27.1,60.3
.from Skyfall Star##52019
.' There will be no aggro for these mobs and they will spread further apart the longer the fight goes.
.' AoE them down.
|confirm
step
goto 29.8,39
.' _Asaad_
.' He will channel _Supremacy of the Storm_. When he does so he will start to create a triangle on the ground randomly in the room.
.' You will need to run inside of the triangle.
.' His primary attack is _Chain Lightning_ so try to spread out of possible to reduce group damage.
.from Asaad##43875 |only if not havequest(28760)
.kill Asaad##43875 |q 28760/1 |only if havequest(28760)
|confirm |only if not havequest(28760)
|only if not heroic_dung()
step
goto 29.8,39
.' _Asaad_
.' He will channel _Supremacy of the Storm_. When he does so he will start to create a triangle on the ground randomly in the room.
.' You will need to run inside of the triangle.
.' His primary attack is _Chain Lightning_ so try to spread out of possible to reduce group damage.
.' He will cast _Static Cling_ which will root you to the ground and can be deadly. If you jump at the time it is cast you will not get rooted, but if not then it is a _Magic_ effect and can be removed.
.from Asaad##43875 |only if not havequest(28760)
.kill Asaad##43875 |q 28760/1 |only if havequest(28760)
|confirm |only if not havequest(28760)
|only if heroic_dung()
step
goto 29.2,46.4  |n
' Ride the Slipstream across the gap. |goto 54.1,16.8 <8 |noway|c
step
goto 54.5,15.9
.talk 49943
..turnin 28779
..turnin 28760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir (LCoT) 83-85",[[
dungeon	747
description This guide will walk you through the Lost City of the Tol'vir dungeon.
achieveid 4848
author support@zygorguides.com
step
label	"start"
goto Lost City of the Tol'vir 31.7,16.3
.talk 50038
..accept 28783
..accept 28781
step
goto 30.1,34.6
.kill 1 Oathsworn Captain##45122 |q 28781/2
.' The Captain will cast an AoE spell on the ground. Make sure to move out of this fast, it will do lots of damage.
|only if havequest(28781)
step
goto 36.5,43.2
.' _General Husam_
.' He will use _Shockwave_. When he is beginning to cast, get out of the smoke on the ground. It will deal damage in each direction.
.' He will toss _Mystic Traps_ all around him. Do not get near these, or they will detonate, causing 35k damage.
.from General Husam##44577 |only if not havequest(28781)
.kill General Husam##44577 |q 28781/1 |only if havequest(28781)
|confirm |only if not havequest(28781)
|only if not heroic_dung()
step
goto 36.5,43.2
.' _General Husam_
.' He will use _Shockwave_. When he is beginning to cast, get out of the smoke on the ground. It will deal damage in each direction.
.' He will toss _Mystic Traps_ all around him. Do not get near these, or they will detonate, causing 35k damage.
.' When he uses Mystic Trap, he will cast _Detonate Traps_ soon after, causing them to glow followed by an explosion. Move away from them before the blow up
.from General Husam##44577 |only if not havequest(28781)
.kill General Husam##44577 |q 28781/1 |only if havequest(28781)
|confirm |only if not havequest(28781)
|only if heroic_dung()
step
goto 30.1,34.6
.kill 1 Oathsworn Captain##45122 |q 28781/2
|only if havequest(28781)
step
map  Lost City of the Tol'vir
path loop off
path	42.7,41.4	50.9,43.6	51.0,57.3
path	58.6,57.3	66.4,70.5
.' Follow this path and kill the boss
.' Lockmaw will use _Dust Flail_, which will affect anyone standing behind him.
.' Spread out so you don't hurt your group with _Viscous Poison_. It will damage anyone within 5 yards of you, as well as slow them by 30%
.' He will also cast _Scent of Blood_ on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
.' At _30% Health_ he will gain the ability _Venomous Rage_, which can be dispelled.
.from Lockmaw##43614
|confirm
|only if not heroic_dung()
step
map  Lost City of the Tol'vir
path loop off
path	42.7,41.4	50.9,43.6	51.0,57.3
path	58.6,57.3	66.4,70.5
.' Follow this path and kill the boss.
.' _Lockmaw & Augh_
.' Lockmaw will use _Dust Flail_, which will affect anyone standing behind him.
.' Spread out so you don't hurt your group with _Viscous Poison_. It will damage anyone within 5 yards of you, as well as slow them by 30%
.' He will also cast _Scent of Blood_ on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
.' At _30% Health_ he will gain the ability _Venomous Rage_, which can be dispelled.
.from Lockmaw##43614
.' Augh will appear after you defeat Lockmaw. Avoid his _Whirlwind_ by kiting him around.
.' He will toss a poison on random party members called _Paralytic Blow Dart_, dispel it if you are able.
.' He will cast _Dragon's Breath_ on your tank, disorienting him. At this time he will go after party members with high threat.
.' He will go into a frenzy which cannot be removed.
.from Augh##49045
|confirm
|only if heroic_dung()
step
map  Lost City of the Tol'vir
path loop off
path	66.0,69.6	59.1,58.3	49.7,57.1
path	47.1,68.1	49.0,76.4	42.0,81.6
path	39.7,71.2	36.7,61.1	27.1,65.5
.' Follow this path and kill the boss
.' _High Prophet Barim_
.' _Phase 1:_
.' He will use _Fifty Lashings_ to increase his damage output. You may want to use cooldowns.
.' He will cast _Plague of Ages_, this will deal 4k damage every second for 9 second and can be dispelled.
.' _Heaven's Fury_. This will open up a portal of light that will deal large damage to anyone standing in the light.
.' At 50% he will use _Repentance_, pulling the entire group to him. It will also deal out damage and knock the players back at the end of it's duration.
.' _Phase 2:_
.' He will place _Hallowed Ground_ on the ground that deals massive damage. Move out of it as fast as possible.
.' He will summon a _Harbinger of Darkness_ and start using _Soul Sever_. Soul Sever spawns a _Soul Fragment_ which needs to be killed quickly and can be slowed, stunned and snared.
.' Players will randomly be hit for around _7,000_ damage during this phase. Healers need to try and keep people topped off.
.' When the _Harbinger of Darkness_ is dead, it will go back to phase one.
.from High Prophet Barim##43612
|confirm
|only if not heroic_dung()
step
map  Lost City of the Tol'vir
path loop off
path	66.0,69.6	59.1,58.3	49.7,57.1
path	47.1,68.1	49.0,76.4	42.0,81.6
path	39.7,71.2	36.7,61.1	27.1,65.5
.' Follow this path and kill the boss
.' _High Prophet Barim_
.' _Phase 1:_
.' He will cast _Blaze of the Heavens_, which spawns a bird that can be kited or nuked from afar. When you kill it it turns to an egg and heals.
.' He will use _Fifty Lashings_ to increase his damage output. You may want to use cooldowns.
.' He will cast _Plague of Ages_, this will deal 4k damage every second for 9 second and can be dispelled.
.' _Heaven's Fury_. This will open up a portal of light that will deal large damage to anyone standing in the light.
.' At 50% he will use _Repentance_, pulling the entire group to him. It will also deal out damage and knock the players back at the end of it's duration.
.' _Phase 2:_
.' He will place _Hallowed Ground_ on the ground that deals massive damage. Move out of it as fast as possible.
.' He will summon a _Harbinger of Darkness_ and start using _Soul Sever_. Soul Sever spawns a _Soul Fragment_ which needs to be killed quickly and can be slowed, stunned and snared.
.' Players will randomly be hit for around _7,000_ damage during this phase. Healers need to try and keep people topped off.
.' When the _Harbinger of Darkness_ is dead, it will go back to phase one.
.from High Prophet Barim##43612
|confirm
|only if heroic_dung()
step
goto 36.0,62.8 |n
.' Ride the Wind Tunnel |goto 35.7,53.9 <5 |noway |c
step
goto 40.8,55.3
.' There are 2 phases to this fight with Siamat.
.' _Phase 1:_
.' He will spawn _Minions of Siamat_. Interrupt their spells and kill them as fast as you can. Kill them by the ledges, as they spawn whirlwinds when they die.
.' He will summon _Servants of Siamat_, which need to be Tanked and Killed. Only 3 will spawn during the fight. After the 3rd one, Siamat will become vulnerable. Move away from them as they are about to die to avoid AoE damage.
.' During the fight, Siamat will cast _Storm Bolt_.
.' _Phase 2:_
.' He will use _Wailing Winds_ when the shield goes down. Move away from the edges and top every one off health wise if you are the healer.
.' Minions of Siamat will continue to spawn, but you can ignore them and focus on the boss.
.' He will use _Absorb Storms_ removing a minion and granting him a passive AoE.
.from Siamat##44819 |only if not havequest(28783)
.kill Siamat##44819w |q 28783/1 |only if havequest(28783)
|confirm |only if not havequest(28783)
|modelnpc Minion of Siamat##44704+
|modelnpc Servant of Siamat##45259+
|only if not heroic_dung()
step
goto 40.8,55.3
.' There are 2 phases to this fight with Siamat.
.' _Phase 1:_
.' He will spawn _Minions of Siamat_. Interrupt their spells and kill them as fast as you can. Kill them by the ledges, as they spawn whirlwinds when they die.
.' He will summon _Servants of Siamat_, which need to be Tanked and Killed. Only 3 will spawn during the fight. After the 3rd one, Siamat will become vulnerable. Move away from them as they are about to die to avoid AoE damage.
.' During the fight, Siamat will cast _Storm Bolt_.
.' _Phase 2:_
.' He will use _Wailing Winds_ when the shield goes down. Move away from the edges and top every one off health wise if you are the healer.
.' Minions of Siamat will continue to spawn, but you can ignore them and focus on the boss.
.' He will use _Absorb Storms_ removing a minion and granting him a passive AoE.
.from Siamat##44819 |only if not havequest(28783)
.kill Siamat |q 28783/1 |only if havequest(28783)
|confirm |only if not havequest(28783)
|modelnpc Minion of Siamat##44704+
|modelnpc Servant of Siamat##45259+
|only if heroic_dung()
step
goto Lost City of the Tol'vir 31.7,16.3
.talk 50038
..turnin 28783
..turnin 28781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination (HoO) 83-85",[[
dungeon 759
description This guide will walk you through the Halls of Origination dungeon.
achieveid 4841
author support@zygorguides.com
step
label	"start"
goto Halls of Origination 58.3,62.7
.from Temple Guardian Anhuur##39425
.' You will have 2 phases when fighting this boss
.' _Phase 1:_
.' Fight this boss until he becomes _immune to damage_. This happens at _66% and 33%_.
.' He will cast _Burning Light_, which will cause a beam of light to shoot from the wall. Don't stand in the fire it creates on the ground.
.' He will cast _Divine Reckoning_ at a random party member. After 8 seconds, the spell will erupt and damage you along with anyone within 7 yards of you. It is a _Magic Debuff_ and can be dispelled.
.' _Phase 2:_
.' When he cast's _Shield of Light_ he becomes immune to damage.
.. You will have to jump off the sides of the platform to the right or left, then _click the switch to deactivate_ shield of light and run back. |only if not heroic_dung()
.. You will have to jump off the sides of the platform to the right and left, then _click the switch to deactivate_ shield of light and run back. |only if heroic_dung()
.' Once he has shield of light, he will start channeling _Reverberating Hymn_ which deals 400 holy damage per stack. It stacks every 4 seconds and lasts until you click the left and right switches.
.' Immediately moving into phase 2, _Pit Vipers_ will spawn on the ground near the levers. The tank should take care to pick them up so that a DPS can click the lever.
|confirm
step
.' Follow the Hallway |goto 71.3,49.8 <5 |c
step
goto 90.1,49.7 |n
.' Follow the Hallway and go up these stairs. |goto Halls of Origination/2 24.9,49.4 <5 |noway |c
step
goto Halls of Origination/2 32.7,48.7
.' Kill all the mobs in this area, then click a Camel to continue. |invehicle |c
|modelnpc Camel##39443
step
goto 49.8,49.3
.from Earthrager Ptah##39428
.' You will have 2 phases when fighting this boss
.' _Phase 1:_
.' Look out for _Earth Spike_. The ground will rumble, then erupt a spike, move when you see dust.
.' He will use _Flame Bolt_, which is channeled and damages 2 random players. |only if not heroic_dung()
.' He will use _Flame Bolt_, which is channeled and damages 3 random players. |only if heroic_dung()
.' He will use _Raging Smash_ which will damage the tank and 2 additional targets within melee range.
.' _Phase 2:_
.' At _50%_ Ptah will burrow and you will have to fight some mobs.
.' He will summon a _Sand Vortex_ that moves around the battlefield.
.' He will summon _Dustbone Horrors_ and _Jeweled Scarabs_, which need to be killed before the boss returns.
.' Be aware of _quicksand_, this will slow your movement and cause damage while standing in it.
|confirm
step
goto 38.8,49.5
.click Halls of Origination Transit Device##8632
.' Teleport to The Maker's Rise. |goto Halls of Origination 67.5,52.8 |noway |c
step
goto 63.6,49.8 |n
.' Follow these stairs up and to the right. |goto 63.6,49.8 <5 |noway |c
step
'Kill each Elemental Warden on the platforms around this room
.' [49.0,32.6]
.' [63.3,32.6]
.' [63.3,22.1]
.' [49.2,22.0]
|confirm
step
goto 56.2,19.3
.' _Anraphet_
.' This boss is more of a Healing intensive fight for the whole group.
.' Anraphet will cast _Alpha Beams_, this cause damage to a player and all players around them.
.' It will leave circle on the ground you need to avoid for 3 seconds. |only if not heroic_dung()
.' It will leave circle on the ground you need to avoid and lingers throughout the fight. |only if heroic_dung()
.' Anraphet will go into _Omega Stance_ causing damage to the whole group for 8 seconds.
.' After Omega Stance or Alpha Beams, he will use _Crumbling Ruin_, decreasing the groups health by 8%. It stacks 10 times.
.' Repeat fight.
.from Anraphet##39788
|confirm
step
goto 56.2,7.6 |n
.click Halls of Origination Transit Device##8632
.' Teleport to The Maker's Rise. |goto 67.5,52.8 <5 |noway |c
step
goto 66.4,48.3
.click The Maker's Lift Controller##8504
.' <Bring Elevator to the 2nd floor> |goto Halls of Origination/3 |noway |c
step
goto 47.1,78.8
.' _Ammunae_
.' He will cast _Wither_ on a random party member. It reduces attack speed, casting speed and movement speed by 60%. It can be interrupted and dispelled (magic).
.' He will cast _Consume Life Energy_, which will deal nature damage and dimish a players 'resource'.
.' He will summon _Seedling Pods_. They will use _Energize_ on Ammunae, increasing his damage done by 5% and attack speed by 30% while alive. Kill them when they spawn.
.' It will also heal Ammunae for 1% of his max health every 3 seconds while alive. |only if heroic_dung()
.' He will use _Rampant Growth_, transforming all Seedling Pods into Bloodpetal Sprouts which will inflict massive damage to the party.
.' He will spawn a _Spore_. It moves slowly and when it dies, it leaves a spore cloud with a 6 yard radius that deals nature damage every 1.5 seconds.
.' The _Noxious Spore_ cloud that spawn can also dish out major damage to any plant life, inflicting 12 to 18% of it's health.
.from Ammunae##39731
|confirm
step
goto 67.1,49.5
.' _Setesh_
.' He will cast _Chaos Bolt_ at a random party member.
.' He will also place _Seed of Chaos_ on a random party member. When it detonates, the group will take shadow damage.
.' Through the fight, he will _Summon Chaos Portals_. It will spawn monsters that the DPS need to kill, then despawn after around 25 seconds. |only if not heroic_dung()
.' Through the fight, he will _Summon Chaos Portals_. It will spawn monsters while it is up. The DPS will need to attack the portal to stop it from spawning adds. |only if heroic_dung()
.from Setesh##39732
|confirm
step
goto 26.7,49.8
.' _Isiset_
.' She will cast _Supernova_ through out the fight. You can turn away from her to avoid the disorienting effect right before she finishes her cast.
.' When she reaches 66 and 33% health, use her _Mirror Images_ ability.
.' At 66% she will split into 3 forms. Kill the _Veil of Sky_ Mirror Image.
.' At 33% she will split into 2 forms. Kill the  _Celestial Call_ Mirror Image.
|modelnpc Veil of Sky##39722, Celestial Call##39721
.from Isiset##39587
|confirm
step
goto 47.2,19.7
.' _Rajh_
.' Rajh will start with 100 energy and cast spells at 20 energy each.
.' Rajh's spells to avoid are: _Summon Sun Orb_. This is channeled above a players head, after 3 seconds it will drop and deal damage, knocking players nearby back. It can be interrupted.
.' He will cast _Inferno Leap_ and it needs to be _interrupted_. If not, he will jump towards a targeted player, and deal large damage knocking away any nearby players. |tip This can kill the player he lands on if they do not move.
.' He will also cast _Solar Winds_ which creates a fiery vortex in front of him that grows an dmoves around the room.
.' The Solar Wind will leave _Solar Fire_ on the ground, which deal out massive damage. |only if heroic_dung
.' When he reaches 10 or less energy, he walks to the middle of the room and casts _Blessing of the Sun_.
.' He will become 100% more vulnerable to player attack, while regenerating his energy and causing AoE fire damage to your group.
.from Rajh##39378
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Grim Batol (GB) 84-85",[[
dungeon 757
description This guide will walk you through the Grim Batol dungeon.
achieveid 4840
step
label "lfg"
goto Grim Batol,18.4,55.2
.talk 50385
..accept 28853
step
goto 19,55
.talk 50390
..accept 28852
step
goto 19.4,53
.talk 50387
..accept 28854
step
map Grim Batol
path follow strict;loop off;ants straight
path	18.0,43.4	20.2,39.6	26.2,39.8
path	27.9,27.1	31.8,26.2
.' Follow the path, clearing the trash as you go.
.' You will need to kill the nets that are holding the dragons down.
|confirm
step
.clicknpc Battered Red Drake##42571
.' You will end up flying through the instance, gaining the ability to attack groups of enemies.
.' The damage that you do to them stays even after you land.
..' Kill 15 Twilight's Hammer Minions |q 28852/1
..' Kill 25 Trogg Dwellwers |q 28852/2
.' Note that if you didn't get all of the Trogg Dwellers, you can fly back and get them at the end of the instance.
.' Click here once you've landed. |confirm
|only if havequest(28852)
step
goto 40.4,68.4
.' _General Umbriss_
.' He will randomly use _Blitz_ towards a party member.  You need to move out of his path to avoid damage.
.' He will also use _Ground Siege_ in a random direction. It will also need to be avoided.
.' The tank will be hit with _Bleeding Wound_ which does massive damage every 2 seconds until they are healed to 90% of their health.
.' At 30% he will get a _Frenzy_ affect gaining 50% attack speed and damage.
.' Note that he also summons adds. If they reach him he will also gain the _Frenzy_ effect.
.from General Umbriss##39625
|confirm
|only if not heroic_dung()
step
goto 40.4,68.4
.' _General Umbriss_
.' He will randomly use _Blitz_ towards a party member.  You need to move out of his path to avoid damage.
.' He will also use _Ground Siege_ in a random direction. It will also need to be avoided.
.' The tank will be hit with _Bleeding Wound_ which does massive damage every 2 seconds until they are healed to 90% of their health.
.' At 30% he will get a _Frenzy_ affect gaining 50% attack speed and damage.
.' He will summon adds. Make sure to keep them more than 10 yards away from the boss.  If close to the boss when they die, they will give the boss a 100% damage buff.
.' If the adds get near the boss, they will be buffed and deal significant more damage.
.' He will cast _Modgud's Malady_ which needs to be dispelled. It is a _Magic_ debuff and stacks up to 10 times.
.from General Umbriss##39625
|confirm
|only if heroic_dung()
step
goto 46.3,48.5
.' Wait for a patrol to come here.
.' Watch for _Forgemaster Throngus_ who patrols through the room. Go back into the hallway if you haven't cleared the trash yet.
.' Once the trash is cleared, click here. |confirm
'|modelnpc 40177
'|goto 48.7,47.1
'|goto 45.7,43.6
step
.' _Forgemaster Throngus_
.' This boss cycles through weapons, which have different strategies depending on which he's holding:
.' While using a _Mace_ his movement speed will be decreased by 70%, but his damage will be increased by 200%. The tank will need to kite him.
.' He will jump to random party members during Mace stance inflicting damage as a dot for 5 seconds.
.' While using _Dual Blades_ he loses 20% damage, but uses the _Thrash_ ability, causing him to attack an additional two times when he swings his weapons.
.' He will also use _Disorienting Roar_ while in Dual Blade stance, reducing casting and attack speed by 50%. This effect can be removed by using an ability or spell.
.' While using his _Phalanx_ He takes 99% reduced damage. Move behind him to bypass this mechanic.
.' While in Phalanx stance, there will also be archers constantly firing at your group.
.from Forgemaster Throngus##40177
|confirm
|only if not heroic_dung()
step
.' _Forgemaster Throngus_
.' This boss cycles through weapons, which have different strategies depending on which he's holding:
.' While using a _Mace_ his movement speed will be decreased by 70%, but his damage will be increased by 200%. The tank will need to kite him.
.' He will jump to random party members during Mace stance inflicting damage as a dot for 5 seconds.
.' He will leave a trail of _Burning Flames_ behind him as he walks, avoid it at all cost.
.' While using _Dual Blades_ he loses 20% damage, but uses the _Thrash_ ability, causing him to attack an additional two times when he swings his weapons.
.' He will also use _Disorienting Roar_ while in Dual Blade stance, reducing casting and attack speed by 50%. This effect can be removed by using an ability or spell.
.' He will also leave _Burning Flames_ on whoever he hits, which can be dispelled. This effect stack with each hit.
.' While using his _Phalanx_ He takes 99% reduced damage. Move behind him to bypass this mechanic.
.' While in Phalanx stance, there will also be archers constantly firing at your group.
.' He will use the ability _Flaming Shield_ which deals fire damage to anyone in front of his shield, so be quick to move behind him.
.from Forgemaster Throngus##40177
|confirm
|only if heroic_dung()
step
map Grim Batol
path follow strict;loop off
path	56.8,47.9	60.6,53.5	60.4,63.4
path	63.8, 64.6	67.2,68.1	73.0,59.0
path	68.5,54.7	70.7,41.7	69.8,30.2
.' Kill trash and follow the path to Drahga Shadowburner. |goto 69.8,30.2 <5 |noway|c
step
goto 70.3,20.7
.' _Drahga Shadowburner_
.' Phase 1:
.' He will use _Invocation of Flame_ which will mark the ground at a random location. It will summon a fire elemental that targets a random player, shooting a red beam. _ALL DPS EXCEPT FOR THE TARGET_ need to kill it as soon as possible.
.' His basic attack is _Burning Shadowbolt_, which can be interrupted.
.' Phaste 2:
.' At 25% he will retreat and the dragon _Valiona_ will catch him. Tank her at the center of the room.
.' _Invocation of Flame_ will still be used, so be aware of the spawn point and target.
.' She will use _Devouring Flames_ which is a wide cone attack, so don't stand in front of her.
.' She will use _Valiona's Flame_ which targets a random player and breathes a 40 yard long cone which stuns and damages all players within the cone.
.' She swipes, so don't stand in front of her.
.' She places _Seeping Twilight_ on the ground, a large circular pool on the ground that deals out damage over time.
.' When her health is low she will drop Drahga Shadowburner.
.from Darhga Shadowburner##40319
..get Missive to Cho'gall |q 28853/1 |only if havequest(28853)
|confirm |only if not havequest(28853)
|only if not heroic_dung()
step
goto 70.3,20.7
.' _Drahga Shadowburner_
.' Phase 1:
.' He will use _Invocation of Flame_ which will mark the ground at a random location. It will summon a fire elemental that targets a random player, shooting a red beam. _ALL DPS EXCEPT FOR THE TARGET_ need to kill it as soon as possible.
.' His basic attack is _Burning Shadowbolt_, which can be interrupted.
.' Phaste 2:
.' At 25% he will retreat and the dragon _Valiona_ will catch him. Tank her at the center of the room.
.' _Invocation of Flame_ will still be used, so be aware of the spawn point and target.
.' She will use _Devouring Flames_ which is a wide cone attack, so don't stand in front of her.
.' She will use _Valiona's Flame_ which targets a random player and breathes a 40 yard long cone which stuns and damages all players within the cone.
.' She swipes, so don't stand in front of her.
.' She places _Seeping Twilight_ on the ground, a large circular pool on the ground that deals out damage over time.
.' When her health is low she will drop Drahga Shadowburner.
.from Darhga Shadowburner##40319
..get Missive to Cho'gall |q 28853/1 |only if havequest(28853)
|confirm |only if not havequest(28853)
|only if heroic_dung()
step
map Grim Batol
path follow strict;loop off
path	77.0,40.0	85.8,40.0	86.1,57.4
.' Follow the path to _Erudax, The Duke of Below_. |goto 86.1,57.4 <5 |noway|c
step
.' _Erudax, The Duke of Below_
.' The main mechanic for this fight is _Shadow Gale_, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
.' Each time he uses Shadow Gale, he will summon a _Faceless Corruptor_. Use every ability you have to slow them down and kill them. _ONLY SLOWING EFFECTS_ will work on them. If you don't kill them they will eventually heal the boss.
.' He will use _Enfeebling Blow_ which will knock the tank back, giving him a debuff called _Feeble Body_, increasing the damage the tank will take by 100% for 3 seconds.
.' He will use _Binding Shadows_ which is an AoE root that you can step out of before it hits the ground.
.from Erudax##40484 |only if not havequest(28854)
.kill Erudax |q 28854/1 |only if havequest(28854)
'|modelnpc 39392
'|goto 85.7,60.9
|only if not heroic_dung()
step
.' _Erudax, The Duke of Below_
.' The main mechanic for this fight is _Shadow Gale_, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
.' Each time he uses Shadow Gale, he will summon 2 _Faceless Corruptor_. Use every ability you have to slow them down and kill them. _ONLY SLOWING EFFECTS_ will work on them. If you don't kill them they will eventually heal the boss.
.' He will use _Enfeebling Blow_ which will knock the tank back, giving him a debuff called _Feeble Body_, increasing the damage the tank will take by 100% for 3 seconds.
.' He will use _Binding Shadows_ which is an AoE root that you can step out of before it hits the ground.
.' If you don't kill the adds fast enough, they will be buffed with _Shield of Nightmares_, which will damage your group each time the add is hit.
.from Erudax##40484 |only if not havequest(28854)
.kill Erudax |q 28854/1 |only if havequest(28854)
'|modelnpc 39392
'|goto 85.7,60.9
|only if heroic_dung()
step
.' You can either run to the beginning of the dungeon to turn in your quests.
.' Or
.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
goto Grim Batol,18.4,55.2
.talk 50385
..turnin 28853
step
goto 19,55
.talk 50390
..turnin 28852
step
goto 19.4,53
.talk 50387
..turnin 28854
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Zul'Aman (ZA) 85",[[
dungeon 781
description This guide will walk you through the Zul'Aman dungeon.
achieveid 691
step
label "lfg"
goto Zul'Aman,13.8,52.2
.talk 52925
..accept 29186
step
goto 14.2,53.2
.talk 52924
..accept 11196
step
goto 34.4,48.7
.' There will be a patrol walking at this point, wait for it to pass before moving to your left.
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	31.8,43.8	29.7,41.3	33.0,40.0
path	35.4,40.1	37.8,39.4	37.4,34.3
path	36.0,28.5
.' At this point, follow the path up the steps.
.' There will be mobs that come after you from behind as you go up the steps.
.' Kill _Amani'shi Wind Walkers_ first, interrupting _Chain Heal_ whenever they cast it.
.' Follow the path up to Akil'zon's Altar. |goto 36.0,28.5 |noway|c
'|modelnpc 24179
step
.' _Akil'zon_
.' For this encounter, you will want to spread out to avoid zapping party members with AoE attacks.
.' _Amani Kidnappers_ will swoop down, picking up a random party member.  You will have to kill the bird quickly.
.' He will cast _Electrical Storm_ on a random party member.  When this happens, all players will need to move underneath the party member who is affected.
.' _Electrical Storm_ deals out massive damage that increases over time, so move quickly.
.' He will also put the _Static Disruption_ debuff on a random target, dealing nature damage and increasing nature damage taken. It can be dispelled.
.from Akil'zon##23574
'|modelnpc 52638
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.3,61.7	31.0,63.4	30.8,66.6
path	34.5,66.4	33.9,70.4	34.1,75.8
path	37.5,76.5
.' The patrol will still be there you can avoid it or kill them.
.' Follow the path up, fighting trash as you go along.
.' Kill _Amani'shi Medicine Men_ first, followed by _Amani'shi Casters_.
.' If needed, you can also use crowd control on them when needed.
.' Note that at the last pull, you will not be able to crowd control at first.
|confirm
step
.' _Nalorakk_
.' Phase 1(Troll Phase):
.' He will deal massive damage to the tank with _Brutal Strike_.
.' He also uses an ability called _Surge_.  It's important to know that he charges the player furthest from him, leaving a debuff that increases damage taken by _500%!_
.' This means that you need to rotate who gets hit by it. _Ranged DPS and Healers_ should be the ones to do this. However if you don't have enough ranged, have everyone stack close to the boss, and have a melee step out when it's their turn.
.' _He will use Surge 3 times, so 3 people will need to take the hit!_
.' Phase 2(Bear Phase):
.' He will put a massive bleed dot on the tank called _Lacerating Slash_.
.' He will also use _Deafening Roar_, which silences the party for 2 seconds. It will be important to keep the tank topped off on health during phase 2.
.' He will go back and forth between phases.
.from Nalorakk##23576
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.3,76.8	33.9,90.6	37.5,91.4
path	43.3,89.5	48.0,90.0	49.6,86.2
path	52.2,84.2	55.9,84.2	59.8,83.6
path	58.5,77.6	55.4,76.8	55.4,72.6
.' Follow the path.
.' Use crowd control on _Amani'shi Flame Casters_ when applicable.
.' Keep an eye out for _Amani'shi Scouts_
|confirm
'|modelnpc 23586
'|modelnpc 23596
step
.' _Jan'alai_
.' For this fight, he will cast _Flame Breath_ towards a random player. Step out of the way when he does so, it deals massive fire damage.
.' He will also _Summon Amani'shi Hatchers_, which hatch _Amani Dragonhawk Hatchlings_. _ONLY KILL ONE_ of the Hatchers, and let the other destroy the eggs.
.' Use every AoE ability you have to kill the hatchlings as they come in waves.
.' He will also periodically use _Fire Bomb_, where he will teleport to the center of the room and throw fire orbs around randomly. _DO NOT STAND ON THE FIRE ORBS_.
.' DPS him down slowly until the Amani Dragonhawk Hatchlings are dead.
.from Jan'alai##23578
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	55.6,62.9	59.1,56.1	59.1,50.8
path	59.0,43.1	62.3,37.6	64.8,30.0
path	71.3,23.4	76.4,21.7
.' Follow the path. |goto 76.4,21.7 <5 |noway|c
.' If you have any sort of water walk, you can reach the end waypoint without fighting.
step
map Zul'Aman
path follow strict;loop off;ants straight
path	75.1,14.9	70.4,14.1	68.3,19.2
path	65.2,23.1
.' There will be packs of _Amani Lynx_ that are stealthed. Let your tank move ahead of the party.
.' At the last waypoint, use any crowd control you  have available, and pull the group to the bottom of the stairs.
.' Kill the trolls before the lynx.
|confirm
'|modelnpc 24043
step
.' _Halazzi_
.' He will drop a _Water Totem_, which heals and restores mana to anyone standing in it's radius. Move Halazzi out of it, and have ranged party members stand in it.
.' At 66% and 33% he will summon a _Spirit of the Lynx_ that has random threat no matter what. Halazzi's health will jump to 100% also.
.' Kill _Corrupted Lightning Totems_ as they are summoned. He only casts this while in troll form.
.' Dispel _Flame Shock_, a magic debuff if possible. He only casts this while in troll form.
.from Halazzi##23577
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	59.4,33.9	62.4,34.3	59.9,40.1
path	58.8,45.8	58.1,53.9	58.1,53.9
.' Follow the path up to Hex Lord Malacrass.
.' Use crowd control on _Amani'shi Medicine Men_.
.' When you fight _Amani'shi Berserkers_ let your tank get threat before you attack, they cannot be taunted.
|confirm
'|modelnpc 23581
'|modelnpc 24374
step
label "hex"
.' _Hex Lord Malacrass_
.' He will have two adds on both his sides. They can be crowd controlled and should be if possible.
.' If your group has no crowd control, then you will need to kill them before attack the boss, as they do a lot of damage.
.' _Hex Lord Malacrass_ will adopt the abilities from a random party member. Click below to see what he will do.
.' Death Knight: |next "dk" |confirm
.' Druid: |next "druid" |confirm
.' Hunter: |next "hunt" |confirm
.' Mage: |next "mage" |confirm
.' Paladin: |next "pally" |confirm
.' Priest: |next "priest" |confirm
.' Rogue: |next "rogue" |confirm
.' Shaman: |next "shaman" |confirm
.' Warlock: |next "lock" |confirm
.' Warrior: |next "war" |confirm
.from Hex Lord Malacrass##24239
.get The Hex Lord's Fetish |q 29186/1 |only if havequest(29186)
.' Click here to continue. |next "daa" |confirm
step
label "dk"
.' He will put _Death and Decay_ on the ground. Stay out of it.
.' Kill _Blood Worms_ if you see them.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "druid"
.' He will use _Lifebloom_ which should be dispelled.
.' He will also use _Thorns_ which should be removed from him.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "hunt"
.' He will use _Explosive Trap_ so avoid it.
.' He will use _Freezing Trap_, avoid it.
.' He will use _Snake Trap_. AoE down the snakes.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "mage"
.' He will root nearby players with _Frost Nova_.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "pally"
.' He will use _Consecration_, which is an AoE Ground Type attack. Move out of it.
.' He will cast _Holy Light_ which needs to be interrupted.
.' He will use _Avenging Wrath_ which can be Purged, Dispelled or you can use Spell Steal.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "priest"
.' He will use _Mind Control_.
.' He Will use _Heal_ which needs to be interrupted.
.' He will use _Fear_ so stay away if you can.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "rogue"
.' He will use _Blind_.
.' He will use _Would Poison_ on the tank which needs to be dispelled (Poison).
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "shaman"
.' He will use _Fire Nova_ so stay away from him if you can.
.' He will use _Healing Wave_ which needs to be interrupted.
.' He will use _Chain Lightning_ so spread out.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "lock"
.' He will cast _Rain of Fire_, simply move out of its radius.
.' He will cast _Unstable Affliction_, be sure not to dispel it.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "war"
.' He will use _Spell Reflect_, be sure not to cast big spells when he's got it up.
.' He will use _Whirlwind_, so don't be within melee range.
.' He will use _Mortal Strike_ on the tank.
.' Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "daa"
goto 73.8,53.2
.' Click the doors and fight the trolls that come out.
.' After you defeat the trolls, make your way to the steps. |goto 87.9,53.0 <5 |noway|c
step
label "final"
.goto
.' _Daakara_
.' This encounter has 3 phases:
.' Phase 1:
.' He will use _Whirlwind_ often. Melee should move away from him when he is casting it to avoid damage.
.' He will also also use _Grievous Throw_ which leaves a bleed on a target. If you heal the afflicted target it will go away.
.' Phase 2:
.' He will take on one of the forms of former bosses. Click to get a detailed explaination.
.' Click here if he takes the _Shape of the Eagle_.|next "eagle" |confirm
.' Click here if he takes the _Shape of the Bear_.|next "bear" |confirm
.' Click here if he takes the _Shape of the Dragonhawk_.|next "dragonhawk" |confirm
.' Click here if he takes the _Shape of the Lynx_.|next "lynx" |confirm
.from Daakara##23863 |only if not havequest(11196)
.kill Daakara |q 11196/1 |only if havequest(11196)
|next turnin
step
label "eagle"
.' He will use _Energy Storm_ which will hit players at random with _Zap_ dealing 12,000 nature damage.
.' Kill _Lightning Totems_ as he places them on the battle field.
.' He will cast _Summoned Cyclone_ which needs to be avoided at all cost.
.' Click here to go back to the boss. |next "final" |confirm
step
label "bear"
.'His main ability will be _Creeping Paralysis_
.' He will also use _Surge_, so you will all need to stack up on the boss, having 3 different ranged move out to take the surge.
.' Click here to go back to the boss. |next "final" |confirm
step
label "dragonhawk"
.' He will cast _Flame Whirl_ which increases damage from fire.
.' He will cast _Flame Breath_ at targets in front of him. Do not be in front of him.
.' He casts _Column of Fire_ which deals out a lot of damage.
.' Click here to go back to the boss. |next "final" |confirm
step
label "lynx"
.' He will use _Claw Rage_ on a random party member. The tank will need to _Taunt it IMMEDIATELY_.
.' He will also spawn a Lynx during the fight.
.' He will also randomly use _Lynx Rush_ dealling mass damage to the target.
.' Click here to go back to the boss. |next "final" |confirm
step
label "turnin"
goto 91.6,54.8
.talk 52925
..turnin 29186
step
goto 93.0,53.6
.talk 52924
..turnin 11196
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Cataclysm Dungeons\\Zul Gurub (ZG) 85",[[
dungeon 793
description This guide will walk you through the Zul Gurub dungeon.
achieveid 688
author support@zygorguides.com
step
label	"start"
goto Zul'Gurub 30.7,47.5
.talk 53151
..accept 29252
step
goto 30.6,47.3
.talk 53024
..accept 29241
step
goto 30.5,51.0
.talk 53043
..accept 29242
step
goto 33.4,46.7
.from Venomancer Mauri##52380
.clicknpc Zanzil's Cauldron of Toxic Torment##52529
.' Get the Toxic Torment Buff. |havebuff Interface\Icons\INV_Misc_Cauldron_Nature
step
goto 37.2,46.4
.' Fight your way through this path.
.from Venomtip Needler##52379+
.' If you need another nature buff, you can get one here.
|confirm
step
goto 43.9,51.0
.from Tiki Lord Mu'Loa##52340+
|confirm
step
goto 48.5,52.1
.' Fight your way to the next cauldron.
.clicknpc Zanzil's Cauldron of Toxic Torment##52529
.' Get the Toxic Torment Buff. |havebuff Interface\Icons\INV_Misc_Cauldron_Nature
step
.' Pull the Venomguard Destroyers near the cauldron and kill them.
.from Venomguard Destroyer##52311+
|confirm
step
goto 50.8,55.1
.' _High Priest Venoxis_
.' _Phase 1:_
.' He will cast, _Toxic Link_ which attaches 2 party members. Run 25 yards away from each other to break this.
.' _Whispers of Hethiss_ is a beam of poison that will damage a player while channeled. This needs to be _interrupted_.
.' During the fight he will use _Venomous Effusion_ which creates a maze of poison on the ground. Avoid the wall at all cost.
.' _Phase 2:_
Venoxis will _Transform_ into a snake god. A _poisonous cloud maze_ will appear on the ground, avoid walking in this.
.' He will continue to use _Venomous Effusion_.
.' His damage will be increased by 50% while in snake form.
.' He will cast a _Pool of Acrid Tears_ on the player furthest away from him which deals nature damage. Avoid if you can.
.' He will use a cone attack, _Breath of Hethiss_, so melee should attack from the back if possible.
.' _Phase 3:_
.' Players will be _chased by Poison Tendrils_, avoid these for 12 seconds. After this phase, Venoxis will take 100% more damage for 10 seconds. If  you do not kill him, phase 1 will repeat.
.from High Priest Venoxis##52155
|confirm
step
map Zul'Gurub
path loop off
path	49.4,54.3	49.0,58.1	52.9,57.8
path	55.8,61.8	56.9,72.3
.' Follow this path, once you get to this opening, watch out for the rocks.
.' Run up this path and kill the Berserker
.from Berserking Boulder Roller##52348
|confirm
step
goto 60.1,80.2
.' _Bloodlord Mandokir_
.' He will randomly use _Decapitate_ which will kill whoever he uses it on.
.' When the player is killed, a _Chained Spirit_ will revive you, giving you _Spirit's Vengeance_, granting 25% Health, Damage, Healing and decreasing damage taken by 10%. This effect stacks.
.' He will gain a _Level Up_ buff when he kills a player, increasing damage dealt by 20%, a stacking effect.
.' Mandokir will summon his raptor _Ohgan_. _Kill the Raptor_ everytime it spawns or it will kill a Chained Spirit.
.' There are only _8 spirits_, so kill Ohgan as fast as possible.
.' He will use _Devastating Slam_ often during the fight, a 45 degree cone attack that will likely kill you. It marks the ground as to where it strikes, so avoid it.
.' He will toss the _Bloodletting_ debuff on a random target, dealing 50% of their current health as shadow damage.
.from Bloodlord Mandokir##52151
|modelnpc Ohgan##52157
|confirm
step
goto 54.5,52.7
'Go back down the hill and clear the trash.
.from Witch Doctor Qu'in##52322
.from Chosen of Hethiss##52323+
|confirm
step
goto 59.5,46.1
.from Ritual Tiki Mask##52364+
|confirm
step
goto 59.3,46.4
.' If a party member has an Archaeology of 225 at least and wishes to fight the boss, click here. |confirm |next
.' If the party wishes to skip the Archaeology boss, click here. |next "end" |confirm
step
'The Edge of Madness event will summon 1 of 4 random bosses.
.' If Hazza'rah spawns click here. |next "hazza" |confirm
.' If Renataki spawns click here. |next "rena" |confirm
.' If Wushoolay spawns click here. |next "wush" |confirm
.' If Gri'lek spawns click here. |next "gri" |confirm
step
label hazza
'_Hazza'rah_
.' Hazza'rah will use _Nightmare_ and summon 4 adds. Each add will target a random party member and cast _Waking Nightmare_ stunning them. The player who is not stunned must kill the adds before they reach the targetted player.
.from Hazza'rah##52271
.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
|confirm |only if not havequest(29242) |next "end"
step
label rena
'_Renataki_
.' _Renataki_ will use _Deadly Poison_ throughout the fight. This effect stacks and can be cleansed.
.' He will periodically _Vanish_. When he does this make sure everybody in the party is at 100% health. He will _Ambush_ a random target that deals 90% of the players health.
.' He will also cast _Thousand Blades_. This whirlwind is dangerous and needs to be avoided.
.from Renataki##52269
.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
|confirm |only if not havequest(29242) |next "end"
step
label wush
'_Wushoolay_
.' Wushoolay will summon _Lightning Clouds_ periodically that should be avoided.
.' He will use _Forked Lightning_, so spread out.
.' Wushoolay will transform into a ball of lightning and charge at a random player. After he reaches them he begins to cast _Lightning Rod_. Everybody needs to run away from Wushoolay at this point, Lightning Rod does deadly amounts of damage and needs to be avoided
.from Wushoolay##52286
.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
|confirm |only if not havequest(29242) |next "end"
step
label gri
'_Gri'lek_
.' Gri'lek is a kiting encounter.
.' He will fixate on a random party member and gain the _Avatar_ buff, increasing his damage output by 500% and reducing his movement speed. If he fixates on you just run away until it is done.
.' He will cast _Entangling Roots_ on the player he is chasing, this can and needs to be dispelled.
.' He constantly summons _Rupture Lines_. Avoid the rumbling dirt.
.from Gri'lek##52258
.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
|confirm |only if not havequest(29242) |next "end"
step
label end
map Zul'Gurub
path loop off
path	56.6,50.6	56.7,43.2	58.3,31.1
path	55.1,27.6	47.6,27.2	47.5,18.9
.' Follow the path around, go down these stairs. |goto 47.5,18.5 <5 |noway |c
step
goto 47.8,20.9
.' _High Priestess Kilnara_
.' _Phase 1_
.' The tank should pull the Pride of Bethekk and keep aggro on Kilnara.
.' The DPS should focus on killing the 16 _Pride of Bethekk_, pulling 4 at a time. (You can kill more if you've got great dps)
.' She will cast _Tears of Blood_ on random party members. It deals massive damage and should be dispelled as soon as possible.
.' She will also cast _Lash of Anguish_ on a random target, which should be dispelled.
.' She will cast _Wave of Agony_ at a random player, attacking and knocking back anyone in front of her. Avoid it.
.' _Phase 2_
.' Once she reaches 50% health she will enter phase 2, vanishing. When she reappears, she will be in cat form.
.' She will deal out more damage. DPS her down as fast as possible.
.from High Priestess Kilnara##52059
|modelnpc Pride of Bethekk##52061+
|confirm
step
goto 47.6,23.6 |n
.' Go upstairs and leave the building. |goto 47.6,23.6 <5 |noway |c
step
map Zul'Gurub
path loop off
path	44.9,28.1	42.2,29.1	38.8,27.1
path	34.8,27.1
.' Follow this path up to the next boss. |goto 34.8,27.1 |noway |c
step
goto 31.4,24.8
.from Zanzil##52053
.' Zanzil will _Drain 3 Cauldrons_ separately during this fight. You will use the buff of each Cauldron for the proper _response to the boss_.
.' Use the Green Cauldron at [30.6,23.9] to get the buff. He will cast _Graveyard Gas_ and put poison all over the ground.
.' Use the Blue Cauldron at [31.6,27.3] to get the _Forstburn Formula_. He will resurrect a Berserker which you will have to kill.
.' Use the Red Cauldron at [33.0,24.3] to get the _Burning Blood_. The Tank will use this to aggro and kill all the Zombies that resurrect.
|confirm
step
map Zul'Gurub
path loop off
path	42.8,29.9	41.3,36.3	46.4,39.8
path	46.4,36.4	51.0,36.0
.' Follow the path and the stairs up. |goto 50.8,39.7 <5 |noway |c
step
goto 48.7,39.9
.' This fight has 2 phases
.' _Phase 1:_ Jin'do will cast an aura _Shadows of Hakkar_, which will do heavy damage to the group. Make sure to _stand in_ the _green bubbles_ while this aura is active.
.' Once his aura, _Shadows of Hakkar_ is over, move _out of_ the bubble.
.' _Phase 2:_ Jin'do will go away and there will be _3 chains_ protected by a barrier on the ground. The _tank_ will need to _grab a Gurubashi Spirit_ and get near the chains.
.' The Gurubashi Spirit will use _Body Slam_ on a player, if the player is near the chains, the _barrier will break_. Kill 3 chains by breaking the barrier and attacking them.
.from Jin'do the Godbreaker##52148 |only if not havequest(29252)
.kill Jin'do the Godbreaker##52148 |q 29241/1 |only if havequest(29241)
.get Zul'Gurub Stone |q 29252/1 |only if havequest(29252)
|confirm |only if not havequest(29252)
step
goto 30.7,47.5
.talk 53151
..turnin 29252
step
goto 30.6,47.3
.talk 53024
..turnin 29241
step
goto 30.5,50.9
.talk 53043
..turnin 29242
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Temple of the Jade Serpent 85-87",[[
dungeon 867
description This guide will walk you through the Siege of Niuzao Temple dungeon.
achieveid 6757
author support@zygorguides.com
step
goto Temple of the Jade Serpent/1 36.0,44.4
.talk 60578
..accept 31355
step
goto 36.0,44.4
.talk 64399
..accept 31356
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	36.3,34.9	31.4,26.6	37.4,15.9
'Follow this path to the first boss. |goto 37.4,15.9 <5 |noway |c
step
'_Wise Mari_
'_Phase 1_
.' Throughout this entire fight avoid standing in any water, it will hurt you every second.
.' For the first phase Wise Mari will be immune to damage. You can break his protective bubble by defeat the four _Corrupt Living Water_ that he summons with _Call Water_.
.' When these adds die they will spawn three _Corrupt Droplet_ and leave behind _Sha Residue_. Kite the adds to a new location out of the residue and kill them.
.' After four adds die, Wise Mari will burst his bubble and begin Phase 2.
'_Phase 2_
.' The only mechanic in this phase is _Wash Away_. Mari will spin in a circle and shoot out a water spout, move around him to avoid being hit.
.from Wise Mari##56448
.' Wise Mari assisted |q 31355/1 |only if havequest(31355)
|confirm |only if not havequest(31355)
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	37.4,15.9	31.4,26.6	36.3,34.9
path	31.4,57.6	27.7,62.8
'Follow the path back to The Scrollkeeper's Sanctum. |goto Temple of the Jade Serpent/2 |noway |c
step
map Temple of the Jade Serpent/2
path follow strict;loop off;ants straight
path	34.9,21.5	26.4,68.0	58.3,82.5
path	65.3,50.2	46.1,41.9
.' Kill all of the mini bosses along this platform as you follow the path. |goto Temple of the Jade Serpent/1 |noway |c
step
'When you are ready to face the boss kill the Corrupted Scroll.
.from Corrupted Scroll##57080
|confirm
step
'There are two possible encounters associated with this boss.
.' Click here for the _Trial of the Yaungol_ strategy. |next "yaungol" |confirm
.' Click here for the _Champion of the Five Suns_ strategy. |next "sun" |confirm
step
label "yaungol"
'_Trial of the Yaungol_
.' _Strife and Peril_ will spawn.
.' Your group will want to focus its attention on either Strife or Peril, splitting up damage is extremely bad in this fight.
.' When you attack one of the bosses they begin stacking a buff called _Intensity_. Keep your eye on this buff, the higher it gets the more damage it does to the group. Let this buff get to either eight or niene stacks and then switch all damage, including pets, to the other boss.
.' The boss that you are not focusing will begin to starve. _Dissipation_ reduces the _Insanity_ stacks.
.' While you are juggling the bosses they will cast _Agony_ on random party members. This does a decent amount of damage that must be healed.
.from Strife##59051
.from Peril##59726
.' Lorewalker Stonestep assisted |q 31355/3 |only if havequest(31355) |next "done"
|confirm |next "done" |only if not havequest(31355)
step
label "sun"
'_Champion of the Five Suns_
.' Five _Suns_ will spawn and being firing _Sunfire Rays_ at random players dealing damage.
.' You will be able to kill four of these Suns, and everytime you do a _Haunting Sha_ will spawn. You can either kill these one at a time or all together.
.' When all four _Haunting Sha_ are dead, _Zao Sunseeker_ will become possessed.
.' He will shoot _Hellfire Arrows_ at random party members, kill him before your healer becomes overwhelmed.
.from Zao Sunseeker##58826
.' Lorewalker Stonestep assisted |q 31355/3 |only if havequest(31355) |next "done"
|confirm |next "done" |only if not havequest(31355)
step
label done
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	38.6,80.7	53.5,85.4	46.5,64.9
'Follow this path to the next boss. |goto 46.5,64.9 <5 |c
step
'Kill all the enemies on the Terrace of the Twin Dragons to face Liu Flameheart.
|confirm
step
'_Liu Flameheart_ |modelnpc Liu Flameheart##56732
'_Phase 1_
.' _Serpent Strike_ will hit the tank for significant damage and leave a heavy DoT effect on them, dispel this DoT.
.' _Serpent Kick_ will be used immediately after _Serpent Strike_, this does damage to anybody within 8 yards of Liu.
.' _Serpent Wave_ wil follow _Serpent Kick_, this shoots waves of fire out from around Liu. Do not be hit by these.
'_Phase 2_
.' At _70%_ life, all of Liu's abilities gain an additional effect.
.' _Jade Serpent Strike_ now also absorbs 70,000 healing received by the target.
.' _Jade Serpent Kick_ now also knocks players within 8 yards back.
.' _Jade Serpent Wave_ now also leaves a trial of fire along the path the flame travels.
'_Phase 3_
.' At _30%_ life, _Yu'lon_ spawns.
.' Yu'lon will breathe balls of fire that create a pool of Jade Fire where they land. Step out of this pool to avoid taking damage.
.from Yu'lon##56762
.' Liu Flameheart assisted |q 31355/2 |only if havequest(31355)
|confirm |only if not havequest(31355)
step
goto 56.1,57.0
'Perpare to face the Sha of Doubt.
|confirm
step
'_Sha of Doubt_
.' The Sha of Doubt will cast _Wither Will_ at two random party members, dealing damage to both of them.
.' _Touch of Nothingness_ is a dispellable effect that will be put on a random player. This does damage to all surrounding players so spread out.
.' Periodically the Sha of Doubt will become invulnerable and summon as many adds are there are players. Stack these adds up and kill all of them, if you do not kill them before their energy bar is full, they will heal the boss 10% life and explode dealing significant damage for each add left alive.
.from Sha of Doubt##56439 |only if not havequest(31356)
.kill Sha of Doubt##56439 |q 31356/1 |only if havequest(31356)
|confirm |only if not havequest(31356)
step
goto 36.0,44.4
.talk 60578
..turnin 31355
step
goto 36.0,44.4
.talk 64399
..turnin 31356
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Stormstout Brewery 85-87",[[
dungeon 876
description This guide will walk you through the Siege of Niuzao Temple dungeon.
achieveid 6457
author support@zygorguides.com
step
goto Stormstout Brewery/1 76.9,35.4
.talk 59822
..accept 31324
step
goto 75.1,36.2
.talk 59704
..accept 31327
step
'As you follow the next path make sure you loot the Hozen you kill for Stormstout Secrets and click the tomes along the floor.
.from Sodden Hozen Brawler##59605+, Inflamed Hozen Brawler##56924+, Sleepy Hozen Brawler##56863+, Drunken Hozen Brawler##56862+
.click Stormstout Secrets
.get 5 Stormstout Secrets |q 31324/1
|confirm
|only if havequest(31324)
step
map Stormstout Brewery/1
path follow strict;loop off;ants straight
path	54.0,50.3	44.0,65.1	30.7,84.3
path	21.5,76.5	23.9,63.1
.' Clear the trash along this path. |goto 23.9,63.1 <5 |noway |c
step
goto Stormstout Brewery/2 53.4,50.1
'You will need to kill 40 Hozen to summon the first boss.
.' Click here once Ook-Ook has spawned |confirm
step
'_Ook-Ook_
.' Ook-Ook will _Ground Pound_ which is a frontal shockwave, do not stand in it.
.' At 90%, 60%, and 30% Ook-Ook will _Go Bananas_. This increases his attack speed and damage dealt each time. This buff stacks. He will also summon Rolling Barrels when he does this.
.' DPS should click on Rolling Barrels and ride them into Ook-Ook. This will increase his damage taken as well as do a lot of damage. This effect stacks
.from Ook-Ook##56637
|confirm
step
map Stormstout Brewery/3
path follow strict;loop off;ants straight
path	32.2,88.9	37.2,93.5	43.2,85.8
path	35.9,77.0	20.5,68.7	29.5,49.9
path	38.0,46.3
'This is a gauntlet event. Kill the virmen as you run through the path.
.' Boppers are the most important type of virmen. Upon death they drop a _Big Ol' Hammer_. When you pick this up you will gain a new button on your screen, _Smash!_. Click it to clear many virmen at a time.
.' Finish the gauntlet event. |goto 38.0,46.3 <5 |noway |c
|modelnpc Bopper##59426+
step
'_Hoptallus_
.' Hoptallus will constantly use _Furlwind_. this whirlwind will do large amounts of damage, so kite him around.
.' He will also summon virmen. These are the same types of adds that you cleared in the last path. Aim down the Boppers first and use their _Big Ol' Hammer_ to _Smash!_ all of the other adds.
.' _Carrot Breath_ will deal large damage to anybody standing within the cone, avoid this.
.from Hoptallus##56717
|confirm
step
map Stormstout Brewery/3
path follow strict;loop off;ants straight
path	39.7,38.9	43.3,26.7	58.9,29.7
path	75.3,56.5	89.9,44.2	73.6,34.2
'Kill the Alementals as you follow this path. |goto 73.6,34.2 <5 |noway |c
step
goto Stormstout Brewery/4 49.6,51.1
'Uncle Gao will summon 3 waves of Alementals before Yan-Zhu.
.from Yeasty Brew Alemental##66413+
.from Bloated Brew Alemental##59518+
.from Fizzy Brew Alemental##59520+
|confirm
step
'_Yan-Zhu the Uncasked_
.' Yan-Zhu will constantly through _Blackout Brew_, counter this by moving around until the debuff is off of you.
.' When Yan-Zhu casts _Carbonation_ click on the _Fizzy Bubbles_ around the room, this will grant you a buff that allows you to fly above the cloud.
.' _Bubble Shields_ will need to be killed very quickly, they reduce the amount of damage that the boss takes.
.kill Yan-Zhu the Uncasked##59479 |q 31327/1 |only if havequest(31327)
.from Yan-Zhu the Uncasked##59479 |only if not havequest(31327)
|confirm |only if not havequest(31327)
|tip Keep moving to remove the Blackout Brew, click Fizzy Bubbles to gain the ability to fly above Carbonation
step
goto Stormstout Brewery/4 39.0,56.0
.talk 59074
..turnin 31324
step
goto 41.1,55.2
.talk 64361
..turnin 31327
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Shado-Pan Monastery 87-90",[[
dungeon 877
description This guide will walk you through the Siege of Niuzao Temple dungeon.
achieveid 6469
author support@zygorguides.com
step
goto Shado-Pan Monastery/1 83.4,56.1
.talk 62236
..accept 30757
step
'Fight your way through this room |goto 60.2,43.8 <5 |c
step
'_Gu Cloudstrike_
'_Phase 1_
.' Gu will _Invoke Lightning_ and deal Nature damage to a random party member.
.' Gu's serpent will create a _Static Field_ under a random player. Move out of this and the effect that persists.
'_Phase 2_
.' Gu will become immune to damage so focus your attention on his Azure Serpent.
.' When the serpent casts _Magnetic Shroud_, stack up. This will absorb healing and then explode and heal for the amount it absorbed.
.' _Lightning Breath_ is a frontal cone, do not stand in front of the boss.
'_Phase 3_
.' Gu Cloudstrike will use _Overcharged Soul_ which deals damage to the entire party until he is defeated.
.from Gu Cloudstrike##56747
|confirm
step
'Follow the path to this point and defeat the Shado-Pan Disciples who attack you. |goto 23.6,83.6 <5 |c
step
'Follow this ramp up and be careful not to be hit by the freezing arrows. |goto 54.0,75.2 <5 |c
step
'Cross the bridge and enter Snowdrift Dojo |goto Shado-Pan Monastery/2 |c
step
goto Shado-Pan Monastery/2 60.5,64.8
.' Fight off the waves of Shado-Pan Novices and finally defeat Fragrant Lotus and Flying Snow.
.from Fragrant Lotus##56472, Flying Snow##56473
|confirm
step
'Prepare to fight Master Snowdrift. |goto 36.6,39.2 <5 |c
step
'_Master Snowdrift_
.' _Fists of Fury_ is a frontal attack that does massive damage, the tank needs to back out of this.
.' _Tornado Kick_ is a strong whirlwind attack that should be avoided.
.' Master Snowdrift will teleport around the room and make two clones of himself. You can tell the boss from his clones by looking at the debuffs on the boss. Step behind him and avoid the projectiles being cast around the room.
.' While Master Snowdrift is in _Parry Stance_ refrain from hitting him, or find a way to hit him from behind. He will retaliate to any attack that is made.
.from Master Snowdrift##56541
|confirm
step
goto 30.3,35.4
.talk 56541
..accept 31342
step
'Go outside and cross this bridge. |goto Shado-Pan Monastery/0 24.9,41.3 <5 |c
step
'Enter the Sealed Chambers |goto Shado-Pan Monastery/3 |c
step
'_Sha of Violence_
.' The Sha of Violence will use _Disorientating Smash_ on its target, this will deal a large amount of damage and cause the target to be blinded for four seconds.
.' _Smoke Blades_ is a whirlwind attack that will leave a debuff on anybody it hits that reduces critical strike chance to 0. If you attack with this debuff it will clear it faster. After the debuff is gone you will gain _Parting Smoke_ for three seconds, this causes your next hit to critically strike for 100% more damage than it normally would.
.' _Sha Spike_ will be cast at a random player knocking them up.
.' When the Sha of Violence is weak, it will _Enrage_ gaining 50% attack speed.
.from Sha of Violence##56719 |only if not havequest(31342)
.kill Sha of Violence##56719 |q 31342/1 |only if havequest(31342)
|confirm |only if not havequest(31342)
step
'The following trash can be very tough to beat.
.' You will have to release the spirits of the dead Pandaren before killing any of the hostile adds. If you kill the adds they will simply respawn.
|confirm
step
'Follow the path to the final boss. |goto Shado-Pan Monastery/0 69.9,49.5 <5 |c
step
'_Taran Zhu_
.' The biggest mechanic in this fight is Hatred meter. If this reaches 100% you will receive the debuff _Haze of Hate_ this reduces your accuracy by 90%.
.' To counteract the Hatred Meter you will have a new _Meditate_ button above your action bars. Click this button to prevent being consumed by hatred.
.' Tanks should tank Tarn Zhu up against one of the pillars in his arena. Taran Zhu will knock the tank back and cause this fight to be more hectic than it needs to be.
.' _Ring of Malice_ is a ring of shadows that Taran Zhu will use around himself. Either be very far away or nearby to avoid this.
.' He will periodically _Summon Gripping Hatred_. This shadow balls will grab players and pull them into _Pools of Shadows_. Kill these if you can.
.from Taran Zhu##56884
.' Rid Taran Zhu of his possession. |q 30757 |only if havequest(30757)
|confirm |only if not havequest(30757)
step
goto 69.3,49.7
.talk 56884
..turnin 30757
|only if havequest(30757)
step
goto 68.4,50.1
.talk 64387
..turnin 31342
|only if havequest(31342)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Mogu'shan Palace (MSP) 87-90",[[
dungeon 885
description This guide will walk you through the Mogu'shan Palace dungeon.
achieveid 6755
author support@zygorguides.com
step
goto Mogu'shan Palace/1 30.3,19.2
.talk 64432
..accept 31357
..accept 31360
step
map Mogu'shan Palace/1
path follow strict;loop off;ants straight
path	40.2,26.1	40.3,57.6
'Clear the trash and follow this path to the boss. |goto 40.3,57.6 <5 |noway |c
step
'_Trial of the King_
.' The Trial of the King consists of three minibosses.
.' Click here for Kuai the Brute's strategy. |next "kuai" |confirm
.' Click here for Ming the Cunning's strategy. |next "ming" |confirm
.' Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
step
label kuai
'_Kuai the Brute_
.' Kuai's pet _Mu'Shiba_ is the main threat of this fight, kill it first. _Mu'Shiba_ will use _Ravage_, stunning and damage over 10 seconds.
.' Kuai will cast _Shockwave_ knocking players into the air. They will take some falling damage so make sure everybody is healed up.
.from Kuai the Brute##61442
.' Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
.' Click here for Ming the Cunning's strategy. |next "ming" |confirm
.' Click here to move on with the dungeon. |next "end" |confirm
step
label haiyan
'_Haiyan the Unstoppable_
.' _Conflagrate_ will dissorient and deal fire damage to whomever it is cast on. Make sure the group steps away from that person to avoid the fire from spreading.
.' Haiyan will cast _Meteor_ on a random player and put a red arrow over their head. Stack on that person to disperse the damage that comes with Meteor.
.' He will also use _Traumatic Blow_ on the tank, lowering his healing received.
.from Haiyan the Unstoppable##61445
.' Click here for Kuai the Brute's strategy. |next "kuai" |confirm
.' Click here for Ming the Cunning's strategy. |next "ming" |confirm
.' Click here to move on with the dungeon. |next "end" |confirm
step
label ming
'_Ming the Cunning_
.' Ming summons a _Whirling Dervish_ that will knock any player it hits back.
.' He will also use _Magnetic Field_. When he casts this run away from him until it is done, it will pull you back into it so keep running.
.from Ming the Cunning##61444
.' Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
.' Click here for Kuai the Brute's strategy. |next "kuai" |confirm
.' Click here to move on with the dungeon. |next "end" |confirm
step
label end
'Loot the chest and follow these stairs down. |goto 48.8,74.9 <5 |c
step
'Make your way here. |goto Mogu'shan Palace/2 28.6,32.6 <5 |c
step
'Clear trash to this point. |goto 30.9,75.7 <5 |c
step
goto 37.4,64.5
.click Ancient Mogu Chest
.get Lantern of the Sorcerer King |q 31357/1
|only if havequest(31357)
step
goto 43.0,60.1
.click Ancient Mogu Chest
.get Mad King Meng's Balance |q 31357/2
|only if havequest(31357)
step
goto 60.2,82.6
.click Ancient Mogu Chest
.get Subetai's Bow of the Swift |q 31357/4
|only if havequest(31357)
step
goto 38.7,88.7
.click Ancient Mogu Chest
.get Qiang's "The Science of War" |q 31357/3
|only if havequest(31357)
step
goto 44.9,75.8
'_Gekkan_
.' Gekkan has 4 adds with him. The Protector will shield all of the other adds so he must die first. The Oracle is the healer so he needs to be interrupted and killed second.
.' Crowd Control is suggested in this fight but don't count on it. Gekkan will use _Reckless Inspiration_ on a random add. This makes them immune to crowd control and increases their attack speed for a period of time.
.from Gekkan##61243
|confirm
step
goto 71.5,76.1
'Ride the elevator up |goto Mogu'shan Palace/3 |noway |c
step
map Mogu'shan Palace/3
path follow strict;loop off;ants straight
path	45.0,24.3	40.4,36.1	40.3,75.2
'Clear the trash and make your way to the final boss. |goto 40.3,75.2 <5 |c
step
'_Xin the Weaponmaster_
.' Xin wil use _Ground Slam_ on the tank's position. Avoid this.
.' He will periodically animate a staff. This staff uses _Circle of Flame_ so make sure you are not in the circle when the staff finishes.
.' _Whirlwinding Axes_ will be summoned almost immediately. Avoid standing in their spin.
.' _Blade Trap_ will activate at 66% health. This is a linear stream of swords. Avoid them.
.' At 33% Xin will activate _Death from Above!_. This will cause crossbows to fire from his walls, this damage is unavoidable.
.from Xin the Weaponmaster##61398 |only if not havequest(31360)
.kill Xin the Weaponmaster##61398 |q 31360/1 |only if havequest(31360)
|confirm |only if not havequest(31360)
step
goto 38.7,81.5
.talk 64432
..turnin 31357
..turnin 31360
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Scholomance 90",[[
dungeon 898
dungeondifficulty Heroic
description This guide will walk you through the Scholomance dungeon.
achieveid 6762
author support@zygorguides.com
step
goto Scholomance/1 27.0,58.8
.talk 64563
..accept 31442
..accept 31448
step
'Go through the gate and down these steps |goto 48.6,43.2 <5 |c
step
'Clear this room of trash and be careful not to aggro Instructor Chillheart.
|confirm
step
'_Instructor Chillheart_
'_Phase 1_
.' _Wrack Soul_ will deal damage to a party member and jump to a nearby party member when it expires. Spread out.
.' _Touch of the Grave_ causes Chillheart's next 10 basic attacks to deal additional damage.
.' _Frigid Grasp_ will summon ice at a player's feet, step out of this before it explodes.
.' _Ice Wall_ will start at the back of the room and slowly creep toward the boss. If this touches any player then they will die instantly. This will act as the enrage timer of the fight.
.' Kill Chillheart's physical body and Phase 2 will start.
.from Instructor Chillheart##58633
'_Phase 2_
.' _The Anarchist Arcanist_ will float around creating _Arcane Bombs_. These explode on impact so avoid them.
.' _Antonidas' Self Help Guide to Standing in Fire_ will cast _Burn_. This does a small AoE of fire damage around the book.
.' _Wander's Colossal Book of Shadow Puppets_ will cast _Shadow Bolt_ at the party.
.from Instructor Chillheart's Phylactery##58664
|confirm
step
goto Scholomance/1 74.7,57.5
.click In the Shadow of the Light
.' Destroy In the Shadow of the Light |q 31442/1
|only if havequest(31442)
step
map Scholomance/1
path follow strict;loop off;ants straight
path	79.3,52.0	80.6,23.8
'Follow the path downstairs. |goto Scholomance/2 77.0,26.5 <5 |c
step
goto Scholomance/2 73.9,8.6
.click Kel'Thuzad's Deep Knowledge
.' Destroy Kel'Thuzad's Deep Knowledge |q 31442/2
|only if havequest(31442)
step
'Clear all of the trash in this room before fighting Jandice Barov.
|confirm
step
goto 59.9,18.5
'_Jandice Barov_
.' _Wondrous Rapidity_ is a large cone attack in front of Jandice, make sure nobody is in front of her.
.' _Gravity Flux_ will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily.
.' At _66%_ and _33%_ Jandice will cast _Phantasmal Images_. She will clone herself throughout the room, destroy the clones until she returns to battle.
.' While the clones are alice they will cast _Whirl of Illusion_, this does AoE damage to everybody in the group every second.
.from Jandice Barov##59184
|confirm
step
'Enter the Chamber of Summoning |goto 56.4,26.8 <5 |c
step
Go around the perimeter of this room and kill the Boneweavers. When all of them are dead, the boss wil initiate you.
.from Boneweaver##59193
|confirm
step
'_Rattlegore_
.' With each successful attack Rattlegore will gain a stack of _Rusting_. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room.
.' _Bone Spike_ will target a random party member and do massive damage to them. This can be prevented if every party member keeps _Bone Armor_ active.
.' _Bone Armor_ is granted by clicking on the _Bone Piles_ around the room.
.' Periodically a section of the room will be engulfed in _Soulflame_. Avoid the fire and be wary because it grows over time.
.from Rattlegore##59153
|confirm
step
'Enter the Chamber of Summoning |goto 40.3,26.6 <5 |c
step
goto 42.0,46.8
'When fighting the Flesh Horrors, aim for the Meat Grafts attached to their bodies. If all of the Grafts die then the Horrors will die with them.
.from Flesh Horror##59359+, Meat Graft##59982+
|confirm
step
goto 42.5,51.6
.click Forbidden Rites and other Rituals Necromantic
.' Destroy Forbidden Rites and other Rituals Necromantic |q 31442/3
|only if havequest(31442)
step
'Go down the steps and prepare to fight Lilian Voss. |goto 47.0,47.2 <5 |c
step
'_Lilian Voss_
'_Phase 1_
.' Lilian will _Shadow Shiv_ a random player after jumping onto them. When she latches onto you, run away from your allies to avoid AoE damage.
.' _Death's Grasp_ will pull every party member to Lilian and will be followed by _Dark Blaze_. _Dark Blaze_ causes every player to start leaving a trail of fire behind them, run to the outside of the room to trail your fire, this way the center is still open.
.' At _60%_ Phase 2 begins.
'_Phase 2_
.' Lilian's Soul will begin to attack you. She will periodically cast _Blazing Soul_ which does fire damage to all players.
.' For every melee attack Lilian lands she will unleash another _Blazing Soul_. You must kite her aroud.
.' _Fixate Anger_ will determine who is in charge of kiting. If she Fixates on your do not stop running.
.from Lilian's Soul##58791
'_Phase 3_
.' Phase 3 is a combination of Phases 1 and 2.
.' Be watchful of who Lilian's Soul is _Fixating_ on, this is the highest source of damage during the fight.
.' You will continued to get pulled in by _Death's Grasp_, be extra careful not to put a path of _Dark Blaze_ in somebodies way if they need to kite the Soul.
.from Lilian Voss##58722
|confirm
step
goto Scholomance/2 47.1,73.1
.click The Dark Grimoire
.' Destroy The Dark Grimoire |q 31442/4
|only if havequest(31442)
step
goto 47.8,84.8 |n
'Go through this doorway and follow the stairs down. |goto Scholomance/3 |c
step
'_Darkmaster Gandling_
.' _Immolate_ will be used on a random party member, heal through this DoT.
.' Darkmaster Gandling will cast _Rise!_. This summons many _Failed Students_ that need to be killed. During this cast Darkmaster Gandling takes reduced damage.
.' Periodically a random party member will be teleported to one of Gandling's study rooms for a _Harsh Lesson_.
.' This party member must kill the _Expired Test Subjects_ and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the _Fresh Test Subjects_ around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage to the Expired Test Subjects.
.kill Darkmaster Gandling##59080 |q 31448/1 |only if havequest(31448)
.from Darkmaster Gandling##59080 |only if not havequest(31448)
|confirm |only if not havequest(31448)
step
'Go back up the stairs. |goto Scholomance/4 49.1,21.5 <5 |c
step
goto Scholomance/3 49.2,21.2
.talk 64563
..turnin 31442
..turnin 31448
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Scarlet Halls 90",[[
dungeon 871
dungeondifficulty Heroic
description This guide will walk you through the Scarlet Monastery dungeon.
achieveid 6760
author support@zygorguides.com
step
goto Scarlet Halls/1 31.9,84.4
.talk 64764
..accept 31495
..accept 31497
step
.from Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
.' Kill 50 Scarlet Crusaders. |q 31495/1
step
'Prepare to cross the training ground. |goto 48.2,78.8 <5 |c
step
'In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
.from Commander Lindon##59191
|confirm
step
' Go through the tunnel |goto 49.8,36.9 <5 |c
step
'_Houndmaster Braun_
.' Houndmaster Braun will use _Piercing Throw_. This will target a player and deal damage to every player in between Braun and his target.
.' _Death Blossom_ is an AoE whirlwind, spread out to reduce its effectiveness.
.' Both of these abilities will cause _Bloody Mess_. This is DoT can stack and become deadly.
.' At _90%, 80%, 70%, and 60%_ Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
.' If the hounds remain alive at _50%_ Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a _Bloody Rage_, gaining _25% increased damage_ and _50% increased attack speed_.
.from Houndmaster Braun##59303
|confirm
step
goto 55.3,21.1 |n
'Allow the remaining dogs to kill the door guards and procede to the Athenaeum. |goto Scarlet Halls/2 |noway |c
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	47.6,88.3	56.8,79.4	61.7,69.5
path	61.7,55.5
'While following this path keep an eye out for Scarlet Cannoneers. They will spawn randomly and attack using the cannons along this path.
|goto 61.7,55.5 <5 |noway |c
|modelnpc Scarlet Cannoneer##59293
step
'_Armsmaster Harlan_
.' _Dragon's Reach_ is a cleave ability, avoid being in front of this boss.
.' Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's _Blades of Light_ ability.
.' He will use _Heroic Leap_ to the center of the pit and begin casting _Blades of Light_. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
.from Armsmaster Harlan##58632
|confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	48.6,58.1	48.7,50.5	39.1,46.8
path	39.1,23.2
.' Follow the path to the final boss.
step
'_Flameweave Koegler_
.' Koegler will try to light the book cases around the room on fire with _Book Burner_. You can avoid this mechanic by staying on the red carpet circle inside this room.
.' He will move to the center of the room and begin using _Greater Dragon's Breath_. Watch where he is facing and move around the room clockwise to avoid being hit.
.' _Quickened Mind_ will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
.from Flameweaver Koegler##59150
.get Codex of the Crusade |q 31497/1 |only if havequest(31497)
|confirm |only if not havequest(31497)
step
goto 39.3,17.0
.talk 64764
..turnin 31495
..turnin 31497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Scarlet Monastery (SM) 90",[[
dungeon 874
dungeondifficulty Heroic
description This guide will walk you through the Scarlet Monastery dungeon.
achieveid 6761
author support@zygorguides.com
step
goto Scarlet Monastery/1 72.7,47.0
.talk 64838
..accept 31515
step
goto 30.8,46.2
.' Clear the trash up to this point. The Piles of Corpses should be killed first or you will be fighting zombies much longer than is necessary.
|confirm
step
'_Thalnos the Soulrender_
.' Thalnos will _Raise Fallen Crusaders_. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind _Mind Rot_ which is a DoT that can stack.
.' He also summons _Spirit Gales_ often. These are puddles on the ground that should not be stepped in. This ability is interruptable.
.' _Evict Soul_ is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible.
.' He will also use _Summon Empowering Spirit_. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an _Empowered Zombie_.
.' _Empowered Zombies_ are large zombies which need to be tanked. They cannot be killed without great focus.
.from Thalnos the Soulrender##59789
|confirm
step
goto 20.6,45.9
.click Blade of the Anointed
.get Blade of the Anointed##87389 |q 31515
step
map Scarlet Monastery/1
path follow strict;loop off;ants straight
path	34.5,52.5	34.8,78.2	39.4,81.7
path	48.5,90.3
.' Follow the path. |goto Scarlet Monastery/2 |noway |c
step
goto Scarlet Monastery/2 49.1,24.5
.talk 64855
..turnin 31515
..accept 31516
step
map Scarlet Monastery/2
path follow strict;loop off;ants straight
path	45.7,31.9	43.9,36.3	49.2,43.3
'_Brother Korloff_
.' Brother Korloff loves to play with fire.
.' _Flying Kick_ will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
.' _Blazing Fists_ is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
.' _Firestorm Kick_ is whirlwind of flame, do not stand in it.
.' _Scorched Earth_ is a fire trail that Korloff leaves behind him, do not stand in it.
.' Every 10%, Korloff wil gain a stack of _Rising Flame_. These increase his fire damage done by 10% per stack.
.from Brother Korloff##59223
|tip The boss will patrol between two groups. Pull each group carefully, keeping in mind the boss' patrol.
|confirm
step
'Enter the cathedral here |goto 49.1,57.1 <5 |c
step
'Before encountering the boss, make sure you kill the trash within the cathedral. This includes the main room and both wings.
|confirm
step
'_Phase 1_
.' Commander Durand will fight you alone.
.' He uses _Flash of Steel_ and _Dashing Strike_. Both of these abilities cause him to jump to party members quickly, but neither do much damage as long as the group is spread out.
.' When Durand dies, phase 2 begins.
'_Phase 2_
.' High Inquisitor Whitemane will come and and begin to fight.
.' She will cast _Power Word: Shield, Smite and Heal_. Make sure to interrupt Smite and Heal.
.' Whitemane will also try casting _Mass Resurrection_. _DO NOT LET THIS CAST FINISH!!_ If this cast finishes, all corpses within 100 yards will resurrect and aggro.
.' After you weaken her she will cast _Deep Sleep_. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand.
'_Phase 3_
.' Now you will have to fight the two together.
.' Kill Whitemane first, make sure to interrupt _Smite and Heal_
.' Stay spread out for Durand.
.from Commander Durand##60040
.from High Inquisitor Whitemane##3977
.' Use the Blades of the Anointed on High Inquisitor Whitemane's corpse. |use Blades of the Anointed##87390 |only if havequest(31516)
.' Blades of the Anointed thrust into Whitemane's corpse. |only if havequest(31516)
|confirm |only if not havequest(31516)
step
.talk 64842
..turnin 31516
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Siege of Niuzao Temple (NT) 90",[[
dungeon 887
description This guide will walk you through the Siege of Niuzao Temple dungeon.
achieveid 6763
author support@zygorguides.com
step
goto Siege of Niuzao Temple/2 63.1,77.7
.talk 64517
..accept 31365
..accept 31366
step
goto 60.5,54.4
.' Jump over the ledge here.
|confirm
step
'_Vizier Jin'bak_
.' In the middle of this room is a puddle of resin. The tank should periodically walk through this puddle to shrink it.
.' Vizier Jin'bak will summon three adds, kill them before they reach the resin puddle.
.' Shortly after summoning adds, he will cast _Detonate_, this does damage to the entire group. The smaller the puddle is, the less damage the group will take.
.from Vizier Jin'bak##61567
|confirm
step
map Siege of Niuzao Temple/2
path follow strict;loop off;ants straight
path	37.4,65.4	53.4,81.8	31.6,38.4
path	21.7,53.9
'Clear the trash and follow this path. |goto Siege of Niuzao Temple/3 |noway |c
step
map Siege of Niuzao Temple/2
path follow strict;loop off;ants straight
path	67.1,55.6	52.3,23.3
'Clear the trash and follow this path. |goto Siege of Niuzao Temple/1 |noway |c
step
goto Siege of Niuzao Temple/1 44.5,74.3
.talk 61620
.' We're ready to defend!
|confirm
step
'Before you fight Commander Vo'jak you must fight the wave of adds that he sends your way.
.' Stay on the top ledge and throw Mantid Tar Kegs down onto the path as the adds run up. This will deal heavy damage and increase their damage taken.
.' Have the ranged DPS in your party prioritizing the Sik'thik Amberwings. They will fly at the wall and _Bombard_ the party. If you do not kill them then they will fly away and continue to be a hassle later.
.' Defeat Commander Vo'jak's army and click here. |confirm
step
'_Commander Vo'jak_
.' While you fight Commander Vo'jak have a ranged dps continue to throw and Mantid Tar Kegs on the boss. Be careful not to hit the tank.
.' The boss will counter this by using _Thousand Blades_, clearing his debuffs. Have the tank kite him into the puddles to reapply the debuff.
.' While the boss is using _Thousand Blades_ run away! This whirlwind will deal massive, potentially fatal, damage.
.from Commander Vo'jak##61634
|confirm
step
'While following this next path make sure you are freeing the captive Shado-Pan.
.clicknpc Shado-Pan Prisoner##64520+
.' Free 12 Shado-Pan Prisoners |q 31365/1
|confirm
|only if havequest(31365)
step
map Siege of Niuzao Temple/1
path follow strict;loop off;ants straight
path	37.8,76.5	35.4,59.8	39.1,42.7
path	46.3,43.2
.' Follow the ramp and then follow this path. |goto 46.3,43.2 <5 |noway |c
step
'The next boss patrols this area, be careful to pull the trash groups without also gaining his attention.
|confirm
step
'_General Pa'valak_
.' General Pa'valak's two main abilities are _Blade Rush_ and _Tempest_. Tempest negates healing but is nothing too significant. When he begins casting _Blade Rush_ he will mark a spot on the ground with a circle, move out of it. He throws his weapon and then charges to it.
.' He will also cast _Bulwark_. This shield will absorb one million damage while adds run in to reinforce the boss. Kill the shield and AoE down the adds.
.' _Siege Explosives_ will spawn around the area. To make this fight go quicker use these explosives on the boss to increase his damage taken. It is also suggested you save a bomb for each wave of adds.
.from General Pa'valak##61485
|confirm
step
'Make sure you have freed 12 Shado-Pan Prisoners before you move on to the last boss.
.clicknpc Shado-Pan Prisoner##64520+
.' Free 12 Shado-Pan Prisoners |q 31365/1
|confirm
|only if havequest(31365)
step
goto 50.1,33.0
.' This event can be a little hectic. The aggro range on most of the enemies can cause the group to pull an uncomfortable amount, be careful to aggro only what your group is capable of clearing in a single pull.
.' Make your way to the other side of the bridge
|confirm
step
'_Wing Leader Ner'onok_
.' Wing Leader Ner'onok will use a variety of Resins designed to hinder movement.
.' When he casts _Quick Dry Resin_ start jumping. This removes the effect.
.' He will constantly throw down pools of _Caustic Pitch_. These damage and slow you if you run through them.
.' Periodically throughout the fight Wing Leader Ner'onok will fly to the opposite end of the bridge and begin casting _Gusting Winds_. Navigate to the other side of the bridge by having your back against the pod-like structures that are all along the bridge, they allow you to move forward without being pushed back.
.' When you make it to the other end of the bridge interrupt _Gusting Winds_. A ranged interrupt comes in great handy here.
.kill Wing Leader Ner'onok##62205 |q 31366/1 |only if havequest(31366)
.from Wing Leader Ner'onok##62205 |only if not havequest(31366)
|confirm |only if not havequest(31366)
step
goto Siege of Niuzao Temple/1 58.1,23.1
.talk 64517
..turnin 31365
..turnin 31366
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Dungeons\\Gate of the Setting Sun 90",[[
dungeon 875
description This guide will walk you through the Siege of Niuzao Temple dungeon.
achieveid 6759
author support@zygorguides.com
step
goto Gate of the Setting Sun/1 60.9,88.6
.talk 64467
..accept 31363
..accept 31364
step
.' While clearing trash avoid the Volatile Munitions that drop, they deal out massive fire damage around them. |goto 49.4,87.9 <5 |c
step
'_Saboteur Kip'tilak_
.' This fight is all about the positioning of the group and the boss.
.' Saboteur Kip'tilak will throw munitions around the room at random. These will not explode unless touched by another player.
.' At _60%_ and _30%_, he will use _World in Flames_. He will throw 5 munitions are the room at random and then explode them all at the same time.
.' He will pick a player at random and _Sabotage_ them. After 4 seconds the bombs attached to that player will explode in all 4 directions, similarly to the other bombs.
.from Saboteur Kip'tilak##56906
|confirm
step
map Gate of the Setting Sun/1
path follow strict;loop off;ants straight
path	46.2,75.4	41.4,71.4	41.4,64.4
path	41.5,53.5	46.3,33.3
.' Click the lever once the group is on the elevator. |goto Gate of the Setting Sun/2 |noway |c
step
'_Striker Ga'dok_
.' _Prey Time_ will target a random party member and deal damage to them over 5 seconds.
.' _Impaling Strike_ will be an attack used primarily on the tank. It will deal half of their current life in damage.
.' _Mantid Disruptors_ will throw Acid Bombs at the platform, avoid them.
.' At both _70%_ and _30%_ Ga'dok will use _Strafing Run_. This ability will cause him to light the platform on fire. You can avoid the fire by standing on the sides to the left or right of wherever the boss starts his run.
.' The _Strafing Runs_ will also summon _Mantid Strikers_. These adds need to be picked up by the tank.
.from Striker Ga'dok##56589 |tip Watch where he flies during _Strafing Run_. Do not be on that side.
|confirm
step
goto Gate of the Setting Sun/2 33.4,56.9
.' Click the Flak Cannon and kill all of the mantid before going back down the elevator.
.click Flak Cannon
|confirm
step
goto 51.4,51.3 |n
'Click the lever to go back down. |goto Gate of the Setting Sun/1 |noway |c
step
goto 47.9,12.7
.' Click the Signal Flame |tip This will summon the next boss.
.' Light the Signal Flame. |q 31363/1 |only if havequest(31363)
|confirm |only if not havequest(31363)
step
goto 46.2,22.5
.' Kill the trash before engage Commander Ri'mok.
|confirm
step
'_Commander Ri'mok_
.' Commander Ri'mok's fight can get a little hectic because there is a lot going on.
.' He will summon _Mantid Swarmers_ continuously. AoE them down.
.' A _Mantid Saboteur_ will be summoned every 45 seconds. Depending on your group you may want to kill these as they spawn. Normally the tank should hold onto these adds until the boss is dead.
.' _Frenzied Assault_ will deal massive damage in a cone in front of the boss. Do not stand in front of him while he uses this.
.' _Viscous Fluid_ is a green slime pool that Ri'mok will throw on the ground. Players lose 10% damage dealt per second in this green slime while the boss gets 10% damage per second.
.from Commander Ri'mok##56636
|confirm
step
goto 46.1,43.5
'Jump down into the broken building and follow the path down. |goto 49.3,45.1 <5 |noway |c
step
'Exit the building and prepare to fight Raidgonn. |goto 52.7,50.6 <5 |c
step
'_Raigonn_
'_Phase 1_
.' Raigonn will be mostly invulnerable until his _Weak Spot_ is killed.
.' Melee can gain access to his Weak Spot by using the Artillery that are around the room.
.' While the DPS are attacking the Weak Spot, the Tank should be on the ground floor picking up adds.
.' _Krik'thik Protectorate_ will increase the attack speed of all other Protectorate in the area by 50% when one of them drops below 20% health.
.' _Krik'thik Engulfers_ should be kill by ranged DPS. They summon _Englufing Winds_ which are tornados that can be a hassle to deal with.
.' _Krik'thik Swarm Bringers will be summoned every so often. They will cast _Screeching Swarm_. This ability will absorb healing while dealing damage.
.' After the Weak Spot is destroyed, the fight enters Phase 2.
'_Phase 2_
.' He will take 300% increased damage during this phase.
.' _Stomp_ will deal damage to everybody near the boss. It will also increase his damage dealt by 25% every time he uses it.
.' _Fixate_ will cause Raigonn to drop aggro and lock his attention onto a random party member. Their movement speed will be increased by 75% while he is fixating them.
.from Raigonn##56877
'|modelnpc Artillery##59819
step
goto Gate of the Setting Sun/1 60.9,88.6
.talk 64467
..turnin 31363
..turnin 31364
]])
ZygorGuidesViewer:RegisterGuideSorting({
"Classic Dungeons",
"Outland Dungeons",
"Northrend Dungeons",
"Cataclysm Dungeons"})
