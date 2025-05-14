# Practice Questions by Day

## Week 1: SQL Fundamentals

### Day 1: Introduction to SQL & SELECT Statements
1.  Select the `impression_id`, `user_id`, and `device` columns from the `impressions` table.
2.  Select all columns for impressions that occurred on a `mobile` device.
3.  Select the unique `campaign_id` values from the `impressions` table.
4.  Select the `campaign_id` and `start_date` from the `campaigns` table.
5.  Select all columns for campaigns with a budget greater than 1200 from the `campaigns` table.

### Day 2: Filtering Data with the WHERE Clause
1.  Select all impressions with a `user_id` of `user_3` and were `clicked`.
2.  Find all impressions that were `viewable` and on a `desktop` device.
3.  Show all impressions that occurred before '2025-05-14 09:15:00' OR were not `clicked`.
4.  Retrieve all impressions for `campaign_B` that were not on a `mobile` device.
5.  Select the `impression_id` and `creative_id` for impressions that were `clicked` and `viewable`.

### Day 3: Sorting and Limiting Results
1.  Show all impressions, ordered by `user_id` in ascending order, and limit the results to the first 5.
2.  Retrieve the 2 oldest impressions.
3.  Show all impressions for `campaign_C`, ordered by `impression_time` in ascending order.
4.  List all campaigns from the `campaigns` table, ordered by their `budget` in ascending order.
5.  Show the `campaign_name` of the campaign with the lowest budget.

### Day 4: Basic Aggregation Functions
1.  Calculate the total number of impressions for `campaign_A`.
2.  Find the number of unique `creative_id` values in the `impressions` table.
3.  Calculate the average `clicked` value (click rate) across all impressions.
4.  Find the total budget of all campaigns that started in '2025-05' in the `campaigns` table.
5.  Determine the earliest `start_date` among all campaigns.

### Day 5: Grouping Data
1.  Count the number of impressions for each `campaign_id` and `creative_id` combination.
2.  Find the number of unique users who saw ads on each `device`.
3.  Calculate the total number of clicks for each `campaign_id` and `device`.
4.  Find the `device` with the most impressions.
5.  Calculate the average click-through rate (clicks / impressions) for each `creative_id`.

### Day 6: Filtering Groups with HAVING
1.  Find the `campaign_id`s that have at least 2 unique users.
2.  Show the `device` types that have an average click rate greater than 0.2.
3.  Identify the `creative_id`s that have more than 1 clicked impression.
4.  Find the `campaign_id`s that have a total of more than 3 viewable impressions.
5.  Show the `user_id`s that have more than one impression on a `mobile` device.

### Day 7: Introduction to Joins
1.  Join the `impressions` and `campaigns` tables and select the `impression_id` and `campaign_budget` for impressions on `mobile` devices.
2.  Show the `user_id` and `campaign_name` for all clicked impressions.
3.  Join the tables and find the total number of impressions for each `campaign_name` with a budget greater than 1200.
4.  Show the `impression_id`, `creative_id`, and `campaign_name` for impressions that occurred after '2025-05-14 09:00:00'.
5.  Find the average budget of the campaigns that have had at least one impression.

## Week 2: Intermediate SQL & Ad Tech Applications

### Day 8: More on Joins (LEFT JOIN)
1.  Show all campaigns and the average viewability of their impressions (if any).
2.  List all campaigns and the number of unique users who saw their ads.
3.  Find all campaigns that have not had any clicks.
4.  Show all campaigns and the latest impression time associated with them (if any).
5.  List all campaigns and the number of mobile impressions they received.

### Day 9: Common Table Expressions (CTEs)
1.  Create a CTE to find the total impressions per `campaign_id`, and then select the campaign with the highest total impressions from the CTE.
2.  Use a CTE to calculate the click-through rate (clicks / impressions) for each `campaign_id`.
3.  Create a CTE to find the number of impressions per `device`, and then select only the devices with more than 2 impressions from the CTE.
4.  Use two CTEs: one to find the total impressions per user, and another to find the total clicks per user. Then join these CTEs on `user_id`.
5.  Create a CTE to calculate the number of impressions for each `creative_id`, and then find the average number of impressions across all creatives from the CTE.

### Day 10: Window Functions (Part 1)
1.  Assign a row number to each impression partitioned by `user_id`, ordered by `impression_time`.
2.  Rank the `creative_id`s by the total number of impressions they received.
3.  Use `DENSE_RANK()` to rank the `user_id`s based on the number of clicks they generated.
4.  For each `campaign_id`, rank the impressions by their `impression_time`.
5.  Rank the devices by the total number of impressions they served.

### Day 11: Window Functions (Part 2)
1.  For each `campaign_id`, find the `creative_id` of the next impression ordered by `impression_time`.
2.  Calculate the running total of clicks across all impressions ordered by `impression_time`.
3.  Find the difference in `impression_time` in seconds between the current and the previous impression for each `user_id`.
4.  Calculate a 3-day moving average of the number of impressions.
5.  For each `campaign_id`, find the `user_id` who had the first impression.

### Day 12: Working with Dates and Times
1.  Count the number of impressions for each hour of the day.
2.  Find the number of impressions that occurred on a Monday.
3.  Calculate the time difference in hours between the first and last impression for each `user_id`.
4.  Show the impressions that occurred in the first half of May 2025.
5.  Group impressions by the day of the week and calculate the average click rate for each day.

### Day 13: Conditional Logic with CASE Statements
1.  Categorize viewability as "Viewed" and "Not Viewed".
2.  Create a new column that categorizes `campaign_id` 'campaign_A' and 'campaign_B' as "Priority Campaign" and all others as "Standard Campaign".
3.  Count the number of impressions for mobile and desktop devices.
4.  Create a column that flags impressions as "Engaged" if they were clicked or viewed, and "Not Engaged" otherwise.
5.  Order the impressions so that impressions on 'desktop' appear before 'mobile'.

### Day 14: Putting It All Together - Mini Project
Refer to the `week2-intermediate/day14-mini-project.md` file for the project description and tasks.