--
-- Overlord Agmar
--
DELETE FROM `creature` WHERE (`id1` = 26379);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(97430, 26379, 0, 0, 571, 65, 4165, 1, 1, 1, 3842.39, 1487.3, 92.7, 1.5708, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', 0, 0, NULL);


--
--https://www.wowhead.com/wotlk/npc=32500/dirkee
--
DELETE FROM `creature` WHERE (`id1` = 32500) AND (`guid` IN (152010, 152011, 152012, 152013));
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(152010, 32500, 0, 0, 571, 67, 4446, 1, 4294967295, 0, 8392.22, -1189.11, 927.468, 1.73202, 28800, 20, 0, 50400, 3994, 1, 0, 0, 0, '', 0),
(152011, 32500, 0, 0, 571, 67, 4432, 1, 4294967295, 0, 7751.04, -1099.42, 926.238, 2.84729, 28800, 20, 0, 50400, 3994, 1, 0, 0, 0, '', 0),
(152012, 32500, 0, 0, 571, 67, 4473, 1, 4294967295, 0, 7290.77, -1119.28, 938.286, 0.26333, 28800, 20, 0, 50400, 3994, 1, 0, 0, 0, '', 0),
(152013, 32500, 0, 0, 571, 67, 4440, 1, 4294967295, 0, 7934.73, -3183.8, 862.21, 4.21701, 28800, 20, 0, 50400, 3994, 1, 0, 0, 0, '', 0);


--
-- https://www.wowhead.com/wotlk/npc=36658/scourgelord-tyrannus
--
UPDATE `creature_template` SET `flags_extra` = `flags_extra` &~ 2147483648 WHERE `entry` IN (36658);


--
-- https://www.wowhead.com/wotlk/ru/quest=12726
--
DELETE FROM creature_template_spell WHERE (`CreatureID` = 28999) AND (`Index` IN (3));
DELETE FROM creature_template_spell WHERE (`CreatureID` = 28985) AND (`Index` IN (3));