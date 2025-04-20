-- Stored routines : 
#1. stored procedure (parametric, non parametric procedure) 
#2. stored function
# ------------------------------------------------------------------ 
#stored function:

use employees;
drop function if exists f_emp_avg_salary;

delimiter $$
create function f_emp_avg_salary (p_emp_no integer) returns decimal (10,2)
NO SQL   							# becase of error 1418
begin
	declare v_avg_salary decimal (10,2);
	select avg(s.salary)
    into v_avg_salary
    from employees e
    join 
    salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;

return v_avg_salary;
end $$
delimiter ;



#Create a function called ‘emp_info’ that takes for parameters the --first-- and --last name-- of an employee, and returns the --salary-- from the newest contract of that employee.
#Hint: In the BEGIN-END block of this program, you need to declare and use two variables – v_max_from_date that will be of the DATE type, and v_salary, that will be of the DECIMAL (10,2) type.
#Finally, select this function.

use employees;
drop function if exists emp_info;

delimiter $$
create function emp_info(p_first_name varchar(255), p_last_name varchar(255)) returns decimal (10,2)
DETERMINISTIC NO SQL READS SQL DATA

begin

declare v_max_from_date date;
declare v_salary decimal(10,2);

select max(from_date)
into v_max_from_date
from employees e
join salaries s on e.emp_no = s.emp_no
where e.first_name = p_first_name and e.last_name = p_last_name;

select s.salary
into v_salary
from employees e
join salaries s on e.emp_no = s.emp_no
where e.first_name = p_first_name and e.last_name = p_last_name and s.from_date = v_max_from_date;
return v_salary;

end $$
delimiter ;

SELECT emp_info('Aruna', 'Journel');


