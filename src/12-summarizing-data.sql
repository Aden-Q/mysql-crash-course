-- Chapter 12 Summarizing Data

-- aggregate functions
DESCRIBE products;

-- average
SELECT AVG(prod_price) AS avg_price
FROM products;

-- count
SELECT COUNT(*) AS num_cust
FROM customers;

-- max
SELECT MAX(prod_price) AS max_price
FROM products;

-- sum
SELECT SUM(prod_price) AS sum_price
FROM products;

-- composite
SELECT COUNT(*) AS num_items,
    MIN(prod_price) AS price_min,
    MAX(prod_price) AS price_max,
    AVG(prod_price) AS price_avg
FROM products;