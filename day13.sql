-- day 13

use employees2;

CREATE TABLE employeess (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    age INT,
    experience_years INT
);

INSERT INTO employeess VALUES
(101, 'Rahul', 'Sharma', 'IT', 'Delhi', 55000.75, 5000.50, 25, 2),
(102, 'Priya', 'Verma', 'HR', 'Mumbai', 48000.50, 4000.00, 28, 4),
(103, 'Amit', 'Singh', 'Finance', 'Kolkata', 62000.00, 6000.75, 32, 7),
(104, 'Neha', 'Gupta', 'IT', 'Bangalore', 71000.25, 7000.25, 30, 6),
(105, 'Rohit', 'Mehta', 'Sales', 'Pune', 45000.00, 3500.50, 26, 3),
(106, 'Anjali', 'Patel', 'Marketing', 'Ahmedabad', 52000.60, 4200.40, 29, 5),
(107, 'Vikas', 'Yadav', 'IT', 'Delhi', 68000.80, 6500.60, 31, 8),
(108, 'Sneha', 'Reddy', 'Finance', 'Hyderabad', 59000.45, 5000.00, 27, 4),
(109, 'Karan', 'Malhotra', 'Sales', 'Chennai', 47000.90, 3000.30, 24, 2),
(110, 'Pooja', 'Kapoor', 'HR', 'Delhi', 51000.00, 4500.75, 28, 5);

select * from employeess;
show indexes from employeess;

create index idx_1 on employeess (age);

create index idx_2 on employeess(city);

-- there are two types of indexes 1. Btree, 2. hash

DROP INDEX idx_2 ON employeess;

create index idx_3 on employeess(department);

drop index idx_3 on employeess;

/*
System created indexs like primary key and unique key cant be dropped directly. we must drop the constraint dirst which automatically 
removes the indexes
If we create a index on a column, the database stores the column values along with their locations.
so when we search using that column the database directly goes to the required the database directly goes to the required row instead 
of scanning the whole table.

Q. Main reasons why creating the indexes is not always preffered?
Ans 1 when you insert, update or delete data the data base must update the table and the index also.
so it also down insert, update and delete operations.
2. Use extra storage space
3. Not useful for small tablesdatabase can quickly scan without indexes.alter4. Too many indexes reduce overall performance.

INDEXES IMPROVE SELECT performance but can slow down INSERT< UPDATE, AND DELTE operations because the indexes also need to be 
maintained

When index is prefered:
1. For larger tables
2. Columns frequently used in where clause
3. columns used in foreign key
4. primary key and foreign key 
*/


/*What is composite index */
-- for creating 1 and more indexes

create index idx_5 on employeess(city, department);

drop index idx_6 on employeess;

create table customers(
	cust_id int primary key, cust_name varchar(20));
    
show indexes from customers;
desc customers;
ALTER TABLE customers DROP PRIMARY KEY;

alter table customers modify column cust_id int;







