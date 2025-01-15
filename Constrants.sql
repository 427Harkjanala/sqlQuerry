use decemberbatch;
-- constraints
-- NOT NULL
create table Products(
pID int not null, PName varchar(50), pCost int
);
insert into Products
values (1, 'Bag', 999),
(2, 'Laptop', 50000); 

select * from products;

-- UNIQUE
create table adminDetails(
aID int unique, aName varchar(50), aSalary int);

insert into adminDetails
values(101,'John J', 20000),
(102,'Harish', 30000),
(103,'Harsh', 25000);

select * from adminDetails;

-- Primary key
create table Categories(
Cid int primary key, cName varchar(50), cLocation varchar(50));

insert into categories
values(101, 'Airbus', 'pune'),
(102, 'Phone', 'Delhi'),
(103, 'Laptop', 'Mumbai');




-- Having clause
select * from cars93;

select avg(price) ,make from cars93
group by make  having avg(Price) > 50;

select count(Horsepower) , Origin from cars93
group by Origin  having count(Horsepower) > 150;






 


 
  