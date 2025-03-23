_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
	removeGoggles _this;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);

OPFORHELMETS = [
	"rhs_6b27m_digi_bala",
	"rhs_6b27m_digi_ess_bala"
];

OPFORUNIFORMS = [
	"rhs_uniform_vkpo_gloves_alt",
	"rhs_uniform_vkpo_alt"
];

BLUFORUNIFORMS = [
	"PBW_Uniform3_fleck",
	"PBW_Uniform3K_fleck",
	"PBW_Uniform4_fleck",
	"PBW_Uniform4K_fleck"
];

BLUFORHELMETS = [
	"PBW_Helm1_fleck",
	"PBW_Helm1_fleck_BUD",
	"PBW_Helm1_fleck_BOD",
	"PBW_Helm2_fleck",
	"PBW_Helm2_fleck_BUD"
];

SECUNIFORMS = [
	"PBW_Uniform3_tropen",
	"PBW_Uniform3K_tropen",
	"PBW_Uniform4_tropen",
	"PBW_Uniform4K_tropen"
];