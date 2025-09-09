delimiter $$
create procedure updatedepartment(in department_name_ varchar(20),in empid_ int)
begin 
declare current_department_ int;
declare current_department_id int;
declare message varchar(50);
select department_id into current_department_ from departments where department_name = department_name_;
select department_id into current_department_id from employees where emp_id=empid_;
if (current_department_ = current_department_id) then
	set message = 'same so dont need to change';
	select message;
else
	update employees set department_id = current_department_ where emp_id = empid_;
    set message = 'updated successfully';
    select message;
end if;
end $$ 
delimiter ;

drop procedure updatedepartment;

call updatedepartment('sales',102)
