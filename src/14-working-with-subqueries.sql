-- Chapter 14 Working with Subqueries

-- subquery
SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN
    (SELECT cust_id
    FROM orders
    WHERE order_num IN
        (SELECT order_num
        FROM orderitems
        WHERE prod_id = 'TNT2'));

SELECT cust_name, cust_state,
    (SELECT COUNT(*)
    FROM orders
    WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers;