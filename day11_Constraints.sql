drop database a;
create database A;
use A;
create table B(cust_id int, cust_name varchar(50));

insert into B values(1,"A"),(2,"B");
select * from B;

insert into B values(1,"C");

drop table B;

create table B(cust_id int unique, cust_name varchar(50) not null);

insert into B values(1,"A"),(2,"B");

select * from B;
insert into B values(1,"C");

create table C(cust_id int primary key, cust_name varchar(20));

insert into C values(1,"A"),(2,"B");

alter table C modify column cust_name varbinary(30) not null;
alter table C modify column cust_name varchar(30) not null;
select * from C;

insert into C values(1,"A"),(2,"B");

create table customer(cust_id int primary key, cust_name varchar(30) not null);
show tables;
desc customer;

create table orders(order_id int primary key, order_name varchar(30) not null,
cust_id int, foreign key (cust_id) references customer(cust_id));

desc orders;

-- create table doctors hospital 

create table doctors(d_id int primary key, d_name varchar(30) not null);
create table hospitals(h_id int primary key, h_name varchar(30), d_id int,
foreign key (d_id) references doctors(d_id));

desc hospitals;
desc doctors;

create table students(stu_id int primary key, stu_name varchar(30) not null, age int check(age > 18));
desc students;

insert into students values(1,"A",19),(2,"B",19);

select * from students;
drop table students;


create table students(stu_id int primary key, stu_name varchar(30) not null, age int default 20);
insert into students values(1,"A",19),(2,"B",19);
select * from students;
insert into students(stu_id, stu_name) values(10,"C");

