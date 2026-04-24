-- Home Practice sales 2
create database HomeSalesDB;
use HomeSalesDB;

create table Customers (customer_id int, customer_name varchar(90), city varchar(100));

INSERT INTO customers VALUES
(1, 'Amit', 'Bhopal'),
(2, 'Neha', 'Indore'),
(3, 'Rahul', 'Delhi'),
(4, 'Priya', 'Mumbai'),
(5, 'Vikas', 'Pune');

-- null practice 
INSERT INTO customers VALUES
(6, NULL, 'Bhopal'),
(7, 'Ankit', NULL),
(8, NULL, NULL);

select * from customers; 

create table products( product_id int, product_name varchar(90), category varchar(90), unit_price decimal(10,2));
select * from products;
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mobile', 'Electronics', 20000),
(103, 'Tablet', 'Electronics', 15000),
(104, 'Headphones', 'Accessories', 2000),
(105, 'Keyboard', 'Accessories', 1000);

create table orders(order_id int, customer_id int, order_date date);

INSERT INTO orders VALUES
(1001, 1, '2024-01-10'),
(1002, 2, '2024-01-12'),
(1003, 3, '2024-01-15'),
(1004, 4, '2024-01-18'),
(1005, 5, '2024-01-20');
select * from orders;
create table sales(sale_id int, order_id int, product_id int, quantity int);
INSERT INTO sales VALUES
(1, 1001, 101, 1),
(2, 1001, 104, 2),
(3, 1002, 102, 1),
(4, 1002, 105, 3),
(5, 1003, 103, 2),
(6, 1003, 104, 1),
(7, 1004, 101, 1),
(8, 1004, 105, 2),
(9, 1005, 102, 2),
(10, 1005, 103, 1);

select * from sales;

create table A(id int, c_name varchar(50));

drop table A;
desc A;

-- where clause 

-- who live in 'Bhopal' or 'Indore'

select * from customers where city = "Bhopal" or city = "Indore";
-- 1. Same query using IN
select * from customers where city in ('Bhopal',"Indore");

-- whose name starts with 'A'
select * from customers where customer_name like "A%";
-- 2. Case-insensitive search
select * from customers where lower(customer_name) like 'a%';


-- Retrieve all customers who live in Bhopal

select * from customers where city = 'Bhopal';

-- Get customers whose name is 'Neha'
select * from customers where customer_name = "neha";

-- Find customers whose customer_id is greater than 3
select * from customers where customer_id > 3;

-- Get customers who are not from Delhi
select * from customers where city != 'Delhi';

-- Retrieve customers whose customer_id is between 2 and 4
select * from customers where customer_id between 2 and 4;
select * from customers where customer_id > 2 and customer_id < 4;

-- Get customers who live in Bhopal OR Indore
select * from customers where city = "Indore" or city = "Bhopal";

-- Retrieve customers who live in Delhi AND have id greater than 2
select * from customers where city = 'Delhi' and customer_id > 2;

-- Get customers whose name starts with 'P'
select * from customers where customer_name like 'p%';

-- Get customers whose city is in a given list (IN operator)
select * from customers where city in ('Mumbai', 'Delhi');

-- Get customers whose name does not start with 'A'
select * from customers where customer_name not like 'A%';

-- Retrieve customers whose city is NOT 'Bhopal' and NOT 'Indore'

select * from customers where city not in ('Bhopal','Indore');
select * from customers where city != 'Bhopal' and city != 'Indore';

-- Find customers whose name contains letter 'a' anywhere
select * from customers where customer_name like '%a%';

-- Get customers whose name ends with 'a' AND city starts with 'M'
select * from customers where customer_name like '%a' and city like 'M%';

-- Retrieve customers whose customer_id is NOT between 2 and 4

select * from customers where customer_id not between 2 and 4;

-- Get customers whose city is either 'Delhi', 'Mumbai', or 'Pune' AND id > 2
select * from customers where city in ('Delhi','Mumbai','Pune') and customer_id > 2;

-- Find customers whose name has exactly 5 characters
select * from customers where customer_name like '_____';

-- Retrieve customers whose name does NOT contain letter 'i'
select * from customers where customer_name not like '%i%';

-- Get customers whose customer_id is even number
select * from customers where customer_id % 2 = 0;

-- Retrieve customers whose city is NULL

select * from customers where city is null;

-- Find customers whose name starts with 'A' OR ends with 'a'

SELECT * FROM customers 
WHERE customer_name LIKE 'A%' 
OR customer_name LIKE '%a';

-- Find all customers whose city is NULL
select * from customers where city is null;

-- Find all customers whose name is NULL
select * from customers where customer_name is null;

-- Find all customers where both name and city are NOT NULL

select * from customers where customer_name is not null and city is not null;

-- Find customers where either name OR city is NULL
select * from customers where city is null or customer_name is null;

-- Find customers whose city is NOT NULL AND not equal to 'Bhopal'

select * from customers where city is not null and city != 'Bhopal';

-- Find customers whose name is NULL OR city is 'Delhi'

select * from customers where customer_name is null or city = 'Delhi';

-- Count the number of customers whose city is NULL
select count(customer_id) from customers where city is null;
select count(*) from customers where city is null;

-- Replace NULL values in customer_name with 'Unknown' (display only, do not update table)
SELECT 
    customer_id,
    IFNULL(customer_name, 'Unknown') AS customer_name,
    city
FROM customers;

SELECT 
    customer_id,
    COALESCE(customer_name, 'Unknown') AS customer_name,
    city
FROM customers;

/*
Find customers where:

customer_name is NULL
BUT city is NOT NULL
*/

select * from customers where city is not null and customer_name is null;

/*
Find customers where:

both customer_name and city are NULL
OR both are NOT NULL
*/

select * from customers where customer_name is not null and city is not null;










