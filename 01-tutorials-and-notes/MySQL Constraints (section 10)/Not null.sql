-- A NOT NULL constraint ensures that values stored in a column are not NULL.
--  The syntax for defining a NOT NULL constraint is as follows:
                
                -- BASIC SYNTAX
column_name data_type NOT NULL;


            -- TRY THIS OUT 
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE
);

INSERT INTO tasks(title ,start_date, end_date)
VALUES('Learn MySQL NOT NULL constraint', '2017-02-01','2017-02-02'),
      ('Check and update NOT NULL constraint to your database', '2017-02-01',NULL);
      
      SELECT * FROM tasks 
WHERE end_date IS NULL;