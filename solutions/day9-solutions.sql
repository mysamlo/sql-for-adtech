-- Solutions for Day 9: Common Table Expressions (CTEs)

-- Question 1: Create a CTE to find the total impressions per campaign_id, and then select the campaign with the highest total impressions from the CTE.
WITH CampaignTotalImpressions AS (
    SELECT campaign_id, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY campaign_id
)
SELECT campaign_id
FROM CampaignTotalImpressions
ORDER BY total_impressions DESC
LIMIT 1;

-- Question 2: Use a CTE to calculate the click-through rate (clicks / impressions) for each campaign_id.
WITH CampaignPerformance AS (
    SELECT
        campaign_id,
        COUNT(*) AS impressions,
        SUM(clicked) AS clicks
    FROM impressions
    GROUP BY campaign_id
)
SELECT
    campaign_id,
    CAST(clicks AS REAL) * 100 / impressions AS ctr
FROM CampaignPerformance;

-- Question 3: Create a CTE to find the number of impressions per device, and then select only the devices with more than 2 impressions from the CTE.
WITH DeviceImpressions AS (
    SELECT device, COUNT(*) AS num_impressions
    FROM impressions
    GROUP BY device
)
SELECT device
FROM DeviceImpressions
WHERE num_impressions > 2;

-- Question 4: Use two CTEs: one to find the total impressions per user, and another to find the total clicks per user. Then join these CTEs on user_id.
WITH UserImpressions AS (
    SELECT user_id, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY user_id
),
UserClicks AS (
    SELECT user_id, SUM(clicked) AS total_clicks
    FROM impressions
    GROUP BY user_id
)
SELECT ui.user_id, ui.total_impressions, uc.total_clicks
FROM UserImpressions ui
LEFT JOIN UserClicks uc ON ui.user_id = uc.user_id;

-- Question 5: Create a CTE to calculate the number of impressions for each creative_id, and then find the average number of impressions across all creatives from the CTE.
WITH CreativeImpressions AS (
    SELECT creative_id, COUNT(*) AS num_impressions
    FROM impressions
    GROUP BY creative_id
)
SELECT AVG(num_impressions) AS average_impressions_per_creative
FROM CreativeImpressions;