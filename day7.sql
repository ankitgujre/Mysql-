-- class 7

drop database c;
create database C_db;

use C_db;
 
create table c ( c_id int, c_name varchar(30));
show tables;

-- -- Now insert the new column under these table

alter table c add column cust_performance varchar(30);

-- Now change the column data type

alter table c modify column cust_performance int;

desc c;

-- drop the existing column fromm the table

alter table c drop column cust_performance;

desc c;

-- change table name

rename table c to d;
desc d;
insert into c values(1, "AA"),(2, "BB");

-- we want whwere customer id make customer name dd

update d set c_name = 'dd' where c_id = 1;

-- when it asks for safe update mode so run this query

set sql_safe_updates = 0;

select * from d;

-- now  rename the column name

alter table d rename column c_id to customer_id;

/*
delete is used to remove particular raw from table 
truncate is used to erase the complete data  from table 
drop is used to remove table or database completely
*/

-- remove the row whwere customer id 1;

delete from d where customer_id = 1;
select * from d;

-- now remove the complete data from table mean complete rows

truncate d;

-- Now remove the entire table

drop table d;

select * from c;

/*
where clause is used for the filter process
order by claause is used for sorting the data
limit clause is used to see the top or bottom n numbers of rows
*/


/*
under SQL  the commands are categories into 5 types 
one is DDL (data definition language)
which works on the structure of the table or database
it contains the command like
1. drop
2. rename
3. create
4. alter
5. truncate

shortcut to remeber these command under sql is dr cat
*/
/*
Reall life example of sql is e commerce website example amazon suppose in amazon if i search for LED  then AT  the backend 
software will create the sql query like
select ledname from database;
*/

-- new database and table create

create database B;
use B;

create table c ( c_id int, c_name varchar(30));

show tables;

alter table c add column Amount int;

alter table c modify column Amount varchar(50);

alter table c drop column Amount;

insert into c values(1, "AA"),(2, "BB");

select * from c;

update c set c_name = 'BB' to "EE";

UPDATE c
SET c_name = 'EE'
WHERE c_name = 'BB';




	