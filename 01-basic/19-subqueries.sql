select name, price
from products
where price > (select max(price) from products where department = 'Toys');

select name, price, (select max(price) from products) as max_price
from products
where price > 867;

select name, price, (select price from products where id = 3) as id_3_price
from products
where price > 867;

select name, price_weight_ratio
from (select name, price / weight as price_weight_ratio
      from products) as p
where price_weight_ratio > 100;

select *
from (select max(price) from products) AS p;

select max(average_price) as max_average_price from (
select avg(price) as average_price from products group by department) as p;

select u.first_name
from users u
join (select orders.user_id from orders where product_id = 3) as o
ON o.user_id = u.id;

select id
from orders
where product_id IN (select id from products where price / weight > 50);

select name, price
from products
where price > (select avg(price) from products);

select name
from products
where department not in (select department from products where price < 100);

select name, department, price
from products
where price > ALL (select price from products where department = 'Industrial');

select name, department, price
from products
where price > SOME (select price from products where department = 'Industrial');

select name, department, price
from products p1
where p1.price = (select max(price) from products p2 where p1.department = p2.department);

select name, (select count(*) from orders o where o.product_id = p.id) as orders_count
from products p;

select (select max(price) from products);
