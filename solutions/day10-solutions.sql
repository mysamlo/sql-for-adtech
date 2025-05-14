-- Solutions for Day 10: Window Functions (Part 1)

-- Question 1: Assign a row number to each impression partitioned by user_id, ordered by impression_time.
SELECT impression_id, user_id, impression_time,
       ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY impression_time) AS row_num
FROM impressions;

-- Question 2: Rank the creative_id's by the total number of impressions they received.
WITH CreativeImpressions AS (
    SELECT creative_id, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY creative_id
)
SELECT creative_id, total_impressions,
       RANK() OVER (ORDER BY total_impressions DESC) AS impression_rank
FROM CreativeImpressions;

-- Question 3: Use DENSE_RANK() to rank the user_id's based on the number of clicks they generated.
WITH UserClicks AS (
    SELECT user_id, SUM(clicked) AS total_clicks
    FROM impressions
    GROUP BY user_id
)
SELECT user_id, total_clicks,
       DENSE_RANK() OVER (ORDER BY total_clicks DESC) AS click_rank
FROM UserClicks;

-- Question 4: For each campaign_id, rank the impressions by their impression_time.
SELECT impression_id, campaign_id, impression_time,
       RANK() OVER (PARTITION BY campaign_id ORDER BY impression_time) AS impression_rank_within_campaign
FROM impressions;

-- Question 5: Rank the devices by the total number of impressions they served.
WITH DeviceImpressions AS (
    SELECT device, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY device
)
SELECT device, total_impressions,
       RANK() OVER (ORDER BY total_impressions DESC) AS device_rank
FROM DeviceImpressions;