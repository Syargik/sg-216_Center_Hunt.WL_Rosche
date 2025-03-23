_uniform = SECUNIFORMS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan";
_unit addWeapon "rhs_weap_mk18_KAC_d";
_unit addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_IIIC_tan";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

_unit addWeapon "mkk_B8_Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "BWA3_Vest_JPC_Leader_Tropen";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 6 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan';};

// Backpack with items:
_unit addBackpack "TFAR_rt1523g_big_bwmod_tropen";
_unit addHeadgear "PBW_Buschhut_tropen";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";