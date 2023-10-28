// Kiste Echo Typ II - Explosivmunition
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_echo_typ_ii.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_6Rnd_HE_M203",10];
_box addItemCargoGlobal ["CUP_6Rnd_Smoke_M203",5];
_box addItemCargoGlobal ["B_IR_Grenade",5];
_box addItemCargoGlobal ["DemoCharge_Remote_Mag", 4];
_box addItemCargoGlobal ["SmokeShellGreen",5];
_box addItemCargoGlobal ["SmokeShellPurple",5];
_box addItemCargoGlobal ["SmokeShellRed",5];
_box addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 4];
_box addItemCargoGlobal ["CUP_HandGrenade_M67",10];
_box addItemCargoGlobal ["SmokeShell",10];
_box addItemCargoGlobal ["ACE_M84",10];










