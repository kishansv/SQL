delimiter ==
create trigger upd_sal
before update
on employees
for each row
begin
	if new.salary<0 then
		signal sqlstate '45000'
		set message_text='salary cannot be negative';
	end if;
end ==
delimiter ;
update employees set salary = -5 where emp_id = 5;

delimiter ==
create trigger del_emp
after delete
on employee
for each row
begin
	insert into employees_log(emp_id, updated_time, emp_name) values(old.emp_id, now(), old.emp_name);
end ==
delimiter ;
delete from employee where emp_id = 9;
select * from employees_log;

delimiter ==
create trigger upd_time
after update 
on employee
for each row
begin
		update employees_log set updated_time = now() where emp_id = new.emp_id;
end ==
delimiter ;

update employee set salary = 5000 where emp_id = 8;

delimiter ==
create trigger no_null
before insert 
on employee
for each row 
begin
	if new.emp_name is null or new.salary is null then
		signal sqlstate '45000'
        set message_text = 'This value cannot be NULL';
	end if;
end ==
delimiter ;
insert into employee (gender) value('M');
