#Data Analyst Bootcamp with Alex Freberg
  #Video 04 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: SELECT Statement
  
-- 1. Selecting all columns from the employee_demographics table:
-- The SELECT * statement is used to retrieve all columns from a table.
-- In this case, we are selecting all data from the employee_demographics table.
SELECT *
FROM employee_demographics;

# ---------------------------------------------------------------------

-- 2. Selecting specific columns (first_name, last_name, age) from employee_demographics:
-- Instead of selecting all columns, we can specify the columns we want.
-- Here, we are selecting the first name, last name, and age columns from the employee_demographics table.
-- We are also referencing the table with its full name (including schema parks_and_recreation).
select 
first_name, 
last_name, 
age
from parks_and_recreation.employee_demographics;

# ---------------------------------------------------------------------

-- 3. Performing calculations in a SELECT statement:
-- In addition to retrieving data, you can also perform calculations within a SELECT statement.
-- Here, we are selecting first name, last name, age, and a new column that shows the age + 10 (calculation done within the query).
SELECT first_name, last_name, age, age + 10
FROM parks_and_recreation.employee_demographics;

-- Tip: Explanation of the order of operations (PEMDAS) in SQL:
-- SQL follows the order of operations (PEMDAS) for calculations:
-- Parentheses (), Exponents, Multiplication, Division, Addition, Subtraction.
-- When performing calculations in SQL, this order will be followed to ensure accurate results.
-- P (), E: Exponent, M: Multiplication, D: Devision, A: Addition S: Subtraction 

# ---------------------------------------------------------------------

-- 4. Using the DISTINCT keyword:
-- The DISTINCT keyword is used to return only unique values.
-- In this query, we are selecting the distinct combinations of gender and first name, ensuring no duplicate rows.
-- This helps to avoid repetition in the results when only unique data is needed.

SELECT distinct gender, first_name
FROM parks_and_recreation.employee_demographics;
