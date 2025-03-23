// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_30Rnd_545x39_7N10_desert_AK";
_unit addWeapon "nmg_weapons_a545_camo";
_unit addPrimaryWeaponItem "nmg_silence_dtk_gexagonak_camo";
_unit addPrimaryWeaponItem "vtn_optic_1p87_camo";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "AGE_CryeG3_Olive";

// Vest with items:
_unit addVest "AGE_TV110_AK_MultiCam";
for '_i' from 1 to 6 do { _unit addItemToVest 'rhs_30Rnd_545x39_7N10_desert_AK';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
_unit addHeadgear "H_Cap_oli";

_unit addGoggles "rhsusf_shemagh2_grn";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "TFAR_microdagr";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";