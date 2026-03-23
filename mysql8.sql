ALTER table people 
ADD username varchar(30);
select * from people;
ALTER table people 
ADD salary int not null after age;
select * from people;
alter table people
drop salary ;
-----
alter table people
modify column age varchar(30);
alter table people
modify column name  varchar(3);
alter table people
modify column location  varchar(30) not null;
use social_db;
alter table people
change  location country varchar(30);

ALTER table people 
RENAME to pop;
select * from pop;
ALTER table pop 
RENAME to people;
select * from people;

