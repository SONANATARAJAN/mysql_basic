create table employee(
Emp_id int primary key,
Ename varchar(50),
jobDesc varchar(100),
salary int
);
insert into employee values(1,"sona","sales",40000);
insert into employee values(2,"abi","HR",500000);
insert into employee values(3,"banu","manager",300000);
insert into employee values(4,"dhanu","engineer",70000);
insert into employee values(5,"elango","saless",40000);
insert into employee values(6,"gayu","HR",550000);
insert into employee values(7,"hari","manager",400000);
insert into employee values(8,"indu","engineer",70000);
insert into employee values(9,"jack","sales",40000);
insert into employee values(10,"karthi","manager",400000);
insert into employee values(11,"loki","HR",500000);
insert into employee values(12,"mano","sales",40000);
insert into employee values(13,"natarajan","worker",10000);
insert into employee values(14,"xiaru","worker",10000);
insert into employee values(15,"pari","worker",10000);
insert into employee values(16,"raji","worker",10000);
insert into employee values(17,"sanjai","engineer",70000);
insert into employee values(18,"thiru","manager",500000);
insert into employee values(19,"vetri","engineer",70000);
insert into employee values(20,"soni","HR",500000);
select * from employee where salary>200000 and jobDesc= "manager";

select * from employee where salary between 400000 and 500000 limit 4;

select * from employee
where jobDesc not in ("HR","sales")

select * from employee where  Ename like '__i%';

update employee 
set jobDesc="analyst" 
where jobDesc in("engineer");
select distinct jobDesc from employee; 

select * from employee
order by salary,Ename;

select * from employee 
where jobDesc= "manager"
order by salary desc;

select * from employee
order by (case jobDesc
when "manager" then 1
when "HR" then 2 
when "engineer" then 3
when "sales" then 4
when "worker" then 5
else 100 end),Ename;

select sum(salary) total from employee where jobDesc="HR";

select ucase(Ename), concat('Rs.' ,format( salary,0)) from employee order by Ename

use sample;
describe employee; 

alter table employee add column hire_date date;

update employee set hire_date="17-7-2024";

UPDATE employee SET hire_date = '2024-07-17' ;
UPDATE employee SET hire_date = '2024-01-10' where jobDesc="HR"; 
select now()
select date_format(curdate(),"%d/%m/%y") as date;
select datediff(curdate(),'2024-09-25') as days
select date_add(curdate(),interval 1 week) as 'days';
 
 select jobDesc , avg(salary) from employee
 group by jobDesc;
 
 select datediff(curdate(),'2024-09-25') as days
 
  select jobDesc , count(Emp_id) from employee
 group by jobDesc;
  
  select jobDesc , count(Emp_id) from employee
 group by jobDesc having count(Emp_id)>1;
 
 drop table employee
 
 create table employee(
Emp_id int primary key,
Ename varchar(50),
jobDesc varchar(100),
salary int
);
 
 


