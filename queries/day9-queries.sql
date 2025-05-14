-- Day 9: Common Table Expressions (CTEs)

-- Example 1: Calculating daily impressions using a CTE
WITH DailyImpressions AS (
    SELECT DATE(impression_time) AS impression_date, COUNT(*) AS num_impressions
    FROM impressions
    GROUP BY DATE(impression_time)
)
SELECT impression_date, num_impressions
FROM DailyImpressions
ORDER BY impression_date;

-- Example 2: Using two CTEs to calculate daily impressions and daily clicks, then joining them
WITH DailyImpressions AS (
    SELECT DATE(impression_time) AS dt, COUNT(*) AS impressions
    FROM impressions
    GROUP BY DATE(impression_time)
),
DailyClicks AS (
    SELECT DATE(impression_time) AS dt, SUM(clicked) AS clicks
    FROM impressions
    GROUP BY DATE(impression_time)
)
SELECT di.dt, di.impressions, dc.clicks
FROM DailyImpressions di
LEFT JOIN DailyClicks dc ON di.dt = dc.dt
ORDER BY di.dt;