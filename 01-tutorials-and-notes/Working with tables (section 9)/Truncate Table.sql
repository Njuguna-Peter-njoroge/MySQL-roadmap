-- In MySQL, the TRUNCATE TABLE statement allows you to delete all rows from a table.

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
)  ENGINE=INNODB;


DELIMITER $$
CREATE PROCEDURE load_book_data(IN num INT(4))
BEGIN
	DECLARE counter INT(4) DEFAULT 0;
	DECLARE book_title VARCHAR(255) DEFAULT '';

	WHILE counter < num DO
	  SET book_title = CONCAT('Book title #',counter);
	  SET counter = counter + 1;

	  INSERT INTO books(title)
	  VALUES(book_title);
	END WHILE;
END$$

DELIMITER ;


CALL load_book_data(10000);
SELECT * FROM books;

TRUNCATE TABLE books;