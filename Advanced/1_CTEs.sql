#Data Analyst Bootcamp with Alex Freberg
  #Video 15 on YouTube Channel
  #Advanced MySQL Series
  #Lesson: CTEs in MySQL


#Explanation
# A Common Table Expression (CTE) is a temporary result set that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. 
# It improves code readability and makes complex queries more manageable.

-- Common Table Expression (CTE) to calculate aggregate salary statistics by gender
with CTE_Example as
(
select gender, Avg(salary), Max(salary), Min(salary), count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
    group by gender
)
-- Retrieve all data from the CTE
select *
from CTE_Example
; 

#-------------------------------------------------------------------------------------

# With different names:
-- Calculate the overall average of the gender-based average salaries

with CTE_Example as
(
select gender, Avg(salary) Avg_sal, Max(salary) Max_sal, Min(salary) Min_sal, count(salary) Count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
    group by gender
)
-- Compute the average of the gender-based average salaries
select avg(avg_sal)
from CTE_Example
;

# -------------------------------------------------------------------------------------

-- Alternative approach using a subquery instead of a CTE
select Avg(avg_sal)
From (
select gender, Avg(salary) Avg_sal, Max(salary) Max_sal, Min(salary) Min_sal, count(salary) Count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
    group by gender
) example_subquery
;
# -------------------------------------------------------------------------------------

-- Using multiple CTEs to filter employee demographics and salary data before joining
with CTE_Example as
(
select  employee_id, gender, birth_date
from employee_demographics 
where birth_date > '1985-01-01'   -- Filter employees born after January 1, 1985

),
CTE_Example2 as
(
select employee_id, salary
From employee_salary
where salary > 50000   -- Filter employees earning more than 50,000
)
select *
from CTE_Example
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id   -- Join both CTEs on employee_id
;
