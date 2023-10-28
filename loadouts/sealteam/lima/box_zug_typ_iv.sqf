// Kiste Zug Typ IV - Ausrüstung
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_iv.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["ACE_EarPlugs",15];
_box addItemCargoGlobal ["ACE_CableTie",30];
_box addItemCargoGlobal ["ACE_EntrenchingTool",5];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",15];
_box addItemCargoGlobal ["ACE_wirecutter",5];
_box addItemCargoGlobal ["CUP_NVG_PVS15_black",15];
_box addItemCargoGlobal ["ItemAndroid",2];
_box addItemCargoGlobal ["ItemcTab",2];
_box addBackpackCargoGlobal ["TFAR_rt1523g_big_bwmod",1];
_box addBackpackCargoGlobal ["B_AssaultPack_rgr",5];
_box addItemCargoGlobal ["Rangefinder",5];



