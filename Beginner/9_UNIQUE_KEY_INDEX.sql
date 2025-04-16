-- 08: Unique Key and Index Demonstration

-- Create 'customers' table with a UNIQUE constraint on 'email_address'
-- Ensures no duplicate email addresses are inserted

CREATE TABLE customers 
(
    customer_id INT,                                    -- Unique ID for each customer
    first_name VARCHAR(255),                            -- First name of the customer
    last_name VARCHAR(255),                             -- Last name of the customer
    email_address VARCHAR(255),                         -- Customer's email address (must be unique)
    number_of_complaints INT,                           -- Number of complaints made by the customer
    PRIMARY KEY (customer_id),                          -- Set customer_id as the primary key
    UNIQUE KEY (email_address)                          -- Enforce unique constraint on email_address
);

-- ------------------------------------------------

-- Drop the 'customers' table (for resetting schema)
DROP TABLE customers;

-- Re-create the 'customers' table without a unique key
CREATE TABLE customers 
(
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

-- ------------------------------------------------

-- Add a UNIQUE constraint to the 'email_address' column
-- Prevents duplicate email values after table creation

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

-- ------------------------------------------------

-- Drop the unique index on 'email_address'
-- Index name may be system-generated (e.g., 'email_address_2')

ALTER TABLE customers
DROP INDEX email_address_2;

-- ------------------------------------------------

-- Drop the 'customers' table again (cleanup or reset)

DROP TABLE customers;
