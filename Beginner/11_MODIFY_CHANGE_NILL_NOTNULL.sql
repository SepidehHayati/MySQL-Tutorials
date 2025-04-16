-- 10: Describing Constraints - NULL, NOT NULL using MODIFY and CHANGE

-- First Approach: Using `MODIFY` to change column constraints

-- Drop the 'companies' table if it already exists
DROP TABLE companies;

-- Create the 'companies' table with various constraints
CREATE TABLE companies (
    company_id VARCHAR(255) DEFAULT 'X',                 -- Default value set to 'X'
    company_name VARCHAR(255) NOT NULL,                  -- Must always have a value
    headquarters_phone_number VARCHAR(255),              -- Can be NULL initially
    UNIQUE KEY (headquarters_phone_number),              -- Phone number must be unique
    PRIMARY KEY (company_id)                             -- Primary key constraint on company_id
);

-- Change 'company_name' to allow NULL values using `MODIFY`
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

-- ---------------------------------------------------------------

-- Second Approach: Using `CHANGE` to re-define column with new constraint

-- Make 'company_name' NOT NULL again using `CHANGE`
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

-- Add a NOT NULL constraint to 'headquarters_phone_number'
ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NOT NULL;

-- Remove the NOT NULL constraint (make it nullable again)
ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NULL;
