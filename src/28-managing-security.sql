-- Chapter 28 Managing Security

USE mysql;
SHOW TABLES FROM mysql;
SELECT user FROM mysql.user;

-- Add a user
CREATE USER ben IDENTIFIED BY 'sdfasdaf';
DROP USER ben;

SHOW GRANTS FOR lyrics;

SET PASSWORD FOR lyrics = Passowrd('123');