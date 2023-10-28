//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Mike_AvD
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Mike_AvD"];
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
player addBackpack rucksack_lr;

// Waffen
player addWeapon primary;
player addPrimaryWeaponItem primary_scope;
player addPrimaryWeaponItem primary_attachement1;
player addPrimaryWeaponItem primary_attachement2;
player addPrimaryWeaponItem primary_mag;

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


//------------------------------------------------------------------
//	Smokes White
//------------------------------------------------------------------
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


//------------------------------------------------------------------
//	Smokes Green
//------------------------------------------------------------------
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


//------------------------------------------------------------------
//	Smokes Red
//------------------------------------------------------------------
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

//------------------------------------------------------------------
//	Chemlights Red
//------------------------------------------------------------------

_fits = player canAddItemToVest "ACE_Chemlight_HiRed";
if (_fits) then {
	player addItemToVest "ACE_Chemlight_HiRed";
}
else {
	_fits = false;
	_fits = player canAddItemToBackpack "ACE_Chemlight_HiRed";
	if (_fits) then {
		player addItemToBackpack "ACE_Chemlight_HiRed";
	}
	else {
		_fits = false;
		_fits = player canAddItemToUniform "ACE_Chemlight_HiRed";
		if (_fits) then {
			player addItemToUniform "ACE_Chemlight_HiRed";
		}
		else {
			_notloadeditems pushback "ACE_Chemlight_HiRed";
		};
	};
};

//------------------------------------------------------------------
//	Chemlights Green
//------------------------------------------------------------------
_fits = player canAddItemToVest "ACE_Chemlight_HiGreen";
if (_fits) then {
	player addItemToVest "ACE_Chemlight_HiGreen";
}
else {
	_fits = false;
	_fits = player canAddItemToBackpack "ACE_Chemlight_HiGreen";
	if (_fits) then {
		player addItemToBackpack "ACE_Chemlight_HiGreen";
	}
	else {
		_fits = false;
		_fits = player canAddItemToUniform "ACE_Chemlight_HiGreen";
		if (_fits) then {
			player addItemToUniform "ACE_Chemlight_HiGreen";
		}
		else {
			_notloadeditems pushback "ACE_Chemlight_HiGreen";
		};
	};
};

//------------------------------------------------------------------
//	Chemlights Blue
//------------------------------------------------------------------
_fits = player canAddItemToVest "ACE_Chemlight_HiBlue";
if (_fits) then {
	player addItemToVest "ACE_Chemlight_HiBlue";
}
else {
	_fits = false;
	_fits = player canAddItemToBackpack "ACE_Chemlight_HiBlue";
	if (_fits) then {
		player addItemToBackpack "ACE_Chemlight_HiBlue";
	}
	else {
		_fits = false;
		_fits = player canAddItemToUniform "ACE_Chemlight_HiBlue";
		if (_fits) then {
			player addItemToUniform "ACE_Chemlight_HiBlue";
		}
		else {
			_notloadeditems pushback "ACE_Chemlight_HiBlue";
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
//	Erste Hilfe
//------------------------------------------------------------------	
execVM "loadouts\san_load_avd.sqf";

//------------------------------------------------------------------
//	Rollenspezifische Items
//------------------------------------------------------------------	
player linkItem cTab_small;

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
}
