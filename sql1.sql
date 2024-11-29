create database  if not exists company;
use company;
create table emp(
id int primary key,
name varchar(40),
salary int 
);
insert into emp(id,name,salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);


create table tepmt(
id int unique,
salary int default 25000
);
insert into tepmt (id) values(101);
select * from tepmt;     
insert into tepmt (id) values(102);

CREATE TABLE animal(
id int primary key,
name varchar(40),
age int);

INSERT INTO animal(id,name,age)
VALUES(1,"Tiger",2),
(2,"Lion",3),
(3,"Dog",2);

select * from animal;


