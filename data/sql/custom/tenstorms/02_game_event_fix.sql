-- Kalu'ak Fishing Derby start time fix ( should be set to the first Saturday of the year)
UPDATE `game_event` SET `start_time` = '2023-08-05 14:00:00' WHERE `eventEntry` = 64;
UPDATE `game_event` SET `start_time` = '2023-08-05 13:00:00' WHERE `eventEntry` = 63;

-- Stranglethorn Fishing Extravaganza start time fix ( should be set to the first Sunday of the year )
UPDATE `game_event` SET `start_time` = '2023-08-06 14:00:00' WHERE `eventEntry` IN (15, 62, 90);
UPDATE `game_event` SET `start_time` = '2023-08-06 00:00:00', `length` = 1440 WHERE `eventEntry` = 14; -- Grinkle and Barrus should appear before the event starts (1440=24h, currently set to 27h from event start)
