with recursive suggestions(leader_id, follower_id, depth) AS (
    SELECT leader_id, follower_id, 1 AS depth
    FROM followers
    WHERE follower_id = 1000
    UNION
    select followers.leader_id, followers.follower_id, depth + 1
    from followers
    JOIN suggestions ON suggestions.leader_id = followers.follower_id
    WHERE depth < 2
)
select distinct users.id, users.username
from suggestions
join users on users.id = suggestions.leader_id
where depth > 1
limit 5;