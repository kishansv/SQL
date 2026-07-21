select * from products;
drop trigger trig_stock_update;
delimiter ==
create trigger trig_stock_update
after insert 
on orders
for each row
begin
	update products set stock = stock - new.order_count
    where id = new.id;
end == 
delimiter ;

delimiter ==
create trigger trig_delete
before delete
on employees
for each row
begin
	 if EXISTS (SELECT 1 
               FROM employees 
               WHERE manager_id = OLD.emp_id) then
		signal sqlstate '45000'
		set message_text = 'Manager id cannot be removed';
     end if;
end ==employees
delimiter ;
select * from employees;
delete from employees where emp_id = 11;

delimiter ==
create procedure get_emp()
begin
	 select count(*) from employees;
end ==
delimiter ;
call get_emp();

select * from employees where salary > any(select avg(salary) from employees group by department);
select * from customers where order_count> 2;
select max(unit_price) from products;
