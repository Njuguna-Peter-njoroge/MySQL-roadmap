-- Disabling foreign key checks is primarily used to bypass relational 
-- constraints temporarily during heavy data maintenance

-- Disabling speeds up : 
-- bulk data imports,
 -- hepls in truncating or Dropping linked tables, 
-- Loading Data Out of Order (Circular Dependencies),

-- To disable foreign key checks, you set the foreign_key_checks 
-- variable to zero as follows:

SET foreign_key_checks = 0;

-- To enable the foreign key constraint check, you set the value of the 
-- foreign_key_checks to 1:

SET foreign_key_checks = 1;
                   
                   -- TRY THIS OUT 
CREATE TABLE countries(
    country_id INT AUTO_INCREMENT,
    country_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(country_id)
);


CREATE TABLE cities(
    city_id INT AUTO_INCREMENT,
    city_name VARCHAR(255) NOT NULL,
    country_id INT NOT NULL,
    PRIMARY KEY(city_id),
    FOREIGN KEY(country_id) 
		REFERENCES countries(country_id)
);

INSERT INTO cities(city_name, country_id)
VALUES('New York',1);

SELECT * FROM cities;