create database companydb;
create table employee(emp_id int primary key, emp_name varchar(50) not null, salary int default(30000));
alter table employee add email varchar(100) unique; 

insert into employee(emp_id, emp_name, salary, email) values (500,"joseph stalin",35000,'jostalin@gmail.com');
insert into employee values(501,'muthuvel vijay',50000,'cmvijay@gmail.com');
insert into employee (emp_id, emp_name, email)values(502,'walter white','imthedanger@gmail.com');
insert into employee values(503,'tony stark',45000,'iamironman@gmail.com');
insert into employee values(504,'kamal hassan',39000,'malak@gmail.com');

insert into employee values(505,'lionel bigil',50000,'cmvijay@gmail.com');
select * from employee;

drop table employee;
create database companydb;
create table employee(emp_id int primary key, emp_name varchar(50) not null, salary int default(30000));
alter table employee add email varchar(100) unique; 

insert into employee(emp_id, emp_name, salary, email) values (500,"joseph stalin",35000,'jostalin@gmail.com');
insert into employee values(501,'muthuvel vijay',50000,'cmvijay@gmail.com');
insert into employee (emp_id, emp_name, email)values(502,'walter white','imthedanger@gmail.com');
insert into employee values(503,'tony stark',45000,'iamironman@gmail.com');
insert into employee values(504,'kamal hassan',39000,'malak@gmail.com');

insert into employee values(505,'lionel bigil',50000,'cmvijay@gmail.com');
select * from employee;

drop table employee;

create table employee(emp_id int primary key, emp_name varchar(50) not null, salary int default(30000));
alter table employee add email varchar(100) unique; 
alter table employee add constraint chk_slry check(salary > 0);

insert into employee(emp_id, emp_name, salary, email) values (500,"joseph stalin",35000,'jostalin@gmail.com');
insert into employee values(501,'muthuvel vijay',50000,'cmvijay@gmail.com');
insert into employee (emp_id, emp_name, email)values(502,'walter white','imthedanger@gmail.com');
insert into employee values(503,'tony stark',45000,'iamironman@gmail.com');
insert into employee values(504,'kamal hassan',39000,'malak@gmail.com');

insert into employee values(505,'lionel bigil',50000,'cmvijay@gmail.com');
select * from employee;
insert into employee values(505,'lionel bigil',0,'bigileyy@gmail.com');

insert into employee values(505,'lionel bigil',0,'bigileyy@gmail.com');
