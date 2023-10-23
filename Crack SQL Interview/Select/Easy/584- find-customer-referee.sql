--- Apple, Adobe, Google

SELECT
    name
FROM
    Customer
WHERE
    referee_id !=2 OR
    referee_id IS NULL;


-- Key here was to also check for null values due to below explanation

"""
Intuition

Some people come out the following solution by intuition.

SELECT name FROM customer WHERE referee_Id <> 2;
However, this query will only return one result:Zack although there are 4 customers not referred by Jane (including Jane herself). All the customers who were referred by nobody at all (NULL value in the referee_id column) don’t show up. But why?

Algorithm

MySQL uses three-valued logic -- TRUE, FALSE and UNKNOWN. Anything compared to NULL evaluates to the third value: UNKNOWN. That “anything” includes NULL itself! That’s why MySQL provides the IS NULL and IS NOT NULL operators to specifically check for NULL.

Thus, one more condition 'referee_id IS NULL' should be added to the WHERE clause as below.



"""

-- MYSQL Solution: But this slower than above

SELECT 
    name
FROM
    Customer
WHERE
    COALESCE (referee_id,0) != 2;

'''

WHERE COALESCE(referee_id, 0) != 2: This is the conditional part of the query.
COALESCE(referee_id, 0) is used to handle the case where the "referee_id" column may contain NULL values. If "referee_id" is NULL, it is replaced with 0.
!= 2 checks that the resulting value from COALESCE(referee_id, 0) is not equal to 2.
'''