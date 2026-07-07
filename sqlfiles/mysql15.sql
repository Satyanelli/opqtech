use social_db;
-----1 to 1-----
create table peops(
peop_id int primary key auto_increment,
name varchar(30));
 describe peops;
create table passes (
 pass_id int primary key auto_increment,
 series varchar(10),
 peop_id int ,
 foreign key(peop_id)
 references peops (peop_id));
 drop table passes;
 create table passes (
 pass_id int primary key auto_increment,
 series varchar(10),
 peop_id int unique,
 foreign key(peop_id)
 references peops (peop_id));
 
 insert into peops(name) values 
 ("kohli"),
 ("dhoni"),
  ("rohit");
  
  select * from peops;
  
  insert into passes(series,peop_id)values
  ("ABCTV56GHJ",1),
  ("BBCDRT56Y8",2),
  ("BCTVY6GHL",3);
  SELECT * FROM passes;
  