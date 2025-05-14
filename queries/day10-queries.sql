-- Day 10: Window Functions (Part 1)

-- Example 1: Assigning a row number to each impression based on impression_time
SELECT impression_id, impression_time,
       ROW_NUMBER() OVER (ORDER BY impression_time) AS row_num
FROM impressions;

-- Example 2: Ranking campaigns by the total number of impressions
WITH CampaignImpressions AS (
    SELECT campaign_id, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY campaign_id
)
SELECT campaign_id, total_impressions,
       RANK() OVER (ORDER BY total_impressions DESC) AS impression_rank
FROM CampaignImpressions;

-- Example 3: Using DENSE_RANK() to rank campaigns by total clicks
WITH CampaignClicks AS (
    SELECT campaign_id, SUM(clicked) AS total_clicks
    FROM impressions
    GROUP BY campaign_id
)
SELECT campaign_id, total_clicks,
       DENSE_RANK() OVER (ORDER BY total_clicks DESC) AS click_rank
FROM CampaignClicks;