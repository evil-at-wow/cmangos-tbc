
DROP TABLE IF EXISTS `character_audit_loot`;
CREATE TABLE `character_audit_loot` (
  `time` bigint(20) unsigned NOT NULL,
  `player_guid` int(11) unsigned NOT NULL COMMENT 'Player GUID',
  `item_entry` mediumint(8) unsigned NOT NULL COMMENT 'Item entry',
  `item_randompropertyid` int(11) NOT NULL,
  `item_count` int(11) unsigned NOT NULL,
  `source_guid` bigint(20) unsigned NOT NULL,
  `loot_type` tinyint(2) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Character loot audit';

DROP TABLE IF EXISTS `character_audit_gold`;
CREATE TABLE `character_audit_gold` (
  `time` bigint(20) unsigned NOT NULL,
  `player_guid` int(11) unsigned NOT NULL COMMENT 'Player GUID',
  `money` int(11) unsigned NOT NULL,
  `source_guid` bigint(20) unsigned NOT NULL,
  `loot_type` tinyint(2) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Character gold audit';

DROP TABLE IF EXISTS `character_audit_kill`;
CREATE TABLE `character_audit_kill` (
  `time` bigint(20) unsigned NOT NULL,
  `player_guid` int(11) unsigned NOT NULL COMMENT 'Player GUID',
  `creature_guid` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Character kill audit';

DROP TABLE IF EXISTS `character_audit_vendor_buy`;
CREATE TABLE `character_audit_vendor_buy` (
  `time` bigint(20) unsigned NOT NULL,
  `player_guid` int(11) unsigned NOT NULL COMMENT 'Player GUID',
  `item_entry` mediumint(8) unsigned NOT NULL COMMENT 'Item entry',
  `item_count` int(11) unsigned NOT NULL,
  `source_guid` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Character vendor buy audit';
