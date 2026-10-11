-- In MySQL, a recursive Common Table Expression (CTE) is a named temporary result set that references itself 
-- in the recursive member, enabling the hierarchical traversal or iteration over data until a specified termination condition is met.

          -- BASIC SYNTAX
          /*
   WITH RECURSIVE cte_name AS (
    initial_query  -- anchor member
    UNION ALL
    recursive_query -- recursive member that references to the CTE name
)
SELECT * FROM cte_name;       
*/


-- A recursive CTE consists of three main parts:

-- An initial query that forms the base result set of the CTE structure. The initial query part is referred to as an anchor member.
-- A recursive query part is a query that references the CTE name, therefore, it is called a recursive member. The recursive member is joined with the anchor member by a UNION ALL or UNION DISTINCT operator.
-- A termination condition that ensures the recursion stops when the recursive member returns no row.


WITH RECURSIVE cte_count (n) 
AS (
      SELECT 1
      UNION ALL
      SELECT n + 1 
      FROM cte_count 
      WHERE n < 3
    )
SELECT n 
FROM cte_count;

SELECT 1

SELECT n + 1
FROM cte_count 
WHERE n < 3