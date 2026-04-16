-- trigers

create database triggerClass;
use triggerClass;

create table Book(book_id int, book_name varchar(40), price int);

create table Book_log(book_id int, action varchar(90));

desc book;
desc Book_log;

/*  After trigger with insert */

create trigger after_insert_trigger
	after insert on 
		book
	for each row
		insert into book_log values(
        new.book_id, "insert");

insert into Book values(1, "A", 500);
select * from Book;
select * from Book_log;

create trigger after_update_trigger
	after update on 
		book
	for each row
		insert into book_log values(
        new.book_id, "update");
        
update Book set price = 10000 where book_id = 1;

set sql_safe_updates = 0;

CREATE TRIGGER after_delete_trigger
AFTER DELETE ON book
FOR EACH ROW

    INSERT INTO book_log
    VALUES (OLD.book_id, 'delete');
    
delete from Book where book_id = 1;

create table Employee(emp_id int, emp_name varchar(90), salary int);

insert into Employee values(1, "Aman", 15000),
	(2, "Rman", 10000);

select * from Employee;

create trigger before_insert_trigger
	before insert on Employee
    for each row
    set new.salary = new.salary + 500;
    
insert into Employee values(3,"Chaman", 8000);

create trigger before_update_trigger
	before update on Employee
    for each row
    set new.salary = new.salary + 500;

update Employee set salary = 100 where emp_id = 1;

delimiter //
create trigger before_delete_trigger
	before delete on Employee
    for each row
    begin
    signal sqlstate '45000'
    set message_text = "cant delete it";
    end
    // delimiter 
    
delete from Employee where emp_id = 1;