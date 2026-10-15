-- The DATETIME data type is used to store both date and time values. To define a column with the DATETIME data type, you use the following syntax:

CREATE TABLE events(
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_time DATETIME NOT NULL
);


INSERT INTO events(event_name, event_time)
VALUES('MySQL tutorial livestream', '2023-10-28 19:30:35');

select * FROM events;

-- inserting  current time 
INSERT INTO events(event_name, event_time)
VALUES('MySQL Workshop', NOW());
