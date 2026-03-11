-- class 6

-- Create Database
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- Drop table if already exists (to avoid duplicate errors)
DROP TABLE IF EXISTS sales;

-- Create Table
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    city VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

-- Insert Sample Data (Including NULL Values)
INSERT INTO sales VALUES
(1, 'Amit', 'Laptop', 'Mumbai', 1, 55000, '2024-01-10'),
(2, 'Rahul', 'Mobile', 'Delhi', 2, 20000, '2024-01-12'),
(3, 'Sneha', 'Laptop', 'Mumbai', 1, 60000, '2024-01-15'),
(4, 'Priya', 'Tablet', 'Chennai', 3, 15000, '2024-01-18'),
(5, 'Amit', 'Mobile', 'Mumbai', 1, 18000, '2024-01-20'),
(6, 'Rahul', 'Laptop', 'Delhi', 2, 52000, '2024-01-25'),
(7, 'Sneha', 'Tablet', 'Mumbai', 1, 14000, '2024-01-28'),
(8, 'Priya', 'Mobile', 'Chennai', 2, 21000, '2024-02-02'),
(9, 'Amit', 'Tablet', 'Mumbai', 2, 16000, '2024-02-05'),
(10, 'Rahul', 'Mobile', 'Delhi', 1, 19000, '2024-02-08'),
(11, 'Karan', 'Laptop', 'Mumbai', 1, 58000, '2024-02-10'),
(12, 'Meena', 'Mobile', NULL, 2, 22000, '2024-02-12'),
(13, 'Rohit', NULL, 'Delhi', 1, 30000, '2024-02-15'),
(14, NULL, 'Tablet', 'Chennai', 3, 15000, '2024-02-18'),
(15, 'Anjali', 'Laptop', 'Mumbai', NULL, 62000, '2024-02-20'),
(16, 'Vikas', 'Mobile', 'Delhi', 2, NULL, '2024-02-22'),
(17, 'Neha', 'Tablet', NULL, 1, 14000, NULL),
(18, NULL, NULL, 'Mumbai', 2, 18000, '2024-02-25');


select * from sales;
/*
customer_name,product, price customer name null is present so replace
it by product, city, 2
price 50000-75000
starting 3, exception 2
product start L pend and m start and e end
*/
select customer_name, product, price, coalesce(customer_name, product, price, city, 2) as 'null replacements'
from sales where price between 50000 and 75000 AND product like 'L%p' or "M%e" limit 3 offset 2; 

/*
city wise, products,total,price
price order descending
total price must be > 55000
*/

select city, product, sum(price) from sales where price > 55000 group by city order by price desc;
-- class 6

-- Create Database
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- Drop table if already exists (to avoid duplicate errors)
DROP TABLE IF EXISTS sales;

-- Create Table
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    city VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

-- Insert Sample Data (Including NULL Values)
INSERT INTO sales VALUES
(1, 'Amit', 'Laptop', 'Mumbai', 1, 55000, '2024-01-10'),
(2, 'Rahul', 'Mobile', 'Delhi', 2, 20000, '2024-01-12'),
(3, 'Sneha', 'Laptop', 'Mumbai', 1, 60000, '2024-01-15'),
(4, 'Priya', 'Tablet', 'Chennai', 3, 15000, '2024-01-18'),
(5, 'Amit', 'Mobile', 'Mumbai', 1, 18000, '2024-01-20'),
(6, 'Rahul', 'Laptop', 'Delhi', 2, 52000, '2024-01-25'),
(7, 'Sneha', 'Tablet', 'Mumbai', 1, 14000, '2024-01-28'),
(8, 'Priya', 'Mobile', 'Chennai', 2, 21000, '2024-02-02'),
(9, 'Amit', 'Tablet', 'Mumbai', 2, 16000, '2024-02-05'),
(10, 'Rahul', 'Mobile', 'Delhi', 1, 19000, '2024-02-08'),
(11, 'Karan', 'Laptop', 'Mumbai', 1, 58000, '2024-02-10'),
(12, 'Meena', 'Mobile', NULL, 2, 22000, '2024-02-12'),
(13, 'Rohit', NULL, 'Delhi', 1, 30000, '2024-02-15'),
(14, NULL, 'Tablet', 'Chennai', 3, 15000, '2024-02-18'),
(15, 'Anjali', 'Laptop', 'Mumbai', NULL, 62000, '2024-02-20'),
(16, 'Vikas', 'Mobile', 'Delhi', 2, NULL, '2024-02-22'),
(17, 'Neha', 'Tablet', NULL, 1, 14000, NULL),
(18, NULL, NULL, 'Mumbai', 2, 18000, '2024-02-25');


select * from sales;
/*
customer_name,product, price customer name null is present so replace
it by product, city, 2
price 50000-75000
starting 3, exception 2
product start L pend and m start and e end
*/
select customer_name, product, price, coalesce(customer_name, product, price, city, 2) as 'null replacements'
from sales where price between 50000 and 75000 AND product like 'L%p' or "M%e" limit 3 offset 2; 

/*
city wise, products,total,price
price order descending
total price must be > 55000
*/

select city, product, sum(price) from sales where price > 55000 group by city order by price desc;

select 
    city, 
    product, 
    SUM(price) AS total_price
from sales
where price > 55000
group by city, product
having sum(price) > 55000
order by total_price desc;

/*
order id, if order isnull,
then replace it by quantity,2, alias nul_verification
 null varification > 1
*/

select order_id,coalesce( order_id, quantity,2) as 'null_verification' from sales;