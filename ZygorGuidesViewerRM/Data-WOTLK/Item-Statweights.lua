local ItemScore = ZGV.ItemScore

ItemScore.rules = {
	["DEATHKNIGHT"] = { -- cloth/leather/mail only till 40, plate from 40
		[1] = {
			name="Blood", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {CRIT=0.57, HASTE=0.55, STAMINA=0.001, ARMOR=0.01, DAMAGE_PER_SECOND=3.6, ARMOR_PENETRATION=1, STRENGTH=0.99, HIT=0.91, EXPERTISE=0.9, ATTACK_POWER=0.36},
			caps = { HIT=17, EXPERTISE=26, },
		},
		[2] = {
			name="Frost", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {STRENGTH=0.97, DAMAGE_PER_SECOND=3.37, ATTACK_POWER=0.35, HIT=1, EXPERTISE=0.81, CRIT=0.45, HASTE=0.28, ARMOR_PENETRATION=0.61, STAMINA=0.001, ARMOR=0.01},
			caps = { HIT=17, EXPERTISE=26, },
		},
		[3] = { 
			name="Unholy", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {STRENGTH=1, DAMAGE_PER_SECOND=2.09, ATTACK_POWER=0.34, HIT=0.66, EXPERTISE=0.51, CRIT=0.45, HASTE=0.48, ARMOR_PENETRATION=0.32, STAMINA=0.001, ARMOR=0.01},
			caps = { HIT=17, EXPERTISE=26 },
		}
	},
	["DRUID"] = {
		[1] = { 
			name="Balance",
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, TH_POLE=1, DAGGER=1, FIST=1 },
			stats = {INTELLECT=0.22, SPIRIT=0.22, SPELL_POWER=0.66, HIT=1, CRIT=0.43, HASTE=0.54, STAMINA=0.001},
			caps = { HIT=17, HASTE=18, CRIT=45, },
		},
		[2] = { 
			name="Feral DPS", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, TH_POLE=1, DAGGER=1, FIST=1 },
			stats = {STRENGTH=0.8, AGILITY=1, ATTACK_POWER=0.4, FERAL_ATTACK_POWER=0.4, HIT=0.5, EXPERTISE=0.5, CRIT=0.55, HASTE=0.35, ARMOR_PENETRATION=0.9, STAMINA=0.001},
			caps = { HIT=8, },
		},
		[3] = {
			name="Feral TANK", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, TH_POLE=1, DAGGER=1, FIST=1 },
			stats = {  STRENGTH=0.1, AGILITY=1, ATTACK_POWER=0.04, FERAL_ATTACK_POWER=0.04, HIT=0.08, EXPERTISE=0.16, CRIT=0.03, HASTE=0.05, STAMINA=0.75, ARMOR=0.1, DEFENSE_SKILL=0.6, DODGE=0.65},
			caps = { HIT=8, EXPERTISE=26 },
		},
		[4] = {
			name="Restoration", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, TH_POLE=1, DAGGER=1, FIST=1 },
			stats = {INTELLECT=0.51, SPIRIT=0.32, MANA_REGENERATION=0.73, SPELL_POWER=1, CRIT=0.11, HASTE=0.57, STAMINA=0.001},
			caps = { HIT=17, },
		}
	},
	["HUNTER"] = { -- cloth/leather only till 40, mail from 40
	-- DPS FOR ALL SPECS SHOULD BE RANGED
		[1] = { 
			name="Beast Mastery", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {AGILITY=0.58, DAMAGE_PER_SECOND=2.13, ATTACK_POWER=0.3, HIT=1, CRIT=0.4, HASTE=0.21, ARMOR_PENETRATION=0.28, INTELLECT=0.37, STAMINA=0.001},
			caps = { HIT=8, },
		},
		[2] = { 
			name="Marksmanship", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {AGILITY=0.74, DAMAGE_PER_SECOND=3.79, ATTACK_POWER=0.32, HIT=1, CRIT=0.57, HASTE=0.24, ARMOR_PENETRATION=0.4, INTELLECT=0.39, STAMINA=0.001},
			caps = { HIT=8, },
		},
		[3] = { 
			name="Survival", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {AGILITY=0.76, DAMAGE_PER_SECOND=1.81, ATTACK_POWER=0.29, HIT=1, CRIT=0.42, HASTE=0.31, ARMOR_PENETRATION=0.26,INTELLECT=0.35, STAMINA=0.001},
			caps = { HIT=8, },
		},
	},
	["MAGE"] = {
		[1] = { 
			name="Arcane", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {INTELLECT=0.34, SPIRIT=0.14, SPELL_POWER=0.49, SPELL_DAMAGE_DONE_FIRE=0.24, SPELL_DAMAGE_DONE_FROST=0.24, SPELL_DAMAGE_DONE_ARCANE=0.49, HIT=1, CRIT=0.37, HASTE=0.54, STAMINA=0.001},
			caps = { HIT=17, },
		},
		[2] = { 
			name="Fire", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {SPELL_POWER=0.46, SPELL_DAMAGE_DONE_FIRE=0.46, HIT=1, INTELLECT=0.13, CRIT=0.43, SPELL_DAMAGE_DONE_FROST=0.23, SPELL_DAMAGE_DONE_ARCANE=0.23, HASTE=0.53, STAMINA=0.001},
			caps = { HIT=17, },
		},
		[3] = { 
			name="Frost", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {INTELLECT=0.06, SPELL_POWER=0.39, SPELL_DAMAGE_DONE_FIRE=0.19, SPELL_DAMAGE_DONE_FROST=0.39, SPELL_DAMAGE_DONE_ARCANE=0.19, HIT=1, CRIT=0.19, HASTE=0.42, STAMINA=0.001},
			caps = { HIT=17, },
		}
	},
	["PALADIN"] = { -- cloth/leather/mail only till 40, plate from 40
		[1] = {
			name="Holy", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {INTELLECT=1, MANA_REGENERATION=0.88, CRIT_SPELL=0.46, HASTE=0.35, STAMINA=0.001, SPELL_POWER=0.58},
			caps = { HIT_SPELL=3, },
		},
		[2] = {
			name="Protection", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, MACE=1, SWORD=1},
			stats = {STRENGTH=0.16, AGILITY=0.6, EXPERTISE=0.59, STAMINA=1, ARMOR=0.08, DEFENSE_SKILL=0.45, DODGE=0.55, PARRY=0.3, BLOCK=0.07, BLOCK_VALUE=0.06},
			caps = { HIT=8, EXPERTISE=26, DEFENSE_SKILL=540, },
		},
		[3] = { 
			name="Retribution", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {STRENGTH=0.8, DAMAGE_PER_SECOND=4.7, AGILITY=0.32, ATTACK_POWER=0.34, HIT=1, EXPERTISE=0.66, CRIT=0.4, HASTE=0.3, ARMOR_PENETRATION=0.22, SPELL_POWER=0.09, HASTE=0.3, STAMINA=0.001},
			caps = { HIT=8, EXPERTISE=26, },
		}
	},
	["PRIEST"] = {
		[1] = {
			name="Discipline", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {INTELLECT=0.65, SPIRIT=0.22, MANA_REGENERATION=0.67, SPELL_POWER=1, CRIT=0.48, HASTE=0.59, STAMINA=0.001},
			caps = { HASTE=50, },
		},
		[2] = {
			name="Holy", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {INTELLECT=0.69, SPIRIT=0.52, MANA_REGENERATION=1, SPELL_POWER=0.6, CRIT=0.38, HASTE=0.31, STAMINA=0.001},
			caps = { CRIT=20, HASTE=50, },
		},
		[3] = {
			name="Shadow", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {INTELLECT=0.16, SPIRIT=0.16, SPELL_POWER=0.76, SPELL_DAMAGE_DONE_SHADOW=0.76, HIT=1, CRIT=0.54, HASTE=0.5, STAMINA=0.001},
			caps = { HIT=17, HASTE=50, },
		}
	},
	["ROGUE"] = {
		[1] = { 
			name="Assassination", 
			itemtypes = { CLOTH=1, LEATHER=1, AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.55, AGILITY=1, DAMAGE_PER_SECOND=1.7, ATTACK_POWER=0.65, HIT=0.83, EXPERTISE=0.87, CRIT=0.81, HASTE=0.64, ARMOR_PENETRATION=0.65, STAMINA=0.001},
			caps = { HIT=8, EXPERTISE=26, },
		},
		[2] = { 
			name="Combat", 
			itemtypes = { CLOTH=1, LEATHER=1, AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.55, AGILITY=1, DAMAGE_PER_SECOND=2.2, ATTACK_POWER=0.5, HIT=0.8, EXPERTISE=0.82, CRIT=0.75, HASTE=0.73, ARMOR_PENETRATION=1, STAMINA=0.001},
			caps = { HIT=8, EXPERTISE=26, },
		},
		[3] = { 
			name="Subtlety", 
			itemtypes = { CLOTH=1, LEATHER=1, AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.55, AGILITY=1, DAMAGE_PER_SECOND=2.28, ATTACK_POWER=0.5, HIT=0.8, EXPERTISE=1, CRIT=0.75, HASTE=0.75, ARMOR_PENETRATION=0.75, STAMINA=0.001},
			caps = { HIT=8, EXPERTISE=26, },
		}
	},
	["SHAMAN"] = { -- cloth/leather only till 40, mail from 40
		[1] = {  
			name="Elemental", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {INTELLECT=0.11, SPELL_POWER=0.6, HIT=1, CRIT=0.4, HASTE=0.56, STAMINA=0.001},
			caps = { HIT=17, },
		},
		[2] = { 
			name="Enhancement",
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {STRENGTH=0.35, AGILITY=0.55, DAMAGE_PER_SECOND=1.35, ATTACK_POWER=0.32, HIT=1, EXPERTISE=0.84, CRIT=0.55, HASTE=0.42, ARMOR_PENETRATION=0.26, INTELLECT=0.55, SPELL_POWER=0.29, STAMINA=0.001},
			caps = { HIT=17, EXPERTISE=26, },
		},
		[3] = {
			name="Restoration", 
			itemtypes = { CLOTH=1, LEATHER=1, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {INTELLECT=0.85, MANA_REGENERATION=1, SPELL_POWER=0.77, CRIT=0.62, HASTE=0.35, STAMINA=0.001},
			caps = { HASTE=38, },
		}
	},
	["WARLOCK"] = {
		[1] = {
			name="Affliction", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {INTELLECT=0.15, SPIRIT=0.34, SPELL_POWER=0.72, SPELL_DAMAGE_DONE_FIRE=0.36, SPELL_DAMAGE_DONE_SHADOW=0.72, HIT=1, CRIT=0.38, HASTE=0.61, STAMINA=0.001},
			caps = { HIT=17, },
		},
		[2] = {
			name="Demonology", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {INTELLECT=0.13, SPIRIT=0.29, SPELL_POWER=0.45, SPELL_DAMAGE_DONE_FIRE=0.45, SPELL_DAMAGE_DONE_SHADOW=0.45, HIT=1, CRIT=0.31, HASTE=0.5, STAMINA=0.001},
			caps = { HIT=17, },
		},
		[3] = {
			name="Destruction", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {INTELLECT=0.13, SPIRIT=0.26, SPELL_POWER=0.47, SPELL_DAMAGE_DONE_FIRE=0.47, SPELL_DAMAGE_DONE_SHADOW=0.23, HIT=1, CRIT=0.16, HASTE=0.46, STAMINA=0.001},
			caps = { HIT=17, },
		}
	},
	["WARRIOR"] = { -- cloth/leather,mail only till 40, plate from 40
		[1] = { 
			name="Arms", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=1, AGILITY=0.65, HIT=0.9, EXPERTISE=0.85, CRIT=0.8, HASTE=0.5, STAMINA=0.001, ARMOR=0.01, ARMOR_PENETRATION=0.65, ATTACK_POWER=0.45},
			caps = { HIT=8, EXPERTISE=26, ARMOR_PENETRATION=100 },
		},
		[2] = { 
			name="Fury", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=0.82, AGILITY=0.53, ATTACK_POWER=0.31, HIT=0.48, EXPERTISE=1, CRIT=0.66, HASTE=0.36, ARMOR_PENETRATION=0.52, STAMINA=0.001, ARMOR=0.05},
			caps = { HIT=8, EXPERTISE=214, ARMOR_PENETRATION=100 },
		},
		[3] = {
			name="Prot", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=0.48, AGILITY=0.67, ATTACK_POWER=0.01, HIT=0.1, EXPERTISE=0.19, CRIT=0.07, HASTE=0.01, ARMOR_PENETRATION=0.1, STAMINA=1, ARMOR=0.06, DEFENSE_SKILL=0.86, DODGE=0.9, PARRY=0.67, BLOCK=0.48, BLOCK_VALUE=0.81},
			caps = { HIT=8, DEFENSE_SKILL=540, EXPERTISE=26, HIT_SPELL=17 },
		}
	},
	["CUSTOM"] = {
		[1] = {
			name="Custom Spec 1",
			itemtypes = { CLOTH=1, LEATHER=1, MAIL=1, PLATE=1, SHIELD=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, AXE=1, TH_AXE=1, WAND=1, THROWN=1, OFFHAND=1, MISCARM=1 },
			stats = {STRENGTH=0.5, AGILITY=0.5, INTELLECT=0.5, SPIRIT=0.2, SPELL_POWER=0.5, ATTACK_POWER=0.35, HIT=0.75, CRIT=0.5, HASTE=0.4, STAMINA=0.1, ARMOR=0.01, DAMAGE_PER_SECOND=0.5},
			caps = {},
		},
		[2] = {
			name="Custom Spec 2",
			itemtypes = { CLOTH=1, LEATHER=1, MAIL=1, PLATE=1, SHIELD=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, AXE=1, TH_AXE=1, WAND=1, THROWN=1, OFFHAND=1, MISCARM=1 },
			stats = {STRENGTH=0.5, AGILITY=0.5, INTELLECT=0.5, SPIRIT=0.2, SPELL_POWER=0.5, ATTACK_POWER=0.35, HIT=0.75, CRIT=0.5, HASTE=0.4, STAMINA=0.1, ARMOR=0.01, DAMAGE_PER_SECOND=0.5},
			caps = {},
		},
		[3] = {
			name="Custom Spec 3",
			itemtypes = { CLOTH=1, LEATHER=1, MAIL=1, PLATE=1, SHIELD=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, AXE=1, TH_AXE=1, WAND=1, THROWN=1, OFFHAND=1, MISCARM=1 },
			stats = {STRENGTH=0.5, AGILITY=0.5, INTELLECT=0.5, SPIRIT=0.2, SPELL_POWER=0.5, ATTACK_POWER=0.35, HIT=0.75, CRIT=0.5, HASTE=0.4, STAMINA=0.1, ARMOR=0.01, DAMAGE_PER_SECOND=0.5},
			caps = {},
		},
	},
}

ItemScore.Defaults = ItemScore.Defaults or ItemScore.rules

-- Source metadata for shipped defaults.
-- These weights are curated local numeric baselines normalized from Wowhead's
-- Wrath of the Lich King Classic class overview/stat-priority guidance.
-- Reviewed: 2026-04-20.
ItemScore.RuleSources = {
	DEATHKNIGHT = {
		[1] = {label="Wowhead WotLK Classic Blood DK Overview", url="https://www.wowhead.com/wotlk/guide/classes/death-knight/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Frost DK Overview", url="https://www.wowhead.com/wotlk/guide/classes/death-knight/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Unholy DK Overview", url="https://www.wowhead.com/wotlk/guide/classes/death-knight/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	DRUID = {
		[1] = {label="Wowhead WotLK Classic Balance Druid Overview", url="https://www.wowhead.com/wotlk/guide/classes/druid/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Feral DPS Druid Overview", url="https://www.wowhead.com/wotlk/guide/classes/druid/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Feral Tank Druid Overview", url="https://www.wowhead.com/wotlk/guide/classes/druid/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[4] = {label="Wowhead WotLK Classic Restoration Druid Overview", url="https://www.wowhead.com/wotlk/guide/classes/druid/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	HUNTER = {
		[1] = {label="Wowhead WotLK Classic Beast Mastery Hunter Overview", url="https://www.wowhead.com/wotlk/guide/classes/hunter/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Marksmanship Hunter Overview", url="https://www.wowhead.com/wotlk/guide/classes/hunter/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Survival Hunter Overview", url="https://www.wowhead.com/wotlk/guide/classes/hunter/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	MAGE = {
		[1] = {label="Wowhead WotLK Classic Arcane Mage Overview", url="https://www.wowhead.com/wotlk/guide/classes/mage/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Fire Mage Overview", url="https://www.wowhead.com/wotlk/guide/classes/mage/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Frost Mage Overview", url="https://www.wowhead.com/wotlk/guide/classes/mage/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	PALADIN = {
		[1] = {label="Wowhead WotLK Classic Holy Paladin Overview", url="https://www.wowhead.com/wotlk/guide/classes/paladin/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Protection Paladin Overview", url="https://www.wowhead.com/wotlk/guide/classes/paladin/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Retribution Paladin Overview", url="https://www.wowhead.com/wotlk/guide/classes/paladin/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	PRIEST = {
		[1] = {label="Wowhead WotLK Classic Discipline Priest Overview", url="https://www.wowhead.com/wotlk/guide/classes/priest/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Holy Priest Overview", url="https://www.wowhead.com/wotlk/guide/classes/priest/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Shadow Priest Overview", url="https://www.wowhead.com/wotlk/guide/classes/priest/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	ROGUE = {
		[1] = {label="Wowhead WotLK Classic Assassination Rogue Overview", url="https://www.wowhead.com/wotlk/guide/classes/rogue/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Combat Rogue Overview", url="https://www.wowhead.com/wotlk/guide/classes/rogue/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Subtlety Rogue Overview", url="https://www.wowhead.com/wotlk/guide/classes/rogue/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	SHAMAN = {
		[1] = {label="Wowhead WotLK Classic Elemental Shaman Overview", url="https://www.wowhead.com/wotlk/guide/classes/shaman/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Enhancement Shaman Overview", url="https://www.wowhead.com/wotlk/guide/classes/shaman/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Restoration Shaman Overview", url="https://www.wowhead.com/wotlk/guide/classes/shaman/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	WARLOCK = {
		[1] = {label="Wowhead WotLK Classic Affliction Warlock Overview", url="https://www.wowhead.com/wotlk/guide/classes/warlock/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Demonology Warlock Overview", url="https://www.wowhead.com/wotlk/guide/classes/warlock/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Destruction Warlock Overview", url="https://www.wowhead.com/wotlk/guide/classes/warlock/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	WARRIOR = {
		[1] = {label="Wowhead WotLK Classic Arms Warrior Overview", url="https://www.wowhead.com/wotlk/guide/classes/warrior/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[2] = {label="Wowhead WotLK Classic Fury Warrior Overview", url="https://www.wowhead.com/wotlk/guide/classes/warrior/overview", reviewed="2026-04-20", mode="normalized_priority"},
		[3] = {label="Wowhead WotLK Classic Protection Warrior Overview", url="https://www.wowhead.com/wotlk/guide/classes/warrior/overview", reviewed="2026-04-20", mode="normalized_priority"},
	},
	CUSTOM = {
		[1] = {label="Custom user-managed weights for unknown server classes/specs", reviewed="2026-05-27", mode="user_configurable"},
		[2] = {label="Custom user-managed weights for unknown server classes/specs", reviewed="2026-05-27", mode="user_configurable"},
		[3] = {label="Custom user-managed weights for unknown server classes/specs", reviewed="2026-05-27", mode="user_configurable"},
	},
}
