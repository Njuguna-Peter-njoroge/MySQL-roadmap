-- A common table expression is a named temporary result set that exists solely within the execution scope of a single SQL statement, such as SELECT, INSERT, UPDATE, or DELETE.
    -- BASIC SYNTAX
    /*
    WITH cte_name (column_list) AS (
    query
) 
SELECT * FROM cte_name;

WITH cte_name (column_list) AS: define a CTE with the name cte_name and a list of columns (column_list) that the CTE will have. The column_list is optional if you don’t 
specify column_list, the CTE will inherit the column names from the result of the query.


query: This is the query that defines the CTE. MySQL will store the result of the query in the CTE.
SELECT * FROM cte_name: This is an example of how you can use the CTE. In this case, it is a simple SELECT statement that retrieves all columns from the CTE.
*/


         -- TRY THIS OUT
use classicModels;
WITH customers_in_usa AS (
    SELECT 
        customerName, state
    FROM
        customers
    WHERE
        country = 'USA'
) SELECT 
    customerName
 FROM
    customers_in_usa
 WHERE
    state = 'CA'
 ORDER BY customerName;
 
 
 
