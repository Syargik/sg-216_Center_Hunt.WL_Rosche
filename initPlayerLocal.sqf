if (!isDedicated) then {
	waitUntil {!(isNull player)};
	player addEventHandler ["inventoryOpened","_nul=execVM 'script.sqf'"];
};

player createDiaryRecord ["diary", ["Форма сторон", loadFile "A3A_BRIEFING\briefing_UNIFORMS.html"]];

if (hasInterface) then {
    if (side player == east) then {
        [
            player,"Опознать тело",
            "a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forcerespawn_ca.paa",
            "a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forcerespawn_ca.paa",
            "((_this distance target1) < 10) && !target1k && !(alive target1)",
            "((_this distance target1) < 10) && (alive _this)",
            {},
            {},
            {
                cutText ["Клаус Хаскендорф опознан!", "PLAIN"];
                target1k = true; 
                publicvariable "target1k";
            },
            {},
            [],
            10,
            0,
            true,
            false
        ] call BIS_fnc_holdActionAdd;
    };
};