select * from people;
select * from people 
where age < 26 AND location="india";
select * from people 
where age = 26 AND location="usa";
select * from people 
where age < 26 OR location="india";
select * from people 
where age = 26 OR location="india";
select * from people 
where age >30 XOR location="india";
select * from people 
where age < 26 XOR (location="india" OR location="usa") ;