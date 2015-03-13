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

private ["_group", "_HC", "_changed"];

waitUntil{time > 2};

_group = _this select 0;
_HC = _this select 1;

if(isNull _HC) exitWith {
  diag_log format["HC: Headless client NOT present, keeping %1 on the server.", _group];
};

diag_log format["Current owner (%1).", owner leader _group];
_changed = ((group leader _group) setGroupOwner (owner _HC));

if(_changed) then {
  diag_log format["Moved to HC (%1).", (owner _HC)];
	diag_log format["New owner (%1).", owner leader _group];
} else {
  diag_log "Failed to move to HC.";
};