_uniform = BLUFORUNIFORMS call BIS_fnc_selectRandom;
_helmet = BLUFORHELMETS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "BWA3_200Rnd_556x45";
_unit addWeapon "BWA3_MG4";
_unit addPrimaryWeaponItem "rhsusf_acc_su230";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "BWA3_Vest_MachineGunner_Fleck";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'BWA3_200Rnd_556x45';};

// Backpack with items:
_unit addBackpack "BWA3_Kitbag_Fleck";
_unit addHeadgear _helmet;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";