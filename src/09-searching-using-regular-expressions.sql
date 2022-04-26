-- Chapter 9 Searching Using Regular Expressions

SELECT * FROM products WHERE prod_name REGEXP '1000';
SELECT * FROM products WHERE prod_name REGEXP '.000';

-- OR clause
SELECT * FROM products WHERE prod_name REGEXP '1000|2000';

-- search one of characters in a list
SELECT * FROM products WHERE prod_name REGEXP '[123] ton';
SELECT * FROM products WHERE prod_name REGEXP '[^123] ton';

-- range search
SELECT * FROM products WHERE prod_name REGEXP '[0-9] ton';

-- search special characters
SELECT * FROM products WHERE prod_name REGEXP '\\.';

-- predefine character set
SELECT * FROM products WHERE prod_name REGEXP '[:alnum:] ton';

-- search multiple instances
SELECT * FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)';
SELECT * FROM products WHERE prod_name REGEXP '[:digit:]{4}';

-- search position
SELECT * FROM products WHERE prod_name REGEXP '^[0-9\\.]';