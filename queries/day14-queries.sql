-- Day 14: Mini Project - Example Queries (you'll need to adapt these for your specific analysis)

-- Example: Total impressions and clicks per campaign
SELECT
    c.campaign_name,
    COUNT(i.impression_id) AS total_impressions,
    SUM(i.clicked) AS total_clicks
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
GROUP BY c.campaign_name;

-- Example: CTR per campaign
WITH CampaignPerformance AS (
    SELECT
        c.campaign_name,
        COUNT(i.impression_id) AS impressions,
        SUM(i.clicked) AS clicks
    FROM impressions i
    JOIN campaigns c ON i.campaign_id = c.campaign_id
    GROUP BY c.campaign_name
)
SELECT
    campaign_name,
    impressions,
    clicks,
    CAST(clicks AS REAL) * 100 / impressions AS ctr
FROM CampaignPerformance;

-- You will need to write more queries based on the mini-project questions.