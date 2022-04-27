-- Chapter 25 Using Triggers

-- Create a trigger
CREATE TRIGGER IF NOT EXISTS newproduct AFTER INSERT ON products
FOR EACH ROW SELECT 'Product added';

-- Delete a trigger
DROP TRIGGER IF EXISTS newproduct

CREATE TRIGGER neworder AFTER INSERT ON orders
FOR EACH ROW SELECT NEW.order_num;

INSERT INTO orders(order_date, cust_id)
VALUES(Now(), 10001);