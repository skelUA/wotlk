UPDATE quest_template_locale SET ObjectiveText1 = 'Попытка освободить пленного механогнома' WHERE Id = 12957 AND locale= "ruRU";
UPDATE quest_template_locale SET ObjectiveText1 = 'Фьорн убит', ObjectiveText2 = 'Убито железных великанов из клана Закаленных Бурей' WHERE Id = 12915 AND locale= "ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Убито игроков Альянса' WHERE Id = 13178 AND locale= "ruRU";
UPDATE quest_template_locale SET ObjectiveText1 = 'Убито игроков Альянса' WHERE Id = 13180 AND locale= "ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Осадные машины защищены' WHERE Id = 13222 AND locale="ruRU";
UPDATE quest_template_locale SET ObjectiveText1 = 'Осадные машины защищены' WHERE Id = 13223 AND locale="ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Уничтожена южная башня' WHERE Id = 13539 AND locale= "ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Уничтожена одна из трех южных башен' WHERE Id = 13538 AND locale= "ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Минчар спасен' WHERE Id = 24874 AND locale="ruRU";
UPDATE quest_template_locale SET ObjectiveText1 = 'Минчар спасен' WHERE Id = 24879 AND locale="ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Неистовство Локена разрушено', ObjectiveText2 = 'Мощь Локена разрушена', ObjectiveText3 = 'Благосклонность Локена разрушена' WHERE Id = 12965 AND locale="ruRU";

UPDATE quest_template_locale SET ObjectiveText1 = 'Убито Закаленных Бурей из Нидавелира' WHERE Id = 12978 AND locale="ruRU";

UPDATE `quest_template_locale` SET `ObjectiveText1` = 'Первый свиток прочитан', `ObjectiveText2` = 'Второй свиток прочитан', `ObjectiveText3` = 'Третий свиток прочитан' WHERE `Id` = 13034 AND locale="ruRU";

DELETE FROM `quest_offer_reward_locale` WHERE `ID`=12956;
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES ('12956', 'ruRU', 'Угрюмое лицо Торима озаряется радостью, когда он понимает, что именно вы ему принесли.', '0');

DELETE FROM `quest_offer_reward_locale` WHERE `ID`=12915;
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES ('12915', 'ruRU', 'Стало быть, с ним мы покончили.$b$bБудем надеяться, что этого достаточно.', '0');

UPDATE `quest_template_locale` SET `ObjectiveText2` = 'Наковальня Фьорна принесена в Дун Ниффелем' WHERE `Id` = 12924 AND locale="ruRU";

DELETE FROM `quest_offer_reward_locale` WHERE `ID`=12979;
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES ('12979', 'ruRU', 'Так, осторожнее. Не подходи слишком близко ко мне. Само присутствие этих пластин в непосредственной близости причиняет мне боль. $B$BНо ты прав, Консер, эти гигантские пластины сделаны для доспехов боевых големов нормальных размеров. Но зачем? Для чего? Есть только один способ это выяснить.', '0');
DELETE FROM `quest_request_items_locale` WHERE `ID`=12979;
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES ('12979', 'ruRU', 'Что это там у тебя?', '0');

UPDATE `quest_template_locale` SET `ObjectiveText1` = 'Латный доспех исследован' WHERE `Id` = 12980 AND locale="ruRU";
DELETE FROM `quest_request_items_locale` WHERE `ID`=12980;
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES ('12980', 'ruRU', 'Что ты узнал?', '0');
DELETE FROM `quest_offer_reward_locale` WHERE `ID`=12980;
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES ('12980', 'ruRU', '<Брюор слушает ваш рассказ о том, что вам удалось узнать в мастерской.>$B$BЗначит, хозяин Валдурана дал ему этот зловещий металл, чтобы он сконструировал гигантское оружие? Вполне вероятно, что он собирается использовать его против нас! Его надо остановить, пока он не закончил свою работу.', '0');

DELETE FROM `quest_offer_reward_locale` WHERE `ID`=12965;
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES ('12965', 'ruRU', '<Глыбоскал мрачно кивает.>$B$BЭто существенно ослабит Закаленных Бурей, но они все равно будут сражаться. Им все равно, сколько их будет убито и ранено – они готовы пожертвовать сотнями, даже тысячами своих, лишь бы стереть нас с лица земли.', '0');

