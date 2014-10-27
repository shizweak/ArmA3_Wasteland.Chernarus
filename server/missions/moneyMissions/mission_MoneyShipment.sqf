//	@file Version: 2
//	@file Name: mission_MoneyShipment.sqf
//	@file Author: JoSchaap / routes by Del1te - (original idea by Sanjo), AgentRev, Wiking.at, Lodac
//	@file Created: 31/08/2013 18:19
//	@file Args: none

if (!isServer) exitwith {};
#include "moneyMissionDefines.sqf";

private ["_missionMarkerName","_missionType","_picture","_vehicleName","_hint","_waypoint","_routes","_MoneyShipment","_markerText","_money","_convoys","_vehChoices","_moneyKilos","_moneyUnits","_strMoneyUnits","_moneyText","_vehClasses","_veh2","_rn","_waypoints","_starts","_startdirs","_group","_vehicles","_marker","_failed","_startTime","_numWaypoints","_cash1","_cash2","_createVehicle","_leader"];


_missionMarkerName = "Money_Shipment";
_missionType = "Money Shipment";
diag_log format["WASTELAND SERVER - Money Mission Started: %1", _missionType];
diag_log format["WASTELAND SERVER - Money Mission Waiting to run: %1", _missionType];
[moneyMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - Money Mission Resumed: %1", _missionType];

// Money Shipments settings
// Difficulties : Min = 1, Max = infinite
// Convoys per difficulty : Min = 1, Max = infinite
// Vehicles per convoy : Min = 1, Max = infinite
// Choices per vehicle : Min = 1, Max = infinite
_MoneyShipment = 
[
	// Easy
	[
		"Small Money Shipment", // Marker text
		25000, // Money
		[
			[ // NATO convoy
				["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"], // Veh 1
				["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"] // Veh 2
			],
			[ // CSAT convoy
				["O_MRAP_02_hmg_F", "O_MRAP_02_gmg_F"], // Veh 1
				["O_MRAP_02_hmg_F", "O_MRAP_02_gmg_F"] // Veh 2
			],
			[ // AAF convoy
				["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"], // Veh 1
				["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"] // Veh 2
			]
		],
		"Easy Armed Money Shipment" //Marker Text
	],
	// Medium
	[
		"Medium Money Shipment", // Marker text
		50000, // Money
		[
			[ // NATO convoy
				["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"], // Veh 1
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F"], // Veh 2
				["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"] // Veh 3
			],
			[ // CSAT convoy
				["O_MRAP_02_hmg_F", "O_MRAP_02_gmg_F"], // Veh 1
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F"], // Veh 2
				["O_MRAP_02_hmg_F", "O_MRAP_02_gmg_F"] // Veh 3
			],
			[ // AAF convoy
				["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"], // Veh 1
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F"], // Veh 2
				["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"] // Veh 3
			]
		],
		"Medium Armed Money Shipment" //Marker Text
	],
	// Hard
	[
		"Large Money Shipment", // Marker text
		75000, // Money
		[
			[ // NATO convoy
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F"], // Veh 1
				["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"], // Veh 2
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F"] // Veh 3
			],
			[ // CSAT convoy
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F"], // Veh 1
				["O_MBT_02_cannon_F"], // Veh 2
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F"] // Veh 3
			],
			[ // AAF convoy
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F"], // Veh 1
				["I_MBT_03_cannon_F"], // Veh 2
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F"] // Veh 3
			]
		],
		"Hard Armed Money Shipment" //Marker Text
	],
	// Extreme
	[
		"Heavy Money Shipment", // Marker text
		100000, // Money
		[
			[ // NATO convoy
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"], // Veh 1
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"], // Veh 2
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"], // Veh 3
				["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"] // Veh 4
			],
			[ // CSAT convoy
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F", "O_MBT_02_cannon_F"], // Veh 1
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F", "O_MBT_02_cannon_F"], // Veh 2
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F", "O_MBT_02_cannon_F"], // Veh 3
				["O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_AA_F", "O_MBT_02_cannon_F"] // Veh 4
			],
			[ // AAF convoy
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F"], // Veh 1
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F"], // Veh 2
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F"], // Veh 3
				["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F"] // Veh 4
			]
		],
		"Extreme Armed Money Shipment" //Marker Text
	]
]
call BIS_fnc_selectRandom;

_markerText = _MoneyShipment select 0;
_money = _MoneyShipment select 1;
_convoys = _MoneyShipment select 2;
_vehChoices = _convoys call BIS_fnc_selectRandom;

_moneyText = format ["$%1", [_money] call fn_numbersText];

_vehClasses = [];
{ _vehClasses pushBack (_x call BIS_fnc_selectRandom) } forEach _vehChoices;

// available routes to add a route. If you add more routes append ,4 to the array and so on
_routes = [1,2,3];

// pick one of the routes
_rn = _routes call BIS_fnc_selectRandom;

// set starts and waypoints depending on above (random) choice
switch (_rn) do 
{ 
	case 1: {
		// route 1
		// starting positions for this route
		_starts = 
		[
			[11877.198, 22464.334],
			[11921.394, 22530.055]
		];
		// starting directions in which the vehicles are spawned on this route
		_startdirs = 
		[
			210,
			210,
			210
		];
		// the routes
		_waypoints = 
		[
			[11869.673, 22208.621],
			[11125.767, 20896.094],
			[12994.632, 19462.133],
			[12748.146, 18834.535],
			[11160.020, 17270.051],
			[9703.3369, 16182.543],
			[8348.6055, 15781.597],
			[6614.5122, 15335.907],
			[4709.3672, 13381.538]
		];
		// end of route one
	}; 
	case 2: {
		// route 2
		// starting positions for this route
		_starts = 
		[
			[21676.070, 19098.602],
			[21706.025, 19143.395]
		];
		// starting directions in which the vehicles are spawned on this route
		_startdirs = 
		[
			215,
			215,
			215
		];
		// the routes
		_waypoints = 
		[
			[21651.148, 18949.061],
			[20927.098, 18642.852],
			[19996.465, 18402.379],
			[20469.039, 17205.830],
			[20332.428, 16846.414],
			[20768.957, 16632.809],
			[18278.490, 14655.104],
			[18335.752, 13940.664],
			[18311.520, 13544.588],
			[18257.242, 13530.432],
			[20485.871, 10990.865],
			[21824.990, 7174.1509]
		];
		// end of route two
	}; 
	case 3: {
		// route 3
		// starting positions for this route
		_starts = 
		[
			[4358.6313, 21123.746],
			[4353.8003, 21175.734]
		];
		// starting directions in which the vehicles are spawned on this route
		_startdirs = 
		[
			157,
			157,
			157
		];
		// the routes
		_waypoints = 
		[
			[4384.6670, 21031.820],
			[6832.0098, 19443.926],
			[7139.0513, 16877.182],
			[6789.5913, 16126.018],
			[8190.9907, 15869.275],
			[9230.6670, 14191.858],
			[9883.0000, 12795.109],
			[10779.979, 10752.867],
			[9573.9238, 8603.8203]
		];
		// end of route three
	}; 
	default {
		// this shouldnt happen but just to be sure..
		diag_log format["WASTELAND SERVER - WARNING! %1 encountered an error selecting routes - defaulting to route 1", _missionType];
		// route 1
		// starting positions for this route
		_starts = 
		[
			[11877.198, 22464.334],
			[11921.394, 22530.055]
		];
		// starting directions in which the vehicles are spawned on this route
		_startdirs = 
		[
			210,
			210,
			210
		];
		// the routes
		_waypoints = 
		[
			[11869.673, 22208.621],
			[11125.767, 20896.094],
			[12994.632, 19462.133],
			[12748.146, 18834.535],
			[11160.020, 17270.051],
			[9703.3369, 16182.543],
			[8348.6055, 15781.597],
			[6614.5122, 15335.907],
			[4709.3672, 13381.538]
		];
		// end of route one
	}; 
}; 

_group = createGroup civilian;

_createVehicle = {
    private ["_type","_position","_direction","_group","_vehicle","_soldier"];
    
    _type = _this select 0;
    _position = _this select 1;
    _direction = _this select 2;
    _group = _this select 3;
    
    _vehicle = _type createVehicle _position;
	[_vehicle] call vehicleSetup;
    _vehicle setDir _direction;
    _group addVehicle _vehicle;
    
    _soldier = [_group, _position] call createRandomSoldier; 
    _soldier moveInDriver _vehicle;
    _soldier = [_group, _position] call createRandomSoldier; 
    _soldier moveInCargo [_vehicle, 0];
    _soldier = [_group, _position] call createRandomSoldier; 
    _soldier moveInTurret [_vehicle, [0,0]];
    _soldier = [_group, _position] call createRandomSoldier; 
    _vehicle setVehicleLock "LOCKED";  // prevents players from getting into the vehicle while the AI are still owning it
	// _vehicle spawn cleanVehicleWreck;  // courtesy of AgentREV sets cleanup on the mission vehicles once wrecked :)
    _vehicle
};

_vehicles = [];
{
	_vehicles pushBack ([_x, _starts select 0, _startdirs select 0, _group] call _createVehicle);
} forEach _vehClasses;

_veh2 = _vehClasses select (1 min (count _vehClasses - 1));

_leader = driver (_vehicles select 0);
_group selectLeader _leader;
_leader setRank "LIEUTENANT";

_group setCombatMode "GREEN"; // units will defend themselves
_group setBehaviour "SAFE"; // units feel safe until they spot an enemy or get into contact
_group setFormation "STAG COLUMN";
_group setSpeedMode "LIMITED";

{
    _waypoint = _group addWaypoint [_x, 0];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 50;
    _waypoint setWaypointCombatMode "GREEN"; 
    _waypoint setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
    _waypoint setWaypointFormation "STAG COLUMN";
    _waypoint setWaypointSpeed "LIMITED";
} forEach _waypoints;

_marker = createMarker [_missionMarkerName, position leader _group];
_marker setMarkerType "mil_destroy";
_marker setMarkerSize [1.25, 1.25];
_marker setMarkerColor "ColorRed";
_marker setMarkerText format["%1 ($%2)", _markertext, [_money] call fn_numbersText];


_picture = getText (configFile >> "CfgVehicles" >> _veh2 >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> _veh2 >> "displayName");

// Remove " (Covered)" from vehicle name when applicable
if ([_vehicleName, (count toArray _vehicleName) - 10] call BIS_fnc_trimString == " (Covered)") then
{
	_vehicleName = [_vehicleName, 0, (count toArray _vehicleName) - 11] call BIS_fnc_trimString;
};

_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Money Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A <t color='%4'>%3</t> carrying a unit of soldiers transporting " + _moneyText + " is on route with assistance.<br/>Stop them!</t>", _markerText, _picture, _vehicleName, moneyMissionColor, subTextColor];
[_hint] call hintBroadcast;

diag_log format["WASTELAND SERVER - Money Mission Waiting to be Finished: %1", _missionType];

_failed = false;
_startTime = floor(time);
_numWaypoints = count waypoints _group;
waitUntil
{
    private ["_unitsAlive"];
    
    sleep 10; 
    
    _marker setMarkerPos (position leader _group);
    
    if ((floor time) - _startTime >= moneyMissionTimeout) then { _failed = true };
    if (currentWaypoint _group >= _numWaypoints) then { _failed = true }; // Money Shipment got successfully to the target location
    _unitsAlive = { alive _x } count units _group;
    
    _unitsAlive == 0 || _failed
};

if(_failed) then
{
    // Mission failed
    {deleteVehicle _x} forEach _vehicles;
	{if (vehicle _x != _x) then { deleteVehicle vehicle _x; }; deleteVehicle _x;}forEach units _group;
	{deleteVehicle _x;}forEach units _group;
	deleteGroup _group; 
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, better luck next time</t>", _markerText, _picture, _vehicleName, failMissionColor, subTextColor];
    [_hint] call hintBroadcast;
    diag_log format["WASTELAND SERVER - Money Mission Failed: %1",_missionType];
} else {
	// Mission completed
	// unlock the vehicles incase the player cleared the mission without destroying them
	if (!isNil "_vehicles") then { 
		{
			_x setVehicleLock "UNLOCKED"; 
			_x setVariable ["R3F_LOG_disabled", false, true];
		}forEach _vehicles;
	};
	
	// give the rewards
	for "_x" from 1 to 10 do
	{
		_cash = createVehicle ["Land_Money_F", (markerPos _marker) vectorAdd ([[3 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D), [], 0, "CAN_COLLIDE"];
		_cash setDir random 360;
		_cash setVariable["cmoney", _money / 10, true];
		_cash setVariable["owner","world",true];
	};
	
	deleteGroup _group; 	
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The Money Shipment has been stopped, the cash is now yours to take.</t>", _markerText, _picture, _vehicleName, successMissionColor, subTextColor];
    [_hint] call hintBroadcast;
    diag_log format["WASTELAND SERVER - Money Mission Success: %1",_missionType];
};

deleteMarker _marker;
