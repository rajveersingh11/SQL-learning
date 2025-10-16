-- constrains are rules and regulations which don't allow invalid data entry in the table
-- NOT NULL

create database regexdb;
use regexdb;
create table test(id int);
insert into test values(10),(11),(10),(null);
select * from test;

create table test2(id int not null);
insert into test2 values(10),(11),(10);
insert into test2 values(null); -- this will give error becouse of null value

-- UNIQUE
CREATE TABLE test3 (
    id INT UNIQUE
);
insert into test3 values(10),(11),(10); -- duplicate value

-- DEFAULT
create table test4(id int , gender varchar(20)); -- default
insert into test4(id) values(10);
select * from test4;

create table test5(id int , gender varchar(20) default 'MALE'); -- default
insert into test5(id) values(10);
select * from test5;

-- Check 
create table test6(id int check (id>5) , gender varchar(20) ); -- check
insert into test6(id) values(10);
insert into test6(id) values(3); -- this will give an error 
select * from test6;

create table test7(id int check (id>5) , gender varchar(20) check (gender in ('male', 'female' ))); -- check
insert into test7(id, gender) values(10 , 'male');
insert into test7(id) values(3); -- this will give an error 
select * from test7;


create table test8(id int check (id>5) , gender varchar(20),
 constraint db_test8_gender_chk check (gender in ('male', 'female' ))); -- check
insert into test8(id, gender) values(10 , 'male');
insert into test8(id, gender) values(11, 'tans'); -- this will give an error 
select * from test8;


-- 

create table product(pid int primary key, pname varchar(20));
insert into product values(101,'iphone');
-- insert into product values (101, 'ipad');
insert into product values(102, 'ipad');
select * from product;


-- with foreign key 
create table orders( order_id int , price int , pid int, foreign key (pid) references product(pid));
insert into orders values(1923, 200, 101), (1938, 250, 102), (1987, 275, 101), (1978, 500, 108);
select * from orders;
-- without foreign key
create table orders1( order_id int , price int , pid int);
insert into orders1 values(1923, 200, 101), (1938, 250, 102), (1987, 275, 101), (1978, 500, 108);
select * from orders1;


-- we have create 2 table employee were epid is primery key , name, email that unique name it constraint
-- department dpid as unique, and department name with check it should be biology or physics
-- in the department try to insert null value column

create table employees(e_id int , name varchar(20), email varchar(50) unique,
insert into employees values(1 , raj , raj@gmail.com, 101);


