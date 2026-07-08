select * from orders; -- previous task order table used
create table customers(cust_id int, cust_name varchar(50),order_id int);
select * from customers;

insert into customers values(1,'Juu',5);
insert into customers values(2,'Monu',2);
insert into customers values(3,'Ashif',3);
insert into customers(cust_id,cust_name) values(4,'Karthi');
insert into customers(cust_id,cust_name) values(5,'Vishal');

alter table customers add constraint fk_ord foreign key(order_id) references orders(id);
alter table customers modify column order_id int null;
alter table orders modify column id int null;
desc customers;
alter table customers drop primary key;
select c.cust_id, c.cust_name, c.order_id, o.id
			from customers c
            join orders o
            on c.order_id = o.id;
            
select c.cust_id, c.cust_name, c.order_id, o.id
				from customers c
                left join orders o 
                on c.order_id = o.id;
