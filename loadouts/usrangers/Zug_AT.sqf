//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_AT
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_AT"];
_notloadeditems = [];

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//------------------------------------------------------------------
//	Auto filled
//------------------------------------------------------------------
player forceAddUniform uniforms;
player addHeadgear helmet;
player addVest weste;
player addGoggles facewear;
player addBackpack rucksack_big;

// Waffen
player addWeapon primary;
player addPrimaryWeaponItem primary_scope;
player addPrimaryWeaponItem primary_attachement1;
player addPrimaryWeaponItem primary_attachement2;
player addPrimaryWeaponItem primary_mag;

player addWeapon handgun;
player addHandgunItem handgun_mag;

player addWeapon launcher_at;
player addSecondaryWeaponItem launcher_at_scope;
player addSecondaryWeaponItem launcher_at_ammo1;

//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to primary_mag_count do {
	_fits = player canAddItemToVest primary_mag;
	if (_fits) then {
		player addItemToVest primary_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack primary_mag;
		if (_fits) then {
			player addItemToBackpack primary_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform primary_mag;
			if (_fits) then {
				player addItemToUniform primary_mag;
			}
			else {
				_notloadeditems pushback primary_mag;
			};
		};
	};
};

for "_i" from 1 to primary_mag_tracer_count do {
	_fits = player canAddItemToVest primary_tracer;
	if (_fits) then {
		player addItemToVest primary_tracer;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack primary_tracer;
		if (_fits) then {
			player addItemToBackpack primary_tracer;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform primary_tracer;
			if (_fits) then {
				player addItemToUniform primary_tracer;
			}
			else {
				_notloadeditems pushback primary_tracer;
			};
		};
	};
};

//------------------------------------------------------------------
//	Pistole
//------------------------------------------------------------------
for "_i" from 1 to handgun_mag_count do {
	_fits = player canAddItemToVest handgun_mag;
	if (_fits) then {
		player addItemToVest handgun_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack handgun_mag;
		if (_fits) then {
			player addItemToBackpack handgun_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform handgun_mag;
			if (_fits) then {
				player addItemToUniform handgun_mag;
			}
			else {
				_notloadeditems pushback handgun_mag;
			};
		};
	};
};		

//------------------------------------------------------------------
//	Launcher Ammo
//------------------------------------------------------------------
for "_i" from 1 to 1 do {
	_fits = player canAddItemToBackpack launcher_at_ammo1;
	if (_fits) then {
		player addItemToBackpack launcher_at_ammo1;
	}
	else {
		_fits = false;
		_fits = player canAdd launcher_at_ammo1;
		if (_fits) then {
			player addItem launcher_at_ammo1;
		}
		else {
			_notloadeditems pushback launcher_at_ammo1;
		};
	};
};

for "_i" from 1 to 1 do {
	_fits = player canAddItemToBackpack launcher_at_ammo2;
	if (_fits) then {
		player addItemToBackpack launcher_at_ammo2;
	}
	else {
		_fits = false;
		_fits = player canAdd launcher_at_ammo2;
		if (_fits) then {
			player addItem launcher_at_ammo2;
		}
		else {
			_notloadeditems pushback launcher_at_ammo2;
		};
	};
};

for "_i" from 1 to launcher_at_spotting_count do {
	_fits = player canAddItemToBackpack launcher_at_spotting;
	if (_fits) then {
		player addItemToBackpack launcher_at_spotting;
	}
	else {
		_fits = false;
		_fits = player canAdd launcher_at_spotting;
		if (_fits) then {
			player addItem launcher_at_spotting;
		}
		else {
			_notloadeditems pushback launcher_at_spotting;
		};
	};
};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------
for "_i" from 1 to grenades_count do {
	_fits = player canAddItemToVest grenades;
	if (_fits) then {
		player addItemToVest grenades;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack grenades;
		if (_fits) then {
			player addItemToBackpack grenades;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform grenades;
			if (_fits) then {
				player addItemToUniform grenades;
			}
			else {
				_notloadeditems pushback grenades;
			};
		};
	};
};

//------------------------------------------------------------------
//	Smokes White
//------------------------------------------------------------------
for "_i" from 1 to smoke_white_count do {
	_fits = player canAddItemToVest smoke_white;
	if (_fits) then {
		player addItemToVest smoke_white;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_white;
		if (_fits) then {
			player addItemToBackpack smoke_white;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_white;
			if (_fits) then {
				player addItemToUniform smoke_white;
			}
			else {
				_notloadeditems pushback smoke_white;
			};
		};
	};
};


//------------------------------------------------------------------
//	Standard Ausrüstung
//------------------------------------------------------------------
player linkItem comms;
player linkItem watch;
player linkItem "ItemMap";
player linkItem "ItemCompass";


_fits = player canAddItemToUniform nvg;
if (_fits) then {
	player addItemToUniform nvg;
}
else {
	_fits = false;
	_fits = player canAdd nvg;
	if (_fits) then {
		player addItem nvg;
	}
	else {
		_notloadeditems pushback nvg;
	};
};

_fits = player canAddItemToUniform IRStrobe;
if (_fits) then {
	player addItemToUniform IRStrobe;
}
else {
	_fits = false;
	_fits = player canAdd IRStrobe;
	if (_fits) then {
		player addItem IRStrobe;
	}
	else {
		_notloadeditems pushback IRStrobe;
	};
};

_fits = player canAddItemToUniform "ACE_EarPlugs";
if (_fits) then {
	player addItemToUniform "ACE_EarPlugs";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_EarPlugs";
	if (_fits) then {
		player addItem "ACE_EarPlugs";
	}
	else {
		_notloadeditems pushback "ACE_EarPlugs";
	};
};

_fits = player canAddItemToUniform "ACE_CableTie";
if (_fits) then {
	player addItemToUniform "ACE_CableTie";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_CableTie";
	if (_fits) then {
		player addItem "ACE_CableTie";
	}
	else {
		_notloadeditems pushback "ACE_CableTie";
	};
};

_fits = player canAddItemToUniform "ACE_Flashlight_XL50";
if (_fits) then {
	player addItemToUniform "ACE_Flashlight_XL50";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_Flashlight_XL50";
	if (_fits) then {
		player addItem "ACE_Flashlight_XL50";
	}
	else {
		_notloadeditems pushback "ACE_Flashlight_XL50";
	};
};

_fits = player canAddItemToUniform "ACE_MapTools";
if (_fits) then {
	player addItemToUniform "ACE_MapTools";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_MapTools";
	if (_fits) then {
		player addItem "ACE_MapTools";
	}
	else {
		_notloadeditems pushback "ACE_MapTools";
	};
};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
execVM "loadouts\san_load_zug.sqf";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

//------------------------------------------------------------------
//	Loadout Debug Meldung
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
}