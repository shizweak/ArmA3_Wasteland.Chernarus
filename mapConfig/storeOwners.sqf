// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 5, 280, []],  // Elektro General Store
	["GenStore2", 6, 165, []],  // Kamenka General Store
	["GenStore3", 6, 295, []],  // Vybor General Store
	["GenStore4", 2, 120, []],  // Krasnostav General Store

	["GunStore1", 3, 90, []],   // Solnichniy Gun Store
	["GunStore3", 6, 165, []],  // Gvodzno Gun Store
	["GunStore4", 1, 60, []],   // Stary Gun Store
	["GunStore5", 1, 256, []],  // Cherno Gun Store
	["GunStore6", 2, 70, []],   // Zelengorsk Gun Store

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 1, 75, []],
	["VehStore2", 6, 180, ["Planes"]],
	["VehStore3", 4, 250, ["Boats"]],
	["VehStore4", 5, 120, ["Boats"]],
	["VehStore5", 0, 320, ["Planes"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_1"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore5", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore6", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
