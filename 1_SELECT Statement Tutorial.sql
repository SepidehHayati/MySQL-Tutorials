#SELECT Statement-Video 04 on Data Analyst on Youtube

SELECT *
FROM employee_demographics;

select 
first_name, 
last_name, 
age
from parks_and_recreation.employee_demographics;

SELECT first_name, last_name, age, age + 10
FROM parks_and_recreation.employee_demographics;

#PEMDAS: P (), E: Exponent, M: Multiplication, D: Devision, A: Addition S: Subtraction 


SELECT distinct gender, first_name
FROM parks_and_recreation.employee_demographics;