-- The LIMIT clause is used in the SELECT statement to constrain the number of rows to return

-- TRY THIS OUT
SELECT 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC
LIMIT 5;