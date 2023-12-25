# SQL Interview Prep!

Welcome to my SQL practice repository! This repository contains my solutions to SQL questions from various platforms such as LeetCode, HackerRank, etc. It also includes detailed notes on how to approach these problems.


<!-- TOC -->
## Table of Contents
- [Introduction](#introduction)
- [Functions](#functions)
    - [Modulus](#modulus)
        - [Finding even and odd items](#finding-even-and-odd-items)
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

- **'^[AEIOU]'**
    - ^ -> starting with
    - [AEIOU] -> Matches any character that is inside the square brackets/

#### [Example 1 ](Hackerrank/SQL-Basic/weather-observation-station-6.sql)


## Contributing

If you'd like to contribute or add your own SQL solutions, feel free to fork this repository and submit a pull request. Please follow the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md) file.
