-- Solutions for Day 7: Introduction to Joins

-- Question 1: Join the impressions and campaigns tables and select the impression_id and campaign_budget for impressions on mobile devices.
SELECT i.impression_id, c.budget
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE i.device = 'mobile';

-- Question 2: Show the user_id and campaign_name for all clicked impressions.
SELECT i.user_id, c.campaign_name
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE i.clicked = 1;

-- Question 3: Join the tables and find the total number of impressions for each campaign_name with a budget greater than 1200.
SELECT c.campaign_name, COUNT(i.impression_id) AS total_impressions
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE c.budget > 1200
GROUP BY c.campaign_name;

-- Question 4: Show the impression_id, creative_id, and campaign_name for impressions that occurred after '2025-05-14 09:00:00'.
SELECT i.impression_id, i.creative_id, c.campaign_name
FROM impressions i
JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE i.impression_time > '2025-05-14 09:00:00';

-- Question 5: Find the average budget of the campaigns that have had at least one impression.
SELECT AVG(c.budget) AS average_budget_with_impressions
FROM campaigns c
WHERE c.campaign_id IN (SELECT DISTINCT campaign_id FROM impressions);