-- 06_defining Primary Key:
-- Select the 'sales' database
USE sales;

-- Create the 'sales' table
-- Stores individual purchase transactions

CREATE TABLE sales
(
    purchase_nember INT NOT NULL AUTO_INCREMENT,         -- Unique purchase ID, auto-incremented
    date_of_purchase DATE,                               -- Date of the purchase
    customer_id INT,                                     -- ID of the customer who made the purchase
    item_code VARCHAR(10),                               -- Code representing the purchased item
    PRIMARY KEY (purchase_nember)                        -- Define primary key separately (alternative to inline declaration)
);

-- Drop 'customers' table if it exists (for resetting schema)
DROP TABLE customers;

-- Create the 'customers' table
-- Stores basic customer information

CREATE TABLE customers 
(
    customer_id INT,                                     -- Unique customer ID
    first_name VARCHAR(255),                             -- Customer's first name
    last_name VARCHAR(255),                              -- Customer's last name
    email_address VARCHAR(255),                          -- Customer's email address
    number_of_complaint INT,                             -- Total number of complaints made by the customer
    PRIMARY KEY (customer_id)                            -- Set customer_id as primary key
);

-- Drop 'items' table if it exists
DROP TABLE items;

-- Create the 'items' table
-- Stores product details

CREATE TABLE items
(
    item_code VARCHAR(255),                              -- Unique item code
    item VARCHAR(255),                                   -- Item name or description
    unit_price NUMERIC(10,2),                            -- Unit price of the item (e.g., 99999999.99 max)
    company_id VARCHAR(255),                             -- ID of the company that produces the item
    PRIMARY KEY (item_code)                              -- Set item_code as primary key
);

-- Drop 'companies' table if it exists
DROP TABLE companies;

-- Create the 'companies' table
-- Stores company information

CREATE TABLE companies
(
    company_id VARCHAR(255),                             -- Unique identifier for the company
    company_name VARCHAR(255),                           -- Name of the company
    headquarters_phone_number INT(12),                   -- Company's HQ phone number (note: INT has limitations)
    PRIMARY KEY (company_id)                             -- Set company_id as primary key
);
