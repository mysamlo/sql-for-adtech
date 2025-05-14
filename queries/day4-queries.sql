-- Day 4: Basic Aggregation Functions

-- Example 1: Counting the total number of clicked impressions
SELECT COUNT(*) AS total_clicks
FROM impressions
WHERE clicked = 1;

-- Example 2: Calculating the sum of the budget for campaigns starting after '2025-05-10'
SELECT SUM(budget) AS total_budget_after_date
FROM campaigns
WHERE start_date > '2025-05-10';

-- Example 3: Finding the average viewability rate
SELECT AVG(viewable) AS average_viewability
FROM impressions;

-- Example 4: Finding the campaign with the highest budget
SELECT campaign_name, MAX(budget) AS max_budget
FROM campaigns;