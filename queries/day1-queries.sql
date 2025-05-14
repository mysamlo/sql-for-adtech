-- Day 1: Introduction to SQL & SELECT Statements

-- Example 1: Selecting specific columns from the impressions table
SELECT impression_id, campaign_id, user_id, impression_time
FROM impressions;

-- Example 2: Selecting all columns from the campaigns table
SELECT *
FROM campaigns;

-- Example 3: Selecting specific columns from the campaigns table
SELECT campaign_name, budget
FROM campaigns;