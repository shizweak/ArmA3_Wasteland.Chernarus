private ["_boost"];
_boost = [_this, 0, 0] call BIS_fnc_param;

if (isNull player || _boost <= 0) exitwith {} ;

fn_boost =
{
	private ["_veh", "_speed", "_velXM", "_velYM", "_dir", "_velX", "_velY", "_velZ"];
	_veh = vehicle player;
	_speed = speed _veh;
	_velXM = velocityModelSpace _veh select 0;
	_velYM = velocityModelSpace _veh select 1;
	if(_speed <= 1 || _speed >= 180 || _velXM > _velYM) exitWith {};
	_dir = direction _veh;
	_velX = velocity _veh select 0;
	_velY = velocity _veh select 1;
	_velZ = velocity _veh select 2;
	_veh setVelocity [(((sin(_dir)) * _boost) + _velX),(((cos(_dir)) * _boost) + _velY),_velZ];
};

onKeyDown = {
	private ["_r","_key_delay"];

  _key_delay  = 0.01;// MAX TIME BETWEEN KEY PRESSES
  // player setvariable ["key",false];// ENABLE THIS LINE FOR SINGLE KEYPRESS BY REMOVING
  _r = false;

	if (player getvariable["key",true] && (_this select 1)  == 46) exitwith {
		player setvariable["key",false];

		[_key_delay] spawn {
			sleep (_this select 0);
			player setvariable["key", true];
		};

		_r
	};

	if ((_this select 1)  == 42 && speed player > 1) then {
		if(vehicle player != player &&
			vehicle player isKindOf "LandVehicle" &&
			isTouchingGround vehicle player &&
			driver vehicle player == player) then {
			call fn_Turbo;
		};

  	_r = true;
  };

  _r;
};

waituntil {!(IsNull (findDisplay 46))};
(FindDisplay 46) displayAddEventHandler ["keydown","_this call onKeyDown"];  
