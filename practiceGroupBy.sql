show tables;
desc practice;

select * from practice;

CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders VALUES
(1,'Ankit','Bhopal','Laptop','Electronics',1,55000,'2024-01-10'),
(2,'Rahul','Indore','Mobile','Electronics',2,15000,'2024-01-12'),
(3,'Sneha','Delhi','Shoes','Fashion',3,2000,'2024-01-15'),
(4,'Amit','Mumbai','Watch','Accessories',2,3000,'2024-01-20'),
(5,'Pooja','Bhopal','Laptop','Electronics',1,60000,'2024-01-22'),
(6,'Ravi','Delhi','Mobile','Electronics',1,18000,'2024-01-25'),
(7,'Kiran','Indore','Shoes','Fashion',2,2500,'2024-02-01'),
(8,'Neha','Bhopal','Bag','Fashion',3,1200,'2024-02-05'),
(9,'Vikas','Mumbai','Laptop','Electronics',1,70000,'2024-02-10'),
(10,'Ankit','Delhi','Watch','Accessories',1,3500,'2024-02-15'),
(11,'Rahul','Bhopal','Mobile','Electronics',2,16000,'2024-02-18'),
(12,'Sneha','Mumbai','Shoes','Fashion',1,2200,'2024-02-20'),
(13,'Amit','Indore','Bag','Fashion',4,1000,'2024-02-25'),
(14,'Pooja','Delhi','Laptop','Electronics',1,65000,'2024-03-01'),
(15,'Ravi','Bhopal','Watch','Accessories',2,2800,'2024-03-05'),
(16,'Kiran','Mumbai','Mobile','Electronics',1,17000,'2024-03-08'),
(17,'Neha','Delhi','Bag','Fashion',2,1500,'2024-03-10'),
(18,'Vikas','Indore','Shoes','Fashion',3,2300,'2024-03-12'),
(19,'Ankit','Mumbai','Laptop','Electronics',1,72000,'2024-03-15'),
(20,'Rahul','Delhi','Watch','Accessories',1,3200,'2024-03-18'),
(21,'Sneha','Bhopal','Mobile','Electronics',2,15500,'2024-03-20'),
(22,'Amit','Mumbai','Bag','Fashion',3,1300,'2024-03-22'),
(23,'Pooja','Indore','Shoes','Fashion',2,2100,'2024-03-25'),
(24,'Ravi','Delhi','Laptop','Electronics',1,68000,'2024-03-28'),
(25,'Kiran','Bhopal','Watch','Accessories',2,2900,'2024-03-30');

select * from orders;

-- 1. Total Sales by city

select city, sum(quantity * price) as total_sales_by_city from orders group by city;

-- 2. Number of orders by category

select category, count(quantity) from orders group by category;
select category, count(*) from orders group by category;

-- 3. Average price per product

select product, avg(price)
	from orders
		group by product;
        
-- 4. Cities with Sales > 1,00,000 (HAVING)

SELECT city, SUM(quantity * price) AS total_sales
FROM orders
GROUP BY city
HAVING total_sales > 100000;

-- 5. Customers who placed more than 2 orders

select customer_name, count(*) as total_order from orders
	group by customer_name having total_order > 2;
    
    
-- 6. Highest Order Value per Category

SELECT category, MAX(quantity * price) AS max_order_value
FROM orders
GROUP BY category;


