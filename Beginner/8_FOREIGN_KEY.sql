-- 07_defining foriegn Key: re-creating table or later table, then delet foreign key:

-- Drop the 'sales' table if it exists
DROP TABLE sales;

-- Create the 'sales' table
-- Stores purchase records with basic transaction details

CREATE TABLE sales
(
    purchase_nember INT NOT NULL AUTO_INCREMENT,         -- Unique ID for each purchase
    date_of_purchase DATE,                               -- Date the purchase occurred
    customer_id INT,                                     -- References the customer who made the purchase
    item_code VARCHAR(10),                               -- Code of the purchased item
    PRIMARY KEY (purchase_nember)                        -- Set purchase_nember as the primary key
);

-- Add a foreign key constraint to 'customer_id'
-- Ensures referential integrity with 'customers' table
-- Cascades deletions: if a customer is deleted, related sales are also deleted

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id) 
ON DELETE CASCADE;

-- Drop the previously added foreign key constraint
-- Useful if you're modifying or replacing the relationship

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;
