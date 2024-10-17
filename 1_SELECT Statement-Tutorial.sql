#Data Analyst Bootcamp with Alex Freberg
  #Video 04 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: SELECT Statement

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