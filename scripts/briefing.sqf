/*
    briefing.sqf
	wird in der initPlayerLocal eingebunden und ausgeführt.
    
    Briefingeinträge werden mit createDiaryRecord erstellt.
    Der Text der einzelnen Einträge kann noch mit folgenden Befehlen formatiert
    werden:
    <br/>                                               			- Zeilenumbruch
    <t/>                                                			- Einrücken (Tabulator)
    <img image='BILDPFAD' width='200' height='200'/>    			- Bild einbinden
    <marker name='MARKER'>TEXT</marker>                 			- Verlinkung auf Marker
    <execute expression='CODE'>TEXT</execute>           			- Code ausführen
	<font face='PuristaMedium' size=14 color='#fc9300'>TEXT</font>			- Schriftyp, Textgröße, Farbe, 
	https://community.bistudio.com/wiki/FXY_File_Format#Arma_3
 */

_Radio = player createDiarySubject ["Radio","Radio"];

player createDiaryRecord ["Radio",["Radiocodes","
1 - Come In<br/>
2 - Arrival on Scene<br/>
3 - Assignment Complete<br/>
4 - Waiting for Orders<br/>
5 - Tango spotted<br/>
6 - Recieving Fire<br/>
7 - In Firefight<br/>
8 - Personal Wounded<br/>
9 - Clear<br/>
10 - Groupleader Down<br/>
"]];

player createDiaryRecord ["Radio",["TOC",""]];
player createDiaryRecord ["Radio",["Delta",""]];
player createDiaryRecord ["Radio",["Charlie",""]];
player createDiaryRecord ["Radio",["Bravo",""]];
player createDiaryRecord ["Radio",["Alpha",""]];
player createDiaryRecord ["Radio",["Radiolog",""]];

_Manual = player createDiarySubject ["Manual","Mission Manual"];

player createDiaryRecord ["Manual",["Mission Control Center","
<font face='PuristaMedium' size=18 color='#fc9700'>Mission Control Center</font><br/>
<br/>
Mission Control Center is an ACE Self Menu and Zeus Menu enhancement for Zeus and TOC (most of the time the same).<br/>
You have the options to start and end the Mission, as well as activating special triggers provided by the Missionmaker.<br/>
<br/> 
After starting a Mission via Missionstart the Base Menu is only available when you are in your base. Join in Progress Players or reconnected will be teleported to the base from where they can teleport to their groups.<br/>
<br/>
There are two endings available. Both only differ by the Messages displayed at the end and the music played in the outro. Both ending options end the game with a short outro sequence.<br>
<br/>
No matter which option you start, you always have an Ingame Interface where you have to confirm your choice.
"]];


player createDiaryRecord ["Manual",["Supply Points","
<font face='PuristaMedium' size=18 color='#fc9700'>Lima Supply Point</font><br/>
<br/>
If the Supply Point Feature is enabled, you have a special Supply Point in your base where you can spawn supply crates fitting to your selected faction.<br/>
<br/>
Every supply crate is dragable/carryable with ACE and will be automatically filled with the fitting faction equipment.<br/>
<br/>
There is also a Mobile Supply Point available (most of the time a HEMTT Cargo Transporter, but obviously this is by choice from the Missionmaker) that can also spawn the same supply crates.<br/>
<br/>
Even though it is possible, you should never spawn multiple crates without moving the first spawned crate<br/>
<br/>
The action to spawn a crate is available via ACE.
"]];

player createDiaryRecord ["Manual",["Base Menu","
<font face='PuristaMedium' size=18 color='#fc9700'>Manual Base Menü</font><br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Aufruf</font><br/>
<br/>
The Base Menu is everywhere available before Missionstart (see 'Manual / Mission control Center' for more information) and available in the base after the mission was started.<br/>
<br/>
In the base menu are three options available<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>1. Teleport</font><br/>
<br/>
Opens a menu to teleport to the available Groups in the game. It is possible to teleport also into vehicles. If there is no place in a vehicle, it will give a message.<br/>
Most useful for JiP or reconnects.<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>2. Loadouts</font><br/>
<br/>
Choose your Loadout for your mission. When you choose a loadout, the armory will show only items that are available for your chosen role.<br/>
To choose your loadout, select a loadout from the list and click confirm.<br/>
<br/>
Wenn ihr das Loadout einer anderen Gruppe ausprobieren wollt, klickt auf das German Ranger Logo oben rechts. Nun seht ihr in der Spalte 'Loadouts' die verfügbaren Gruppen.<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>3. Armory</font><br/>
<br/>
The Armory is an ACE Arsenal where you can choose the equipment available for your role.<br/>
<font face='PuristaMedium' size=14 color='#ff0000'>As it is ACE Arsenal, you need to refill the magazines for your weapon.</font>
"]];



player createDiaryRecord ["Diary",["Background","
<font face='PuristaMedium' size=14 color='#fc9700'>Operation-Name</font><br/>
<br/>
Background Information to the actual Mission
"]];

player createDiaryRecord ["Diary",["History of Campaign","
<font face='PuristaMedium' size=14 color='#fc9700'></font><br/>
<br/>
Summary of previous missions of the Campaign.
"]];

player createDiaryRecord ["Diary",["Equipment","
<font face='PuristaMedium' size=14 color='#fc9700'>Vehicles</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Available Vehicles in Mission</font><br/>
<br/>
- Mobile Supply Truck HEMTT Container<br/>
- Iveco Transport | 17 Seats<br/>
- Iveco Repair | 3 Seats <br/>
- Iveco Medical | 17 Seats<br/>
- Iveco Fuel | 3 Seats<br/>
- Iveco Ammunition | 3 Seats<br/>
- Fennek AvD | 4 Seats<br/>
<br/>
- Fennek | 4 Seats<br/>
- Dingo | 6 Seats<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Helicopter</font><br/>
<br/>
- CH-53G | TC 30 <br/>
- CH-47F | TC 27 <br/>
- AW101 Merlin | TC 16<br/>
- CH-146 Transport | TC 11<br/>
- CH-146 Radar | TC 8 <br/>
- CH-146 MedEvac | TC 4<br/>
<br/>
TC = Transportcapacity, withotu Pilot and Copilot.<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Drones</font><br/>
<br/>
- MQ-9 Reaper<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Fire Support</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Available trough TOC</font><br/>
<br/>
- Mk 45 Hammer (USS Liberty)<br/>
- Mk 41 VSL (Tomahawk) (USS Liberty)<br/>
"]];

player createDiaryRecord ["Diary",["Mission","
<font face='PuristaMedium' size=14 color='#fc9700'>OPERATION - XX.XX.XXXX XX:XX Uhr</font><br/>
<br/>
1. <marker name='marker_0'>Missiontarget 1</marker><br/>
"]];
