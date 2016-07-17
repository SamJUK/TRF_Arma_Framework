disableSerialization;
if (TRF_tablet_turning_on == 1) exitWith {};
if (TRF_tablet_power_state == 0) then {
  TRF_tablet_turning_on = 1;
  _display = uiNameSpace getVariable ["sam_tablet", displayNull];
  _bgsplash = _display displayCtrl 503;
  _bgsplash ctrlSetFade 1;
  _bgsplash ctrlShow true;
  _bgsplash ctrlSetFade 0;
  _bgsplash ctrlCommit 0.250;
  waitUntil {ctrlCommitted _bgsplash};
	uiSleep 1;
  _bgsplash ctrlSetFade 1;
	_bgsplash ctrlCommit 0.250;
  _apps = [551,552,553,554,555,556,557,558,559];
  {
    _ctrl = _display displayCtrl _x;
    _ctrl ctrlShow true;
    _ctrl ctrlSetFade 0;
    _ctrl ctrlCommit 0.250;
  }forEach _apps;
  waitUntil {ctrlCommitted _bgsplash};
	_bgsplash ctrlShow false;
  TRF_tablet_turning_on = 0;
  TRF_tablet_power_state = 0;
};
