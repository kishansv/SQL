create table events(id int ,event_name varchar(100),event_date date);
insert into events(id,event_name,event_date) values(1,'beast','2022/05/13'),
													(2,'varisu','2023/01/11'),
                                                    (3,'leo','2023-10-19'),
                                                    (4,'GOAT','2024-09-05');
insert into events(id,event_name,event_date) values(5,'jananayagan',now());
select * from events;
select date_format(now(),'%d-%m-%y')as formatted_date;
select id,event_name,month(event_date) as event_month from events where id in(1,2,3);
select id,event_name,year(event_date) as event_year from events where id in(1,2,3);
select concat(event_name,event_date) as date from events where id in(1,2,3);
