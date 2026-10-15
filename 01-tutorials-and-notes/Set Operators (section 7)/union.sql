/*
MySQL UNION operator allows you to combine two or more result sets of 
queries into a single result set. 
*/

-- The following illustrates the syntax of the UNION operator:
SELECT column_list
UNION [DISTINCT | ALL]
SELECT column_list
UNION [DISTINCT | ALL]
SELECT column_list

 -- TRY THIS OUT 
  -- PART 1
 DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;

CREATE TABLE t1 (
    id INT PRIMARY KEY
);

CREATE TABLE t2 (
    id INT PRIMARY KEY
);

INSERT INTO t1 VALUES (1),(2),(3);
INSERT INTO t2 VALUES (2),(3),(4);


-- PART 2
SELECT id
FROM t1
UNION
SELECT id
FROM t2;