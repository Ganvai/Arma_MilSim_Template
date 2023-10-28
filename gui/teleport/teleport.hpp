class Teleport_Dialog
{
	idd = IDD_Teleport;
	name = "Teleport Menu";
	
	//access = 0;
	movingEnable = false;
	onLoad = TeleportTo = "";
	
	controlsBackground[] = {
		Background,
		Background_darkener,
		Background_Header,
		Picture
	};
	
	controls[] = {
		Menue,
		Cancel,
		Alpha,
		Bravo,
		Charlie,
		Delta,
		Sierra,
		Echo_1,
		Echo_2,
		Lima,
		Fox_1,
		Mike,
		Kilo_1,
		Kilo_2,
		Confirm_Teleport
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
	text = "Teleport"; //--- ToDo: Localize;
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
	text = "X";
	sizeEx = "0.09/ (getResolution select 5)";
};
class Alpha: RscButton
{
	idc = 1602;
	text = "Alpha"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Alpha";
};
class Bravo: RscButton
{
	idc = 1603;
	text = "Bravo"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.458 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Bravo";
};
class Charlie: RscButton
{
	idc = 1604;
	text = "Charlie"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.598 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Charlie";
};
class Delta: RscButton
{
	idc = 1605;
	text = "Delta"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.738 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Delta";
};
class Sierra: RscButton
{
	idc = 1606;
	text = "Sierra"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Sierra";
};
class Fox_1: RscButton
{
	idc = 1607;
	text = "Fox 1"; //--- ToDo: Localize;
	x = 0.52625 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_Orange};
	action = TeleportTo = "Fox_1";
};
class Kilo_1: RscButton
{
	idc = 1608;
	text = "Kilo 1"; //--- ToDo: Localize;
	x = 0.6575 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_Orange};
	action = TeleportTo = "Kilo_1";
};
class Echo_1: RscButton
{
	idc = 1609;
	text = "Echo 1"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.458 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Echo_1";
};
class Echo_2: RscButton
{
	idc = 1610;
	text = "Echo 2"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.598 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Echo_2";
};
class Mike: RscButton
{
	idc = 1612;
	text = "Mike"; //--- ToDo: Localize;
	x = 0.52625 * safezoneW + safezoneX;
	y = 0.458 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_Orange};
	action = TeleportTo = "Mike";
};
class Kilo_2: RscButton
{
	idc = 1613;
	text = "Kilo 2"; //--- ToDo: Localize;
	x = 0.6575 * safezoneW + safezoneX;
	y = 0.458 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_Orange};
	action = TeleportTo = "Kilo_2";
};
class Confirm_Teleport: RscButton
{
	idc = 1614;
	text = "$STR_Dialog_Confirm"; //--- ToDo: Localize;
	x = 0.664063 * safezoneW + safezoneX;
	y = 0.738 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {0,0.8,0,0.8};
	action = "[TeleportTo] call TPF_fnc_teleport; closeDialog 0;";
};
class Lima: RscButton
{
	idc = 1611;
	text = "Lima"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.738 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.084 * safezoneH;
	colorBackground[] = {COLOR_BTN_BLUE};
	action = TeleportTo = "Lima";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};

