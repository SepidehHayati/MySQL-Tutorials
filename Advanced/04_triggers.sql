-- triggers (Types of Triggers) 1. before 2. after
# What are Troggers?
-- A type of stored program, associated with a table that will be activated automatically once a specific event occurs.
-- this event must be related to the associated table and reprersented table and represented by one of the following three DML statements:
	-- Insert
    -- Update
    -- Delete
    
#-------------------------------------------------------------------------------------
use employees;
commit;

# trigger before insert:
DELIMITER $$
create trigger before_salaries					# create trigger
before insert on salaries						# before insert on the table do :
for each row									
BEGIN
	if new.salary < 0 then 						# if the new record is less than 0:
		set new.salary = 0;						# set salary column equal to zero
	end if;
END$$
DELIMITER ;


SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10004';
    
insert into salaries values ('10004', -92891, '2010-06-22', '999-01-01' );


#-------------------------------------------------------------------------------------
use employees;
commit;
# trigger before update:
DELIMITER $$
create trigger before_salaries_update			# create trigger
before update on salaries						# before insert on the table do :
for each row									
BEGIN
	if new.salary < 0 then 						# if the new record is less than 0:
		set new.salary = old.salary;			# set salary column equal to zero
	end if;
END$$
DELIMITER ;

#-------------------------------------------------------------------------------------
-- Update:
UPDATE salaries 
SET 
    salary = 98765
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';


SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';
        
#-------------------------------------------------------------------------------------
  -- Update again : 
UPDATE salaries 
SET 
    salary = - 50000
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';    

SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';
        
# -------------------------------------------------------------------------------------
# System function:
-- system function are built-in functions.
-- they provide data about amount of the execution of a certain query.

select sysdate(); 		#deliver date and time at which you voke this fuction

select date_format(sysdate(), '%y-%m-%d') as today;

# -------------------------------------------------------------------------------------
-- a new employee has been promoted to a manager:
-- annual salary should immediatlly become 20.000 dollarshiger than the highest annual salary the had ever earned until that moment.
-- a new record in the department manager table
-- create a trigger that will apply several modifications to the salaries table once the relevant record in the department manager table has been inserted: 
delimiter $$
create trigger trigger_inser_dep_maneger
after insert on dept_manager
for each row
begin 
declare v_salary int;
SELECT 
    MAX(salary)
INTO v_salary FROM
    salaries
WHERE
    emp_no = new.emp_no;
if v_salary is not null then
update salaries
set to_date = sysdate()
where 
emp_no = new.emp_no and to_date =new.to_date;

insert into salaries
values (new.emp_no, v_salary + 20000, new.from_date, new.to_date);
end if;
end$$
delimiter ;
   

insert into dept_manager
values ('11534', 'd009', date_format(sysdate(),'%y-%m-%d'), '9999-01-01');

select *
from dept_manager
where emp_no = '11534';

select *
from salaries
where emp_no = '11534';



# Create a trigger that checks if the hire date of an employee is higher than the current date. 
-- If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).
DELIMITER $$
CREATE TRIGGER trig_hire_date  
BEFORE INSERT ON employees
FOR EACH ROW  
BEGIN  
		IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN     
			SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');     
		END IF;  
END $$  
DELIMITER ;  

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;