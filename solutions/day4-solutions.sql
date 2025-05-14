-- Solutions for Day 4: Basic Aggregation Functions

-- Question 1: Calculate the total number of impressions for campaign_A.
SELECT COUNT(*) AS total_impressions_campaign_A
FROM impressions
WHERE campaign_id = 'campaign_A';

-- Question 2: Find the number of unique creative_id values in the impressions table.
SELECT COUNT(DISTINCT creative_id) AS unique_creative_ids
FROM impressions;

-- Question 3: Calculate the average clicked value (click rate) across all impressions.
SELECT AVG(clicked) AS average_click_rate
FROM impressions;

-- Question 4: Find the total budget of all campaigns that started in '2025-05' in the campaigns table.
SELECT SUM(budget) AS total_budget_may_2025
FROM campaigns
WHERE strftime('%Y-%m', start_date) = '2025-05'; -- Using strftime for SQLite

-- Question 5: Determine the earliest start_date among all campaigns.
SELECT MIN(start_date) AS earliest_start_date
FROM campaigns;