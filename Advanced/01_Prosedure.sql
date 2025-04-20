-- Stored routines : 
#1. procedure (parametrich, non parametric procedure) 
#2. function

-- procedure without input/ output (non parametric procedure):
#----------------------------------------------------------------------------
# Create a procedure that will provide the average salary of all employees.
# Then, call the procedure.

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
    SELECT AVG(salary) FROM salaries;
END$$
DELIMITER ;

# to call the procedure:
call avg_salary();


# to delete procedure (or click on the file, then delete):
drop procedure employees.select_salaries;



-- procedure with input:
#----------------------------------------------------------------------------

#Create a delimiter with paramete:
USE EMPLOYEES;
DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
CREATE Procedure emp_salary(in p_emp_no integer)
begin
	select e.first_name, e.last_name, s.salary, s.from_date, s.to_date
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$
DELIMITER ;


#Create a delimiter with paramete and aggrigate function:
USE EMPLOYEES;
DROP PROCEDURE IF EXISTS emp_avg_salary;

USE EMPLOYEES;
DELIMITER $$
CREATE Procedure emp_avg_salary(in p_emp_no integer)
begin
	select e.first_name, e.last_name, avg(s.salary)
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$
DELIMITER ;

call emp_avg_salary (11300);




-- procedure with input and output:
#----------------------------------------------------------------------------

#Create a delimiter with paramete and aggrigate function ans second parameter:
USE EMPLOYEES;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;

USE EMPLOYEES;
DELIMITER $$
CREATE Procedure emp_avg_salary_out(in p_emp_no integer, out p_avg_salary decimal(10,2))
begin
	select 
		avg(s.salary)
    into p_avg_salary
    from
		employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$
DELIMITER;



-- procedure with two input and one output:
#----------------------------------------------------------------------------

# Create a procedure called ‘emp_info’ that uses as parameters the first and the last name of an individual, and returns their employee number.
USE EMPLOYEES;
DROP PROCEDURE IF EXISTS emp_info;

DELIMITER $$
create procedure emp_info (in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
begin
select 
	e.emp_no
	into p_emp_no
	from employees e
	where e.first_name = p_first_name  and e.last_name = p_last_name ;
end$$
DELIMITER ;



# Create a procedure that will provide the average salary of all employees.
# Then, call the procedure.

use employees;
drop procedure if exists employee_salary_avg()

delimiter $$
create procedure employee_salary_avg()
begin
	select avg(salary) from salaries;
end $$
delimiter ;

call employee_salary_avg();






