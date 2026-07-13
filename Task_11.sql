use empdb;
select * from employees where salary > (select avg(salary) from employees);
use companydb;
select * from orders;
select * from orders where price > (select min(price) from orders);
select * from customers;
select * from customers where order_id = any(select order_id from customers where order_id is not null);
