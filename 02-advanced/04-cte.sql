WITH tags as (select user_id, created_at
              FROM caption_tags
              UNION ALL
              select user_id, created_at
              FROM photo_tags)

select users.username, tags.created_at
from users
         join tags ON tags.user_id = users.id
where tags.created_at < '2010-01-07';