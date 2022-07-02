//To create new Empoyee table//
create database Rugved
use Rugved
alter table employee(e_id int default (1,1) ,e_name varchar(20),e_age int,e_gender varchar(20),e_dept varchar(20),e_location varchar(20))
select * from  employee
alter table employee 
add  e_salary varchar(20)
insert into employee values(1,'Rupali',22,'Female','Nurse','Pune',35000);
insert into employee values(2,'Babana',29,'male','Tester','Pune',65000);
insert into employee values(3,'Shubham',27,'male','Developer','Mumbai',60000);
insert into employee values(4,'Nanasaheb',32,'male','Tester','Pune',59000);
insert into employee values(5,'Rahul',28,'male','Developer','Pune',70000);
insert into employee values(6,'Sonali',25,'Female','Hr','Mumbai',40000);
insert into employee values(7,'Avinash',26,'male','Underwriter','Pune',55000);
alter table employee add 
select top 1 e_salary, e_name from employee order by e_salary desc
select  max (e_salary), e_age from employee group by e_age

create view e_emp 
as
select * from e_emp
exec e_emp
insert into e_emp values (8,'XYZ',50,'Female','ABC','PQR',100000)
select * from employee
  
hi