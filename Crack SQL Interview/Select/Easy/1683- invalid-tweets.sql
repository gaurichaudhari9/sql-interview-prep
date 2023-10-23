--- Amazon

--- This is query is slower. Beats only 10% of users
SELECT
    tweet_id
FROM
    Tweets
WHERE LENGTH(content) > 15;

--- This beats 55% of users
SELECT
    tweet_id
FROM
    Tweets
WHERE CHAR_LENGTH(content) > 15;

