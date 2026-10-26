select count(*)  from users;


select count(first_name)  from users;


select count(*)  from users
where first_name = "jane";

select * from users ;

 
ALTER TABLE users ADD COLUMN age INT AFTER password;

-- 1. Temporarily turn off safe updates
SET SQL_SAFE_UPDATES = 0;

-- 2. Run your update query
UPDATE users SET age = CASE 
    WHEN email = 'michael.j@example.com' THEN 28
    WHEN email = 'emily.w@example.com' THEN 24
    WHEN email = 'david.b@example.com' THEN 31
    WHEN email = 'sarah.d@example.com' THEN 29
    WHEN email = 'james.m@example.com' THEN 35
    WHEN email = 'jessica.w@example.com' THEN 22
    WHEN email = 'matthew.m@example.com' THEN 40
    WHEN email = 'ashley.t@example.com' THEN 26
    WHEN email = 'robert.a@example.com' THEN 33
    WHEN email = 'amanda.t@example.com' THEN 27
    WHEN email = 'william.j@example.com' THEN 45
    WHEN email = 'megan.w@example.com' THEN 23
    WHEN email = 'daniel.h@example.com' THEN 32
    WHEN email = 'rachel.m@example.com' THEN 30
    WHEN email = 'chris.t@example.com' THEN 38
    WHEN email = 'steph.g@example.com' THEN 25
    WHEN email = 'brian.m@example.com' THEN 29
    WHEN email = 'nicole.r@example.com' THEN 34
    WHEN email = 'kevin.c@example.com' THEN 27
    WHEN email = 'elizabeth.r@example.com' THEN 31
    WHEN email = 'jason.l@example.com' THEN 36
    WHEN email = 'crystal.l@example.com' THEN 22
    WHEN email = 'jeff.w@example.com' THEN 42
    WHEN email = 'tiffany.h@example.com' THEN 28
    WHEN email = 'ryan.a@example.com' THEN 26
    WHEN email = 'amber.y@example.com' THEN 33
    WHEN email = 'gary.king@example.com' THEN 50
    WHEN email = 'danielle.w@example.com' THEN 29
    WHEN email = 'justin.l@example.com' THEN 31
    WHEN email = 'laura.h@example.com' THEN 27
    ELSE 25 
END;

-- 3. Turn safe updates back on for security
SET SQL_SAFE_UPDATES = 1;


select first_name, last_name from users where age != 35;

select * from users where age > 12 and length(first_name) < 5;

select * from users 
where age  in(25,30,45);
