-- The VARBINARY data type is used to store variable-length binary data. It is similar to
--  the BINARY data type but allows you to store binary data of variable length.

   -- BASIC SYNTAX column_name VARBINARY(max_length)
   
-- In practice, you often use the VARBINARY data type for storing variable binary data such as small images, audio files, and other non-textual data.


CREATE TABLE varbinary_demo(
   id INT AUTO_INCREMENT PRIMARY KEY,
   data VARBINARY(256)
);

INSERT INTO varbinary_demo(data) 
VALUES('Hello');

SELECT * FROM varbinary_demo;

-- NB  -- the result at  the data row is blob ,, this is because it returns the data as it is without converting or considering the uft-8 language