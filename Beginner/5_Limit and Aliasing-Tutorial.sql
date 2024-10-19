#Data Analyst Bootcamp with Alex Freberg
  #Video 08 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Limit + Aliasing in MySQL
  
-- LIMIT:
-- In this query, we use the LIMIT clause to restrict the output to only the first 3 records 
-- from the employee_demographics table. This is useful for getting a quick preview of the data.

SELECT *
FROM employee_demographics
LIMIT 3
;

# ---------------------------------------------------------------------

-- In this query, we order the records by age in descending order to find the oldest employees.
-- The LIMIT clause restricts the output to the top 3 oldest employees, making it easy to identify 
-- the highest ages in the dataset.

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

# ---------------------------------------------------------------------

-- This query skips the first 3 records when ordered by age in descending order. 
-- It returns the 4th record, allowing us to see the next oldest employee after the top 3.

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 1
;

# ---------------------------------------------------------------------

-- In this query, we skip the first 2 records and return the 3rd record when the data is ordered 
-- by age in descending order. This allows us to focus on a specific employee's data within the age ranking.

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

# ---------------------------------------------------------------------

-- Aliasing:
-- In this query, we calculate the average age for each gender using the AVG() function. 
-- The result is not given a clear name, but we are filtering groups to only show those 
-- where the average age is greater than 40.

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

# ---------------------------------------------------------------------

-- This query improves readability by using an alias, 'avg_age', for the aggregated column 
-- representing the average age. This makes the output clearer, especially in larger datasets.

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

# ---------------------------------------------------------------------

-- In this query, we assign an alias to the aggregated column without using the AS keyword. 
-- The average of ages is still labeled 'avg_age', ensuring clarity in the results.

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
