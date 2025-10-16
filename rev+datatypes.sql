/*
operators
function. string, date, numeric. (scaler function)
group by ( operation on same set of rows)
     sum, avg, count
     
where and having

normalization:
- 1 nf
- 2nf => partial dependency
     ( non - key attribute partially on key value)
     1. a. 50
     1. a. 60

1. a            1. 50
			    1.60
join
- extract 
join. where condition=condition
inner join  on
inner join. using

left join
right join

natural join
   cross join
   
cross => cartesian join

self join

table join table2 join table3
where table1.condition=table2.condtion and table2.cdtn=table3.cndtn

table join table2 on condition
join table3 on condition

-- subquery
--if inner query return 1 row it called single row subquery
>,<,<=,>=

multi row subquery
IN , =any, >any, <any, >all, <all
-- Exists


-- ##--
single row and multi row are the subquery  the subquery are exicuted at first 
-- sub query only run one time the results are compare outer query

corelaeted 
sub query are exicuted every single time based on outer query


-- Data types
-- numeric. => tinyint,samllint,mediamint,int,bigint


   
*/
use raj123;

create table tushar1(id tinyint);  # id tinyint unsigned
insert into tushar1 values(10), (-9);
insert into tushar1 values(127); # -128 to 127 (1byte) 2**8
select * from tushar1;

-- smallint , 2 byte
create table tushar2(id smallint);  # id tinyint unsigned
insert into tushar2 values(10), (-9);
insert into tushar2 values(127); # -128 to 127 (1byte) 2**8
select * from tushar2;

create table raj1(id float, id2 double);
insert into raj1 values(10.12345678, 10.123455678);
select * from raj1;

create table raj2(id2 double(5,2));
insert into raj2 values(10.123456789);
insert into raj2 values(170.123456789);
insert into raj2 values(1067.12345678);
select * from raj2;


create table raj3(gender char(5) );
insert into raj3 values('abs');
insert into raj3 values('abscd');
insert into raj3 values('absws   ');
select gender, char_length(gender) from raj3;  # char trenket all sapaces from the last


-- 
-- varchar
create table raj4(gender char(5) );
insert into raj4 values('abs');
insert into raj4 values('abscd');
insert into raj4 values('abs      ');
select gender, char_length(gender) from raj4;
 




