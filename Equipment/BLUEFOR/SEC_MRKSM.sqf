_uniform = SECUNIFORMS call BIS_fnc_selectRandom;

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "mkk_20Rnd_M80A1_762x51_HK417_D";
_unit addWeapon "mkk_arifle_HK417_20_Desert";
_unit addPrimaryWeaponItem "rhsgref_sdn6_suppressor";
_unit addPrimaryWeaponItem "BWA3_optic_PMII_ShortdotCC";
_unit addPrimaryWeaponItem "BWA3_bipod_Harris_tan";

_unit addWeapon "ACE_Vector";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;
_unit addItemToUniform 'ACE_RangeCard';

// Vest with items:
_unit addVest "BWA3_Vest_JPC_Rifleman_Tropen";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 7 do { _unit addItemToVest 'mkk_20Rnd_M80A1_762x51_HK417_D';};

// Backpack with items:
_unit addBackpack "BWA3_AssaultPack_Tropen";
_unit addHeadgear "PBW_Buschhut_tropen";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";