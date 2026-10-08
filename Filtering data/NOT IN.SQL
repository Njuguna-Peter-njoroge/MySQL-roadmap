-- the not in operator negates the in operator

-- not in operator returns one if the value doesn't equal any value  in the list,otherwise it returns zero

-- try this out
SELECT 
    officeCode, 
    city, 
    phone
FROM
    offices
WHERE
    country NOT IN ('USA' , 'France')
ORDER BY 
    city;