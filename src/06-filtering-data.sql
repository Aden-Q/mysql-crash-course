-- Chapter 6 Filtering Data

-- filter
SELECT prod_name, prod_price FROM products WHERE prod_price = 2.50;
SELECT prod_name, prod_price FROM products WHERE prod_price < 10;
SELECT prod_name, prod_price FROM products WHERE prod_price <> 2.50;
SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 and 10;
SELECT prod_name, prod_price FROM products WHERE prod_price IS NULL;



