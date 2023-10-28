// Kiste Zug Typ V - Waffen & Zubehör
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_v.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["launch_I_Titan_short_F",1];
_box addItemCargoGlobal ["launch_I_Titan_F",1];
_box addItemCargoGlobal ["Titan_AT",5];
_box addItemCargoGlobal ["Titan_AA",5];