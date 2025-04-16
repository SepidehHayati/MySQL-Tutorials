-- 14: DELETE Statements with COMMIT and ROLLBACK

-- Step 1: Commit the current state of the database
-- This ensures that we can safely roll back in case of a mistake
COMMIT;

-- Step 2: Select a specific employee to delete
SELECT *
FROM employees
WHERE emp_no = 999903;

-- Step 3: Delete the selected employee from the employees table
DELETE FROM employees
WHERE emp_no = 999903;

-- Step 4: Check if the employee still exists in the titles table
SELECT *
FROM titles
WHERE emp_no = 999903;

-- Observation:
-- The employee no longer exists in the TITLES table either.
-- This likely means a foreign key with ON DELETE CASCADE was applied.

-- Step 5: Roll back the deletion and restore the employee
ROLLBACK;

-- Step 6: Check related data (example: department assignments)
SELECT *
FROM dept_emp;
