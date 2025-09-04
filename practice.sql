create database practice;

use practice;

create table employee(
empId integer, 
name varchar(30),
contact bigint);

alter table employee add column email varchar(30);

insert into employee values (101,"prem",90909090909,"prem@gmail.com");

select * from employee;


use hr;

delimiter $$
create function Fullname(Firstname varchar(30) , Lastname varchar(30))
returns varchar(60)
deterministic
begin	
	declare fullname varchar(60);
    set fullname = (concat(Firstname , " ", Lastname));
	return fullname;
end $$
delimiter ;

drop function fullname;


select Fullname("prem","kumar") as full_name;




