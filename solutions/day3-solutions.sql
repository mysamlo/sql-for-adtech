-- Solutions for Day 3: Sorting and Limiting Results

-- Question 1: Show all impressions, ordered by user_id in ascending order, and limit the results to the first 5.
SELECT *
FROM impressions
ORDER BY user_id ASC
LIMIT 5;

-- Question 2: Retrieve the 2 oldest impressions.
SELECT *
FROM impressions
ORDER BY impression_time ASC
LIMIT 2;

-- Question 3: Show all impressions for campaign_C, ordered by impression_time in ascending order.
SELECT *
FROM impressions
WHERE campaign_id = 'campaign_C'
ORDER BY impression_time ASC;

-- Question 4: List all campaigns from the campaigns table, ordered by their budget in ascending order.
SELECT *
FROM campaigns
ORDER BY budget ASC;

-- Question 5: Show the campaign_name of the campaign with the lowest budget.
SELECT campaign_name
FROM campaigns
ORDER BY budget ASC
LIMIT 1;