-- To rename one or more tables, you can use the RENAME TABLE statement as follows:

       -- BASIC SYNTAX
RENAME TABLE table_name
TO new_table_name;
           -- TRY THIS OUT 
CREATE DATABASE IF NOT EXISTS hr;
use  hr;
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id int AUTO_INCREMENT primary key,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    department_id INT not null,
    FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
);

INSERT INTO departments(dept_name) 
VALUES 
  ('Sales'), 
  ('Markting'), 
  ('Finance'), 
  ('Accounting'), 
  ('Warehouses'), 
  ('Production');
  
  INSERT INTO employees(
  first_name, last_name, department_id
) 
VALUES 
  ('John', 'Doe', 1), 
  ('Bush', 'Lily', 2), 
  ('David', 'Dave', 3), 
  ('Mary', 'Jane', 4), 
  ('Jonatha', 'Josh', 5), 
  ('Mateo', 'More', 1);
  
  SELECT 
    department_id, dept_name
FROM
    departments;
    
    
    SELECT 
    id, first_name, last_name, department_id
FROM
    employees;
    
    rename table depts to depts_departments;
    
    show databases;