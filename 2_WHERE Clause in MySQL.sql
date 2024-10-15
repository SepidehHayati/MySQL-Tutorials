#Data Analyst Bootcamp with Alex Freberg
#WHERE Clause in My SQL-Video 05 on Data Analyst on Youtube
# The WHERE Clause is used to help filter our records or rows of data 
# whereas the SELECT statement is used to help filter or select our actual columns.
# So when we are using WHERE Clause we are only going to return the rows that fulfill a specific condition. 


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Tom'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary < 50000
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date = '1987-03-04'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1987-03-04'
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date >= '1987-03-04'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date <= '1987-03-04'
;

-- AND OR NOT-- logical operators
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'leslie' and age = 44) OR age < 40
;

-- Like Statement
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'jerry'
;
-- BUT the results is nothing if:
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'jerr'
;
-- SO using :
-- Like Statement % and _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'jer%'
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%a%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;
