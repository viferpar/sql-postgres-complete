select date_trunc('week', coalesce(posts.created_at, comments.created_at)) as week,
       count(posts.id)                                                     as num_likes_for_posts,
       count(comments.id)                                                  as num_likes_for_comments
from likes
         left join posts on likes.post_id = posts.id
         left join comments on likes.comment_id = comments.id
group by week
order by week;

create materialized view weekly_likes as
(
select date_trunc('week', coalesce(posts.created_at, comments.created_at)) as week,
       count(posts.id)                                                     as num_likes_for_posts,
       count(comments.id)                                                  as num_likes_for_comments
from likes
         left join posts on likes.post_id = posts.id
         left join comments on likes.comment_id = comments.id
group by week
order by week
    )
with data;

select * from weekly_likes;

-- delete from posts
-- where created_at < '2010-02-01'

refresh materialized view weekly_likes;