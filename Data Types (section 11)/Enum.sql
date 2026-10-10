-- In MySQL, an ENUM is a string object whose value is chosen from a list of permitted values defined at the time of column creation.

-- To define an ENUM column, you use the following syntax:

-- column_name ENUM('value1', 'value2', ..., 'valueN')

-- In this syntax:

-- column_name: This is the name of the column that uses the ENUM data type
-- 'value1', 'value2', … 'valueN': These are the list of values that the column can hold. The values are separated by commas.

CREATE TABLE tickets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    priority ENUM('Low', 'Medium', 'High') NOT NULL
);

INSERT INTO tickets(title, priority)
VALUES('Scan virus for computer A', 'Low');


select * from tickets;