# SQL Interview Prep!

Welcome to my SQL practice repository! This repository contains my solutions to SQL questions from various platforms such as LeetCode, HackerRank, etc. It also includes detailed notes on how to approach these problems.

BETWEEN IS INCLUSIVE OG RANGES weather observation station 13

<!-- TOC -->
- [Introduction](#introduction)
- [Functions](#functions)
  * [1. Modulus](#1-modulus)
    + [Finding even and odd items](#finding-even-and-odd-items)
  * [2. Regular Expression](#2-regular-expression)
- [Contributing](#contributing)
<!-- /TOC -->

## Introduction

This repository serves as a collection of my SQL solutions and notes to help myself and possibly others enhance their SQL skills. Whether you are preparing for a job interview or just want to practice SQL, you'll find a variety of problems and solutions here.

## Functions

### 1. Modulus

#### Finding even and odd items 

> Note: When asked to find even or odd number of something -  we should keep in mind that we have to use **MODULUS operator**. There are two ways to use it - 
> - Use `WHERE (ID % 2) = 0`
> - Use `WHERE MOD (ID,2) = 0`

    
   That **,2** indicates modulus 2 and the **0** is the remainder.


### 2. Regular Expression

> We can use `RLIKE` or `REGEXP` for regular expression.

```sql
SELECT column_name FROM table_name WHERE column_name RLIKE 'pattern';
```


#### [Example 1 ](Hackerrank/SQL-Basic/weather-observation-station-6.sql) : Finding names starting with vowels
- **'^[AEIOU]'**
    - ^ -> starting with
    - [AEIOU] -> Matches any character that is inside the square brackets/
#### [Example 2 ](Hackerrank/SQL-Basic/weather-observation-station-7.sql) : Finding names ending with vowels
- **'[AEIOU]$'**
    - $ -> ends with
#### [Example 3 ](Hackerrank/SQL-Basic/weather-observation-station-8.sql) : Finding names starting and ending with vowels
- **'^[AEIOU].*[AEIOU]$'**
    - ^[AEIOU] -> same as example 1
    - .* -> Matches any (zero or more) characters after first and  before last
    - [AEIOU]$ -> same as example 2
#### [Example 4 ](Hackerrank/SQL-Basic/weather-observation-station-9.sql) : Finding names that do not start with vowels
- **'^[^AEIOU]'**
    - ^ (the one at the beginning) -> same as example 1
    - [^AEIOU] -> Matches any character that is not one of the characters inside the square bracket
#### [Example 5 ](Hackerrank/SQL-Basic/weather-observation-station-10.sql) : Finding names that do not end with vowels
- **'[^AEIOU]$'**
    - $ (the one at the beginning) -> same as example 2
    - [^AEIOU] -> Matches any character that is not one of the characters inside the square bracket
#### [Example 6 ](Hackerrank/SQL-Basic/weather-observation-station-11.sql) : Finding names that do not start OR end with vowels
- **'^[^AEIOU]|[^AEIOU]$'**
    - ^[^AEIOU] -> same as example 4
    - | -> Logical OR operator
    - [^AEIOU]$ -> same as exmple 5
#### [Example 6 ](Hackerrank/SQL-Basic/weather-observation-station-12.sql) : Finding names that do not start AND end with vowels
- **'^[^AEIOU].*[^AEIOU]$'**
    - ^[^AEIOU] -> same as example 4
    - .* -> Matches any character in between.
    - [^AEIOU]$ -> same as exmple 5



## Approach

### 1. ORDER BY

 - ORDER BY last 3 characters by each name. Additionally, if two or more people have names ending with same character - secondary sort by ID
 ```sql
 SELECT
    NAME
FROM
    STUDENTS
ORDER BY 
    SUBSTRING(NAME,-3), ID;
 ```

 Here, -3 means counting from the end of the string. Here's another way to do it using RIGHT. RIGHT will extract characters from the right side.

 ```sql
 SELECT
    NAME
FROM
    STUDENTS
WHERE
    MARKS > 75
ORDER BY 
    RIGHT(NAME,3), ID;
 ```


## Contributing

If you'd like to contribute or add your own SQL solutions, feel free to fork this repository and submit a pull request. Please follow the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md) file.
