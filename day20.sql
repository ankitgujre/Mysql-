/*
DROP TABLE table_name;

DELETE FROM students
WHERE rollno = 101;

UPDATE students
SET city = 'Bhopal'
WHERE rollno = 101;

RENAME TABLE students TO student_data;

ALTER TABLE students
MODIFY name VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;
*/

create database append;
use append;

create table A (cust_id int, cust_name varchar(30));
create table B (cust_id int, cust_name varchar(30));

insert into A values(1,"a"),(2,"b"),(3,"c");
insert into B values(3,"c"),(4,"d"),(5,"e");


select * from A;
select * from b;
/* union */
select * from a
union
select * from b;
/* union all */
select * from a
union all
select * from b;
/* intersect */
select * from a
intersect
select * from b;
/* except */
SELECT * FROM a
EXCEPT
SELECT * FROM b;


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
-- use join_practice;

select * from customers as ct left join 
orders as od on ct.customer_id = od.customer_id;

select * from customers as ct right join 
orders as od on ct.customer_id = od.customer_id;

/* Full join */
select * from customers as ct left join 
orders as od on ct.customer_id = od.customer_id
union all
select * from customers as ct right join 
orders as od on ct.customer_id = od.customer_id;

/*  
now we performing left and right join because we will use them to perform full join with the help  of union all
*/

/*
we used union all in the place of union because if I use union then there is a posibility thet it will remove the duplicate
rows which are informative
*/

create table c(cust_id int, cust_name varchar(30));
insert into c values(1,"A"),(2,"B"),(3,"C"),(4,"D"),(5,"E");

select * from c;

alter table c add cust_performance  varchar(30);

update c
set cust_performance =
case
    when cust_id >= 3  then 'Excellent'
    when cust_id < 3 then "Avg"
    else 'good'
end;

select * from c;

set sql_safe_updates = 0;