-- The BIT data type that allows you to store bit values, which are 0 and 1.
-- The BIT(n) can store up to n-bit values. The n can range from 1 to 64. 
-- The default value of n is 1 if you skip it

            -- BASIC SYNTAX
            column_name BIT(n)
             
             
             -- TRY THIS OUT 
	CREATE TABLE working_calendars(
    year INT,
    week INT,
    days BIT(7),
    PRIMARY KEY(year,week)
);

INSERT INTO working_calendars(year,week,days)
VALUES(2017,1,B'1111100');

SELECT 
    year, week, days
FROM
    working_calendars;