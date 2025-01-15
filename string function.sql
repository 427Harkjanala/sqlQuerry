use decemberbatch;
-- string function and methods
-- substr()
select * from cars93;
select manufacturer, substr(manufacturer,2,4) from cars93;
-- replace()
select manufacturer, replace(manufacturer,'BMW','MYBMW') from cars93;
select manufacturer, replace(manufacturer,'Volvo','Dream') from cars93;
-- instr()
select type, instr(type,'z') from cars93;
-- upercase() lower
select type, upper(type) from cars93;
select type, lower(type) from cars93;
-- char length()
select type, char_length(type) from cars93;
select * from cars93;
select * from customers_100;
-- Ltrim(), Rtrim(), Trim()
select city, trim(city) from customers_100;
select *  from orders1;
select customer_name, trim(customer_name) from orders1;
select customer_name, ltrim(customer_name) from orders1;
select customer_name, rtrim(customer_name) from orders1;
-- right() and left()
select city, right(city,4) from customers_100;
select city, left(city,5) from customers_100;
-- CONCAT, CONCAT_WS
select `First Name`,`Last Name`,concat(`First Name`,'+',`Last Name`)
from customers_100;

select `First Name`,`Last Name`,concat_ws('=',`First Name`,`Last Name`)
from customers_100;

-- format
select price, format(price,3) from cars93;