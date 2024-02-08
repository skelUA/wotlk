UPDATE `creature_template`
SET `AIName` = 'SmartAI'
WHERE `entry` = 22991;

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 2299100)
  AND (`source_type` = 9)

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 22991)
  AND (`source_type` = 0)
  AND (`id` IN (0));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
                             `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`,
                             `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`,
                             `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
                             `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
                             `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (22991, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 50, 185549, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,
        'Monstrous Kaliri Egg Trigger - On Respawn - Summon Gameobject \'Monstrous Kaliri Egg\'');

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 22991)
  AND (`source_type` = 0)
  AND (`id` IN (1));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
                             `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`,
                             `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`,
                             `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
                             `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
                             `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (22991, 0, 1, 2, 8, 0, 100, 512, 39844, 0, 0, 0, 0, 0, 33, 22991, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0,
        'Monstrous Kaliri Egg Trigger - On Spellhit \'Skyguard Blasting Charge\' - Quest Credit \'null\'');

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 22991)
  AND (`source_type` = 0)
  AND (`id` IN (2));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
                             `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`,
                             `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`,
                             `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
                             `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
                             `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (22991, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,
        'Monstrous Kaliri Egg Trigger - On Spellhit \'Skyguard Blasting Charge\' - Despawn Instant');

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 22991)
  AND (`source_type` = 0)
  AND (`id` IN (3));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
                             `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`,
                             `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`,
                             `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
                             `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
                             `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (22991, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 185549, 1, 0, 0, 0, 0, 0, 0,
        'Monstrous Kaliri Egg Trigger - On Spellhit \'Skyguard Blasting Charge\' - Activate Gameobject ');

DELETE
FROM `smart_scripts`
WHERE (`entryorguid` = 22991)
  AND (`source_type` = 0)
  AND (`id` IN (4));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
                             `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`,
                             `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`,
                             `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
                             `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
                             `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (22991, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 15, 185549, 1, 0, 0, 0, 0, 0, 0,
        'Monstrous Kaliri Egg Trigger - On Spellhit \'Skyguard Blasting Charge\' - Despawn Instant ');