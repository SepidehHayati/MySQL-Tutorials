#Data Analyst Bootcamp with Alex Freberg
  #Video 10 on YouTube Channel
  #Intermediate MySQL Series
  #Lesson: UNIONS


#Explanation
-- 1. Using UNION to combine data from two SELECT statements:
-- The UNION operation combines the results of two SELECT statements into a single result set.
-- UNION is used to append rows from one table to another, ensuring no duplicates by default (UNION DISTINCT).
-- In this case, we are selecting all columns from `employee_demographics` twice to demonstrate how UNION works.

SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_demographics;

# ---------------------------------------------------------------------

-- 2. Example of a bad UNION:
-- This UNION will fail because the SELECT statements do not return the same number of columns.
-- The first query selects `age` and `gender`, while the second query selects `first_name` and `last_name`, causing a mismatch.
-- For a UNION to work, both SELECT queries must have the same number of columns with compatible data types.
 
SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

# ---------------------------------------------------------------------

-- 3. A correct UNION example:
-- In this case, we are selecting `first_name` and `last_name` from two tables, `employee_demographics` and `employee_salary`.
-- Since both SELECT statements have the same number of columns (two) and compatible data types (strings), this UNION will work.

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

# ---------------------------------------------------------------------

-- 4. Using UNION DISTINCT (default behavior):
-- By default, UNION removes any duplicate rows in the combined result set (this is equivalent to UNION DISTINCT).
-- Here, we're selecting `first_name` and `last_name` from both tables and eliminating any duplicates automatically.

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;

# ---------------------------------------------------------------------


-- 5. Using UNION ALL to include duplicates:
-- If you want to include all rows from both queries, even if they are duplicates, you can use UNION ALL.
-- This will combine the results of both SELECT queries without removing duplicates.

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

# ---------------------------------------------------------------------

-- 6. Labeling specific data for identification:
-- This query demonstrates how to label data for easier identification in the results.
-- We select `first_name`, `last_name`, and a custom label ('old') for employees over 40.
-- This can help us identify specific groups of employees, such as those older than 40.

SELECT first_name, last_name, 'old' 
FROM employee_demographics
WHERE age > 40;

# ---------------------------------------------------------------------

-- 7. Combining labeled results with UNION:
-- In this example, we use UNION to label employees in different categories:
-- - 'old Man' for male employees over 40
-- - 'old Lady' for female employees over 40
-- - 'Highly paid' for employees with a salary greater than 70,000.
-- The results from all three SELECT queries are combined into one result set using UNION.

SELECT first_name, last_name, 'old Man' AS lable
FROM employee_demographics
WHERE age > 40 and gender = 'Male'
UNION
SELECT first_name, last_name, 'old Lady' AS lable
FROM employee_demographics
WHERE age > 40 and gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid' AS lable
FROM employee_salary
WHERE salary > 70000 
;


