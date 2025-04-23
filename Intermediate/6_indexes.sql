-- Indexes:

-- how many people have been hired afte the 1st of january?
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
create index i_hire_date on employees(hire_date);

-- Composite indexes: can be apply to multiple columns, not just a single one.

select *
from employees
where first_name = 'georgi' and last_name = 'facello';

create index i_composite on employees(first_name, last_name);

# also primary and unique keys are indexes.

show index from employees from employees;

# Drop index
drop index i_hire_date on employees;

# Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.
# Then, create an index on the ‘salary’ column of that table, and check if it has sped up the search of the same SELECT statement.
select * from salaries
where salary > '89000';

create index i_salary on salaries(salary);








