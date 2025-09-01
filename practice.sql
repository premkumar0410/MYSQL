create database practice;

use practice;

create table employee(
empId integer, 
name varchar(30),
contact bigint);

alter table employee add column email varchar(30);

insert into employee values (101,"prem",90909090909,"prem@gmail.com");

select * from employee;