-- Day 11: Window Functions (Part 2)

-- Example 1: Finding the previous impression time for each user
SELECT impression_id, user_id, impression_time,
       LAG(impression_time, 1, NULL) OVER (PARTITION BY user_id ORDER BY impression_time) AS previous_impression_time
FROM impressions;

-- Example 2: Calculating a running total of impressions
SELECT impression_id, impression_time,
       COUNT(*) OVER (ORDER BY impression_time ROWS UNBOUNDED PRECEDING) AS running_total_impressions
FROM impressions;

-- Example 3: Calculating a moving average of viewability over the last 3 impressions
SELECT impression_id, impression_time, viewable,
       AVG(CAST(viewable AS REAL)) OVER (ORDER BY impression_time ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_viewability
FROM impressions;