-- MySQL DEFAULT constraint allows you to specify a default value for a column. 

        -- BASIC SYNTAX
        column_name data_type DEFAULT default_value;
        
        CREATE TABLE cart_items 
(
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DEC(5,2) NOT NULL,
    sales_tax DEC(5,2) NOT NULL DEFAULT 0.1,
    CHECK(quantity > 0),
    CHECK(sales_tax >= 0) 
);

-- SALES TAX IS HAVE A DEFAULT VALUE SET TO 0.1

DESC cart_items;