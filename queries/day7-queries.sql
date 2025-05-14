-- Day 7: Introduction to Joins

-- Example 1: Joining impressions and campaigns on campaign_id and selecting relevant columns
SELECT i.impression_id, c.campaign_name, i.impression_time
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id;

-- Example 2: Joining and filtering based on a condition
SELECT i.user_id, c.campaign_name, i.device
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE i.device = 'desktop';

-- Example 3: Joining and aggregating data
SELECT c.campaign_name, COUNT(i.impression_id) AS total_impressions
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id
GROUP BY c.campaign_name;