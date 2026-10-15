/*
The EXISTS operator is a boolean operator that returns 
either true or false. The EXISTS operator is often used to test
 for the existence of rows returned by the subquery.
*/

   -- BASIC SYNTAX
SELECT 
    select_list
FROM
    a_table
WHERE
    [NOT] EXISTS(subquery);
    
    -- TRY THIS OUT 
    SELECT 
    customerNumber, 
    customerName
FROM
    customers
WHERE
    EXISTS(
	SELECT 
            1
        FROM
            orders
        WHERE
            orders.customernumber 
		= customers.customernumber);
        
        -- The following example uses the NOT EXISTS operator to
        -- find customers who do not have any orders:


        SELECT 
    customerNumber, 
    customerName
FROM
    customers
WHERE
    NOT EXISTS( 
	SELECT 
            1
        FROM
            orders
        WHERE
            orders.customernumber = customers.customernumber
	);