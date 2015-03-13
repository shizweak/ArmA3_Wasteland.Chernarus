// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"RHS_A10",
	"RHS_Su25SM_vvs",
	"I_Plane_Fighter_03_AA_F"
	] call BIS_fnc_selectRandom;

	//_missionType = "Attack Jet";
	
	_missionType = switch (true) do
	{
		case (_vehicleClass isKindOf "I_Plane_Fighter_03_AA_F"): { "Air Superiority Jet" };
		default { "Close Air Support Jet" };
	
	}; 
	
	//_locationsArray = MissionSpawnMarkers;
	_locationsArray = JetMissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
