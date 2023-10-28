//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Sierra_NaSi
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Sierra_NaSi"];
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
player addGoggles sierra_facewear;
player addBackpack rucksack_lr;

// Waffen
player addWeapon sierra_primary;
player addPrimaryWeaponItem sierra_primary_scope;
player addPrimaryWeaponItem sierra_primary_attachement1;
player addPrimaryWeaponItem sierra_primary_attachement2;
player addPrimaryWeaponItem sierra_primary_silencer;
player addPrimaryWeaponItem sierra_primary_mag;

player addWeapon handgun;
player addHandgunItem handgun_scope;
player addHandgunItem handgun_attachment1;
player addHandgunItem handgun_attachment2;
player addHandgunItem handgun_mag;


//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to sierra_primary_mag_count do {
	_fits = player canAddItemToVest sierra_primary_mag;
	if (_fits) then {
		player addItemToVest sierra_primary_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack sierra_primary_mag;
		if (_fits) then {
			player addItemToBackpack sierra_primary_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform sierra_primary_mag;
			if (_fits) then {
				player addItemToUniform sierra_primary_mag;
			}
			else {
				_notloadeditems pushback sierra_primary_mag;
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
//	Ausrüstung
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

for "_i" from 1 to 2 do {
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

_fits = player canAddItemToUniform "ACE_EntrenchingTool";
if (_fits) then {
	player addItemToUniform "ACE_EntrenchingTool";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_EntrenchingTool";
	if (_fits) then {
		player addItem "ACE_EntrenchingTool";
	}
	else {
		_notloadeditems pushback "ACE_EntrenchingTool";
	};
};

//------------------------------------------------------------------
//	Spezialausrüstung
//------------------------------------------------------------------
player linkItem cTab_small;
player addweapon binocs_tier2;
player addItem laserdesignator_bats;

_fits = player canAddItemToUniform sierra_headwear;
if (_fits) then {
	player addItemToUniform sierra_headwear;
}
else {
	_fits = false;
	_fits = player canAdd sierra_headwear;
	if (_fits) then {
		player addItem sierra_headwear;
	}
	else {
		_notloadeditems pushback sierra_headwear;
	};
};

_fits = player canAddItemToUniform cTabcam;
if (_fits) then {
	player addItemToUniform cTabcam;
}
else {
	_fits = false;
	_fits = player canAdd cTabcam;
	if (_fits) then {
		player addItem cTabcam;
	}
	else {
		_notloadeditems pushback cTabcam;
	};
};

_fits = player canAddItemToUniform rangecard;
if (_fits) then {
	player addItemToUniform rangecard;
}
else {
	_fits = false;
	_fits = player canAdd rangecard;
	if (_fits) then {
		player addItem rangecard;
	}
	else {
		_notloadeditems pushback rangecard;
	};
};

_fits = player canAddItemToUniform windmesser;
if (_fits) then {
	player addItemToUniform windmesser;
}
else {
	_fits = false;
	_fits = player canAdd windmesser;
	if (_fits) then {
		player addItem windmesser;
	}
	else {
		_notloadeditems pushback windmesser;
	};
};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
execVM "loadouts\san_load_sierra.sqf";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

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