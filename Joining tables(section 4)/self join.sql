/*

A self join allows you to join a table to itself. 
Since MySQL does not have specific self join syntax, you need to perform a self 
join via a regular join such as left join or inner join.
*/

-- 1) Performing a self join using an inner join #
   -- TRY THIS OUT 
   SELECT 
    CONCAT(m.lastName, ', ', m.firstName) AS Manager,
    CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
FROM
    employees e
INNER JOIN employees m ON 
    m.employeeNumber = e.reportsTo
ORDER BY 
    Manager;
    
    /*
    The output displays only the employees who have a manager.
    However, you don’t see the President because his name is filtered 
    out due to the INNER JOIN clause.
    
    */
    
    /* The following statement uses the LEFT JOIN clause instead of INNER JOIN
    to include the President:
    */
    
    SELECT 
    IFNULL(CONCAT(m.lastname, ', ', m.firstname),
            'Top Manager') AS 'Manager',
    CONCAT(e.lastname, ', ', e.firstname) AS 'Direct report'
FROM
    employees e
LEFT JOIN employees m ON 
    m.employeeNumber = e.reportsto
ORDER BY 
    manager DESC;
    