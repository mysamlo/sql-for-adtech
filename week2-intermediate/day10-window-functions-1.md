## Day 10 – Window Functions (Part 1)

### Topics
- Introduction to window functions: performing calculations across rows
- `OVER()` clause: defining the window
- Basic window functions: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`

### Ad Tech Relevance
Ranking campaigns or creatives by performance metrics. Numbering events within a user session. Identifying the top-performing items within a specific category.

### Tools
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-window-functions/) - Learn about window functions.
- Explore examples of ranking functions in different SQL dialects.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Assigning a row number to each impression based on `impression_time`:**

```sql
SELECT impression_id, impression_time,
       ROW_NUMBER() OVER (ORDER BY impression_time) AS row_num
FROM impressions;
```

**2. Ranking campaigns by the total number of impressions:**

```sql
WITH CampaignImpressions AS (
    SELECT campaign_id, COUNT(*) AS total_impressions
    FROM impressions
    GROUP BY campaign_id
)
SELECT campaign_id, total_impressions,
       RANK() OVER (ORDER BY total_impressions DESC) AS impression_rank
FROM CampaignImpressions;
```

**3. Using `DENSE_RANK()` to rank campaigns by total clicks:**

```sql
WITH CampaignClicks AS (
    SELECT campaign_id, SUM(clicked) AS total_clicks
    FROM impressions
    GROUP BY campaign_id
)
SELECT campaign_id, total_clicks,
       DENSE_RANK() OVER (ORDER BY total_clicks DESC) AS click_rank
FROM CampaignClicks;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Assign a row number to each impression partitioned by `user_id`, ordered by `impression_time`.
2.  Rank the `creative_id`s by the total number of impressions they received.
3.  Use `DENSE_RANK()` to rank the `user_id`s based on the number of clicks they generated.
4.  For each `campaign_id`, rank the impressions by their `impression_time`.
5.  Rank the devices by the total number of impressions they served.