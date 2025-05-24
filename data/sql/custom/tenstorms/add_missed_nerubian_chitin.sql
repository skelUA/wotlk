DELETE FROM `skinning_loot_template` WHERE (`Entry` = 70201) AND (`Item` IN (38558));
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(70201, 38558, 0, 18, 0, 1, 1, 1, 2, '');

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 75000);
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(75000, 33568, 0, 0, 0, 1, 1, 1, 5, NULL),
(75000, 44128, 0, 1, 0, 1, 1, 1, 1, NULL);

UPDATE `creature_template` SET `skinloot` = 75000 WHERE (`entry` = 29334);

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 70203) AND (`Item` IN (38558));
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(70203, 38558, 0, 24, 0, 1, 1, 1, 1, '');
