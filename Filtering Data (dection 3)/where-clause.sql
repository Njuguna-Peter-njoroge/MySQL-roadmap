-- WHERE clause allows you to specify a search condition for rows returned by a query

                      -- basic syntax
    /* 
    SELECT 
    select_list
FROM
    table_name
WHERE
    search_condition;
    
    */
    
     -- try this out 
     
     SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';
    
    -- it returns employees whose jobTitle is sales Rep
    
    
-- The WHERE clause can combine multiple filters using logical and comparison operators.
-- This allows you to check for ranges, patterns, lists, or missing data using:
-- AND, OR, BETWEEN, LIKE, IN, IS NULL, and comparison operators (=, <>, >, <).





-- 1 using AND & OR conditons

     
     SELECT firstname, lastname, jobtitle 
FROM employees
WHERE jobtitle = 'Sales Rep' AND lastname = 'Smith';



-- 2 . Using IN
SELECT firstname, lastname, jobtitle 
FROM employees
WHERE jobtitle IN ('Sales Rep', 'VP Sales', 'Sales Manager');


-- 3 . Using LIKE 
SELECT firstname, lastname, jobtitle 
FROM employees
WHERE jobtitle LIKE 'Sales%'; -- Finds 'Sales Rep', 'Sales Manager', etc.

-- 4  Using BETWEEN
SELECT productName, price 
FROM products
WHERE price BETWEEN 10 AND 50; -- Includes 10 and 50

-- 5 Using IS NULL 
SELECT firstname, lastname, extension 
FROM employees
WHERE extension IS NULL;

  