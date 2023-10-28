_notloadeditems = [];

_san_uniform = [			
					["kat_Pulseoximeter",3],
					["ACE_morphine",1],
					["ACE_tourniquet",6]
];

_san_vest = [
					["ACE_surgicalKit",1],
					["kat_chestSeal",10],
					["kat_larynx",15],
					["kat_IO_FAST",5],
					["ACE_splint",10],
					["kat_naloxone",1]
];					

_san_backpack = [					
					//ACE
					
					["ACE_elasticBandage",50],
					["ACE_packingBandage",15],
					["ACE_quikclot",10],
					["ACE_salineIV_500",22],
					["ACE_epinephrine",15],
					["ACE_adenosine",7],

					//KAT
					["kat_BVM",1],
					["kat_IV_16",25],
					["kat_ketamine",2],
					["kat_Carbonate",1],
					["kat_EACA",5],
					["kat_TXA",10],
					["kat_fentanyl",5],
					["kat_nitroglycerin",10]
];

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToUniform (_x select 0);
		if (_fits) then {
			player addItemToUniform (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_uniform;

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToVest (_x select 0);
		if (_fits) then {
			player addItemToVest (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_vest;

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToBackpack (_x select 0);
		if (_fits) then {
			player addItemToBackpack (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_backpack;

//------------------------------------------------------------------
//	Loadout Debug Meldung
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
		
	sleep 5;
}
