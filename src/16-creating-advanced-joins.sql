-- Chapter 16 Creating Advanced Joins

-- advanced joins
SELECT prod_id, prod_name
FROM products
WHERE vend_id = 
    (SELECT vend_id
    FROM products
    WHERE prod_id = 'DTNTR');

SELECT p1.prod_id, p2.prod_name
FROM products AS p1, products AS p2
WHERE p1.vend_id = p2.vend_id
    AND p2.prod_id = 'DTNTR';

-- outer join
SELECT customers.cust_id, orders.order_num
FROM customers LEFT OUTER JOIN orders
    ON customers.cust_id = orders.cust_id;

SELECT customers.cust_name, customers.cust_id, COUNT(orders.order_num) AS num_orders
FROM customers LEFT OUTER JOIN orders
ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;