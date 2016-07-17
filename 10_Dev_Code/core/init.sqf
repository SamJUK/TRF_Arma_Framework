#include <macro.h>

player setVariable ["TRF_hunger", 100];
player setVariable ["TRF_thirst", 100];
player setVariable ["TRF_earplugs", 0];

TRF_tablet_turning_on = 0;
TRF_tablet_power_state = 0;

1 call BIS_fnc_recompile;

[]call TRF_fnc_SetupHUD;
[]call TRF_fnc_SetupEVH;
[]call TRF_fnc_SetupSurvival;
