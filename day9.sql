-- class 9
drop database a;
drop database c;
drop database b;

show databases;
drop database e;

create database a;
use a;
create table b(c_id int, c_name varchar(10), c_city varchar(15));
show tables;

insert into b values(1, 'A', 'B'),
	(2, 'C', 'D'),(3,'E','F');
    
select * from b;

-- alter table b modify column c_name = 'Y' where c_city = 'D';

set sql_safe_updates = 0;
update b set c_name = 'Y' where c_city = "D";
select * from b;



-- cname = e delete

delete from b where c_name = 'E';

-- 
alter table b add column performance int;

desc b;

alter table b modify column performance varchar(30);

update b set performance = case
when c_id = 1 then "Good"
when c_id = 2 then "Very Good"
else
	"Nothing"
end;

rename table b to c;

desc c;

rename table c to b;


alter table b rename column c_name to customer_name;

select * from b;

set autocommit = 0;
commit;

truncate b;

select * from b;

rollback;


drop table b;

set autocommit = 0;
commit;

insert into b values(4,'j','k');

select * from b;


savepoint sp;
rollback;


insert into b values(5,'l','m');
select * from b;

rollback;

rollback to sp;
