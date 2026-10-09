/*
In MySQL, a storage engine is a software component responsible for managing how data is stored, retrieved,
 and manipulated within tables. A storage engine also determines the underlying structure and features of the tables.

MySQL supports multiple storage engines, each has its own set of features. To find the available storage engines
 on your MySQL server, you can use the following query:
 */

use classicmodels;

SELECT 
  engine, 
  support 
FROM 
  information_schema.engines 
ORDER BY 
  engine;
  
  SHOW ENGINES;