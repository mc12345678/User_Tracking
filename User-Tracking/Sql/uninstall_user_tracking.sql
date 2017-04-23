/* Tables need to be ensured to include the prefix if it exists. */

DROP TABLE IF EXISTS user_tracking;

SELECT @UserTrackgID := configuration_group_id 
FROM configuration_group where configuration_group_title LIKE '%User Tracking%';

DELETE FROM configuration WHERE configuration_group_id = @UserTrackgID; 

DELETE FROM admin_pages WHERE page_key = 'UserTracking';

DELETE FROM admin_pages WHERE page_key = 'UserTrackingConfig';

DELETE FROM configuration WHERE configuration_group_id = @UserTrackgID; 

DELETE FROM configuration_group WHERE configuration_group_id = @UserTrackgID;