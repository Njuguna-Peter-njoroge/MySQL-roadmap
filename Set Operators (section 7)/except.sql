-- The MySQL EXCEPT operator allows you to retrieve rows from one
-- query that do not appear in another query.

   -- BASIC SYNTAX
   /*
   query1
EXCEPT [ALL | DISTINCT]
query2;
*/
    -- TRY IT OUT
   -- 1.  First, create two tables t1 and t2:

CREATE TABLE t1 (
    id INT PRIMARY KEY
);

CREATE TABLE t2 (
    id INT PRIMARY KEY
);
-- 2. Second, insert rows into the t1 and t2 tables:

INSERT INTO t1 VALUES (1),(2),(3);
INSERT INTO t2 VALUES (2),(3),(4);

-- 3. Third, use the EXCEPT operator to find rows that 
-- appear in the table t1 but do not appear in the table t2:

SELECT id FROM t1
EXCEPT
SELECT id FROM t2;