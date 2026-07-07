select * from students;
INSERT INTO students(id,name,marks)values(1,"raj",88);
INSERT INTO students(id,name,marks)values(2,"ram",90);
INSERT INTO students(id,name,marks)values(3,"rajesh",96);
INSERT INTO students(id,name,marks)values(4,"rakesh",85);

select 10 + 5;
select 10 - 5;
select 10/5;
select 10 % 5;
select 10 *5;

----
use social_db;
insert into cart(item_name,item_price,item_qty)values("tomato",600,3);
insert into cart(item_name,item_price,item_qty)values("brinjal",500,5);
insert into cart(item_name,item_price,item_qty)values("beetroot",700,2);
select * from cart;
select item_name,item_price*item_qty as total_qty from cart;
select sum(item_price*item_qty)as final_qty from cart;
select sum(total_qty) as sum from cart;