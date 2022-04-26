-- Chapter 11 Using Data Manipulation Functions

-- string function
SELECT vend_name, Upper(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

-- date
SELECT cust_id, order_num
FROM orders
WHERE Date(order_date) = '2005-09-01';
SELECT cust_id, order_num
FROM orders
WHERE Year(order_date) = 2005 AND Month(order_date) = 9;