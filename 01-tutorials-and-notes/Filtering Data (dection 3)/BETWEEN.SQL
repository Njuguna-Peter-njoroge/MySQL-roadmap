-- The BETWEEN operator is a logical operator that specifies whether a value is in a range or not
-- To negate the BETWEEN operator, you use the NOT operator:

-- TRY THIS OUT 
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice BETWEEN 90 AND 100;

-- TRY THIS OUT 
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice NOT BETWEEN 20 AND 100;