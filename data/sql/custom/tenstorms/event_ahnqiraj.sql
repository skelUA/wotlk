use acore_world;

-- enUS 8743
DELETE FROM `quest_template` WHERE `ID` = 8743;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8743, 0, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 21176, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bang a Gong!', '', '', '', 'Return to The Scarab Gong in Silithus.', 0, 0, 0, 0, 0, 0, 0, 0, 21175, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, '', '', '', '', 12340);

DELETE FROM `quest_request_items` WHERE `ID` = 8743;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`)
VALUES (8743, 1, 0, 'The Scarab Gong looms ominously before you. Steel yourself, $N; for once the Scarab Gong is rung, the gates of Ahn\'Qiraj will be opened.$B$BFrom the slackened maw of the beast can only come chaos and destruction. Defend your people!', 12340);

DELETE FROM `quest_offer_reward` WHERE `ID` = 8743;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(8743, 0, 0, 0, 0, 0, 0, 0, 0, 'From the ground near the gong springs a special crystal. Perhaps favor from the Brood.', 12340);


-- uaUA 8743
DELETE FROM quest_template_locale WHERE ID = '8743' AND locale = 'ruRU';
INSERT INTO quest_template_locale (ID, locale, Title, Details, Objectives, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, VerifiedBuild) VALUES
(8743, 'ruRU', 'Бий в гонг!', '', '', '', 'Повернутись до гонгу Скарабеїв у Сілітусі.', '', '', '', '', 18019);

DELETE FROM quest_offer_reward_locale WHERE ID = '8743' AND locale = 'ruRU';
INSERT INTO quest_offer_reward_locale (ID, locale, RewardText, VerifiedBuild) VALUES
(8743, 'ruRU', 'Із землі, біля гонгу, виринає особливий кристал. Можливо, прихильність від Зграї. .', 0);

DELETE FROM quest_request_items_locale WHERE ID = '8743' AND locale = 'ruRU';
INSERT INTO quest_request_items_locale (ID, locale, CompletionText, VerifiedBuild) VALUES
(8743, 'ruRU', 'Гонг Скарабея зловісно майорить перед вами. Зберіться, $N; бо як тільки пролунає гонг скарабея, брама Ан-Кіраджа буде відкрита.$B$BЗ роззявленої пащі звіра можуть прийти лише хаос і руйнування. Захистіть свій народ!', 0);


-- enUS 8742
DELETE FROM `quest_template` WHERE `ID` = 8742;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8742, 0, 60, 60, 440, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Might of Kalimdor', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '', '', '', '', 12340);

DELETE FROM `quest_request_items` WHERE `ID` = 8742;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(8742, 0, 0, 'A thousand years has passed and just as it was fated, one stands before me. One who shall lead their people to a new age.$B$BThe Old God trembles, $N. Oh yes, it fears your faith. Shatter the prophecy of C\'Thun.$B$BIt knows you come, champion - and with you comes the might of Kalimdor. You have only to let me know when you are prepared and I shall grant you the Scepter of the Shifting Sands.', 12340);

DELETE FROM `quest_offer_reward` WHERE `ID` = 8742;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(8742, 0, 0, 0, 0, 0, 0, 0, 0, 'A thousand years has passed and just as it was fated, one stands before me. One who shall lead their people to a new age.$B$BThe Old God trembles, $N. Oh yes, it fears your faith. Shatter the prophecy of C\'Thun.$B$BIt knows you come, champion - and with you comes the might of Kalimdor. You have only to let me know when you are prepared and I shall grant you the Scepter of the Shifting Sands.', 12340);

-- uaUA 8742
DELETE FROM `quest_template_locale` WHERE `ID` = '8742' AND locale = 'ruRU';
INSERT INTO `quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8742, 'ruRU', 'Армія Калімдору', '', '', '', '', '', '', '', '', 18019);

DELETE FROM `quest_offer_reward_locale` WHERE `ID` = '8742' AND locale = 'ruRU';
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(8742, 'ruRU', 'Тисяча років минула, і, як і судилося, $Gодин:одна; стоїть переді мною. $GТой:Та;, хто поведе свій народ до нової епохи.$B$BСтарий Бог тремтить,$N. О так, він боїться вашої віри. Він знає, що ти прийдеш, чемпіоне, і з тобою прийде міць Калімдору. Ти маєш лише дати мені знати, коли будеш $Gготовий:готова;, і я дам тобі Скіпетр Сипучих Пісків.', 0);

DELETE FROM `quest_request_items_locale` WHERE `ID` = '8742' AND locale = 'ruRU';
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(8742, 'ruRU', 'Тисяча років минула, і, як і судилося, $Gодин:одна; стоїть переді мною. $GТой:Та;, хто поведе свій народ до нової епохи.$B$BСтарий Бог тремтить,$N. О так, він боїться вашої віри. Він знає, що ти прийдеш, чемпіоне, і з тобою прийде міць Калімдору. Ти маєш лише дати мені знати, коли будеш $Gготовий:готова;, і я дам тобі Скіпетр Сипучих Пісків.', 0);



-- enUS
DELETE FROM `quest_template` WHERE `ID` = 8555;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8555, 0, 60, 60, 440, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Charge of the Dragonflights', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '', '', 12340);

DELETE FROM `quest_offer_reward` WHERE `ID` = 8555;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(8555, 1, 1, 0, 0, 0, 0, 0, 0, 'Eranikus, Vaelastrasz, and Azuregos... No doubt you know of these dragons, mortal. It is no coincidence, then, that they have played such influential roles as watchers of our world.$B$BUnfortunately (and my own naivety is partially to blame) whether by agents of the Old Gods or betrayal by those that would call them friend, each guardian has fallen to tragedy. The extent of which has fueled my own distrust towards your kind.$B$BSeek them out... And $R, prepare yourself for the worst.', 12340);

-- uaUA
DELETE FROM `quest_template_locale` WHERE `ID` = '8555' AND locale = 'ruRU';
INSERT INTO `quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8555, 'ruRU', 'Атака зграї драконів', '', '', '', '', '', '', '', '', 18019);

DELETE FROM `quest_offer_reward_locale` WHERE `ID` = '8555' AND locale = 'ruRU';
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(8555, 'ruRU', 'Еранікус, Ваеластраз і Азурегос... Без сумніву, ти знаєш про цих драконів, $Gсмертний:смертна;. Тож не випадково, що вони відіграють таку важливу роль як охоронці нашого світу. $B$BНа жаль (і в цьому частково винна моя власна наївність), чи то від рук агентів Старих Богів, чи то від зради тих, хто називав їх друзями, кожен з охоронців зазнав трагедії. Масштаби якої підживлюють мою власну недовіру до вашого виду... $B$BРозшукай їх... І $R готуйся до найгіршого.', 0);



-- enUS
DELETE FROM `quest_template` WHERE `ID` = 8576;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8576, 0, 60, 60, 440, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Ledger', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '', '', 12340);

DELETE FROM `quest_offer_reward` WHERE `ID` = 8576;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(8576, 0, 0, 0, 0, 0, 0, 0, 0, 'First things first, $N! We need to figure out what Azuregos wrote in this ledger.$B$BYou say that he\'s told you to make an arcanite buoy and that this is the schematic? Strange that he would write this in Draconic. That old goat knows I can\'t read this nonsense.$B$BIf this is going to work, I\'m going to need my scrying goggles, a five hundred pound chicken and volume II of "Draconic for Dummies." Not necessarily in that order.', 12340);


-- uaUA
DELETE FROM `quest_template_locale` WHERE `ID` = '8576' AND locale = 'ruRU';
INSERT INTO `quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(8576, 'ruRU', 'Переклад книги', '', '', '', '', '', '', '', '', 18019);

DELETE FROM `quest_offer_reward_locale` WHERE `ID` = '8576' AND locale = 'ruRU';
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(8576, 'ruRU', 'Насамперед, $N! Треба з\'ясувати, що Азурегос написав у цій книзі.$B$BТи кажеш, що він сказав тобі зробити арканітовий буй і це є схема? Дивно, що він написав це драконячою мовою. Цей старий козел знає, що я не можу читати цю нісенітницю.$B$BЯкщо це спрацює, мені знадобляться мої окуляри для читання, п\'ятисотфунтова курка і другий том "Драконяча мова для чайників". Не обов\'язково в такому порядку.', 0);







DELETE FROM `gameobject_queststarter` WHERE (`quest` = 8743) AND (`id` IN (180717));
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(180717, 8743);

DELETE FROM `gameobject_questender` WHERE (`quest` = 8743);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES
(180717, 8743);

UPDATE `gameobject` SET `id` = '180717' WHERE (`guid` = '

');
-- revert
-- UPDATE `gameobject` SET `id` = '180718' WHERE (`guid` = '49451');
