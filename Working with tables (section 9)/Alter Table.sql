-- The ALTER TABLE ADD statement allows you to add one or more columns to a table.
       -- BASIC SYNTAX
       /*
       ALTER TABLE table_name
ADD 
    new_column_name column_definition
    [FIRST | AFTER column_name]
    */
    
  -- CREATE A TABLE VEHICLES
  CREATE TABLE vehicles (
    vehicleId INT,
    year INT NOT NULL,
    make VARCHAR(100) NOT NULL,
    PRIMARY KEY(vehicleId)
);

-- ALTER TABLE
ALTER TABLE vehicles
ADD model VARCHAR(100) NOT NULL;

-- altering multiple columns to a table
ALTER TABLE vehicles
ADD color VARCHAR(50),
ADD note VARCHAR(255);

