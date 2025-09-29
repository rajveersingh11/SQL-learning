-- multi row function (aggregate function)
use sakila;
select amount, round(amount) from payment;

select sum(amount) from payment;

select sum(amount), count(amount) from payment;
select count(amount) from payment where amount>5;

select amount, max(amount), sum(amount), count(amount), avg(amount) from payment;

select distinct amount from payment;

select count(distinct amount), count(amount) from payment;

-- get the payment id and amount for year 2005
Select payment_id, amount from payment where year(payment_date)=2005;
-- get the unqiu costmers who have the done the payment in june
select count(distinct customer_id) from payment where month(payment_date)=06;
-- get the max amount the avg amount and the diffrence btw max and avg were the amount is > 2 for year 2006


-- Group by statment (grouping similar values)
select customer_id , count(payment_id) from payment group by customer_id;


select distinct customer_id , count(payment_id) from payment; -- this will not execute
