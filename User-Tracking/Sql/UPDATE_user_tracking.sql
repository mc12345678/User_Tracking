SELECT @UserTrackgID := configuration_group_id 
FROM configuration_group where configuration_group_title LIKE '%User Tracking%';

INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Admin User Can Delete)', 'CONFIG_USER_TRACKING_ADMIN_CAN_DELETE', 'true', 'Allow Record Deletion to be Active?<br/>Setting this to true will override ENTRY and SESSION purges.<br/>Default <b>true</b><br/>', @UserTrackgID, 25, '2013-11-09 11:19:26', '2013-11-09 11:19:26', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Admin User Can Delete Historical Data)', 'CONFIG_USER_TRACKING_ADMIN_CAN_DELETE_RECORDS', 'false', 'Allow Record Deletion of records older than now - the purge duration set below.<br/>This value is ignored if Admin User Can Delete is set to true.  Otherwise set this to true to allow deletion of visits.<br/>Default <b>false</b>.<br/>', @UserTrackgID, 26, '2013-11-09 11:19:26', '2013-11-09 11:19:26', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Admin User Can Delete SESSIONS)', 'CONFIG_USER_TRACKING_ADMIN_CAN_DELETE_SESSIONS', 'false', 'Allow SESSION Deletion to be Active?<br/>This setting is ignored if Admin User Can Delete is set to true.<br/>Default <b>false</b><br/>', @UserTrackgID, 27, '2013-11-09 11:19:26', '2013-11-09 11:19:26', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Admin User Can Delete IP)', 'CONFIG_USER_TRACKING_ADMIN_CAN_DELETE_IP', 'false', 'Allow Deletion of records that match the identified IP address?<br/>This setting is ignored if Admin User Can Delete is set to true.<br/>Default <b>false</b><br/>', @UserTrackgID, 28, '2013-11-09 11:19:26', '2013-11-09 11:19:26', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Purge this Number)', 'CONFIG_USER_TRACKING_PURGE_NUMBER', '3', 'What is the number associated with purging before the current date/time?<br/><br/>An example would be to choose 3 here and units associated with days to delete data greater than 3 days before today.<br/>', @UserTrackgID, 30, '2013-11-09 23:08:38', '2013-11-09 23:08:38', NULL, NULL);
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Purge Units)', 'CONFIG_USER_TRACKING_PURGE_UNITS', '1440', 'Pick the units associate with the periodicity to allow purging data.<br/><br/>60) Hours<br/>1440) Days<br/>10080) Weeks<br/>43200) Months (Based on 30 days)<br/>', @UserTrackgID, 31, '2013-11-09 23:08:38', '2013-11-09 23:08:38', NULL, 'zen_cfg_select_option(array(''60'', ''1440'',''10080'',''43200''),');
INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (0, 'User Tracking (Type of User Interaction to Record)', 'CONFIG_USER_TRACKING_TRACK_TYPE_RECORD', '1', 'Type of user tracking to record?<br/><br/>1 - All visitors.<br/>2 - Visitors views where sessions have been started.<br/>3 - All users except bots/spiders ( requires Configuration->Sessions->Prevent Spider Sessions->true)  (Don\'t know if this works with Zen-Cart versions older than 1.2.6d)<br/><br/>Related to above: If you set Force Cookie Use->true, then at the first user entry, sessions do not start!!! And in variants 2 and 3, user-tracking will not have started. In this case you lose one click and do not log the refferal. But if this user is a returning user and has an old/previous zen cookie the session started and your tracking system will collect this info. So, the result beforehand is not logged or will not be known.<br/>', @UserTrackgID, 40, '2013-11-09 11:19:26', '2013-11-09 11:19:26', NULL, 'zen_cfg_select_option(array(''1'', ''2'',''3''),');
INSERT INTO configuration VALUES (0, 'User Tracking (Version Installed)', 'CONFIG_USER_TRACKING_VERSION', '1.4.3', 'Shows the version number associated with user tracking and should be updated with each upgrade', @UserTrackgID, 1000, '2013-11-10 04:19:26', '2013-11-10 04:19:26', NULL, NULL);