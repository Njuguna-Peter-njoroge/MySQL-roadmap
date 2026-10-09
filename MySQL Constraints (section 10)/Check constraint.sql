-- A CHECK constraint is a database rule used to limit the value range that 
-- can be entered into one or more columns
-- WHEN YOU DON'T SPECIFY THE NAME OF THE CHECK CONSTRAINT MySQL
--  AUTOMATICALLY GENERATES IT

CREATE TABLE parts (
    part_no VARCHAR(18) PRIMARY KEY,
    description VARCHAR(40),
    cost DECIMAL(10,2 ) NOT NULL CHECK (cost >= 0),
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0)
);

SHOW CREATE TABLE parts;

INSERT INTO parts(part_no, description,cost,price) 
VALUES('A-001','Cooler',0,-100);

-- THE INSERT FAULS BECAUSE CHECK CONSTRAINT INSIST PRICE SHOULD BE GREATER THAN ZERO
