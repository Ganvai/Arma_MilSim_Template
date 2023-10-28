class Main_Dialog
{
	idd = IDD_MainDialog;
	name = "Teleport Menu";
	
	//access = 0;
	movingEnable = false;
	//onLoad = "";
	//onUnload  = "hint str _this";
	//enableSimulation = false;
	
	controlsBackground[] = {
		Background,
		Background_Header,
		Picture2		
	};
	
	controls[] = {
		Cancel,
		Teleport,
		Personal_Arsenal_12,
		ZUG,
		Sierra,
		Echo,
		Lima,
		//Leer31, // AusbildungsLoadouts
		Text1,
		Text2
	};
	
	objects[] = {
		//Objects
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Onill, v1.063, #Ziqota)
////////////////////////////////////////////////////////
	class Background_Header: RscText
	{
		idc = 1009;
		x = 0.257187 * safezoneW + safezoneX;
		y = 0.198 * safezoneH + safezoneY;
		w = 0.4725 * safezoneW;
		h = 0.098 * safezoneH;
		colorBackground[] = {COLOR_MENUE_BACKGROUND};
		style = ST_CENTER;
		text = "Menue";
		sizeEx = "0.09/ (getResolution select 5)";
		
	};
	class Background: RscText
	{
		idc = 1000;
		x = 0.257187 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.4725 * safezoneW;
		h = 0.56 * safezoneH;
		colorBackground[] = {1,1,1,0.9};
	};
	class Menue: RscButton
	{
		idc = 1699;
		x = 0.270313 * safezoneW + safezoneX;
		y = 0.206 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Cancel: RscButton
	{
		idc = 1698;
		x = 0.650937 * safezoneW + safezoneX;
		y = 0.206 * safezoneH + safezoneY;
		w = 0.0590625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0;";
		style = ST_CENTER;
		text = "X";
		sizeEx = "0.09/ (getResolution select 5)";
		
	};
	class Teleport: RscButton
	{
		idc = 1600;
		text = "Teleport"; //--- ToDo: Localize;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; _menueDialog = createDialog 'Teleport_Dialog';";
		colorFocused[] = {1,1,1,0.5};
		colorText[] = {1,1,1,0.5};
	};
	
	class Picture2: RscPicture
	{
		idc = 1050;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		text = "gui\teleport\icon_teleport.paa";
	};
	class ZUG: RscButton
	{
		idc = 1601;
		text = "Zug"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; ['Zug']call CLF_fnc_createGUI;";
	};
	class Sierra: RscButton
	{
		idc = 1602;
		text = "Sierra"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; ['Sierra'] call CLF_fnc_createGUI;";
	};
	class Echo: RscButton
	{
		idc = 1603;
		text = "Echo";
		x = 0.395 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; ['Echo'] call CLF_fnc_createGUI;";
	};
	class Lima: RscButton
	{
		idc = 1604;
		text = "Lima"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; ['Lima'] call CLF_fnc_createGUI;";
		
	};
	class Leer32: RscButton
	{
		idc = 1605;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer31: RscButton
	{
		idc = 1606;
		text = "Ausbildung"; 
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = "closeDialog 0; ['Ausbildung'] call CLF_fnc_createGUI;";
	};
	class Personal_Arsenal_12: RscButton
	{
		idc = 1607;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		text = "Arsenal";
		action = "closeDialog 0; execVM 'loadouts\personalArsenal.sqf';";
		tooltip = "$STR_P_Asenal";
	};
	class Leer34: RscButton
	{
		idc = 1608;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer33: RscButton
	{
		idc = 1609;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer41: RscButton
	{
		idc = 1610;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer13: RscButton
	{
		idc = 1612;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer14: RscButton
	{
		idc = 1613;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer42: RscButton
	{
		idc = 1614;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer43: RscButton
	{
		idc = 1615;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer44: RscButton
	{
		idc = 1616;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Text2: RscText
	{
		idc = 1001;
		text = "Loadouts";
		x = 0.401563 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text3: RscText
	{
		idc = 1002;
		text = "Loadouts";
		x = 0.519688 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text4: RscText
	{
		idc = 1003;
		text = "Loadouts";
		x = 0.624687 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text1: RscText
	{
		idc = 1004;
		text = "Utilities";
		x = 0.296562 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
};