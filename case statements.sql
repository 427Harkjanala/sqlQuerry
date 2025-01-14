use decemberbatch;
-- stored producer
call p1();   
call new_procedure(30);
-- switch case
select * from employees;
select employee_id, First_name, salary,
  case
    when employee_id > 140 then 4000
      when employee_id < 140 then 1000
      else 8888
      end as Usalary
  from employees;
  select * from stud;
  select studentId, Name, Math,
  case
    when math > 80 then 'A'
    when math > 80 then 'B'
    when math > 80 then 'C'
    when math > 80 then 'D'
    when math > 80 then 'E'
    when math > 35 then 'pass'
      else 'Fail'
      end as math
  from student50;
   select  Student_name, marks,
  case
    when marks > 90 then 'A'
    when marks > 80 then 'B'
    when marks > 70 then 'C'
    when marks > 60 then 'D'
    when marks > 35 then 'pass'
      else 'Fail'
      end as marks
  from stud;
  select * from employee;
  SET SQL_SAFE_UPDATES = 0;
  UPDATE employee
SET bonus = 
    CASE 
        WHEN performance_rating = 'Excellent' THEN bonus * 1.20  -- 20% increase
        WHEN performance_rating = 'Good' THEN bonus * 1.10       -- 10% increase
        WHEN performance_rating = 'Average' THEN bonus * 1.05    -- 5% increase
        WHEN performance_rating = 'Below Average' THEN bonus * 1.02 -- 2% increase
        ELSE bonus  -- No change for other ratings
    END;
    select * from orders1;
    SELECT order_id, customer_name, region, order_amount
FROM orders1
WHERE 
    CASE 
        WHEN region = 'North' THEN region
        WHEN region = 'East' THEN region
        WHEN region = 'West' THEN region
        WHEN region = 'South' THEN region
        ELSE NULL
    END IS NOT NULL;
    select * from employees;
    SELECT employee_id, FIRST_NAME, DEPARTMENT_ID, JOB_ID, salary
FROM employees
ORDER BY 
    CASE 
        WHEN JOB_ID = 'FI_ACCOUNT' THEN salary
        WHEN JOB_ID  = 'HR_REP' THEN department_id  
        WHEN JOB_ID = 'IT_PROG' THEN FIRST_NAME  
        ELSE employee_id  
    END;

