select first_name , age ,
case 
when age < 30 then 'young'
when age != 30 and age < 60 then 'middle-aged'
else 'senior'
end as age_groups
from users;


select first_name from users;


create table series (
id int auto_increment primary key ,
title varchar(255) unique,
release_year int,
genre varchar (255)
);


insert into series (title, release_year, genre) 
values 
("peter", 2023, "science"),
("invisible", 2023, "science-fiction"),
("launder", 2023, "money");

create table employee (
id int auto_increment primary key,
emp_name  varchar(50),
emp_age int,
emp_salary decimal (10,2),
constraint check_emp_age check (emp_age >= 18 and emp_age <= 65),
constraint check_emp_salary check (emp_salary >= 0 )
);

 
insert into employee (emp_name, emp_age, emp_salary) 
values 
("peter", 45, 345.67),
("peter paul", 45, 34367),
("peter parker", 25, 345.67);
 
 





     



 





