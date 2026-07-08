create table customers2(
cust_id int  primary key auto_increment,
name varchar(30));
 create table orders3(
ordr_id int primary key auto_increment,
email varchar(30));
insert into customers2(name)values("gopi"),
("ramesh"),("satya");
insert into orders3(email)values("gopi@gmail.com"),
("ramesh@gmail.com"),("satya@gmail.com");
select * from customers2;
select * from orders3;

select * from customers2
inner join orders3
on customers2.cust_id = orders3.ordr_id;
select customers2.name from customers2
inner join orders3
on customers2.cust_id = orders3.ordr_id where name="gopi";
 

select * from customers2
left join orders3
on customers2.cust_id = orders3.ordr_id;

select customers2.name from customers2
left join orders3
on customers2.cust_id = orders3.ordr_id where name="gopi";

select * from customers2
right join orders3
on customers2.cust_id = orders3.ordr_id;

select customers2.name from customers2
right join orders3
on customers2.cust_id = orders3.ordr_id where name="ramesh";

select * from customers2
left join orders3
on customers2.cust_id = orders3.ordr_id
union 
select * from customers2
right join orders3
on customers2.cust_id = orders3.ordr_id;

