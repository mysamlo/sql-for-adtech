-- Solutions for Day 12: Working with Dates and Times

-- Question 1: Count the number of impressions for each hour of the day.
SELECT STRFTIME('%H', impression_time) AS impression_hour, COUNT(*) AS num_impressions
FROM impressions
GROUP BY impression_hour
ORDER BY impression_hour;

-- Question 2: Find the number of impressions that occurred on a Monday.
SELECT COUNT(*) AS monday_impressions
FROM impressions
WHERE STRFTIME('%w', impression_time) = '1'; -- Sunday=0, Monday=1, ..., Saturday=6

-- Question 3: Calculate the time difference in hours between the first and last impression for each user_id.
WITH UserTimestamps AS (
    SELECT user_id, MIN(impression_time) AS first_impression, MAX(impression_time) AS last_impression
    FROM impressions
    GROUP BY user_id
)
SELECT user_id, (STRFTIME