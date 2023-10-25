--- Bloomberg, Adobe, Microsoft

--- Solution 1

SELECT
    a.machine_id, ROUND(AVG(b.timestamp-a.timestamp),3) as processing_time
FROM
    Activity a, Activity b
WHERE
    a.machine_id = b.machine_id AND
    a.process_id = b.process_id AND
    a.activity_type = 'start' AND
    b.activity_type = 'end'
GROUP BY 1;

--- Approach 2: Using Case when

SELECT
    machine_id,
    ROUND(SUM(CASE WHEN activity_type='start' THEN timestamp*-1 ELSE timestamp END)/(SELECT COUNT(DISTINCT process_id)), 3) as processing_time
FROM
    Activity
GROUP BY
    machine_id;