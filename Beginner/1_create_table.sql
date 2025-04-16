-- 03_Create a Table:

-- Table: sales
-- This table stores individual purchase records.

CREATE TABLE sales 
(
    purchase_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each purchase, auto-incremented
    date_of_purchase DATE NOT NULL,                      -- Date the purchase was made
    customer_id INT,                                     -- ID of the customer who made the purchase
    item_code VARCHAR(10) NOT NULL                       -- Code representing the item purchased
);

-- Table: customers
-- This table stores customer information.

CREATE TABLE customers 
(
    customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each customer, auto-incremented
    first_name VARCHAR(255) NOT NULL,                    -- Customer's first name
    last_name VARCHAR(255) NOT NULL,                     -- Customer's last name
    email_address VARCHAR(255) NOT NULL,                 -- Customer's email address
    number_of_complaints INT                             -- Total number of complaints the customer has made
);

    