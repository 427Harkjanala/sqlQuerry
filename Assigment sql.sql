use decemberbatch;
-- WHERE CLAUSE
select * from emp_2;
select * from emp_data;

select  * from  emp_2
where age > 30;
-- 2
select * from orders;
select * from orders where totalAmount < 500;
-- between
select * from employees;
select * from orders where orderDate between '01/01/2025' and '31/01/2025';
select * from salary where emp_data between 40000 and 60000;
-- like
select * from emp_data where Email like '%gmail.com';
select * from products where PName like 'A%';
-- is null and is not null
select * from customers_100;
select * from customers_100
where Company  IS NULL;
select * from orders
where  CustomerId IS not NULL;
-- Aggregate functions
select SUM(salary) salary
from employees;
select * from products;
select MAX(pCost) AS pCost
FROM products;
select min(pCost) AS pCost
FROM products;
select avg(pCost) AS pCost
FROM products;
-- Alter table
select * from employees;
alter table employees
ADD date_of_birth DATE;
select * from customers_100;
select * from products;
alter table products
MODIFY PName  VARCHAR(15);
-- update set
SET SQL_SAFE_UPDATES = 0;
update employees
set salary = salary * 1.10;  
select * from orders;
ALTER TABLE orders
ADD COLUMN Statuss varchar(25);
update orders
set statuss = 'completed'
where totalAmount > 1000;
-- limit
select * from employees;
select * from employees 
order by SALARY desc limit 5; 
select * from products limit 5;
-- Order BY
select * from customers_100;
select * from persons
order by 'LastName' asc;
select  * from products
order by 'price' desc;
-- Alias
select * from employees;
select LAST_NAME as "Employee Name"
from employees;
select *, pCost as "Product Cost"
from products;
-- Join
alter table orders
add customerName varchar(50);
insert into orders values(107, 7, 20-01-2025, 3000, 'Completed', 'Harish');
select * from orders;
select * from persons;
select * from customers_100;
select  e.LAST_NAME, d.dname
FROM employees e
INNER JOIN dept d ON e.DEPARTMENT_ID = d.dept_id;
select * from employees;
select * from emp_2;
SELECT e.FIRST_NAME, d.dname
FROM employees e
LEFT JOIN dept d ON e.DEPARTMENT_ID = d.dept_id;
-- Group by
select * from employees;
SELECT employee_Id, SUM(salary) AS salary
FROM employees
GROUP BY EMPLOYEE_ID;

SELECT department_id, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id;
-- Having
SELECT department_id, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(department_id) > 5;

SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 10000;
-- constrants
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customerId) REFERENCES persons(customerId);
-- union/ union all
select * from products;
SELECT PName FROM products
UNION
SELECT PName FROM products;
SELECT PName FROM products
UNION all
SELECT PName FROM products;