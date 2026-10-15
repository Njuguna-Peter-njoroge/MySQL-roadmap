CREATE TABLE discounts (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    expired_date DATE NOT NULL,
    amount DECIMAL(10 , 2 ) NULL,
    PRIMARY KEY (id)
);

desc discounts;

-- importing csv files into tables using MySQL workbench

-- 1. open discounts table 
-- 2. Second, click the import button:
-- 3. Third, select the path to the CSV file and click the Next button:
-- 4. Fourth, select the destination table, which is the classicmodels.discounts in this case. Note that you can create a new table before importing the file and/or truncate the table before import:
-- 5. Fifth, map the columns in the source file with the columns in the destination table and click the Next button:
-- 6. Sixth, review the steps that the Workbench will do and click the Next button:
-- 7. Seventh, review the steps that the Workbench will do and click the Next button:
-- 8. Eight, review the import result and click the Finish button:

