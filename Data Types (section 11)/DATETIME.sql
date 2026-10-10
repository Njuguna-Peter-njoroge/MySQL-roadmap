-- MySQL DATETIME data type allows you to store a value that contains both date and time.

-- When you query data from a DATETIME column, MySQL displays the DATETIME value in the following format:

'YYYY-MM-DD HH:MM:SS'

-- BASIC SYNTAX
INSERT INTO table_name(datetime_column)
VALUES('2023-12-31 15:30:45');

To populate a column with the current date and time, you use the result of the CURRENT_TIMESTAMP or NOW() function as the default value. For example:


CREATE TABLE events(
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    started_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO events(event_name)
VALUES('Connected to MySQL Server');

SELECT * FROM events;
