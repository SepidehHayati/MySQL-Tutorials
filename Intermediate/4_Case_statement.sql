#Data Analyst Bootcamp with Alex Freberg
  #Video 12 on YouTube Channel
  #Intermediate MySQL Series
  #Lesson: Case statement

-- Selecting last name, first name, and age from employee demographics
-- Using a CASE statement to categorize employees into age brackets

SELECT last_name, first_name, age,
  CASE 
    WHEN age <= 30 THEN 'Young'             -- Categorizes age 30 and below as 'Young'
    WHEN age BETWEEN 31 AND 40 THEN 'middle-age' -- Categorizes age between 31 and 40 as 'middle-age'
    WHEN age > 40 THEN 'old'                -- Categorizes age above 40 as 'old'
  END AS age_Bracket                         -- Assigns result as 'age_Bracket'
FROM employee_demographics;

# -----------------------------------------------------------------------

-- Pay increase and bonus calculations based on salary and department
-- If salary is below 50,000, a 5% increase is applied
-- If salary is above 50,000, a 7% increase is applied
-- If the department is Finance (dept_id = 6), an additional 10% bonus is added

SELECT first_name, last_name, salary,
  CASE
    WHEN salary < 50000 THEN salary + (salary * 0.05) -- Adds a 5% increase to salaries below 50,000
    WHEN salary > 50000 THEN salary + (salary * 0.07) -- Adds a 7% increase to salaries above 50,000
  END AS new_salary,                                  -- Resulting salary after increase, labeled as 'new_salary'
  
  CASE 
    WHEN dept_id = 6 THEN salary * 0.10               -- Adds a 10% bonus if employee is in Finance (dept_id 6)
  END AS finance_bonus                                -- Bonus for finance department, labeled as 'finance_bonus'
FROM employee_salary;

# -----------------------------------------------------------------------

-- Alternative version to calculate new_salary with simpler multiplication
SELECT first_name, last_name, salary,
  CASE
    WHEN salary < 50000 THEN salary * 1.05            -- Directly multiplies salary by 1.05 for a 5% increase
    WHEN salary > 50000 THEN salary * 1.07            -- Directly multiplies salary by 1.07 for a 7% increase
  END AS new_salary,                                  -- Resulting salary after increase, labeled as 'new_salary'
  
  CASE 
    WHEN dept_id = 6 THEN salary * 0.10               -- Adds a 10% bonus if employee is in Finance (dept_id 6)
  END AS finance_bonus                                -- Bonus for finance department, labeled as 'finance_bonus'
FROM employee_salary;
