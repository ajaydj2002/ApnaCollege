create database Instagram;
use Instagram;
create table user(
id int primary key,
age int,
name varchar(50) NOT NULL,
email varchar(50) unique,
followers int default 0,
following int ,
constraint check (age >=13)
);

insert into user(
id,age,name,email,followers,following)
values
(1,21,"Ajay","ajayjadhav1582002@gmail.com",400,200),
(2,22,"Tejas","Tejas@123gmail.com",200,201),
(3,23,"Shubham","Shubham1412@gmail.com",100,300),
(4,24,"Shree","Shree0401@gmail.com",500,400);

select * from user;

create table post(
id int primary key,
content varchar(100),
user_id int,
foreign key (user_id) references user(id)
);

insert into post(
id,content,user_id)
values(
101,"Hello MySQL",1),
(102,"Welcome India",2),
(103,"Apna College",3),
(104,"Bye Bye",1);

select * from post;

select * from user 
where followers >=300;

select * from post 
where id=103;

select * from user 
where followers in(200 , 400);

select * from user 
where followers between 200 And 500;

select * from user 
where age in(21,23,24,25);

select * from user 
where age not in(21,23,24,25);

select * from user 
where age >20
limit 2;

select count(age)
from user
where age >=21;

select max(followers) 
from user;

select min(following)
from user;

select avg(age)
from user;

select age ,count(id)
from user
group by age;

set sql_safe_updates =0;
update user
set followers=600
where age=21;

select * from user;

delete from user
where age=22;

alter table user
add column city varchar(30) default "Pune";

select * from user;

alter table user 
drop column city;

select * from user;

alter table user
rename to instaUser;

select * from instaUser;

alter table instaUser
rename to user;

select * from user;

alter table user 
change column followers subscribers int default 0;

select * from user;

insert into user(
id,name,email,subscribers,following)
values
(5,"Aditya","AdityaPasalkar@gmail.com",250,150);

alter table user 
modify column age int default 20;

select * from User;

truncate table post;
select * from post;

drop table post;

truncate table user;
select * from user;

drop table user;

