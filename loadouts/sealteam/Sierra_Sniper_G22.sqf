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
player addWeapon "CUP_srifle_G22_wdl";
player addPrimaryWeaponItem "CUP_muzzle_snds_AWM";
player addPrimaryWeaponItem "optic_LRPS";
player addPrimaryWeaponItem "CUP_5Rnd_762x67_G22";
player addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod_od";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Fleck_Crye";
player addVest "CUP_V_B_GER_PVest_Fleck_RFL";
player addBackpack "CUP_B_GER_Pack_Flecktarn";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_EarPlugs";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ItemcTabHCam";
player addItemToVest "ACE_Kestrel4500";
for "_i" from 1 to 3 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 8 do {player addItemToVest "ACE_salineIV_250";};
for "_i" from 1 to 3 do {player addItemToVest "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {player addItemToVest "CUP_5Rnd_762x67_G22";};
player addItemToBackpack "CUP_H_OpsCore_Covered_Fleck";
player addItemToBackpack "CUP_NVG_PVS15_black";
for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
player addHeadgear "CUP_H_Ger_Cap_EP_Grn1";
player addGoggles "CUP_G_ESS_KHK_Scarf_Face_Grn";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];