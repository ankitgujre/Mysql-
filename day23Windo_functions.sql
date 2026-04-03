-- day 23

-- window functiomns

create database rankClass;

use rankClass;

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

select * , rank() over(order by salary desc) as ranks
from employees;


select * , dense_rank() over(order by salary desc) as dense_ranks
from employees;

select *, percent_rank() over(order by salary desc) as percent_ranks
from employees;

select *, row_number() over(order by salary desc) as rownum
from employees;

select *, ntile(4) over(order by salary desc) as Ntiles
from employees;


-- department wise

select *, rank() over(partition by department order by salary desc) as Ranking from employees;

select *, rank() over(partition by department order by salary desc) as dens_rank from employees;

-- windows agregate functions

select * , sum(salary) over(order by salary desc) as Rolling_sum
from employees;

select * , avg(salary) over(order by salary desc) as Rolling_sum
from employees;

select * , max(salary) over(order by salary desc) as Rolling_sum
from employees;

select * , min(salary) over(order by salary desc) as Rolling_sum
from employees;

select * , count(salary) over(order by salary desc) as Rolling_sum
from employees;

-- value functions

select * , first_value(salary) over(order by salary desc)
from employees;

select * , last_value(salary) over(order by salary desc)
from employees;

select * , first_value(salary) over(partition by department order by salary desc) as first_val
from employees;

select * , last_value(salary) over(partition by department order by salary desc) as Rolling_sum
from employees;

select * , lead(salary) over(partition by department order by salary desc) as Rolling_sum
from employees;

select * , lag(salary) over(partition by department order by salary desc) as Rolling_sum
from employees;















