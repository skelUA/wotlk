--
-- FIX for https://www.wowhead.com/wotlk/quest=12705/will-of-the-titans
--
DELETE FROM `gameobject` WHERE (`id` = 190781);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(99745, 190781, 571, 0, 0, 1, 1, 5109.97, 5471.42, -91.8383, 0.207345, 0, 0, -0.103487, -0.994631, 300, 0, 1, '', NULL, NULL);