use social_db;
create view custo_od as 
select * from customers2
inner join orders3
on customers2.cust_id = orders3.ordr_id;
select * from custo_id;

create view gopi_ord as
select customers2.name from customers2
inner join orders3
on customers2.cust_id = orders3.ordr_id where name="gopi";
show full tables;
select * from gopi_ord;


select * from employees; 

create view dept_id as
 select name , dept from employees where dept="it";
 
 select * from dept_id;
 
 create view country_id as
 select name ,age salary from 
 employees where country = "india";
 
 select * from country_id;
 drop view country_id;
