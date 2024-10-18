#Data Analyst Bootcamp with Alex Freberg
  #Beginner MySQL Series
  #Practice Beginner Level
  
  
-- Practice Questions:

# SELECT
-- Q 1: Retrieve all columns from the employee_demographics table.
SELECT *
FROM employee_demographics;

-- Q 2: Retrieve the first_name, last_name, and age from the employee_demographics table.
SELECT first_name, last_name, age
FROM employee_demographics;

#---------------------------------------------------------------------------------------------------

# Arithmetic operations
-- Q 1: Retrieve the first_name, last_name, and age, and display the age incremented by 10.
SELECT first_name, last_name, age,  age + 10 AS AGE_Plus_10     
FROM employee_demographics;

#---------------------------------------------------------------------------------------------------

# DISTINCT
-- Q 1: Retrieve unique gender values from the employee_demographics table.
SELECT DISTINCT gender
FROM employee_demographics;

#---------------------------------------------------------------------------------------------------

# WHERE clause
-- Q 1: Retrieve the details of employees whose age is greater than 40.
SELECT *
FROM employee_demographics
WHERE age > 40;

#---------------------------------------------------------------------------------------------------

# Multiple conditions
-- Q 1: Retrieve the first name and last name of employees who are female and aged over 35.
SELECT first_name, last_name
FROM employee_demographics
WHERE age > 35 AND gender = 'Female';

#---------------------------------------------------------------------------------------------------

#LIKE operator
-- Q 1: Retrieve all employees whose first_name starts with 'A'.
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';

#--------------------------------------------------------------------------------------------------- 

# ORDER BY
-- Q 1: Retrieve all employees' first names and last names and sort the results by age in descending order.
SELECT first_name, last_name, age
FROM employee_demographics
ORDER BY age DESC;

#--------------------------------------------------------------------------------------------------- 

# LIMIT
-- Q 1: Retrieve the first 3 employees from the employee_demographics table.
SELECT *
FROM employee_demographics
LIMIT 3;

#--------------------------------------------------------------------------------------------------- 

# SELECT with ALIAS
-- Q 1: Retrieve the first name and last name of employees, and display their full name using an alias full_name.
-- Answer:
SELECT first_name, last_name, CONCAT (First_name, ' ', Last_name) AS Full_name
FROM employee_demographics;

#--------------------------------------------------------------------------------------------------- 

# BETWEEN operator
-- Q 1: Retrieve the details of employees whose age is between 30 and 50.
SELECT *
FROM employee_demographics
WHERE age BETWEEN 30 AND 50;

#--------------------------------------------------------------------------------------------------- 

# IN operator
-- Q 1: Retrieve the details of employees whose first_name is either 'Leslie', 'Tom', or 'April'.
SELECT *
FROM employee_demographics
WHERE first_name IN ('Leslie', 'Tom', 'April');

#--------------------------------------------------------------------------------------------------- 

# IS NULL
-- Q 1: Retrieve all employees from the employee_demographics table who have a NULL value in the birth_date field.
SELECT *
FROM employee_demographics
WHERE birth_date IS NULL;

#--------------------------------------------------------------------------------------------------- 

# Aggregate function - COUNT, SUM, AVG, MIN, MAX
-- Q 1: Count the total number of employees in the employee_demographics table.
SELECT COUNT(age) AS COUNT_RECORDS
FROM employee_demographics;

-- Q 2: Retrieve the sum of all employee salaries from the employee_salary table.
SELECT SUM(salary) AS sum_Salary
FROM employee_salary;

-- Q 3: Find the average age of all employees.
SELECT AVG(age) AS AVG_age
FROM employee_demographics;

-- Q 4: Retrieve the minimum and maximum age of employees.
SELECT MAX(age) AS MAX_age, MIN(age) AS MIN_age
FROM employee_demographics;

#--------------------------------------------------------------------------------------------------- 

# GROUP BY
-- Q 1: Retrieve the count of employees grouped by gender.
SELECT gender, COUNT(employee_id) AS COUNT_employee
FROM employee_demographics
GROUP BY gender;

#--------------------------------------------------------------------------------------------------- 

# HAVING
-- Q: Retrieve the genders that have more than 2 employees.
SELECT gender, COUNT(*) AS Total_em
FROM employee_demographics
GROUP BY gender
HAVING Total_em > 2;

#--------------------------------------------------------------------------------------------------- 

-- 20. SELECT with JOIN
-- Q: Retrieve the first_name, last_name, and salary of employees by joining employee_demographics with employee_salary.
-- This type of join retrieves only the rows where there is a match between the two tables based on the condition specified.
SELECT EM.first_name, EM.last_name, SA.salary
FROM employee_demographics AS EM
INNER JOIN employee_salary AS SA
ON EM.employee_id = SA.employee_id;





