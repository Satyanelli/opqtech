select * from employee;
select avg(salary)  from employee;
select avg(salary)  from employee where salary < 60000;
use social_db;
create table employees(id int,name varchar(30),age int,dept varchar(30),salary int);

drop table employees ;
select * from employees;
use social_db;
insert into employees(id,name ,age,dept,salary,country)values(1,"satya",23,"IT",30000,"india");
insert into employees(id,name ,age,dept,salary,country)values(2,"sekhar",25,"IT",40000,"india");
insert into employees(id,name ,age,dept,salary,country)values(3,"chanikya",22,"CA",60000,"uk");
insert into employees(id,name ,age,dept,salary,country)values(4,"vignan",20,"finance",20000,"usa");
insert into employees(id,name ,age,dept,salary,country)values(5,"ajay",26,"hr",20000,"usa");
insert into employees(id,name ,age,dept,salary,country)values(6,"sankar",30,"finance",60000,"uk");
insert into employees(id,name ,age,dept,salary,country)values(7,"gopi",32,"ca",80000,"india");
insert into employees(id,name ,age,dept,salary,country)values(8,"ramesh",33,"IT",50000,"uk");
select * from employees;
select avg (salary) from employees;
select avg (salary ) from employees where country = "uk";
select avg (salary ) from employees where country = "usa";
select avg (salary ) from employees where country = "india";
select avg (age ) from employees where salary = 40000;
select avg (age ) from employees where country = "uk";
select avg (salary ) from employees where dept = "it";

select count(*) from  employees;
select count(age) from employees;
select count(distinct dept) from employees;
select count(1) from employees;
select count(2) from employees;

select * from employees group by dept;
select dept from employees group by dept;
select dept, count(*) as total_emp  from employees group by dept;
select dept ,sum(salary) as total_sal from employees group by dept;
select dept, avg (age) as avg_age from employees group by dept;

select age ,count(*) as total_age from employees group by age;
select age ,sum(salary) as total_sal from employees group by age;
select age ,count(distinct dept) as total_dept from employees group by age;