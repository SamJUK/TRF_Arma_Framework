createDialog "sam_tablet";
waitUntil {!isNull (uiNameSpace getVariable "sam_tablet")};
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

(findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 1) then {closeDialog 500}"];

[]spawn TRF_fnc_tabletPower;
