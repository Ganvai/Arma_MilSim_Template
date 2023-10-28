_result = false;
private _result = ["End Mission to continue?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\MCC_sequence_outro_continued.sqf" remoteExec ["execVM"];

sleep 63;

["MyEnding", true, 0, false, false] remoteExec ["BIS_fnc_endMission", 0, true];