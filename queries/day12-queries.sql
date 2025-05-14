-- Day 12: Working with Dates and Times

-- Example 1: Extracting the date part from impression_time
SELECT impression_id, DATE(impression_time) AS impression_date
FROM impressions;

-- Example 2: Extracting the hour from impression_time (SQLite example)
SELECT impression_id, STRFTIME('%H', impression_time) AS impression_hour
FROM impressions;

-- Example 3: Counting impressions per day
SELECT DATE(impression_time) AS impression_date, COUNT(*) AS num_impressions
FROM impressions
GROUP BY DATE(impression_time)
ORDER BY impression_date;

-- Example 4: Finding impressions that occurred in a specific month (SQLite example)
SELECT impression_id, impression_time
FROM impressions
WHERE STRFTIME('%Y-%m', impression_time) = '2025-05';