-- The MySQL TIMESTAMP is a temporal data type that holds the combination of date and time. The format of a TIMESTAMP is YYYY-MM-DD HH:MM:SS which is fixed at 19 characters.
-- When you insert a TIMESTAMP value into a table, MySQL converts it from your connection’s time zone to UTC for storing.


 -- First, created a new table called t that has a TIMESTAMP column: t1;

CREATE TABLE t (
   ts TIMESTAMP
);


-- Second, set the session’s time zone to '+00:00' UTC by using the SET time_zone statement.


SET time_zone='+00:00';


-- Third, insert a TIMESTAMP value into the t table.
INSERT INTO t(ts)
VALUES('2008-01-01 00:00:01');

-- Fourth, select the TIMESTAMP value from the t table.

SELECT ts FROM t;

-- Fifth, set the session’s time zone to a different time zone to observe what value we receive from the database server:

SET time_zone ='+03:00';
-- Finally, query data from the table:

SELECT ts FROM t;


-- As you will  see, we received a time value adjusted to the new time zone, which is different from the original.


CREATE TABLE categorieses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO categorieses(name) 
VALUES ('A');

SELECT * FROM categorieses;

ALTER TABLE categories
ADD COLUMN updated_at 
  TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
  ON UPDATE CURRENT_TIMESTAMP;
  
  INSERT INTO categorieses(name)
VALUES('B');

UPDATE categorieses
SET name = 'B+'
WHERE id = 2;

SELECT *
FROM categorieses
WHERE id = 2;