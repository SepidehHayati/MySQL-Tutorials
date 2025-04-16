-- 13: UPDATE Statements and Transaction Control

USE employees;

-- Select a specific employee by employee number
SELECT *
FROM employees
WHERE emp_no = '10100';

-- Insert a new employee for testing update operations
INSERT INTO employees
VALUES (
	999903,
	'1997-10-01',
	'Ali',
    'Amiri',
    'M',
    '1987-09-24'
);

-- Verify that the new employee was inserted
SELECT *
FROM employees
WHERE emp_no = 999903;

-- Update the inserted employee's information
UPDATE employees
SET 
    first_name = 'Stella',
    last_name = 'Ferreti',
    birth_date = '1980-01-01',
    gender = 'F'
WHERE
    emp_no = 999903;

-- Check that the update was successful
SELECT *
FROM employees
WHERE emp_no = 999903;

-- View department data to prepare for update examples
SELECT *
FROM department_dup
ORDER BY dept_no;

-- Caution: Updating a table without a WHERE clause affects all records
-- It's important to use transaction control (COMMIT/ROLLBACK) in such cases

-- Commit the current state before making risky changes
COMMIT;

-- Mistakenly update all rows (this simulates a common user error)
UPDATE department_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';

-- Rollback to undo the accidental update
ROLLBACK;

-- Commit again after ensuring data is correct
COMMIT;

-- Exercise: Change the name of a specific department
-- Update "Business Analysis" to "Data Analysis"
UPDATE departments
SET 
    dept_name = 'Data Analysis'
WHERE 
    dept_name = 'Business Analysis';

-- Confirm the update
SELECT *
FROM departments;
