#Data Analyst Bootcamp with Alex Freberg
  #Beginner MySQL Series
  #Practice Beginner Level
  
  
-- Practice Questions:

-- 1. Basic SELECT
-- Q: Retrieve all columns from the employee_demographics table.
-- Answer:
SELECT *
FROM employee_demographics;

-- 2. SELECT specific columns
-- Q: Retrieve the first_name, last_name, and age from the employee_demographics table.
-- Answer:
SELECT first_name, last_name, age
FROM employee_demographics;


-- 3. SELECT with arithmetic operations
-- Q: Retrieve the first_name, last_name, and age, and display the age incremented by 10.
-- Answer:
SELECT first_name, last_name, age,  age + 10 AS AGE_Plus_10     
FROM employee_demographics;


-- 4. DISTINCT
-- Q: Retrieve unique gender values from the employee_demographics table.
-- Answer:
SELECT DISTINCT gender
FROM employee_demographics;


-- 5. SELECT with WHERE clause
-- Q: Retrieve the details of employees whose age is greater than 40.
-- Answer:
SELECT *
FROM employee_demographics
WHERE age > 40;


-- 6. SELECT with multiple conditions
-- Q: Retrieve the first name and last name of employees who are female and aged over 35.
-- Answer:
SELECT first_name, last_name
FROM employee_demographics
WHERE age > 35 AND gender = 'Female';


-- 7. LIKE operator
-- Q: Retrieve all employees whose first_name starts with 'A'.
-- Answer:
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';


-- 8. ORDER BY
-- Q: Retrieve all employees' first names and last names and sort the results by age in descending order.
-- Answer:
SELECT first_name, last_name, age
FROM employee_demographics
ORDER BY age DESC;

-- 9. LIMIT
-- Q: Retrieve the first 3 employees from the employee_demographics table.
-- Answer:
SELECT *
FROM employee_demographics
LIMIT 3;



-- 10. SELECT with ALIAS
-- Q: Retrieve the first name and last name of employees, and display their full name using an alias full_name.
-- Answer:
SELECT first_name, last_name, CONCAT (First_name, ' ', Last_name) AS Full_name
FROM employee_demographics;


-- 11. BETWEEN operator
-- Q: Retrieve the details of employees whose age is between 30 and 50.
-- Answer:
SELECT *
FROM employee_demographics
WHERE age BETWEEN 30 AND 50;


-- 12. IN operator
-- Q: Retrieve the details of employees whose first_name is either 'Leslie', 'Tom', or 'April'.
-- Answer:
SELECT *
FROM employee_demographics
WHERE first_name IN ('Leslie', 'Tom', 'April');

-- 13. IS NULL
-- Q: Retrieve all employees from the employee_demographics table who have a NULL value in the birth_date field.
-- Answer:
SELECT *
FROM employee_demographics
WHERE birth_date IS NULL;

-- 14. Aggregate function - COUNT
-- Q: Count the total number of employees in the employee_demographics table.
-- Answer:
SELECT COUNT(age) AS COUNT_RECORDS
FROM employee_demographics;


-- 15. Aggregate function - SUM
-- Q: Retrieve the sum of all employee salaries from the employee_salary table.
-- Answer:
SELECT SUM(salary) AS sum_Salary
FROM employee_salary;


-- 16. Aggregate function - AVG
-- Q: Find the average age of all employees.
-- Answer:
SELECT AVG(age) AS AVG_age
FROM employee_demographics;


-- 17. Aggregate function - MIN/MAX
-- Q: Retrieve the minimum and maximum age of employees.
-- Answer:
SELECT MAX(age) AS MAX_age, MIN(age) AS MIN_age
FROM employee_demographics;

-- 18. GROUP BY
-- Q: Retrieve the count of employees grouped by gender.
-- Answer:
SELECT gender, COUNT(employee_id) AS COUNT_employee
FROM employee_demographics
GROUP BY gender;

-- 19. HAVING
-- Q: Retrieve the genders that have more than 2 employees.
-- Answer:
SELECT gender, COUNT(*) AS Total_em
FROM employee_demographics
GROUP BY gender
HAVING Total_em > 2;

-- 20. SELECT with JOIN
-- Q: Retrieve the first_name, last_name, and salary of employees by joining employee_demographics with employee_salary.
-- This type of join retrieves only the rows where there is a match between the two tables based on the condition specified.
-- Answer
SELECT EM.first_name, EM.last_name, SA.salary
FROM employee_demographics AS EM
INNER JOIN employee_salary AS SA
ON EM.employee_id = SA.employee_id;




