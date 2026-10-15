-- 1. Setup the Database
CREATE DATABASE IF NOT EXISTS door_management;
USE door_management;

DROP TABLE IF EXISTS MATERIAL;
CREATE TABLE MATERIAL(
    material_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    finish_type VARCHAR(50),
    cost_per_sqft DECIMAL(10,2)
);

DROP TABLE IF EXISTS state;
CREATE TABLE state(
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(20) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS DOOR;
CREATE TABLE DOOR(
    door_id INT AUTO_INCREMENT PRIMARY KEY,
    door_code VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    material_id INT,
    state_id INT DEFAULT 2,
    width_inches DECIMAL(5,2),
    height_inches DECIMAL(5,2),
    thickness_inches DECIMAL(4,2),
    fire_rating VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(material_id) REFERENCES MATERIAL(material_id) ON DELETE SET NULL,
    FOREIGN KEY(state_id) REFERENCES state(state_id)
);

INSERT INTO MATERIAL(name, type, finish_type, cost_per_sqft) VALUES 
('Solid Red Oak', 'Wood', 'Stained & varnished', 24.50),
('Hollow Core MDF', 'Composite', 'Printed white', 4.75),
('Stainless Steel 304', 'Metal', 'Printed white', 4.55),
('Tempered Safety Glass', 'Glass', 'Frosted', 4.25),
('Solid Walnut', 'Wood', 'Clear Matte oil', 5.60);

INSERT INTO state(state_name) VALUES 
('open'), 
('closed');

INSERT INTO DOOR (door_code, name, material_id, width_inches, height_inches, thickness_inches, fire_rating, state_id) VALUES 
('DR-EXT-001', 'Grand Walnut Entry door', 5, 36.00, 80.00, 1.75, 'N/A', 2),
('DR-EXT-002', 'Rear Exit Fire Door', 3, 36.00, 80.00, 1.75, '90-Minute', 1),
('DR-EXT-003', 'Master Bedroom Slab', 1, 32.00, 70.00, 1.76, '20-Minute', 2),
('DR-EXT-004', 'Guest Bedroom Slab', 5, 56.00, 60.00, 1.90, '20-Minute', 2),
('DR-EXT-005', 'Standard Closet Door', 4, 12.00, 80.56, 1.12, 'N/A', 2),
('DR-EXT-006', 'Conference Room Slider', 3, 23.00, 89.00, 1.67, 'N/A', 2);

SHOW TABLES;
DESCRIBE DOOR;
SELECT * FROM MATERIAL;
SELECT * FROM DOOR;
SELECT * FROM state;

