/*
A MySQL subquery is a query nested within another query such as SELECT, 
INSERT, UPDATE or DELETE. Also, a subquery can be nested within another subquery.

A MySQL subquery is called an inner query whereas the query that contains
 the subquery is called an outer query. A subquery can be used anywhere that
 expression is used and must be closed in parentheses.
*/

-- For example, the following query uses a subquery to return the employees
--  who work in the offices located in the USA.

                  -- TRY THIS OUT 
SELECT 
    lastName, firstName
FROM
    employees
WHERE
    officeCode IN (SELECT 
            officeCode
        FROM
            offices
        WHERE
            country = 'USA');