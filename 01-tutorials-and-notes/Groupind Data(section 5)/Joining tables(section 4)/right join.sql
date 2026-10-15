-- MySQL RIGHT JOIN is similar to LEFT JOIN, except that the 
-- treatment of the joined tables is reversed.

     -- BASIC SYNTAX
     
     /*
     SELECT 
    select_list
FROM t1
RIGHT JOIN t2 ON 
    join_condition;
    
    */
    
    
    -- TRY THIS OUT 
    SELECT 
    employeeNumber, 
    customerNumber
FROM
    customers
RIGHT JOIN employees 
    ON salesRepEmployeeNumber = employeeNumber
ORDER BY 
	employeeNumber;