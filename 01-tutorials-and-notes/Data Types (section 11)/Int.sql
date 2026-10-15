-- In MySQL, INT stands for the integer that represents the whole numbers. An integer can be written without a fractional 
-- component such as 1, 100, 4, -10, and it cannot be 1.2, 5/3, etc. An integer can be zero, positive, and negative.

                 -- TRY THIS OUT 
	CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_text VARCHAR(255)
);

INSERT INTO 
    items(item_text)
VALUES
    ('laptop'), 
    ('mouse'),
    ('headphone');
    
    SELECT * FROM items;