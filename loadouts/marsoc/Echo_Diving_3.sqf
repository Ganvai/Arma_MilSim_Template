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
player addWeapon "CUP_smg_MP5SD6";
player addWeapon "CUP_hgun_Mk23";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_microt1_low";
player addPrimaryWeaponItem "cup_acc_anpeq_15_top_flashlight_black_l";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_Subsonic_9x19_MP5";
player addHandgunItem "cup_acc_mk23_lam_f";
player addHandgunItem "cup_muzzle_snds_mk23";
player addHandgunItem "CUP_12Rnd_45ACP_mk23";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "U_B_Wetsuit";
player addHeadgear "CUP_H_OpsCore_Black";
player addVest "V_RebreatherB";
player addBackpack "TFAR_rt1523g_big_bwmod";
player addgoggles "G_B_Diving";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";
player linkItem "ItemcTab";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------
for "_i" from 1 to 3 do {player addItemToBackpack "CUP_30Rnd_Subsonic_9x19_MP5";};
for "_i" from 1 to 4 do {player addItemToUniform "CUP_30Rnd_Subsonic_9x19_MP5";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_12Rnd_45ACP_mk23";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_surgicalKit";

for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
player addItemToBackpack "kat_Pulseoximeter";

for "_i" from 1 to 2 do {player addItemToBackpack "ACE_M84";};

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