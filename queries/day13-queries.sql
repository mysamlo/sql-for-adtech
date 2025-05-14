-- Day 13: Conditional Logic with CASE Statements

-- Example 1: Categorizing impressions as "Clicked" or "Not Clicked"
SELECT impression_id,
       CASE
           WHEN clicked = 1 THEN 'Clicked'
           ELSE 'Not Clicked'
       END AS click_status
FROM impressions;

-- Example 2: Categorizing devices
SELECT impression_id, device,
       CASE device
           WHEN 'mobile' THEN 'Mobile Device'
           WHEN 'desktop' THEN 'Desktop Device'
           ELSE 'Other'
       END AS device_category
FROM impressions;

-- Example 3: Counting impressions by click status
SELECT
    CASE
        WHEN clicked = 1 THEN 'Clicked'
        ELSE 'Not Clicked'
    END AS click_status,
    COUNT(*) AS num_impressions
FROM impressions
GROUP BY click_status;