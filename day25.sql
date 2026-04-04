-- views
-- class 25
create database views_class;
use views_class;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(101, 'Amit', 'HR', 50000),
(102, 'Riya', 'IT', 60000),
(103, 'Sohan', 'IT', 60000),
(104, 'Priya', 'Finance', 75000),
(105, 'Rahul', 'HR', 50000),
(106, 'Neha', 'Finance', 75000),
(107, 'Karan', 'IT', 90000),
(108, 'Simran', 'HR', 50000),
(109, 'Vikas', 'Finance', 90000),
(110, 'Anjali', 'IT', 60000),
(111, 'Rohit', 'HR', 45000),
(112, 'Pooja', 'Finance', 75000),
(113, 'Arjun', 'IT', 90000),
(114, 'Kavya', 'HR', 45000),
(115, 'Manish', 'Finance', 60000);

select * from employees;

select * from employees where salary > 50000;

show databases;

create view first_view as 
select * from employees where
salary > 50000;

select * from first_view;

select emp_name, salary from first_view where salary > 75000 and department = 'IT';

/*
It does not store data physically.
It stores only the SQL query definition.
when you select from view, it fetches data from the original table.
It is an user defined object , it is database level object.
"A view is a virtual table created from one or more tables."

Imp Points
1. Views does not store 
2. views always shows updated data 
3. used for security (hide some column)
4. used to simplify  complex queries
5.. A view is used to store reusable select query

Types of views

1. simple view
Created from one table No group by, no functions

2. Complex views
Created from multiple table
can use join , group by, functions

Difference Between table and views:

"Table store data physically,
while view stores only the query and shows data virtually
*/



