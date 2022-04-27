-- Chapter 21 Creating and Manipulating Tables

-- update table
ALTER TABLE vendors
ADD vend_phone CHAR(20);

-- delete a column
ALTER TABLE vendors
DROP vend_phone;

-- delete table
DROP TABLE customers2;

-- rename table
RENAME TABLE customers TO customers;