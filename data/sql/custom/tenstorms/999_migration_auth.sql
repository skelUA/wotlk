-- SELECT max(id) FROM account;
SET @last_account_id := 5811;
ALTER TABLE account_test ADD COLUMN   `votePoints` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' AFTER restore_key;
use beta_auth;
-- set account_data
UPDATE account_test set id = id + @last_account_id;
UPDATE account_test, account   SET account_test.username = CONCAT('TS_', account_test.username)  where  account.username = account_test.username;
INSERT INTO account SELECT * FROM account_test;
-- SELECT * FROM beta_characters.account_data ;
--
-- use beta_auth;
-- UPDATE account_test, account   SET account_test.username = CONCAT('TS_', account_test.username)  where  account.username = account_test.username;
-- INSERT INTO account SELECT * FROM account_test;

-- mysqldump acore_auth account |\sed -e 's/`account`/`account_test`/'  > a_test.sql


--
-- mysqldump beta_characters characters |\sed -e 's/`characters`/`characters_temp`/'  > c_temp.sql
-- UPDATE characters, characters_temp set characters.at_login=1 where characters.name=characters_temp.name  and characters.guid > @last_char_id;
USE beta_characters;
SET @last_account_id := 5811;
-- SELECT max(arenaTeamId) FROM arena_team;
SET @last_arena_team_id := 228;
-- SELECT max(id) FROM auctionhouse;
SET @last_auctionhouse_id := 925135;
-- SELECT max(guid) FROM characters;
SET @last_char_id := 16309;
-- SELECT max(setguid) FROM character_equipmentsets;
SET @last_equipment_id := 4032;
-- SELECT max(guid) FROM item_instance;
SET @last_item_guid := 67351026;
-- SELECT max(id) FROM character_pet;
SET @last_pet_id := 7190;
-- SELECT max(guid) FROM group_member;
SET @last_group_member_id := 7035;
-- SELECT max(guildid) FROM guild;
SET @last_guild_id := 64;
-- SELECT max(id) FROM mail;
SET @last_mail_id := 67266292;
-- SELECT max(petitionguid) FROM petition;
-- SET @last_petition_id := 66585737;

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
UPDATE auctionhouse set  buyguid = buyguid + @last_char_id where buyguid > 0;
-- SELECT * FROM auctionhouse;

-- addons
TRUNCATE addons ;
-- banned_addons
TRUNCATE banned_addons ;
-- battleground_deserters
TRUNCATE battleground_deserters;
-- bugreport
TRUNCATE bugreport;
-- calendar_events
TRUNCATE calendar_events;
-- calendar_invites
TRUNCATE calendar_invites;
-- channels
TRUNCATE channels;
-- channels_bans
TRUNCATE channels_bans;
-- channels_rights
TRUNCATE channels_rights;


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
UPDATE character_equipmentsets SET setguid = setguid +  @last_equipment_id;
UPDATE character_equipmentsets SET item0 = item0 +  @last_item_guid where item0 >0 ;
UPDATE character_equipmentsets SET item1 = item1 +  @last_item_guid where item1 >0;
UPDATE character_equipmentsets SET item2 = item2 +  @last_item_guid where item2 >0;
UPDATE character_equipmentsets SET item3 = item3 +  @last_item_guid where item3 >0;
UPDATE character_equipmentsets SET item4 = item4 +  @last_item_guid where item4 >0;
UPDATE character_equipmentsets SET item5 = item5 +  @last_item_guid where item5 >0;
UPDATE character_equipmentsets SET item6 = item6 +  @last_item_guid where item6 >0 ;
UPDATE character_equipmentsets SET item7 = item7 +  @last_item_guid where item7 >0;
UPDATE character_equipmentsets SET item8 = item8 +  @last_item_guid where item8 >0 ;
UPDATE character_equipmentsets SET item9 = item9 +  @last_item_guid where item9 >0 ;
UPDATE character_equipmentsets SET item10 = item10 +  @last_item_guid where item10 >0;
UPDATE character_equipmentsets SET item11 = item11 +  @last_item_guid where item11 >0 ;
UPDATE character_equipmentsets SET item12 = item12 +  @last_item_guid where item12 >0;
UPDATE character_equipmentsets SET item13 = item13 +  @last_item_guid where item13 >0;
UPDATE character_equipmentsets SET item14 = item14 +  @last_item_guid where item14 >0 ;
UPDATE character_equipmentsets SET item15 = item15 +  @last_item_guid where item15 >0;
UPDATE character_equipmentsets SET item16 = item16 +  @last_item_guid where item16 >0;
UPDATE character_equipmentsets SET item17 = item17 +  @last_item_guid where item17 >0;
UPDATE character_equipmentsets SET item18 = item18 +  @last_item_guid where item18 >0;



-- SELECT * FROM character_equipmentsets;

-- character_gifts no change
TRUNCATE character_gifts;

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

-- character_queststatus_weekly
UPDATE character_queststatus_weekly set  guid = guid + @last_char_id;
-- SELECT * FROM character_queststatus_weekly;

-- character_reputation
UPDATE character_reputation set  guid = guid + @last_char_id;
-- SELECT * FROM character_reputation;

-- characters
UPDATE characters set  guid = guid + @last_char_id;
UPDATE characters set  account = account + @last_account_id where account > 0 ;
UPDATE characters set  deleteInfos_Account = deleteInfos_Account + @last_account_id;
UPDATE characters set money = 500000000 where money > 500000000;
-- UPDATE characters set at_login=1;
-- SELECT * FROM characters;

-- character_settings
TRUNCATE character_settings;

-- character_skills
UPDATE character_skills set  guid = guid + @last_char_id;
-- SELECT * FROM character_skills;

-- character_social
UPDATE character_social set  guid = guid + @last_char_id;
UPDATE character_social set  friend = friend + @last_char_id;
-- SELECT * FROM character_social;

-- character_spell
UPDATE character_spell set  guid = guid + @last_char_id;
-- SELECT * FROM character_spell;

-- character_spell_cooldown
UPDATE character_spell_cooldown set  guid = guid + @last_char_id;
-- SELECT * FROM character_spell_cooldown;

-- character_stats
UPDATE character_stats set  guid = guid + @last_char_id;
-- SELECT * FROM character_stats;

-- character_talent
UPDATE character_talent set  guid = guid + @last_char_id;
-- SELECT * FROM character_talent;

-- character_transfer
TRUNCATE character_transfer;
-- corpse
TRUNCATE corpse;
-- creature_respawn
TRUNCATE creature_respawn;

-- custom_transmogrification
UPDATE custom_transmogrification set  GUID = GUID + @last_item_guid;
UPDATE custom_transmogrification set  owner = owner + @last_char_id;
-- SELECT * FROM custom_transmogrification;

-- custom_transmogrification_sets;
TRUNCATE custom_transmogrification_sets;

-- custom_unlocked_appearances
UPDATE  custom_unlocked_appearances set  account_id = account_id + @last_account_id;
-- SELECT * FROM custom_unlocked_appearances;

-- game_event_condition_save
TRUNCATE game_event_condition_save;
-- game_event_save
TRUNCATE game_event_save;
-- gameobject_respawn
TRUNCATE gameobject_respawn;

-- globalchat_blacklist
TRUNCATE globalchat_blacklist;
-- gm_subsurvey
TRUNCATE gm_subsurvey;
-- gm_survey
TRUNCATE gm_survey;
-- gm_ticket
TRUNCATE gm_ticket;

-- group_member
UPDATE group_member set  guid = guid + @last_group_member_id;
UPDATE group_member set  memberGuid = memberGuid + @last_char_id;
-- SELECT * FROM group_member;

-- groups
UPDATE `groups` set  guid = guid + @last_group_member_id;
UPDATE `groups` set  LeaderGuid = LeaderGuid + @last_char_id;
UPDATE `groups` set  MasterLooterGuid = MasterLooterGuid + @MasterLooterGuid where MasterLooterGuid > 0;
-- SELECT * FROM `groups`;

-- guild
UPDATE `guild` set  guildid = guildid + @last_guild_id;
UPDATE `guild` set  leaderguid = leaderguid + @last_char_id;
-- SELECT * FROM guild;

-- guild_bank_eventlog
TRUNCATE guild_bank_eventlog;

-- guild_bank_item
UPDATE `guild_bank_item` set  guildid = guildid + @last_guild_id;
UPDATE `guild_bank_item` set  item_guid = item_guid + @last_item_guid;
-- SELECT * FROM guild_bank_item;

-- guild_bank_right
UPDATE `guild_bank_right` set  guildid = guildid + @last_guild_id;
-- SELECT * FROM guild_bank_right;


-- guild_bank_tab
UPDATE `guild_bank_tab` set  guildid = guildid + @last_guild_id;
-- SELECT * FROM guild_bank_tab;

-- guild_eventlog
TRUNCATE guild_eventlog;

-- guild_member
UPDATE `guild_member` set  guildid = guildid + @last_guild_id;
UPDATE `guild_member` set  guid = guid + @last_char_id;
-- SELECT * FROM guild_member;

-- guild_member_withdraw
UPDATE `guild_member_withdraw` set  guid = guid + @last_char_id;
-- SELECT * FROM guild_member_withdraw;


-- guild_rank
UPDATE `guild_rank` set  guildid = guildid + @last_guild_id;
-- SELECT * FROM guild_rank;

TRUNCATE individualxp;

-- instance_reset
TRUNCATE  instance_reset;

-- instance_saved_go_state_data
TRUNCATE instance_saved_go_state_data;

-- item_instance
UPDATE `item_instance` set  guid = guid + @last_item_guid;
UPDATE `item_instance` set  owner_guid = owner_guid + @last_char_id where owner_guid > 0;
UPDATE `item_instance` set  creatorGuid = creatorGuid + @last_char_id where creatorGuid > 0;
UPDATE `item_instance` set  giftCreatorGuid = giftCreatorGuid + @last_char_id where giftCreatorGuid > 0;
-- SELECT *  FROM item_instance;

-- item_loot_storage
UPDATE `item_loot_storage` set  containerGUID = containerGUID + @last_item_guid;
-- SELECT * FROM item_loot_storage;

-- item_refund_instance
UPDATE `item_refund_instance` set  item_guid = item_guid + @last_item_guid;
UPDATE `item_refund_instance` set  player_guid = player_guid + @last_char_id;
-- SELECT * FROM item_refund_instance;


-- item_soulbound_trade_data
TRUNCATE item_soulbound_trade_data;
-- lag_reports
TRUNCATE lag_reports;
-- lfg_data
TRUNCATE lfg_data;
-- log_arena_fights
TRUNCATE log_arena_fights;
-- log_arena_memberstats
TRUNCATE log_arena_memberstats;
-- log_encounter
TRUNCATE log_encounter;
-- log_money
TRUNCATE log_money;

-- mail
UPDATE `mail` set  id = id + @last_mail_id;
UPDATE `mail` set  sender = sender + @last_char_id where sender > 0;
UPDATE `mail` set  receiver = receiver + @last_char_id where receiver > 0;
-- SELECT * FROM mail;

-- mail_items
UPDATE `mail_items` set  mail_id = mail_id + @last_mail_id;
UPDATE `mail_items` set  receiver = receiver + @last_char_id where receiver > 0;
UPDATE `mail_items` set  item_guid = item_guid + @last_item_guid;
-- SELECT * FROM mail_items;


-- mail_server_character
-- mail_server_template
TRUNCATE mail_server_character ;
TRUNCATE mail_server_template ;

TRUNCATE pet_aura;

-- petition;
UPDATE `petition` set  petitionguid = petitionguid + @last_item_guid;
UPDATE `petition` set  ownerguid = ownerguid + @last_char_id ;
-- SELECT * FROM petition;

-- petition_sign
UPDATE `petition_sign` set  petitionguid = petitionguid + @last_item_guid;
UPDATE `petition_sign` set  ownerguid = ownerguid + @last_char_id ;
UPDATE `petition_sign` set  playerguid = playerguid + @last_char_id ;
UPDATE `petition_sign` set player_account = player_account + @last_account_id;
-- SELECT * FROM petition_sign;

-- pet_spell
UPDATE `pet_spell` set  guid = guid + @last_pet_id ;
-- SELECT * FROM pet_spell;

-- pet_spell_cooldown
UPDATE `pet_spell_cooldown` set  guid = guid + @last_pet_id ;
-- SELECT * FROM pet_spell_cooldown;

-- player_globalchat_status
TRUNCATE player_globalchat_status;
-- pool_quest_save
TRUNCATE pool_quest_save;
-- profanity_name
TRUNCATE profanity_name;
-- player_globalchat_status
TRUNCATE player_globalchat_status;
-- pvpstats_players
TRUNCATE pvpstats_players ;
-- quest_tracker;
TRUNCATE quest_tracker;
-- recovery_item
TRUNCATE recovery_item;
-- reserved_name
TRUNCATE reserved_name;
-- updates;
TRUNCATE updates;
-- updates_include
TRUNCATE updates_include;
TRUNCATE worldstates;
TRUNCATE warden_action;
TRUNCATE pvpstats_battlegrounds;

DROP TABLE IF EXISTS  `__del_ability_spell`, `__del_override_spell`, `__del_shapeshift_spell`, `__del_spell_learn_spell`, `__del_spells_with_learn_effect`, `__del_talent_pyroblast`, `__del_talent_pyroblast2`, `__del_talent_rest_ranks`;
DROP TABLE IF EXISTS `__playercreateinfo_spell`;
DROP TABLE IF EXISTS `__spell_ranks`;
DROP TABLE IF EXISTS `__profession_autolearn`, `__profession_skill`, `__profession_spell_req_skill`, `__profession_spell_req_spell`;
DROP TABLE IF EXISTS `character_transfer`;
DROP TABLE IF EXISTS `individualxp`;
DROP TABLE IF EXISTS `player`;


--
---- AFTER
-- UPDATE characters T1 JOIN
--  (SELECT name FROM characters
--   GROUP BY name HAVING count(name) > 1) dup ON T1.name = dup.name
-- SET T1.at_login=1 where T1.guid > 16309 and T1.name <>'';


-- mysql beta_characters < acore_characters.27-02-2024_11-30-01.sql
