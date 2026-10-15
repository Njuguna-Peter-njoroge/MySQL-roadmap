-- The INSERT IGNORE statement allows you to disregard rows containing invalid data that would otherwise trigger an error and insert only rows that contain valid data.


-- BASIC SYNTAX

INSERT IGNORE INTO table(column_list)
VALUES(value_list),
      (value_list),
      ...;
      
         -- TRY THIS OUT 
         
         CREATE TABLE subscribers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(130) NOT NULL UNIQUE
);


INSERT INTO subscribers(email)
VALUES('john.doe@gmail.com');

INSERT INTO subscribers(email)
VALUES('john.doe@gmail.com'), 
      ('jane.smith@ibm.com');
      
      -- THE SECOND RETURN GIVES THE DUPLICATE ERROR ,,, BUT YOU CAN BYPASS THAT WITH INSERT IGNORE 
      INSERT IGNORE INTO subscribers(email)
VALUES('john.doe@gmail.com'), 
      ('jane.smith@ibm.com');
      
      SHOW WARNINGS;
      
--       'Warning', '1062', 'Duplicate entry \'john.doe@gmail.com\' for key \'subscribers.email\''
