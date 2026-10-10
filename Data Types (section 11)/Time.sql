-- MySQL uses the 'HH:MM:SS' format for querying and displaying a time value that represents a time of day, which is within 24 hours. 

   -- BASIC SYNTAX
   
   
   CREATE TABLE tests (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    start_at TIME,
    end_at TIME
);

INSERT INTO tests(name,start_at,end_at)
VALUES('Test 1', '08:00:00','10:00:00');

SELECT 
    name, start_at, end_at
FROM
    tests;