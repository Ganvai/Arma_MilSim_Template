// Kiste Zug Typ IV - Ausrüstung
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_iv.sqf";

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
_box addBackpackCargoGlobal ["TFAR_rt1523g_big_rhs",1];
_box addBackpackCargoGlobal ["CUP_B_USMC_AssaultPack",2];
_box addItemCargoGlobal ["Rangefinder",5];



