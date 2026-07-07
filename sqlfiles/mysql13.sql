use social_db;

insert into friends (name,dob)values("sefan","1995-01-10"); 
insert into friends (name,dob)values("simon","1999-08-11");
insert into friends (name,dob)values("sefan","1985-12-12"); 
drop table friends;
create table friends (id int primary key auto_increment,
name varchar (30), dob DATE);
insert into friends (name,dob)values("steve", "2000-01-22"); 
insert into friends (name,dob)
values
("stefan", "2002-11-12"),
("steve", "1999-09-25"),
("steve", "1998-10-18");
select * from friends;
select * from friends where dob > "1998-10-18";
select date_format(dob,"%m,%Y,%d") from friends;
select name,date_format(dob,"%d,%m,%Y") as format from friends;
select name,date_format(dob,"%d,%m,%Y") as format from friends;
select current_date();
insert into friends(name ,dob)values ("elena",curdate());
select adddate(curdate(),10)
select subdate (curdate(),10);


create table app(id int primary key auto_increment,
name varchar (30), app_dt datetime);
insert into app (name,app_dt)values("steve", "2000-01-22 08:46:55"); 
select * from app;
select adddate("2000-01-22 08:46:55",8)
SELECT ADDTIME('2000-01-22 05:00:00','05:00:00');
SELECT ADDTIME('2000-01-22 08:46:55', '05:00:00');
SELECT adddate("2000-01-22 08:46:55",8)
SELECT TIMEDIFF("2000-01-22 08:46:55","2000-05-22 07:46:55");




create table user_login(login_id int primary key auto_increment,
user_id int,login_time timestamp default current_timestamp,
logout_time timestamp);
insert into user_login(user_id)values(1)
SELECT * FROM user_login;
  
  
  update user_login 
set logout_time = current_timestamp
where login_id = 1;
select *  from user_login;

