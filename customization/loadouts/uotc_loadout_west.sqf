//AUTHOR: Pax'Jarome Malues
//OFWvUsed: 3.3.2
//[this, "uotc_loadout_west_x"] call FNC_GearScript;

#define package "uotc_loadout_west_"

SET_GROUP(ifak)
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 2, "uniform"] call FNC_AddItem;
END_GROUP;

SET_GROUP(items)
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ACE_earplugs"] call FNC_AddItem;
	["ACE_CableTie", 1] call FNC_AddItem;
	["rhs_mag_mk84", 2, "backpack"] call FNC_AddItem;
	["rhs_mag_an_m8hc", 4, "backpack"] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 2, "backpack"] call FNC_AddItem; //Frag grenade
END_GROUP;

SET_GROUP(sidearm)
	["rhsusf_weap_m9"] call FNC_AddItem;
	["rhsusf_mag_15Rnd_9x19_JHP", 3, "backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(primary)
	["rhs_weap_m4a1_blockII_d"] call FNC_AddItem;
	["rhsusf_acc_SF3P556"] call FNC_AddItem;
	["rhsusf_acc_M952V"] call FNC_AddItem;
	["rhsusf_acc_ACOG3"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 9] call FNC_AddItem; //Magazines
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2, "backpack"] call FNC_AddItem; //Tracer magazines
	["rhsusf_acc_anpeq16a"] call FNC_AddItem;
END_GROUP;

//////////////
//CASES SPAWN
//////////////

case (package + "CI"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_Squadleader"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["tin_helmet_uotc_beret"] call FNC_AddItem; //HeadGear
	
	ADD_GROUP(ifak);
	
	["ACE_microDAGR", 1, "uniform"] call FNC_AddItem;
	["ACE_personalAidKit", 6, "vest"] call FNC_AddItem;
	
	ADD_GROUP(sidearm);
	ADD_GROUP(primary);
	ADD_GROUP(items);
	
	["Rangefinder"] call FNC_AddItem;
	
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;

};

case (package + "TI"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_Squadleader"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["tin_helmet_uotc_beret"] call FNC_AddItem; //HeadGear
	
	ADD_GROUP(ifak);
	
	["ACE_microDAGR", 1, "uniform"] call FNC_AddItem;
	["ACE_personalAidKit", 6, "vest"] call FNC_AddItem;
	
	ADD_GROUP(sidearm);
	ADD_GROUP(primary);
	ADD_GROUP(items);
	
	["Rangefinder"] call FNC_AddItem;
	
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;

};

/////////////////
//CASES SELECTOR
/////////////////

case (package + "FTL"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_Rifleman"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem; //Head
	
	ADD_GROUP(ifak);
	ADD_GROUP(sidearm);
	ADD_GROUP(primary);
	ADD_GROUP(items);
	
	["Binocular", 1] call FNC_AddItem;
	
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;

};

case (package + "GRN"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_Grenadier"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem; //Head
	
	ADD_GROUP(ifak);
	ADD_GROUP(sidearm);
	ADD_GROUP(items);
	
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 9] call FNC_AddItem; //Magazines
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2] call FNC_AddItem; //Tracer magazines
	
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_weap_m4a1_m320"] call FNC_AddItem;
	["rhsusf_acc_M952V"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["rhs_mag_M441_HE", 8, "vest"] call FNC_AddItem;
	["rhs_mag_M433_HEDP", 8, "vest"] call FNC_AddItem;
	["rhsusf_acc_anpeq16a"] call FNC_AddItem;
	
};

case (package + "AR"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_SAW"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem; //Head
	
	ADD_GROUP(ifak);
	ADD_GROUP(sidearm);
	ADD_GROUP(items);
		
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_weap_m249_pip_S"] call FNC_AddItem;
	["rhsusf_acc_M952V"] call FNC_AddItem;
	["rhsusf_acc_ELCAN"] call FNC_AddItem;
	["rhsusf_100Rnd_556x45_soft_pouch", 2, "vest"] call FNC_AddItem;
	
};

case (package + "RM"): {
	
	["rhs_uniform_cu_ocp"] call FNC_AddItem; //Uniform
	["rhsusf_iotv_ocp_Rifleman"] call FNC_AddItem; //Vest
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; //Ruck
	["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem; //Head
	
	ADD_GROUP(ifak);
	ADD_GROUP(sidearm);
	ADD_GROUP(primary);
	ADD_GROUP(items);
		
	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_weap_M136"] call FNC_AddItem;
	["rhs_m136_mag"] call FNC_AddItem;

};
