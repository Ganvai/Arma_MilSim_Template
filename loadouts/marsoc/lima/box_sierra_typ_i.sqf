// Kiste Sierra Typ I - Munition
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_sierra_typ_i";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_5Rnd_762x51_M24", 15];
_box addItemCargoGlobal ["CUP_5Rnd_762x67_M2010_M", 10];
_box addItemCargoGlobal ["CUP_5Rnd_TE1_Red_Tracer_762x67_M2010_M", 10];
_box addItemCargoGlobal ["7Rnd_408_Mag", 15];
_box addItemCargoGlobal ["CUP_20Rnd_762x51_DMR", 40];
_box addItemCargoGlobal ["CUP_15Rnd_9x19_M9", 20];
