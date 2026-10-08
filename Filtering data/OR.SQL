-- The MySQL OR operator is a logical operator that combines two Boolean expressions.
-- If both A and B are not NULL, the OR operator returns 1 (true) if either A or B is non-zero. For example:

-- try this out 

SELECT    
	customername, 
	country
FROM    
	customers
WHERE country = 'USA' OR 
      country = 'France';
      
      -- NB ( if you do not use the parentheses, the query will return the customers who locate in the USA or the customers 
      -- located in France with a credit limit greater than 100,000.)