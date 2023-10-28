//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						ZUG_Sierra_TrpFhr
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//------------------------------------------------------------------
//	Waffen
//------------------------------------------------------------------	
player addWeapon "CUP_srifle_Mk18_wdl";
player addWeapon "CUP_hgun_M9A1";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_acc_anpeq_15_flashlight_black_l";
player addPrimaryWeaponItem "cup_optic_acog_reflex_wood";
player addPrimaryWeaponItem "cup_bipod_harris_1a2_l_blk";
player addPrimaryWeaponItem "muzzle_snds_B";

//Waffen Munition
player addPrimaryWeaponItem "20Rnd_762x51_Mag";
player addHandgunItem "CUP_15Rnd_9x19_M9";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_USMC_FROG4_WMARPAT";
player addHeadgear "CUP_H_LWHv2_MARPAT_comms";
player addVest "CUP_V_JPC_tlbelt_rngr";
player addBackpack "CUP_B_USMC_AssaultPack";
player addgoggles "CUP_G_Oakleys_Clr";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

player addWeapon "Rangefinder";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 3 do {player addItemToVest "20Rnd_762x51_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_20Rnd_762x51_Mag_Tracer";};

for "_i" from 1 to 2 do {player addItemToVest "CUP_15Rnd_9x19_M9";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};

//------------------------------------------------------------------
//	Erste Hilfe in Uniform
//------------------------------------------------------------------	
player addItemToBackpack "ACE_surgicalKit";

player addItemToBackpack "ACE_tourniquet";

for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};

for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};

for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ItemcTabHCam";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};

player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];




