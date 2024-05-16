select * from products order by price desc limit 4;

select * from products order by price / products.weight desc limit 4;

(select * from products order by price desc limit 4)
union
(select * from products order by price / products.weight desc limit 4);

(select * from products order by price desc limit 4)
union all
(select * from products order by price / products.weight desc limit 4);

(select * from products order by price desc limit 4)
intersect
(select * from products order by price / products.weight desc limit 4);

(select * from products order by price desc limit 4)
except
(select * from products order by price / products.weight desc limit 4);