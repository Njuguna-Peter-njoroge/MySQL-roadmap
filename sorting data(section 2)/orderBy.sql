-- order By clause is used to sort the rows in the result set

   
   /*
       sample  syntax
        
        SELECT 
   select_list
FROM 
   table_name
ORDER BY 
   column1 [ASC|DESC], 
   column2 [ASC|DESC],
   ...;
   
   The ASC stands for ascending and the
   DESC stands for descending. 
   You use ASC to sort the result set in ascending 
   and DESC to sort the result set in descending order.
   
   
    */
    
    -- try this to sort in ascending order
    SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname;
  
  
      -- try this to sortb in desending order

  SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname DESC;
  -- NB THE ORDER BY CLAUSE IS EVALUATED AFTER THE FRON AND SELECT CLAUSES