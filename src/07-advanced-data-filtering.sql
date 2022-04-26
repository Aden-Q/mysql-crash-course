-- Chapter 7 Advanced Data Filtering

-- filter
SELECT * FROM products WHERE vend_id = 1003 AND prod_price <= 10;
SELECT * FROM products WHERE vend_id = 1003 OR vend_id = 1002;

-- range query
SELECT * FROM products WHERE vend_id IN (1002, 1003) ORDER BY prod_price;
SELECT * FROM products WHERE vend_id NOT IN (1002, 1003) ORDER BY prod_price;