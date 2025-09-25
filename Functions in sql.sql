use sakila;
 select * from actor where first_name like '%S';
 
 -- ( _ ) : exacly 1 char
 select * from actor where first_name like 'E_';
 
 -- get the actor id and first name were last to words TE
 -- get the actor id and first name were nn in mideal
 -- get the last name were in the last name colomn first word B and second last r
 -- get the were first name have 4 char
 -- get all the col were actor id 2 t0 9 and first name S should be in the midel and A last second last char
 
 select actor_id , first_name from actor where first_name like '%TE';
 select actor_id , first_name from actor where first_name like '_%NN%_';
 select last_name from actor where last_name like 'B%R_';
 select first_name from actor where first_name like 'S___';
 select * from actor where actor_id between 2 and 90 and first_name like '_%S%A_';
 
 
 -- operator
 -- functions
 -- inbuilt functions
 -- scaler function ( row function ) 2) multi row functions
 -- apply on each row and return the output for each row
 
 -- total char in each first_name 
 select first_name, char_length(first_name), lower(first_name) from actor;
 
 select first_name, last_name, concat(first_name,' ',last_name) from actor;
 
 select first_name, last_name, concat_ws('@','MR',first_name,last_name) from actor;
 
 
 -- substr ( to extract some data)
 select first_name, substr(first_name,3) from actor;
 -- column 
 -- starting position
 -- total charactore
 
 
 -- concat length
 -- trim function 
 -- locate
 -- replace
 
 -- python2 vs python3
 -- deffrent data types in python
 
 -- 