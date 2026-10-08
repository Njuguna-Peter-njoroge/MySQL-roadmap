/*
Group by clause groups rows into summary rows based on column
 values or expressions
 
 It returns one row for each group and reduces the number
 of rows in the result set.
 
 In practice, you often use the GROUP BY clause with aggregate functions
 such as SUM, AVG, MAX, MIN, and COUNT. The aggregate function that appears 
 in the SELECT clause provides the information for each group.
 
 An aggregate function calculates a set of rows and returns a single value.
 */
     -- BASIC SYNTAX
     
     /*
     SELECT 
    c1, c2,..., cn, aggregate_function(ci)
FROM
    table_name
WHERE
    conditions
GROUP BY c1 , c2,...,cn;

*/
     -- TRY THIS OUT
     
SELECT 
  status 
FROM 
  orders 
GROUP BY 
  status;
  
         -- TRY THIS OUT
  SELECT 
  status, 
  COUNT(*)  as TOTAL
FROM 
  orders 
GROUP BY 
  status;
  
  -- USIGN AGGREGATE FUNCTION 
  
  SELECT 
  status, 
  SUM(quantityOrdered * priceEach) AS amount 
FROM 
  orders 
  INNER JOIN orderdetails USING (orderNumber) 
GROUP BY 
  status;
