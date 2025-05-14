-- Solutions for Day 6: Filtering Groups with HAVING

-- Question 1: Find the campaign_id's that have at least 2 unique users.
SELECT campaign_id
FROM impressions
GROUP BY campaign_id
HAVING COUNT(DISTINCT user_id) >= 2;

-- Question 2: Show the device types that have an average click rate greater than 0.2.
SELECT device
FROM impressions
GROUP BY device
HAVING AVG(clicked) > 0.2;

-- Question 3: Identify the creative_id's that have more than 1 clicked impression.
SELECT creative_id
FROM impressions
WHERE clicked = 1
GROUP BY creative_id
HAVING COUNT(*) > 1;

-- Question 4: Find the campaign_id's that have a total of more than 3 viewable impressions.
SELECT campaign_id
FROM impressions
WHERE viewable = 1
GROUP BY campaign_id
HAVING COUNT(*) > 3;

-- Question 5: Show the user_id's that have more than one impression on a mobile device.
SELECT user_id
FROM impressions
WHERE device = 'mobile'
GROUP BY user_id
HAVING COUNT(*) > 1;