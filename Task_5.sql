create table bakery(id int,prod_name varchar(100),quantity int,price decimal(5,2));

insert into bakery values(101,'black forest',12,300),
							(102,'white forest',10,90),
                            (103,'choco truffle',1,350),
                            (104,'butterscotch',9,90),
                            (105,'almond cake',1,250);
select * from bakery where quantity > 2;
select * from bakery where price between 100 and 500;
select * from bakery where prod_name like '%a%';
select * from bakery order by quantity desc;
