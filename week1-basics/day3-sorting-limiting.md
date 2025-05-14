## Day 3 – Sorting and Limiting Results

### Topics
- `ORDER BY` clause: sorting data by one or more columns (`ASC`, `DESC`)
- `LIMIT` clause: restricting the number of rows returned
- Combining `ORDER BY` and `LIMIT`

### Ad Tech Relevance
Identifying top or bottom performing campaigns, creatives, or users based on metrics. Reviewing the most recent events or a sample of the data for troubleshooting or initial exploration.

### Tools
- [SQLZoo](https://sqlzoo.net/selectorder.html) - Practice sorting and limiting.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-order-by/) - Learn about ordering results.

### Practice Dataset
Use the `impressions.csv` and `campaigns.csv` datasets.

### Examples

**1. Sorting impressions by `impression_time` in descending order (newest first):**

```sql
SELECT impression_id, campaign_id, impression_time
FROM impressions
ORDER BY impression_time DESC;
```

**2. Sorting campaigns by `budget` in descending order and limiting to the top 1:**

```sql
SELECT campaign_name, budget
FROM campaigns
ORDER BY budget DESC
LIMIT 1;
```

**3. Sorting impressions by `campaign_id` (ascending) and then by `impression_time` (descending):**

```sql
SELECT impression_id, campaign_id, impression_time
FROM impressions
ORDER BY campaign_id ASC, impression_time DESC;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Show all impressions, ordered by `user_id` in ascending order, and limit the results to the first 5.
2.  Retrieve the 2 oldest impressions.
3.  Show all impressions for `campaign_C`, ordered by `impression_time` in ascending order.

Using the `campaigns.csv` dataset:

4.  List all campaigns, ordered by their `budget` in ascending order.
5.  Show the `campaign_name` of the campaign with the lowest budget.