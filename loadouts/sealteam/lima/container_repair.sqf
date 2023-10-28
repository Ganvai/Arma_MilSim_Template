// Kiste Sanität Typ II - Spezial
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\container_repair.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/


if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["Item_ToolKit",10];
_box addItemCargoGlobal ["ACE_Fortify",10];
_box addItemCargoGlobal ["ACE_wirecutter",10];
_box addItemCargoGlobal ["ACE_DefusalKit",10];
_box addItemCargoGlobal ["ACE_EntrenchingTool",100];
_box addItemCargoGlobal ["ACE_CableTie",100];

_box addItemCargoGlobal ["ACE_Wheel",100];
_box addItemCargoGlobal ["ACE_Track",50];

_box addItemCargoGlobal ["ACE_rope12",10];
_box addItemCargoGlobal ["ACE_rope15",10];
_box addItemCargoGlobal ["ACE_rope18",10];
_box addItemCargoGlobal ["ACE_rope27",10];
_box addItemCargoGlobal ["ACE_rope3",10];
_box addItemCargoGlobal ["ACE_rope36",10];
_box addItemCargoGlobal ["ACE_rope6",10];

_box addItemCargoGlobal ["ACE_Sandbag_empty",100];

_box addItemCargoGlobal ["ACE_SpraypaintBlack",10];
_box addItemCargoGlobal ["ACE_SpraypaintBlack",10];
_box addItemCargoGlobal ["ACE_SpraypaintBlue",10];
_box addItemCargoGlobal ["ACE_SpraypaintGreen",10];
_box addItemCargoGlobal ["ACE_SpraypaintRed",10];

_box addItemCargoGlobal ["DemoCharge_Remote_Mag",10];
_box addItemCargoGlobal ["SatchelCharge_Remote_Mag",10];
_box addItemCargoGlobal ["ACE_Clacker",10];
_box addItemCargoGlobal ["B_IR_Grenade",100];

_box addItemCargoGlobal ["Chemlight_blue",100];
_box addItemCargoGlobal ["Chemlight_green",100];
_box addItemCargoGlobal ["Chemlight_red",100];
_box addItemCargoGlobal ["ACE_Chemlight_White",100];

_box addItemCargoGlobal ["ACE_Chemlight_HiBlue",100];
_box addItemCargoGlobal ["ACE_Chemlight_HiGreen",100];
_box addItemCargoGlobal ["ACE_Chemlight_HiRed",100];
_box addItemCargoGlobal ["ACE_Chemlight_HiWhite",100];

_box addItemCargoGlobal ["ACE_VMH3",10];
_box addItemCargoGlobal ["ACE_Flashlight_Maglite_ML300L",10];

_box addItemCargoGlobal ["SmokeShellBlue",10];
_box addItemCargoGlobal ["SmokeShellGreen",10];
_box addItemCargoGlobal ["SmokeShellRed",10];



















