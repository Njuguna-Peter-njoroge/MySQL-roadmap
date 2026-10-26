CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(36) DEFAULT (UUID()) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL, 
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users (first_name, last_name, name, email, password) VALUES 
('Michael', 'Johnson', 'Michael Johnson', 'michael.j@example.com', 'mikePass1'),
('Emily', 'Williams', 'Emily Williams', 'emily.w@example.com', 'emilySecure'),
('David', 'Brown', 'David Brown', 'david.b@example.com', 'david2026'),
('Sarah', 'Davis', 'Sarah Davis', 'sarah.d@example.com', 'sarahP@ss'),
('James', 'Miller', 'James Miller', 'james.m@example.com', 'jamesM99'),
('Jessica', 'Wilson', 'Jessica Wilson', 'jessica.w@example.com', 'jess1234'),
('Matthew', 'Moore', 'Matthew Moore', 'matthew.m@example.com', 'mattWord'),
('Ashley', 'Taylor', 'Ashley Taylor', 'ashley.t@example.com', 'ashleyPass'),
('Robert', 'Anderson', 'Robert Anderson', 'robert.a@example.com', 'robAndroid'),
('Amanda', 'Thomas', 'Amanda Thomas', 'amanda.t@example.com', 'mandySafe'),
('William', 'Jackson', 'William Jackson', 'william.j@example.com', 'willJack'),
('Megan', 'White', 'Megan White', 'megan.w@example.com', 'meganW98'),
('Daniel', 'Harris', 'Daniel Harris', 'daniel.h@example.com', 'danHarris'),
('Rachel', 'Martin', 'Rachel Martin', 'rachel.m@example.com', 'rachel12'),
('Christopher', 'Thompson', 'Christopher Thompson', 'chris.t@example.com', 'chrisTop'),
('Stephanie', 'Garcia', 'Stephanie Garcia', 'steph.g@example.com', 'stephG77'),
('Brian', 'Martinez', 'Brian Martinez', 'brian.m@example.com', 'brianMtz'),
('Nicole', 'Robinson', 'Nicole Robinson', 'nicole.r@example.com', 'nicoleR95'),
('Kevin', 'Clark', 'Kevin Clark', 'kevin.c@example.com', 'kevClark'),
('Elizabeth', 'Rodriguez', 'Elizabeth Rodriguez', 'elizabeth.r@example.com', 'lizRod94'),
('Jason', 'Lewis', 'Jason Lewis', 'jason.l@example.com', 'jasonLew'),
('Crystal', 'Lee', 'Crystal Lee', 'crystal.l@example.com', 'crysLee1'),
('Jeff', 'Walker', 'Jeff Walker', 'jeff.w@example.com', 'jeffWalk'),
('Tiffany', 'Hall', 'Tiffany Hall', 'tiffany.h@example.com', 'tiffHall'),
('Ryan', 'Allen', 'Ryan Allen', 'ryan.a@example.com', 'ryanAl33'),
('Amber', 'Young', 'Amber Young', 'amber.y@example.com', 'amberY92'),
('Gary', 'King', 'Gary King', 'gary.king@example.com', 'garyK123'),
('Danielle', 'Wright', 'Danielle Wright', 'danielle.w@example.com', 'danWright'),
('Justin', 'Lopez', 'Justin Lopez', 'justin.l@example.com', 'justinLop'),
('Laura', 'Hill', 'Laura Hill', 'laura.h@example.com', 'lauraHill');


select * from users;


SELECT first_name from users order by first_name asc;


SELECT first_name from users order by  length(first_name) desc limit 5;

-- % : This wildcard matches zero or more characters
-- _ : This wildcard matches exactly one character
select first_name from users 
where first_name like "%j%";


select * from users 
where first_name like "_ane";

