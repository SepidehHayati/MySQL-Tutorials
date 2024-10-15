#Data Analyst Bootcamp with Alex Freberg
  #Video 07 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Having vs Where in MySQL
  
  -- LIMIT:
  -- Using LIMIT to restrict the output to the first 3 records from employee_demographics
  SELECT *
  FROM employee_demographics
  LIMIT 3
  ;
  
  
  -- Ordering the records by age in descending order and limiting the output to the top 3 oldest employees
  SELECT *
  FROM employee_demographics
  ORDER BY age DESC
  LIMIT 3
  ;
  
  
  -- Skipping the first 3 records and returning the 4th record when ordered by age in descending order
  SELECT *
  FROM employee_demographics
  ORDER BY age DESC
  LIMIT 3, 1
  ;
  
  
  -- Skipping the first 2 records and returning the 3rd record when ordered by age in descending order
  SELECT *
  FROM employee_demographics
  ORDER BY age DESC
  LIMIT 2, 1
  ;
  
  
-- Aliasing: Changing the name of the aggregated column for clarity
   SELECT gender, AVG(age)
  FROM employee_demographics
  GROUP BY gender
  Having AVG (age) > 40
;
  
  
  -- Using alias to give a clearer name to the aggregated column avg_age for better readability
  SELECT gender, AVG(age) AS avg_age
  FROM employee_demographics
  GROUP BY gender
  Having avg_age > 40
;


-- Using alias without the AS keyword; still assigns avg_age to the average of ages
  SELECT gender, AVG(age) avg_age
  FROM employee_demographics
  GROUP BY gender
  Having avg_age > 40
;
  