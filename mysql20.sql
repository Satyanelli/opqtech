select * from employees;

 with case_exm as(
 select name ,age ,
 CASE country
when"us" then "united states"
when "uk" then "united kingdom"
when"india" then "india"
else "nothing"
end as country_name
from employees)
select * from case_exm;

select * from case_exm;
 
 with high_sal_emp as(
 select name ,age, salary,dept from employees
 where salary > 20000) , dept_salaries as
  (select dept,sum(salary)as total_sal
 from high_sal_emp group by dept)
 select * from high_sal_emp;
 
 
 