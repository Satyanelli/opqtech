create  table shopkeeper(
shpkpr_id int primary key auto_increment,
name varchar(30),email varchar(30));
describe shopkeeper;
create  table orders(
order_id int primary key auto_increment,order_date DATE ,
shpkpr_id int,
foreign key(shpkpr_id)
references shopkeeper(shpkpr_id));
insert into shopkeeper(name, email)values("satya","satya@gmail.com");
insert into shopkeeper(name, email)values("sekhar","sekhar@gmail.com");
select * from shopkeeper;
insert into orders(order_date,shpkpr_id)values("2026-03-25",1);
select * from orders;



insert into orders(order_date,shpkpr_id)values("2026-03-25",10);
insert into orders(order_date,shpkpr_id)values("2026-03-25",2);

select * from shopkeeper;
select shpkpr_id from shopkeeper where name="sekhar";
select * from orders where shpkpr_id =(select shpkpr_id from shopkeeper where name="satya");
select * from orders where shpkpr_id =(select shpkpr_id from shopkeeper where name="sekhar");
delete from orders where shpkpr_id= 1;

create  table shopkeeper(
shpkpr_id int primary key auto_increment,
name varchar(30),email varchar(30));
describe shopkeeper;

create  table orders1(
order_id int primary key auto_increment,order_date DATE ,
shpkpr_id int,
foreign key(shpkpr_id)
references shopkeeper(shpkpr_id)
on delete cascade);
insert into orders1(shpkpr_id)values(2);
select * from orders1;
delete from orders1 where shpkpr_id= 2;
select * from shopkeeper

create  table orders2(
order_id int primary key auto_increment,order_date DATE ,
shpkpr_id int,
foreign key(shpkpr_id)
references shopkeeper(shpkpr_id)
on delete  set null);

insert into orders2(shpkpr_id)values(3);



