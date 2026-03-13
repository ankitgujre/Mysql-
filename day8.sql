-- Class 8

create database c;
use c;

create table D(cus_id int, cus_name varchar(30));

insert into D values( 1, "AA"),(2, "BB");

select * from D;

alter table D add column cust_performance varchar(30);

--  insert into D (cust_performance) values ("good"),("very Good"); 

set autocommit = 0;
commit;

update D set cust_performance = "good"
where cus_id = 1;

update D set cust_performance = "very good"
where cus_id = 2;

set sql_safe_updates = 0;

select * from D;

rollback;

select * from D;

update D set cust_performance = case
when cus_id = 1 then "good"
when cus_id = 2 then "very good"
else
	"Nothing"
end;

select * from D;

rollback;

update D set cust_performance = "v.good"; 

create Database E;

use E;

create table f (cust_id int, cust_name varchar(30));

insert into f values(1, "AA"),(2, "BB");

select * from f;

alter table f add column performance varchar(20);

update f set performance = case
when cust_id = 1 then "good"
when cust_id = 2 then "very good"
else
	"Nothing"
end;

create table G(cust_id int, cust_name varchar(30));

insert into G values(1, "CC"),(2, "DD");

insert into G values (3, "EE");

select * from G;

rollback;
set autocommit = 0;
commit;

select * from G;

insert into G values (4, "GG");

rollback;
select * from G;

set autocommit = 0;
commit;

insert into G values (4, "HH");

select * from G;
set autocommit = 0;
commit;

insert into G values (5, "JJ");

select * from G;

rollback;

insert into G values (5, "JJ");

savepoint sp;

insert into G values(6,"KK");

select * from G;

rollback to sp;
select * from G;

rollback;

select * from G;

/*
TCL- Transaction Control Language is used to control the changes made in the database.
It helps us save the changes or unndo them
If something goes wrong. Firstly we set autocommit = 0. it avoids the system from permanent store.
later we create a table inserted 2 rows unnder that after it now i set commit;
It will o the permanent store of the 2 lines data.alterNow if I insert the 3rd line after it If I do the rollback
Now it will make againmake my table till 2nd row only.
actually the rollback acts like undo only.
Even if I write 10 lines that and inserted also but if I rollback again then again table will be in the status of 2 rows only
*/
