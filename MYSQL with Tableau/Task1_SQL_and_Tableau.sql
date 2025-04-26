-- Task 1: SQL + Tableau:

#Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990. 

select year(dm.from_date) as hire_year, e.gender, count(e.emp_no) as num_of_emp 
from t_employees e
join t_dept_emp dm on e.emp_no = dm.emp_no
where year(dm.from_date) > '1990'
group by e.gender, year(dm.from_date)
order by year(dm.from_date);