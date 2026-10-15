-- The LIKE operator is a logical operator that tests whether a string contains a specified pattern or not.

-- BASIC SYNTAX

-- expression LIKE pattern ESCAPE escape_character

/*
MySQL provides two wildcard characters for constructing patterns: Percentage % and underscore _ .

The percentage ( % ) wildcard matches any string of zero or more characters.
The underscore ( _ ) wildcard matches any single character.
For example, s% matches any string starting with the character s such as sun and six. The se_ matches any string starting with  se and is followed by any character such as see and sea.

When the pattern contains the wildcard character and you want to treat it as a regular character, you can use the ESCAPE clause.
*/


-- TRY THIS OUT 
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstName LIKE 'a%';
    -- in this it scans the whole employees table to find employees whose 
    -- first names start with the letter a and are followed by any number of characters.
    
    -- TRY THIS OUT 
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstname LIKE 'T_m';
-- finds employees whose first names start with the letter T , end with the letter m,
-- and contain any single character between e.g., Tom , Tim, 
-- you use the underscore (_) wildcard to construct the pattern



