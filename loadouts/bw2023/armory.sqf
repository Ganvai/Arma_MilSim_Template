/*
	Waffenkammer
	
	In der Waffenkammer können die Spieler ihr eigenes Loadout zusammenstellen.
	
	Im ersten Schritt wird in mehreren Arrays das gesamte Material abgebildet. 
	
	Im zweiten Schritt wird das Material entsprechend den Rollen der Spieler gesammelt.
	
	Zuletzt wird das Arsenal erstellt.
	
	Nachdem das Arsenal geschlossen wurde, wird es gelöscht. Dies ist nötig, damit bei einem
	Rollenwechsel die Items weiterhin korrekt dargestellt werden und nicht Items der vorigen
	Rolle angezeigt werden.
*/

// Get Player Role
_playerGrp = group player;
_loadout = player getVariable "loadout";
//Needed for waitUntil after Arsenal is closed, combined with Event Handler on Arsenal
player setVariable ["arsenalClosed", false];

_equipment = [];

//-------------------------------------------------------------------------
//
// 				Pre-Fill für mehrfach genutzte Arrays
//
//-------------------------------------------------------------------------

_zug = [];
_zug append kleidung_ar;
_zug pushback uniforms;
_zug pushback helmet;
_zug pushback vests;
_zug pushback rucksack;
_zug pushback rucksack_big;
_zug pushback primary;
_zug pushback primary_scope;
_zug pushback primary_attachement1;
_zug pushback primary_attachement2;
_zug pushback primary_mag;
_zug pushback primary_tracer;
_zug pushback grenadier_scope;
_zug pushback grenadier_attachement1;
_zug pushback grenadier_attachement2;
_zug pushback grenadier_mag;
_zug pushback grenadier_tracer;
_zug pushback UGL_HE;
_zug pushback UGL_Smoke;
_zug pushback UGL_Flare;
_zug pushback mg_scope;
_zug pushback mg_attachment1;
_zug pushback mg_attachment2;
_zug pushback mg_mag;
_zug pushback mg_tracers;
_zug pushback dm_attachment1;
_zug pushback dm_attachment2;
_zug pushback dm_mags;
_zug pushback dm_tracer;
_zug pushback handgun;
_zug pushback handgun_mag;
_zug pushback launcher_at_scope;
_zug pushback launcher_at_ammo1;
_zug pushback launcher_at_ammo2;
_zug pushback launcher_at_spotting;
_zug pushback launcher_at_light;
_zug pushback launcher_aa_ammo;
_zug pushback grenades;
_zug pushback smoke_white;
_zug pushback smoke_green;
_zug pushback smoke_red;
_zug pushback comms;
_zug pushback nvg;
_zug pushback IRStrobe;
_zug pushback watch;
_zug pushback minedetector;
_zug append zug_equipment_ar;
_zug append facewear_ar;

_autorifle = [];
_autorifle pushback autorifle;
_autorifle pushback autorifle_scope;
_autorifle pushback autorifle_attachment1;
_autorifle pushback autorifle_attachment2;
_autorifle pushback autorifle_mag;
_autorifle pushback autorifle_tracers;
_autorifle append autorifle_equipment_ar;

_medic_standard = [		
				"ACE_fieldDressing",
				"ACE_elasticBandage",
				"ACE_packingBandage",
				"ACE_quikclot",
				
				"ACE_tourniquet",
				"ACE_splint",

				"ACE_morphine",

				"ACE_salineIV_500",

				"kat_chestSeal",
				"kat_pocketBVM"
];

_medic_ehb = [			
				"ACE_bodyBag",
				"ACE_epinephrine",
				"ACE_adenosine",

				"kat_Pulseoximeter",
				"kat_TXA",
				"kat_larynx",
				"kat_IO_FAST",
				"kat_IV_16",

				"kat_fentanyl",
				"kat_EACA",
				"kat_naloxone",
				"kat_ketamine",
				"kat_Carbonate",
				
				"kat_BVM",
				"kat_oxygenTank_150_Item"
				
];

_medic_san = [			
				"ACE_marker_flags_black",
				"ACE_marker_flags_green",
				"ACE_marker_flags_yellow",
				"ACE_marker_flags_red",

				"ACE_surgicalKit",
				
				"kat_norepinephrine",
				"kat_nitroglycerin"
];

_medic_doc = [
				"ACE_personalAidKit",
				"kat_AED",
				"kat_scalpel",

				"kat_norepinephrine",
				"kat_nalbuphine",
				"kat_lorazepam"			
];


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//			Rollenspezifisches Equipment erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

//------------------------------------------------------------------
//						Schütze
//------------------------------------------------------------------	

if (_loadout == "Rifleman") then {
	_equipment append _zug;
	_equipment append _medic_standard;

};

//------------------------------------------------------------------
//						Grenadier
//------------------------------------------------------------------	

if (_loadout == "Grenadier") then {
	_equipment pushback grenadier_primary;
	_equipment append grenadier_equipment_ar;
	_equipment append _zug;
	_equipment append _medic_standard;
};


//------------------------------------------------------------------
//						DM
//------------------------------------------------------------------	
	
if (_loadout == "DM") then {
	_equipment pushback dm;
	_equipment pushback dm_scope;
	_equipment append dm_equipment_ar;
	_equipment append _zug;
	_equipment append _medic_standard;
};


//------------------------------------------------------------------
//						MG
//------------------------------------------------------------------	
	
if (_loadout == "MG") then {
	_equipment append _zug;
	_equipment pushback mg;
	_equipment append mg_equipment_ar;
	_equipment append _medic_standard;
};


//------------------------------------------------------------------
//						Medic
//------------------------------------------------------------------	
	
if (_loadout == "Medic") then {					
	_equipment append _zug;
	_equipment append _medic_standard;
	_equipment append _medic_ehb;
	_equipment append _medic_san;
};


//------------------------------------------------------------------
//						AT
//------------------------------------------------------------------	

if (_loadout == "AT" || _loadout == "ATA" || _loadout == "AA" || _loadout == "AT-Light") then {
	_equipment pushback launcher_at;
	_equipment pushback launcher_aa;
	_equipment pushback launcher_at_scope;
	_equipment append at_equipment_ar;
	_equipment append _zug;
	_equipment append _medic_standard;
};


//------------------------------------------------------------------
//						Squadleader
//------------------------------------------------------------------	
	
if (_loadout == "Squadleader") then {
	_equipment append _zug;
	_equipment pushback grenadier_primary;
	_equipment append grenadier_equipment_ar;
	_equipment append _medic_standard;
	_equipment pushback binocs_tier1;
	_equipment pushback cTab_small;
	_equipment pushback explosivedevice;
	_equipment pushback cTabcam;
	_equipment append explosives;
};


//------------------------------------------------------------------
//						Groupleader
//------------------------------------------------------------------	
	
if (_loadout == "Groupleader") then {
	_equipment append _zug;
	_equipment pushback grenadier_primary;
	_equipment append grenadier_equipment_ar;
	_equipment append _medic_standard;
	_equipment pushback binocs_tier1;
	_equipment pushback binocs_tier2;
	_equipment pushback laserdesignator_bats;
	_equipment pushback cTab_small;
	_equipment pushback cTab_big;
	_equipment pushback explosivedevice;
	_equipment pushback cTabcam;
	_equipment pushback rucksack_lr;
	_equipment append explosives;
};

//------------------------------------------------------------------
//						TOC
//------------------------------------------------------------------
if (_playerGrp == grptoc) then {
	_equipment pushback grenadier_primary;
	_equipment append grenadier_equipment_ar;

	_equipment pushback dm;
	_equipment pushback dm_scope;
	_equipment append dm_equipment_ar;

	_equipment pushback mg;
	_equipment append mg_equipment_ar;
	
	_equipment pushback launcher_at;
	_equipment pushback launcher_aa;
	_equipment pushback launcher_at_scope;
	_equipment append at_equipment_ar;
	
	_equipment pushback diving_suit;
	_equipment pushback diving_helmet;
	_equipment pushback diving_weste;
	_equipment pushback diving_facewear;
	_equipment pushback diving_backpack;
	_equipment pushback diving_primary;
	_equipment pushback diving_primary_scope;
	_equipment pushback diving_primary_attachement1;
	_equipment pushback diving_primary_attachement2;
	_equipment pushback diving_primary_silencer;
	_equipment pushback diving_primary_mag;
	
	_equipment pushback sniper;
	_equipment pushback sniper_scope;
	_equipment pushback sniper_attachement1;
	_equipment pushback sniper_attachement2;
	_equipment pushback sniper_silencer;
	_equipment pushback sniper_mag;
	_equipment append sierra_equipment_ar;

	_equipment pushback pilot_uniforms;
	_equipment pushback pilot_helmet;
	_equipment pushback pilot_weste;
	_equipment pushback pilot_facewear;
	_equipment pushback pilot_primary;
	_equipment pushback pilot_primary_scope;
	_equipment pushback pilot_primary_mag;
	_equipment pushback pilot_handgun;
	_equipment pushback pilot_handgun_mag;
	_equipment pushback pilot_nvg;
	_equipment pushback lima_equipment_ar;
	
	_equipment append _zug;
	_equipment append _autorifle;
	_equipment append _medic_standard;
	_equipment append _medic_ehb;
	_equipment append _medic_san;
	_equipment append _medic_doc;
	_equipment pushback binocs_tier1;
	_equipment pushback binocs_tier2;
	_equipment pushback laserdesignator_bats;
	_equipment pushback cTab_small;
	_equipment pushback cTab_big;
	_equipment pushback explosivedevice;
	_equipment pushback cTabcam;
	_equipment pushback flashbang;
	_equipment pushback ir_grenade;
	_equipment pushback defusalkit;
	_equipment pushback rangecard;
	_equipment pushback windmesser;
	_equipment pushback rucksack_lr;
	_equipment pushback uav_Terminal;
	_equipment append explosives;
					
};

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Arsenal Erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	


// Fill ACE Arsenal
[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;

// Open ACE Arsenal
_waffenkammer = [player, player, false] call ace_arsenal_fnc_openBox;

// Message for Player which options are available
titleText ["<t color='#ffffff' size='2'>Die Waffenkammer steht in vollem Umfang zur Verfügung.<br/>Nach Waffenwechsel AUFMUNITIONIEREN nicht vergessen!</t>", "PLAIN", 1, true, true];

// Add Event Handler for closing the Arsenal
_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

// Wait until Arsenal is closed by Player
waitUntil { player getVariable "arsenalClosed" };

[player, true, false] call ace_arsenal_fnc_removeVirtualItems;