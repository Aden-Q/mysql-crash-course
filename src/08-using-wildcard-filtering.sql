-- Chapter 8 Using Wildcard Filtering

-- search pattern
-- any number characters
SELECT * FROM products WHERE prod_name LIKE 'Jet%';
SELECT * FROM products WHERE prod_name LIKE '%anvil%';

-- one arbitrary character
SELECT * FROM products WHERE prod_name LIKE '_ ton anvil';