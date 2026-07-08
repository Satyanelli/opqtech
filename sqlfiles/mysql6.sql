select substring("viratkohli",6);
select substring("viratkohli",3,7);
select substring("viratkohli",2,4);
-----
select replace("i need ball","ball","bat");
select replace("i need ball","ball","bat")AS 
REPLE;
select replace("$600","$","");
select replace("1805689-6467-877","-","");
-----
select instr("satyanelli","nelli");
select instr("satyanelli","y");
select instr("satyanelli","i");
-----
select locate("satya","satyanelli",1);
select locate("nelli","satyanelli",1);
select locate("li","satyanelli",1);
------
SELECT LENGTH('Hello');
SELECT LENGTH('aqtwhgfgguyuyufgffdrgf');
SELECT LENGTH('He');

--------
SELECT character_length(Hello);
select character_length("😂");
-----
SELECT LEFT('viratkohli',5);
SELECT LEFT('Database', 4);
--
SELECT RIGHT('satyanelli', 4);
SELECT RIGHT('satyanelli', 5);
-----

select trim("     satya nelli      ");
select ltrim("     satya nelli      ");
select rtrim("      bob ");