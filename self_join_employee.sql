-- Create Employee table
 CREATE TABLE employee ( employee_id INT PRIMARY
KEY, employee_name VARCHAR(50), job_title VARCHAR(50), manager_id INT,
salary INT );

-- Insert data 
INSERT INTO employee VALUES (1, 'Amit', 'CEO', NULL,
100000); 
INSERT INTO employee VALUES (2, 'Neha', 'Manager', 1, 75000);
INSERT INTO employee VALUES (3, 'Raj', 'Manager', 1, 72000);
INSERT INTO employee VALUES (4, 'Priya', 'Team Lead', 2, 60000); 
INSERT INTO employee VALUES (5, 'Vikas', 'Team Lead', 2, 58000); 
INSERT INTO employee VALUES (6, 'Sneha', 'Developer', 4, 45000); 
INSERT INTO employee VALUES (7, 'Arjun', 'Developer', 4, 43000); 
INSERT INTO employee VALUES (8, 'Kavita', 'Developer', 5, 42000); 
INSERT INTO employee VALUES (9, 'Rohit', 'Intern', 6, 25000); 
INSERT INTO employee VALUES (10, 'Pooja', 'Intern', 7, 24000); 
INSERT INTO employee VALUES(11, 'Manish', 'HR', 2, 50000); 
INSERT INTO employee VALUES (12,'Simran', 'Accountant', 3, 52000);

select e.employee_name as employee_name, m.employee_name as manager_name
	from employee as e
		inner join employee as m
			on m.manager_id = e.employee_id;
            
select e.employee_name as employee_name, m.employee_name as manager_name
	from employee as e
		inner join employee as m
			on e.manager_id = m.employee_id;


