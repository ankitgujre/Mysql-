-- day 16

create database Day16;
use Day16;

create table A(cust_id int primary key, cust_name varchar(20));
create table B(cust_id int primary key, products varchar(30));
create table C(prod_id int primary key, products varchar(40));

insert into A values(1,"A"),(2,"B"),(3,"C");

insert into B values(1,"mobile"),(2,"Laptop"),(3,"mobile");

insert into C values(1,"mobile"),(2,"Laptop"),(3,"earphone");

select * from A;

select * from A inner join B on A.cust_id = B.cust_id;

select * from A cross join B;

SELECT * 
FROM A 
LEFT JOIN B 
ON A.cust_id = B.cust_id;

SELECT * 
FROM A 
RIGHT JOIN B 
ON A.cust_id = B.cust_id;
