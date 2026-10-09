/*
A UNIQUE constraint is an integrity constraint that ensures the uniqueness of values in a column or group of columns. A UNIQUE constraint can be either a column 
constraint or a table constraint.

sometimes, you want to ensure values in a column or a group of columns are unique.
  For example, email addresses of users in the users table, or phone numbers of
 customers in the customers table should be unique. To enforce this rule, you use
  UNIQUE constraint.
 */
 
       -- BASIC SYNTAX
       CREATE TABLE table_name(
   ...
   column1 datatype,
   column2 datatype,
   ...,
   UNIQUE(column1, column2)
);


        -- TRY THIS OUT 
        CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT uc_name_address UNIQUE (name,address)
);

INSERT INTO suppliers(name, phone, address) 
VALUES( 'ABC Inc', 
       '(408)-908-2476',
       '4000 North 1st Street');

