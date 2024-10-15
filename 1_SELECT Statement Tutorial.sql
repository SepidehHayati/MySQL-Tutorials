#Data Analyst Bootcamp with Alex Freberg
  #Video 04 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Select Statement in MySQL | Beginner MySQL Series

-- Select all columns from the employee_demographics table
SELECT *
FROM employee_demographics;


-- Select specific columns (first_name, last_name, age) from the employee_demographics table in the parks_and_recreation schema
select 
first_name, 
last_name, 
age
from parks_and_recreation.employee_demographics;


-- Select first_name, last_name, age, and calculate a new column (age + 10) for future age projection
SELECT first_name, last_name, age, age + 10
FROM parks_and_recreation.employee_demographics;

#PEMDAS: P (), E: Exponent, M: Multiplication, D: Division, A: Addition S: Subtraction 
  

-- Use DISTINCT to get unique combinations of gender and first_name

SELECT distinct gender, first_name
FROM parks_and_recreation.employee_demographics;
