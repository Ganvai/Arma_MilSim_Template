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

//-------------------------------------------------------------------------
//
// 				Kleidung
//
//-------------------------------------------------------------------------
_equipment = [];

_uniforms = [
				"CUP_U_B_USMC_FROG4_WMARPAT",
				"CUP_U_B_USMC_FROG3_WMARPAT",
				"CUP_U_B_USMC_FROG2_WMARPAT",
				"CUP_U_B_USMC_FROG1_WMARPAT",

				"CUP_U_B_USMC_MCCUU",
				"CUP_U_B_USMC_MCCUU_gloves",
				"CUP_U_B_USMC_MCCUU_roll_2",
				"CUP_U_B_USMC_MCCUU_roll_2_gloves",
				"CUP_U_B_USMC_MCCUU_roll_2_pads",
				"CUP_U_B_USMC_MCCUU_roll_2_pads_gloves",
				"CUP_U_B_USMC_MCCUU_pads",
				"CUP_U_B_USMC_MCCUU_pads_gloves",

				"CUP_U_B_USMC_MCCUU_roll",
				"CUP_U_B_USMC_MCCUU_roll_gloves",
				"CUP_U_B_USMC_MCCUU_roll_pads",
				"CUP_U_B_USMC_MCCUU_roll_pads_gloves"
];

_vests = [
				"CUP_V_JPC_communications_rngr",						
				"CUP_V_JPC_Fast_rngr",
				"CUP_V_JPC_weapons_rngr",

				"CUP_V_JPC_Fastbelt_rngr",
				"CUP_V_JPC_lightbelt_rngr",
				"CUP_V_JPC_weaponsbelt_rngr",
				
				"CUP_V_JPC_communications_mc",
				"CUP_V_JPC_Fast_mc",
				"CUP_V_JPC_weapons_mc",
				
				"CUP_V_JPC_communicationsbelt_mc",
				"CUP_V_JPC_Fastbelt_mc",
				"CUP_V_JPC_lightbelt_mc",
				"CUP_V_JPC_weaponsbelt_mc"
];

_vests_san = [
				"CUP_V_JPC_medical_rngr",
				"CUP_V_JPC_medicalbelt_rngr",
				"CUP_V_JPC_medical_mc",
				"CUP_V_JPC_medicalbelt_mc"
];

_vests_lead = [
				"CUP_V_JPC_communications_rngr",						
				"CUP_V_JPC_tl_rngr",

				"CUP_V_JPC_tlbelt_rngr",
				"CUP_V_JPC_communicationsbelt_rngr",
				
				"CUP_V_JPC_communications_mc",
				"CUP_V_JPC_tl_mc",
				
				"CUP_V_JPC_communicationsbelt_mc",
				"CUP_V_JPC_tlbelt_mc"
];

_backpacks = [
				"CUP_B_USMC_AssaultPack",
				"CUP_B_USMC_MOLLE_WDL",
				"CUP_B_Kombat_Olive",
				"CUP_B_HikingPack_Civ",
				"B_Carryall_oli",
				"B_Bergen_tna_F"
];

_headgear = [
				"CUP_H_LWHv2_MARPAT",
				"CUP_H_LWHv2_MARPAT_comms",
				"CUP_H_LWHv2_OD",
				"CUP_H_LWHv2_OD_comms",
				"CUP_H_LWHv2_ERDL_lowland",
				"CUP_H_LWHv2_ERDL_lowland_comms",
				"CUP_H_LWHv2_tigerstripe",
				"CUP_H_LWHv2_tigerstripe_comms",

				"CUP_H_OpsCore_Green_SF",
				"CUP_H_OpsCore_Covered_MTP_SF",					
				"CUP_H_OpsCore_Covered_Tigerstripe_SF",
				"CUP_H_OpsCore_Black_SF"
];

//-------------------------------------------------------------------------
//
// 				Waffen
//
//-------------------------------------------------------------------------

_rifles = 	[
				"CUP_arifle_Mk17_STD_AFG_woodland",
				"CUP_arifle_Mk17_STD_AFG_black",
				"CUP_arifle_Mk17_STD_black",
				"CUP_arifle_Mk17_STD_FG_black",
				"CUP_arifle_Mk17_STD_FG_woodland",
				"CUP_arifle_Mk17_STD_SFG_black",
				"CUP_arifle_Mk17_STD_SFG_woodland",
				"CUP_arifle_Mk17_CQC_Black",
				"CUP_arifle_Mk17_CQC_woodland",
				"CUP_arifle_Mk17_CQC_AFG_black",
				"CUP_arifle_Mk17_CQC_AFG_woodland",
				"CUP_arifle_Mk17_CQC_FG_black",
				"CUP_arifle_Mk17_CQC_FG_woodland",
				"CUP_arifle_Mk17_CQC_SFG_black",
				"CUP_arifle_Mk17_CQC_SFG_woodland",
				
				"CUP_arifle_Mk16_CQC_AFG_black",
				"CUP_arifle_Mk16_CQC_AFG_woodland",
				"CUP_arifle_Mk16_CQC_black",
				"CUP_arifle_Mk16_CQC_woodland",
				"CUP_arifle_Mk16_CQC_FG_black",
				"CUP_arifle_Mk16_CQC_FG_woodland",
				"CUP_arifle_Mk16_CQC_SFG_woodland",
				"CUP_arifle_Mk16_CQC_SFG_black",
				"CUP_arifle_Mk16_STD_black",
				"CUP_arifle_Mk16_STD_woodland",
				"CUP_arifle_Mk16_STD_AFG_black",
				"CUP_arifle_Mk16_STD_AFG_woodland",
				"CUP_arifle_Mk16_STD_FG_black",
				"CUP_arifle_Mk16_STD_FG_woodland",
				"CUP_arifle_Mk16_STD_SFG_black",
				"CUP_arifle_Mk16_STD_SFG_woodland",
				
				"CUP_arifle_M4A1_black",
				"CUP_arifle_M4A3_black",
				"CUP_arifle_M4A3_camo",
				"CUP_arifle_M4A1_camo",
				"CUP_arifle_M4A1_SOMMOD_black",
				"CUP_arifle_M4A1_SOMMOD_green",
				"CUP_arifle_M4A1_SOMMOD_Grip_black",
				"CUP_arifle_M4A1_SOMMOD_Grip_green",
				"CUP_arifle_mk18_black"
];

_rifles_grenadier = [
				"CUP_arifle_Mk17_STD_EGLM_black",
				"CUP_arifle_Mk17_STD_EGLM_woodland",
				"CUP_arifle_mk18_m203_black",
				"CUP_arifle_M4A1_BUIS_GL",
				"CUP_arifle_M4A1_BUIS_camo_GL",
				"CUP_arifle_Mk16_CQC_EGLM_black",
				"CUP_arifle_Mk16_CQC_EGLM_woodland",
				"CUP_arifle_Mk16_STD_EGLM_black",
				"CUP_arifle_Mk16_STD_EGLM_woodland"				
];

_rifles_dm = [
				"CUP_arifle_Mk20_black",
				"CUP_arifle_Mk20_woodland",
				"CUP_srifle_Mk18_blk",
				"CUP_srifle_Mk18_wdl",
				"srifle_EBR_F",
				"CUP_srifle_M14_DMR"
];

_rifles_mg = [
				"CUP_lmg_Mk48",
				"CUP_lmg_Mk48_od",
				"CUP_lmg_Mk48_nohg",
				"CUP_lmg_Mk48_nohg_od",
				"CUP_lmg_Mk48_nohg_wdl",
				"CUP_lmg_Mk48_wdl",
				"CUP_lmg_m249_pip1",
				"CUP_lmg_m249_pip2"
];

_optics =	[
				"cup_optic_microt1",
				"cup_optic_microt1_low",
				"cup_optic_microt1_low_od",
				"cup_optic_microt1_od",
				"cup_optic_aimm_microt1_blk",
				"cup_optic_aimm_microt1_od",
				"cup_optic_ac11704_black",
				"cup_optic_ac11704_od",
				"cup_optic_holoblack",
				"cup_optic_holowdl",
				"cup_optic_eotech553_black",
				"cup_optic_eotech553_od",
				"cup_optic_g33_hws_blk",
				"cup_optic_g33_hws_od",
				"cup_optic_compm2_low",
				"cup_optic_compm2_low_od",
				"cup_optic_aimm_m68_blk",
				"cup_optic_aimm_m68_od",
				"cup_optic_aimm_compm2_blk",
				"cup_optic_aimm_compm2_od",
				"cup_optic_compm2_black",
				"cup_optic_compm2_od",
				"cup_optic_compm2_woodland2",
				"cup_optic_compm2_woodland",
				"cup_optic_acog_ta01nsn_rmr_black",
				"cup_optic_acog_ta01nsn_rmr_od",
				"cup_optic_acog",
				"cup_optic_acog_reflex_wood",
				"cup_optic_acog_ta648_308_black",
				"cup_optic_acog_ta648_308_od",
				"cup_optic_acog_ta648_308_rds_black",
				"cup_optic_acog_ta648_308_rds_od",
				"cup_optic_sb_11_4x20_pm_pip",
				"cup_optic_sb_11_4x20_pm_od"
];

_optics_dm = [
				"optic_ams",
				"optic_ams_khk",
				"cup_optic_an_pvs_10_black",
				"cup_optic_an_pvs_10_od",
				"cup_optic_acog_ta01nsn_rmr_black",
				"cup_optic_acog_ta01nsn_rmr_od",
				"cup_optic_acog",
				"cup_optic_acog_reflex_wood",
				"cup_optic_acog_ta648_308_black",
				"cup_optic_acog_ta648_308_od",
				"cup_optic_acog_ta648_308_rds_black",
				"cup_optic_acog_ta648_308_rds_od"
];

_attachments = [
				"CUP_acc_ANPEQ_15_Flashlight_Black_L",
				"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
				"CUP_acc_ANPEQ_15_Flashlight_OD_L",
				"CUP_acc_ANPEQ_15_Top_Flashlight_OD_L",
				"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
				"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
								
				"CUP_bipod_Harris_1A2_L_BLK",
				
				"CUP_bipod_VLTOR_Modpod",
				"CUP_bipod_VLTOR_Modpod_od",
				"cup_bipod_vltor_modpod_black"
];


_pistol = [
				"CUP_hgun_M9A1"
];

_mags =	[
				//Standard Mags
				"CUP_20Rnd_762x51_B_SCAR_bkl",
				"CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR_bkl",
				
				"CUP_30Rnd_556x45_Stanag",
				"CUP_30Rnd_556x45_Stanag_Tracer_Red",

				//DM Mags
				"CUP_20Rnd_762x51_DMR",
				"CUP_20Rnd_TE1_Red_Tracer_762x51_DMR",	

				//MG Mags
				"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
				"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
				"150Rnd_762x51_Box",
				"150Rnd_762x51_Box_Tracer",
				"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
				
				//Grenadier Mags
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"ACE_40mm_Flare_ir",
				
				//Echo Mags
				"CUP_12Rnd_45ACP_mk23",
				"CUP_30Rnd_Subsonic_9x19_MP5",
				
				//Sierra Mags
				"CUP_5Rnd_762x51_M24",
				"CUP_5Rnd_762x67_M2010_M",
				"CUP_5Rnd_TE1_Red_Tracer_762x67_M2010_M",
				"7Rnd_408_Mag",
				
				//Launcher
				"Titan_AT",
				"Titan_AA",
				
				//Pistol
				"CUP_15Rnd_9x19_M9"
];
						
_launcher_AT = [
				"launch_O_Titan_short_F",
				"launch_I_Titan_short_F",
				"launch_B_Titan_short_F"
];

_launcher_AA = [						
				"launch_I_Titan_F",
				"launch_O_Titan_F",
				"launch_B_Titan_F"
];

//-------------------------------------------------------------------------
//
// 				Ausrüstung
//
//-------------------------------------------------------------------------

_grenades = [
				"CUP_HandGrenade_M67",
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

_coms_lead = [
				"TFAR_rt1523g_big_rhs"
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

				"cup_muzzle_snds_mk23",					
				
				"cup_acc_mk23_lam_f",

				//Westen Echo
				"CUP_V_B_Armatus_MCam",
				"CUP_V_B_Armatus_BB_MCam",

				//Items								
				"CUP_NVG_GPNVG_black",

				//Uniform
				"CUP_U_CRYE_G3C_AOR2",
				"CUP_U_CRYE_BLK_Full",
				"CUP_U_CRYE_G3C_MC_US",
				"CUP_U_CRYE_G3C_MC_V2",
				"CUP_U_CRYE_V1_Full",
				"CUP_U_CRYE_V2_Full",
				"CUP_U_CRYE_V3_Full",
				"CUP_U_CRYE_V1_Roll",
				"CUP_U_CRYE_V2_Roll",
				"CUP_U_CRYE_V3_Roll",
				
				//headgear
				"CUP_H_USA_Cap_PUNISHER_DEF",
				"CUP_H_USA_Cap_Mcam_DEF",
				"CUP_H_CZ_Hat02",
				"CUP_H_CZ_Hat03",
				"CUP_H_FR_BoonieMARPAT",
				"CUP_H_USMC_BOONIE_PRR_WDL"
];

_echo_items_2 = [
				//Rifles
				"CUP_arifle_Mk16_CQC_AFG_black",
				"CUP_arifle_Mk16_CQC_AFG_woodland",
				"CUP_arifle_M4A1_SOMMOD_black",
				"CUP_arifle_M4A1_SOMMOD_ctrgt",
				"CUP_smg_MP5SD6",
				
				//Pistol
				"CUP_hgun_Mk23",

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
				
				"cup_muzzle_snds_mk23",					
				
				"cup_acc_mk23_lam_f",

				//Uniform
				"CUP_U_CRYE_G3C_AOR2",
				"CUP_U_CRYE_BLK_Full",
				"U_B_T_FullGhillie_tna_F",
				"U_B_T_Sniper_F",
				
				//headgear
				"CUP_H_USA_Cap_PUNISHER_DEF",
				"CUP_H_USA_Cap_Mcam_DEF",
				"CUP_H_CZ_Hat02",
				"CUP_H_CZ_Hat03",
				"CUP_H_FR_BoonieMARPAT",
				"CUP_H_USMC_BOONIE_PRR_WDL"
];

_sierra_items_2 = [
				//Rifles
				"CUP_srifle_Mk18_blk",
				"CUP_srifle_Mk18_wdl",
				"CUP_arifle_Mk20_black",
				"CUP_arifle_Mk20_woodland",
				"CUP_srifle_M24_wdl",
				"CUP_srifle_M24_blk",
				"CUP_srifle_M2010_blk",
				"CUP_srifle_M2010_wdl",
				"CUP_srifle_M14_DMR",
				"CUP_srifle_M107_Base",
				"CUP_srifle_M107_Woodland",
				"srifle_LRR_F",
				"srifle_LRR_tna_F",

				//Pistol
				"CUP_hgun_Mk23",

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