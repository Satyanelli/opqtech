use social_db;
select * from employees;
select name,age ,
CASE country
when"us" then "united states"
when "uk" then "united kingdom"
when"india" then "india"
else "nothing"
end as country_name;

select name,salary,
CASE
when salary < 20000 then "low"
when salary between 20000 and 40000 then "medium"
else "high"
end as salary_level
from employees;

alter table employees
add sal_cat varchar(30);

update employees
set sal_cat=
case
when salary < 20000 then "low"
when salary between 20000 and 40000 then "medium"
else "high"
end
where sal_cat is not null;


select name,country
from employees
order by
case 
when "india" then 1
when "uk" then 2
else 3
end ;
delete sal_cat from employess;

select
count(case when dept="it" then 1 end) as it_emps,
count(case when dept="ca" then 1 end) as ca_emps,
count(case when dept="hr" then 1 end) as hr_emps
from employees;
select
sum(case when dept="it" then 1 else 0 end) as it_emps,
sum(case when dept="ca" then 1 else 0 end) as ca_emps,
sum(case when dept="hr" then 1 else 0 end) as hr_emps
from employees; 

 