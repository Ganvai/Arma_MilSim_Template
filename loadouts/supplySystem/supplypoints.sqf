if (! isServer) exitWith {};

_supply = _this select 0;
_point = _this select 1;
_boxPos = [0,0,0];

//Ermittel die Position Relativ zur Position des Fahrzeuges (Bei HEMTT muss 7 eingestellt sein, damit die Box nicht unter dem LKW steht und 180, damit sie am Heck gespawnt wird)
if (_point == "static") then {
	_boxPos = limasupplypointstaticmarker getRelPos [0,0];
}
else {
	_boxPos = limasupplypointmobile getRelPos [7,180];
};

switch (_supply) do
{
	case 1: {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\01_zug_ammo.sqf";
			};
	case 2: {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\02_zug_heavy_ammo.sqf";
			};

	case 3: {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\03_zug_grenades.sqf";
			};

	case 4: {
				_box = "ACE_Box_Chemlights" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\04_zug_launcher_ammo.sqf";
			};

	case 5: {
				_box = "ACE_Box_Chemlights" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\05_zug_launcher_light.sqf";
			};

	case 6: {
				_box = "ACE_medicalSupplyCrate" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\06_zug_san.sqf";
			};

	case 7: {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\07_echo_ammo.sqf";
			};

	case 8: {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\08_sierra_ammo.sqf";
			};

	case 9: {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\09_sp_grenades.sqf";
			};

	case 10: {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\10_sp_explosives.sqf";
			};

	case 11: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\11_sp_tech.sqf";
			};
			
	case 12: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\12_sp_drone.sqf";
			};

	case 13: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\13_sp_chemical.sqf";
			};

	case 14: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\14_sp_bravo.sqf";
			};

	case 15: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\15_sp_delta.sqf";
			};

	case 16: {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\16_sp_empty.sqf";
			};

	case 17: {
				_box = "B_supplyCrate_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,(_boxPos select 2) + 1];
				[_box] execvm "loadouts\lima\17_sp_emptyLarge.sqf";
			};
};