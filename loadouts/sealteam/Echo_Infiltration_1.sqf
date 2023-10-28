if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "CUP_arifle_HK416_Wood";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_OD_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_od";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_EMAG_Olive";
player addWeapon "CUP_hgun_M17_Green";
player addHandgunItem "CUP_21Rnd_9x19_M17_Green";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Fleck_Crye";
player addVest "CUP_V_B_GER_Armatus_BB_Fleck";
player addBackpack "CUP_B_GER_Medic_Flecktarn";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_CableTie";};
player addItemToVest "CUP_NVG_PVS15_black";
for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV_500";};
for "_i" from 1 to 6 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 5 do {player addItemToVest "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToVest "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToVest "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToVest "kat_naloxone";};
for "_i" from 1 to 5 do {player addItemToVest "kat_TXA";};
player addItemToVest "kat_Pulseoximeter";
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_EMAG_Olive";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_21Rnd_9x19_M17_Green";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "B_IR_Grenade";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_surgicalKit";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "CUP_H_OpsCore_Covered_Fleck";
player addItemToBackpack "CUP_muzzle_snds_M16_camo";
for "_i" from 1 to 2 do {player addItemToBackpack "CUP_HandGrenade_M67";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_M84";};
player addHeadgear "CUP_H_Ger_Boonie_Flecktarn";
player addGoggles "CUP_G_ESS_BLK_Scarf_Face_Grn";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;