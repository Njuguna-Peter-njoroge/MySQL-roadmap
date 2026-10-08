-- The LEFT JOIN clause selects data starting from the left table (t1),
 -- matching each row from the left table (t1) with every corresponding row from
 -- the right table(t2) based on the join_condition.
 
 /*
 
 If a row from the left table (t1) does not match with any row from the right table(t2), 
 the left join still combines columns of rows from both tables into a new row and includes 
 the new row in the result set. However, it fills in the columns of the row from the right table
 with the NULL values.
 
 In essence, the LEFT JOIN returns all rows from the left table,
 irrespective of whether a matching row from the right table 
exists or not.
 
*/

SELECT 
    customers.customerNumber, 
    customerName, 
    orderNumber, 
    status
FROM
    customers
LEFT JOIN orders ON 
    orders.customerNumber = customers.customerNumber;