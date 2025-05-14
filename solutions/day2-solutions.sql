-- Solutions for Day 2: Filtering Data with the WHERE Clause

-- Question 1: Select all impressions with a user_id of user_3 and were clicked.
SELECT *
FROM impressions
WHERE user_id = 'user_3' AND clicked = 1;

-- Question 2: Find all impressions that were viewable and on a desktop device.
SELECT *
FROM impressions
WHERE viewable = 1 AND device = 'desktop';

-- Question 3: Show all impressions that occurred before '2025-05-14 09:15:00' OR were not clicked.
SELECT *
FROM impressions
WHERE impression_time < '2025-05-14 09:15:00' OR clicked = 0;

-- Question 4: Retrieve all impressions for campaign_B that were not on a mobile device.
SELECT *
FROM impressions
WHERE campaign_id = 'campaign_B' AND NOT device = 'mobile';

-- Question 5: Select the impression_id and creative_id for impressions that were clicked and viewable.
SELECT impression_id, creative_id
FROM impressions
WHERE clicked = 1 AND viewable = 1;