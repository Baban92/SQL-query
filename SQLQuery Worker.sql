create Database Demo
use Demo
create table Worker(worker_Id int,first_name varchar(20),last_name varchar(20),salary int,department varchar(20));
insert into Worker values(1,'Monika','Arora',100000,'Hr')
insert into Worker values(2,'Niharika','Verma',800000,'Admin');
insert into Worker values(3,'Vishal','Singhal',300000,'HR');
insert into Worker values(4,'Amitabh','Singh',500000,'Admin');
insert into Worker values(5,'Vivek','Bhati',500000,'Admin');
insert into Worker values(6,'Vipul','Diwan',200000,'Account');
insert into Worker values(7,'Satish','Kumar',75000,'Account');
insert into Worker values(8,'Geetika','Chauhan',90000,'Admin');
select * from Worker

alter table Worker
Add column Joining_date datetime;

create table Bonus(Worker_Ref_Id int,Bonus_date datetime,Bonus_Amount int)
insert into Bonus values(1,2016-02-20,5000)
insert into Bonus values(2,2016-06-11,3000);
insert into Bonus values(3,2016-02-20,4000);
insert into Bonus values(1,2016-02-20,4500);
insert into Bonus values(2,2016-06-11,3500);
select * from Bonus
create table Title(Worker_Ref_Id int,Worker_Title varchar(20),Affected_from datetime);
drop table Title
insert into Title values(1,'Manager',2016-02-20)
insert into Title values(2,'Executive',2016-06-11);
insert into Title values(8,'Executive',2016-06-11);
insert into Title values(5,'Manager',2016-06-11);
insert into Title values(4,'Asst.Manager',2016-06-11);
insert into Title values(7,'Executive',2016-06-11);
insert into Title values(6,'Lead',2016-06-11);
insert into Title values(3,'Lead',2016-06-11);

select * from Title

Question::
Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
ANS:: select first_name as Worker_Name from Worker

Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
ANS:: select UPPER( first_name) from Worker


Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
ANS:: select distinct (department) from Worker

Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
ANS:: select substring(first_name,1,3) from Worker


Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
ANS:: select INSTR(first_name,Binary'a')from worker where first_name='Amitabh';

Notes::
The INSTR method is in case-sensitive by default.
Using Binary operator will make INSTR work as the case-sensitive function.


Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select RTRIM(first_name) from Worker


Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
ANS:: select ltrim(department) from Worker


Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.*******
ANS:: select  distinct length(department) from Worker


Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
ANS:: select replace(first_name,'a','A') from Worker


Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
ANS:: select concat(first_name,' ',last_name) as Complte_Name from Worker


Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
ANS:: select * from Worker order by first_name asc

Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
ANS:: select * from Worker order by first_name asc,department desc

Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
ANS:: select * from Worker where first_name in ('vipul','satish');
      
Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
ANS:: select * from Worker where first_name not in ('vipul','satish')


Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
ANS:: select * from Worker where department='admin';
Select * from Worker where DEPARTMENT like 'Admin%';

Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
ANS:: select * from Worker where first_name like '%a%';


Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
ANS:: select * from Worker where first_name like '%a';

Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
ANS:: select * from Worker where first_name like '_____h'

Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
ANS:: select * from Worker where salary between 100000 and 500000;

Q-20. Write an SQL query to print details of the Workers who have joined in Feb 2014.
ANS:: Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;*****************

Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
ANS:: select count(department) from Worker where department ='admin'
select count(*)  from Worker where department ='admin'

Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
ANS:: select first_name,salary from Worker where salary between 50000 and 100000

1. select concat(first_name,' ' ,last_name),salary from Worker where salary between 50000 and 100000

2. SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM worker 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker 
WHERE Salary BETWEEN 50000 AND 100000);

Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
ANS:: select count(department) as No_of_department,department from Worker group by department order by No_of_department desc
  ORR
SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers 
FROM worker 
GROUP BY DEPARTMENT 
ORDER BY No_Of_Workers DESC;

Q-24. Write an SQL query to print details of the Workers who are also Managers.
ANS:: select w.first_name,w.last_name ,t.Worker_Title
from Worker as w
inner join Title as t
on w.worker_Id=t.Worker_Ref_Id
and t.Worker_Title in('Manager');

SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
ANS:: 

Q-26. Write an SQL query to show only odd rows from a table.
ANS:: 

SELECT * FROM Worker order by salary desc

SELECT * FROM Worker
MINUS
SELECT * FROM Title;

Q-32. Write an SQL query to show the top n (say 10) records of a table.
ANS:: select top 1 salary from (select top 4 salary from Worker order by salary desc )  result order by salary 

SELECT TOP 10 * FROM Worker ORDER BY Salary DESC;

Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
ANS:: Select top 1 salary from ( select top 5 salary from Worker order by salary desc ) result order by salary 
     
	 SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT n-1,1;******************************************************************

Q-34. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
ANS:: select max salary from (select * from Worker  where salary =(


Q-36. Write an SQL query to show the second highest salary from a table.
ANS:: Select max(Salary) from Worker 
      where Salary not in (Select max(Salary) from Worker);

Q-41. Write an SQL query to show all departments along with the number of people in there
ANS:: select count(department) ,department from Worker group by department

Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
ANS:: select w.first_name,w.last_name,w.total_salary,t.Worker_Title from (select max (salary) as total_salary ,department from Worker group by department) as T 
inner join Title as t
on w.worker_Id=t.Worker_Ref_Id



select * from Worker
select * from Title

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;