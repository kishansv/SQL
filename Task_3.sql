create table products(id int, prod_name varchar(50), price int);
alter table products add column stock int; 
alter table products change column price unit_price int;

insert into products values (101, 'butterfly mixie', 4500, 7);
insert into products values (102, 'butterfly gas stove', 3500, 5);
insert into products values (103, 'butterfly ceiling fan', 2500, 8);
insert into products values (104, 'butterfly induction stove', 2000, 6);
insert into products values (105, 'butterfly grinder', 4500, 10);
set sql_safe_updates=0;
update products set stock=9 where id=103;
select * from products;
delete from products where id=104;
