/*
The HAVING clause is used with the GROUP BY clause to filter the
 groups based on a specified condition.
 
 The HAVING clause allows you to apply a condition to the
 groups returned by the GROUP BY clause and only include groups 
 that meet the specified condition.
 */
 
            -- BASIC SYNTAX
SELECT 
    select_list
FROM 
    table_name
WHERE 
    search_condition
GROUP BY 
    group_by_expression
HAVING 
    group_condition;
 
        -- TRY IT OUT 
        SELECT 
  ordernumber, 
  SUM(quantityOrdered) AS itemsCount, 
  SUM(priceeach * quantityOrdered) AS total 
FROM 
  orderdetails 
GROUP BY 
  ordernumber 
HAVING 
  total > 1000;