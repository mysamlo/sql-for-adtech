-- Day 5: Grouping Data

-- Example 1: Counting impressions per campaign_id and device
SELECT campaign_id, device, COUNT(*) AS num_impressions
FROM impressions
GROUP BY campaign_id, device;

-- Example 2: Calculating total clicks per creative_id
SELECT creative_id, SUM(clicked) AS total_clicks
FROM impressions
GROUP BY creative_id;

-- Example 3: Finding the average viewable rate per user_id
SELECT user_id, AVG(viewable) AS avg_viewability
FROM impressions
GROUP BY user_id;