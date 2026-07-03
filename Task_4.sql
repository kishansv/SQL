-- create database schooldb
create table students(age int);
alter table students modify column age int check (age<18);
alter table students modify column age int unique;

create table employee(id int, emp_name varchar(100), gender char(1), age int, blood_grp varchar(5), salary bigint);
alter table employee drop column age;

insert into employee values (1,'Karthi','M','B+ve',35000);
insert into employee values (2,'Kamalesh','M','B-ve',30000);
insert into employee values (3,'Kalai','F','B+ve',38000);
select * from employee;

set sql_safe_updates=0;
delete from employee where id=2;
truncate table employee;
drop table employee;
