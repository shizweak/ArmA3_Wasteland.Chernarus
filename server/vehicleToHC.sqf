/*
 * Purpose: Move a unit/group to the headless client
 *          AFTER the mission launches
 * 
 * Mission: Arma3 Headless Client Tutorial
 *  Author: Monsoon
 *   Email: rweezera@hotmail.com
 *
 */

if(!isServer) exitWith{};

private ["_vehicle", "_HC", "_HCid"];

waitUntil{time > 2};

_vehicle = _this select 0;
_HC = _this select 1;

if(isNull _HC) exitWith {
  diag_log format["HC: Headless client NOT present, keeping vehicle %1 on the server.", _vehicle];
};

waitUntil {!isNull _vehicle};

_HCid = owner _HC;

if(_vehicle setOwner _HCid) then {
  diag_log format["Moved vehicle to HC (%1).", _HCid];
} else {
  diag_log "Failed to move vehicle to HC.";
};