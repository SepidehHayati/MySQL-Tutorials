#Data Analyst Bootcamp with Alex Freberg
  #Video 11 on YouTube Channel
  #Intermediate MySQL Series
  #Lesson: String Function


# LENGTH function:
# The LENGTH function returns the number of characters in a string.
# In this query, we are checking the length of the string 'skyfall'.
SELECT LENGTH('skyfall');

# The next query retrieves the first name of employees and calculates
# the length of each first name, then orders the results by name length.
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

# This query retrieves the birth dates of employees and calculates
# the length of each birth date (likely in 'YYYY-MM-DD' format).
SELECT birth_date, LENGTH(birth_date)
FROM employee_demographics;

# -----------------------------------------------------------------------
# UPPER and LOWER functions:
# The UPPER function converts a string to uppercase.
# Here, we convert the string 'sky' to 'SKY'.
SELECT UPPER('sky');

# The LOWER function converts a string to lowercase.
# Here, we convert the string 'SKY' to 'sky'.
SELECT LOWER('SKY');

# This query retrieves the first name of employees and converts each first name to uppercase.
SELECT first_name, UPPER(first_name)
FROM employee_demographics;

# Similarly, this query converts each first name to lowercase.
SELECT first_name, LOWER(first_name)
FROM employee_demographics;

# -----------------------------------------------------------------------
# TRIM functions:
# The TRIM function removes leading and trailing spaces from a string.
# In this query, we demonstrate how TRIM removes spaces around 'sky'.
SELECT TRIM('      sky      ');

# RTRIM removes only trailing spaces, and LTRIM removes leading spaces.
SELECT RTRIM('      sky      ');
SELECT LTRIM('      sky      ');

# -----------------------------------------------------------------------
# LEFT and RIGHT functions:
# The LEFT function extracts a number of characters from the start of a string.
# This query extracts the first 4 characters from each first name.
SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;

# The RIGHT function extracts a number of characters from the end of a string.
# Here, we extract the last 4 characters of each first name.
SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics;

# -----------------------------------------------------------------------
# SUBSTRING function:
# The SUBSTRING function extracts a part of a string starting from a specified position.
# This query extracts two characters from each first name, starting from the 3rd position.
SELECT first_name, 
SUBSTRING(first_name, 3, 2)
FROM employee_demographics;

# We also apply the SUBSTRING function to birth dates, extracting the birth month.
SELECT birth_date, 
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

# -----------------------------------------------------------------------
# REPLACE function:
# The REPLACE function replaces all occurrences of a substring within a string.
# Here, we replace all instances of the letter 'a' with 'z' in employee first names.
SELECT first_name, REPLACE(first_name, 'a', 'z') AS Replaced
FROM employee_demographics;

# -----------------------------------------------------------------------
# LOCATE function:
# The LOCATE function finds the position of a substring within a string.
# This query returns the position of 'S' in the string 'Sepideh'.
SELECT LOCATE('S', 'Sepideh') AS Location_of_S;

# This query finds the position of the substring 'An' in employee first names.
SELECT first_name, LOCATE('An', first_name) AS Location_of_An
FROM employee_demographics;

# -----------------------------------------------------------------------
# CONCAT function:
# The CONCAT function concatenates (joins) two or more strings.
# Here, we combine the first and last names of employees into a full name.
SELECT first_name, last_name, 
CONCAT(first_name, ' ', last_name) AS FullName
FROM employee_demographics;

# -----------------------------------------------------------------------
# CONCAT_WS function:
# The CONCAT_WS() function works like CONCAT(), but it allows you to specify a separator between each string.
# Combine first name and last name, separated by a comma and space.
SELECT first_name, last_name, 
CONCAT_WS(', ', first_name, last_name) AS FullName
FROM employee_demographics;

# -----------------------------------------------------------------------
# CHAR_LENGTH function:
# The CHAR_LENGTH function returns the length of a string in terms of the number of characters.
# It is similar to LENGTH(), but works better with multi-byte characters like accented letters or special symbols.
SELECT first_name, CHAR_LENGTH(first_name) AS name_length
FROM employee_demographics;

# -----------------------------------------------------------------------
# POSITION function:
# The POSITION function finds the position of a substring in a string.
# Find the position of 'sky' in the string 'skyfall'.
SELECT POSITION('sky' IN 'skyfall') AS Position;

# -----------------------------------------------------------------------
# LPAD and RPAD functions:
# LPAD pads a string on the left with a specified character until the string reaches a given length.
# RPAD pads on the right.
# Pad employee IDs to ensure they are 6 characters long by adding leading zeros.
SELECT employee_id, 
LPAD(employee_id, 6, '0') AS PaddedID
FROM employee_demographics;

# Pad the first name to 10 characters by adding dashes ('-') to the right.
SELECT first_name, 
RPAD(first_name, 10, '-') AS PaddedName
FROM employee_demographics;

# -----------------------------------------------------------------------
# REVERSE function:
# The REVERSE function reverses the characters in a string.
# Reverse the characters of first names.
SELECT first_name, REVERSE(first_name) AS ReversedName
FROM employee_demographics;

# -----------------------------------------------------------------------
# FORMAT function:
# The FORMAT function formats a number to include commas as thousands separators and rounds it to a specified number of decimal places.
# Format a salary value to 2 decimal places with commas.
SELECT FORMAT(1234567.8910, 2) AS FormattedSalary;

# -----------------------------------------------------------------------
# CAST function:
# The CAST function converts a value from one data type to another.
# Convert birth year from string to integer.
SELECT first_name, birth_year, 
CAST(birth_year AS UNSIGNED) AS BirthYearInt
FROM employee_demographics;

# -----------------------------------------------------------------------
# ROUND function:
# Rounds a number to the specified number of decimal places.
# ROUND example: Round salary values to 2 decimal places.
SELECT salary, ROUND(salary, 2) AS RoundedSalary
FROM employee_salaries;

# -----------------------------------------------------------------------
# FLOOR function:
# Returns the largest integer less than or equal to a number.
# FLOOR example: Get the largest integer less than or equal to the salary.
SELECT salary, FLOOR(salary) AS FlooredSalary
FROM employee_salaries;

# -----------------------------------------------------------------------
# CEIL function:
# Returns the smallest integer greater than or equal to a number.
# CEIL example: Get the smallest integer greater than or equal to the salary.
SELECT salary, CEIL(salary) AS CeiledSalary
FROM employee_salaries;

# -----------------------------------------------------------------------
# NOW function:
# Returns the current date and time.
# NOW example: Get the current date and time.
SELECT NOW() AS CurrentDateTime;

# -----------------------------------------------------------------------
# CURDATE function:
# Returns the current date without the time.
# CURDATE example: Get the current date only.
SELECT CURDATE() AS CurrentDate;

# -----------------------------------------------------------------------
# DATE_FORMAT function:
# Formats a date based on the specified format.
# DATE_FORMAT example: Format birth dates to 'Month Day, Year'.
SELECT birth_date, DATE_FORMAT(birth_date, '%M %d, %Y') AS FormattedBirthDate
FROM employee_demographics;

# -----------------------------------------------------------------------
# SUBSTRING_INDEX function:
# Extracts a substring from a string before or after a specific delimiter.
# Extract the first name from full names (assuming names are stored as "FirstName LastName").
SELECT full_name, SUBSTRING_INDEX(full_name, ' ', 1) AS FirstName
FROM employee_demographics;

# Extract the last name from full names.
SELECT full_name, SUBSTRING_INDEX(full_name, ' ', -1) AS LastName
FROM employee_demographics;

# -----------------------------------------------------------------------
# REPEAT function:
# The REPEAT function repeats a string a specified number of times.
# Repeat the string 'hello' three times.
SELECT REPEAT('hello', 3) AS RepeatedString;
