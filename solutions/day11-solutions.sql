-- Solutions for Day 11: Window Functions (Part 2)

-- Question 1: For each campaign_id, find the creative_id of the next impression ordered by impression_time.
SELECT impression_id, campaign_id, impression_time, creative_id,
       LEAD(creative_id, 1, NULL) OVER (PARTITION BY campaign_id ORDER BY impression_time) AS next_creative_id
FROM impressions;

-- Question 2: Calculate the running total of clicks across all impressions ordered by impression_time.
SELECT impression_id, impression_time, clicked,
       SUM(clicked) OVER (ORDER BY impression_time ROWS UNBOUNDED PRECEDING) AS running_total_clicks
FROM impressions;

-- Question 3: Find the difference in impression_time in seconds between the current and the previous impression for each user_id.
SELECT impression_id, user_id, impression_time,
       STRFTIME('%s', impression_time) - STRFTIME('%s', LAG(impression_time, 1, impression_time) OVER (PARTITION BY user_id ORDER BY impression_time)) AS time_difference_seconds
FROM impressions;

-- Question 4: Calculate a 3-day moving average of the number of impressions.
WITH DailyImpressions AS (
    SELECT DATE(impression_time) AS impression_date, COUNT(*) AS num_impressions
    FROM impressions
    GROUP BY DATE(impression_time)
)
SELECT impression_date, num_impressions,
       AVG(CAST(num_impressions AS REAL)) OVER (ORDER BY impression_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_impressions_3day
FROM DailyImpressions;

-- Question 5: For each campaign_id, find the user_id who had the first impression.
SELECT campaign_id, FIRST_VALUE(user_id) OVER (PARTITION BY campaign_id ORDER BY impression_time) AS first_impression_user
FROM impressions;