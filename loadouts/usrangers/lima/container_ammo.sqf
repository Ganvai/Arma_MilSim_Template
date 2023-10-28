// Kiste Sanität Typ II - Spezial
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\container_ammo.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


//Standard Mags
_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 999];
_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red",600];


//DM
_box addItemCargoGlobal ["CUP_20Rnd_762x51_DMR", 500];
_box addItemCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", 500];


//MG
_box addItemCargoGlobal ["CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch", 500];
_box addItemCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", 500];


//Pistol
_box addItemCargoGlobal ["CUP_15Rnd_9x19_M9", 500];


//Sierra
_box addItemCargoGlobal ["CUP_5Rnd_762x51_M24", 500];


//Echo
_box addItemCargoGlobal ["CUP_30Rnd_Subsonic_9x19_MP5", 500];


// 40mm
_box addMagazineCargoGlobal ["CUP_1Rnd_HE_M203",100];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",100];
_box addItemCargoGlobal ["CUP_6Rnd_HE_M203",50];
_box addItemCargoGlobal ["CUP_6Rnd_Smoke_M203",50];

//AT
_box addMagazineCargoGlobal ["CUP_SMAW_HEAA_M",50];
_box addMagazineCargoGlobal ["CUP_SMAW_Spotting",50];

//Handgrenades
_box addMagazineCargoGlobal ["SmokeShell",200];
_box addMagazineCargoGlobal ["SmokeShellGreen",200];
_box addMagazineCargoGlobal ["SmokeShellRed",200];
_box addItemCargoGlobal ["SmokeShellPurple",200];
_box addMagazineCargoGlobal ["CUP_HandGrenade_M67",500];
_box addItemCargoGlobal ["ACE_M84",100];
_box addItemCargoGlobal ["B_IR_Grenade",500];

//Explosives
_box addItemCargoGlobal ["DemoCharge_Remote_Mag", 50];
_box addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 50];





