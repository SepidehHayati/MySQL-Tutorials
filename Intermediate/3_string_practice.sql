# Data Analyst Bootcamp with Alex Freberg
# Beginner MySQL Series
# Practice string - intermidate Level

-- 1. LENGTH Function:
-- Query 1: Get the length of the string 'database'.
SELECT LENGTH('database');

-- Query 2: Retrieve employees' first and last names and calculate the length of each.
SELECT first_name, last_name, LENGTH(first_name) AS L_first_name, LENGTH(last_name) AS L_last_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 2. UPPER and LOWER Functions:
-- Query 1: Convert the string 'data' to uppercase.
SELECT UPPER('data');

-- Query 2: Retrieve employees' last names and convert each to lowercase.
SELECT last_name, LOWER(last_name) AS lower_last_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 3. TRIM, LTRIM, RTRIM Functions:
-- Query 1: Trim leading and trailing spaces from the string ' database '.
SELECT TRIM('  database  ');

-- Query 2: Trim only leading spaces from ' info'.
SELECT LTRIM(' info');

# -----------------------------------------------------------------------

-- 4. LEFT and RIGHT Functions:
-- Query 1: Extract the first 3 characters from the string 'analysis'.
SELECT LEFT('analysis', 3);

-- Query 2: Extract the last 2 characters from each employee's last name.
SELECT last_name, RIGHT(last_name, 2) AS last_char
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 5. SUBSTRING Function:
-- Query 1: Extract 4 characters starting from the 2nd position in 'evaluation'.
SELECT 'evaluation' AS word, SUBSTRING('evaluation', 2, 4) AS substring;

-- Query 2: Extract the day (last 2 characters) from employees' birth dates.
SELECT birth_date, RIGHT(birth_date, 2) AS day_of_birth
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 6. REPLACE Function:
-- Query 1: Replace all occurrences of 'a' with 'o' in the string 'banana'.
SELECT REPLACE('banana', 'a', 'o');

-- Query 2: Replace all occurrences of 'e' with 'i' in employees' first names.
SELECT first_name, REPLACE(first_name, 'e', 'i') AS replaced_e_i
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 7. LOCATE Function:
-- Query 1: Find the position of 'cat' in the string 'concatenate'.
SELECT LOCATE('cat', 'concatenate') AS position_of_cat;

-- Query 2: Find the position of 'o' in each employee's last name.
SELECT last_name, LOCATE('o', last_name) AS position_of_o
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 8. CONCAT Function:
-- Query 1: Concatenate the strings 'data' and 'base' with a space in between.
SELECT 'data' AS word1, 'base' AS word2, CONCAT('data', ' ', 'base') AS concatenate;

-- Query 2: Concatenate the first and last names of each employee.
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 9. CONCAT_WS Function:
-- Query 1: Concatenate 'New', 'York', and 'City', separated by hyphens.
SELECT CONCAT_WS('-', 'New', 'York', 'City') AS concatenated_city;

-- Query 2: Concatenate first name, middle name, and last name, separated by spaces.
SELECT first_name, last_name, CONCAT_WS(' ', first_name, last_name) AS full_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 10. CHAR_LENGTH Function:
-- Query 1: Get the character length of 'perception'.
SELECT CHAR_LENGTH('perception') AS char_length;

-- Query 2: Retrieve the character length of each employee's middle name.
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name, 
CHAR_LENGTH(middle_name) AS char_length_of_middle_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 11. POSITION Function:
-- Query 1: Find the position of 'cloud' in 'cloudcomputing'.
SELECT POSITION('cloud' IN 'cloudcomputing') AS position_of_cloud;

-- Query 2: Find the position of 'e' in each employee's last name.
SELECT last_name, POSITION('e' IN last_name) AS position_of_e
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 12. LPAD and RPAD Functions:
-- Query 1: Pad the string '10' to a length of 5 by adding leading zeros.
SELECT LPAD('10', 5, '0') AS left_pad;

-- Query 2: Pad each employee's last name to 15 characters by adding '*' to the right.
SELECT last_name, RPAD(last_name, 15, '*') AS right_pad
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 13. REVERSE Function:
-- Query 1: Reverse the string 'algorithm'.
SELECT REVERSE('algorithm') AS reverse_of_word;

-- Query 2: Reverse the last names of employees.
SELECT last_name, REVERSE(last_name) AS reverse_last_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 14. FORMAT Function:
-- Query 1: Format the number 12345.6789 to 2 decimal places with commas.
SELECT FORMAT(12345.6789, 2) AS formatted_num;

-- Query 2: Format the salary of employees to include commas and 2 decimal places.
SELECT salary, FORMAT(salary, 2) AS formatted_salary
FROM employee_salary;

# -----------------------------------------------------------------------

-- 15. CAST Function:
-- Query 1: Convert the string '2024' to an integer.
SELECT CAST('2024' AS UNSIGNED) AS int_year;

-- Query 2: Convert the employee ID to a string.
SELECT employee_id, CAST(employee_id AS CHAR) AS string_employee_id
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 16. ROUND Function:
-- Query 1: Round 123.456789 to 3 decimal places.
SELECT ROUND(123.456789, 3) AS rounded_3;

-- Query 2: Round employee salaries to 1 decimal place.
SELECT salary, ROUND(salary, 1) AS rounded_salary
FROM employee_salary;

# -----------------------------------------------------------------------

-- 17. FLOOR Function:
-- Query 1: Get the largest integer less than or equal to 456.789.
SELECT FLOOR(456.789) AS floor_num;

-- Query 2: Retrieve employee salaries and get the largest integer less than or equal to each salary.
SELECT salary, FLOOR(salary) AS floored_salary
FROM employee_salary;

# -----------------------------------------------------------------------

-- 18. CEIL Function:
-- Query 1: Get the smallest integer greater than or equal to 789.123.
SELECT CEIL(789.123) AS ceil_num;

-- Query 2: Get the smallest integer greater than or equal to each employee's salary.
SELECT salary, CEIL(salary) AS ceiling_salary
FROM employee_salary;

# -----------------------------------------------------------------------

-- 19. NOW and CURDATE Functions:
-- Query 1: Get the current date.
SELECT CURDATE() AS current_date;

-- Query 2: Get the current date and time.
SELECT NOW() AS current_date_time;

# -----------------------------------------------------------------------

-- 20. DATE_FORMAT Function:
-- Query 1: Format the current date as 'Month Day, Year'.
SELECT DATE_FORMAT(NOW(), '%M %D %Y') AS formatted_date;

-- Query 2: Format birth dates as 'DD/MM/YYYY'.
SELECT birth_date, DATE_FORMAT(birth_date, '%d/%m/%Y') AS formatted_birth_date
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 21. SUBSTRING_INDEX Function:
-- Query 1: Extract the first part of a string before the '@' symbol in an email address.
SELECT SUBSTRING_INDEX('sepideh.hayati01@universitadipavia.it', '@', 1) AS username;

-- Query 2: Extract the first and last names of employees.
SELECT CONCAT(first_name, ' ', last_name) AS full_name,
SUBSTRING_INDEX(CONCAT(first_name, ' ', last_name), ' ', 1) AS extracted_first_name,
SUBSTRING_INDEX(CONCAT(first_name, ' ', last_name), ' ', -1) AS extracted_last_name
FROM employee_demographics;

# -----------------------------------------------------------------------

-- 22. REPEAT Function:
-- Query 1: Repeat the string 'abc' 4 times.
SELECT REPEAT('abc', 4);

-- Query 2: Repeat the first name of each employee twice.
SELECT first_name, REPEAT(first_name, 2) AS repeated_first_name
FROM employee_demographics;
