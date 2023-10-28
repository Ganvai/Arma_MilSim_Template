//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Sanitater
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Sanitater"];

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
player addWeapon "CUP_arifle_G36KA3_grip";
player addWeapon "CUP_hgun_M17_Black";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_acc_llm_black";
player addPrimaryWeaponItem "cup_optic_elcan_specterdr_kf_rmr_black_pip";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------

switch tarnfarbeV do {
	case "bwfleck": {
		player forceAddUniform "CUP_U_B_GER_Fleck_Crye";
		player addHeadgear "CUP_H_OpsCore_Covered_Fleck";
		player addVest "GRE_PlateCarrier1_Flecktarn";
		player addGoggles "CUP_G_PMC_Facewrap_Black_Glasses_Dark";
		player addBackpack "CFP_Kitbag_Flecktarn";
	};
	case "bwtropen": {
		player forceAddUniform "CUP_U_B_GER_Crye";
		player addHeadgear "CUP_H_OpsCore_Covered_Tropen";
		player addVest "GRE_PlateCarrier1_Tropentarn";
		player addGoggles "CUP_G_PMC_Facewrap_Tan_Glasses_Dark";
		player addBackpack "CFP_Kitbag_Tropentarn";	
	};
	case "bwwinter": {
		player forceAddUniform "CFP_U_FieldUniform_flecktarn_snow";
		player addHeadgear "CFP_OPS2017_Helmet_White";
		player addVest "GRE_PlateCarrier1_Grau";
		player addGoggles "CUP_G_ESS_BLK_Scarf_Face_White";
		player addBackpack "CFP_Kitbag_White";
	};	
};

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 4 do {player addItemToVest "CUP_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";};

for "_i" from 1 to 2 do {player addItemToVest "CUP_17Rnd_9x19_M17_Black";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 6 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_splint";};

for "_i" from 1 to 3 do {player addItemToVest "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 15 do {player addItemToVest "kat_larynx";};
for "_i" from 1 to 5 do {player addItemToVest "kat_IO_FAST";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_surgicalKit";

for "_i" from 1 to 50 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 22 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 25 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_EACA";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_nitroglycerin";};
player addItemToBackpack "kat_Carbonate";
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "kat_naloxone";
player addItemToBackpack "kat_BVM";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_EarPlugs";};

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
