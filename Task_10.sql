create table stud_without_1nf(stud_id int, stud_name varchar(50), subjects varchar(50));
insert into stud_without_1nf values(1,'karthi','maths,english'),
									(2,'monu','english,french'),
                                    (3,'kishan','maths,social science');

create table stud_with_1nf(stud_id int,
							stud_name varchar(30),
                            subjects varchar(50),
                            primary key (stud_id,subjects));

insert into stud_with_1nf values(1,'karthi','maths'),
									(1,'karthi','english'),
									(2,'monu','english'),
                                    (2,'monu','french'),
                                    (3,'kishan','maths'),
									(3,'kishan','social science');
                                    
select * from stud_with_1nf;

create table stud_without_2nf(stud_id int, stud_name varchar(30), course_id int, course_name varchar(20));
insert into stud_without_2nf values(1,'karthi',100,'Java'),
									(2,'monu',101,'HTML'),
                                    (3,'kishan',103,'AIDS'),
                                    (4,'juu',102,'AIML');
                                    
create table stud_2nf(stud_id int primary key,stud_name varchar(30));
insert into stud_2nf values(1,'karthi'),
							(2,'monu'),
                            (3,'kishan'),
                            (4,'juu');
                            
create table course_2nf(course_id int primary key, course_name varchar(25));
insert into course_2nf values(100,'Java'),
							(101,'HTML'),
							(103,'AIDS'),
							(102,'AIML');

create table stud_with_2nf(stud_id int, course_id int, primary key(stud_id,course_id));
alter table stud_with_2nf add constraint fk_stud foreign key(stud_id) references stud_2nf(stud_id);
alter table stud_with_2nf add constraint fk_course foreign key(course_id) references course_2nf(course_id);
insert into stud_with_2nf values(1,100),(2,101),(3,103),(4,102);
                            
select s.stud_name, c.course_name
	from stud_with_2nf w
	join stud_2nf s
	on w.stud_id = s.stud_id
    join course_2nf c
    on w.course_id = c.course_id;
    
