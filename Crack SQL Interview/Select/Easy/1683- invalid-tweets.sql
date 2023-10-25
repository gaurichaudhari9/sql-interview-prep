--- Amazon

--- This is query is slower. Beats only 10% of users
SELECT
    tweet_id
FROM
    Tweets
WHERE LENGTH(content) > 15;

--- This beats 94.17% of users
SELECT
    tweet_id
FROM
    Tweets
WHERE CHAR_LENGTH(content) > 15;


--- SEE readme for explanation


