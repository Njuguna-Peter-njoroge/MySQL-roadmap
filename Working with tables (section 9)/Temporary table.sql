-- TEMPORARY TABLES IS A SPECIAL TYPE OF TABLE THAT 
-- ALLOWS YOU TO SOTE A TEMPORARY RESULT SET , WHICH YOU CAN
--  RESUSE SEREVAL TIMES IN A SINGLE SESSION


-- MySQL CREATE TEMPORARY TABLE statement #

-- BASIC SYNTAX
/*
CREATE TEMPORARY TABLE table_name(
   column1 datatype constraints,
   column1 datatype constraints,
   ...,
   table_constraints
);
*/
    -- TRY THIS OUT
    
CREATE TEMPORARY TABLE credits(
  customerNumber INT PRIMARY KEY, 
  creditLimit DEC(10, 2)
);

INSERT INTO credits(customerNumber, creditLimit)

SELECT 
  customerNumber, 
  creditLimit 
FROM 
  customers 
WHERE 
  creditLimit > 0;
  
    -- DROPPING TEMPORARY TABLES
    DROP TEMPORARY TABLE credits;