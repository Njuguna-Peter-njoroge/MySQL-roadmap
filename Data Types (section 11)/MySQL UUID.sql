-- UUID stands for Universally Unique IDentifier. UUID is defined based on RFC 4122, “a Universally Unique Identifier (UUID) URN Namespace”.

-- UUID is designed as a number that is unique globally in space and time. Two UUID values are expected to be distinct, even if they are generated on two independent servers.

-- In MySQL, a UUID value is a 128-bit number represented as a utf8 string of five hexadecimal numbers in the following format:

-- aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee

-- To generate a UUID value, you use the UUID() function as follows:

-- UUID()


CREATE TABLE customers (
    id BINARY(16) PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO customers(id, name)
VALUES(UUID_TO_BIN(UUID()),'John Doe'),
      (UUID_TO_BIN(UUID()),'Will Smith'),
      (UUID_TO_BIN(UUID()),'Mary Jane');
      
     SELECT 
    BIN_TO_UUID(id) id, 
    name
FROM
    customers;   