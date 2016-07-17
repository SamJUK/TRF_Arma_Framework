0 cutRsc ["ninfwHUD","PLAIN"];	//Creates HUD
waitUntil {!isNull (uiNameSpace getVariable "ninfwHUD")};	//Waits For Namespace to make itself

[]execVM "core\hud\initfunc.sqf"; //Init HUD Functions
