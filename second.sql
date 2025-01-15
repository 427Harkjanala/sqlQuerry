use decemberbatch;

--  ORDER BY
select * from customers_100;
select `First Name`,`Last Name` from customers_100;
select `First Name`,`City` from customers_100
order by `First Name` asc, 'City' desc;

-- scenari 1: Find the 7th largest price(use limit)
select * from employees;
select First_Name,Last_Name,Salary from employees order by SALARY desc limit 3;

select Model,Price from cars93 order by Price desc limit 1 offset 6;

-- scenari 2: Find the  largest price

select Model,Price from cars93 order by Price desc limit 1;

-- scenari 3: show me names and salary of top 3 highest salaried peoples (Limit)

-- ALIAS
select * from employees;
select Salary, concat(First_Name,"_",Last_Name)
as Name from employees;

-- JOINS
-- 1 INNER JOIN
select * from emp_2;
alter table emp_2 rename column did
to edid;
select * from dept;

select * from emp_2 inner join dept
on emp_2.edid = dept.dept_id;

select * from emp_2 inner join dept
on emp_2.edid = dept.dept_id;

select emp_2.fn,emp_2.ln,emp_2.edid, dept.dname, dept.dept_id
from emp_2 inner join dept
on emp_2.edid = dept.dept_id;

-- 2 LEFT JOIN

select * from 
emp_2 left join dept
on emp_2.edid = dept.dept_id;

-- 3 Right JOIN

select * from 
emp_2 right join dept
on emp_2.edid = dept.dept_id;

-- 4 FULL OUTER JOIN
select * from emp_2 left join dept on emp_2.edid = dept.dept_id
union
select * from emp_2 right join dept on emp_2.edid = dept.dept_id;

-- 5 CROSS JOIN

select e.fn as employeeName, d.dname as deptName
from emp_2 e cross join dept d;

-- 6 SELF JOIN
select * from emp_2;
select * from emp_data;     

select e1.Fname,
 e2.loc, e2.email
from emp_data e1
inner join emp_data e2 on e1.EmpID = e2.MGR_ID;

-- GROUP BY

select * from emp_2;
select edid, sum(sal) from emp_2 group by edid;
select edid, avg(sal) from emp_2 group by edid;
select edid, count(sal) from emp_2 group by edid;
select edid, max(sal) from emp_2 group by edid;
select edid, min(sal) from emp_2 group by edid;


 




 