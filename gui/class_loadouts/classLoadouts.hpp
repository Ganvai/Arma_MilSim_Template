class ClassLoadout_Dialog
{
	idd = IDD_ClassLoadout;
	name = "ClassLoadout";
	
	//access = 0;
	movingEnable = false;
	onLoad = execVM "gui\class_loadouts\fn_getLoadouts.sqf";
	//onUnload  = "hint str _this";
	//enableSimulation = false;
	
	controlsBackground[] = {
		Background,
		Background_darkener,
		Background_Header,
		Picture
	};
	
	controls[] = {
		Menue,
		Cancel,
		LoadoutList,
		Confirm_Loadout
	};
	
	objects[] = {
		//Objects
	};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Onill, v1.063, #Xonuqe)
////////////////////////////////////////////////////////

	class Background: RscText
	{
		idc = 1000;
		x = 0.2375 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.525 * safezoneW;
		h = 0.588 * safezoneH;
		colorBackground[] = {1,1,1,1};
	};
	class Background_darkener: RscPicture
	{
		idc = 999;
		x = 0.2375 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.525 * safezoneW;
		h = 0.588 * safezoneH;
		colorBackground[] = {1,1,1,1};
		text = "\A3\ui_f\data\GUI\rsc\rscdisplaymain\hover_ca.paa";
	};
	class Background_Header: RscText
	{
		idc = 1001;
		x = 0.2375 * safezoneW + safezoneX;
		y = 0.15 * safezoneH + safezoneY;
		w = 0.525 * safezoneW;
		h = 0.112 * safezoneH;
		style = ST_CENTER;
		text = "Loadouts"; //--- ToDo: Localize;
		colorBackground[] = {COLOR_MENUE_BACKGROUND};
		sizeEx = "0.09/ (getResolution select 5)";
	};
	class Menue: RscButton
	{
		idc = 1600;
		x = 0.24485 * safezoneW + safezoneX;
		y = 0.16316 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		//colorBackground[] = {0,0,0,0};
		colorFocused[] = {1,1,1,0.5};
		text = "";
		action = "closeDialog 0; _menueDialog = createDialog 'Main_Dialog';";
	};
	class Picture: RscPicture
	{
		idc = 1599;
		x = 0.24485 * safezoneW + safezoneX;
		y = 0.16316 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		colorText[] = {1,1,1,1};
		text = "gui\main\Logo.paa";
		
		// \A3\ui_f\data\GUI\rsc\rscdisplaymain\hover_ca.paa";
	};
	class Cancel: RscButton
	{
		idc = 1601;
		x = 0.696875 * safezoneW + safezoneX;
		y = 0.164 * safezoneH + safezoneY;
		w = 0.0590625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0;";
		style = ST_CENTER;
		text = "X"; //--- ToDo: Localize;
		sizeEx = "0.09/ (getResolution select 5)";
	};
	class Confirm_Loadout: RscButton
	{
		idc = 1614;
		text = "$STR_Confirm_Loadout";
		x = 0.4475 * safezoneW + safezoneX;
		y = 0.738 * safezoneH + safezoneY;
		w = 0.105 * safezoneW;
		h = 0.084 * safezoneH;
		action = "call CLF_fnc_takeLoadout;";
	};
	class LoadoutList: RscListbox
	{
		idc = 1500;
		x = 0.4475 * safezoneW + safezoneX;
		y = 0.318 * safezoneH + safezoneY;
		w = 0.105 * safezoneW;
		h = 0.378 * safezoneH;
	};
	
	/*
	class TarnSelect: RscCombo
	{
		idc = 2100;
		x = 0.604606 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.150937 * safezoneW;
		h = 0.056 * safezoneH;
		
		//Eventhandler
		//onLBSelChanged  = "call CLF_fnc_updateGUI";
	};


	class Confirm_tarnswitch: RscButton
	{
		idc = 1615;
		text = "Switch Equipment";
		x = 0.635 * safezoneW + safezoneX;
		y = 0.575 * safezoneH + safezoneY;
		w = 0.090 * safezoneW;
		h = 0.054 * safezoneH;
		action  = "call CLF_fnc_updateGUI";
	};
	*/

};

