-- Day 8: More on Joins (LEFT JOIN)

-- Example 1: Showing all campaigns and their impression counts (including those with zero impressions)
SELECT c.campaign_name, COUNT(i.impression_id) AS total_impressions
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;

-- Example 2: Showing all campaigns and the number of clicks associated with them
SELECT c.campaign_name, SUM(i.clicked) AS total_clicks
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;

-- Example 3: Finding campaigns that have no impressions
SELECT c.campaign_name
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
WHERE i.impression_id IS NULL;