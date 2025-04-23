# There are three types of variables:
-- 1. Local
-- 2. Session
-- 3. Global

# 1. Local Variables:
-- A variable that is visible only in the BEGIN...END block in which it was created.
-- Example:

use employees;
drop function if exists f_emp_avg_salary;

delimiter $$
create function f_emp_avg_salary (p_emp_no integer) returns decimal (10,2)
NO SQL   							# becase of error 1418
begin
	declare v_avg_salary decimal (10,2);		# Defining a local variable: Declare is a keyword for creating a varible only
	select avg(s.salary)
    into v_avg_salary
    from employees e
    join 
    salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;

return v_avg_salary;							# v_avg_salary variable tcannot be accessed from outside of this block
end $$
delimiter ;

/*
# 2. Session
 - What is a session? a series of information exchange interactions or a dialogue between a computer and a user
 - a session begins at a certain point in time and terminates at another, later point (set up a new connection in workbench, 100 connection, 100 session).
 - variables in a session are visible only to the session in which it was created.


# 3. Global varibles:
 - global variables apply to all connections related to a specific server.
 - you cannot set just any variable as global.
 - a specific group of pre-defined variables in MYSQL is suitable for this job, they are called system variables. Example:
 - .max_connections(): the maximum number of connections to a server that can be estabilished at a certain point in the time.
    * set global max_connections = 1000;		# means we cannot have more that 1000 connection to the server.
    * set @@global.max_connections = 1; 		# means we cannot have more that 1 connection to the server.
 - .max_join_size(): sets the maximum memory space, allocated for the joins created by a certain connection.


# User defined or system variables:
 - User defined: can be set by user manually (can be local, cannot be global, can be session variables )
 - system: are pre-defined on our system the SQL server (cannot be local, can be global, can be session variables )
*/