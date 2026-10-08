/*
The INTERSECT operator is a set operator that returns the common
 rows of two or more queries.
 
 The INTERSECT operator compares the result sets of two queries 
 and returns the common rows.
 */
 
 
     -- BASIC SYNTAX
     
     /*
     query1
INTERSECT [ALL | DISTINCT]
query2;
*/

DROP TABLE IF EXISTS  T1;
CREATE TABLE t1 (
    id INT PRIMARY KEY
);

CREATE TABLE t2 LIKE t1;

INSERT INTO t1(id) VALUES(1),(2),(3);

INSERT INTO t2(id) VALUES(2),(3),(4);

SELECT id FROM t1
INTERSECT
SELECT id FROM t2;