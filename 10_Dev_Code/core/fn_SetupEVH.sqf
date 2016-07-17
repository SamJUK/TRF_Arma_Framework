player addEventHandler["Killed", {_this spawn TRF_fnc_onPlayerKilled}];
player addEventHandler["handleDamage",{_this call TRF_fnc_handleDamage;}];
player addEventHandler["Respawn", {_this call TRF_fnc_onPlayerRespawn}];
player addEventHandler["Fired",{_this call TRF_fnc_onFired}];
player addEventHandler["InventoryClosed", {_this call TRF_fnc_inventoryClosed}];
player addEventHandler["InventoryOpened", {_this call TRF_fnc_inventoryOpened}];
