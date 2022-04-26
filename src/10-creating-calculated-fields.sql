-- Chapter 10 Creating Calculated Fields

-- concatenation
DESCRIBE vendors;
SELECT Concat(vend_name, '(', vend_country, ')')
FROM vendors
ORDER BY vend_name;

-- triming
SELECT Concat(RTrim(vend_name), '(', Rtrim(vend_country), ')')
FROM vendors
ORDER BY vend_name;

-- alias
SELECT Concat(RTrim(vend_name), '(', Rtrim(vend_country), ')') AS vend_title
FROM vendors
ORDER BY vend_name;

-- calculation
DESCRIBE orderitems;
SELECT prod_id, quantity, item_price, quantity * item_price AS total_price
FROM orderitems;