-- MySQL supports the following types of joins
-- inner join
-- left join
-- right join
-- cross join

   -- setting up the database
   
   -- TRY THIS OUT
   -- FIRST CREATE TWO TABLES MEMBERS AND COMMITEES
   
   CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);

-- THEN INSERT ROWS INTO THE TABLES 
INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');