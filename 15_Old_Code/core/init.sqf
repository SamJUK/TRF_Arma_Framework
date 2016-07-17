//Execution Of External Files
  []execVM "core\samvariablesinit.sqf"; //Create Variables For Further Use
  []execVM "core\hud\init.sqf"; //Create The HUD
  []execVM "core\evh\init.sqf";  //Setup EventHandlers
  []execVM "core\functions\init.sqf"; //Init Functions
  []execVM "core\notifications\init.sqf"; //Init Alerts

  if (SamEnableTablet) then {
    []execVM "core\tablet\init.sqf";
  };

  []execVM "core\survival\init.sqf";
  []execVM "core\keyhandler.sqf";

  if (SamEnableLogistics) then {
    []execVM "core\logistics\init.sqf";
  };

  if (SamEnableCurrency) then {
    []execVM "core\currency\init.sqf";
  };
