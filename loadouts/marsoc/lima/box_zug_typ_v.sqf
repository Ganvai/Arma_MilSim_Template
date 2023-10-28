// Kiste Zug Typ V - Waffen & Zubehör
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_v.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["CUP_arifle_Mk17_STD_AFG_woodland",2];
_box addItemCargoGlobal ["CUP_srifle_Mk18_wdl",2];
_box addItemCargoGlobal ["CUP_arifle_Mk17_STD_EGLM_woodland",2];
_box addItemCargoGlobal ["cup_optic_aimm_m68_blk",5];
_box addItemCargoGlobal ["cup_optic_acog_reflex_wood",5];