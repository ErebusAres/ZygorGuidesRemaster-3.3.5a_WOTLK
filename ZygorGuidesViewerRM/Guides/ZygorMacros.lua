local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("Macros") then return end

-- Have a sample
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Inner Will / Inner Fire",[[
-- 		description Casts Inner Fire when no modifier is pressed, Inner Will otherwise.
-- 		author support@zygorguides.com
-- 		class PRIEST
--		spec Discipline
--		spec Shadow
--		spec Holy
-- 		macroname Inner
-- 		macrotext
-- 		#showtooltip
-- 		/cast [nomodifier] ##588; ##73413
-- 	]])

-- Warrior macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Devastate - Shield Slam - Heroic Strike",[[
		description Keeps Heroic Strike queued and uses Devastate and Shield Slam for your supplemental aggro. [ctrl] uses Cleave instead of Heroic Strike.
		author support@zygorguides.com
		class WARRIOR
		spec Protection
		macroname 0DevSlamHero
		macrotext
		#showtooltip
		/castrandom ##20243, ##23922
		/stopcasting
		/cast [modifier:ctrl] ##845; ##78
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Easy Tanking Macro: Shield Slam, Revenge, and Shield Block",[[
		description Spammable for easy tanking.
		author support@zygorguides.com
		class WARRIOR
		spec Protection
		macroname 0TankSpam
		macrotext
		#showtooltip
		/castrandom [equipped:shields] ##23922, ##6572; ##6572
		/cast [equipped:shields] ##2565
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Endless Striking - Cleaving",[[
		description This will cast Deadly Calm any time it is available before Heroic Strike. Hold down Alt to use Cleave in place of Heroic Strike.
		author support@zygorguides.com
		class WARRIOR
		macroname 0EndStrike
		macrotext
		#showtooltip ##78
		/cast ##85730
		/cast [modifier:alt] ##845; ##78
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Revenge-Sheild Block",[[
		description Revenges when available, attempts to use Shield Block if not.
		author support@zygorguides.com
		class WARRIOR
		macroname 0RevSB
		macrotext
		#showtooltip
		/cast ##6572
		/stopcasting
		/cast ##2565
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Heroic/Slam Rage Dump",[[
		description This macro will allow you to easy choose between Heroic Strike and Slam to dump your excess of rage or to just simplify the buttons you've to push. The default is to cast Heroic Strike and will cast Slam if Alt is pressed.
		author support@zygorguides.com
		class WARRIOR
		spec Arms
		macroname 0Dump
		macrotext
		#showtooltip
		/cast [mod:alt] ##1464; ##78
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Mouseover Devestate",[[
		description This allows the warrior to put Devastate (or Sunder Armor if you don't have Devastate yet) on off targets without switching their main target by putting the mouse cursor over the target and then hitting the macro. It will also Devastate your current target if you have no mouse over target, or Devastate your target's target if your current target is friendly and your target's target is not. The macro prioritizes Mouse Over > Target > Target's Target.
		author support@zygorguides.com
		class WARRIOR
		spec Protection
		macroname 0MouseDevas
		macrotext
		#showtooltip
		#showtooltip
		/startattack
		/use [target=mouseover, harm, nodead][harm,nodead][target=targettarget, harm, nodead][] ##20243
		/run UIErrorsFrame:Clear()
	]]) -- Removed bloodrage due to it being removed from game. ~aprotas
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Taunt-a-Lot",[[
		description Casts "Taunt" at your Target or it will Taunt the Target your mouse is hovering over. You can hold Alt to Taunt the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Taunt "their" target. NOTE: If your focus is not targeting an enemy, you will taunt the focused target.
		author support@zygorguides.com
		class WARRIOR
		macroname 0MouseTaunt
		macrotext
		#showtooltip ##355
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##355
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\Charge-a-Lot",[[
		description Casts "Charge" at your Target or it will Charge the Target your mouse is hovering over. You can hold Alt to Charge the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Charge "their" target. NOTE: If your focus is not targeting an enemy, you will Charge the focused target.
		author support@zygorguides.com
		class WARRIOR
		macroname 0ChargeLot
		macrotext
		#showtooltip ##100
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##100
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warrior\\One Button AoE",[[
		description Casts Thunder Clap. If you hold down Alt and use this, it will cast Cleave. Holding down the Shift key while using this will use either Bladestorm, Shockwave or Dragon Roar (Depending on which Talent you have chosen).
		author support@zygorguides.com
		class WARRIOR
		macroname 01BtnAoE
		macrotext
		#showtooltip ##57832
		/cast [nomod] ##57832
		/cast [mod:alt] ##845
		/cast [mod:ctrl] ##50622
		/cast [mod:ctrl] ##46968
		/cast [mod:ctrl] ##118000
	]])


-- Death Knight macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Universal Interrupt",[[
		description Casts "Strangulate" on a mouseovered target, if it exists, otheriwise it casts Strangulate on the current target. Same for the second line, only with "Mind Freeze". If "Strangulate" is down, it will cast "Mind Freeze".
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1InterruptU
		macrotext
		#showtooltip
		/cast [@mouseover, exists] [] ##47476
		/cast [@mouseover, exists] [] ##47528
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Selectable Interrupt",[[
		description Casts "Strangulate" on a mouseovered target, if it exists, otheriwise it casts Strangulate on the current target. Same for the second line, only with "Mind Freeze". If "Strangulate" is down, it will cast "Mind Freeze".
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1InterruptS
		macrotext
		#showtooltip
		/cast [nomod] ##47528
		/cast [mod:shift] ##47476
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Self-heal Lichborne",[[
		description Casts "Lichborne" (if have talent) and then casts "Death Coil" on the player (self) when spammed.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1SelfHealL
		macrotext
		#showtooltip
		/cast ##49039
		/cast [@player] ##47541
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Self-heal Death Pact",[[
		description Click once to cast "Raise Dead", click again to cast "Death Pact" (if have talent).
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1SelfHealD
		macrotext
		#showtooltip
		/castsequence ##46584, ##48743
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Chains of Ice",[[
		description Casts "Chains of Ice" on your mouseovered target, if you have one, if not, it casts on your current target.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1Chains
		macrotext
		#showtooltip
		/cast [@mouseover,harm,nodead] [] ##45524
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Death Grip",[[
		description Casts "Death Grip" at your Target or it will Death Grip the Target your mouse is hovering over. You can hold Alt to Death Grip the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Death Grip "their" target. NOTE: If your focus is not targeting an enemy, you will Death Grip the focused target.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1Grip
		macrotext
		#showtooltip ##49576
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##49576
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Icy Touch / Plague Strike",[[
		description Casts "Icy Touch" first, then "Plague Strike". The macro resets when you switch targets.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1IcyPlague
		macrotext
		#showtooltip
		/castsequence reset=target ##45477, ##45462
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Trinket / Fortitude",[[
		description Uses any "use" trinkets you may have, then casts "Icebound Fortitude".
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1Fortitude
		macrotext
		#showtooltip ##48792
		/use 13
		/use 14
		/cast ##48792
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Death Coil",[[
		description Casts Death Coil at your target or at a mouseovered target (prefers the mouseover target). Hold Alt to cast at your minion. Hold Ctrl to cast at your focus target. This is a useful heal if "Glyph of Death Coil" is used.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1DeathCoil
		macrotext
		#showtooltip
		/cast [mod:ctrl, @focus] [mod:alt, @pet] [@mouseover] [nomod, @target] ##47541
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Howling Blast / Plague Strike",[[
		description Casts "Holwing Blast" and then "Plague Strike". The macro resets when you switch targets. Notice that this isn't very good if you're trying to AOE down mobs.
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1BlastPlague
		macrotext
		#showtooltip
		/castsequence reset=target ##49184, ##45462
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Trinket / Pillar of Frost",[[
		description Uses any "use" trinket you may have equipped, then casts "Pillar of Frost".
		author support@zygorguides.com
		class DEATHKNIGHT
		macroname 1Pillar
		macrotext
		#showtooltip ##51271
		/use 13
		/use 14
		/cast ##51271
	]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Diseases",[[
		description Using this will cast, in sequence; Icy Touch, Plague Strike and Pestilence. Hold Alt to cast Blood Boil. 
		description Since Blood Boil has a chance to Proc, we put this as a modified use, that you can cast at anytime.
		author support@zygorguides.com
		class DEATHKNIGHT
		spec Blood
		macroname 1Diseases
		macrotext
		#showtooltip
		/castsequence [mod:alt] reset=combat/target/5 ##48721; ##45477, ##45462, ##50842
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Vampiric Blood / Blood Tap",[[
		description Casts "Blood Tap", and casts "Vampiric Blood".
		author support@zygorguides.com
		class DEATHKNIGHT
		spec Blood
		macroname 1VampTap
		macrotext
		#showtooltip ##55233
		/cast ##45529
		/cast ##55233
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Obliterate/Frost",[[
		description Use this to cast Obliterate and hold Alt to cast Frost Strike.
		author support@zygorguides.com	
		class DEATHKNIGHT
		spec Frost
		macroname 1Oblit
		macrotext
		#showtooltip
		/cast [mod:alt] ##49143; ##49020
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Icy Touch/Howling Blast",[[
		description Use this to cast Icy Touch and hold Alt to cast Howling Blast.
		author support@zygorguides.com	
		class DEATHKNIGHT
		spec Frost
		macroname 1IcBlst
		macrotext
		#showtooltip
		/cast [mod:alt] ##53536; ##55313
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Death Knight\\Unholy Rotation",[[
		description This is a cast rotation for Unholy spec which goes as follows: Icy Touch, Plague Strike. Hold Alt Festering Strike.
		author support@zygorguides.com	
		class DEATHKNIGHT
		spec Unholy
		macroname 1UnRot
		macrotext
		#showtooltip
		/cast [mod:alt] ##85948
		/castsequence reset=combat ##45477, ##45462
	]])

-- Druid macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Cat, Travel and Swim Form",[[
		description While swimming, casts Aquatic Form, while indoors, casts Cat Form, while outdoors, casts Travel Form.
		author support@zygorguides.com
		class DRUID
		macroname 2Travel1
		macrotext
		#showtooltip#showtooltip
		/cast [swimming] ##1066; [indoors] ##768; [outdoors] ##783
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Cat, Travel, Swim and Flight Form",[[
		description While swimming, casts Aquatic Form, while indoors, casts Cat Form, while outdoors, casts Travel Form, if in a flyable zone, casts Swift Flying Form (or Flying Form if Swift is not available).
		author support@zygorguides.com
		class DRUID
		macroname 2Travel2
		macrotext
		#showtooltip#showtooltip
		/cast [swimming] ##1066; [indoors] ##768; [flyable] ##40120; [flyable ##33943; [outdoors] ##783
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Cat Form Prowl and Shred",[[
		description If you are not in Cat Form and have no combo points, this will put you into Cat Form, but will fail to cast Maim, otherwise, click again to cast Maim.
		author support@zygorguides.com
		startlevel 16
		class DRUID
		spec Feral
		macroname 2ProwlShred
		macrotext
		#showtooltip
		/cast [nostance:3] ##768; [nostealth, nocombat] !##5215; ##5221
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Prowl, Prounce and Mangle",[[
		description If you are not in Cat form, this will put you into Cat Form, this will also toggle Prowl, if stealthed, this will cast Pounce,if not, this will cast Shred.
		author support@zygorguides.com
		class DRUID
		macroname 2ProwlPounce
		macrotext
		#showtooltip
		/cast [nostance:3] ##768; [nostealth, nocombat] !##5215; [stealth] ##9005; ##33878
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Stampede Ravage + Pounce",[[
		description Same as the macro above, only if stealthed it will cast "Pounce", otherwise, it will cast "Feral Charge" and "Ravage!".
		author support@zygorguides.com
		class DRUID
		spec Feral
		macroname 2StamRavPounce
		macrotext
		#showtooltip
		/castsequence [nostance:3] ##768; [nostealth, nocombat] !##5215; [stealth] ##9005; reset=10 [@mouseover, exists, harm, nodead][@target] ##49376, ##81170
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Cat Form + Dash",[[
		description Puts in Cat Form if not already in Cat Form, otherwise it will cast Dash. Will have to click again if not already in Cat Form.
		author support@zygorguides.com
		class DRUID
		macroname 2DashCat
		macrotext
		#showtooltip
		/cast [nostance:3] ##768; ##1850
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Bear Form + Bash",[[
		description Put in Bear Form if not already in Bear Form, otherwise it will cast Bash. Will have to click again if not already in Bear Borm.
		author support@zygorguides.com
		class DRUID
		spec Guardian
		macroname 2BashBear
		macrotext
		#showtooltip
		/cast [nostance:1] ##5487; ##5211
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Bear Form + Growl",[[
		description Casts "Growl" at your Target or it will Growl the Target your mouse is hovering over. You can hold Alt to Growl the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Growl "their" target. NOTE: If your focus is not targeting an enemy, you will Growl the focused target.
		author support@zygorguides.com
		class DRUID
		macroname 2GrowlBear
		macrotext
		#showtooltip ##355
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##6795
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Bear Form Health and Regeneration",[[
		description Casts Enrage, Barskin, Might of Ursoc and Frenzied Regeneration at the same time. This will boost your health, reduce damage, provide rage and restore health at the same time. Use as a Panic Button.
		author support@zygorguides.com
		class DRUID
		macroname 2Ursoc
		macrotext
		#showtooltip ##106922
		/cast ##5229
		/cast ##106922
		/cast ##22812
		/cast ##22842
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Announcing Innervate",[[
		description This will stop if your target is dead or is not friendly. It will send a message to your party or your raid as to who you are innervating.
		author support@zygorguides.com
		class DRUID
		macroname 2AInnervate
		macrotext
		#showtooltip
		/stopmacro [nohelp,dead]
		/run c="Innervating %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
		/cast ##29166
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Easy Innervate",[[
		description This will cast Innervate in the priority: mouseovertarget, your target, your forcus, and then, if you're holding down any modifier, at yourself.
		author support@zygorguides.com
		class DRUID
		macroname 2EInnervate
		macrotext
		#showtooltip
		/cast [nomod, @mouseover, exists, help][nomod, @target, exists, help][nomod, @focus, exists, help][@player] ##29166
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Smart Announcing Ressurrection",[[
		description This will stop if your target is not dead or not friendly. It will send a message to your party or your raid as to who you are  ressurecting. If you're in combat, you will cast "Rebirth", otherwise, you will cast Revive.
		author support@zygorguides.com
		class DRUID
		macroname 2Resurrect
		macrotext
		#showtooltip
		/stopmacro [nohelp,nodead]
		/run c="Resurrecting %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
		/cast [combat] ##20484 ; ##50769
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Moonkin",[[
		description Puts you into Moonkin Form if not in Moonkin Form. Otherwise, casts "Insect Swarm", "Moonfire", and then "Starsurge". The macro will reset itself once the sequence is complete or you switch targets.
		author support@zygorguides.com
		class DRUID
		spec Balance
		macroname 2Moonkin
		macrotext
		#showtooltip
		/cast [nostance:5] ##24858
		/castsequence reset=target ##5570, ##8921, ##87674
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Smart Force of Nature",[[
		description Casts "Force of Nature" (If you have this Talent), then sends your pet to attack your current target.
		author support@zygorguides.com
		class DRUID
		macroname 2FoN
		macrotext
		#showtooltip
		/cast ##106737
		/petattack
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Mouseover Swiftmend",[[
		description A mouseover Swiftmend. Will cast on the target if they're not dead and a friendly target. If there is no mouseover target, then the macro will cast on the player (self).
		author support@zygorguides.com
		class DRUID
		spec Restoration
		macroname 2SWMend
		macrotext
		#showtooltip
		/cast [target=mouseover,help,nodead][help][target=player] ##18562
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Smart Rejuvenation",[[
		description Casts "Rejuvenation" at your friendly target, otherwise, casts "Rejuvenation" at your target's target, if you target is unfriendly.
		author support@zygorguides.com
		class DRUID
		macroname 2SWMend
		macrotext
		#showtooltip
		/cast [@target, help][@targettarget, help] Rejuvenation
	]])
-- TODO the following need to have user constant substitution engine which is in works
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Travel Form Macro (20-60)",[[
-- 		description While swimming, casts Aquatic Form, while indoors, casts Cat Form, while not in combat, yet something can harm, casts Travel Form while in combat, casts Travel Form, otherwise cast your favorite ground mount. Dismounts if mounted.
-- 		author support@zygorguides.com
-- 		class DRUID
-- 		macroname 2Travel2
-- 		macrotext
-- 		#showtooltip
-- 		/cast [swimming] ##1066; [indoors] ##768; [nocombat, harm] ##783; [combat] ##783; ##GroundMountNameHere
-- 		/dismount [mounted]
-- 	]])
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Druid\\Travel Form Macro (60-85)",[[
-- 		description While swimming, casts Aquatic Form, while indoors, casts Cat Form, while not in combat, yet something is chasing you, casts Travel Form while in combat, casts Travel Form, if in a flyable zone, casts Swift Flight Form, otherwise cast your favorite ground mount. Dismounts if mounted.
-- 		author support@zygorguides.com
-- 		class DRUID
-- 		macroname 2Travel3
-- 		macrotext
-- 		#showtooltip
-- 		/cast [swimming] ##1066; [indoors] ##768;[nocombat, harm] ##783; [combat] ##783; [flyable] ##33943; ##GroundMountNameHere
-- 		/cast [flyable] ##40120
-- 		/dismount [mounted]
-- 	]])
-- Hunter Macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Pet change",[[
		description If a pet is out and you're holding down [shift], then it will dismiss your pet. If you have no pet out and you push "button 2", it will call your second pet. If you have no pet and hold down [shift], it will call your third pet. If you have no pet out and you hold down [ctrl], it will call your fourth pet. If you have no pet out and you hold down [alt], it will call your fifth pet. Otherwise, it will call your first pet.
		author support@zygorguides.com
		class HUNTER
		macroname 3PetChange
		macrotext
		#showtooltip
		/cast [pet,mod:shift] ##2641
		/cast [nopet,button:2]##83242; [nopet,mod:shift]##83243; [nopet,mod:ctrl]##83244; [nopet,mod:alt]##83245; [nopet]##883
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Revive / Call / Mend Pet",[[
		description If you're holding down a modifier and you click "button 1", you'll revive your pet. If your pet exists and you click "button 1", it will cast "Mend Pet". If your pet does not exist and you click "button 2", it will call your first pet. If you're holding down a modifier and you click "button 2", it will dismiss your pet.
		author support@zygorguides.com
		class HUNTER
		macroname 3PetRecall
		macrotext
		#showtooltip
		/cast [button:1,modifier] ##982
		/cast [button:1,@pet,exists] ##136
		/cast [button:2,@pet,noexists]##883
		/cast [button:2,modifier] ##2641
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Barrage",[[
		description This will cast, in sequence, Black Arrow, Dire Beast, Barrage then Lynx Rush.
		author support@zygorguides.com
		class HUNTER
		spec Survival
		macroname 3BlDLynx
		macrotext
		#showtooltip
		/castsequence reset=20/combat ##3674, ##120679, ##120360, ##120697
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Explosive Shot, Arcane Shot Spam",[[
		description This will cast, in sequence, Explosive Shot then Arcane Shot. This allows to dump more of your focus even when Lock and Load procs.
		author support@zygorguides.com
		class HUNTER
		spec Survival
		macroname 3LockLoad
		macrotext
		#showtooltip
		/castsequence reset=combat/4 ##69975, ##36623
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Remote Explosive Trap",[[
		description This will first cast "Trap Launcher", then once used again, it will cast "Explosive Trap". The macro will reset in 15 seconds or when the sequence is complete. The reset is 15 seconds because that is how long the buff "Trap Launcher" lasts.
		author support@zygorguides.com
		class HUNTER
		macroname 3ExpTrap
		macrotext
		#showtooltip
		#show ##13813
		/castsequence reset=15 ##77769, ##82939
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Frost Traps",[[
		description This will stop your attacking and casting so that you will not accidently break your traps. If you're holding down [alt] you will cast Ice Trap, if not, you will cast Freezing Trap.
		author support@zygorguides.com
		class HUNTER
		macroname 3FrostTrap
		macrotext
		#showtooltip
		/stopcasting
		/stopattack
		/cast [modifier:alt] ##13809; ##1499
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Universal Traps Macro",[[
		description This will cast Trap Launcher, then cast Freezing Trap once click again. If you're holding down [alt] it will cast Ice Trap. If you're holding down [shift] it will cast Snake Trap. If you're holding down [ctrl] it will cast Explosive Trap.
		author support@zygorguides.com
		class HUNTER
		macroname 3UniTrap
		macrotext
		#showtooltip
		/castsequence  reset=15 ##77769,!##1499
		/cast [mod:alt]##13809
		/cast [mod:shift]##34600
		/cast [mod:ctrl]##13813
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Focused Wyvern Sting",[[
		description This will set your focus if a modifer is pressed. Then it will cast Wyvern Sting on the focus target. If the focus target is dead, the focus is cleared and nothing is cast.
		author support@zygorguides.com
		class HUNTER
		spec Survival
		macroname 3Wyvern
		macrotext
		#showtooltip
		/focus [mod]
		/clearfocus [@focus,dead]
		/cast [@focus,harm,nodead] ##19386
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Easy Misdirection #1",[[
		description This will cast "Misdirection" if your focus target is friendly, if you don't have a focus target then it will look for your current target and cast it on them, if none of those exist then it will cast it on your pet.
		author support@zygorguides.com
		class HUNTER
		macroname 3MD1
		macrotext
		#showtooltip
		/cast [@focus,help][help][@pet,exists] ##34477
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Easy Misdirection #2",[[
		description This will set your focus target to whatever your target is, but it will not set your focus to an unfriendly target, the macro will stop. You only have to set your focus target once. After this, it will cast "Misdirection" on your focus target, if it exists. If none of this is true, then it will cast "Misdirection" on your pet, if it exists.
		author support@zygorguides.com
		class HUNTER
		macroname 3MD2
		macrotext
		#showtooltip
		/focus [help]
		/stopmacro [help]
		/cast [@focus,exists] ##34477;[@pet,exists] ##34477
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Easy Misdirection #3",[[
		description This will cast "Misdirection" at your focus target and it's friendly, if not, then it will cast at your unfriendly focus target's  target, if not, then it will cast at your current target if it's friendly, if not, then it will cast at your unfriendly target's target, if not, it will cast at your pet if it's not dead and exists. Be careful when you use [@targettarget] for your Misdirection macros, your enemy target may be attacking a healer and you do not want your threat to go to them. It is highly advised that you use two to three variations of this macro.
		author support@zygorguides.com
		class HUNTER
		macroname 3MD3
		macrotext
		#showtooltip
		/cast [@focus,help][@focustarget,help][@target,help][@targettarget,noplayer,help][@pet,nodead,exists] ##34477
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Hunter's Mark #1",[[
		description This will assist your focus target if you have one. Then, it will cast "Hunter's Mark" at an unfriendly target. The last line will  set your focus target if you don't already have one and your target is friendly (hopefully your tank) - you only need to do that once.
		author support@zygorguides.com
		class HUNTER
		macroname 3HM1
		macrotext
		#showtooltip ##1130
		/assist [@focus, exists]
		/cast [harm] ##1130;
		/focus [help]
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Hunter's Mark #2",[[
		description This will toggle "Aspect of the Hawk" on, and keep it on, before casting a "Hunter's Mark".
		author support@zygorguides.com
		class HUNTER
		macroname 3HM2
		macrotext
		#show ##1130
		/cast !##13165
		/cast ##1130
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Hunter's Mark #3",[[
		description This is simply a combination of the two previous macros. This will assist your focus, cast "Aspect of the Hawk" if it's not on  already, then cast "Hunter's Mark" on your focus target's target. The last line will set your focus target if you don't already have one and your target is friendly (hopefully your tank) - you only need to do that once.
		author support@zygorguides.com
		class HUNTER
		macroname 3HM3
		macrotext
		#showtooltip ##1130
		/assist [@focus, exists]
		/cast !##13165
		/cast [harm] ##1130;
		/focus [help]
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Hunter's Mark #4",[[
		description This is another version of the previous macro. This has "/startattack" added in, so I wouldn't use it as your main Hunter's Mark macro, but it is great for switching targets in the heat of battle. *I put "/focus [party]" because sometimes your focus target might be targetting a friendly NPC, and if you assist your focus target, and they're targetting a friendly NPC, your focus target will switch to that NPC, which can get annoying. I would still be careful with this because your tank might be targetting a healer, then it would switch your focus to that healer. Honestly, I wouldn't put in that last line unless you want to change focus targets on the fly and you know what target is going to be set to focus target.
		author support@zygorguides.com
		class HUNTER
		macroname 3HM4
		macrotext
		#showtooltip ##1130
		/assist [@focus, exists]
		/cast !##13165;
		/cast [harm] ##1130;
		/startattack [harm]
		/focus [party]
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Hunter\\Hunter's Mark #5",[[
		description This is the final version of the Hunter's Mark macro. I have taken out the setting of the party member as a focus and replaced it with my pet attacking the assist target that I have gotten. I suggest setting your focus target manually, just in case your focus target is targetting something that the macro can set as a focus target. This will also send your pet to attack your focus target's target, which will happen as soon as you switch targets, which is quicker than WoW's "petassist" mode, espcially if you're casting a spell or ability that take a few seconds.
		author support@zygorguides.com
		class HUNTER
		macroname 3HM5
		macrotext
		#showtooltip ##1130
		/assist [@focus, exists]
		/cast !##13165;
		/cast [harm] ##1130;
		/startattack [harm]
		/petattack [harm]
	]])

-- Mage macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Brilliance / Molten Armor",[[
		description Casts Arcane Brilliance and then Molten Armor once clicked again.
		author support@zygorguides.com
		class MAGE
		macroname 4Buff
		macrotext
		#showtooltip
		/castsequence [@player] reset=4 ##1459, ##30482
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Ice Barrier + Incanter's Ward",[[
		description Casts Ice Barrier (if Talent learned) and then Incanter's Ward (if Talent learned) Shield once clicked again.
		author support@zygorguides.com
		class MAGE
		spec Frost
		macroname 4Def
		macrotext
		#showtooltip
		/castsequence [@player] reset=4 ##11426, ##1463
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Icy Veins/Alter Time/Frostbolt",[[
		description Casts Icy Veins and Alter Time at the same time, as well as Frostbolt.
		author support@zygorguides.com
		class MAGE
		spec Frost
		macroname Alter
		macrotext
		#showtooltip Icy Veins
		/cast Icy Veins
		/cast Alter Time
		/cast Frostbolt
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Polymorph #1",[[
		description This casts Polymorph on your current target, then announces it with an emote.
		author support@zygorguides.com
		class MAGE
		macroname 4PM1
		macrotext
		#showtooltip
		/cast ##118
		/emote polymorphs %t.
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Polymorph #2",[[
		description This chooses a random "Polymorph" spell and casts it on an unfriendly target, otherwise, it stops the macro. If the target is polymorphed then it announces it through an emote.
		author support@zygorguides.com
		class MAGE
		macroname 4PM2
		macrotext
		#showtooltip ##118
		/castrandom [harm] ##118,##61721,##28271,##61780,##28272,##61305
		/stopmacro [noharm]
		/emote polymorphs %t.
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Polymorph #3",[[
		description This chooses a random "Polymorph" spell and casts it on your focus target if it is unfriendly. If your target is currently a friendly target, the macro will stop. Otherwise, the macro will continue and announce through an emote what you have polymorphed.
		author support@zygorguides.com
		class MAGE
		macroname 4PM3
		macrotext
		#showtooltip ##118
		/castrandom [@focus, harm] ##118,##61721,##28271,##61780,##28272,##61305
		/focus [harm]
		/stopmacro [noharm]
		/emote polymorphs %f.
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Arcane Power + Mirror Image + Trinkets",[[
		description This casts "Arcane Power", uses any "use" trinkets you may have, then casts Mirror Image. The last line will clear any errors you may get from this, just in case you can't use a trinket or ability.
		author support@zygorguides.com
		class MAGE
		spec Arcane
		macroname 4ArMiTrink
		macrotext
		#showtooltip
		#show ##55342
		/cast ##12042
		/use 13
		/use 14
		/cast ##55342
		/script UIErrorsFrame:Clear()
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Arcane Power + Blizzard",[[
		description This casts "Arcane Power" and then prompts the "Blizzard" marker to show up.
		author support@zygorguides.com
		class MAGE
		spec Arcane
		macroname 4ArBliz
		macrotext
		#show ##10
		/cast ##12042
		/cast ##10
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Arcane Power/Blast/Missles",[[
		description This uses Arcane Power and Arcane Blase and Mana Gem. Once the ability for Arcane Missiles is available, you can hold Alt and use this macro to cast the Missiles.
		author support@zygorguides.com
		class MAGE
		spec Arcane
		macroname 4ArSpam
		macrotext
		#show ##12042
		/use ##36799
		/cast ##12042
		/cast [mod:alt] ##5143; ##30451
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Pyroblast/Fireball and Heating Up #1",[[
		description Casts "Pyroblast" as an opener if you're not in combat, otherwise, it will cast "Fireball". You can hold Alt to cast "Pyroblast" again, when heating up procs.
		author support@zygorguides.com
		class MAGE
		spec Fire
		macroname 4PyroFire1
		macrotext
		#showtooltip
		/cast [mod:alt] ##11366
		/cast [nocombat] ##11366; ##133
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Ice Lance + Pet Attack",[[
		description Casts "Ice Lance" then sends your pet to attack.
		author support@zygorguides.com
		class MAGE
		spec Frost
		macroname 4LancePet
		macrotext
		#showtooltip
		/cast ##30455
		/petattack
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Blazing Speed/Ice Floes",[[
		description This macro casts either Blazing Speed or Ice Floes, depending on which you have picked.
		author support@zygorguides.com
		class MAGE
		macroname 4BlazingFloes
		macrotext
		#showtooltip
		/use Blazing Speed
		/use Ice Floes
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Instant Counterspell",[[
		description This will stop your casting if you're casting, and then it will cast "Counterspell". This is useful for interrupt-heavy fights where one person's interrupt isn't enough.
		author support@zygorguides.com
		class MAGE
		macroname 4InstCounter
		macrotext
		#showtooltip ##2139
		/stopcasting
		/cast ##2139
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Mouseover Counterspell",[[
		description This will stop your casting then cast "Counterspell" on your mouseovered target.
		author support@zygorguides.com
		class MAGE
		macroname 4MouseCounter
		macrotext
		#showtooltip ##2139
		/stopcasting
		/cast [@mouseover, harm, nodead] [harm, nodead] ##2139
		/run UIErrorFrame:Clear();
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Focus Counterspell",[[
		description This will stop your casting then cast "Counterspell" on your focus target if you have one. Otherwise, Counterspell is cast at your current target.
		author support@zygorguides.com
		class MAGE
		macroname 4FocusCounter
		macrotext
		#showtooltip
		/stopcasting
		/cast [@focus,exists][@target] Counterspell
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Instant Decurse #1",[[
		description This will stop your casting if you're casting, and then it will cast "Remove Curse". This is useful if you do not have a healer that can decurse, or if they're not enough to decurse. Remember, dead DPS is no DPS.
		author support@zygorguides.com
		class MAGE
		macroname 4InstDecurse1
		macrotext
		#showtooltip
		/stopcasting
		/cast ##475
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Instant Decurse #2",[[
		description This will stop your casting if you're casting, then it checks to see if you're holding down a modifier. If you are not, then you will cast "Remove Curse" on your current target. If you are, then you will cast "Remove Curse" on the player (self).
		author support@zygorguides.com
		class MAGE
		macroname 4InstDecurse2
		macrotext
		#showtooltip
		/stopcasting
		/cast [nomod] ##475 ; [mod, @player] ##475
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Mage\\Instant Decurse #3",[[
		description This is the same as the previous macro, only it will cast at your mouseovered target if it exists, and if not it will cast at your  current target.
		author support@zygorguides.com
		class MAGE
		macroname 4InstDecurse3
		macrotext
		#showtooltip
		/stopcasting
		/cast [@mouseover, exists, nomod][] ##475 ; [mod, @player] ##475
	]])

--Monk Macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Mouseover Taunt",[[
		description Casts "Provoke" at your Target or it will Provoke the Target your mouse is hovering over. You can hold Alt to Provoke the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Provoke "their" target. NOTE: If your focus is not targeting an enemy, you will Provoke the focused target.
		author support@zygorguides.com
		class MONK
		spec Brewmaster
		macroname 10MouseTaunt
		macrotext
		#show ##115546
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##115546
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Panic Tank Button",[[
		description Use this if you are about to take a ton of damage to help mitigate the damage and allow the healer to keep you alive in a panic situation. Keep hitting the button to use all fo your abilities. You can hold Alt down to cast Avert Harm before you use this.
		author support@zygorguides.com	
		class MONK
		spec Brewmaster
		macroname 10Panic
		macrotext
		#showtooltip
		/castsequence [nomod] reset=combat/20 ##128849, ##122278, ##115203
		/cast [mod:alt] Avert Harm
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Mouseover Renewing Mist",[[
		description Casts Renewing Mist if you have your mouse hovering over a Player (This is the preferred target). Also will cast if you have a target selected. If you press Alt, will cast at your focus target.
		author support@zygorguides.com
		class MONK
		spec Mistweaver
		macroname 10MistMouse
		macrotext
		#showtooltip
		/cast [mod:alt @focus] [@mouseover,help,exists][help][] ##119611
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Over Healing",[[
		description Use this when a player is taking a lot of damage. Keep hitting the button to use all of your abilities.
		author support@zygorguides.com
		class MONK
		spec Mistweaver
		macroname 10OvrHeal
		macrotext
		#showtooltip
		/castsequence ##116680, ##130316, ##115310
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Interrupt",[[
		description Will interrupt your current target, or your the target your mouse if hovering over. Holding Alt will interrupt your focus target.
		author support@zygorguides.com
		class MONK
		macroname 10SpearHand
		macrotext
		#showtooltip
		/cast [mod:alt @focus] [@mouseover] [] ##116705
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Paralysis",[[
		description Will Paralyze your current target, or your the target your mouse if hovering over. Holding Alt will interrupt your focus target.
		author support@zygorguides.com
		class MONK
		macroname 10Paralyze
		macrotext
		#showtooltip
		/cast [mod:alt @focus] [@mouseover] [] ##115078
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\One Button Single Target",[[
		description Press this to use Jab. Hold down Alt to use Tiger Palm. Hold down Ctrl to use Blackout Kick and hold Shift to use Rising Sun Kick.
		author support@zygorguides.com	
		class MONK
		spec Windwalker
		macroname 10One4All
		macrotext
		#showtooltip
		/cast [nomod] ##100780
		/cast [mod:alt] ##100787
		/cast [mod:ctrl] ##128631
		/cast [mod:shift] ##107428
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Monk\\Murder Death Kill",[[
		description Allows you to use Touch of Death, while increasing your health by 20%. This will allow you to kill your target with higher health.
		author support@zygorguides.com
		class MONK
		macroname 10MDK
		macrotext
		#showtooltip ##115080
		/cast ##115203
		/cast ##115080
	]])
-- Paladin macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Crusader Strike / Hammer of the Righteous",[[
		description Casts "Hammer of the Righteous" if [Alt] is held down, otherwise, it casts "Crusader Strike".
		author support@zygorguides.com
		class PALADIN
		spec Protection
		macroname 5ProtBuilder
		macrotext
		#showtooltip
		/cast [modifier: Alt]  ##53595; ##35395
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Crusader Strike + Attack #1",[[
		description Basic attack macro. Starts your attack on your nearest target and then casts "Crusader Strike".
		author support@zygorguides.com
		class PALADIN
		macroname 5CrusStrike1
		macrotext
		#showtooltip ##35395
		/startattack
		/cast ##35395
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Crusader Strike + Attack #2",[[
		description If you're having trouble switching targets, this macro will target your nearest, non-dead enemy, starts attacking it, and casts Crusader Strike if it's availiable. The last line will clear the "You can't do this yet" error.
		author support@zygorguides.com
		class PALADIN
		macroname 5CrusStrike2
		macrotext
		#showtooltip
		/targetnearestenemy [harm,nodead]
		/startattack
		/cast ##35395
		/script UIErrorsFrame:Clear()
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Assisting Crusader Strike",[[
		description This will target your focus target's target, if it's not dead and is unfriendly, start attacking and cast "Crusader Strike" if it's availiable. The last line will clear the "You can't do this yet" error.
		author support@zygorguides.com
		class PALADIN
		macroname 5CrusStrike3
		macrotext
		#showtooltip
		/assist [harm,nodead] focus
		/startattack
		/cast ##35395
		/script UIErrorsFrame:Clear()
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Empowered Crusader Strike + Inquisition",[[
		description This will cast "Avenging Wrath", "Inquisition", "Zealotry", and then "Crusader Strike". Each time the macro is used, it will switch tothe next spell in the sequence. It will reset itself once it has cycled through all of the spells.
		author support@zygorguides.com
		class PALADIN
		spec Retribution
		macroname 5CrusStrike4
		macrotext
		#showtooltip
		#show
		/castsequence ##31884, ##84963, ##85696, ##35395
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Easy Repentance #1",[[
		description This will set your current focus target to whatever you're currently targeting if you push "button 2" on your mouse. If you push "button 1", it will cast on your focus target.
		author support@zygorguides.com
		class PALADIN
		spec Retribution
		macroname 5Repent1
		macrotext
		#showtooltip
		/stopmacro [help,dead]
		/focus [button:2,harm,nodead]
		/cast [button:1,@focus,harm,nodead] ##20066
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Easy Repentance #2",[[
		description This will set your current focus target to whatever you're currently targeting if you're holding down any modifier and your target is unfriendly and not dead. Then, if you're not holding down any modifiers, you will cast "Repentance" on your focus target.
		author support@zygorguides.com
		class PALADIN
		spec Retribution
		macroname 5Repent2
		macrotext
		#showtooltip
		/stopmacro [help,dead]
		/focus [modifier,harm,nodead]
		/cast [nomod,@focus,harm,nodead] ##20066
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Judgement #1",[[
		description This is good for judging while healing, but it's not the best you could do. This targets your target's target and then casts  whichever "Judgement" you put in there, then it goes back to your last target. This macro works, but it's not the best for healing judging.
		author support@zygorguides.com
		class PALADIN
		macroname 5Judge1
		macrotext
		#showtooltip
		/assist
		/cast ##20271
		/targetlasttarget
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Judgement #2",[[
		description This one is very good for healing judgement. This one doesn't switch your target at all, so you can always keep track of your current  target's health and switch to another target if needed while you're judging. As long as your target, hopefully a party member or your tank, is attacking an unfriendly mob, you will judge their target.
		author support@zygorguides.com
		class PALADIN
		macroname 5Judge2
		macrotext
		#showtooltip
		/cast [@targettarget,harm] ##20271
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Divine Favor + Holy Light #1",[[
		description This will cast Divine Favor, if it is availiable, then casts "Holy Light".
		author support@zygorguides.com
		class PALADIN
		spec Holy
		macroname 5DFHL1
		macrotext
		#showtooltip
		/cast ##31842
		/cast ##635
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Divine Favor + Holy Light #2",[[
		description This is the same as the previous, only it gets rid of the "You can cast that yet" error and sound.
		author support@zygorguides.com
		class PALADIN
		spec Holy
		macroname 5DFHL1
		macrotext
		#showtooltip
		/console Sound_EnableSFX 0
		/cast ##31842
		/console Sound_EnableSFX 1
		/script UIErrorsFrame:Clear()
		/cast ##635
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Tar and Mouse Holy Shock/Holy Radiance",[[
		description This will cast "Holy Light" on a friendly player that you have targeted, or if your mouse is hovering over a friendly. Hold [Alt] to cast Holy Radiance at a friendly your mouse is hovered over (This macro will prefer Mousever Targets).
		author support@zygorguides.com
		class PALADIN
		spec Holy
		macroname 5MouseHS
		macrotext
		#showtooltip
		/cast [mod:alt, @mouseover, exists, nodead, help] ##82327
		/cast [nomod, @mouseover, exists, nodead, help]##20473
		/cast [nomod, @target] ##20473
		/cast [mod:alt, @target] ##82327
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Mouseover Reckoning",[[
		description Casts "Reckoning" at your Target or it will Reckoning the Target your mouse is hovering over. You can hold Alt to Reckoning the target you have Focused. Lastly, you can hold Alt and Mouse over a friendly unit (including a Focused Player), to Reckoning "their" target. NOTE: If your focus is not targeting an enemy, you will Reckoning the focused target.
		author support@zygorguides.com
		class PALADIN
		macroname 5MouseProtect1
		macrotext
		#showtooltip
		/cast [mod:alt, @mouseovertarget, exists] [mod:alt, @focus] [@mouseover, harm] [harm] ##62124
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Defensive Cooldowns #1",[[
		description Casts Divine Guardian, Ardent Defender, and Divine Protection.
		author support@zygorguides.com
		class PALADIN
		spec Protection
		macroname 5DefCD1
		macrotext
		#showtooltip ##70940
		/cast ##70940
		/cast ##498
		/cast ##31850
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Defensive Cooldowns #2",[[
		description Uses your "use" trinkets, if you have one, then casts "Divine Guardian", "Divine Protection", and "Ardent Defender".
		author support@zygorguides.com
		class PALADIN
		spec Protection
		macroname 5DefCD2
		macrotext
		#showtooltip ##70940
		/use 13
		/use 14
		/cast ##70940
		/cast ##498
		/cast ##31850
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Defensive Cooldowns #3",[[
		description Uses your "use" trinkets, if you have one, then casts "Divine Guardian", "Divine Protection", and "Ardent Defender".
		author support@zygorguides.com
		class PALADIN
		spec Protection
		macroname 5DefCD3
		macrotext
		#showtooltip ##70940
		/console Sound_EnableSFX 0
		/use 13
		/use 14
		/cast ##70940
		/script UIErrorsFrame:Clear()
		/console Sound_EnableSFX 1
		/cast ##498
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Consecration + Sacred Shield",[[
		description Casts "Sacred Shield" (if you have learned this talent) then casts your "Consecration" spell in sequence.
		author support@zygorguides.com
		class PALADIN
		spec Protection
		macroname 5ConsecSh
		macrotext
		#showtooltip ##26573
		/castsequence ##20925, ##26573
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Mouseover Hand of Salvation",[[
		description This will cast "Hand of Salvation" at your mouseovered target, if you have one, if not, then it casts at your current target. This also ensures that you never cast this at yourself, since you're tanking.
		author support@zygorguides.com
		class PALADIN
		macroname 5MouseSavl
		macrotext
		#showtooltip
		/cast [@mouseover] [noplayer] ##1038
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Redemption",[[
		description Casts "Redemption" on a dead target, then announces to the party or raid, whichever you're in, that you're ressurecting them. The macro stops if your target is not dead or is not friendly.
		author support@zygorguides.com
		class PALADIN
		macroname 5Redempt
		macrotext
		#showtooltip ##7328
		/cast ##7328
		/stopmacro [nohelp][nodead]
		/run c="Resurrecting %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
	]])
-- TODO Needs user substitution support
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Crusader Aura",[[
-- 		description This will turn on Crusader Aura and put you on your ground mount if you're in a non-flying zone. If not, then you will mount your "Abyssal Seahorse" while swimming. if clicked again, you will dismount and you will put on "Concentration Aura". You can replace "Concentration Aura" with anything aura you want.
-- 		author support@zygorguides.com
-- 		class PALADIN
-- 		macroname 5Crusaura
-- 		macrotext
-- 		#showtooltip
-- 		/cast [nomounted] !Crusader Aura; [mounted] !Concentration Aura
-- 		/cast [nomounted,noflyable] GroundMountNameHere; [nomounted,flyable] FlyingMountNameHere; [nomounted,swimming] Abyssal Seahorse
-- 		/dismount [mounted]
-- 	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Easy Turn Evil",[[
		description Casts "Turn Evil" at your focus target, if it's not dead and unfriendly. If you have no focus target, it will cast at your current target, if it's not dead and unfriendly.
		author support@zygorguides.com
		class PALADIN
		macroname 5TEvil
		macrotext
		#showtooltip
		/cast [@focus,harm,nodead] [@target,harm,nodead] [] ##10326
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Announcing Rebuke",[[
		description Casts "Rebuke" on your current target and announces to your raid or party, whichever you're in. The macro wont announce if your target is friendly or dead.
		author support@zygorguides.com
		class PALADIN
		macroname 5Rebuke1
		macrotext
		#showtooltip
		/cast ##96231
		/stopmacro [help][dead]
		/run c="Rebuke on %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Focused Rebuke",[[
		description Casts "Rebuke" on your focus target, if you have one, otherwise it casts on your current target.
		author support@zygorguides.com
		class PALADIN
		macroname 5Rebuke2
		macrotext
		#showtooltip
		/cast [@focus,harm,nodead] [ ] ##96231
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Paladin\\Lay on Hands",[[
		description Casts "Lay on Hands" in the following priority: 1. on your mouseovered friendly target 2. on your friendly target 3. on your target's friendly target 4. on the player (self)
		author support@zygorguides.com
		class PALADIN
		macroname 5LoH
		macrotext
		#showtooltip
		/cast [@mouseover,help,nodead] [@target,help,nodead] [@targettarget,help,nodead][@player] ##633
	]])
-- Priest macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Power Infusion on self",[[
		description Casts "Power Infusion" on the player (self).
		author support@zygorguides.com
		class PRIEST
		spec Discipline
		macroname 6PIatSelf
		macrotext
		#showtooltip
		/cast [@player] ##10060
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Power Infusion on self + Divine Hymn",[[
		description Casts "Power Infusion" on the player (self), then casts "Divine Hymn" for a super charged AOE heal.
		author support@zygorguides.com
		class PRIEST
		spec Discipline
		macroname 6PIDH
		macrotext
		#showtooltip ##64843
		/cast [@player] ##10060
		/cast ##64843
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Mouseover Pain Suppression",[[
		description Casts "Pain Suppression" on the mouseovered target.
		author support@zygorguides.com
		class PRIEST
		spec Discipline
		macroname 6MouseSupr
		macrotext
		#showtooltip
		/cast [@mouseover] ##33206
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Focused Pain Suppression",[[
		description Casts "Pain Suppression" on the focus target.
		author support@zygorguides.com
		class PRIEST
		spec Discipline
		macroname 6FocusSupr
		macrotext
		#showtooltip
		/cast [@focus] ##33206
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Smart Pain Suppression",[[
		description Casts "Pain Suppression" on the focus target if [ctrl] is held down. Casts "Pain Suppression" on the mouseovered target if no modifier is being held down. Casts "Pain Suppression" on the player if [shift] is being held down.
		author support@zygorguides.com
		class PRIEST
		spec Discipline
		macroname 6SmartSupr
		macrotext
		#showtooltip ##33206
		/cast [mod:ctrl,help,@focus] ##33206
		/cast [nomod,help,@mouseover] ##33206
		/cast [mod:shift,@player] ##33206
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Shield + Mending",[[
		description Casts Power Word: Shield, then casts Prayer of Mending once used again.
		author support@zygorguides.com
		class PRIEST
		macroname 6PWSPM
		macrotext
		#showtooltip
		/castsequence ##17, ##33076
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Archangel Macro",[[
		description An Archangel macro, helpful for when you're healing and you don't want to untarget your healing target. Casts "Smite" at your target's target if no modifier is being held down. If [alt] is being held down, it will cast "Holy Fire" at your target's target. If you're holding down [shift], it will consume your Evangelisms and cast "Archangel".
		author support@zygorguides.com
		class PRIEST
		macroname 6Angel
		macrotext
		#showtooltip
		/cast [nomod, @targettarget]  ##585
		/cast [mod:alt, @targettarget] ##14914
		/cast [mod:shift] ##87151
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Mouseovered Guardian Spirit",[[
		description Casts "Guardian Spirit" on your mouseovered target, if you don't have one, then it looks for your friendly, non-dead focus target, if none of those conditions are met, then it looks for your target's target, if it's friendly and not dead, if that doesn't exist, then it will cast on your current target, or the player (self).
		author support@zygorguides.com
		class PRIEST
		spec Holy
		macroname 6MouseGS
		macrotext
		#showtooltip
		/cast [@mouseover, help, nodead] [@focus, help, nodead] [@targettarget, help, nodead] [] ##47788
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Guardian Spirit on tank",[[
		description This will cast "Guardian Spirit" on the first member of your party.
		author support@zygorguides.com
		class PRIEST
		spec Holy
		macroname 6TankGS
		macrotext
		#showtooltip
		/cast [@party1,nodead] ##47788
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Chakra",[[
		description This will cast "Chakra". Then, depending on which modifier you're holding down, it will cast the different spells that affect your Chakra state. Notice if you use this macro with no modifier held down, it will automatically cast "Heal". If you don't usually use the chakra state "Serenity", then replace "Heal" with whichever spell that puts you in the state you normally use.
		author support@zygorguides.com
		class PRIEST
		spec Holy
		macroname 6Chakra
		macrotext
		#showtooltip
		/cast ##14751
		/cast [mod:alt] Chakra: Serenity; [mod:shift] Chakra: Sanctuary; Chakra: Chastise
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Mouseover Flash Heal",[[
		description Casts mouseover at your mouseovered target, if you don't have one, then it casts on the current target or the player (self).
		author support@zygorguides.com
		class PRIEST
		spec Holy
		macroname 6MouseFlash
		macrotext
		#showtooltip
		/cast [@mouseover,help,nodead] [] ##2061
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Spammable Mind Flay",[[
		description The macro will stop if you're already channeling "Mind Flay". Otherwise, it will cast "Mind Flay". This prevents clipping of your  "Mind Flay" and is spammable.
		class PRIEST
		spec Shadow
		macroname 6MindFlay
		macrotext
		#showtooltip
		/stopmacro [channeling]
		/cast ##15407
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Focused Shackle Undead",[[
		description Casts "Shackle Undead" at your focus, if you have one, if not, then it casts on your focus target's target, if you don't have one, then it casts on your current target if it's unfriendly.
		class PRIEST
		macroname 6Shackle
		macrotext
		#showtooltip
		/cast [@focus,harm,nodead] [@focustarget,harm,nodead] [@target,harm,nodead] [] ##9484
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Spammable Mind Sear",[[
		description Casts "Mind Sear" if you're not channeling something already. The macro stops if you're channeling already.
		class PRIEST
		macroname 6MindSear
		macrotext
		#showtooltip
		/stopmacro [channeling]
		/cast ##48045
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Announcing Resurrection",[[
		description Casts "Resurrection" on a dead target, then announces to the party or raid, whichever you're in, that you're ressurecting them. The macro stops if your target is not dead or is not friendly.
		class PRIEST
		macroname 6Resurrect
		macrotext
		#showtooltip ##2006
		/cast ##2006
		/stopmacro [harm][nodead]
		/run c="Resurrecting %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Dispel/Purify",[[
		description Casts "Dispel" or "Purify" on your target, depending on which is needed.
		class PRIEST
		macroname 6Dispel/Purify
		macrotext
		#showtooltip
		/cast [@target,harm,exists] Dispel Magic; [@target,help,exists] Purify
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Shadowfiend Attack",[[
		description This will summon your Shadowfiend and make it attack either your target or the target of your target. 
		class PRIEST
		macroname 6Shadowfiend
		macrotext
		#showtooltip Shadowfiend
		/cast Shadowfiend
		/petattack [harm][@targettarget,harm]
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Inner Fire/Inner Will",[[
		description This macro uses a modifier to either cast Inner Fire or Inner Will. Left click or keybind to cast Inner Will. Right click or control + keybind for Inner Fire.
		class PRIEST
		macroname 6Will/Fire
		macrotext
		#showtooltip
		/cast [nomod] Inner Will
		/cast [mod:ctrl, button:2] Inner Fire
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Priest\\Trinket/Mindbender",[[
		description This macro always uses one of your trinkets (whichever is not on cooldown but not both at the same time) along with Mindbender.
		class PRIEST
		macroname 6Mindbender
		macrotext
		#show Mindbender
		/use 13
		/use 14
		/cast Mindbender
	]])



-- Rogue macros
-- TODO this needs user substitution support
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Stealth Eating",[[
-- 		description Casts "Resurrection" on a dead target, then announces to the party or raid, whichever you're in, that you're ressurecting them. The macro stops if your target is not dead or is not friendly.
-- 		class ROGUE
-- 		macroname 7StealthFood
-- 		macrotext
-- 		#showtooltip
-- 		/cast FoodNameHere
-- 		/cast Stealth
-- 	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Announcing Kick",[[
		description Casts "Kick" on your target. If your target is friendly or dead, the macro stops, otherwise, it announces what target you kicked.
		class ROGUE
		macroname 7Kick1
		macrotext
		#showtooltip
		/cast ##1766
		/stopmacro [help][dead]
		/run c="Kicked %t"if UnitInRaid("player")then SendChatMessage(c, "RAID")elseif GetNumPartyMembers()>0 then SendChatMessage(c, "PARTY")end
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Focused Kick",[[
		description Casts "Kick" on your focus target, if it's an enemy and not dead. If your focus is friendly, it will cast on your current target.
		class ROGUE
		macroname 7Kick2
		macrotext
		#showtooltip
		/cast [@focus,harm,nodead] [ ] ##1766
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Stealth / Vanish / Cloak",[[
		description If in combat, this will cast Cloak of Shadows, then toggle "Stealth". If in combat, this casts "Cloak of Shadows" and then Vanish.
		class ROGUE
		macroname 7CloakVanish
		macrotext
		#showtooltip ##1856
		/cast [combat] ##31224; !##1784
		/cast [nostealth,combat] ##1856
	]]) -- There's something wrong with this macro ~aprotas
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Smart Tricks of the Trade",[[
		description If you're targeting an unfriendly target, this will cast "Tricks of the Trade" at your target's target. If your current target is friendly, it will cast at them.
		class ROGUE
		macroname 7ToT1
		macrotext
		#showtooltip
		/cast [@targettarget] [help] ##57934
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Focused Tricks of the Trade",[[
		description Casts "Tricks of the Trade" at your focus target, hopefully it's a tank.
		class ROGUE
		macroname 7ToT2
		macrotext
		#showtooltip ##57934
		/cast [@focus] ##57934
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Mouseover Blind",[[
		description Casts "Blind" at your mouseovered target. Works great in PvP, especically with an [@mouseover] or [@focus] "Kick" macro.
		class ROGUE
		macroname 7MouseBlind
		macrotext
		#showtooltip
		/cast [@mouseover] [ ] ##2094
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Feint + Evasion",[[
		description Casts Feint and Evasion without a global cooldown.
		class ROGUE
		macroname 7FeintEvas
		macrotext
		#showtooltip ##5277
		/cast ##1966
		/cast ##5277
	]])
-- TODO those need user substitution support
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Cancel Bubble + Attack",[[
-- 		description Cancels Blessing of Protection when you use "Hemorrhage". You can replace "Hemmorhage" with any ability you want.
-- 		class ROGUE
-- 		macroname 7BubbleAttack
-- 		macrotext
-- 		#shottooltip
-- 		/cast Hemorrhage
-- 		/stopmacro [help] [noexists]
-- 		/cancelaura Blessing of Protection
-- 	]])
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Weapon swap for FoK",[[
-- 		description This is great if you have a ranged weapon that is better than your thrown weapon, such as a gun or bow, but you still want to use "Fan of Knives" without switching your weapons by rifiling through your bags during the heat of battle. This will equip your throwing weapon of choice, then you will have to click again to cast "Fan of Knives", after it is casted, you will equip your better ranged weapon.
-- 		class ROGUE
-- 		macroname 7RangedSwap
-- 		macrotext
-- 		#showtooltip
-- 		/equipslot [noequipped:Thrown] 18 ThrownWeaponNameHere
-- 		/targetnearestenemy [nodead]
-- 		/startattack
-- 		/cast [equipped:Thrown] Fan of Knives
-- 		/equipslot [equiped:Thrown] 18 OtherRangedWeaponNameHere
-- 	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Blind / Sap",[[
		description If you're holding down a modifier, you will set your focus to your current target. If you're not in combat, and you're in stealth stance, you will cast "Sap" on your current target. If not, then you will cast "Blind" on your focus target, if you have one, if not, you will cast "Blind" on your mouseovered target, if you have one.
		class ROGUE
		macroname 7BlindSap
		macrotext
		#showtooltip ##2094
		/focus [mod]
		/cast [@harm,nocombat,stealth] ##6770 ; [@focus,harm,nodead] [@mouseover,harm,nodead] ##2094
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Emergent Escape",[[
		description A "ninja" getaway! Casts "Smoke Bomb", "Cloak of Shadows", and "Vanish" at the same time.
		class ROGUE
		macroname 7Escape
		macrotext
		#showtooltip ##1856
		/cast ##76577
		/cast ##31224
		/cast ##1856
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Ambush / Envenom",[[
		description While stealthed, this will cast "Cold Blood" then cast "Ambush" or "Envenom", without a global cooldown.
		class ROGUE
		spec Assassination
		macroname 7AmbushEnvenom
		macrotext
		#showtooltip [stealth] ##8676; ##32645
		/cast ##14177
		/cast [stealth] ##8676; ##32645
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Safe Mutilate",[[
		description This is great for almost every ability you do, just replace "Mutilate" with whatever ability you want to preform. This targets the nearest enemy, if it's not dead, starts your melee attack, then casts "Mutilate" (or whatever ability you put in such as "Fan of Knives", "Backstab", etc.).
		class ROGUE
		spec Assassination
		macroname 7SafeMuti
		macrotext
		#showtooltip
		/targetnearestemey [nodead]
		/startattack
		/cast ##1329
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Vendetta + Trinkets",[[
		description This uses any "use" trinkets you may have on, then casts "Vendetta".
		class ROGUE
		spec Assassination
		macroname 7VendTrinks
		macrotext
		#showtooltip ##79140
		/use 13
		/use 14
		/cast ##79140
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Adrenaline Rush + Trinkets",[[
		description Uses your "use" trinkets if you have one, then casts "Adrenaline Rush".
		class ROGUE
		spec Combat
		macroname 7ARTrinks
		macrotext
		#showtooltip ##13750
		/use 13
		/use 14
		/cast ##13750
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Smart Killing Spree",[[
		description Assists your focus, casts "Tricks of the Trade" on your focus, then casts "Killing Spree" on the enemy.
		class ROGUE
		spec Combat
		macroname 7KSpree
		macrotext
		#showtooltip ##51690
		/assist focus
		/cast [@focus,help] ##57934 ;
		/cast [harm] ##51690
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Safe Sinister Strike",[[
		description This is great for almost every ability you do, just replace "Sinister Strike" with whatever ability you want to preform. This targets the nearest enemy, if it's not dead, starts your melee attack, then casts "Sinister Strike" (or whatever ability you put in such as "Fan of Knives", "Backstab", etc.).
		class ROGUE
		spec Combat
		macroname 7SafeSS
		macrotext
		#showtooltip
		/targetnearestemey [nodead]
		/startattack
		/cast ##1752
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Slice and Dice / Rupture",[[
		description If [shift] is held down, casts "Rupture", otherwise, it casts "Slice and Dice".
		class ROGUE
		macroname 7SnDRupt
		macrotext
		#showtooltip
		/cast [modifier:shift] ##1943; ##5171
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Safe Hemmorhage",[[
		description This is great for almost every ability you do, just replace "Hemmorhage" with whatever ability you want to preform. This targets the nearest enemy, if it's not dead, starts your melee attack, then casts "Hemmorhage" (or whatever ability you put in such as "Fan of Knives", "Backstab", etc.).
		class ROGUE
		spec Subtlety
		macroname 7SafeHemo
		macrotext
		#showtooltip
		/targetnearestemey [nodead]
		/startattack
		/cast ##16511
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Safe Backstab",[[
		description This is great for almost every ability you do, just replace "Backstab" with whatever ability you want to preform. This targets the nearest enemy, if it's not dead, starts your melee attack, then casts "Backstab" (or whatever ability you put in such as "Fan of Knives", "Mutilate", etc.).
		class ROGUE
		spec Subtlety
		spec Assassination
		macroname 7SafeBS
		macrotext
		#showtooltip
		/targetnearestemey [nodead]
		/startattack
		/cast ##53
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Shadow Dance + Trinkets",[[
		description Uses your "use" trinkets, if you have one, then casts Shadow Dance.
		class ROGUE
		spec Subtlety
		macroname 7ShDTrink
		macrotext
		#showtooltip ##51713
		/use 13
		/use 14
		/cast ##51713
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Rogue\\Smart Ambush",[[
		description Targets your nearest, if it's not dead, then starts your attack and casts "Ambush". This is very useful if you're having trouble  putting abilities on your Shadow Dance stance bar, just put this macro somewhere where you can access it, hopefully to a keybinding. You can put any ability you want in place of "Ambush".
		class ROGUE
		macroname 7SmAmbush
		macrotext
		#showtooltip
		/targetnearestenemy [nodead]
		/startattack
		/cast ##8676
	]])
-- Shaman macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Mouseover Cleanse Spirit",[[
		description Casts "Cleanse Spirit" at your mouseovered target, if you have one, if not, then it casts on your current target or the player (self)
		class SHAMAN
		macroname 8MouseCS
		macrotext
		#showtooltip
		/cast [@mouseover,help,nodead] [] ##51886
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Instant Wind Shear + Purge",[[
		description This will stop your casting and cast "Wind Shear" and "Purge" at the same time on your current target without a global cooldown.
		class SHAMAN
		macroname 8InstWSPur
		macrotext
		#showtooltip
		/stopcasting
		/cast ##57994
		/cast ##370
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Focused Wind Shear",[[
		description This will stop your casting and cast "Wind Shear" at your focus target, if it's unfriendly and not dead. If you hold down [shift] it will set your current target to your focus target.
		class SHAMAN
		macroname 8FocusWS
		macrotext
		#showtooltip
		/focus [mod:shift]
		/stopcasting
		/cast [@focus,nodead,harm] ##57994
	]])
-- TODO this needs user substitution support
-- ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Travel Macro",[[
-- 		description Casts your flying mount if you're in a flyable zone and not in combat, if not, then it casts your ground mount if not in combat, if not, and you're holding down [alt] or you're indoors or in combat, then you will cast "Ghost Wolf".
-- 		class SHAMAN
-- 		macroname 8Travel
-- 		macrotext
-- 		#showtooltip
-- 		/cast [nomod,flyable,nocombat] FlyingMountHere; [nomod,noflyable,nocombat] GroundMountHere; [indoors][combat][mod:alt] Ghost Wolf
-- 		/dismount [mounted]
-- 	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Reincarnation Watch",[[
		description Since you can't place passive abilities on your action bar, you can keep track of your Reincarnation cooldown and how many Ankhs you may have with this macro.
		class SHAMAN
		macroname 8Reincarn
		macrotext
		#showtooltip ##20608
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Easy Hex",[[
		description This will cast "Hex" on your current focus target. It will also help set your focus target, if you're holding down [shift] and use this macro, it will set your focus target to whatever you're currently targeting. The macro will clear your focus if you're holding down [alt] and use it. You can also use this for "Bind Elemental".
		class SHAMAN
		macroname 8Hex
		macrotext
		#showtooltip
		/focus [mod:shift]
		/clearfocus [mod:alt]; [target=focus,dead]
		/stopmacro [mod:alt]; [nocombat,mod:shift]
		/focus [target=focus,noexists]
		/cast [@focus] ##51514
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Elemental Cooldowns",[[
		description Uses your "use" trinkets, if you have any, then casts Elemental Mastery or Ancestral Switftness and your instant Lightning Bolt right afterward. If you hold down Alt, you will cast Lava Burst instead of Lightning Bolt.
		class SHAMAN
		spec Elemental
		macroname 8ElemCDs
		macrotext
		#showtooltip ##16166
		/use 13
		/use 14
		/cast ##16188
		/cast ##16166
		/cast [mod:alt] ##79886; ##403
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Safe Stormstrike",[[
		description This will cast "Stormstrike" and start your autoattack function.
		class SHAMAN
		spec Enhancement
		macroname 8SafeStstr
		macrotext
		#showtooltip
		/cast ##17364
		/startattack [harm]
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Enhancement Cooldowns",[[
		description Uses your "use" trinkets and uses "Shamanistic Rage".
		class SHAMAN
		spec Enhancement
		macroname 8ElemCDs
		macrotext
		#showtooltip ##30823
		/use 13
		/use 14
		/cast ##30823
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Windfury / Flametongue on Weapons",[[
		description Casts "Windfury Weapon" on your main hand weapon if the macro is used with "button 1". If not, then it casts "Flametongue Weapon" on your offhand weapon.
		class SHAMAN
		macroname 8Weapons
		macrotext
		#showtooltip
		/cast [button:1] ##8232; ##8024
		/use [button:1] 16; 17
		/click StaticPopup1Button1
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Easy Greater Healing Wave",[[
		description Casts your "Greater Healing Wave" spell with certain priorities: 1. your mouseover target, if it exists and is friendly, 2. your target, if it's friendly and it's not dead 3. your target's target, if it's friendly and not dead 4. if nothing else is true for what you're targeting, you will cast on the player (self). You can replace "Greater Healing Wave" with any healing spell you want.
		class SHAMAN
		macroname 8EasyHeal
		macrotext
		#showtooltip ##77472
		/cast [@mouseover,help,exists] [@target,help,nodead] [@targettarget,help,nodead] [@player] ##77472
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Shaman\\Earth Shock on Enemy",[[
		description This is helpful for when you get a Focused Insight buff. You can cast "Earth Shock" without untargeting your current healing target.
		class SHAMAN
		macroname 8EasyEarthSh
		macrotext
		#showtooltip
		/cast [@focus,harm][@focustarget,harm][@targettarget,harm][@target,harm] ##8042
	]])
-- Warlock macros
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Demon Selection",[[
		description Casts Soulburn, then Voidwalker. You can hold Alt to summon your Felhunter, Ctrl to summon your Imp and Shift to summon you Succubus.
		class WARLOCK
		spec Affliction
		macroname 9Demon
		macrotext
		#showtooltip
		/cast ##74434
		/cast [nomod] ##697 ; [mod:alt] ##691 ; [mod:ctrl] ##688 ; [mod:shift] ##712
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Focused Fear",[[
		description If holding down a modifier, you will set your focus on your current target. Your focus will clear if your target is dead, or you hold down alt while using this macro. If you're not holding down anything, you will cast "Fear" on your focus target.
		class WARLOCK
		macroname 9Fear
		macrotext
		#showtooltip
		/focus [mod]
		/clearfocus [mod:alt]; [target=focus,dead]
		/cast [@focus,harm,nodead] ##5782
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Universal Rituals",[[
		description Casts Ritual of Souls if you're holding down a modifier, otherwise, it casts Ritual of Summoning.
		class WARLOCK
		macroname 9Rituals
		macrotext
		#showtooltip
		/cast [mod] ##29893 ; ##698
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\One Button DoTs",[[
		description Press this macro to place, in order: Agony, Corruption, Unstable Afflication then Malefic Grasp. Press Alt with it to cast Haunt (increases DoT damage - tip - Wait til it procs for a free Haunt).   This rotation will reset when you have either cast Malefic Grasp 3 times, upon leaving combat, or change targets. 
		class WARLOCK
		spec Affliction
		macroname 9DOT
		macrotext
		#showtooltip
		/cast [mod:alt] ##48181
		/castsequence [nomod] reset=combat/target/8 ##980, ##172, ##30108, ##103103, ##103103, ##103103
		
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Focused Soul Swap #1",[[
		description You can set your focus to your tank, or whoever your raid or party leader says to assist. This will cast "Soul Swap" and inhale your dots if you're holding down [alt]. If you're holding down [shift], you will target your focus target's target. Lastly, if you're not holding down any modifers, you will cast Soul Swap on your focus target's target. This will only work if "Soul Swap" is nowhere else on your bars.
		class WARLOCK
		spec Affliction
		macroname 9SSw1
		macrotext
		#showtooltip
		/cast [mod:alt] ##86121
		/assist [mod:shift] focus
		/cast [@focustarget, nomod] [] ##86121
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Focused Soul Swap #2",[[
		description This is another way to write the previous macro. If you use the macro with "button 1", you will inhale your dots. If you use any other button other than "button 1", you will cast "Soul Swap" on your focus target's target. Holding down any modifier and using this macro will assist your focus target.
		class WARLOCK
		spec Affliction
		macroname 9SSw2
		macrotext
		#showtooltip
		/cast [button:1] ; [@focustarget, mod, nodead] ##86121
		/assist [mod] focus
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Cooldowns + Trinkets",[[
		description Use any "use" trinkets you may have on, then casts Demon Soul and Drain Soul.
		class WARLOCK
		macroname 9TrinkCDs
		macrotext
		#showtooltip ##1120
		/use 13
		/use 14
		/cast ##77801
		/cast ##1120
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Dot + Pet Attack",[[
		description This will force your Pet target what you are fighting, without having to manually switch them or wait for them to eventually switch on their own. You can change what spell you cast with any spell wanted.
		class WARLOCK
		macroname 9PetAtk
		macrotext
		#showtooltip
		/cast ##172
		/cast ##118297
		/petattack
	]])
ZygorGuidesViewer:RegisterGuide("Zygor's Macros\\Warlock\\Demon Crush",[[
		description This macro casts Metamorphosis, Dark Soul: Knowledge, Immolation, Axe Toss (Felguard), Wrathstorm (Felguard) and Demonic Leap at the same time.
		class WARLOCK
		macroname 9DmnCrush
		macrotext
		#showtooltip ##103958
		/cast ##103958, ##113861, ##109797, ##89766, ##115831, ##109151
	]])