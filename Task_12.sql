select * from orders;
select prod_name, order_count from orders where order_count = any(select order_count from orders);
select * from orders where exists(select prod_name from orders where prod_name = 'choc icecream');
use empdb;
select * from employees where salary in (select max(salary) from employees group by department);
