 show databases;  -- will show database in mysql
 
 use sakila;  -- use sakila as a database
 
 -- show table to see all table
 show Tables; 
 
 
 -- select statment (DQL)  * access all column
 
 select * from actor;
 
 describe actor; -- will give table info ( column, datatype, relationship and more )
 
 select actor_id, first_name from actor;
 
use regex123;
select * from product;

select * from orders;

-- update orders set productid=101 where orderid = 995
select product.pid, product.pname, product.price, orders.city from product
join orders where product.pid=orders.productid;

select product.pid, product.pname, product.price, orders.city from product
inner join orders on product.pid=orders.productid;

SELECT 
    product.pid,
    product.pname,
    product.price,
    orders.productid,
    orders.city
FROM
    product
        LEFT JOIN
    orders ON product.pid = orders.productid;

SELECT 
    product.pid,
    product.pname,
    product.price,
    orders.productid,
    orders.city
FROM
    orders
        LEFT JOIN
    product ON product.pid = orders.productid;
    
select product.pid, product.pname, product.price,orders.productid, orders.city from product
right join orders on product.pid=orders.productid; 



use sakila;
select * from actor; 

desc actor;
select count(actor_id), count(distinct actor_id) from actor;

select * from film_actor; 

desc film_actor;

SELECT 
    actor.actor_id,
    actor.first_name,
    film_actor.actor_id,
    film_actor.film_id
FROM
    actor
        JOIN
    film_actor
WHERE
    actor.actor_id = film_actor.actor_id and actor.actor_id=1; 
    
    