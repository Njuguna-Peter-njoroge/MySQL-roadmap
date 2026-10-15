-- The MySQL DECIMAL data type allows you to store exact numeric values in the database

/*

To define a column whose data type is DECIMAL, you use the following syntax:

column_name DECIMAL(P,D);
In this syntax:

P is the precision that represents the number of significant digits. The range of P is 1 to 65.
D is the scale that represents the number of digits after the decimal point. The range of D is 0 and 30. MySQL requires that D is less than or equal to (<=) P.

*/

 -- TRY THIS OUT 
 CREATE TABLE materials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    cost DECIMAL(19,4) NOT NULL
);

INSERT INTO materials(description, cost) 
VALUES 
  ('Bicycle', 500.34), 
  ('Seat', 10.23), 
  ('Break', 5.21);
  
  SELECT 
    *
FROM
    materials;