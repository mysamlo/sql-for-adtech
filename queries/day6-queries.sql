-- Day 6: Filtering Groups with HAVING

-- Example 1: Finding campaign_id's with more than 1 total click
SELECT campaign_id, SUM(clicked) AS total_clicks
FROM impressions
GROUP BY campaign_id
HAVING SUM(clicked) > 1;

-- Example 2: Finding devices with an average viewability greater than 0.6
SELECT device, AVG(viewable) AS avg_viewability
FROM impressions
GROUP BY device
HAVING AVG(viewable) > 0.6;

-- Example 3: Finding creative_id's with more than 2 impressions
SELECT creative_id, COUNT(*) AS num_impressions
FROM impressions
GROUP BY creative_id
HAVING COUNT(*) > 2;