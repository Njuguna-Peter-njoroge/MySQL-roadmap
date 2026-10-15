-- In MySQL, you use the AUTO_INCREMENT attribute to automatically generate unique integer values for a column whenever you insert a new row into the table.
-- Typically, you use the AUTO_INCREMENT attribute for the primary key column to ensure each row has a unique identifier.
-- LAST_INSERT_ID() function generates the most recent insert .tis way :

SELECT LAST_INSERT_ID();
         -- TRY THIS OUT
	CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(320) NOT NULL
);

INSERT INTO contacts(name, email)
VALUES('John Doe', 'john.doe@mysqltutorial.org');

SELECT * FROM contacts;
-- AUTO INCREMENT ATTRIBUTE AUTO GENERATES THE ID ,INSTEAD OF GIVING IT MANUALLY
