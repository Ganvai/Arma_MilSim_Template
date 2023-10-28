/*
	Waffenkammer
	
	In der Waffenkammer können die Spieler ihr eigenes Loadout zusammenstellen.
	
	Im ersten Schritt wird in mehreren Arrays das gesamte Material abgebildet. 
	
	Im zweiten Schritt wird das Material entsprechend den Rollen der Spieler gesammelt.
	
	Zuletzt wird das Arsenal erstellt.
	
	Nachdem das Arsenal geschlossen wurde, wird es gelöscht. Dies ist nötig, damit bei einem
	Rollenwechsel die Items weiterhin korrekt dargestellt werden und nicht Items der vorigen
	Rolle angezeigt werden.
*/

// Get Player Role
_playerGrp = group player;
_loadout = player getVariable "loadout";
//Needed for waitUntil after Arsenal is closed, combined with Event Handler on Arsenal
player setVariable ["arsenalClosed", false];

_rearm = false;

if (getMissionConfigValue "rearm" == "true") then {
	_rearm = true;
};

_equipment = [];
_uniforms = [];
_vests = [];
_vests_san = [];
_vests_lead = [];
_backpacks = [];
_coms_lead = [];
_headgear = [];

//-------------------------------------------------------------------------
//
// 				Kleidung
//
//-------------------------------------------------------------------------
		
switch tarnfarbeV do {
	case "bwfleck": {
		_uniforms = [
						"CUP_U_B_GER_Flecktarn_1",
						"CUP_U_B_GER_Flecktarn_2",
						"CUP_U_B_GER_Flecktarn_3",
						"CUP_U_B_GER_Flecktarn_5",
						"CUP_U_B_GER_Flecktarn_6",
						"CUP_U_B_GER_Flecktarn_7",
						"CUP_U_B_GER_Flecktarn_8",
						"CUP_U_B_GER_Flecktarn_4",
						"CUP_U_B_GER_Fleck_Crye",
						"CUP_U_B_GER_Fleck_Crye2"
		];

		_vests = [
						"CUP_V_B_GER_PVest_Fleck_Gren",
						"CUP_V_B_GER_PVest_Fleck_Gren_LT",
						"CUP_V_B_GER_PVest_Fleck_MG",
						"CUP_V_B_GER_PVest_Fleck_MG_LT",
						"CUP_V_B_GER_PVest_Fleck_RFL",
						"CUP_V_B_GER_PVest_Fleck_RFL_LT"
		];

		_vests_san = [
						"CUP_V_B_GER_PVest_Fleck_Med",
						"CUP_V_B_GER_PVest_Fleck_Med_LT"
		];

		_vests_lead = [
						"CUP_V_B_GER_PVest_Fleck_TL",
						"CUP_V_B_GER_PVest_Fleck_TL_LT",
						"CUP_V_B_GER_Carrier_Rig_2",
						"CUP_V_B_GER_Carrier_Rig",
						"CUP_V_B_GER_Armatus_BB_Fleck"
		];

		_backpacks = [
						"CUP_B_GER_Medic_Flecktarn",
						"CUP_B_GER_Pack_Flecktarn",
						"CFP_Kitbag_Flecktarn"
		];

		_coms_lead = [
						"TFAR_rt1523g_big_bwmod"
		];

		_headgear = [
						"CUP_H_Ger_M92_Cover",
						"CUP_H_OpsCore_Covered_Fleck",
						"CUP_H_OpsCore_Covered_Fleck_SF"
		];
	};
	case "bwtropen": {
		_uniforms = [
						"CUP_U_B_GER_Tropentarn_1",
						"CUP_U_B_GER_Tropentarn_2",
						"CUP_U_B_GER_Tropentarn_3",
						"CUP_U_B_GER_Tropentarn_5",
						"CUP_U_B_GER_Tropentarn_6",
						"CUP_U_B_GER_Tropentarn_7",
						"CUP_U_B_GER_Tropentarn_8",
						"CUP_U_B_GER_Tropentarn_4",
						"CUP_U_B_GER_Crye",
						"CUP_U_B_GER_Crye2"
		];

		_vests = [
						"CUP_V_B_GER_PVest_Trop_Gren",
						"CUP_V_B_GER_PVest_Trop_Gren_LT",
						"CUP_V_B_GER_PVest_Trop_MG",
						"CUP_V_B_GER_PVest_Trop_MG_LT",
						"CUP_V_B_GER_PVest_Trop_RFL",
						"CUP_V_B_GER_PVest_Trop_RFL_LT"
		];

		_vests_san = [
						"CUP_V_B_GER_PVest_Trop_Med",
						"CUP_V_B_GER_PVest_Trop_Med_LT"
		];

		_vests_lead = [
						"CUP_V_B_GER_PVest_Trop_TL",
						"CUP_V_B_GER_PVest_Trop_TL_LT",
						"CUP_V_B_GER_Armatus_BB_Trop"
		];

		_backpacks = [
						"CUP_B_GER_Medic_Tropentarn",
						"CUP_B_GER_Pack_Tropentarn",
						"CFP_Kitbag_Tropentarn"
		];

		_coms_lead = [
						"TFAR_rt1523g_big_bwmod_tropen"
		];

		_headgear = [
						"CUP_H_Ger_M92_Cover_Trop",
						"CUP_H_OpsCore_Covered_Tropen",
						"CUP_H_OpsCore_Covered_Tropen_SF"
		];
	};
	case "bwwinter": {
		_uniforms = [
						"CFP_U_FieldUniform_flecktarn_snow"
		];

		_vests = [
						"GRE_PlateCarrier1_Grau"
		];

		_vests_san = [
						"GRE_PlateCarrier1_Grau"
		];

		_vests_lead = [
						"GRE_PlateCarrier1_Grau"
		];

		_backpacks = [
						"CFP_AssaultPack_White",
						"CFP_Kitbag_White"
		];

		_coms_lead = [
						"TFAR_rt1523g_big_bwmod"
		];

		_headgear = [
						"CFP_OPS2017_Helmet_White",
						"CFP_OPS2017_Helmet_Grey"
		];
	};
};

//-------------------------------------------------------------------------
//
// 				Waffen
//
//-------------------------------------------------------------------------

_rifles = 	[
				"CUP_arifle_G36A",
				"CUP_arifle_G36A_RIS",

				"CUP_arifle_G36A3",
				"CUP_arifle_G36A3_grip",

				"CUP_arifle_G36C",
				"CUP_arifle_G36C_VFG",

				"CUP_arifle_G36CA3",
				"CUP_arifle_G36CA3_grip",

				"CUP_arifle_G36K",
				"CUP_arifle_G36K_VFG",
				"CUP_arifle_G36K_RIS",

				"CUP_arifle_G36KA3",
				"CUP_arifle_G36KA3_afg",
				"CUP_arifle_G36KA3_grip",

				"CUP_arifle_HK416_Black",
				"CUP_arifle_HK417_12"
];

_rifles_grenadier = [
				"CUP_arifle_AG36",
				"CUP_arifle_G36A_AG36_RIS",
				"CUP_arifle_G36A3_AG36",
				"CUP_arifle_HK416_AGL_Black",
				"CUP_arifle_HK417_12_AG36"
];

_rifles_dm = [
				"CUP_arifle_HK417_20"
];

_rifles_mg = [
				"CUP_lmg_minimi_railed"
];


switch tarnfarbeV do {
	case "bwfleck": {
		_rifles = 	_rifles + [
						"CUP_arifle_G36A_wdl",
						"CUP_arifle_G36A_RIS_wdl",

						"CUP_arifle_G36A3_grip",
						"CUP_arifle_G36A3_grip_wdl",

						"CUP_arifle_G36C_wdl",
						"CUP_arifle_G36C_VFG_wdl",

						"CUP_arifle_G36CA3_wdl",
						"CUP_arifle_G36CA3_grip_wdl",

						"CUP_arifle_G36K_wdl",
						"CUP_arifle_G36K_VFG_wdl",
						"CUP_arifle_G36K_RIS_wdl",

						"CUP_arifle_G36KA3_wdl",
						"CUP_arifle_G36KA3_afg_wdl",
						"CUP_arifle_G36KA3_grip_wdl",

						"CUP_arifle_HK416_Wood",
						"CUP_arifle_HK417_12_Wood"
		];

		_rifles_grenadier = _rifles_grenadier + [
						"CUP_arifle_AG36_wdl",
						"CUP_arifle_G36A_AG36_RIS_wdl",
						"CUP_arifle_G36A3_AG36_wdl",
						"CUP_arifle_G36K_AG36_wdl",
						"CUP_arifle_G36K_RIS_AG36_wdl",
						"CUP_arifle_HK416_AGL_Wood"
		];

		_rifles_dm = _rifles_dm + [
						"CUP_arifle_HK417_20_Wood"
		];
	};
	case "bwtropen": {
		_rifles = _rifles +	[
						"CUP_arifle_G36A_camo",
						"CUP_arifle_G36A_RIS_camo",
						"CUP_arifle_G36A3_grip",
						"CUP_arifle_G36A3_grip_camo",
						"CUP_arifle_HK416_Desert",
						"CUP_arifle_HK417_12_Desert",
						"CUP_arifle_G36C_camo",
						"CUP_arifle_G36C_VFG_camo",
						"CUP_arifle_G36CA3_camo",
						"CUP_arifle_G36CA3_grip_camo",
						"CUP_arifle_G36K_camo",
						"CUP_arifle_G36K_VFG_camo",
						"CUP_arifle_G36K_RIS_camo",
						"CUP_arifle_G36KA3_camo",
						"CUP_arifle_G36KA3_grip_camo"
		];

		_rifles_grenadier = _rifles_grenadier + [
						"CUP_arifle_AG36_camo",
						"CUP_arifle_G36A_AG36_RIS_camo",
						"CUP_arifle_G36A3_AG36_camo",
						"CUP_arifle_HK416_AGL_Desert"
		];

		_rifles_dm = _rifles_dm + [
						"CUP_arifle_HK417_20_Desert"
		];
	};
	case "bwwinter": {
		_rifles = 	_rifles + [
						"CUP_arifle_G36A_wdl",
						"CUP_arifle_G36A_RIS_wdl",

						"CUP_arifle_G36A3_grip",
						"CUP_arifle_G36A3_grip_wdl",

						"CUP_arifle_G36C_wdl",
						"CUP_arifle_G36C_VFG_wdl",

						"CUP_arifle_G36CA3_wdl",
						"CUP_arifle_G36CA3_grip_wdl",

						"CUP_arifle_G36K_wdl",
						"CUP_arifle_G36K_VFG_wdl",
						"CUP_arifle_G36K_RIS_wdl",

						"CUP_arifle_G36KA3_wdl",
						"CUP_arifle_G36KA3_afg_wdl",
						"CUP_arifle_G36KA3_grip_wdl",

						"CUP_arifle_HK416_Wood",
						"CUP_arifle_HK417_12_Wood"
		];

		_rifles_grenadier = _rifles_grenadier + [
						"CUP_arifle_AG36_wdl",
						"CUP_arifle_G36A_AG36_RIS_wdl",
						"CUP_arifle_G36A3_AG36_wdl",
						"CUP_arifle_G36K_AG36_wdl",
						"CUP_arifle_G36K_RIS_AG36_wdl",
						"CUP_arifle_HK416_AGL_Wood"
		];

		_rifles_dm = _rifles_dm + [
						"CUP_arifle_HK417_20_Wood"
		];
	};	
};


//-------------------------------------------------------------------------
//
// 				Attachements
//
//-------------------------------------------------------------------------


_optics =	[
				"cup_optic_g36dualoptics",
				"cup_optic_g36dualoptics_wood",
				"cup_optic_g36dualoptics_desert",
				
				"cup_optic_microt1",
				"cup_optic_microt1_od",
				"cup_optic_microt1_coyote",
				
				"cup_optic_microt1_low",
				"cup_optic_microt1_low_od",
				"cup_optic_microt1_low_coyote",
				
				"cup_optic_ac11704_black",
				"cup_optic_ac11704_od",
				"cup_optic_ac11704_coyote",
				
				"cup_optic_elcan_specterdr_rmr_black",
				"cup_optic_elcan_specterdr_rmr_od",
				"cup_optic_elcan_specterdr_rmr_coyote",
				
				"cup_optic_elcan_specterdr_kf_rmr_black",
				"cup_optic_elcan_specterdr_kf_rmr_od",
				"cup_optic_elcan_specterdr_kf_rmr_coyote",
				
				"cup_optic_elcan_reflex",
				"cup_optic_elcan_reflex_od",
				"cup_optic_elcan_reflex_coyote",
				
				"cup_optic_holoblack",
				"cup_optic_holowdl",
				"cup_optic_holodesert",				
				
				"cup_optic_eotech553_black",
				"cup_optic_eotech553_od",
				"cup_optic_eotech553_coyote",
				"cup_optic_eotech533",
				"cup_optic_eotech533grey",
				
				"cup_optic_g33_hws_blk",
				"cup_optic_g33_hws_coyote",
				"cup_optic_g33_hws_tan",
				"cup_optic_g33_hws_od",
				
				"optic_holosight_arid_f",
				"optic_holosight_blk_f",
				"optic_holosight_khk_f",
				"optic_holosight_lush_f",
				"optic_holosight",
				
				"optic_holosight_smg_blk_f",
				"optic_holosight_smg_khk_f",
				"optic_holosight_smg",
				
				"cup_optic_hensoldtzo_low_rds",
				"cup_optic_hensoldtzo_low_rds_od",
				"cup_optic_hensoldtzo_low_rds_coyote",
				
				"cup_optic_hensoldtzo_rds",
				"cup_optic_hensoldtzo_rds_od",
				"cup_optic_hensoldtzo_rds_coyote",
				
				"cup_optic_zeisszpoint",
				
				"cup_optic_smaw_scope"
];

_optics_dm = [
				"optic_ams",
				"optic_ams_snd",
				"optic_ams_khk"
];

_attachments = [
				"cup_acc_llm01_l",
				"cup_acc_llm01_od_l",
				"cup_acc_llm01_desert_l",
				"cup_acc_llm01_coyote_l",
				
				"cup_acc_llm_black",
				"cup_acc_llm_od",
				"cup_acc_llm",
				
				"cup_acc_anpeq_15_black",
				"cup_acc_anpeq_15_od",
				"cup_acc_anpeq_15",
				
				"cup_acc_anpeq_15_black_top",
				"cup_acc_anpeq_15_od_top",
				"cup_acc_anpeq_15_tan_top",
				
				"cup_acc_anpeq_15_flashlight_black_l",
				"cup_acc_anpeq_15_flashlight_od_l",
				"cup_acc_anpeq_15_flashlight_tan_l",
				
				"cup_acc_anpeq_15_top_flashlight_black_l",
				"cup_acc_anpeq_15_top_flashlight_od_l",
				"cup_acc_anpeq_15_top_flashlight_tan_l",
				
				"cup_bipod_g36",
				"cup_bipod_g36_wood",
				"cup_bipod_g36_desert",

				"cup_bipod_harris_1a2_l_blk"
];


_pistol = [
				"CUP_hgun_M17_Black"
];

_mags =	[
				"CUP_30Rnd_556x45_G36",
				"CUP_30Rnd_TE1_Red_Tracer_556x45_G36",
				
				"CUP_30Rnd_556x45_G36_wdl",
				"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl",
				
				"CUP_30Rnd_556x45_G36_camo",
				"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo",
				
				"CUP_30Rnd_556x45_PMAG_BLACK",
				"CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red",
				"CUP_30Rnd_556x45_PMAG_OD",
				"CUP_30Rnd_556x45_PMAG_OD_Tracer_Red",
				"CUP_30Rnd_556x45_PMAG_COYOTE",
				"CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red",
				
				"CUP_17Rnd_9x19_M17_Black",
				"CUP_21Rnd_9x19_M17_Black",
				
				"CUP_20Rnd_762x51_HK417",
				"CUP_20Rnd_TE1_Red_Tracer_762x51_HK417",
				
				"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
				"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
				
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",
				"ACE_40mm_Flare_ir",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeGreen_Grenade_shell",
				
				"CUP_SMAW_HEAA_M"
];
						
_launcher_AT = [
				"CUP_launch_Mk153Mod0"
];

_launcher_AA = [						
];

//-------------------------------------------------------------------------
//
// 				Ausrüstung
//
//-------------------------------------------------------------------------

_grenades = [
				"HandGrenade",
				"SmokeShell",
				"SmokeShellRed",
				"SmokeShellGreen"
];

_items_1 = [				
				"ItemMap",
				"ItemCompass",
				"ACE_Altimeter",
				"ACE_MapTools",
				"ACE_EarPlugs",
				"ACE_IR_Strobe_Item",
				"ACE_CableTie",
				"ACE_Flashlight_XL50",
				"ACE_EntrenchingTool",
				"ACE_wirecutter",
				"CUP_NVG_PVS15_black",
				"TFAR_anprc152"	
];

_items_2 = [
				"Rangefinder",
				"Laserbatteries",
				"Laserdesignator_02_ghex_F",
				"ItemAndroid",
				"ItemcTab",
				"ItemcTabHCam"
];

_items_3 = [
				"ACE_Fortify",
				"ToolKit",
				"ACE_DefusalKit",
				"ACE_UAVBattery",
				"B_UavTerminal",
				"ACE_Clacker",
				"ACE_RangeCard",
				"ACE_Kestrel4500",
				"ACE_SpottingScope"
];

_medic_standard = [		
				"ACE_fieldDressing",
				"ACE_elasticBandage",
				"ACE_packingBandage",
				"ACE_quikclot",
				
				"ACE_tourniquet",
				"ACE_splint",

				"ACE_morphine",

				"ACE_salineIV_500",

				"kat_chestSeal"
];

_medic_ehb = [			
				"ACE_bodyBag",
				"ACE_epinephrine",
				"ACE_adenosine",

				"kat_Pulseoximeter",
				"kat_TXA",
				"kat_larynx",
				"kat_IO_FAST",
				"kat_IV_16",

				"kat_fentanyl",
				"kat_naloxone",
				"kat_ketamine",
				"kat_Carbonate"
];

_medic_san = [			
				"ACE_marker_flags_black",
				"ACE_marker_flags_green",
				"ACE_marker_flags_yellow",
				"ACE_marker_flags_red",

				"ACE_surgicalKit",

				"kat_EACA",
				"kat_nitroglycerin"
];

_medic_doc = [
				"ACE_personalAidKit",
				"kat_AED",
				"kat_scalpel",

				"kat_norepinephrine",
				"kat_nalbuphine",
				"kat_lorazepam"			
];


			
_facewear = [
				"G_Aviator",
				"G_Lowprofile",
				"G_Shades_Black",
				"G_Squares_Tinted",
				"G_Squares",
				"CUP_G_ESS_KHK_Dark",
				"CUP_G_ESS_KHK_Ember",
				"CUP_G_ESS_KHK",
				"CUP_G_ESS_BLK_Facewrap_Black",
				"CUP_G_ESS_RGR_Facewrap_Skull",
				"CUP_G_ESS_KHK_Facewrap_Tan",
				"CUP_G_ESS_KHK_Scarf_Tan",
				"CUP_G_ESS_BLK_Scarf_Blk",
				"CUP_G_ESS_BLK_Scarf_Grn",
				"CUP_G_ESS_BLK_Scarf_Red",
				"CUP_G_ESS_KHK_Scarf_Tan",
				"CUP_G_ESS_BLK_Scarf_White",
				"CUP_G_ESS_BLK_Scarf_Face_Blk",
				"CUP_G_ESS_BLK_Scarf_Face_Grn",
				"CUP_G_ESS_BLK_Scarf_Face_Red",
				"CUP_G_ESS_KHK_Scarf_Face_Tan",
				"CUP_G_ESS_BLK_Scarf_Face_White",
				"CUP_PMC_Facewrap_Black",
				"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
				"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
				"CUP_PMC_Facewrap_Tan",
				"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
				"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
				"CUP_G_Scarf_Face_Blk",
				"CUP_G_Scarf_Face_Grn",
				"CUP_TK_NeckScarf",
				"CUP_G_Scarf_Face_Red",
				"CUP_G_Scarf_Face_Tan",
				"CUP_G_Scarf_Face_White",
				"CUP_G_Oakleys_Clr",
				"CUP_G_Oakleys_Drk",
				"CUP_G_Oakleys_Embr",
				"CUP_G_TK_RoundGlasses",
				"CUP_G_TK_RoundGlasses_blk",
				"CUP_G_TK_RoundGlasses_gold",
				"CUP_G_Grn_Scarf_Shades",
				"CUP_G_Tan_Scarf_Shades",
				"CUP_G_White_Scarf_Shades",
				"CUP_FR_NeckScarf3",
				"CUP_FR_NeckScarf",
				"CUP_FR_NeckScarf2",
				"CUP_FR_NeckScarf5",
				"CUP_FR_NeckScarf4",
				"CUP_RUS_Balaclava_blk",
				"CUP_RUS_Balaclava_tan",
				"CUP_G_ESS_BLK_Dark",
				"CUP_G_ESS_BLK_Ember",
				"CUP_G_ESS_BLK",
				"CUP_G_ESS_RGR_Dark",
				"CUP_G_ESS_RGR_Ember",
				"CUP_G_ESS_RGR",
				"G_Bandanna_aviator",
				"G_Bandanna_beast",
				"G_Bandanna_blk",
				"G_Bandanna_khk",
				"G_Bandanna_oli",
				"G_Bandanna_shades",
				"G_Bandanna_tan"
];

_echo_items_1 = [

				//Weapon Attachments
				"cup_muzzle_snds_m16",
				"cup_muzzle_snds_m16_camo",

				"cup_muzzle_snds_m9",					

				//Westen Echo
				"CUP_V_B_Armatus_BB_MCam",
				"CUP_V_B_Armatus_BB_Black",

				//Uniform
				"CUP_U_CRYE_BLK_Full",
				"CUP_U_CRYE_BLK_Roll",
				
				//headgear
				"CUP_H_Ger_Boonie2_Flecktarn",
				"CUP_H_Ger_Boonie_Flecktarn",
				"CUP_H_OpsCore_Black_SF"
];

_echo_items_2 = [
				//Rifles
				"CUP_smg_MP5SD6",
				"CUP_30Rnd_Subsonic_9x19_MP5",
				
				"CUP_smg_MP7",
				"CUP_smg_MP7_woodland",
				"CUP_40Rnd_46x30_MP7",
				"CUP_40Rnd_46x30_MP7_Red_Tracer",
				"cup_muzzle_snds_mp7",
				
				"CUP_lmg_Mk48",
				"CUP_lmg_Mk48_od",
				"150Rnd_762x51_Box",
				
				//Throwables
				"B_IR_Grenade",
				"ACE_M84",

				//Explosives
				"DemoCharge_Remote_Mag",
				"APERSMineDispenser_Mag",
				"CUP_Mine_M",
				"ClaymoreDirectionalMine_Remote_Mag",

				//UAV
				"B_UAV_01_backpack_F",

				//Diving
				"U_B_Wetsuit",
				"V_RebreatherB",
				"G_B_Diving"
];

_sierra_items_1 = [				
				//Optics
				"cup_optic_leupoldmk4_25x50_lrt",
				"cup_optic_leupoldmk4_25x50_lrt_woodland",
				"cup_optic_leupold_vx3",
				"optic_lrps",

				//Attachements
				"muzzle_snds_b",
				"muzzle_snds_b_lush_f",
				
				//Uniform
				"CUP_U_CRYE_BLK_Full",
				"CUP_U_CRYE_BLK_Roll",
				
				//headgear
				"CUP_H_Ger_Boonie2_Flecktarn",
				"CUP_H_Ger_Boonie_Flecktarn",
				"CUP_H_OpsCore_Black_SF"
];

_sierra_items_2 = [
				//Rifles
				"CUP_srifle_G22_wdl",
				"CUP_srifle_G22_blk",
				"cup_muzzle_snds_awm",
				"CUP_5Rnd_762x67_G22",
				
				"srifle_GM6_F",
				"5Rnd_127x108_Mag",

				//Throwables
				"B_IR_Grenade",
				"ACE_M84",
				
				//UAV
				"B_UAV_01_backpack_F"
];

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//			Rollenspezifische Loadouts erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	


//------------------------------------------------------------------
//						Schütze
//------------------------------------------------------------------	

if (_loadout == "Zug_Schutze") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;
	
	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Grenadier
//------------------------------------------------------------------	

if (_loadout == "Zug_Grenadier") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_grenadier +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						DM
//------------------------------------------------------------------	
	
if (_loadout == "Zug_DM") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics_dm +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_dm +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						MG
//------------------------------------------------------------------	
	
if (_loadout == "Zug_MG") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_mg +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						EHB
//------------------------------------------------------------------	
	
if (_loadout == "Zug_EHB") then {
	_equipment = 					
					_uniforms +
					_vests_san +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;			

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard +
						_medic_ehb;
	};
};


//------------------------------------------------------------------
//						Sanitäter
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Sanitater") then {					
	_equipment = 					
					_uniforms +
					_vests_san +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +	
					_facewear;	

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard +
						_medic_ehb +
						_medic_san;
	};
};


//------------------------------------------------------------------
//						AT
//------------------------------------------------------------------	

if (_loadout == "Zug_AT") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_launcher_AT +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						ATA
//------------------------------------------------------------------	

if (_loadout == "Zug_ATA") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						AA
//------------------------------------------------------------------	

if (_loadout == "Zug_AA") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_launcher_AA +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Truppführer
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Truppfuhrer") then {
	_equipment = 
					_uniforms +
					_vests_lead +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						Gruppenführer
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Gruppenfuhrer") then {
	_equipment = 
					_uniforms +
					_vests_lead +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_coms_lead +
					_facewear;

	if (_rearm) then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Echo
//------------------------------------------------------------------	
if (_playerGrp == grpecho1 || _playerGrp == grpecho2) then {
	_equipment = 
					_headgear +
					_backpacks +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_items_3 +
					_coms_lead +
					_facewear +
					_echo_items_1;					

	if _rearm then {
		_equipment = 
					_equipment +
					_rifles +
					_mags +
					_echo_items_2 +
					_medic_standard +
					_medic_ehb +
					_medic_san;
	};
};

//------------------------------------------------------------------
//						Sierra
//------------------------------------------------------------------	
if (_playerGrp == grpsierra) then {
	_equipment = 
					_headgear +
					_backpacks +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_items_3 +
					_coms_lead +
					_facewear +
					_sierra_items_1;
					

	if _rearm then {
		_equipment = 
					_equipment +
					_rifles +
					_mags +
					_sierra_items_2 +
					_medic_standard +
					_medic_ehb +
					_medic_san;
	};
};
//------------------------------------------------------------------
//						Kilo // Lima
//------------------------------------------------------------------
if (_playerGrp == grpkilo || _playerGrp == grplima || _playerGrp == grpfox ) then {
	_equipment = 
					_uniforms +
					_vests +
					_vests_san +
					_vests_lead +
					_backpacks +
					_headgear +
					_rifles +
					_rifles_grenadier +
					_rifles_dm +
					_rifles_mg +
					_optics +
					_optics_dm +
					_attachments +
					_pistol +
					_mags +
					_launcher_AT +
					_launcher_AA +
					_grenades +
					_items_1 +
					_items_2 +
					_items_3 +
					_medic_standard +
					_medic_ehb +
					_medic_san +
					_medic_doc +
					_coms_lead +
					_facewear +
					_echo_items_1 +
					_echo_items_2 +
					_sierra_items_1 +
					_sierra_items_2;
};

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Arsenal Erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	


// Fill ACE Arsenal
[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;

// Open ACE Arsenal
_waffenkammer = [player, player, false] call ace_arsenal_fnc_openBox;

// Message for Player which options are available
if _rearm then {
	titleText ["<t color='#ffffff' size='2'>Die Waffenkammer steht in vollem Umfang zur Verfügung.<br/>Nach Waffenwechsel AUFMUNITIONIEREN nicht vergessen!</t>", "PLAIN", 1, true, true];
}
else {
	
	titleText ["<t color='#ffffff' size='1'>Die Mission wird fortgesetzt<br/></t><t color='#ff0000' size='2'>Es ist weder ein Waffenwechsel noch Aufmunitionieren möglich.</t>", "PLAIN", 1, true, true];
};


// Add Event Handler for closing the Arsenal
_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

// Wait until Arsenal is closed by Player
waitUntil { player getVariable "arsenalClosed" };

[player, true, false] call ace_arsenal_fnc_removeVirtualItems;