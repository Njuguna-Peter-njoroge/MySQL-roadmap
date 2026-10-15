-- The CHAR data type is a fixed-length character type in MySQL. You often declare the CHAR type with a length that specifies the maximum number of characters
--  that you want to store. For example, CHAR(20) can hold up to 20 characters.

-- The length of the CHAR data type can be any value from 0 to 255

             -- TRY THIS OUT 
	CREATE TABLE mysql_char_test (
    status CHAR(3)
);


INSERT INTO mysql_char_test(status)
VALUES('Yes'),('No');

SELECT 
    status, 
    LENGTH(status)
FROM
    mysql_char_test;
    