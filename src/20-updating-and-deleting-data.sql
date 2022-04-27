-- Chapter 20 Updating and Deleting Data

-- update
-- update a single column
UPDATE customers
SET cust_email = 'elmer@fudd.com'
WHERE cust_id = 10005;

-- update multiple column
UPDATE customers
SET cust_email = 'elmer@fudd.com',
    cust_name = 'The Fudds'
WHERE cust_id = 10005;

-- delete
DELETE FROM customers
WHERE cust_id = 10006;