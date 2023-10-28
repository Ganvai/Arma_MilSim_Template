//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Echo
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
player addWeapon "CUP_arifle_Mk16_CQC_AFG_woodland";
player addWeapon "CUP_hgun_Mk23";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_g33_hws_od";
player addPrimaryWeaponItem "cup_acc_anpeq_15_flashlight_od_l";
player addPrimaryWeaponItem "cup_muzzle_snds_m16_camo";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addHandgunItem "cup_acc_mk23_lam_f";
player addHandgunItem "cup_muzzle_snds_mk23";
player addHandgunItem "CUP_12Rnd_45ACP_mk23";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_CRYE_V1_Full";
player addHeadgear "CUP_H_OpsCore_Covered_MCAM_US_SF";
player addVest "CUP_V_B_Armatus_BB_MCam";
player addBackpack "TFAR_rt1523g_big_bwmod";
player addgoggles "CUP_G_ESS_BLK_Scarf_Face_Grn";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";
player addWeapon "Rangefinder";
player linkItem "ItemcTab";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_12Rnd_45ACP_mk23";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToUniform "ACE_surgicalKit";

for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
player addItemToBackpack "kat_Pulseoximeter";

for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};

//------------------------------------------------------------------
//	ACE Items
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Clacker";
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];