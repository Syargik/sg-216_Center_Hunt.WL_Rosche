_uniform = BLUFORUNIFORMS call BIS_fnc_selectRandom;
_helmet = BLUFORHELMETS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "BWA3_10Rnd_762x51_G28";
_unit addWeapon "BWA3_G28";
_unit addPrimaryWeaponItem "BWA3_optic_PMII_ShortdotCC";

_unit addWeapon "ACE_Vector";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;
_unit addItemToUniform "ACE_RangeCard";

// Vest with items:
_unit addVest "BWA3_Vest_Marksman_Fleck";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 6 do { _unit addItemToVest 'BWA3_10Rnd_762x51_G28';};

// Backpack with items:
_unit addBackpack "BWA3_Kitbag_Fleck";
_unit addHeadgear _helmet;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";