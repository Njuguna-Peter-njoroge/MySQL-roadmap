-- wHEN ONE IS QUERING DATA FROM A TABLE ,TO AVOID GETTING DUPLICATE ROWS WE USE THE DISTINCT CLAUSE

                       -- BASIC SYNTAX
                       /*
                       SELECT DISTINCT
    select_list
FROM
    table_name
WHERE 
    search_condition
ORDER BY 
    sort_expression;
                       */
                       
                       -- TRY THIS OUT
                       SELECT 
    lastname
FROM
    employees
ORDER BY 
    lastname;
    
    -- THIS RETURNS SOME EMPLOYEES WHO HAVE THE SAME LAST NAMES e.g.,Bondur,Firrelli
    
    -- TRY THIS OUT
    SELECT 
    DISTINCT lastname
FROM
    employees
ORDER BY 
    lastname;
    
    -- THIS NOW REMOVES DUPLICATE LAST NAMES FROM THE RESULT