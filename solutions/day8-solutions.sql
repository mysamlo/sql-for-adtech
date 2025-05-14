-- Solutions for Day 8: More on Joins (LEFT JOIN)

-- Question 1: Show all campaigns and the average viewability of their impressions (if any).
SELECT c.campaign_name, AVG(i.viewable) AS average_viewability
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;

-- Question 2: List all campaigns and the number of unique users who saw their ads.
SELECT c.campaign_name, COUNT(DISTINCT i.user_id) AS unique_users
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;

-- Question 3: Find all campaigns that have not had any clicks.
SELECT c.campaign_name
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
WHERE i.clicked IS NULL OR SUM(i.clicked) = 0
GROUP BY c.campaign_name
HAVING SUM(i.clicked) IS NULL OR SUM(i.clicked) = 0;

-- Question 4: Show all campaigns and the latest impression time associated with them (if any).
SELECT c.campaign_name, MAX(i.impression_time) AS latest_impression
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;

-- Question 5: List all campaigns and the number of mobile impressions they received.
SELECT c.campaign_name, SUM(CASE WHEN i.device = 'mobile' THEN 1 ELSE 0 END) AS mobile_impressions
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;