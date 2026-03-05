-- First class 

create database Cybrom;
create database employees;

use Cybrom;

create table customers(
	customer_id int, customer_name varchar(20), 
    customer_city varchar(20), date_of_purchase date
    );

/*
Mysql is a tool in which we use sql language to manage the data.
where sql stands for structured query language
Mysql server is a place where data gets stored and mysql workbench is a place where we can see the data
Workbench is an UI user interface
* Firstly we create the database in mysql for making it active we double click on the database or write a query.
* Now whatever the table we create it will be stored in the active database. 
* active DB  comes with bold letter. 
* for creating any table we have to define the column headers with the data type. 
* database can't have the same name but tables in different databases can have the same name
*/

use employees;

create table orders(
	order_id int, products varchar(30),
    order_city varchar(20), order_date date
    );
    
create database cybrom1;

use cybrom1;

create table orders(
	patient_id int, patient_name varchar(30),
    Doctor_name varchar(20)
    );

    
