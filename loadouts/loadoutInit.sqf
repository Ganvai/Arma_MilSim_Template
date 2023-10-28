/*

Diese Datei einfügen in "Loadouts" Ordner im Missionsverzeichnis

Einfügen in initPlayerLocal:

call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";

- In Einheiten setzen
this setVariable ["loadout", "X"];  		
_____________________

Variablen für den Zug:

this setVariable ["loadout", "Zug_Zugfuhrer"]; 
this setVariable ["loadout", "Zug_Fox_AvD"];
this setVariable ["loadout", "Zug_Fox_Nahsicherer"]; 
this setVariable ["loadout", "Zug_Gruppenfuhrer"]; 
this setVariable ["loadout", "Zug_Truppfuhrer"]; 
this setVariable ["loadout", "Zug_Schutze"]; 
this setVariable ["loadout", "Zug_Sanitater"]; 
this setVariable ["loadout", "Zug_EHB"]; 
this setVariable ["loadout", "Zug_Grenadier"]; 
this setVariable ["loadout", "Zug_DM"]; 
this setVariable ["loadout", "Zug_MG"]; 
this setVariable ["loadout", "Zug_AT"]; 
this setVariable ["loadout", "Zug_ATA"]; 


Variablen für Sierra:

this setVariable ["loadout", "Sierra_TrpFhr"]; 
this setVariable ["loadout", "Sierra_Sniper_M107"]; 
this setVariable ["loadout", "Sierra_Sniper_HK417"]; 
this setVariable ["loadout", "Sierra_Sniper_G22"];
this setVariable ["loadout", "Sierra_NaSi_Spaten"];
this setVariable ["loadout", "Sierra_NaSi_Cutter"];
this setVariable ["loadout", "Sierra_Drohne_HK417"];
this setVariable ["loadout", "Sierra_Drohne_HK416"];


Variablen für Echo:

this setVariable ["loadout", "Echo_Infiltration_1"];
this setVariable ["loadout", "Echo_Infiltration_2"];
this setVariable ["loadout", "Echo_Infiltration_3"];
this setVariable ["loadout", "Echo_Infiltration_4_HVT"];

_____________________
*/

if (playerSide == west) then { 

	switch ((player getVariable "loadout")) do {

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Führung									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Zug_Zugfuhrer"):{
			_loadouts = format ["loadouts\%1\Zug_Zugfuhrer.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Mike_AvD"):{	
			_loadouts = format ["loadouts\%1\Mike_AvD.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Mike_Nahsicherer1"):{	
			_loadouts = format ["loadouts\%1\Mike_Nahsicherer1.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Mike_Nahsicherer2"):{	
			_loadouts = format ["loadouts\%1\Mike_Nahsicherer2.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Zug    									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Zug_Gruppenfuhrer"):{	
			_loadouts = format ["loadouts\%1\Zug_Gruppenfuhrer.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Truppfuhrer"):{	
			_loadouts = format ["loadouts\%1\Zug_Truppfuhrer.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_Schutze"):{	
			_loadouts = format ["loadouts\%1\Zug_Schutze.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Sanitater"):{	
			_loadouts = format ["loadouts\%1\Zug_Sanitater.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_EHB"):{	
			_loadouts = format ["loadouts\%1\Zug_EHB.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Grenadier"):{	
			_loadouts = format ["loadouts\%1\Zug_Grenadier.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_DM"):{	
			_loadouts = format ["loadouts\%1\Zug_DM.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_MG"):{	
			_loadouts = format ["loadouts\%1\Zug_MG.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_AT"):{	
			_loadouts = format ["loadouts\%1\Zug_AT.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_ATA"):{	
			_loadouts = format ["loadouts\%1\Zug_ATA.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Sierra 									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Sierra_TrpFhr"):{	
			_loadouts = format ["loadouts\%1\Sierra_TrpFhr.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_Sniper"):{	
			_loadouts = format ["loadouts\%1\Sierra_Sniper_G22.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_NaSi"):{	
			_loadouts = format ["loadouts\%1\Sierra_NaSi.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Echo 									---
		---																			---
		-------------------------------------------------------------------------------
		-------------------------------------------------------------------------------
*/
		
		case("Echo_Infiltration_1"):{	
			_loadouts = format ["loadouts\%1\Echo1.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_Infiltration_3"):{	
			_loadouts = format ["loadouts\%1\Echo3.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									LIMA									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/


		case("Lima_Standard"):{
			_loadouts = format ["loadouts\%1\Lima_Standard.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Ausbildung								---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/


		case("Ausbilder"):{
			_loadouts = format ["loadouts\%1\ausbilder.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Rekrut"):{
			_loadouts = format ["loadouts\%1\rekrut.sqf", fraktionV];
			call compile preprocessFileLineNumbers _loadouts;
		};		
	};
};