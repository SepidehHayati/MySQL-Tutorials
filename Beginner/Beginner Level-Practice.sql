# Data Analyst Bootcamp with Alex Freberg
# Beginner MySQL Series
# Practice Beginner Level

-- Practice Questions:

# SELECT
-- Q 1: Retrieve all columns from the employee_demographics table.
SELECT *
FROM employee_demographics;

#---------------------------------------------------------------------------------------------------

-- Q 2: Retrieve the first_name, last_name, and age from the employee_demographics table.
SELECT first_name, last_name, age
FROM employee_demographics;

#---------------------------------------------------------------------------------------------------

# Arithmetic operations
-- Q 1: Retrieve the first_name, last_name, and age, and display the age incremented by 10.
SELECT first_name, last_name, age, age + 10 AS AGE_Plus_10     
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

# LIKE operator
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
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS Full_name
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

-- JOIN (inner join, left join, right join)

-- INNER JOIN:
-- Q 1: Retrieve the first_name, last_name, and salary of employees by joining employee_demographics with employee_salary.
-- This type of join retrieves only the rows where there is a match between the two tables based on the condition specified.
SELECT EM.first_name, EM.last_name, SA.salary
FROM employee_demographics AS EM
INNER JOIN employee_salary AS SA
ON EM.employee_id = SA.employee_id;

#--------------------------------------------------------------------------------------------------- 

-- Q 2: Retrieve a list of all employees along with their occupation and salary.
SELECT dem.first_name, dem.last_name, sal.occupation, sal.salary
FROM employee_salary AS sal
INNER JOIN employee_demographics AS dem
ON dem.employee_id = sal.employee_id;

#--------------------------------------------------------------------------------------------------- 

-- Q 3: Retrieve the first_name, last_name, and occupation of all employees whose salary is greater than 60,000.
SELECT dem.first_name, dem.last_name, sal.occupation, sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE sal.salary > 60000;

#--------------------------------------------------------------------------------------------------- 

-- Q 4: Retrieve the first_name, last_name, age, and occupation of all employees who work in department 1.
SELECT dem.first_name, dem.last_name, sal.occupation, sal.salary, sal.dept_id
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE sal.dept_id = 1;

#--------------------------------------------------------------------------------------------------- 

-- LEFT JOIN
-- Q 5: Retrieve all employees from employee_demographics, even if they don’t have a salary record in employee_salary.
-- Explanation: A LEFT JOIN ensures that all records from employee_demographics are shown, even if there is no corresponding entry in employee_salary.
SELECT dem.employee_id, dem.first_name, dem.last_name, sal.employee_id, sal.occupation, sal.salary
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

#--------------------------------------------------------------------------------------------------- 

-- RIGHT JOIN
-- Q 6: Retrieve all records from employee_salary, even if the employee doesn't exist in employee_demographics.
-- Explanation: A RIGHT JOIN ensures that all records from employee_salary are shown, even if there is no match in employee_demographics.
SELECT dem.employee_id, dem.first_name, dem.last_name, sal.employee_id, sal.occupation, sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

#--------------------------------------------------------------------------------------------------- 

-- Q 7: FULL OUTER JOIN (Simulated with UNION)
-- Question: Retrieve all employees, including those with and without salary records, combining the LEFT and RIGHT JOINs.
SELECT dem.employee_id, dem.first_name, dem.last_name, sal.employee_id, sal.occupation, sal.salary
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
UNION 
SELECT dem.employee_id, dem.first_name, dem.last_name, sal.employee_id, sal.occupation, sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

#--------------------------------------------------------------------------------------------------- 

-- Q 8: SELF JOIN
-- This section is reserved for any self-join queries, which can be added here.
-- Self joins are used to combine rows in a table with other rows in the same table based on a related column.
