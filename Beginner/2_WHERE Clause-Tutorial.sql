#Data Analyst Bootcamp with Alex Freberg
  #Video 05 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: WHERE Clause

# The WHERE Clause is used to help filter our records or rows of data 
# whereas the SELECT statement is used to help filter or select our actual columns.
# So when we are using WHERE Clause we are only going to return the rows that fulfill a specific condition. 

-- 1. Using the WHERE clause to filter records by first_name:
-- This query selects all columns from the employee_demographics table
-- but only returns rows where the first name is 'Tom'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Tom'
;

# ---------------------------------------------------------------------

-- 2. Filtering records based on a salary greater than 50,000:
-- This query selects all columns from employee_salary where the salary is above 50,000.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
;

# ---------------------------------------------------------------------

-- 3. Filtering records based on a salary greater than or equal to 50,000:
-- This query is similar to the previous one but includes salaries equal to 50,000.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

# ---------------------------------------------------------------------

-- 4. Filtering records based on a salary less than 50,000:
-- This query selects employees with a salary less than 50,000.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary < 50000
;

# ---------------------------------------------------------------------

-- 5. Filtering records based on a salary less than or equal to 50,000:
-- This query includes employees who earn 50,000 or less.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

# ---------------------------------------------------------------------

-- 6. Filtering records based on gender being 'Female':
-- This query selects all female employees from the employee_demographics table.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
;

# ---------------------------------------------------------------------

-- 7. Filtering records for all non-female employees:
-- The '!=' operator selects rows where gender is not 'Female'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;

# ---------------------------------------------------------------------

-- 8. Filtering records based on birth_date being '1987-03-04':
-- This query selects employees born on March 4, 1987.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date = '1987-03-04'
;

# ---------------------------------------------------------------------

-- 9. Filtering records where birth_date is greater than '1987-03-04':
-- This query selects employees born after March 4, 1987.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1987-03-04'
;

# ---------------------------------------------------------------------

-- 10. Filtering records where birth_date is greater than or equal to '1987-03-04':
-- This includes employees born on or after March 4, 1987.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date >= '1987-03-04'
;

# ---------------------------------------------------------------------

-- 11. Filtering records where birth_date is less than or equal to '1987-03-04':
-- This query selects employees born on or before March 4, 1987.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date <= '1987-03-04'
;

# ---------------------------------------------------------------------

-- 12. Combining multiple conditions using AND:
-- This query selects male employees born after January 1, 1985.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

# ---------------------------------------------------------------------

-- 13. Combining multiple conditions using OR:
-- This query selects employees born after January 1, 1985 or all male employees.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

# ---------------------------------------------------------------------

-- 14. Using parentheses to control logic in complex conditions:
-- This query selects employees named 'Leslie' who are 44 years old, 
-- or any employees under the age of 40.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age < 40
;

# ---------------------------------------------------------------------

-- 15. Using the LIKE operator for exact matches:
-- This query selects employees whose first name is exactly 'Jerry'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'jerry'
;

# ---------------------------------------------------------------------

-- 16. Using LIKE with wildcards:
-- If the first name is not exactly 'Jerry', the result will be empty.
-- We use the LIKE operator with % to search for any name starting with 'jer'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'jer%'
;

# ---------------------------------------------------------------------

-- 17. Using LIKE with wildcards to find names containing 'er':
-- The % wildcard on both sides looks for names containing 'er' anywhere.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;

# ---------------------------------------------------------------------

-- 18. Using LIKE to find names containing the letter 'a':
-- This query selects all employees whose first name contains the letter 'a'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%a%'
;

# ---------------------------------------------------------------------

-- 19. Using LIKE to find names starting with 'a':
-- This query selects employees whose first name begins with 'a'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

# ---------------------------------------------------------------------

-- 20. Using LIKE to find names starting with 'a' and having exactly 4 characters:
-- The _ wildcard matches exactly one character.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;

# ---------------------------------------------------------------------

-- 21. Using LIKE to find names starting with 'a' and having exactly 3 characters:
-- This query selects employees whose first name is 3 characters long, starting with 'a'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;

# ---------------------------------------------------------------------

-- 22. Using LIKE with both _ and % wildcards:
-- This query selects names starting with 'a' and having at least 4 characters.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;
