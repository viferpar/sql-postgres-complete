select user_id, count(id)
from comments
group by user_id;

SELECT photo_id, count(*)
from comments
group by photo_id;

SELECT photo_id, count(*)
from comments
where photo_id < 3
group by photo_id
having count(*) > 2;

select user_id, count(*)
from comments
where photo_id < 50
group by user_id
having count(*) > 20;