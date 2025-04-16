-- 12: INSERT Statements and Copying Data Between Tables

-- 🔹 Insert a new employee into the employees table
INSERT INTO employees (
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES (
	999901,
    '1987-01-01',
    'John',
    'Smith',
    'M',
    '2000-01-01'
);

-- View the most recently added employees
SELECT *
FROM employees
ORDER BY emp_no DESC;

-- 🔹 Insert a new title for an employee into the titles table
INSERT INTO titles (
	emp_no,
    title,
    from_date
) VALUES (
    999903,
    'Senior Engineer',
    '1997-10-01'
);

-- View recent titles added
SELECT *
FROM titles
ORDER BY emp_no DESC
LIMIT 10;

-- 🔹 Assign the employee to a department in the dept_emp table
INSERT INTO dept_emp (
	emp_no,
    dept_no,
    from_date,
    to_date
) VALUES (
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);

-- Check the department assignments
SELECT *
FROM dept_emp
ORDER BY dept_no DESC;

-- 🔹 Insert a new department into the departments table
INSERT INTO departments
VALUES (
	'd010',
    'Business Analysis'
);

-- 🔹 Copy data from one table to another

-- Step 1: Review the structure of the departments table
SELECT *
FROM departments
LIMIT 10;

-- Step 2: Create an empty duplicate of the departments table
CREATE TABLE department_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

-- Step 3: Confirm that department_dup is empty
SELECT *
FROM department_dup;

-- Step 4: Insert data from departments into department_dup
INSERT INTO department_dup
SELECT *
FROM departments;

-- Step 5: Verify data was successfully copied
SELECT *
FROM department_dup;

-- Cleanup (if needed): drop a mistakenly created table (e.g., 'business_analysis')
DROP TABLE IF EXISTS business_analysis;
