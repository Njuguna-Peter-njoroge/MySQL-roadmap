-- MySQL DATE is one of the five temporal data types used for managing date values.
 -- MySQL uses yyyy-mm-dd format for storing a date value. This format is fixed and it is not possible to change it.
 
 CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL
);


INSERT INTO people(first_name,last_name,birth_date)
VALUES('John','Doe','1990-09-01');

SELECT 
    first_name, 
    last_name, 
    birth_date
FROM
    people;