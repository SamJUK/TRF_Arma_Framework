//Initilizse Key Handler
  waituntil {!isnull (finddisplay 46)};
  (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call KeyHandler;false;"];
//Damage EventHandler
  player addEventHandler ["HandleDamage", "execVM ""core\evh\damage.sqf"""];
