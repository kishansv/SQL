create table orders(id int,prod_name varchar(50),items int,price decimal(5,2));

insert into orders values(1,'margherita',3,999),
						(2,'cheeseburger',2,500),
                        (3,'ld cheese fries',2,400),
                        (4,'choc brownie',3,300),
                        (5,'choc icecream',2,250);
select count(*) from orders;
select sum(price)from orders;
select avg(price)from orders;
select prod_name, sum(price)from orders group by prod_name;
select max(price) from orders;
select min(price) from orders;
select * from orders order by price desc;
