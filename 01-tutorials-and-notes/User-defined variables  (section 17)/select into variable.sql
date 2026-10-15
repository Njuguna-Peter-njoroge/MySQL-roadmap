To store the result set of a query in one or more variables, you use the SELECT INTO variable statement.

     -- BASIC SYNTAX
SELECT 
    c1, c2, c3, ...
INTO 
    @v1, @v2, @v3,...
FROM 
    table_name
WHERE 
    condition;
    
   --  c1, c2, and c3 are columns or expressions that you want to store in variables.
-- @v1, @v2, and @v3 are the variables that store the values from c1, c2, and c3.

SELECT 
    city
INTO
    @city
FROM 
    customers
WHERE 
    customerNumber = 103;
    
    SELECT @city;