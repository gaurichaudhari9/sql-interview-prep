--- Amazon, Google, Yahoo

SELECT 
    w1.id
FROM
    Weather w
INNER JOIN
    Weather w1
ON
    DATEDIFF(w1.recordDate,w.recordDate) = 1
WHERE
    w.temperature < w1.temperature;

/*

w --> previous date instance
w1 --> current date instance

DATEDIFF(current date,previous date) = 1
DATEDIFF(previous date,current date) = -1

*/