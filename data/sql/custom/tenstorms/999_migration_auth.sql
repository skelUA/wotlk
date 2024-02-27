-- set db name
USE beta_characters;
SET @last_account_id := 10000;
SET @last_arena_team_id := 211;
-- SELECT max(id) FROM auctionhouse;
SET @last_auctionhouse_id := 13000;
SET @last_char_id := 30000;
SET @last_item_guid := 5000000;
-- SELECT max(id) FROM character_pet;
SET @last_pet_id := 2200;


-- set account_data
UPDATE account_data set accountid = accountid + @last_account_id;
-- SELECT * FROM beta_characters.account_data ;

-- set account_instance_times
UPDATE account_instance_times set accountid = accountid + @last_account_id;
-- SELECT * FROM account_instance_times;

-- set account_tutorial
UPDATE account_tutorial set accountid = accountid + @last_account_id;
-- SELECT * FROM account_tutorial;

-- set arena_team
UPDATE arena_team set arenaTeamId = arenaTeamId + @last_arena_team_id ;
UPDATE arena_team set captainGuid = captainGuid + @last_char_id;
-- SELECT * FROM arena_team;

-- set arena_team_member
UPDATE arena_team_member set arenaTeamId = arenaTeamId + @last_arena_team_id ;
UPDATE arena_team_member set guid = guid + @last_char_id;
-- SELECT * FROM arena_team_member;

-- auctionhouse
UPDATE auctionhouse set id = id + @last_auctionhouse_id ;
UPDATE auctionhouse set  itemguid = itemguid + @last_item_guid;
UPDATE auctionhouse set  itemowner = itemowner + @last_char_id;
UPDATE auctionhouse set  itemowner = itemowner + @last_char_id;
UPDATE auctionhouse set  buyguid = buyguid + @last_char_id where buyguid > 0;
-- SELECT * FROM auctionhouse;

-- banned_addons will not change
-- battleground_deserters
-- bugreport
-- calendar_events
-- calendar_invites
-- channels
-- channels_bans
-- channels_rights

-- set  character_account_data
UPDATE character_account_data set  guid = guid + @last_char_id;
-- SELECT * FROM character_account_data;

-- set character_achievement
UPDATE character_achievement set  guid = guid + @last_char_id;
-- SELECT * FROM character_achievement;

-- set character_achievement_progress
UPDATE character_achievement_progress set  guid = guid + @last_char_id;
-- SELECT * FROM character_achievement_progress;

-- set character_action
UPDATE character_action set  guid = guid + @last_char_id;
-- SELECT * FROM character_action;

-- set character_arena_stats
UPDATE character_arena_stats set  guid = guid + @last_char_id;
-- SELECT * FROM character_arena_stats;

-- character_aura no change
-- character_banned no change
-- character_battleground_random no change
TRUNCATE character_aura;
TRUNCATE character_banned;
TRUNCATE character_battleground_random;

-- set character_brew_of_the_month
UPDATE character_brew_of_the_month set  guid = guid + @last_char_id;
-- SELECT * FROM character_brew_of_the_month;

-- set character_entry_point
UPDATE character_entry_point set  guid = guid + @last_char_id;
-- SELECT * FROM character_entry_point;

-- set character_equipmentsets
UPDATE character_equipmentsets set  guid = guid + @last_char_id;
-- SELECT * FROM character_equipmentsets;

-- character_gifts no change

-- set character_glyphs
UPDATE character_glyphs set  guid = guid + @last_char_id;
-- SELECT * FROM character_glyphs;

-- set character_homebind
UPDATE character_homebind set  guid = guid + @last_char_id;
-- SELECT * FROM character_homebind;

-- character_homebind
UPDATE character_instance set  guid = guid + @last_char_id;
-- SELECT * FROM character_instance;

-- character_inventory
UPDATE character_inventory set  guid = guid + @last_char_id;
UPDATE character_inventory set  bag = bag + @last_item_guid where bag > 0;
UPDATE character_inventory set  item = item + @last_item_guid;
-- SELECT * FROM character_inventory;

-- character_pet
UPDATE character_pet set  id = id + @last_pet_id;
UPDATE character_pet set  owner = owner + @last_char_id;
-- SELECT * FROM character_pet;

-- character_pet_declinedname
TRUNCATE character_pet_declinedname;

-- character_queststatus
UPDATE character_queststatus set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus;

-- character_queststatus_daily
UPDATE character_queststatus_daily set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus_daily;

-- character_queststatus_monthly
UPDATE character_queststatus_monthly set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus_monthly;

-- character_queststatus_rewarded
UPDATE character_queststatus_rewarded set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus_rewarded;

-- character_queststatus_seasonal
UPDATE character_queststatus_seasonal set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus_seasonal;
