create database schldb;
create table student(id int, name varchar(30), dept_id int, age int);
create table dept(s_no int, dept_name varchar(15),dept_id int);

insert into dept values(1,'EEE',100);
insert into dept values(2,'ECE',101);
insert into dept values(3,'AIML',102);
insert into dept values(4,'AIDS',103);
insert into dept values(5,'RA',104);
alter table dept add constraint pk_dept primary key(dept_id);
alter table student add constraint fk_dept foreign key student(dept_id) references dept(dept_id);

insert into student values(1,'Kishan',104,19);
insert into student values(11,'Karthi',104,19);
insert into student values(21,'Ashif',102,19);
insert into student values(13,'Juu',102,19);
insert into student(id,name,age) values(41,'Monu',21);

-- right join
select s.dept_id, s.name, d.dept_name
		from  student s
		right join  dept d
        on s.dept_id = d.dept_id;
 -- full join       
select s.dept_id, s.name, d.dept_name
		from  student s
		right join  dept d
        on s.dept_id = d.dept_id
union
select s.dept_id, s.name, d.dept_name
		from student s 
        left join dept d
        on s.dept_id = d.dept_id;
