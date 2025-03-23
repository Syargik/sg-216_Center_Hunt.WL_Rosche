_uniform = OPFORUNIFORMS call BIS_fnc_selectRandom;
_helmet = OPFORHELMETS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_30Rnd_545x39_7N10_AK";
_unit addWeapon "rhs_weap_ak74m";
_unit addPrimaryWeaponItem "rhs_acc_dtk";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";

_unit addWeapon "Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "rhs_6b23_digi_6sh92_Spetsnaz";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
for '_i' from 1 to 6 do { _unit addItemToVest 'rhs_30Rnd_545x39_7N10_AK';};

// Backpack with items:
_unit addBackpack "tf_mr6000l_emr_RETRO";
_unit addHeadgear _helmet;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "TFAR_microdagr";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";