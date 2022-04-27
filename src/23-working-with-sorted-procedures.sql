-- Chapter 23 Working with Sorted Procedures

-- create procedure
CREATE PROCEDURE productpricing()
BEGIN
    SELECT Avg(prod_price) AS priceaverage
    FROM products;
END;

-- invoke procedure
CALL productpricing();

-- delete procedure
DROP PROCEDURE IF EXISTS productpricing;

CREATE PROCEDURE productpricing(
    OUT pl DECIMAL(8, 2),
    OUT ph DECIMAL(8, 2),
    OUT pa DECIMAL(8, 2)
)
BEGIN
    SELECT Min(prod_price)
    INTO pl
    FROM products;
    SELECT Max(prod_price)
    INTO ph
    FROM products;
    SELECT Avg(prod_price)
    INTO pa
    FROM products;
END;

CALL productpricing(
    @pricelow,
    @pricehigh,
    @priceaverage);

SELECT @pricelow;
SELECT @pricehigh;
SELECT @priceaverage;

SHOW CREATE PROCEDURE productpricing;