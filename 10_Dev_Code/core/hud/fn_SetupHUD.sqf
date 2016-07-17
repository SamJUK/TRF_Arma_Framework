0 cutRsc ["ninfwHUD","PLAIN"];	//Creates HUD
waitUntil {!isNull (uiNameSpace getVariable "ninfwHUD")};	//Waits For Namespace to make itself

[]call TRF_fnc_hudrefresh;
