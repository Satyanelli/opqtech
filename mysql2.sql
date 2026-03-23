USE social_db;

INSERT INTO sales(amount , sale_date)values(400,"2026-03-01"),
(500,"2026-02-04"),
(600,"2026-04-06"),
(700,"2026-05-07"),
(800,"2026-06-02");
select * from sales;
select * from sales 
where amount <500;
select * from sales 
where sale_date = 2026-03-03;
select * from sales 
where sale_date <" 2026-03-01";
select * from sales 
where sale_date > "2026-03-01";
select * from sales 
where sale_date < "2026-05-07";
select * from sales 
where sale_date = "2026-03-01";

