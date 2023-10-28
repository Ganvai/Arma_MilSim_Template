//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Grenadier
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Grenadier"];
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
player addBackpack rucksack;

// Waffen
player addWeapon grenadier_primary;
player addPrimaryWeaponItem grenadier_scope;
player addPrimaryWeaponItem grenadier_attachement1;
player addPrimaryWeaponItem grenadier_attachement2;
player addPrimaryWeaponItem grenadier_mag;

player addWeapon handgun;
player addHandgunItem handgun_mag;


//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to grenadier_mag_count do {
	_fits = player canAddItemToVest grenadier_mag;
	if (_fits) then {
		player addItemToVest grenadier_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack grenadier_mag;
		if (_fits) then {
			player addItemToBackpack grenadier_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform grenadier_mag;
			if (_fits) then {
				player addItemToUniform grenadier_mag;
			}
			else {
				_notloadeditems pushback grenadier_mag;
			};
		};
	};
};

for "_i" from 1 to grenadier_mag_tracer_count do {
	_fits = player canAddItemToVest grenadier_tracer;
	if (_fits) then {
		player addItemToVest grenadier_tracer;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack grenadier_tracer;
		if (_fits) then {
			player addItemToBackpack grenadier_tracer;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform grenadier_tracer;
			if (_fits) then {
				player addItemToUniform grenadier_tracer;
			}
			else {
				_notloadeditems pushback grenadier_tracer;
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
//	40mm
//------------------------------------------------------------------
for "_i" from 1 to UGL_HE_count do {
	_fits = player canAddItemToVest UGL_HE;
	if (_fits) then {
		player addItemToVest UGL_HE;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack UGL_HE;
		if (_fits) then {
			player addItemToBackpack UGL_HE;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform UGL_HE;
			if (_fits) then {
				player addItemToUniform UGL_HE;
			}
			else {
				_notloadeditems pushback UGL_HE;
			};
		};
	};
};

for "_i" from 1 to UGL_Smoke_count do {
	_fits = player canAddItemToVest UGL_Smoke;
	if (_fits) then {
		player addItemToVest UGL_Smoke;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack UGL_Smoke;
		if (_fits) then {
			player addItemToBackpack UGL_Smoke;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform UGL_Smoke;
			if (_fits) then {
				player addItemToUniform UGL_Smoke;
			}
			else {
				_notloadeditems pushback UGL_Smoke;
			};
		};
	};
};

for "_i" from 1 to UGL_Flare_count do {
	_fits = player canAddItemToVest UGL_Flare;
	if (_fits) then {
		player addItemToVest UGL_Flare;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack UGL_Flare;
		if (_fits) then {
			player addItemToBackpack UGL_Flare;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform UGL_Flare;
			if (_fits) then {
				player addItemToUniform UGL_Flare;
			}
			else {
				_notloadeditems pushback UGL_Flare;
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
//	Smokes Green
//------------------------------------------------------------------
for "_i" from 1 to smoke_green_count do {
	_fits = player canAddItemToVest smoke_green;
	if (_fits) then {
		player addItemToVest smoke_green;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_green;
		if (_fits) then {
			player addItemToBackpack smoke_green;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_green;
			if (_fits) then {
				player addItemToUniform smoke_green;
			}
			else {
				_notloadeditems pushback smoke_green;
			};
		};
	};
};

//------------------------------------------------------------------
//	Smokes Red
//------------------------------------------------------------------
for "_i" from 1 to smoke_red_count do {
	_fits = player canAddItemToVest smoke_red;
	if (_fits) then {
		player addItemToVest smoke_red;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_red;
		if (_fits) then {
			player addItemToBackpack smoke_red;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_red;
			if (_fits) then {
				player addItemToUniform smoke_red;
			}
			else {
				_notloadeditems pushback smoke_red;
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