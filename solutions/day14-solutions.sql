-- Solutions for Day 14: Putting It All Together - Mini Project

-- 1. What is the total number of impressions, total clicks, and the overall Click-Through Rate (CTR) for each campaign?
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
    CASE
        WHEN impressions > 0 THEN CAST(clicks AS REAL) * 100 / impressions
        ELSE 0
    END AS ctr
FROM CampaignPerformance
ORDER BY campaign_name;

-- 2. Which campaign has the highest number of impressions?
SELECT
    c.campaign_name,
    COUNT(i.impression_id) AS total_impressions
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
GROUP BY c.campaign_name
ORDER BY total_impressions DESC
LIMIT 1;

-- 3. What is the average viewability rate for each campaign?
SELECT
    c.campaign_name,
    AVG(i.viewable) AS average_viewability
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
GROUP BY c.campaign_name
ORDER BY average_viewability DESC;

-- 4. Identify the top 3 creatives with the highest number of clicks across all campaigns.
SELECT
    i.creative_id,
    SUM(i.clicked) AS total_clicks
FROM impressions i
GROUP BY i.creative_id
ORDER BY total_clicks DESC
LIMIT 3;

-- 5. How does the CTR vary by device type?
WITH DevicePerformance AS (
    SELECT
        device,
        COUNT(impression_id) AS impressions,
        SUM(clicked) AS clicks
    FROM impressions
    GROUP BY device
)
SELECT
    device,
    CASE
        WHEN impressions > 0 THEN CAST(clicks AS REAL) * 100 / impressions
        ELSE 0
    END AS ctr
FROM DevicePerformance
ORDER BY ctr DESC;

-- 6. Are there any campaigns that have a significantly lower than average viewability rate?
-- (This is subjective, but we can identify campaigns below the overall average)
WITH CampaignAvgView AS (
    SELECT
        c.campaign_name,
        AVG(i.viewable) AS avg_viewability
    FROM impressions i
    JOIN campaigns c ON i.campaign_id = c.campaign_id
    GROUP BY c.campaign_name
),
OverallAvgView AS (
    SELECT AVG(viewable) AS overall_avg FROM impressions
)
SELECT
    cav.campaign_name,
    cav.avg_viewability,
    oav.overall_avg
FROM CampaignAvgView cav, OverallAvgView oav
WHERE cav.avg_viewability < oav.overall_avg * 0.8; -- Consider "significantly lower" as 20% below average

-- 7. Bonus: Can you identify any trends in impression volume over the available dates?
SELECT
    DATE(impression_time) AS impression_date,
    COUNT(*) AS num_impressions
FROM impressions
GROUP BY impression_date
ORDER BY impression_date;