## Day 8 – More on Joins (LEFT JOIN)

### Topics
- Understanding `LEFT JOIN`: including all rows from the left table
- Identifying the "left" and "right" tables in a join
- Use cases for `LEFT JOIN` in ad tech analysis

### Ad Tech Relevance
Analyzing all campaigns, even those with no impressions yet. Identifying users who haven't interacted with any ads. Ensuring all items in a catalog are considered, even if they haven't been promoted.

### Tools
- [SQLZoo](https://sqlzoo.net/leftjoin.html) - Practice `LEFT JOIN`.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-left-join/) - Learn about `LEFT JOIN`.

### Practice Dataset
Use the `impressions.csv` and `campaigns.csv` datasets.

### Examples

**1. Showing all campaigns and their impression counts (including those with zero impressions):**

```sql
SELECT c.campaign_name, COUNT(i.impression_id) AS total_impressions
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;
```

**2. Showing all campaigns and the number of clicks associated with them:**

```sql
SELECT c.campaign_name, SUM(i.clicked) AS total_clicks
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
GROUP BY c.campaign_name;
```

**3. Finding campaigns that have no impressions:**

```sql
SELECT c.campaign_name
FROM campaigns c
LEFT JOIN impressions i ON c.campaign_id = i.campaign_id
WHERE i.impression_id IS NULL;
```

### Practice Questions

Using the `impressions.csv` and `campaigns.csv` datasets:

1.  Show all campaigns and the average viewability of their impressions (if any).
2.  List all campaigns and the number of unique users who saw their ads.
3.  Find all campaigns that have not had any clicks.
4.  Show all campaigns and the latest impression time associated with them (if any).
5.  List all campaigns and the number of mobile impressions they received.