-- second class
show tables;
-- this query is used to see the tables in active database

desc customers;  -- it describes the table with its attributes

show databases;
-- it gives bydefault databases in the schema

-- Q. sql is declearative or procedural

/*
Sql is a declearative language because under it we give the orders or requirements and
it displays the output its not a procedural language
*/

desc customers;

/*
To make any output permanently visible in the result grid we do the pin tab by
right click over the bottom result and pin tab
*/
-- customers

insert into customers values
	(1, "ankit", "bhopal", "2023-01-01");
    
select * from customers;
select customer_name from customers;
select customer_id, customer_name from customers;

Create database A;
use A;
create table B(
	Names varchar(20), city varchar(20), dateofB date, salary int
    );

insert into B values
	("AA", "BB", "2023-01-01", 50000),
    ("CC", "DD", "2023-02-03", 10000),
    ("EE", "FF", "2001-08-06", 5000);
select * from B;

-- mysql is an open source app because we can freely download it in the system


