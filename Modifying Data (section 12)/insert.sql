-- The INSERT statement allows you to insert one or more rows into a table. The following illustrates the syntax of the INSERT statement:

INSERT INTO table_name(column1, column2,...) 
VALUES (value1, value2,...);

DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks (
  task_id INT AUTO_INCREMENT PRIMARY KEY, 
  title VARCHAR(255) NOT NULL, 
  start_date DATE, 
  due_date DATE, 
  priority TINYINT NOT NULL DEFAULT 3, 
  description TEXT
);


INSERT INTO tasks(title, priority) 
VALUES('Learn MySQL INSERT Statement', 1);

SELECT * FROM tasks;