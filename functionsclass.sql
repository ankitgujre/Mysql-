-- functions

create database functionsclass;
use functionsclass;

-- Create Employee table 
CREATE TABLE employee ( employee_id INT PRIMARY
KEY, employee_name VARCHAR(50), job_title VARCHAR(50), manager_id INT,
salary INT );

-- Insert data 
INSERT INTO employee VALUES (1, 'Amit', 'CEO', NULL,
100000); INSERT INTO employee VALUES (2, 'Neha', 'Manager', 1, 75000);
INSERT INTO employee VALUES (3, 'Raj', 'Manager', 1, 72000); INSERT INTO
employee VALUES (4, 'Priya', 'Team Lead', 2, 60000); INSERT INTO
employee VALUES (5, 'Vikas', 'Team Lead', 2, 58000); INSERT INTO
employee VALUES (6, 'Sneha', 'Developer', 4, 45000); INSERT INTO
employee VALUES (7, 'Arjun', 'Developer', 4, 43000); INSERT INTO
employee VALUES (8, 'Kavita', 'Developer', 5, 42000); INSERT INTO
employee VALUES (9, 'Rohit', 'Intern', 6, 25000); INSERT INTO employee
VALUES (10, 'Pooja', 'Intern', 7, 24000); INSERT INTO employee VALUES
(11, 'Manish', 'HR', 2, 50000); INSERT INTO employee VALUES (12,
'Simran', 'Accountant', 3, 52000);

-- without parameter

create function first_function()
	returns
    varchar(20)
    deterministic return
    "HII";
    
select first_function();

-- functions with parameter

create function total_salary(salary int, bonus int)
	returns
    int 
    deterministic return
    (salary + bonus);
    
select total_salary(12000, 1200);

select * from employee;


create function percentOfsalary(salary int)
 returns
	decimal
    deterministic return
    (salary * 0.10);
    
select *, percentOfsalary(salary) from employee;


create function month_salary(mon_salary int)
returns int
deterministic return
   mon_salary / 30;
   
select month_salary(1000);


create function give_fiftyper(num int)
	returns decimal
    deterministic return
    num * 0.5;
    

    
    
select give_fiftyper(55);
   
   
/*
A functtion is a stored database object that performs a calculation and returns a single value. In mysql there is only a single
 type of stored function which is scalar functions
 
 function are user defined database objects that are created by the user to perform calculation or operations and return a single value
*/


CREATE TABLE A (
    cid INT PRIMARY KEY,
    cname VARCHAR(50)
);

CREATE TABLE B (
    pid INT PRIMARY KEY,
    pname VARCHAR(50)
);

INSERT INTO A VALUES 
(1, 'A'),
(2, 'B'),
(3, "C");

INSERT INTO B VALUES 
(1, 'Mobile'),
(2, 'Laptop'),
(3, "Earphone");

select * from A;
select * from B;


ALTER TABLE B
ADD cid INT;

UPDATE B SET cid = 1 WHERE pid = 1;
UPDATE B SET cid = 2 WHERE pid = 2;
UPDATE B SET cid = 3 WHERE pid = 3;

ALTER TABLE B
ADD CONSTRAINT fk_cid
FOREIGN KEY (cid) REFERENCES A(cid);

SELECT A.cname, B.pname
FROM A
JOIN B ON A.cid = B.cid;

ALTER TABLE B
DROP FOREIGN KEY fk_cid;