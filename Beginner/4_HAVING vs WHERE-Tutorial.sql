#Data Analyst Bootcamp with Alex Freberg
  #Video 07 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Having vs Where in MySQL

-- In this first query, we attempt to filter groups based on the average age using the WHERE clause.
-- However, this will not work because aggregate functions like AVG() cannot be used in the WHERE clause.
-- The correct usage of WHERE is to filter individual rows before any aggregation occurs.

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40 -- This part is incorrect; aggregate functions cannot be used in WHERE.
GROUP BY gender
;

# ---------------------------------------------------------------------

-- In this corrected query, we use the HAVING clause to filter groups after aggregation.
-- Here, we calculate the average age for each gender and then filter to display only those groups 
-- where the average age is greater than 40.

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40 -- This correctly filters the groups where the average age is greater than 40.
;

# ---------------------------------------------------------------------

-- This query groups employee salary data by occupation and calculates the average salary 
-- for each occupation. The GROUP BY clause aggregates the results based on the occupation field.

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;

# ---------------------------------------------------------------------

-- In this query, we filter occupations that contain 'Manager' in their title. 
-- The WHERE clause is used to filter rows before aggregation, and we then group the data 
-- by occupation to calculate the average salary for those filtered occupations.
-- Finally, we use the HAVING clause to display only those groups with an average salary over 75,000.

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%' -- Filters to include only occupations with 'Manager' in the title.
GROUP BY occupation
HAVING AVG(salary) > 75000 -- Only displays groups where the average salary is greater than 75,000.
;
