## Day 9 – Common Table Expressions (CTEs)

### Topics
- Understanding CTEs (`WITH` clause)
- Defining and using multiple CTEs in a single query
- Improving query readability and organization with CTEs

### Ad Tech Relevance
Breaking down complex analyses into logical steps, such as calculating daily performance metrics before aggregating them over a longer period. Creating reusable temporary result sets for complex joins or calculations.

### Tools
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-ctes/) - Learn about Common Table Expressions.
- Explore examples of CTEs on platforms like Stack Overflow for SQL.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Calculating daily impressions using a CTE:**

```sql
WITH DailyImpressions AS (
    SELECT DATE(impression_time) AS impression_date, COUNT(*) AS num_impressions
    FROM impressions
    GROUP BY DATE(impression_time)
)
SELECT impression_date, num_impressions
FROM DailyImpressions
ORDER BY impression_date;
```

**2. Using two CTEs to calculate daily impressions and daily clicks, then joining them:**

```sql
WITH DailyImpressions AS (
    SELECT DATE(impression_time) AS dt, COUNT(*) AS impressions
    FROM impressions
    GROUP BY DATE(impression_time)
),
DailyClicks AS (
    SELECT DATE(impression_time) AS dt, SUM(clicked) AS clicks
    FROM impressions
    GROUP BY DATE(impression_time)
)
SELECT di.dt, di.impressions, dc.clicks
FROM DailyImpressions di
LEFT JOIN DailyClicks dc ON di.dt = dc.dt
ORDER BY di.dt;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Create a CTE to find the total impressions per `campaign_id`, and then select the campaign with the highest total impressions from the CTE.
2.  Use a CTE to calculate the click-through rate (clicks / impressions) for each `campaign_id`.
3.  Create a CTE to find the number of impressions per `device`, and then select only the devices with more than 2 impressions from the CTE.
4.  Use two CTEs: one to find the total impressions per user, and another to find the total clicks per user. Then join these CTEs on `user_id`.
5.  Create a CTE to calculate the number of impressions for each `creative_id`, and then find the average number of impressions across all creatives from the CTE.