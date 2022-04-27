-- Chapter 24 Using Cursors

-- using cursors
CREATE PROCEDURE processorders()
BEGIN
    -- Delcare local variable
    DECLARE o INT;

    -- Create a cursor
    DECLARE ordernumbers CURSOR
    FOR
    SELECT order_num FROM orders;

    -- Open the cursor
    OPEN ordernumbers;

    -- Fetch some data
    FETCH ordernumbers INTO o;

    -- Close the cursor
    CLOSE ordernumbers;
END;