/*USE = ["Color", "Text"] spawn TRF_notify;*/
  disableSerialization;
  _TRFtype = _this select 0;
  _TRFtext = _this select 1;

    waitUntil {!isNull (uiNameSpace getVariable "ninfwHUD")};
    _display = uiNameSpace getVariable "ninfwHUD";
    _setNotification = _display displayCtrl 9799;

    switch (_TRFtype) do {
      case "red": {_setNotification ctrlsetstructuredtext (parseText format ["<t size='1.5' color='#ff1a1a' shadowColor='#000000'>%1</t>", _TRFtext]);};
      case "blue": {_setNotification ctrlsetstructuredtext (parseText format ["<t size='1.5' color='#0066ff' shadowColor='#000000'>%1</t>", _TRFtext]);};
      case "green": {_setNotification ctrlsetstructuredtext (parseText format ["<t size='1.5' color='#47d147' shadowColor='#000000'>%1</t>", _TRFtext]);};
      case "clear": {_setNotification ctrlsetstructuredtext (parseText format [""]);};
  };
  sleep 10;
  _setNotification ctrlsetstructuredtext (parseText format [""]);
