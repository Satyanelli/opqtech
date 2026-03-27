select * from employees;
select dept ,avg(salary) from employees group by dept having  avg(salary )>1600;
select dept ,avg(salary) from employees group by dept having  avg(salary )<1600;
select dept ,avg(salary) from employees group by dept having  avg(salary )>3000;

select max(salary) from employees;
select max(salary) from employees where age < 25;
select min(salary) from employees where age < 25;
select sum(salary) as total_salary from employees where dept="IT";
select dept,salary ,avg(salary) from employees where age <25 group by dept,salary;

select dept,
count(*) as total_emps,
min(salary) as min,
max(salary) as max ,
sum(salary) as sum,
avg (salary)as avg
from people group by dept;