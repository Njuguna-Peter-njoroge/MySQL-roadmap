-- The BINARY data type is used to store fixed-length binary data. For example, you can use BINARY data 
-- type for columns that store hashes and checksums such as SHA-256 because these values have a fixed length

-- BASIC SYNTAX  column_name BINARY(size);

-- We’ll take an example of using the BINARY data type to store SHA-256 hashes.

CREATE TABLE binary_demo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    data BINARY(32) -- 32 bytes for SHA-256
);

INSERT INTO binary_demo(data) 
VALUES (UNHEX(SHA2('Hello', 256)));

SELECT HEX(data) 
FROM binary_demo WHERE id = 1;