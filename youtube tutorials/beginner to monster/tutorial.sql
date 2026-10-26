create table commnets (
id int auto_increment primary key,
author varchar (255),
content varchar(255),
created_at timestamp default current_timestamp,
updated_at timestamp default 	current_timestamp on update current_timestamp
);

insert into commnets (author, content)
values ("peter", "good work");

select * from commnets;

update commnets set content   = "ts is going in here?" where id = 1 ;

select substring("Hello world",7,5);