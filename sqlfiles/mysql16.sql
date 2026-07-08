
create table people_1(
pep_id int primary key auto_increment,
name varchar(30));
create table subjects(
subj_id int primary key auto_increment,
name varchar(30));
 create table combination(
 pep_id int,
 subj_id int,
 foreign key(pep_id)
 references people_1(pep_id),
  foreign key(subj_id)
 references subjects(subj_id),
 primary key(pep_id,subj_id));
 
 insert into people_1(name) values 
 ("ram"),("robort"),("rahim");
 select * from people_1;
  insert into subjects(name) values 
 ("maths"),("physics"),("english");
  select * from subjects;
  insert into combination(pep_id,subj_id)values
  (1,1),(1,2),(2,3);
  select * from combination;