select count(*) from users;

select count(*) from likes;

select id from users order by id desc limit 3;

select u.username, p.caption
from users u
join posts p on  u.id = p.user_id
where u.id = 200;

select u.username, count(*)
from likes l
join users u on l.user_id = u.id
group by u.username;