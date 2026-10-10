-- JSON stands for “JavaScript Object Notation”. JSON is a lightweight data-interchange format that is easy for humans to read and write and simple for computers to parse and generate.

-- JSON is built on two data structures: objects and arrays.

-- Objects 
-- An object is an unordered collection of key-value pairs enclosed in curly braces {}. Each key is a string, followed by a colon (:), and then the associated value. 

-- - BASIC SYNTAX
  {
    "name": "John Doe",
    "age": 22
}  


Arrays 
An array is an ordered list of values closed in square brackets []. An array may contain values of any valid JSON data type, including objects and other arrays. For example


SHOW TABLES
CREATE TABLE productses(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   price DECIMAL(10,2) NOT NULL,
   properties JSON
);


INSERT INTO productses(name, price, properties)
VALUES('T-Shirt', 25.99, '{"sizes":["S","M","L","XL"], "colors": ["white","black"]}');



SELECT name, properties 
FROM productses
where id = 2;



DESC products;
