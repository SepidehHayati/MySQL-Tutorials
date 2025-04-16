-- 05_drop or delete a table:


-- Step 1: Create the 'sales' table
-- This table is used to store sales transactions
CREATE TABLE sales 
(
    purchase_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each purchase
    date_of_purchase DATE NOT NULL,                      -- Date of the purchase
    customer_id INT,                                     -- ID of the customer who made the purchase
    item_code VARCHAR(10) NOT NULL                       -- Code representing the item sold
);

-- Step 2: Drop the 'sales' table
-- This command permanently deletes the 'sales' table and all of its data

DROP TABLE sales;