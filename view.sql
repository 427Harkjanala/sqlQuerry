use decemberbatch; 
select * from 50_startups;
-- view in sql
create   view shortDta as
select   NewState, Profit from 50_startups where NewState = "Florida";

select * from shortDta;

-- Scenario 1 --> Retrieve all employees first name and last name
select * from emp_data;

create view EmployeeName as
select FName, LName from emp_data;

select * from EmployeeName;
-- 2 --> List all Employees earning a salary greater then 50000

create view HighSalEmp as
select * from emp_data
where salary > 50000;

select * from HighSalEmp;
-- 3. find the highest among employees

create view HighestSalary as
select max(Salary) as highest_salary
from emp_data; 

select * from HighestSalary;
-- 4 count the number of employees in each location
select * from emp_data;
select * from employees;
select * from emp_2;
create view EmployeeCountsByLocation as
select LOC, count(*) as emp_data
from emp_data
group by LOC;

select * from EmployeeCountsByLocation;  
-- Retrive the names of managers
create view Managers as
select distinct manager_id, first_name, last_name
from employees
where MANAGER_ID is not null;

select * from Managers; 
-- calculate the average salary for each location
create view AverageSalaryByLocation as
select loc , avg(salary) as avg_salary
from emp_data
group by loc;

select * from AverageSalaryByLocation;
-- Find employees who don't have a manager
CREATE VIEW EmployeesWithoutManagers AS
SELECT *
FROM employees
WHERE manager_id IS NULL;

select * from EmployeesWithoutManagers;

-- Retrieve employees whose first names start with 'A':
CREATE VIEW EmployeesWithAFirstName AS
SELECT *
FROM employees
WHERE first_name LIKE 'A%';

select * from EmployeesWithAFirstName;

-- Find the employee with the highest salary in each location
SELECT loc, fname, lname, salary FROM emp_data e
WHERE salary in
(SELECT MAX(salary) FROM emp_data WHERE loc = e.loc);

-- UNION AND UNION ALL IN SQL
 
-- union all 
 