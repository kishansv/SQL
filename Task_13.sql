select * from bakery;
insert into bakery values(106,'red velvet',8,120);
select prod_name, price, row_number() over (order by price desc) as price from bakery;
select prod_name, price, rank() over(order by price desc) as Price_high_low_ from bakery;
select prod_name, price, dense_rank() over(order by price desc) as price from bakery;
