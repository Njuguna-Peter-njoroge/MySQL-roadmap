-- IN operator allows you to determine if a value matches any value in a list of values.
   -- basic syntax 
   
   -- value IN (value1, value2, value3,...)
   
   -- try this out 
   SELECT 
    officeCode, 
    city, 
    phone, 
    country
FROM
    offices
WHERE
    country IN ('USA' , 'France');