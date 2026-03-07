-- third class
show tables;
select * from customers;
drop table customers;

create table customers(
	customer_id int, customer_name varchar(30),
    performance varchar(20),
    salary int, date_of_joining date);
    
insert into customers values
(1, 'AA', 'Good', 50000, '2022-03-15'),
(2, 'BB', 'Excellent', 42000, '2021-07-10'),
(3, 'CC', 'Very Good', 35000, '2023-01-20'),
(4, 'DD', 'Good', 55000, '2020-11-05');

select * from customers;
-- where clause used for applying the filteration
select * from customers where performance = "Good";

select * from customers where performance = "Very Good";

select * from customers where performance = "Very Good" and salary > 2000;

select * from customers where customer_id > 2 and salary > 3000;

select * from customers where customer_id > 2 or salary > 3000;

SELECT customer_name
FROM customers
WHERE salary BETWEEN 20000 AND 50000;

select customer_name from customers where performance is null;

select customer_name from customers where performance is not null;

select * from customers where customer_name like "a%";

select * from customers where customer_name like "%a";


select * from customers where performance like "g%";

select * from customers where performance like "_o%";

select * from customers where performance like "___d%";

select * from customers where performance = "Good" or customer_name like "a%";

select * from customers where salary > 30000 and customer_name like "a%";




