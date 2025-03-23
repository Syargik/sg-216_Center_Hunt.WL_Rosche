CrititalLosesWest = 7; // потери для синих
CrititalLosesEast = 9; // потери для красных

missionNamespace setVariable ["a3a_endMissionTime", 7200, true]; // 7200 - время в секундах

[] spawn {
	target1k = false;
	publicvariable "target1k";
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do {
	sleep 10;
			
		if ((east countside playableUnits) < CrititalLosesEast) then {
			srv_triggerFinished = true;
		["ВС РФ понесли тяжёлые потери! Победа Бундесвера!", west] call a3a_fnc_endMission;}; // Победа WEST
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
			srv_triggerFinished = true;
		["Бундесвер понёс тяжёлые потери! Победа ВС РФ!", east] call a3a_fnc_endMission;}; // Победа EAST
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then {
			srv_triggerFinished = true;
		["Бундесвер успел эвакуировать Хаскендорфа!", west] call a3a_fnc_endMission; // Победа по окончанию таймера
		};

		if (missionNamespace getVariable ["target1k", false]) then {
            srv_triggerFinished = true;
            ["Клаус Хаскендорф опознан!", east] call a3a_fnc_endMission; // Укажите правильную сторону
        };
    };
};