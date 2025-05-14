-- Day 3: Sorting and Limiting Results

-- Example 1: Sorting impressions by impression_time in descending order (newest first)
SELECT impression_id, campaign_id, impression_time
FROM impressions
ORDER BY impression_time DESC;

-- Example 2: Sorting campaigns by budget in descending order and limiting to the top 1
SELECT campaign_name, budget
FROM campaigns
ORDER BY budget DESC
LIMIT 1;

-- Example 3: Sorting impressions by campaign_id (ascending) and then by impression_time (descending)
SELECT impression_id, campaign_id, impression_time
FROM impressions
ORDER BY campaign_id ASC, impression_time DESC;