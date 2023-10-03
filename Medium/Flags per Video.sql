SELECT
video_id,
COUNT( DISTINCT users_name) AS num_unique_users
FROM(
SELECT
IFNULL(CONCAT(user_firstname," ",user_lastname),"Unknown") AS users_name,
video_id,
flag_id
FROM user_flags
) t 
WHERE flag_id IS NOT NULL
GROUP BY video_id;