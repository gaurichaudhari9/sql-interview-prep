<style>
    .note {
        background-color: #eaf7ff;
        border: 1px solid #007acc;
        padding: 15px;
        margin-bottom: 20px;
        color: #007acc;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .note strong {
        color: #004080;
    }

    .note::before {
        content: "📝";
        font-size: 30px;
        margin-right: 10px;
    }

    .note ul {
        margin-top: 10px;
        margin-bottom: 0;
        padding-left: 20px;
    }

    .note li {
        margin-bottom: 5px;
    }
</style>




# SQL Interview Prep!

Welcome to my SQL practice repository! This repository contains my solutions to SQL questions from various platforms such as LeetCode, HackerRank, etc. It also includes detailed notes on how to approach these problems.

## Table of Contents
- [Introduction](#introduction)
- [Formulae](#formulae)
    - [Find even/odd stuff](#find-evenodd-stuff)
- [Contributing](#contributing)


## Introduction

This repository serves as a collection of my SQL solutions and notes to help myself and possibly others enhance their SQL skills. Whether you are preparing for a job interview or just want to practice SQL, you'll find a variety of problems and solutions here.

## Formulae

### 1. Find even/odd stuff

<div class="note">
    <strong>Note:</strong> When asked to find even or odd number of something -  we should keep in mind that we have to use MODULUS operator. There are two ways to use it - 
    <ul> 
    <li> Use <code> WHERE (ID % 2) = 0 </code> </li>
    <li> Use <code> WHERE MOD (ID,2) = 0 </code> </li>
     </ul>
    
   That **,2** indicates modulus 2 and the **0** is the remainder.


</div>






## Contributing

If you'd like to contribute or add your own SQL solutions, feel free to fork this repository and submit a pull request. Please follow the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md) file.


<!-- ### LeetCode

- **Problem 1:** [Problem Name](leetcode/problem1.sql)
  - Solution explanation and approach go here.

- **Problem 2:** [Problem Name](leetcode/problem2.sql)
  - Solution explanation and approach go here.

### HackerRank

- **Problem A:** [Problem Name](hackerrank/problemA.sql)
  - Solution explanation and approach go here.

- **Problem B:** [Problem Name](hackerrank/problemB.sql)
  - Solution explanation and approach go here. -->

<!-- ## Approach and Strategies

Here are some general strategies and tips for solving SQL problems:

### 1. Understand the Problem

- Carefully read and understand the problem statement.
- Identify the input and output requirements.

### 2. Plan Your Approach

- Break down the problem into smaller, manageable tasks.
- Plan the structure of your SQL queries before writing code.

### 3. Test Your Queries

- Use sample data to test your queries and ensure they produce the expected results.
- Consider edge cases to ensure your solution is robust. -->