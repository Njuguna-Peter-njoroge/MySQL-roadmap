-- The UPDATE statement updates data in a table. It allows you to change the values in one or more columns of a single row or multiple rows.

                 -- BASIC SYNTAX
UPDATE [LOW_PRIORITY] [IGNORE] table_name 
SET 
    column_name1 = expr1,
    column_name2 = expr2,
    ...
[WHERE
    condition];
    
     -- ON TABLE EMPLOYEE WE WILL UPDATE EMAIL FOR MARY PATTERSON 
     
     SELECT 
    firstname, 
    lastname, 
    email
FROM
    employees
    
    

WHERE
    employeeNumber = 1056;
    
    
    
    
    
    
    
    
    
    UPDATE employees 
SET 
    email = 'mary.patterson@classicmodelcars123.com'
WHERE
    employeeNumber = 1056;
    
    
    