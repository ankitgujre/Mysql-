-- Third class

use cybrom;
show tables;

select * from customers;
-- Arrange salary column in descending order
select * from customers order by salary desc;

select * from customers order by salary asc;

select * from customers order by salary;   -- bydefault in ascending order

select * from customers order by salary limit 3;

select * from customers order by salary desc limit 2;

select * from customers limit 5;

select * from customers order by salary desc;


select * from customers limit 3 offset 1;

-- I want custid, salary and highest salary top 3, excent topper

select customer_id, salary from customers;

select customer_id, salary from customers order by salary desc limit 3 offset 1;

-- select customer_id, customer_name, performance from 
-- customers where performance like "G%" and "%d" and customer_id > 2 order by customer_id asc;

select customer_id, customer_name, performance from 
customers where performance like "G%d" and customer_id > 2 order by customer_id asc;

/* a short cut trick to remember the sequence
 from 
where
 group by 
 havinng 
 select 
 order by 
 limit 
 offset
*/


-- what is the difference between ms excel and sql


