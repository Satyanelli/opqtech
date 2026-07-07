select * from employee;
select * from employee
where name IS NULL;
select * from employee
where ID IS NULL;
select * from employee
where name IS  NOT NULL;
--------
select *  from people ;
select * from people ;

-----

SELECT CONCAT("satya", '', "nelli")
AS concat;
SELECT CONCAT("satya","nelli")
AS concat;
select concat (name,age,location) AS username from people;
select concat (name,'-',age,'-',location) AS username from people;

select concat ('-',name,age,location) AS username from people;
select concat_ws('-',name,age,location) AS username from people;
select concat_ws('*',"a","b","c");
select concat_ws("satya", NULL, "nelli");
select concat_ws("_","satya", NULL, "nelli");

