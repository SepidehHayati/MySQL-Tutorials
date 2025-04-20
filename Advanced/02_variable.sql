-- Variable
-- Using Variables with Stored Procedures in MySQL:

-- Step 1: Declare a user-defined variable to store the output (average salary)
set @v_avg_salary = 0;

-- Step 2: Call a stored procedure that calculates the average salary for a department
-- emp_avg_salary_out(dept_no, OUT avg_salary)
call employees.emp_avg_salary_out(11300, @v_avg_salary);

-- Step 3: Display the result
select @v_avg_salary;


#Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created in the last exercise.
#Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.
#Finally, select the obtained output.

-- Step 1: Declare a second variable to store the employee number
set @v_emp_no = 0;

-- Step 2: Call a stored procedure that returns an employee number based on first and last name
-- emp_info(first_name, last_name, OUT emp_no)
call employees.emp_info('Aruna', 'Journel', @v_emp_no);

-- Step 3: Display the employee number retrieved
select @v_emp_no;


