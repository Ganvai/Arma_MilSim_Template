//------------------------------------------------------------------
//
//	Technisch benötigte Variablen
//
//------------------------------------------------------------------

zug_equipment_ar_alt = [];
kleidung_ar = [];
grenadier_equipment_ar_alt = [];
mg_equipment_ar_alt = [];
at_equipment_ar_alt = [];
dm_equipment_ar_alt = [];
san_equipment_ar_alt = [];

//------------------------------------------------------------------
//
//	Default Camo Equipment = Flecktarn
//
//------------------------------------------------------------------
uniforms = "CUP_U_B_GER_Fleck_Crye";
helmet = "CUP_H_OpsCore_Covered_Fleck";
vests = "GRE_PlateCarrier1_Flecktarn";

// Alternative choices for Players in the armory
kleidung_ar = [
	//Uniforms
	"CUP_U_B_GER_Flecktarn_1",
	"CUP_U_B_GER_Flecktarn_2",
	"CUP_U_B_GER_Flecktarn_3",
	"CUP_U_B_GER_Flecktarn_5",
	"CUP_U_B_GER_Flecktarn_6",
	"CUP_U_B_GER_Flecktarn_7",
	"CUP_U_B_GER_Flecktarn_8",
	"CUP_U_B_GER_Flecktarn_4",
	"CUP_U_B_GER_Fleck_Crye",
	"CUP_U_B_GER_Fleck_Crye2",
	
	//Vests
	"GRE_PlateCarrier1_Flecktarn",
	"GRE_PlateCarrier1_Flecktarn_B",
	"CUP_V_B_GER_PVest_Fleck_Gren",
	"CUP_V_B_GER_PVest_Fleck_Gren_LT",
	"CUP_V_B_GER_PVest_Fleck_MG",
	"CUP_V_B_GER_PVest_Fleck_MG_LT",
	"CUP_V_B_GER_PVest_Fleck_RFL",
	"CUP_V_B_GER_PVest_Fleck_RFL_LT",
	"CUP_V_B_GER_PVest_Fleck_Med",
	"CUP_V_B_GER_PVest_Fleck_Med_LT",
	"CUP_V_B_GER_PVest_Fleck_TL",
	"CUP_V_B_GER_PVest_Fleck_TL_LT",
	
	//Helmets
	"CUP_H_Ger_M92_Cover",
	"CUP_H_OpsCore_Covered_Fleck",
	"CUP_H_OpsCore_Covered_Fleck_SF"
];

facewear = "CUP_G_PMC_Facewrap_Black_Glasses_Dark"; 

rucksack = "CUP_B_GER_Medic_Flecktarn";
rucksack_big = "CFP_Kitbag_Flecktarn";
rucksack_lr = "TFAR_rt1523g_big_bwmod";

primary = "CUP_arifle_G36KA3_grip";
primary_scope = "cup_optic_elcan_specterdr_kf_rmr_black";
primary_attachement1 = "cup_acc_llm_black";
primary_attachement2 = "";
primary_mag = "CUP_30Rnd_556x45_G36";
primary_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
primary_mag_count = 7;
primary_mag_tracer_count = 2;

//Needed if you have more Primary Weapons for choice that use different mags (f.e. G36 / HK416 / AK74)
secondary_mag = "CUP_30Rnd_556x45_PMAG_BLACK_PULL";

grenadier_primary = "CUP_arifle_G36K_RIS_AG36";
grenadier_scope = "cup_optic_g33_hws_blk";
grenadier_attachement1 = "cup_acc_llm_black";
grenadier_attachement2 = "";
grenadier_mag = "CUP_30Rnd_556x45_G36";
grenadier_mag_count = 7;
grenadier_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
grenadier_mag_tracer_count = 2;

mg = "CUP_lmg_minimi_railed";
mg_scope = "cup_optic_elcan_specterdr_kf_rmr_black";
mg_attachment1 = "";
mg_attachment2 = "";
mg_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";
mg_mag_count = 4;
mg_tracers = "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch";
mg_tracers_count = 1;

autorifle = "CUP_arifle_MG36";
autorifle_scope = "CUP_optic_AIMM_MICROT1_OD";
autorifle_attachment1 = "cup_acc_llm_black";
autorifle_attachment2 = "";
autorifle_mag = "CUP_100Rnd_556x45_BetaCMag";
autorifle_mag_count = 5;
autorifle_tracers = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";
autorifle_tracers_count = 2;

dm = "CUP_arifle_HK417_20";
dm_scope = "optic_AMS";
dm_attachment1 = "cup_acc_llm_black";
dm_attachment2 = "CUP_bipod_Harris_1A2_L_BLK";
dm_mags = "CUP_20Rnd_762x51_HK417";
dm_mags_count = 7;
dm_tracer = "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";
dm_tracer_count = 2;

handgun = "CUP_hgun_M17_Black";
handgun_mag = "CUP_17Rnd_9x19_M17_Black";
handgun_mag_count = 2;
handgun_scope = "";
handgun_attachment1 = "";
handgun_attachment2 = "";

sniper = "CUP_srifle_G22_wdl";
sniper_scope = "optic_LRPS";
sniper_attachement1 = "";
sniper_attachement2 = "CUP_bipod_VLTOR_Modpod_od";
sniper_silencer = "CUP_muzzle_snds_AWM";
sniper_mag = "CUP_5Rnd_762x67_G22";
sniper_mag_count = 5;

pilot_uniforms = "CUP_U_B_USArmy_PilotOverall";

//------------------------------------------------------------------
//	Content for Armory
//------------------------------------------------------------------

//Alternative equipment available in armory
//This array will not be overwritten by the other camo variants (further down in this file) but will be extended
zug_equipment_ar = [

	//Waffen
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
	
	"GerRng_arifle_G36KA4",
	"GerRng_arifle_G36KA4_AFG",
	"GerRng_arifle_G36KA4_VFG",

	"CUP_arifle_HK416_Black",
	"CUP_arifle_HK417_12",
	
	//Scopes
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
	
	"cup_optic_smaw_scope",
	
	//Attachements
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

	"cup_bipod_harris_1a2_l_blk",

	//Munition
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
	"CUP_20Rnd_762x51_HK417_Camo_Desert",
	"CUP_20Rnd_762x51_HK417_Camo_Wood",
	
	"CUP_20Rnd_TE1_Red_Tracer_762x51_HK417",
	
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
	
	"CUP_100Rnd_556x45_BetaCMag",
	"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",
	"CUP_100Rnd_556x45_BetaCMag_camo",
	"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_camo",
	"CUP_100Rnd_556x45_BetaCMag_wdl",
	"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_wdl",
	
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"ACE_40mm_Flare_ir",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	
	"CUP_SMAW_HEAA_M",
	
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",

	"ACE_EntrenchingTool",
	"ACE_wirecutter"
];

//Special alternative equipment for Grenadier
//Will be extended by camo alternatives
grenadier_equipment_ar = [
	"CUP_arifle_AG36",
	"CUP_arifle_G36A_AG36_RIS",
	"CUP_arifle_G36K_AG36",
	"CUP_arifle_G36K_RIS_AG36",
	"CUP_arifle_G36A3_AG36",
	"CUP_arifle_HK416_AGL_Black",
	"CUP_arifle_HK417_12_AG36"
];

//Special alternative equipment for MG
//Will be extended by camo alternatives
mg_equipment_ar = [
	"CUP_lmg_minimi_railed"
];

//Special alternative equipment for Autorifle
//Will be extended by camo alternatives
autorifle_equipment_ar = [
	"CUP_arifle_MG36"
];

//Special alternative equipment for AT
//Will be extended by camo alternatives
at_equipment_ar = [
	"CUP_launch_Mk153Mod0",
	"CUP_launch_M72A6",
	"CUP_launch_HCPF3",
	"CUP_launch_PzF3",
	"CUP_launch_BF3"
];

//Special alternative equipment for DM
//Will be extended by camo alternatives
dm_equipment_ar = [
	"CUP_arifle_HK417_20",
	"optic_ams_pip",
	"optic_ams_snd_pip",
	"optic_ams_khk_pip"
];

//Special alternative equipment for Medics
//Will be extended by camo alternatives
san_equipment_ar = [];

//------------------------------------------------------------------
//	Non Camo Equipment
//------------------------------------------------------------------
pilot_helmet = "CUP_H_SPH4_khaki";
pilot_vests = "Aircrew_vest_2_NH";
pilot_facewear = "G_Aviator";
pilot_primary = "CUP_smg_MP7";
pilot_primary_scope = "CUP_optic_AC11704_Black";
pilot_primary_mag = "CUP_40Rnd_46x30_MP7";
pilot_primary_mag_count = 2;
pilot_handgun = "CUP_hgun_FlareGun";
pilot_handgun_mag = "CUP_FlareWhite_265_M";
pilot_handgun_mag_count = 2;
pilot_nvg = "CUP_NVG_GPNVG_black";

diving_suit = "U_B_Wetsuit";
diving_helmet = "CUP_H_OpsCore_Black";
diving_vests = "V_RebreatherB";
diving_facewear = "G_B_Diving";
diving_backpack = "B_AssaultPack_blk";
diving_primary = "CUP_arifle_HK416_Black";
diving_primary_scope = "cup_optic_elcan_specterdr_kf_rmr_black_pip";
diving_primary_attachement1 = "cup_acc_anpeq_15_flashlight_black_l";
diving_primary_attachement2 = "";
diving_primary_silencer = "cup_muzzle_snds_m16";
diving_primary_mag = "CUP_30Rnd_556x45_PMAG_black_PULL";
diving_primary__mag_count = 5;

UGL_HE = "CUP_1Rnd_HE_M203";
UGL_HE_count = 6;
UGL_Smoke = "1Rnd_Smoke_Grenade_shell";
UGL_Smoke_count = 4;
UGL_Flare = "ACE_40mm_Flare_ir";
UGL_Flare_count = 2;

launcher_at = "CUP_launch_Mk153Mod0";
launcher_at_scope = "CUP_optic_SMAW_Scope";
launcher_at_ammo1 = "CUP_SMAW_HEAA_M";
launcher_at_ammo1_count = 2;
launcher_at_ammo2 = "";
launcher_at_ammo2_count = 0;
launcher_at_spotting = "CUP_SMAW_Spotting";
launcher_at_spotting_count = 1;

launcher_at_light = "CUP_launch_M72A6";

launcher_aa = "CUP_launch_FIM92Stinger";
launcher_aa_ammo = "";
launcher_aa_ammo_count = 0;

grenades = "HandGrenade";
grenades_count = 2;
smoke_white = "SmokeShell";
smoke_white_count = 2;
smoke_green = "SmokeShellGreen";
smoke_green_count = 2;
smoke_red = "SmokeShellRed";
smoke_red_count = 2;
flashbang = "ACE_M84";
ir_grenade = "B_IR_Grenade";

comms = "TFAR_anprc152";
nvg = "CUP_NVG_PVS15_black";
binocs_tier1 = "Rangefinder";
binocs_tier2 = "Laserdesignator_02_ghex_F";
laserdesignator_bats = "Laserbatteries";
cTab_big = "ItemcTab";
cTab_small = "ItemAndroid";
IRStrobe = "ACE_IR_Strobe_Item";
watch = "ACE_Altimeter";

uav_Terminal = "B_UavTerminal";
uav_backpack = "B_UAV_01_backpack_F";
uav_battery = "ACE_UAVBattery";

minedetector = "ACE_VMM3";
explosivedevice = "ACE_Clacker";
defusalkit = "ACE_DefusalKit";

rangecard = "ACE_RangeCard";
windmesser = "ACE_Kestrel4500";

cTabcam = "ItemcTabHCam";

facewear_ar = [
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

//Explosives for special occasions
explosives = [
	"DemoCharge_Remote_Mag",
	"APERSMineDispenser_Mag",
	"CUP_Mine_M",
	"ClaymoreDirectionalMine_Remote_Mag",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_Green"
];

//------------------------------------------------------------------
//
//	Switch-Case für mehrere Camo Alternativen
//
//------------------------------------------------------------------

switch camoVariable do {
	//------------------------------------------------------------------
	//
	//	Camo Tropentarn
	//
	//------------------------------------------------------------------
	case "bwtropen": {
		uniforms = "CUP_U_B_GER_Crye";
		helmet = "CUP_H_OpsCore_Covered_Tropen";
		vests = "GRE_PlateCarrier1_Tropentarn";

		facewear = "CUP_G_PMC_Facewrap_Tan_Glasses_Dark"; 

		rucksack = "CUP_B_GER_Medic_Tropentarn";
		rucksack_big = "CFP_Kitbag_Tropentarn";
		rucksack_lr = "TFAR_rt1523g_big_bwmod_tropen";

		primary = "CUP_arifle_G36KA3_grip_camo";
		primary_scope = "CUP_optic_Elcan_SpecterDR_KF_RMR";
		primary_attachement1 = "CUP_acc_LLM_black";
		primary_attachement2 = "";
		primary_mag = "CUP_30Rnd_556x45_G36_camo";
		primary_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
		primary_mag_count = 7;
		primary_mag_tracer_count = 2;

		grenadier_primary = "CUP_arifle_G36K_RIS_AG36_camo";
		grenadier_scope = "CUP_optic_G33_HWS_TAN";
		grenadier_attachement1 = "cup_acc_llm_black";
		grenadier_attachement2 = "";
		grenadier_mag = "CUP_30Rnd_556x45_G36_camo";
		grenadier_mag_count = 7;
		grenadier_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
		grenadier_mag_tracer_count = 2;

		autorifle = "CUP_arifle_MG36_camo";
		autorifle_scope = "CUP_optic_AIMM_MICROT1_TAN";
		autorifle_attachment1 = "cup_acc_llm_black";
		autorifle_attachment2 = "";
		autorifle_mag = "CUP_100Rnd_556x45_BetaCMag_camo";
		autorifle_mag_count = 5;
		autorifle_tracers = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_camo";
		autorifle_tracers_count = 2;

		dm = "CUP_arifle_HK417_20_Desert";
		dm_scope = "optic_AMS_snd";
		dm_attachment1 = "cup_acc_llm_black";
		dm_attachment2 = "CUP_bipod_Harris_1A2_L_BLK";
		dm_mags = "CUP_20Rnd_762x51_HK417_Camo_Desert";
		dm_mags_count = 7;
		dm_tracer = "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";
		dm_tracer_count = 2;

		handgun = "CUP_hgun_M17_Coyote";
		handgun_mag = "CUP_17Rnd_9x19_M17_Coyote";
		handgun_mag_count = 2;
		handgun_scope = "";
		handgun_attachment1 = "";
		handgun_attachment2 = "";

		sniper = "CUP_srifle_G22_des";
		sniper_scope = "optic_LRPS";
		sniper_attachement1 = "";
		sniper_attachement2 = "CUP_bipod_VLTOR_Modpod";
		sniper_silencer = "CUP_muzzle_snds_AWM";
		sniper_mag = "CUP_5Rnd_762x67_G22";
		sniper_mag_count = 5;

		pilot_uniforms = "CUP_U_B_USMC_PilotOverall";
		
		//------------------------------------------------------------------
		//	Inhalte für die Waffenkammer
		//------------------------------------------------------------------		
		kleidung_ar = [
			//Uniformen
			"CUP_U_B_GER_Tropentarn_1",
			"CUP_U_B_GER_Tropentarn_2",
			"CUP_U_B_GER_Tropentarn_3",
			"CUP_U_B_GER_Tropentarn_5",
			"CUP_U_B_GER_Tropentarn_6",
			"CUP_U_B_GER_Tropentarn_7",
			"CUP_U_B_GER_Tropentarn_8",
			"CUP_U_B_GER_Tropentarn_4",
			"CUP_U_B_GER_Crye",
			"CUP_U_B_GER_Crye2",
			
			//vestsn
			"GRE_PlateCarrier1_Tropentarn",
			"CUP_V_B_GER_PVest_Trop_Gren",
			"CUP_V_B_GER_PVest_Trop_Gren_LT",
			"CUP_V_B_GER_PVest_Trop_MG",
			"CUP_V_B_GER_PVest_Trop_MG_LT",
			"CUP_V_B_GER_PVest_Trop_RFL",
			"CUP_V_B_GER_PVest_Trop_RFL_LT",
			"CUP_V_B_GER_PVest_Trop_Med",
			"CUP_V_B_GER_PVest_Trop_Med_LT",		
			"CUP_V_B_GER_PVest_Trop_TL",
			"CUP_V_B_GER_PVest_Trop_TL_LT",
						
			//Helme
			"CUP_H_Ger_M92_Cover_Trop",
			"CUP_H_OpsCore_Covered_Tropen",
			"CUP_H_OpsCore_Covered_Tropen_SF"
		];

		zug_equipment_ar_alt = [
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
			"CUP_arifle_G36KA3_grip_camo",
			"GerRng_arifle_G36KA4_camo",
			"GerRng_arifle_G36KA4_AFG_camo",
			"GerRng_arifle_G36KA4_VFG_camo"
		];

		//Spezielle Alternativen für die Grenadier Rolle
		grenadier_equipment_ar_alt = [
			"CUP_arifle_AG36_camo",
			"CUP_arifle_G36A_AG36_RIS_camo",
			"CUP_arifle_G36A3_AG36_camo",
			"CUP_arifle_G36K_AG36_camo",
			"CUP_arifle_G36K_RIS_AG36_camo",
			"CUP_arifle_HK416_AGL_Desert",
			"CUP_arifle_HK417_12_AG36_Desert"
		];

		//Spezielle Alternativen für die MG Rolle
		mg_equipment_ar_alt = [];

		//Spezielle Alternativen für die Autorifle Rolle
		autorifle_equipment_ar_alt = [
			"CUP_arifle_MG36_camo"
		];

		//Spezielle Alternativen für die AT Rollen
		at_equipment_ar_alt = [];

		//Spezielle Alternativen für die DM Rolle
		dm_equipment_ar_alt = [
			"CUP_arifle_HK417_20_Desert"
		];

		//Spezielle Alternativen für die San Rolle
		san_equipment_ar_alt = [];
	};

	//------------------------------------------------------------------
	//
	//	Camo Wintertarn
	//
	//------------------------------------------------------------------
	case "bwwinter": {
		uniforms = "CFP_U_FieldUniform_flecktarn_snow";
		helmet = "CFP_OPS2017_Helmet_White";
		vests = "GRE_PlateCarrier1_Wintertarn";

		facewear = "CUP_G_ESS_BLK_Scarf_Face_White"; 

		rucksack = "CFP_AssaultPack_White";
		rucksack_big = "CFP_Kitbag_White";
		rucksack_lr = "TFAR_rt1523g_big_bwmod";

		primary = "CUP_arifle_G36KA3_grip_wdl";
		primary_scope = "CUP_optic_Elcan_SpecterDR_KF_RMR_od";
		primary_attachement1 = "CUP_acc_LLM_od";
		primary_attachement2 = "";
		primary_mag = "CUP_30Rnd_556x45_G36_wdl";
		primary_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";
		primary_mag_count = 7;
		primary_mag_tracer_count = 2;

		grenadier_primary = "CUP_arifle_G36K_RIS_AG36_wdl";
		grenadier_scope = "CUP_optic_G33_HWS_OD";
		grenadier_attachement1 = "CUP_acc_LLM_od";
		grenadier_attachement2 = "";
		grenadier_mag = "CUP_30Rnd_556x45_G36_wdl";
		grenadier_mag_count = 7;
		grenadier_tracer = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";
		grenadier_mag_tracer_count = 2;

		autorifle = "CUP_arifle_MG36_wdl";
		autorifle_scope = "CUP_optic_AIMM_MICROT1_OD";
		autorifle_attachment1 = "CUP_acc_LLM_od";
		autorifle_attachment2 = "";
		autorifle_mag = "CUP_100Rnd_556x45_BetaCMag_wdl";
		autorifle_mag_count = 5;
		autorifle_tracers = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_wdl";
		autorifle_tracers_count = 2;

		dm = "CUP_arifle_HK417_20_Wood";
		dm_scope = "optic_AMS_snd";
		dm_attachment1 = "CUP_acc_LLM_od";
		dm_attachment2 = "CUP_bipod_Harris_1A2_L_BLK";
		dm_mags = "CUP_20Rnd_762x51_HK417_Camo_Wood";
		dm_mags_count = 7;
		dm_tracer = "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";
		dm_tracer_count = 2;

		sniper = "CUP_srifle_G22_wdl";
		sniper_scope = "optic_LRPS";
		sniper_attachement1 = "";
		sniper_attachement2 = "CUP_bipod_VLTOR_Modpod";
		sniper_silencer = "CUP_muzzle_snds_AWM";
		sniper_mag = "CUP_5Rnd_762x67_G22";
		sniper_mag_count = 5;

		//------------------------------------------------------------------
		//	Inhalte für die Waffenkammer
		//------------------------------------------------------------------		
		kleidung_ar = [
			//Uniformen
			"CFP_U_FieldUniform_flecktarn_snow",
			
			//vestsn
			"GRE_PlateCarrier1_Wintertarn",

						
			//Helme
			"CFP_OPS2017_Helmet_White",
			"CFP_OPS2017_Helmet_Grey"
		];

		zug_equipment_ar_alt = [
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

		//Spezielle Alternativen für die Grenadier Rolle
		grenadier_equipment_ar_alt = [
			"CUP_arifle_AG36_wdl",
			"CUP_arifle_G36A_AG36_RIS_wdl",
			"CUP_arifle_G36A3_AG36_wdl",
			"CUP_arifle_G36K_AG36_wdl",
			"CUP_arifle_G36K_RIS_AG36_wdl",
			"CUP_arifle_HK416_AGL_Wood",
			"CUP_arifle_HK417_12_AG36_Wood"
		];

		//Spezielle Alternativen für die MG Rolle
		mg_equipment_ar_alt = [];

		//Spezielle Alternativen für die Autorifle Rolle
		autorifle_equipment_ar_alt = [
			"CUP_arifle_MG36_wdl"
		];

		//Spezielle Alternativen für die AT Rollen
		at_equipment_ar_alt = [];

		//Spezielle Alternativen für die DM Rolle
		dm_equipment_ar_alt = [
			"CUP_arifle_HK417_20_Wood"
		];

		//Spezielle Alternativen für die San Rolle
		san_equipment_ar_alt = [];
	};
};

//------------------------------------------------------------------
//
//	Zusammenstellung der Waffenkammer-Items
//
//------------------------------------------------------------------
zug_equipment_ar append zug_equipment_ar_alt;
zug_equipment_ar append kleidung_ar;

grenadier_equipment_ar append grenadier_equipment_ar_alt;
mg_equipment_ar append mg_equipment_ar_alt;
at_equipment_ar append at_equipment_ar_alt;
dm_equipment_ar append dm_equipment_ar_alt;
san_equipment_ar append san_equipment_ar_alt;

//------------------------------------------------------------------
//
//	Push Public Variables
//
//------------------------------------------------------------------

publicVariable "uniforms";
publicVariable "helmet";
publicVariable "vests";

publicVariable "facewear";

publicVariable "rucksack";
publicVariable "rucksack_big";
publicVariable "rucksack_lr";

publicVariable "primary";
publicVariable "primary_scope";
publicVariable "primary_attachement1";
publicVariable "primary_attachement2";
publicVariable "primary_mag";
publicVariable "primary_tracer";
publicVariable "primary_mag_count";
publicVariable "primary_mag_tracer_count";

publicVariable "secondary_mag";

publicVariable "grenadier_primary";
publicVariable "grenadier_scope";
publicVariable "grenadier_attachement1";
publicVariable "grenadier_attachement2";
publicVariable "grenadier_mag";
publicVariable "grenadier_mag_count";
publicVariable "grenadier_tracer";
publicVariable "grenadier_mag_tracer_count";

publicVariable "mg";
publicVariable "mg_scope";
publicVariable "mg_attachment1";
publicVariable "mg_attachment2";
publicVariable "mg_mag";
publicVariable "grenadier_mag_count";
publicVariable "mg_tracers";
publicVariable "grenadier_mag_tracer_count";

publicVariable "autorifle";
publicVariable "autorifle_scope";
publicVariable "autorifle_attachment1";
publicVariable "autorifle_attachment2";
publicVariable "autorifle_mag";
publicVariable "autorifle_mag_count";
publicVariable "autorifle_tracers";
publicVariable "autorifle_tracers_count";

publicVariable "dm";
publicVariable "dm_scope";
publicVariable "dm_attachment1";
publicVariable "dm_attachment2";
publicVariable "dm_mags";
publicVariable "dm_mags_count";
publicVariable "dm_tracer";
publicVariable "dm_tracer_count";

publicVariable "handgun";
publicVariable "handgun_mag";
publicVariable "handgun_mag_count";
publicVariable "handgun_scope";
publicVariable "handgun_attachment1";
publicVariable "handgun_attachment2";

publicVariable "sniper";
publicVariable "sniper_scope";
publicVariable "sniper_attachement1";
publicVariable "sniper_attachement2";
publicVariable "sniper_silencer";
publicVariable "sniper_mag";
publicVariable "sniper_mag_count";

publicVariable "pilot_uniforms";
publicVariable "pilot_vests";
publicVariable "pilot_facewear";
publicVariable "pilot_primary";
publicVariable "pilot_primary_scope";
publicVariable "pilot_primary_mag";
publicVariable "pilot_primary_mag_count";
publicVariable "pilot_handgun";
publicVariable "pilot_handgun_mag";
publicVariable "pilot_handgun_mag_count";
publicVariable "pilot_nvg";

publicVariable "diving_suit";
publicVariable "diving_helmet";
publicVariable "diving_vests";
publicVariable "diving_facewear";
publicVariable "diving_backpack";
publicVariable "diving_primary";
publicVariable "diving_primary_scope";
publicVariable "diving_primary_attachement1";
publicVariable "diving_primary_attachement2";
publicVariable "diving_primary_silencer";
publicVariable "diving_primary_mag";
publicVariable "diving_primary__mag_count";

publicVariable "UGL_HE";
publicVariable "UGL_HE_count";
publicVariable "UGL_Smoke";
publicVariable "UGL_Smoke_count";
publicVariable "UGL_Flare";
publicVariable "UGL_Flare_count";

publicVariable "launcher_at";
publicVariable "launcher_at_scope";
publicVariable "launcher_at_ammo1";
publicVariable "launcher_at_ammo1_count";
publicVariable "launcher_at_ammo2";
publicVariable "launcher_at_ammo2_count";
publicVariable "launcher_at_spotting";
publicVariable "launcher_at_spotting_count";
publicVariable "launcher_at_light";
publicVariable "launcher_aa";
publicVariable "launcher_aa_ammo";
publicVariable "launcher_aa_ammo_count";

publicVariable "grenades";
publicVariable "grenades_count";
publicVariable "smoke_white";
publicVariable "smoke_white_count";
publicVariable "smoke_red";
publicVariable "smoke_red_count";
publicVariable "smoke_green";
publicVariable "smoke_green_count";
publicVariable "flashbang";
publicVariable "ir_grenade";

publicVariable "comms";
publicVariable "nvg";
publicVariable "binocs_tier1";
publicVariable "binocs_tier2";
publicVariable "laserdesignator_bats";
publicVariable "cTab_big";
publicVariable "cTab_small";
publicVariable "IRStrobe";
publicVariable "watch";

publicVariable "uav_Terminal";
publicVariable "uav_backpack";
publicVariable "uav_battery";

publicVariable "ACE_VMM3";
publicVariable "ACE_Clacker";
publicVariable "ACE_DefusalKit";

publicVariable "ACE_RangeCard";
publicVariable "ACE_Kestrel4500";

publicVariable "ItemcTabHCam";

publicVariable "zug_equipment_ar";
publicVariable "grenadier_equipment_ar";
publicVariable "mg_equipment_ar";
publicVariable "at_equipment_ar";
publicVariable "dm_equipment_ar";
publicVariable "san_equipment_ar";