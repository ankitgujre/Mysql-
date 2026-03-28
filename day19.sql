-- class 19

create database day19;
use day19;

CREATE TABLE A (
    cust_id INT,
    cust_name VARCHAR(30)
);

create table B(order_id int, cust_id int);


-- Insert data into table A
insert into A (cust_id, cust_name) values
(1, 'Ravi'),
(2, 'Priya'),
(3, 'Amit'),
(4, 'Sneha');

-- Insert data into table B
insert into B (order_id, cust_id) values
(101, 1),
(102, 2),
(103, 1),
(104, 3),
(105, 4);



ALTER TABLE A
ADD CONSTRAINT pk_A PRIMARY KEY (cust_id);

ALTER TABLE B
ADD CONSTRAINT pk_B PRIMARY KEY (order_id);

desc A;
desc B;

ALTER TABLE B
ADD CONSTRAINT cust_id
FOREIGN KEY (cust_id) REFERENCES A(cust_id);

alter table B drop primary key;

alter table A drop primary key;  -- error

alter table B drop foreign key cust_id;

alter table A drop primary key;


-- Customer Table (C)
CREATE TABLE Customer (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(30) NOT NULL
);

-- Order Table (D)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    cust_id INT
);

desc customer;
desc orders;

-- create foreign key without using add constraints

alter table orders add foreign key (cust_id) references customer(cust_id);

alter table orders drop foreign key cust_id;

-- here we havent define constraint 

alter table orders drop foreign key orders_ibfk_1;

show engines;



