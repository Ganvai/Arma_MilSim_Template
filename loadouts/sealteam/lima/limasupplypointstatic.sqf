if (! isServer) exitWith {};

_supply = _this select 0;

//Ermittel die Position Relativ zur Position des Fahrzeuges (Bei HEMTT muss 7 eingestellt sein, damit die Box nicht unter dem LKW steht und 180, damit sie am Heck gespawnt wird)
_boxPos = limasupplypointstaticmarker getRelPos [0,0];

//Setzt die Höhe auf der die Box nachher Positioniert wird. Wird benötigt wenn die Static Station in einem Gebäude oder ähnlichem steht.
_boxheight = 39.2;

switch (_supply) do
{
	case "zug1": {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_i.sqf";
			};
	case "zug2": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_ii.sqf";
			};

	case "zug3": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_iii.sqf";
			};

	case "zug4": {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_iv.sqf";
			};

	case "zug5": {
				_box = "ACE_Box_Chemlights" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_v.sqf";
			};

	case "zug6": {
				_box = "ACE_Box_Chemlights" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_zug_typ_vi.sqf";
			};

	case "sierra1": {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_sierra_typ_i.sqf";
			};

	case "echo1": {
				_box = "ACE_Box_Ammo" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_echo_typ_i.sqf";
			};

	case "echo2": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_echo_typ_ii.sqf";
			};

	case "echo3": {
				_box = "ACE_Box_Chemlights" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_echo_typ_iii.sqf";
			};

	case "echo4": {
				_box = "Box_NATO_Equip_F" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_echo_typ_iv.sqf";
			};

	case "san1": {
				_box = "ACE_medicalSupplyCrate" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_san_typ_i.sqf";
			};

	case "san2": {
				_box = "ACE_medicalSupplyCrate" createVehicle _boxPos;
				_box setPosATL [_boxPos select 0,_boxPos select 1,_boxheight];
				[_box] execvm limapfad + "box_san_typ_ii.sqf";
			};
};