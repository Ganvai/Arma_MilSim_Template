// Kiste Zug Typ V - Waffen & Zubehör
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_v.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["CUP_launch_Mk153Mod0",2];
_box addItemCargoGlobal ["CUP_SMAW_HEAA_M",8];