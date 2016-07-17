disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
sam_tablet_power_state = 0;
sam_tablet_turning_on = 0;

sam_tablet_use={
  createDialog "sam_tablet";
  ctrlShow [502, false ];
  ctrlShow [503, false ];
  ctrlShow [510, false ];
  ctrlShow [551, false ];
  ctrlShow [552, false ];
  ctrlShow [553, false ];
  ctrlShow [554, false ];
  ctrlShow [555, false ];
  ctrlShow [556, false ];
  ctrlShow [557, false ];
  ctrlShow [558, false ];
  ctrlShow [559, false ];
  []call TRF_fnc_tablet_power
};
