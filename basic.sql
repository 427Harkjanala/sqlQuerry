create database decemberbatch;
show databases;
use decemberbatch;
drop database decemberbatch;

-- single line coment
# single line comment
/*  multiline comment 
   table creation and data insertion  */
   
create table students(
Name char(20), Age int , City varchar(20));

-- first approach
insert into students(Name,Age,City)
values('Hark J',25,'Pune');

-- second approach
insert into students
values('Aniket C',25,'Mumbai');

insert into students
values('John J',24,'USA'),
('Sachin P',23,'UK');

-- for compelete data
select * from students;

-- for particular column
select Name, Age from students;  

select * from 50_startups;
select * from customers_100;
-- Where clause
select * from 50_startups where Profit < 100000 && State = "Florida";
/* Like operator ==> '%A', '%b',  '%abc%',  __ => one character 'A__'  'H_llo',  '___Z ' => ending with Z  */

select * from 50_startups where STATE like '%N';
select * from 50_startups where STATE like '%li%';
select * from customers_100 where Country like 'C_____';
select * from customers_100 where Country like '%nd';

-- between
select * from cars93;
select * from cars93 where Weight
between 3000 and 5000;

-- IN
select * from cars93 where RPM
in (4800,6000);
select AirBags from cars93 where AirBags
in('None','Driver only');

-- Aggrate functions

select * from 50_startups;

select count(Profit) from 50_startups;
select sum(Profit) from 50_startups;
select avg(Profit) from 50_startups;
select min(Profit) from 50_startups;
select max(Profit) from 50_startups;
select group_concat(State) from 50_startups;

select distinct state from 50_startups;
select * from 50_startups;

-- update 
set SQL_SAFE_UPDATE = 0;
update cars93 set Horsepower = 150
where Manufacturer = 'Acura';

-- Delete / turncate / drop
-- SET SQL_SAFE_UPDATES = 0 ==> ON  / 1 ==> OFF
select * from 50_startups;
SET SQL_SAFE_UPDATES = 0;
delete from 50_startups where STATE = 'New York';
truncate table 50_startups;
 drop table 50_startups;

-- ALTER TABLE
select * from 50_startups;
alter table 50_startups add column SID int;
alter table 50_startups modify column SID varchar(20);
alter table 50_startups drop column SID;
-- column rename
alter table 50_startups rename column State
to NewState;
-- table rename
alter table 50_startups rename
to New50_startups;
alter table new50_startups rename
to 50_startups;

-- update set
select * from cars93;
-- column change
update cars93 set Cylinders = 10 where
AirBags = 'None';
update cars93 set cylinders = 10;
update cars93 set cylinders = 11, EngineSize = 2
where airbags = 'none';

-- limit

select * from customers_100 limit 5;
select * from customers_100 limit 5,3;
select version();












   
   
