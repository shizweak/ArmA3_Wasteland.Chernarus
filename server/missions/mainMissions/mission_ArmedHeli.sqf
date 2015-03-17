// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"RHS_Ka52_vvs",
	"RHS_Ka52_vvsc",
	"RHS_Mi24P_vvsc",
	"RHS_Mi24V_vvsc",
	"RHS_Mi8AMTSh_vvsc",
	"RHS_Mi8MTV3_vvsc",
	"rhs_ah64d_wd",
	"rhs_ah64d",
	"B_Heli_Light_01_armed_F" //will be setup as an experimental chopper - no DARs but 20mm cannons
	] call BIS_fnc_selectRandom;

	_missionType = "Attack Helicopter";
	
	/*
	_missionType = switch (true) do
	{
		case (_vehicleClass isKindOf "B_Heli_Light_01_armed_F"): { "Experimental Attack Helicopter" };
		default { "Attack Helicopter" };
	};
	*/
	
	_locationsArray = AHMissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
