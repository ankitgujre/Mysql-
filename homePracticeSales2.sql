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


/*------------------------------------Like operator----------------------------------------*/
-- Find customers whose name starts with 'A'
select * from customers where customer_name like 'A%';

-- Find customers whose name ends with 'a'
select * from customers where customer_name like '%a';

-- Find customers whose name contains 'i'

select * from customers where customer_name like '%i%';

-- Find customers whose city starts with 'B'
select * from customers where city like 'B%';

-- Find customers whose city ends with 'e'
select * from customers where city like '%e';

-- Find customers whose name contains 'a' anywhere
select * from customers where customer_name like '%a%';

-- Find customers whose name starts with 'R' and ends with 'l'
select * from customers where customer_name like 'R%i';
-- Find customers whose city contains 'o'
select * from customers where city like '%o%';

-- Find customers whose name does NOT contain 'a'
select * from customers where customer_name not like '%a%';

-- Find customers whose city does NOT start with 'D'

select * from customers where customer_name not like 'D%';

-- Find customers whose name has exactly 5 characters

select * from customers where customer_name like '_____';

-- Find customers whose name has exactly 4 characters
select * from customers where customer_name like '____';

-- Find customers whose name starts with 'A' and has 5 letters total
select * from customers where customer_name like 'A____';

-- Find customers whose city has exactly 6 characters
select * from customers where city like '______';

-- Find customers whose name contains 'a' and city starts with 'B'
select * from customers where customer_name like 'A%' and city like 'B%';

/*Find customers whose:

name starts with 'A'
OR city ends with 'e'*/

select * from customers where city like '%e' or customer_name like 'A%';

/*Find customers whose:

name contains 'i'
AND city contains 'o'*/

select * from customers where customer_name like '%i%' and city like '%o%';

/*Find customers whose:

name does NOT start with 'P'
AND does NOT end with 'a'*/

SELECT * 
FROM customers 
WHERE customer_name NOT LIKE 'P%' 
  AND customer_name NOT LIKE '%a';
  
/*Find customers whose name has:

'a' as second character*/

select * from customers where customer_name like '_a%';

/*
Find customers whose city has:

'o' as second last character
*/

select * from customers where city like '_o%';


-- Display all customers sorted by customer_name in ascending order
select * from customers order by customer_name asc;

-- Display all customers sorted by city in descending order

select * from customers order by city desc;

-- Display all customers sorted by customer_id in descending order

select * from customers order by customer_id desc;

/*Display all customers sorted by:

city (ascending)
then customer_name (ascending)*/

select * from customers order by city asc, customer_name asc;

/*
Display all customers sorted by:

city (descending)
then customer_id (ascending)
*/
select * from customers order by city desc, customer_id asc;

/*
Display all customers sorted by customer_name
👉 (Observe how NULL values are ordered)
*/
select * from customers order by customer_name;

-- Display only customer_name and city, sorted by customer_name descending

select customer_name,city from customers order by customer_name desc;

SELECT * 
FROM customers 
ORDER BY (city IS NULL), city ASC;

SELECT * 
FROM customers 
ORDER BY LENGTH(customer_name) ASC;

-- Retrieve 2 records starting from the 3rd row in products
select * from products order by product_id limit 2 offset 2;

-- Retrieve 3 records starting from the 5th row in sales
select * from sales order by sale_id limit 3 offset 4;

-- Skip first 2 records and retrieve next 2 from orders
select * from orders order by order_id limit 2 offset 2;

-- Retrieve the last 2 records from customers

select * from customers order by customer_id desc limit 2;

-- Retrieve the top 3 most expensive products (based on unit_price)
SELECT product_name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 3;

-- Retrieve the 2 cheapest products
select * from products order by unit_price asc limit 2;

-- Retrieve the latest 3 orders (based on order_date)
select * from orders order by order_date
limit 3;

-- Retrieve the oldest 2 orders
select * from orders order by order_date desc limit 2;

-- Retrieve top 3 sales with highest quantity
select * from sales order by quantity desc limit 3;

/*------------------ coalesce----------------------*/
-- Replace NULL customer names with 'Unknown'
SELECT COALESCE(customer_name, 'Unknown') AS customer_name
FROM customers;

-- Replace NULL city with 'Not Provided'
select coalesce(city, 'Not Provided') from customers;

-- Show customer_name and city, replace both NULL values with default text
SELECT 
    COALESCE(customer_name, 'Unknown') AS customer_name,
    COALESCE(city, 'Unknown City') AS city
FROM customers;

-- Show customer_name, if NULL then show city instead
select coalesce(customer_name, city) from customers;
SELECT COALESCE(customer_name, city) AS display_name
FROM customers;

-- Show city, if NULL then show 'India'
select coalesce(city, 'India') from customers;



-- Retrieve the first 3 records from the customers table
select * from customers order by customer_id limit 3;

 -- Retrieve the first 2 records from the products table
 select * from products order by product_id limit 2;
 
 -- Retrieve the first 4 records from the orders table
 select * from orders order by order_id limit 4;
 
 -- Retrieve only 5 rows from the sales table
 select * from sales order by sale_id limit 5;
 
 -- Retrieve only the first record from the customers table
 select * from customers order by customer_id limit 1;
 
 -- Retrieve the 2nd and 3rd records from the customers table
 
 SELECT * 
FROM customers 
ORDER BY customer_id 
LIMIT 2 OFFSET 1;



/*------------------ coalesce----------------------*/
-- Replace NULL customer names with 'Unknown'
SELECT COALESCE(customer_name, 'Unknown') AS customer_name
FROM customers;

-- Replace NULL city with 'Not Provided'
select coalesce(city, 'Not Provided') from customers;

-- Show customer_name and city, replace both NULL values with default text
SELECT 
    COALESCE(customer_name, 'Unknown') AS customer_name,
    COALESCE(city, 'Unknown City') AS city
FROM customers;

-- Show customer_name, if NULL then show city instead
select coalesce(customer_name, city) from customers;
SELECT COALESCE(customer_name, city) AS display_name
FROM customers;

-- Show city, if NULL then show 'India'
select coalesce(city, 'India') from customers;

/*--------------------------------ifnull---------------------------------*/
-- Show all customers, but if customer_name is NULL, display 'Unknown'.

select customer_id, ifnull(customer_name, "Unknown") from customers;

-- Replace NULL city with default value
select customer_name, ifnull(city, 'Not provided') from customers;

-- If any product has NULL unit_price, show 0.
SELECT 
    product_id, 
    product_name, 
    IFNULL(unit_price, 0) AS unit_price
FROM products;



/*-------------------------------------ALTER -------------------------*/
-- Add a new column email in customers.

alter table customers add column (email varchar(50));
desc customers;
select * from customers;

-- Add a new column phone in customers. 
ALTER TABLE customers 
ADD COLUMN phone VARCHAR(15);

alter table customers modify phone varchar(20);

-- Add a new column address in customers.
alter table customers add column address varchar(90);

-- Change customer_name size from varchar(90) to varchar(150).

alter table customers modify customer_name varchar(150);

-- Change city size from varchar(100) to varchar(50).
alter table customers modify city varchar(50);

--- Rename column customer_name to name.
alter table customers rename column customer_name to name;

-- Rename column city to customer_city.

alter table customers rename column city to customer_city;

-- Add primary key on customer_id.
alter table customers add primary key(customer_id);
desc customers;

-- Add primary key on product_id
alter table products add primary key(product_id);

-- Add primary key on order_id
alter table orders add primary key(order_id);

-- Add primary key on sale_id.
alter table sales add primary key(sale_id);

-- Add foreign key in orders.customer_id referencing customers.customer_id.

alter table orders add foreign key(customer_id) references customers(customer_id);
desc customers;
desc orders;
desc products;

-- Add foreign key in sales.order_id referencing orders.order_id.

alter table sales add foreign key(order_id) references orders(order_id);

-- Add foreign key in sales.product_id referencing products.product_id.
alter table sales add foreign key(product_id) references products(product_id);

-- Add NOT NULL constraint on product_name.
alter table products modify product_name varchar(50) not null;

-- Add NOT NULL constraint on unit_price.
alter table products modify unit_price decimal(10,2) not null;

-- Add default value 'General' to products.category.

ALTER TABLE products 
ALTER COLUMN category SET DEFAULT 'General';
select * from products;

-- Rename table customers to customer_details.

rename table customers to customer_details;
select * from customer_details;



/*           group by          */
-- Count total customers city-wise.
select customer_city, count(*) from customer_details group by customer_city;

-- Count total customers including NULL cities.
select customer_city, count(*) from customer_details group by customer_city; 

-- Count how many customers have NULL names group-wise by city.
SELECT customer_city, COUNT(*) AS null_name_count
FROM customer_details
WHERE name IS NULL
GROUP BY customer_city;

-- Count total products category-wise.
select product_name, count(*) from products group by product_name;

-- Find average price category-wise.
select category, avg(unit_price) from products group by category;

-- Find total quantity sold product-wise.
select sum(quantity) from sales group by product_id;

SELECT p.product_name, SUM(s.quantity) AS total_quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Find total quantity sold per order_id.
SELECT order_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY order_id;


