-- Solutions for Day 5: Grouping Data

-- Question 1: Count the number of impressions for each campaign_id and creative_id combination.
SELECT campaign_id, creative_id, COUNT(*) AS num_impressions
FROM impressions
GROUP BY campaign_id, creative_id;

-- Question 2: Find the number of unique users who saw ads on each device.
SELECT device, COUNT(DISTINCT user_id) AS unique_users
FROM impressions
GROUP BY device;

-- Question 3: Calculate the total number of clicks for each campaign_id and device.
SELECT campaign_id, device, SUM(clicked) AS total_clicks
FROM impressions
GROUP BY campaign_id, device;

-- Question 4: Find the device with the most impressions.
SELECT device, COUNT(*) AS total_impressions
FROM impressions
GROUP BY device
ORDER BY total_impressions DESC
LIMIT 1;

-- Question 5: Calculate the average click-through rate (clicks / impressions) for each creative_id.
SELECT creative_id, CAST(SUM(clicked) AS REAL) * 100 / COUNT(*) AS avg_ctr
FROM impressions
GROUP BY creative_id;