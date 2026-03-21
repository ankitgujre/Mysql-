-- Sql Day 15
select * from customers;
select * from orders;
select * from products;
select * from categories;
select * from order_items;

SELECT 
    *
FROM
    orders AS o
        INNER JOIN
    order_items AS oi ON o.order_id = oi.order_id;
    
SELECT 
    *
FROM
    products AS p
        INNER JOIN
    categories AS ct ON p.category_id = ct.category_id;
    
select * from categories as ct
join products as p on 
ct.category_id = p.category_id;
-- Left join

select * from categories as ct
left join products as p on 
ct.category_id = p.category_id;

select * from categories as ct
right join products as p on 
ct.category_id = p.category_id;


SELECT 
    *
FROM
    orders AS o
        LEFT JOIN
    order_items AS oi ON o.order_id = oi.order_id;
    
SELECT 
    *
FROM
    orders AS o
        Right JOIN
    order_items AS oi ON o.order_id = oi.order_id;
    
    
SELECT 
    *
FROM
    customers AS c
        Left JOIN
    orders AS o ON c.customer_id = o.customer_id;
    
SELECT 
    *
FROM
    customers AS c
        RIGHT JOIN
    orders AS o ON c.customer_id = o.customer_id;
    
    
-- cross join

select * from customers as c cross join categories as ct;

select * from customers as c natural join categories as ct;

select * from orders as o natural join order_items as oi;

 
 /*-- 
select * from categories as ct
full join products as p on 
ct.category_id = p.category_id;
*/

