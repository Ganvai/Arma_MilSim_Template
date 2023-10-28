// Kiste Zug Typ I - Infantrie-Munition
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_i.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag", 40];
_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red", 20];

_box addItemCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", 8];
_box addItemCargoGlobal ["CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch", 4];

_box addItemCargoGlobal ["CUP_20Rnd_762x51_DMR", 10];
_box addItemCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", 5];

_box addItemCargoGlobal ["CUP_15Rnd_9x19_M9", 5];
