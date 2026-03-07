create database c;
use c;
create table c_table(
	c_id int, c_name varchar(30), c_location varchar(30), c_date date
    );
    
show tables;
desc c_table;

insert into c_table values(
	101, "ankit", "Bhopal", "2026-03-07"
    );
select * from c_table;

INSERT INTO c_table VALUES
(101, "ankit", "Bhopal", "2026-03-07"),
(102, "rahul", "Indore", "2026-03-08"),
(103, "priya", "Delhi", "2026-03-09"),
(104, "sneha", "Mumbai", "2026-03-10"),
(105, "arjun", "Pune", "2026-03-11"),
(106, "neha", "Lucknow", "2026-03-12"),
(107, "rohit", "Jaipur", "2026-03-13"),
(108, "meena", "Chennai", "2026-03-14"),
(109, "vikas", "Hyderabad", "2026-03-15"),
(110, "kiran", "Kolkata", "2026-03-16");

select * from c_table;