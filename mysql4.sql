USE social_db;

INSERT INTO employee(name ,salary)values("duggi",30000);
INSERT INTO employee(name ,salary)values("ajy",40000),
("chanu",60000),
("vignan",30000),
("sekhar",50000);

select * from employee;
select * from employee
where salary BETWEEN 30000 AND 40000;
SELECT DISTINCT name FROM employee;
SELECT DISTINCT salary FROM employee;
select * from employee
where salary BETWEEN 30000 AND 40000;
select * from employee
where salary BETWEEN 30000 AND 40000;
----
select * from employee
where salary IN(30000,40000,60000);
select * from employee
where salary IN(30000);

select * from employee
where NAME LIKE '%A';
select name from employee
where name LIKE 'A%';
select name from employee
where name LIKE 'v%';
select name from employee
where name LIKE 'A__';
select name from employee
where name LIKE '__g%';
select name from employee
where name LIKE '__r';
select name from employee
where name LIKE '%r';




