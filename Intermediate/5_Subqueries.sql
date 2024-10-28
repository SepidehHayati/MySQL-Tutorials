#Data Analyst Bootcamp with Alex Freberg
  #Video 13 on YouTube Channel
  #Intermediate MySQL Series
  #Lesson: Subqueries
  
#explanation: what is Subqueries?
-- A subquery is a query nested inside another SQL query. It’s used to provide a result set that another query depends on. 
-- Subqueries can be placed in the SELECT, FROM, or WHERE clauses.
-- They are helpful for providing intermediate results for calculations, filtering, or aggregations within a larger query.

# ---------------------------------------------------------------------

-- Find all employees in the Parks and Recreation department (dept_id = 1) using a subquery in the WHERE clause.
-- Main Query: Retrieves all columns from employee_demographics where employee_id matches any employee_id from the subquery.
-- Subquery Purpose: Selects employee_ids from employee_salary for employees in dept_id = 1.
-- The IN operator is used to filter based on multiple values from the subquery, which is suitable for this list of employee_ids.

SELECT *
FROM employee_demographics -- Main Query
WHERE employee_id IN (
    SELECT employee_id -- Subquery with IN operator
    FROM employee_salary
    WHERE dept_id = 1
);

# ---------------------------------------------------------------------

-- Error:
-- Cause: Using IN with (employee_id, dept_id) was incorrect because IN requires a single-column list.
-- Correction: This query restricts the subquery to a single column (employee_id) so that IN can evaluate each employee_id against those returned by the subquery.

SELECT *
FROM employee_demographics
WHERE employee_id IN (
    SELECT employee_id, dept_id -- Incorrect: IN requires a single column
    FROM employee_salary
    WHERE dept_id = 1
);

# ---------------------------------------------------------------------

-- Display Each Employee's Salary and Overall Average Salary
-- This query displays each employee’s salary along with the average salary of all employees by using a scalar subquery.
-- Scalar Subquery: (SELECT AVG(salary) FROM employee_salary) returns a single value, the average salary across all employees.
-- Purpose: The outer query shows each employee's first_name and salary, alongside the overall avg_salary.

SELECT 
    first_name, 
    salary, 
    (SELECT AVG(salary) -- Scalar Subquery
    FROM employee_salary) AS avg_salary -- Outer Query
FROM employee_salary;

# ---------------------------------------------------------------------

-- Aggregating Age Data by Gender with Aliases for Outer Query Access
-- Error: An alias for the inner subquery (AS agg_table) is required.

SELECT *
FROM (
    SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) -- Inner Query
    FROM employee_demographics
    GROUP BY gender
); -- Incorrect, missing alias for the subquery

# ---------------------------------------------------------------------

-- Corrected version with an alias:
SELECT *
FROM (
    SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS agg_table;

# ---------------------------------------------------------------------

-- Calculating the Average of Maximum Ages
-- Error: You cannot directly nest aggregate functions like AVG(MAX(age)), as SQL does not allow two-level aggregation (such as AVG(MAX(...))) in a single step.
-- Solution: To calculate the average of maximum ages, alias MAX(age) in the inner query and then apply AVG in an outer query.

SELECT gender, AVG(MAX(age)) -- Incorrect
FROM (
    SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS agg_table;

# ---------------------------------------------------------------------

-- Corrected version with aliased columns:
SELECT gender, AVG(max_age) AS avg_max_age
FROM (
    SELECT gender, MAX(age) AS max_age
    FROM employee_demographics
    GROUP BY gender
) AS agg_table
GROUP BY gender;

# ---------------------------------------------------------------------

-- Aggregating Age Data without Grouping by Gender
-- The goal here is to calculate the overall average of maximum ages without grouping by gender.

SELECT  avg(`MAX(age)`)
FROM 
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender) AS agg_table
;

# ---------------------------------------------------------------------

-- Aggregating Age Data with Aliases
-- Inner Query: Aggregates age data (avg_age, max_age, min_age, count_age) by gender, assigning each aggregation an alias.
-- Outer Query: Calculates the overall average of max_age across the entire set. Since all columns are aliased in the subquery, no errors should occur.

SELECT AVG(max_age) -- Outer Query
FROM (
    SELECT gender, -- Inner Query
        AVG(age) AS avg_age,
        MAX(age) AS max_age,
        MIN(age) AS min_age,
        COUNT(age) AS count_age
    FROM employee_demographics
    GROUP BY gender
) AS agg_table;