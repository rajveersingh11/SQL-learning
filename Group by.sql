-- group by
use sakila;
select customer_id from payment group by customer_id;
-- we use group by on duplicat values
select payment_id, count(*) from payment group By payment_id;
select customer_id, sum(amount) from payment group by customer_id;  -- if we want to access any data we have to use aggrigate function

select customer_id, count(customer_id) from payment 
where customer_id > 3 group by customer_id;

-- count is a aggrigate function
-- kabhi bhi where condition aggrigate function par nhi chalta 
-- agar aggrigate function se data filter karna h to having use karte h
-- error
select customer_id, count(customer_id) from payment 
where count(customer_id) > 30 group by customer_id;

-- filter on aggrigate
select customer_id, count(customer_id) from payment 
 group by customer_id having count(customer_id);
 
 --
 select amount, count(*), sum(amount) from payment group by amount;
 select amount, count(*), sum(amount) from payment where amount >2 group by amount having count(*)>3000;
  select amount, count(*) as totalcount, sum(amount) from payment where amount >2 group by amount having totalcount>3000;
  
  select * from payment;
  -- get the staff and the total num of customer serve by each staff
  select staff_id , count(customer_id) from payment group by staff_id;
  -- get the total amount and the total payment done for each month
  select  month(payment_date), sum(amount), count(amount) 
  from payment group by month(payment_date);
  -- get the amount and total num of unqu customer who have done payment for each amount
  select amount, count(distinct customer_id) from payment group by amount;
  -- get the num of transaction achive for each amount for the year 2005 where the transaction > 15
SELECT amount, COUNT(*) AS trans FROM payment WHERE YEAR(payment_date) = 2005
GROUP BY amount HAVING COUNT(*) > 15;


 
