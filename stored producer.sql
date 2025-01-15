use decemberbatch;
select * from 50_startups;
delimiter //
create procedure sp1()
begin 
select rnd , newstate from 50_startups where
NewState = 'Florida';

end //
delimiter ;
select * from emp_data;
call sp1();
call new_sp2(60918);
select * from employees;
-- Case Statements
select employee_id ,first_name,salary,
	case
		when employee_id > 140 then 4000
        when employee_id < 140 then 1000
		else 8888
	end as Usalary
from employees;

-- String Function and Methods
select * from cars93;
select manufacturer,substr(manufacturer,2,4) from cars93;

select manufacturer,replace(manufacturer,'Audi','@udiNew') from cars93;

select manufacturer, instr(manufacturer,'e') from cars93;

select manufacturer , upper(manufacturer) from cars93;
select manufacturer , lower(manufacturer) from cars93;
select manufacturer, char_length(manufacturer) from cars93;
select * from customers_100;
select company,trim(company) from customers_100;
select company,ltrim(company) from customers_100;
select company,rtrim(company) from customers_100;
select dname , ltrim(dname) from dept;
select dname , rtrim(dname) from dept;
select dname , trim(dname) from dept;
select company, right(company,6) from customers_100;
select company, left(company,6) from customers_100;
select `First Name`,`Last Name`,concat(`First Name`,'+',`Last Name`)
from customers_100;

select `First Name`,`Last Name`,concat_ws('=',`First Name`,`Last Name`)
from customers_100;
select * from cars93;
select price , format(price,3) from cars93;

