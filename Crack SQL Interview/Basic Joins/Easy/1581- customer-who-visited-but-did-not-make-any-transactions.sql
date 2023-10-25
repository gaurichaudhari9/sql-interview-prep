
--- Amazon, Apple, Adobe

SELECT
    v.customer_id, count(v.visit_id) AS count_no_trans
FROM
    VISITS v
LEFT JOIN
    Transactions t
ON 
    v.visit_id = t.visit_id
WHERE
    t.transaction_id IS NULL
GROUP BY v.customer_id;



/*

When we use a left join the two tables, whereever there is no purchase for a visit that transaction_id and amount would be NULL.
We can simply fetch the null records and then group by customer_id counting No of their visits with their visit_id

*/