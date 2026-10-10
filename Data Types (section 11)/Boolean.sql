-- MySQL does not have a dedicated Boolean data type. Instead, MySQL uses TINYINT(1) to represent the BOOLEAN data type.
-- IT CAN BE USED LIKE THIS :

-- column_name BOOL


              -- TRY THIS OUT 
              
              DROP TABLE tasks;
	CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    completed BOOLEAN
);

DESCRIBE tasks;

INSERT INTO tasks(title, completed) 
VALUES 
  ('Master MySQL Boolean type', true), 
  ('Design database table', false);
  
  SELECT 
  id, 
  title, 
  completed 
FROM 
  tasks;
  
  -- The output indicates that MySQL converted the true and false to 1 and 0 respectively.