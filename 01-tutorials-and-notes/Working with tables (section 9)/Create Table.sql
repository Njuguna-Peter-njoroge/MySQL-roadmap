-- The CREATE TABLE statement allows you to create a new table in a database.

               -- BASIC SYNTAX
	CREATE TABLE [IF NOT EXISTS] table_name(
   column1 datatype constraints,
   column2 datatype constraints,
   ...
) ENGINE=storage_engine;

-- hOW TO CREATE A TABLE
CREATE TABLE tasks (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE
);

-- TASKS IS THE NAME OF THE TABLE 
-- ID, TITLE, START_DATE,DUE_DATE ARE THE DOLUMNS
-- NOT NULL  IS THE CONSTRAINT
