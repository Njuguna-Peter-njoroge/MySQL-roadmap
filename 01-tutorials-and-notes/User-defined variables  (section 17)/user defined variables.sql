-- Sometimes, you want to pass a value from an SQL statement to other SQL statements within the same session.

-- To do this, you store the value in a user-defined variable in the first statement and use it in the subsequent statements.

   -- BASIC SYNTAX
   @variable_name
   
   -- To assign a value to a variable, you can use the SET statement as follows:
SET @variable_name = value;

This statement assigns the value to the @variable_name.

1) Basic user-defined variable example #

SELECT 
  MAX(msrp) INTO @msrp
FROM 
  products;
  
  SELECT @msrp;
  
  
  SELECT 
  
--   
--   2) Using a user-defined variable in a query that returns multiple values 
--   
--   
--   A user-defined variable can hold a single value. If the SELECT statement returns multiple values,
--   MySQL will issue an error and the variable will take the value of the first row in the result set:
  
  SELECT 
  buyPrice INTO @buy_price
FROM 
  products 
WHERE 
  buyPrice > 95 
ORDER BY 
  buyPrice;
  productCode, 
  productName, 
  productLine, 
  msrp 
FROM 
  products 
WHERE 
  msrp = @msrp;
  
  SELECT @buy_price;
  