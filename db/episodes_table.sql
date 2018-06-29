CREATE TABLE `episodes` (
  `id` bigint(23) unsigned NOT NULL COMMENT 'The Unique Id for this episode',
  `exists` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is this Episode known to exist',
  `broadcast_date` varchar(45) NOT NULL DEFAULT '' COMMENT 'The date this episode was originally aired',
  `episode_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The sequence number for this episode',
  `title` text NOT NULL COMMENT 'May be the title or relevant comments about the episode',
  `have` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Do I have a copy of this episode',
  `series_id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'The unique Id of the associated series',
  `search_title` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_episodes_1` (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 24576 kB; (`series_id`) REFER `otr_current_inve';

CREATE TABLE `episode_summary` (
  `id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Id for the Recording Summary',
  `episode_id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Id for th recording',
  `series_id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Id for the Series this Recording Summary is associated to',
  `episode_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Id number for this recording/summary. May be from a log or AFRS',
  `title` text CHARACTER SET latin1 NOT NULL COMMENT 'The title given for this recording',
  `broadcast_date` text CHARACTER SET latin1 NOT NULL COMMENT 'When this recording was first broadcast',
  `summary` text CHARACTER SET latin1 NOT NULL COMMENT 'Informational Summary for this recording',
  `length` text CHARACTER SET latin1 NOT NULL COMMENT 'Time length reported for this recording',
  `broadcaster` text CHARACTER SET latin1 NOT NULL COMMENT 'Broadcaster or syndicator of this recording',
  `sponsor` text CHARACTER SET latin1 NOT NULL COMMENT 'Sponsor for this recording',
  `afrs_disc` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is this an afrs disc - if so the program number is an afrs reference',
  `reference_id` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Reference Id for this episode summary',
  `afrs_program_name` text CHARACTER SET latin1 NOT NULL COMMENT 'The name of the AFRS program this recording is associated with',
  `music_fill_for_local_commercial_insert` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Music fill as marker for local commercials',
  `commercials_added_locally` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'commercials added to the recording',
  `commercials_deleted` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'commercials deleted from recording',
  `auditioned` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Was this recording auditioned',
  `recording_date` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is the listed date the date of the recording',
  `recording_notes` text CHARACTER SET latin1 NOT NULL COMMENT 'Additional Information about the recording'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
