show databases;
use social_db;
show tables;
DESCRIBE people;
select * from people;
select name,age from people;
select age+15 from people;
SELECT distinct location from people;
select * from people 
where age = 28;
select * from people 
where age > 28;
select * from people 
where location= "usa";
select * from people 
where age >25 AND location = "
india";
select * from people 
where name <"v";
select * from people 
where name > "s";
select * from people 
where age <>28;
select * from people 
where location = null;
