## Day 6 – Filtering Groups with HAVING

### Topics
- The `HAVING` clause: filtering groups based on aggregated results
- Using `HAVING` with `GROUP BY`
- Comparing `WHERE` and `HAVING`

### Ad Tech Relevance
Identifying high-performing campaigns (e.g., those with a high number of clicks) or underperforming creatives (e.g., those with a low viewability rate) after aggregating the data.

### Tools
- [SQLZoo](https://sqlzoo.net/groupinghaving.html) - Practice using `HAVING`.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-having/) - Learn about filtering groups.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Finding `campaign_id`s with more than 1 total click:**

```sql
SELECT campaign_id, SUM(clicked) AS total_clicks
FROM impressions
GROUP BY campaign_id
HAVING SUM(clicked) > 1;
```

**2. Finding devices with an average viewability greater than 0.6:**

```sql
SELECT device, AVG(viewable) AS avg_viewability
FROM impressions
GROUP BY device
HAVING AVG(viewable) > 0.6;
```

**3. Finding `creative_id`s with more than 2 impressions:**

```sql
SELECT creative_id, COUNT(*) AS num_impressions
FROM impressions
GROUP BY creative_id
HAVING COUNT(*) > 2;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Find the `campaign_id`s that have at least 2 unique users.
2.  Show the `device` types that have an average click rate greater than 0.2.
3.  Identify the `creative_id`s that have more than 1 clicked impression.
4.  Find the `campaign_id`s that have a total of more than 3 viewable impressions.
5.  Show the `user_id`s that have more than one impression on a `mobile` device.