-- Chapter 22 Using Views

-- create view
CREATE VIEW productcustomers AS
SELECT cust_name, cust_contact, prod_id
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orders.order_num = orderitems.order_num;

SELECT * FROM productcustomers;

SELECT * FROM productcustomers
WHERE prod_id = 'TNT2';

CREATE VIEW customeremaillist AS
SELECT cust_id, cust_name, cust_email
FROM customers
WHERE cust_email IS NOT NULL;

SELECT * FROM customeremaillist;