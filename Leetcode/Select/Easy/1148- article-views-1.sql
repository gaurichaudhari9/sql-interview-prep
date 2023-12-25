--- Amazon, Yahoo, Google

--- Initial Solution - It is slower. It beats only 13.12% of MYSQL users but 83.33% of PostgreSQL users

SELECT
    DISTINCT author_id AS id
FROM
    Views
WHERE
    viewer_id = author_id
ORDER BY id;