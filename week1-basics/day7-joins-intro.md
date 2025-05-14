## Day 7 – Introduction to Joins

### Topics
- Understanding the need for combining data from multiple tables
- `INNER JOIN`: retrieving matching rows from two tables
- Specifying join conditions using `ON`
- Using table aliases for brevity

### Ad Tech Relevance
Combining impression data with campaign details to analyze performance by campaign name or budget. Linking user data (if available) to understand demographics or behavior related to ad interactions.

### Tools
- [SQLZoo](https://sqlzoo.net/joins.html) - Start practicing joins.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-joins/) - Learn the basics of joins.

### Practice Dataset
Use the `impressions.csv` and `campaigns.csv` datasets.

### Examples

**1. Joining `impressions` and `campaigns` on `campaign_id` and selecting relevant columns:**

```sql
SELECT i.impression_id, c.campaign_name, i.impression_time
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id;
```

**2. Joining and filtering based on a condition:**

```sql
SELECT i.user_id, c.campaign_name, i.device
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id
WHERE i.device = 'desktop';
```

**3. Joining and aggregating data:**

```sql
SELECT c.campaign_name, COUNT(i.impression_id) AS total_impressions
FROM impressions i
INNER JOIN campaigns c ON i.campaign_id = c.campaign_id
GROUP BY c.campaign_name;
```

### Practice Questions

Using the `impressions.csv` and `campaigns.csv` datasets:

1.  Join the two tables and select the `impression_id` and `campaign_budget` for impressions on `mobile` devices.
2.  Show the `user_id` and `campaign_name` for all clicked impressions.
3.  Join the tables and find the total number of impressions for each `campaign_name` with a budget greater than 1200.
4.  Show the `impression_id`, `creative_id`, and `campaign_name` for impressions that occurred after '2025-05-14 09:00:00'.
5.  Find the average budget of the campaigns that have had at least one impression.