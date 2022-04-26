-- Chapter 13 Grouping Data

-- group by
DESCRIBE products;
SELECT * FROM products;
SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

-- filter group
SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id
HAVING num_prods >= 3;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 10
GROUP BY vend_id
HAVING num_prods >= 3;

SELECT order_num, SUM(quantity * item_price) AS order_price
FROM orderitems
GROUP BY order_num
HAVING order_price >= 50
ORDER BY order_price;