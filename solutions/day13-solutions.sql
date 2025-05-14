-- Solutions for Day 13: Conditional Logic with CASE Statements

-- Question 1: Categorize viewability as "Viewed" and "Not Viewed".
SELECT impression_id,
       CASE
           WHEN viewable = 1 THEN 'Viewed'
           ELSE 'Not Viewed'
       END AS view_status
FROM impressions;

-- Question 2: Create a new column that categorizes campaign_id 'campaign_A' and 'campaign_B' as "Priority Campaign" and all others as "Standard Campaign".
SELECT impression_id, campaign_id,
       CASE
           WHEN campaign_id IN ('campaign_A', 'campaign_B') THEN 'Priority Campaign'
           ELSE 'Standard Campaign'
       END AS campaign_category
FROM impressions;

-- Question 3: Count the number of impressions for mobile and desktop devices.
SELECT
    CASE device
        WHEN 'mobile' THEN 'Mobile'
        WHEN 'desktop' THEN 'Desktop'
        ELSE 'Other'
    END AS device_type,
    COUNT(*) AS num_impressions
FROM impressions
GROUP BY device_type;

-- Question 4: Create a column that flags impressions as "Engaged" if they were clicked or viewed, and "Not Engaged" otherwise.
SELECT impression_id,
       CASE
           WHEN clicked = 1 OR viewable = 1 THEN 'Engaged'
           ELSE 'Not Engaged'
       END AS engagement_status
FROM impressions;

-- Question 5: Order the impressions so that impressions on 'desktop' appear before 'mobile'.
SELECT *
FROM impressions
ORDER BY
    CASE device
        WHEN 'desktop' THEN 1
        WHEN 'mobile' THEN 2
        ELSE 3
    END;