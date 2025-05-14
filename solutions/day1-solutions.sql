-- Solutions for Day 1: Introduction to SQL & SELECT Statements

-- Question 1: Select the impression_id, user_id, and device columns.
SELECT impression_id, user_id, device
FROM impressions;

-- Question 2: Select all columns for impressions that occurred on a mobile device.
SELECT *
FROM impressions
WHERE device = 'mobile';

-- Question 3: Select the unique campaign_id values from the table.
SELECT DISTINCT campaign_id
FROM impressions;

-- Question 4: Select the campaign_id and start_date.
SELECT campaign_id, start_date
FROM campaigns;

-- Question 5: Select all columns for campaigns with a budget greater than 1200.
SELECT *
FROM campaigns
WHERE budget > 1200;