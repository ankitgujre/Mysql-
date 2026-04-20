-- Practice

create database HomePractice;
use HomePractice;
create table Sales (sale_id int, product_id int, quantity_sold int, sale_date date, total_price decimal);

insert into sales values(1,101,5, "2024-01-01", 2500);
select * from Sales;

insert into sales values(2,102,3, "2024-01-02", 900),
	(3, 103, 2, "2024-01-02", 60),
    (4, 104 ,4,"2024-01-03", 80),
    (5,105,6,"2024-01-03", 90);


create table products(product_id int, product_name varchar(60), category varchar(50), unit_price int);
desc products;

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

select * from products;

-- 1. Retrieve all columns from the Sales table.

select * from sales;

-- 2. Filter the Sales table to show only sales with a total_price greater than $100.

select * from sales where total_price > 100;

-- 3. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.

SELECT sale_id, total_price
FROM sales
WHERE sale_date = '2024-01-03';

-- 4. Retrieve the sale_id and sale_date from the Sales table, formatting the sale_date as 'YYYY-MM-DD'.

-- SELECT sale_id, DATE_FORMAT(sale_date, '%Y-%m-%d') AS sale_date
-- FROM sales;

select sale_id, date_format(sale_date, '%d-%m-%y') as sale_date from sales;

-- 5. Calculate the total revenue generated from sales of products in the 'Electronics' category.

/*Add primary key and foreign key*/

alter table sales add constraint primary key(sale_id);
desc sales;

alter table products add primary key(product_id);
desc sales;
alter table sales add foreign key(product_id) references products(product_id);
desc products;


SELECT SUM(s.total_price) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
WHERE p.category = 'Electronics';

-- 6. Retrieve the product_name and total_price from the Sales table, 
-- calculating the total_price as quantity_sold multiplied by unit_price.

select p.product_name, sum(s.quantity_sold * p.unit_price) from sales s inner join products p on
s.product_id = p.product_id group by p.product_name;

/*  7. Find the Products Not Sold from Products table. */
SELECT p.product_name
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

/* 8.Calculate the total revenue generated from sales for each product category. */

SELECT p.category, 
       SUM(s.quantity_sold * p.unit_price) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category;
