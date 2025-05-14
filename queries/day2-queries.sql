-- Day 2: Filtering Data with the WHERE Clause

-- Example 1: Filtering impressions for a specific campaign_id
SELECT impression_id, user_id, impression_time
FROM impressions
WHERE campaign_id = 'campaign_A';

-- Example 2: Filtering for clicked impressions
SELECT impression_id, campaign_id, impression_time
FROM impressions
WHERE clicked = 1;

-- Example 3: Filtering for impressions on a specific device
SELECT impression_id, user_id, device
FROM impressions
WHERE device = 'desktop';

-- Example 4: Filtering impressions after a specific date AND on a mobile device
SELECT impression_id, campaign_id, impression_time, device
FROM impressions
WHERE impression_time > '2025-05-14 09:00:00' AND device = 'mobile';

-- Example 5: Filtering for impressions that were NOT viewable
SELECT impression_id, campaign_id, viewable
FROM impressions
WHERE NOT viewable = 1;