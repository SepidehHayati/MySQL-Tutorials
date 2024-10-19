#Data Analyst Bootcamp with Alex Freberg
  #Video 06 on YouTube Channel
  #Beginner MySQL Series
  #Lesson: Group By + Order By in MySQL
  
  -- GROUP BY:
-- 1. Grouping by gender to display the unique genders in the table:
-- This query will return a list of distinct genders from the employee_demographics table.
SELECT gender
FROM employee_demographics
GROUP BY gender
;

# ---------------------------------------------------------------------

-- 2. Grouping by gender and calculating the average age for each gender:
-- This query groups employees by gender and then calculates the average age for each group.
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

# ---------------------------------------------------------------------

-- 3. Grouping by occupation to display the unique occupations:
-- This query returns a list of distinct occupations from the employee_salary table.
SELECT occupation
FROM employee_salary
GROUP BY occupation
;

# ---------------------------------------------------------------------

-- 4. Grouping by salary and occupation to show unique combinations:
-- This query shows all unique combinations of salary and occupation in the employee_salary table.
SELECT salary, occupation
FROM employee_salary
GROUP BY salary, occupation
;

# ---------------------------------------------------------------------

-- 5. Grouping by gender and calculating aggregate functions:
-- This query calculates the average, maximum, minimum age, and the count of employees for each gender group.
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

# ---------------------------------------------------------------------

-- ORDER BY:
-- 1. Ordering by first_name in ascending order (default):
-- This query orders the results in the employee_demographics table by first_name in ascending order by default.
SELECT *
FROM employee_demographics
ORDER BY first_name
;

# ---------------------------------------------------------------------

-- 2. Explicitly ordering by first_name in ascending order:
-- This query explicitly sorts the results by first_name in ascending order using the ASC keyword.
SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;

# ---------------------------------------------------------------------

-- 3. Ordering by first_name in descending order:
-- This query sorts the results by first_name in descending order using the DESC keyword.
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

# ---------------------------------------------------------------------

-- 4. Ordering by gender in ascending order:
-- This query orders the results by gender, defaulting to ascending order.
SELECT *
FROM employee_demographics
ORDER BY gender 
;

# ---------------------------------------------------------------------

-- 5. Ordering first by gender, then by age in ascending order:
-- This query first sorts the results by gender and then sorts within each gender group by age in ascending order.
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

# ---------------------------------------------------------------------

-- 6. Ordering first by gender, then by age in descending order:
-- This query first sorts by gender and then sorts within each gender group by age in descending order.
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;

# ---------------------------------------------------------------------

-- 7. Sorting first by age, then by gender:
-- This query orders the results first by age and then by gender in ascending order for both.
SELECT *
FROM employee_demographics
ORDER BY age, gender
;

# ---------------------------------------------------------------------

-- 8. Ordering by the 5th and 4th columns in the table:
-- This query sorts the results based on the 5th and 4th columns in the table. However, this approach is not recommended
-- as it can lead to confusion, especially if the column structure of the table changes.
SELECT *
FROM employee_demographics
ORDER BY 5, 4
;
