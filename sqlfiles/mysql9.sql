use social_db
CREATE  TABLE  population(id INT,
name varchar(30) ,age int);
DESCRIBE population;
ALTER TABLE population
modify name varchar(30) NOT null;
ALTER TABLE population 
ADD  ID INT primary key;
ALTER TABLE population 
ADD   primary key(ID);

ALTER TABLE population
DROP primary key;

ALTER TABLE population 
ADD  unique name  varchar(30) ;
ALTER TABLE population 
MODIFY  ID INT  auto_iNcrement;
ALTER TABLE population 
ADD  unique ( name) ;
ALTER TABLE population
DROP PRIMARY KEY;


show index from population;
alter table population 
drop name;
describe population;

