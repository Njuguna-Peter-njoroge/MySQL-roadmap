/*
 A derived table is a virtual table returned from a SELECT statement
 
 A derived table is similar to a temporary table, but using
 a derived table in the SELECT statement is much simpler than 
 a temporary table because it does not require creating a temporary table.
 */
          -- BASIC SYNTAX
          SELECT 
    select_list
FROM
    (SELECT 
        select_list
    FROM
        table_1) derived_table_name
WHERE 
    derived_table_name.c1 > 0;
    
      -- TRY THIS OUT
      -- this is a derived table
SELECT 
    productCode, 
    ROUND(SUM(quantityOrdered * priceEach)) sales
FROM
    orderdetails
        INNER JOIN
    orders USING (orderNumber)
WHERE
    YEAR(shippedDate) = 2003
GROUP BY productCode
ORDER BY sales DESC
LIMIT 5;

-- You can use the result of this query as a derived table and join
-- it with the products table as follows:
SELECT 
    productName, sales
FROM
    (SELECT 
        productCode, 
        ROUND(SUM(quantityOrdered * priceEach)) sales
    FROM
        orderdetails
    INNER JOIN orders USING (orderNumber)
    WHERE
        YEAR(shippedDate) = 2003
    GROUP BY productCode
    ORDER BY sales DESC
    LIMIT 5) top5products2003
INNER JOIN
    products USING (productCode);
