#Data Analyst Bootcamp with Alex Freberg
  #Video 09 on YouTube Channel
  #Intermediate MySQL Series
  #Lesson: Join in MySQL
  
-- 1. INNER JOIN between two tables (employee_demographics and employee_salary):
-- An INNER JOIN returns only the rows where there is a match in both tables based on employee_id.
-- This query combines all columns from both tables where the employee_id matches.

SELECT *
FROM employee_demographics 
INNER JOIN employee_salary 
	ON employee_demographics.employee_id = employee_salary.employee_id
;
# ---------------------------------------------------------------------

-- 2. INNER JOIN using table aliases:
-- To make the query more readable, we can use aliases (dem for employee_demographics and sa for employee_salary).
-- The query works the same way but is shorter and easier to reference in more complex queries.

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;
# ---------------------------------------------------------------------

-- 3. Example of an ambiguous column error:
-- This query selects employee_id, age, and occupation from both tables.
-- Since both tables contain employee_id, we must specify which table we are referring to (using the table alias).
-- Otherwise, MySQL will return an error due to the ambiguity of the employee_id column.

SELECT employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;
# ---------------------------------------------------------------------

-- 4. Correcting the previous query:
-- By specifying the employee_id column from the employee_demographics table using the alias 'dem',
-- we eliminate the ambiguity and get the correct result.

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;
# ---------------------------------------------------------------------

-- 5. Performing a LEFT JOIN:
-- A LEFT JOIN returns all records from the left table (employee_demographics), 
-- and the matching records from the right table (employee_salary). 
-- If no match is found, the result will still include the row from employee_demographics, with NULLs for unmatched fields.

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;
# ---------------------------------------------------------------------

-- 6. Performing a RIGHT JOIN:
-- A RIGHT JOIN returns all records from the right table (employee_salary), 
-- and the matching records from the left table (employee_demographics). 
-- If no match is found, the result will still include the row from employee_salary, with NULLs for unmatched fields.

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sa
	ON dem.employee_id = sa.employee_id
;

# ---------------------------------------------------------------------

-- 7. SELF JOIN to find employees whose employee_id is one more than another:
-- A SELF JOIN is a join of a table with itself. 
-- Here, we are comparing employee_salary to itself (EMP1 and EMP2) to find records where EMP1's employee_id is one more than EMP2's.
-- This helps find related employee records based on employee_id.

SELECT *
FROM employee_salary EMP1
JOIN employee_salary EMP2
ON EMP1.employee_id + 1 = EMP2.employee_id
;

# ---------------------------------------------------------------------

-- 8. SELF JOIN with aliasing for readability:
-- This query does the same as the previous one, but we are giving more meaningful aliases to the two employee_salary instances.
-- EMP1 is labeled as "Santa", and EMP2 is the regular employee.
-- The result will show relationships between employees where one employee_id is exactly one more than the other.

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

# ---------------------------------------------------------------------

-- 9. Joining multiple tables (employee_demographics, employee_salary, parks_departments):
-- In this example, we are combining three tables to show the department details along with employee information.
-- The first INNER JOIN connects employee_demographics to employee_salary based on employee_id.
-- The second INNER JOIN connects employee_salary to parks_departments based on dept_id (department ID).
-- This allows us to see which department each employee belongs to.

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
inner join parks_departments pd
    on sal.dept_id = pd.department_id
;

