--- Amazon

WITH cte AS 
    (SELECT
        *
    FROM
        Students
    CROSS JOIN
        Subjects),

cte2 AS ( 
    SELECT
        student_id, subject_name, COUNT(subject_name) as attended_exams
    FROM
        Examinations
    GROUP BY student_id, subject_name
)


SELECT
    cte.student_id, cte.student_name, cte.subject_name, IFNULL(cte2.attended_exams,0) AS attended_exams
FROM
    cte
LEFT JOIN
    cte2
ON 
    cte.student_id = cte2.student_id AND
    cte.subject_name = cte2.subject_name
ORDER BY student_id, subject_name;