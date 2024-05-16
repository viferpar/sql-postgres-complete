select greatest(200, 10, 30);

select name, weight, (greatest(weight * 2, 30))
from products;

select least(200, 10, 30);

select name, price, (least(price * 0.5, 400))
from products;

select name, price, case when price > 600 then 'high' when price > 300 then 'medium' else 'cheap' end
from products;