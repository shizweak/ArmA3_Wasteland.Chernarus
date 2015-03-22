/*************************************************************************
	loadStaticBase.sqf

	Author: 
	  bigAPE (shizweak.es), Shizweak (shizweak.es)

	Description:
	  Consumes an a base description file containing an array of 

	Parameter(s):
	  _this select 0: static base filename - "camp-xray"
	  _this select 1: static base marker name - "Camp X-Ray" or objNull
	
	Example:
  	  ["camp-cray","Camp Name"] execVM "addons\static_bases\loadStaticBase.sqf";
*************************************************************************/

_script = _this select 0;
_baseName = _this select 1;

_objects = [];
_objects = call (compile (preprocessFileLineNumbers format ["addons\static_bases\%1.sqf",_script]));

diag_log (format ["Loading 'addons\static_bases\%1.sqf'",_script]);

for "_o" from 0 to ((count _objects)-1) step 1 do {
	private ["_obj","_config","_marker"];

	_config = _objects select _o;

	if (_o == 0) then {
		_marker = createMarkerLocal [ format["static_base_%1",floor(random 1000)], _config select 1];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerTypeLocal "o_inf";
		_marker setMarkerTextLocal _baseName;
		_marker setMarkerColorLocal "ColorCivilian";
		_marker setMarkerSizeLocal [0.5,0.5];
		_marker setMarkerDirLocal 270;
	};

	_obj = createVehicle [ _config select 0, _config select 1, [], 0, "CAN_COLLIDE"];

	_obj setDir (_config select 2);
	_obj setPosATL (_config select 1);
	_obj allowDamage false;
	_obj setVariable ["R3F_LOG_disabled",true,true];
};