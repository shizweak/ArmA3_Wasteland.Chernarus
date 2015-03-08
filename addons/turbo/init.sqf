private ["_fnTurbo", "_onKeyDown"];

if (isNull player) exitwith {} ;

_onKeyDown = {

  private [
    "_boost",
    "_r",
    "_key_delay",
    "_veh",
    "_speed",
    "_velXM",
    "_velYM",
    "_dir",
    "_velX",
    "_velY",
    "_velZ"
  ];

  _r = false;
  _key_delay  = 1;

  if((_this select 1) != 42) exitWith { _r };

  _veh = vehicle player;

  if(_veh == player) exitWith { _r };
  if(driver _veh != player) exitWith { _r };
  if(!(_veh isKindOf "LandVehicle")) exitWith { _r };

  _speed = speed _veh;

  if(_speed <= 1 || _speed >= 85) exitWith { _r };
  if(player getVariable["turboDelay", false]) exitWith { _r };

  _boost = ["A3W_vehicleAcceleration", 0] call getPublicVar;
  if(_boost <= 0) exitWith { _r };

  _velXM = velocityModelSpace _veh select 0;
  _velYM = velocityModelSpace _veh select 1;

  if(_velXM > _velYM) exitWith { _r };

  _r = true;
  _dir = direction _veh;
  _velX = velocity _veh select 0;
  _velY = velocity _veh select 1;
  _velZ = velocity _veh select 2;

  _veh setVelocity [(((sin(_dir)) * _boost) + _velX),(((cos(_dir)) * _boost) + _velY),_velZ];

  player setVariable["turboDelay", true];

  [_key_delay] spawn {
    sleep (_this select 0);
    player setVariable["turboDelay", false];
  };

  _r;
};

waitUntil {!isNull findDisplay 46};
findDisplay 46 displayAddEventHandler ["KeyDown", _onKeyDown];