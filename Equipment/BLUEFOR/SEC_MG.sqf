_uniform = SECUNIFORMS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsusf_200Rnd_556x45_box";
_unit addWeapon "mkk_M249_light_S_Desert";
_unit addPrimaryWeaponItem "BWA3_muzzle_snds_QDSS_tan";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_saw_bipod";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "BWA3_Vest_JPC_Rifleman_Tropen";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhsusf_200Rnd_556x45_box';};

// Backpack with items:
_unit addBackpack "BWA3_TacticalPack_Tropen";
for '_i' from 1 to 2 do { _unit addItemToBackpack  'rhsusf_200Rnd_556x45_box';};
_unit addHeadgear "PBW_Buschhut_tropen";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";