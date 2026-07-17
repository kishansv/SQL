create table bakery(id int,prod_name varchar(20),quantity int,unit_price decimal(5,2),sales int);
select* from bakery;
insert into bakery values(1,'choco cake',5,90,450),
							(2,'choco brownie',4,80,320),
                            (3,'choco icecream',8,50,400),
                            (4,'cheese burger',5,75,375),
                            (5,'choco milkshake',9,40,360);
	
select prod_name, sum(sales) over(order by id desc) as total from bakery;
select* from bakery;
alter table bakery add ingredient varchar(20);
set sql_safe_updates = 0;
update bakery
set ingredient = 'chocolate'
where id in (1,2,3,5);

update bakery
set ingredient = 'cheese'
where id = 4;
select ingredient, avg(sales) from bakery group by ingredient;
with sales_abv_avg as
(  
	select ingredient,avg(sales) as avg_sale from bakery group by ingredient
) select b1.prod_name, b1.sales, b2.ingredient, b2.avg_sale 
  from sales_abv_avg b2
  join bakery b1
  on b1.ingredient = b2.ingredient
  where b1.sales > b2.avg_sale
  order by id;
use employeedb;
select * from employee;
delimiter ==
create procedure new_emp(emp_id int, emp_name varchar(50), gender char(1))
begin
	insert into employee values(emp_id, emp_name, gender);
end ==
delimiter ;
call new_emp(13,'chetri','M');
delimiter ==
alter table employee add salary int;

create procedure upd_sal (in e_id int, in e_sal int)
begin
	 update employee
     set salary = e_sal
     where emp_id = e_id;
end ==
delimiter ;

    
