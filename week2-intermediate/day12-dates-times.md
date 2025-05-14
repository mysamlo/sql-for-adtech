## Day 12 – Working with Dates and Times

### Topics
- Common date and time functions (e.g., `DATE()`, `TIME()`, `EXTRACT()`, `DATE_PART()`)
- Formatting dates and times
- Date and time arithmetic

### Ad Tech Relevance
Analyzing trends over specific time periods (hourly, daily, weekly). Segmenting data by time of day or day of the week. Calculating time differences between events.

### Tools
- Refer to the documentation of your specific SQL database system for available date and time functions (e.g., PostgreSQL, MySQL, SQL Server, SQLite).
- Search for examples of date and time manipulation in SQL for analytics.

### Practice Dataset
Use the `impressions.csv` dataset.

### Examples

**1. Extracting the date part from `impression_time`:**

```sql
SELECT impression_id, DATE(impression_time) AS impression_date
FROM impressions;
```

**2. Extracting the hour from `impression_time`:**

```sql
SELECT impression_id, STRFTIME('%H', impression_time) AS impression_hour
FROM impressions; -- SQLite example, syntax may vary
```

**3. Counting impressions per day:**

```sql
SELECT DATE(impression_time) AS impression_date, COUNT(*) AS num_impressions
FROM impressions
GROUP BY DATE(impression_time)
ORDER BY impression_date;
```

**4. Finding impressions that occurred in a specific month:**

```sql
SELECT impression_id, impression_time
FROM impressions
WHERE STRFTIME('%Y-%m', impression_time) = '2025-05'; -- SQLite example
```

### Practice Questions

Using the `impressions.csv` dataset:

1.  Count the number of impressions for each hour of the day.
2.  Find the number of impressions that occurred on a Monday (you'll need to extract the day of the week).
3.  Calculate the time difference in seconds between consecutive impressions for each `user_id`.
4.  Show the impressions that occurred in the first half of May 2025.
5.  Group impressions by the day of the week and count the number of clicks for each day.