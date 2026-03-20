use cybrom;
create table a(cust_id int primary key, cust_name varchar(20));
insert into a values(1,"AA"),(2,"BB");

show indexes from a;

alter table a drop primary key;

desc a;

-- class 14

-- JOIN PRACTICE DATASET

CREATE DATABASE IF NOT EXISTS join_practice;
USE join_practice;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers VALUES
(1,'Shubham','Delhi','shubham@gmail.com'),
(2,'Amit','Mumbai','amit@gmail.com'),
(3,'Neha','Pune','neha@gmail.com'),
(4,'Rohit','Delhi','rohit@gmail.com'),
(5,'Priya','Bangalore','priya@gmail.com');

-- Categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Books');

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO products VALUES
(101,'Laptop',50000,1),
(102,'Mobile',20000,1),
(103,'T-Shirt',500,2),
(104,'Jeans',1200,2),
(105,'SQL Book',700,3);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001,1,'2024-01-10'),
(1002,2,'2024-01-12'),
(1003,1,'2024-01-15'),
(1004,3,'2024-01-18'),
(1005,5,'2024-01-20');

-- Order Items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,105,3),
(5,1004,104,1),
(6,1005,101,1);

-- SAMPLE JOIN QUERY
SELECT customers.customer_name, products.product_name, order_items.quantity
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id;

select * from customers;
select * from orders;
select * from products;
select * from categories;
select * from order_items;

-- deadlock condition kya hota hai
/*
Under it multiple transaction working at a time a resource under
*/

-- Inner join

SELECT 
    *
FROM
    customers AS c
        INNER JOIN
    orders AS o ON c.customer_id = o.customer_id;
    
