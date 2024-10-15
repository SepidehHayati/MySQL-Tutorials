#Data Analyst Bootcamp with Alex Freberg
  #Video 05 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Where Clause in MySQL | Beginner MySQL Series

-- The WHERE Clause is used to help filter our records or rows of data whereas the SELECT statement is used to help filter or select our actual columns.
-- So when using WHERE Clause we will only return the rows that fulfill a specific condition. 

  
-- Select all columns from employee_demographics where the first name is 'Tom'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Tom'
;

-- Select all columns from employee_salary where salary is greater than 50,000
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
;

-- Select all columns from employee_salary where salary is greater than or equal to 50,000
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

-- Select all columns from employee_salary where salary is less than 50,000
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary < 50000
;

-- Select all columns from employee_salary where salary is less than or equal to 50,000
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

-- Select all female employees from employee_demographics
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
;

-- Select all non-female employees from employee_demographics
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;

-- Select all employees born on '1987-03-04'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date = '1987-03-04'
;

-- Select all employees born after '1987-03-04'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1987-03-04'
;

-- Select all employees born on or after '1987-03-04'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date >= '1987-03-04'
;

-- Select all employees born on or before '1987-03-04'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date <= '1987-03-04'
;

-- AND OR NOT-- logical operators
-- Using AND: Select all male employees born after '1985-01-01'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

-- Using OR: Select all employees born after '1985-01-01' or who are male
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

-- Using a combination of AND and OR: Select employees whose name is 'leslie' and age is 44, or those whose age is less than 40
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'leslie' and age = 44) OR age < 40
;

-- LIKE Statement: Select all employees with first name exactly 'j
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'jerry'
;

-- No results when partial name 'jerr' is used
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'jerr'
;


-- Like Statement % and _
-- Using LIKE with wildcard: Select all employees whose first name starts with 'jer'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'jer%'
;

-- Using LIKE with wildcard: Select all employees whose first name contains 'er'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;

-- Using LIKE with wildcard: Select all employees whose first name contains the letter 'a'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%a%'
;

-- Using LIKE with wildcard: Select all employees whose first name starts with 'a'
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

-- Using LIKE with wildcard: Select all employees whose first name starts with 'a' and is exactly 4 characters long
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;

-- Using LIKE with wildcard: Select all employees whose first name starts with 'a' and is exactly 3 characters long
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;

-- Using LIKE with wildcard: Select all employees whose first name starts with 'a' and is at least 4 characters long
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;
