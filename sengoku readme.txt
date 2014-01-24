Sengoku for Crusader Kings II
Based on Sengoku

Compatible Mods: NB+, TrueMute
Recommended DLC: Mongol Face Pack

*****************
* General Notes *
*****************
New Taoic religion group with Buddhism, Amidism, and Shintoism
Barely any women/marriages defined by default
No ships, you can walk to and from every island
Showa emperors have special trait that works similar to muslim sayyid
Emperor head of Shinto faith (unplayable)
No Mongols

****************
* Installation *
****************
1) If you have an older version of the mod installed, delete those older versions first.
2) Unzip to My Documents\Paradox Interactive\Crusader Kings II\mod.
3) Make sure the mod was extracted to the correct folder. Inside the 'mod' folder, there should be a sengoku.mod file. If there is not, and instead another 'mod' folder, you extracted the mod incorrectly.
4) Unzip any Hotfixes to your Crusader Kings II folder (same place you installed the mod in step 2).
5) Start the CK2 launcher and check 'Sengoku [Required] Version X.XX' in the list of mods.
6) Check any optional modules you want to use along with Sengoku.
7) Hit play.

*************
* Changelog *
*************
2.03a
	.mod hotfix
	
2.03
	re-added ck2plus tyranny/dishonor system
	fix go/calligraphist lifestyle choices
	re-added family relations
	removed male headgear
	
2.02
	more ashikaga/shogunate history
	new de jure kingdoms around inland sea - Note: new kingdoms will not show up in saved games.
	various tweaks
	
2.01
	removed superfluous files
	fixed bugs
	becoming emperor ambition now gives 1500 prestige
	re-added charity decision
	added go/calligraphist lifestyles
	added samurai retinue
	re-added ultimogeniture/tanistry factions
	added Viet religious events
	Showa dynasty finally has the proper kamon
	shoguns can change succession laws
	
2.00
	removed ck2plus
	update to patch 2.02
	added dejure kingdom titles
	
1.09
	update ck2plus 2.01.4
	fix COA
	update patch 1.103
	
1.08
	update patch 1.102
	added missing combat images
	updated ck2plus 2.01.2
	map now properly lit from the upper left
	
1.07
	fix emperor in 1551
	update patch 1.092
	updated to ck2plus 1.33.22
	pirates now korean
	
1.06
	updated to ck2plus 1.33.11
	added korean culture
	renamed trader dynasties
	added sengoku demo settlements
	emperor/shogun can revoke duchies at no prestige/relation cost
	changed name/display of shogunate title, does not change name on dynasty change, now emperor tier
	added 8 titular king tier titles: chugoku, shikoku, kyushu, kanto, kansai, chubu, tohoku, hokuriko
	changed scenario setup
	nanban traders now have their own mercs, will also start with some cash to expand
	various minor fixes
	
1.05a
	some cb fixes
	
1.05
	added placeholder flags
	added a daughter to each nanban trader
	patch 1.091 update
	CK2plus update
	
1.04
	breaks savegames
	fix indexes map files
	fix various typoes
	updated CK2plus
	renamed Pure Land Buddhism to Amidism
	made sure k_ikko-ikki is for theocracies, exists in 1551
	you should not be able to enforce dejure claim on the county of kadono if the emperor holds it
	added flavour events
	no stonewalls until 16th century by default
	new barony naming: -jo for castles, -cho for cities, -ji for temples
	no "Castle/Cityid" dynasties
	tanegashima its own province
	added ports to the map, reenabled buildings, but still no ships
	added a playable republic in 1551
	
1.03b
	missing succession laws in maintenance decisions
	
1.03a
	added missing faction CBs for succession laws
	
1.03
	fix succession laws
	added a seperate tournament decision for japanese, Budo
	republic plot/ambition adjustment
	feudal elective switched with tanistry
	low stone walls for all castles
	default succession type for dukes is now primogeniture
	reduced max demesne size
	added republican feuds, how unfitting they may be for the setting
	mongol faces now automatically used when present
	new and changed localisations
	taoic priests should be all bald now
	no curly hair for asians
	
1.02
	updated to work with 1.09
	changed some localisations
	added temples to a few provicnes
	changed some characters
	lowered shogunate CA
	fix AI religious conversions
	added "restore emperor" CB
	added Ultimogeniture
	
1.01
	taoics can have 2 wives (Req Sword of Islam)
	no more galleys or port buildings
	all court titles but calligrapher share muslim events.
	added optional modules

************************
* Random Modding Notes *
************************
character ids
	1-1099 random
	1100+ Ashikaga
	1500+ nanba traders
	1900+ Showa
	2200+ fujiwara
	
event ids
	71500 Ronin visiting
	+100 to Aztec modifications
	namespace BUDO
	namespace SENGOKU_LIFE
	namespace Sumo


de_jure_liege in titles doesn't work for counties?

values to change brightness, etc
gfx\fx
	standardfuncsgfx.fxh
		ambiet brightness
			float vAmbient = 0.5f;
		
		fog related
			float vBegin = 300.0f;
			float vEnd = 1200.0f;
			return lerp( vColor, float3( 0.42f, 0.4f, 0.4f ), saturate( vMin ) * vFogFactor );
			
	restorescene.lua
		general map contrast, brightness
			static const float3 HSVTweak = float3( 0.0f, 0.72f, 1.0f );
			static const float3 ColorBalance = float3( 1.1f, 1.0f, 0.9f );
			static const float2 LevelValue = float2( 0.03f, 0.5f );    // First: DARKNESS 0.0 Normal, the higher the darker   Second: Brightness, Lower = brighter
			

coat_of_arms=
{
	data=
	{
		0 0 0 23 1 7 0
	}
	religion="buddhism"
}

?pattern?	template	texture		texture_internal	color1	color2	color3


positions.txt

	To do positions, take the provinces bmp, flip it vertically in a graphics editor and then the x,y position in the graphics editor will correspond to the in-game one.

		position=
		{
			cityx city unitx unity councilx councily textx texty portx porty
		}

		rotation=
		{
			cityrot unitrot councilrot textrot portrot
		}
	 
	etc

	Worth noting is that text position does not actually matter, the game automatically aligns the text to the province. 
	I also don't think any rotations except port matters, and all provinces appear to have the same height settings.

		The line "nudge_allowed=yes" in "settings.txt" will turn on the in-game map positioning editor (there is a button called "Nudge" in the starting screen.)
		
	Nudge always writes into main map folder!!!
	
Tanegashima = Osumi province
Dejima = Artifical Island in bay of Nagasaki = Sonoki province
Hirado = City in Nagasaki Prefecture = Matsura province


world_normal_height.bmp inverted red/blue channels to light map from upper left, according to cartography conventions