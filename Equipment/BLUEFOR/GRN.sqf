// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhssaf_30rnd_556x45_EPR_G36";
_unit addWeapon "rhs_weap_g36kv_ag36";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "PBW_Uniform3K_fleck";

// Vest with items:
_unit addVest "BWA3_Vest_Rifleman_Fleck";
for '_i' from 1 to 6 do { _unit addItemToVest 'rhssaf_30rnd_556x45_EPR_G36';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Backpack with items:
_unit addBackpack "BWA3_Kitbag_Fleck";
for '_i' from 1 to 10 do { _unit addItemToBackpack 'rhs_mag_M441_HE';};
for '_i' from 1 to 5 do { _unit addItemToBackpack 'rhs_mag_M433_HEDP';};
_unit addHeadgear "PBW_Helm1_fleck_BO";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";