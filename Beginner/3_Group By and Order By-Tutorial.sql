#Data Analyst Bootcamp with Alex Freberg
  #Video 06 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Group By + Order By in MySQL
  
  -- GROUP BY:
  -- Grouping by gender to display the unique genders in the table
  SELECT gender
  FROM employee_demographics
  GROUP BY gender
  ;
  
  -- Grouping by gender and calculating the average age for each gender
  SELECT gender, AVG(age)
  FROM employee_demographics
  GROUP BY gender
  ; 
  
  -- Grouping by occupation to display the unique occupations in the employee_salary table
  SELECT occupation
  FROM employee_salary
  GROUP BY occupation
  ;
  
  
    -- Grouping by salary and occupation to show all unique combinations of these two fields
   SELECT salary, occupation
  FROM employee_salary
  GROUP BY salary, occupation
  ;
  
  -- Grouping by gender and calculating average, maximum, minimum age and count of employees by gender
  SELECT gender, AVG(age), max(age), min(age), count(age)
  FROM employee_demographics
  GROUP BY gender
  ; 
  
-- ORDER BY:
-- Ordering all records in employee_demographics table by first_name in default ascending order
SELECT *
FROM employee_demographics
ORDER BY first_name
;


-- Explicitly ordering the result by first_name in ascending order
SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;


-- Ordering by first_name in descending order
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;
  
-- Ordering the result by gender in ascending order (default)
SELECT *
FROM employee_demographics
ORDER BY gender 
;


-- First sorting by gender, and within each gender, sorting by age in ascending order
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

-- First sorting by gender, and within each gender, sorting by age in descending order
SELECT *
FROM employee_demographics
ORDER BY gender , age DESC
;


-- Sorting first by age and then by gender (both in ascending order)
SELECT *
FROM employee_demographics
ORDER BY age , gender 
;

-- Ordering by the 5th and 4th columns in the table; not recommended as it may lead to confusion
-- is not recommended:
SELECT *
FROM employee_demographics
ORDER BY 5 , 4
;