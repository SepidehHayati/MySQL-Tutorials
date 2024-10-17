#Data Analyst Bootcamp with Alex Freberg
  #Video 07 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Having vs Where in MySQL

-- The first query will not return results because the WHERE clause is used incorrectly with an aggregate function.
	-- WHERE: Filters individual rows before aggregation.
	-- HAVING: Filters groups after aggregation.

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40 -- This part is incorrect; aggregate functions cannot be used in WHERE.
GROUP BY gender
;


-- Correct query: HAVING is used after grouping to filter based on aggregated values.
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40 -- This correctly filters the groups where the average age is greater than 40.
;


-- Grouping employee salary data by occupation and calculating the average salary for each occupation.
SELECT occupation, AVG (salary)
FROM employee_salary
GROUP BY occupation
;


-- Filtering occupations that contain 'Manager' in their title, grouping them, and displaying only those with an average salary over 75,000.
SELECT occupation, AVG (salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%' -- Filters to include only occupations with 'Manager' in the title.
GROUP BY occupation
HAVING AVG (salary) > 75000 -- Only displays groups where the average salary is greater than 75,000.
;