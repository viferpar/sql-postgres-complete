select username, count(*)
from users
         join (select user_id
               from photo_tags
               UNION ALL
               select user_id
               from caption_tags) as tags ON tags.user_id = users.id
group BY username
order by count(*) DESC;

create view tags AS
(
select id, created_at, user_id, post_id, 'photo_tag' AS type
from photo_tags
UNION ALL
select id, created_at, user_id, post_id, 'caption_tag' AS type
from caption_tags
    );

select *
from tags
where type = 'caption_tag';

select username, count(*)
from users
         join tags ON tags.user_id = users.id
group BY username
order by count(*) DESC;

create or replace view recent_posts AS
(
select *
from posts
order by created_at desc
limit 15 );

select username
from recent_posts
         join users on recent_posts.user_id = users.id;

drop view recent_posts;