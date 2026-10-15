-- In MySQL, a primary key is a column or a set of columns that uniquely 
-- identifies each row in the table. A primary key column must contain unique values.

-- Here’s the syntax for defining the primary key that consists of one column:

/*
	CREATE TABLE table_name(
   column1 datatype PRIMARY KEY,
   column2 datatype, 
   ...
);
*/

CREATE TABLE products(
   id INT PRIMARY KEY,
   name VARCHAR(255) NOT NULL
);

-- here the line id IS THE PROMARY KEY
