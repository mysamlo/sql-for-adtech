## Day 4 – Basic Aggregation Functions

### Topics
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- Using aliases for aggregated columns
- Applying aggregation to filtered data

### Ad Tech Relevance
Calculating key performance indicators (KPIs) like total impressions per campaign, total clicks across all devices, average viewability rate, and identifying the start and end times of campaigns.

### Tools
- [SQLZoo](https://sqlzoo.net/aggregate.html) - Practice aggregate functions.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-aggregate-functions/) - Learn about aggregation.

### Practice Dataset
Use the `impressions.csv` and `campaigns.csv` datasets.

### Examples

**1. Counting the total number of clicked impressions:**

```sql
SELECT COUNT(*) AS total_clicks
FROM impressions
WHERE clicked = 1;
```

**2. Calculating the sum of the `budget` for campaigns starting after '2025-05-10':**

```sql
SELECT SUM(budget) AS total_budget_after_date
FROM campaigns
WHERE start_date > '2025-05-10';
```

**3. Finding the average viewability rate:**

```sql
SELECT AVG(viewable) AS average_viewability
FROM impressions;
```

**4. Finding the campaign with the highest budget:**

```sql
SELECT campaign_name, MAX(budget) AS max_budget
FROM campaigns;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Calculate the total number of impressions for `campaign_A`.
2.  Find the number of unique `creative_id` values.
3.  Calculate the average `clicked` value (click rate) across all impressions.

Using the `campaigns.csv` dataset:

4.  Find the total budget of all campaigns that started in '2025-05'.
5.  Determine the earliest `start_date` among all campaigns.