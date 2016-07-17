#include <macro.h>

player setVariable ["sam_hunger", 100];
player setVariable ["sam_thirst", 100];
player setVariable ["sam_earplugs", 0];


[]call TRF_fnc_SetupHUD;
[]call TRF_fnc_SetupEVH;
[]call TRF_fnc_SetupSurvival;
