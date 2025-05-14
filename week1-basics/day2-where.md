## Day 2 – Filtering Data with the WHERE Clause

### Topics
- Introduction to the `WHERE` clause
- Comparison operators: `=`, `>`, `<`, `>=`, `<=`, `!=`
- Filtering based on numeric, text, and date values
- Logical operators: `AND`, `OR`, `NOT`

### Ad Tech Relevance
Isolating specific subsets of data for focused analysis, such as impressions for a particular campaign, clicks from a certain user segment, or events within a specific time frame. Combining multiple criteria for more refined filtering.

### Tools
- [SQLZoo](https://sqlzoo.net/selectwhere.html) - Practice `WHERE` clause exercises.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-where/) - Learn about filtering data.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Filtering impressions for a specific `campaign_id`:**

```sql
SELECT impression_id, user_id, impression_time
FROM impressions
WHERE campaign_id = 'campaign_A';
```

**2. Filtering for clicked impressions:**

```sql
SELECT impression_id, campaign_id, impression_time
FROM impressions
WHERE clicked = 1;
```

**3. Filtering for impressions on a specific device:**

```sql
SELECT impression_id, user_id, device
FROM impressions
WHERE device = 'desktop';
```

**4. Filtering impressions after a specific date AND on a mobile device:**

```sql
SELECT impression_id, campaign_id, impression_time, device
FROM impressions
WHERE impression_time > '2025-05-14 09:00:00' AND device = 'mobile';
```

**5. Filtering for impressions that were NOT viewable:**

```sql
SELECT impression_id, campaign_id, viewable
FROM impressions
WHERE NOT viewable = 1;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Select all impressions with a `user_id` of `user_3` and were `clicked`.
2.  Find all impressions that were `viewable` and on a `desktop` device.
3.  Show all impressions that occurred before '2025-05-14 09:15:00' OR were not `clicked`.
4.  Retrieve all impressions for `campaign_B` that were not on a `mobile` device.
5.  Select the `impression_id` and `creative_id` for impressions that were `clicked` and `viewable`.