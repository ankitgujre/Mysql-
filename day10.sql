create database b;
use b;

create table b(
	cut_id int,
    cust_name varchar(50),
    cust_performance varchar(50));

desc b;

insert into b values(1,'A','B'),
(2,'c',null),(3,'D','E'),(4,null,'F'),(5,'6','H'),(6,null,null);

select * from b;

set autocommit = 0;
commit;

insert into b values(7,'I','J',500);
select * from b;
rollback;
insert into b values(8,'I','J',500);

alter table b add column cust_purchase int;
update b set cust_performance = case when cut_id >= 1 and cut_id <= 3 then 100
when cut_id >=4 and cut_id <=5 then 200
else
400
end;

set sql_safe_updates = 0;

select *, isnull(cust_name) as null_in_cust_name from b;

select *, ifnull(cust_name, 2) as cust_name_null from b;

select *, coalesce(cust_name, cust_performance, cust_purchase) as cust_name_null from b;

select cut_id,cust_name from b where cut_id > 2 and cust_purchase > 200 limit 1 offset 1;

/*
DCL commands
* Grant and Revoke

grant all on table b to username
*/

-- grant all on b to user_name;
-- grant customer_id, cust_id on b to user_name;

-- revoke all on b to user_name;





/*
new col = alter table add column
change data types = modify volumn
drop existibg column = alter table drop column

*/

set autocommit=0;
select *from b;

insert into b values(9,'I','J',500);
COMMIT;
insert into b values(10,'I','J',500);
ROLLBACK;

savepoint SP1;
insert into b values(11,'I','J',500);

rollback to SP1;