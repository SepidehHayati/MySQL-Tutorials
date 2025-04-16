-- 09: ALTER, CHANGE, DEFAULT Demonstration

-- Step 1: Create the 'customers' table
-- Stores basic customer info

CREATE TABLE customers
(
    customer_id INT AUTO_INCREMENT,                     -- Auto-incrementing primary key
    first_name VARCHAR(255),                            -- Customer's first name
    last_name VARCHAR(255),                             -- Customer's last name
    email_address VARCHAR(255),                         -- Customer's email
    number_of_complaints INT,                           -- Number of complaints
    PRIMARY KEY (customer_id)
);

-- Step 2: Add a new column 'gender' using ENUM
-- ENUM restricts values to 'M' or 'F'

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

-- Step 3: Insert a new record with gender, email, and complaints
-- ⚠️ Note: Gender value 'm' (lowercase) does not match ENUM('M','F') and will cause an error in MySQL

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'm', 'john.mckinley@365careers.com', 0);

-- Step 4: Modify 'number_of_complaints' to have a default value of 0
-- This allows inserting rows without specifying a value

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

-- Step 5: Insert another customer without specifying email or complaints
-- 'number_of_complaints' defaults to 0

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Ali', 'Ahmadi', 'M');

-- Step 6: View all records in the table

SELECT * 
FROM customers;

-- Step 7: Remove the default value from 'number_of_complaints'
-- From now on, it must be explicitly provided unless NULL is allowed

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;
