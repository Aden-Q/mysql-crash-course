-- Chapter 15 Joining Tables

-- join
DESCRIBE vendors;
DESCRIBE products;
SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id
ORDER BY vend_name, prod_name;

SELECT vend_name, prod_name, prod_price
FROM vendors, products
ORDER BY vend_name, prod_name;

-- inner join
SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products
ON vendors.vend_id = products.vend_id
ORDER BY vend_name, prod_name;

-- inner join multiple tables
SELECT prod_name, vend_name, prod_price, quantity
FROM orderitems, products, vendors
WHERE products.prod_id = orderitems.prod_id
    AND products.vend_id = vendors.vend_id
    AND order_num = 20005;