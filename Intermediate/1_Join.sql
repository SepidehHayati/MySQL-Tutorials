#Data Analyst Bootcamp with Alex Freberg
  #Video 09 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Join in MySQL
  
-- Performing an INNER JOIN between employee_demographics and employee_salary based on employee_id
SELECT *
FROM employee_demographics 
INNER JOIN employee_salary 
	ON employee_demographics.employee_id = employee_salary.employee_id
;


-- Same INNER JOIN query, but using table aliases (dem for employee_demographics and sa for employee_salary)
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;


-- Example of an error due to ambiguous columns (employee_id column not specified with table alias)
-- This will cause an error as the query does not specify the source of employee_id
SELECT employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;


-- Correcting the previous query by using the dem alias to specify employee_id source
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;

-- Performing a LEFT JOIN to include all records from employee_demographics, 
-- even if they don't have a match in employee_salary
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;


-- Performing a RIGHT JOIN to include all records from employee_salary, 
-- even if they don't have a match in employee_demographics
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;


-- SELF JOIN on employee_salary to find records where one employee_id is exactly one more than another
SELECT *
FROM employee_salary EMP1
JOIN employee_salary EMP2
ON EMP1.employee_id + 1 = EMP2.employee_id
;


-- SELF JOIN with aliasing to show relationships between employees where one ID is one more than the other.
-- Aliasing EMP1 as the "Santa" and EMP2 as the regular employee for demonstration.
SELECT 
EMP1.employee_id AS EMP_SANTA, 
EMP1.first_name AS FIRST_NAME_SANTA,
EMP1.last_name AS LAST_NAME_SANTA,
EMP2.employee_id AS EMP_NAME, 
EMP2.first_name AS FIRST_NAME_EMP,
EMP2.last_name AS LAST_NAME_EMP
FROM employee_salary EMP1
JOIN employee_salary EMP2
ON EMP1.employee_id + 1 = EMP2.employee_id;

-- Joining multiple tables together: employee_demographics, employee_salary, and parks_departments
-- to show department details along with employee information.
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
inner join parks_departments pd
    on sal.dept_id = pd.department_id
;


-- Selecting all records from the parks_departments table
SELECT *
FROM parks_departments;