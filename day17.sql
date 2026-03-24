-- day 17


use day16;
show tables;
desc employee;
select * from employee;

/*
Self Join ek aisa join hai jisme ek table ko khud ke saath join kiya jata hai data compare ya relation find karne ke liye.
*/
/*
Self Join is a type of join in which a table is joined with itself using aliases to compare rows within the same table.
*/

drop table a;
drop table b;
create table A(cust_id int, cust_name varchar(30));
create table B(order_id int, cust_id int);

alter table A add primary key (cust_id);

alter table B add primary key (order_id);

desc A;
desc B;


alter table B add constraint A foreign key (cust_id) references A(cust_id);

-- ALTER TABLE customers DROP PRIMARY KEY;

alter table B drop primary key;

alter table B drop foreign key cust_id;

ALTER TABLE B DROP FOREIGN KEY A;

alter table A drop primary key;

desc A;
desc B;






