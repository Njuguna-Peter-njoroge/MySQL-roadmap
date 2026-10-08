-- SELECT from  STATEMENT
-- allows you to select data from one or more tables
         -- SYNTAX
         
		/*
        select select_list
        from table_name;
        
        - elect_list you specify one or more columns form which you want to slect data 
        - table name - name of the table
        */
          -- try this out
          -- remember to first download the sample database 'classicmodels' from mysql tutorial
          
        -- test 1
SELECT lastName
FROM employees;

-- test 2
SELECT 
    lastName, 
    firstName, 
    jobTitle
FROM
    employees;