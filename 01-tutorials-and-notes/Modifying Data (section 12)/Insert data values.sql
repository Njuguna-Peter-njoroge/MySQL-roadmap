-- The DATE data type allows you to store the date values. The following shows how to define a column with the DATE data type:

-- column_name DATE

drop table events;
CREATE TABLE events(
   id INT AUTO_INCREMENT PRIMARY KEY,
   event_name VARCHAR(255) NOT NULL,
   event_date DATE NOT NULL
);

INSERT INTO events(event_name, event_date)
VALUES('MySQL Conference','2023-10-29');


-- inserting current date 
INSERT INTO events(event_name, event_date)
VALUES('MySQL Replication work', CURRENT_DATE);

desc  events;

select * from events;