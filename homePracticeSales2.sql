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
