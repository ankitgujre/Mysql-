create database compositeClass;

use compositeClass;

create table A(s_id int primary key, courses varchar(100));
drop table A;


/*
composite primary key

In a table the primary key is always single but the foreign keys can be multiple but in some special cases a single column primary key
is not enough to provide the unique row identification then we have to use composite primary key.

In the CPK still the primary key is single only but it is a combinition is more than one column.
*/
create table student(s_id int, courses varchar(100),
	primary key(s_id, courses));
    
desc student;

alter table student drop primary key;
