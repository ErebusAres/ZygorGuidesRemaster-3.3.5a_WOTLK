Place your builds in files Build01.lua, Build02.lua, ... in this directory, to have them auto-loaded and startup.
You may place multiple builds in one file.
The syntax of a build file is as follows:

	if not ZygorTalentAdvisor then return end
	ZygorTalentAdvisor:RegisterBuild(class,name,talents)
	ZygorTalentAdvisor:RegisterBuild(class,name,talents)
	ZygorTalentAdvisor:RegisterBuild(class,name,talents)

with:
	class - one of "HUNTER","MAGE","PALADIN","DRUID","WARRIOR","ROGUE","DEATHKNIGHT" for character builds,
		 or one of "PET Tenacity","PET Ferocity","PET Cunning" for pets.
	name - the title of the build.
	talents - the list of talents, in the format:
		{"Talent","Talent","Next Talent","Yet another talent", .....}
		 - named talents, to be taken in proper order, you can put each on a new line if you want
		 
		Talents can also be supplied as a string of digits, "532122030000000000000225100202001312..."
		 - this is the Blizzard talent calculator format; talents are applied left-to-right, with no manual tweaking possible, though.
		 
Example build file:

	if not ZygorTalentAdvisor then return end

	ZygorTalentAdvisor:RegisterBuild("DEATHKNIGHT","Blood with bits of Frost and Unholy",{
	"Anticipation",
	"Anticipation",
	"Anticipation",

	"Runic Power Mastery",
	"Runic Power Mastery",
	"Toughness",
	"Toughness",

	"Blade Barrier",
	"Blade Barrier",
	"Blade Barrier",
	"Blade Barrier",
	"Blade Barrier",
	"Two-Handed Weapon Specialization",
	"Two-Handed Weapon Specialization"
	}

	ZygorTalentAdvisor:RegisterBuild("DEATHKNIGHT","Frostie","00000000000000000000000000002250005105003101000000000000000000000000000000000000000000")
