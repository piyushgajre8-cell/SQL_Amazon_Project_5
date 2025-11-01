create database office;
use office;
create table employees(
emp_id int primary key,
name varchar(50),
salary decimal(10,2),
manager_id int);
insert into employees(emp_id,name,salary,manager_id)values
(1,'Aditya',95000,null),
(2,'Meera',85000,1),
(3,'Tanish',90000,1),
(4,'Siya',88000,2),
(5,'Arjun',65000,3),
(6,'Ayan',80000,2);
select * from employees;
select 
e.name as employee_name,
e.salary as employee_salary,
m.name as manager_name,
m.salary as manager_salary
from employees e 
join employees m
on e.manager_id = m.emp_id
where e.salary > m.salary;