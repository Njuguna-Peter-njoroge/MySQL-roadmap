-- column aliases is used  to assign a temporary name to a column in the query’s result set.

      -- basic illustration
      /*
      SELECT 
   [column_1 | expression] AS descriptive_name
FROM table_name;

*/

-- TRY THIS OUT

SELECT
   CONCAT_WS(', ', lastName, firstname) AS `Full name`
FROM
   employees;
   
   -- THIS FIRST CONCATS THE NAMES AND THEN ASSIGNED AN ALIAS 'FULL NAME' FOR EASY REFERENCE
   
   -- THERE IS ALSO TABLE ALIASES SIMILAR TO COLUMN ALIASES
   
   
   -- TRY THIS OUT 
   
   SELECT * FROM employees e;
   
   -- AFTER ASSIGNNING IT 'e' YOU CAN USE IT THIS WAY
   SELECT 
    e.firstName, 
    e.lastName
FROM
    employees e
ORDER BY e.firstName;
   
   