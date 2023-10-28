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
player addWeapon "CUP_arifle_M16A1";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addWeapon "CUP_hgun_M9A1";
player addHandgunItem "CUP_15Rnd_9x19_M9";

comment "Add containers";
player forceAddUniform "CUP_U_B_USMC_MCCUU";
player addVest "CUP_V_I_RACS_Carrier_Rig_wdl_3";
player addBackpack "TFAR_rt1523g_big_rhs";
player addGoggles "G_Lowprofile";
player addHeadgear "CUP_H_LWHv2_OD";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {player addItemToVest "CUP_15Rnd_9x19_M9";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellRed";};
for "_i" from 1 to 1 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 1 do {player addItemToVest "CUP_30Rnd_556x45_Stanag_Tracer_Red";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ToolKit";
player addItemToBackpack "ACE_Fortify";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemcTab";
player linkItem "CUP_NVG_PVS15_black";

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];