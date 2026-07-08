select * from employees;

select *, max(salary) over() as max_sal from employees;
select *, max(salary) over(partition by dept) as max_sal from employees;
select *, max(salary) over(partition by age) as max_sal from employees;

use social_db;
create table ipl_matches(id int,team varchar(30), name varchar(30));
drop table ipl_matches;
create table ipl_matches(id int,team varchar(30), name varchar(30),runs int,match_date date);
insert into ipl_matches(id,team,name,runs,match_date)values
(1,"RCB","kohli",85,"2025-04-24"),
(1,"csk","dhoni",79,"2025-04-24"),
(2,"mi","rohit",82,"2025-04-25"),
(2,"dc","rahul",73,"2025-04-25"),
(3,"pk","iyer",86,"2025-04-26"),
(3,"srh","abhi",77,"2025-04-26"),
(4,"kkr","rinku",76,"2025-04-26"),
(4,"RCB","kohli",95,"2025-04-26");
select * from ipl_matches;

select *, row_number()
 over (partition by id order by runs desc  ) as rn from ipl_matches;
 
 with top_scr as(
 select *, row_number()
 over (partition by id order by runs  desc ) 
 as rn from ipl_matches)
 select * from  top_scr where rn=1;
 
 select *, rank() over (partition by id order by runs desc  ) as top_rank from ipl_matches;
 
  select *, rank() over (partition by runs    ) as top_rank from ipl_matches;
  
  with top_rank as(
   select *, rank() 
   over (partition by id order by runs desc  )
   as top_rank from ipl_matches)
   select * from top_rank;
   
select *, sum(runs) over (partition by name order by match_date) as toatal_runs from ipl_matches;
 select *,lag(runs) over (partition by id ) as rn from ipl_matches;
select *,lead(runs) over (partition by id ) as rn from ipl_matches;
select *, ntile(3) over(order by runs desc ) as buck from ipl_matches;
select *, ntile(2) over(order by runs desc ) as buck from ipl_matches;

select name,sum(runs)  as total_runs from ipl_matches group by name; 
select *,rank() over (order by total_runs desc) as top_rnk
 from(
select name,sum(runs)  as total_runs from ipl_matches group by name)x; 