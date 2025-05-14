## Day 5 – Grouping Data

### Topics
- The `GROUP BY` clause: grouping rows based on column values
- Using `GROUP BY` with aggregate functions to analyze groups
- Grouping by multiple columns

### Ad Tech Relevance
Analyzing performance metrics segmented by different attributes, such as impressions and clicks per campaign and device combination, or average viewability per creative.

### Tools
- [SQLZoo](https://sqlzoo.net/grouping.html) - Practice grouping.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-group-by/) - Learn about grouping data.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Counting impressions per `campaign_id` and `device`:**

```sql
SELECT campaign_id, device, COUNT(*) AS num_impressions
FROM impressions
GROUP BY campaign_id, device;
```

**2. Calculating total clicks per `creative_id`:**

```sql
SELECT creative_id, SUM(clicked) AS total_clicks
FROM impressions
GROUP BY creative_id;
```

**3. Finding the average `viewable` rate per `user_id`:**

```sql
SELECT user_id, AVG(viewable) AS avg_viewability
FROM impressions
GROUP BY user_id;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Count the number of impressions for each `campaign_id` and `creative_id` combination.
2.  Find the number of unique users who saw ads on each `device`.
3.  Calculate the total number of clicks for each `campaign_id` and `device`.
4.  Find the `device` with the most impressions.
5.  Calculate the average click-through rate (clicks / impressions) for each `creative_id`.