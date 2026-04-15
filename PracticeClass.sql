create database PracticeClass;
use PracticeClass;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

desc Customers;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

desc Orders;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

desc Products;

INSERT INTO Customers VALUES
(1, 'Amit', 'Delhi', '2023-01-10'),
(2, 'Neha', 'Mumbai', '2023-02-15'),
(3, 'Ravi', 'Pune', '2023-03-20'),
(4, 'Priya', 'Delhi', '2023-04-05'),
(5, 'Karan', 'Bhopal', '2023-05-01');

select * from Customers;

INSERT INTO Orders VALUES
(101, 1, '2023-06-01', 5000),
(102, 2, '2023-06-02', 3000),
(103, 1, '2023-06-05', 7000),
(104, 3, '2023-06-07', 2000),
(105, 4, '2023-06-10', 9000),
(106, 2, '2023-06-12', 4000),
(107, 5, '2023-06-15', 1500);

select * from Orders;

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Mobile', 'Electronics', 20000),
(3, 'Chair', 'Furniture', 3000),
(4, 'Table', 'Furniture', 7000),
(5, 'Headphones', 'Electronics', 2000);

select * from Products;

/*
Show all customers.
Show customers from Delhi.
Display all orders where amount > 5000.
Show customer names and their cities.
Sort customers by signup_date.

Find total number of customers.
Find average order amount.
Find maximum and minimum order amount.
Count how many orders each customer placed.
Show total amount spent by each customer.

Show customer name with their order details.
Display customers who have placed orders.
Display customers who have not placed any orders.
Show total spending of each customer with their name.

Show cities having more than 1 customer.
Find customers whose total spending is more than 8000.
Show number of customers in each city.

Find the second highest order amount.
Show the top 2 highest orders.
Find the customer who spent the most money.
Find orders placed in the last 5 days of data.
Display customers whose name starts with 'A'.

*/

-- Show all customers.

select * from Customers;

-- Show customers from Delhi.

select * from Customers where city = "Delhi";

-- Display all orders where amount > 5000.
select * from Orders where amount > 5000;

-- Show customer names and their cities.
select customer_name, city from Customers;

-- Sort customers by signup_date.

select * from Customers order by signup_date asc;

-- Find total number of customers.

select count(customer_id) from Customers;

-- Find average order amount.

select avg(amount) from Orders;

-- Find maximum and minimum order amount.

select max(amount) as Max_Amount, min(amount) from Orders;

-- Count how many orders each customer placed.

select customer_id, count(order_id) as total_orders from 
    orders
group by 
    customer_id
order by 
    total_orders desc;
    
-- Show total amount spent by each customer.
select customer_id, sum(amount) as total_amount from Orders
	group by customer_id;
    
-- Show customer name with their order details.

select 
    c.customer_name,
    o.*
from
    customers c
join 
    orders o
on
    c.customer_id = o.customer_id;
    
-- Display customers who have placed orders.

select 
    c.customer_name,
    o.*
from
    customers c
join 
    orders o
on
    c.customer_id = o.customer_id;
    
-- Display customers who have not placed any orders.
select 
    c.customer_name,
    o.*
from
    customers c
join 
    orders o
on
    c.customer_id = o.customer_id
    
    where o.order_id is null;

-- Show total spending of each customer with their name.

select c.customer_name, sum(o.amount) from Customers c join Orders o
group by c.customer_id;

-- Show cities having more than 1 customer.

select city from customers group by city having count(customer_id) > 1;

-- Find customers whose total spending is more than 8000.

select c.*, sum(o.amount) from customers c join Orders o group by c.customer_id having count(o.amount) > 8000; 

-- Show number of customers in each city.

select city, count(*) from Customers group by city;
-- Find the second highest order amount.

SELECT MAX(amount) AS SecondHighestAmount
FROM Orders
WHERE amount < (SELECT MAX(amount) FROM Orders);

-- Show the top 2 highest orders.
SELECT order_id, customer_id, amount
FROM Orders
ORDER BY amount DESC
LIMIT 2;

-- Find the customer who spent the most money.
SELECT c.customer_id, c.customer_name, SUM(o.amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY TotalSpent DESC
LIMIT 1;

-- Find orders placed in the last 5 days of data.

select order_date from Orders order by order_date desc limit 5;

-- Display customers whose name starts with 'A'.

select customer_name from customers where customer_name like "A%";




