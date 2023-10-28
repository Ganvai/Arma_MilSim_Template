//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Fox_Nahsicherer
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Fox_Nahsicherer"];

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
//	Kleidung
//------------------------------------------------------------------

switch tarnfarbeV do {
	case "AOR1": {
		player forceAddUniform "CUP_H_OpsCore_Covered_AOR1_US";
		player addHeadgear "CFP_OpsC_Covered2_AOR1";
		player addVest "CFP_LBT6094_operator_Multicam";
		player addGoggles "CUP_G_PMC_Facewrap_Tan_Glasses_Dark";
		player addBackpack "CFP_AssaultPack_Multicam";
		
		//Rifle
		player addWeapon "CUP_arifle_M4A1_SOMMOD_Grip_black";

		player addPrimaryWeaponItem "cup_optic_acog_reflex_desert";
		player addPrimaryWeaponItem "cup_acc_anpeq_15_top_flashlight_tan_l";

		player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE_RPL";

		for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_COYOTE_RPL";};
		for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_COYOTE_RPL_Tracer_Red";};		
	};

	case "AOR2": {
		player forceAddUniform "CUP_H_OpsCore_Covered_AOR2_US";
		player addHeadgear "CFP_OpsC_Covered2_AOR2";
		player addVest "CFP_LBT6094_operator_Multicam";
		player addGoggles "CUP_G_PMC_Facewrap_Tropical_Glasses_Dark";
		player addBackpack "CFP_AssaultPack_Multicam";

		//Rifle
		player addWeapon "CUP_arifle_M4A1_SOMMOD_Grip_green";

		player addPrimaryWeaponItem "cup_optic_acog_reflex_wood";
		player addPrimaryWeaponItem "cup_acc_anpeq_15_top_flashlight_od_l";

		player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_OD_RPL";

		for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_OD_RPL";};
		for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_OD_RPL_Tracer_Red";};
	};
	
	case default {
		player forceAddUniform "CUP_U_CRYE_G3C_MC_US_V2";
		player addHeadgear "CUP_H_OpsCore_Covered_MCAM_US";
		player addVest "CFP_LBT6094_operator_Multicam";
		player addGoggles "CUP_G_PMC_Facewrap_Tan_Glasses_Dark";
		player addBackpack "CFP_AssaultPack_Multicam";	

		//Rifle
		player addWeapon "CUP_arifle_M4A1_SOMMOD_Grip_black";

		player addPrimaryWeaponItem "cup_optic_acog";
		player addPrimaryWeaponItem "cup_acc_anpeq_15_top_flashlight_black_l";

		player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK_RPL";

		for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_BLACK_RPL";};
		for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_BLACK_RPL_Tracer_Red";};	
	};	
};

//------------------------------------------------------------------
//	Pistol
//------------------------------------------------------------------	
player addWeapon "ACE_VMM3";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player addWeapon "Rangefinder";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_3";
player linkItem "ItemAndroid";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 14 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 24 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_500";};

for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_adenosine";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "ACE_Clacker";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

