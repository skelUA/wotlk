-- https://www.wowhead.com/wotlk/npc=29334/gundrak-raptor#skinning
-- remove item https://www.wowhead.com/wotlk/item=38558/nerubian-chitin
DELETE FROM `skinning_loot_template` WHERE (`Entry` = 70203) AND (`Item` IN (38558));

