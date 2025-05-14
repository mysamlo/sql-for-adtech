## Day 1 – Introduction to SQL & SELECT Statements

### Topics
- What is SQL?
- How databases work (briefly)
- `SELECT` statement: selecting columns
- `FROM` clause: specifying the table
- Selecting all columns using `*`

### Ad Tech Relevance
Understanding how ad campaign data, user interactions (clicks, views), and creative information are stored in database tables. The `SELECT` statement is the foundation for retrieving this data for analysis.

### Tools
- [SQLZoo](https://sqlzoo.net/) - Start with the basic SELECT queries.
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/sql-queries/) - Read the introduction to SQL queries.

### Practice Dataset
Use the `impressions.csv` and `campaigns.csv` files in the `datasets/` folder.

### Examples

**1. Selecting specific columns from the `impressions` table:**

```sql
SELECT impression_id, campaign_id, user_id, impression_time
FROM impressions;
```

**2. Selecting all columns from the `campaigns` table:**

```sql
SELECT *
FROM campaigns;
```

**3. Selecting specific columns from the `campaigns` table:**

```sql
SELECT campaign_name, budget
FROM campaigns;
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Select the `impression_id`, `user_id`, and `device` columns.
2.  Select all columns for impressions that occurred on a `mobile` device.
3.  Select the unique `campaign_id` values from the table (hint: use `DISTINCT`).

Using the `campaigns.csv` dataset:

4.  Select the `campaign_id` and `start_date`.
5.  Select all columns for campaigns with a budget greater than 1200.