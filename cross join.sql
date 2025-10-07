use regex123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);

select * from product;

-- cross join or cartensian join
-- each row of 1st table is combined with each row of another table (m*n)
-
    

-- natural join   
-- which works on common name of columns
-- if there are no same columns name then it will work as cross join
select p.pid, p.price, o.productid, o.city from product as p
natural join orders as o;
-- if common columns then it will work as inner  join



 