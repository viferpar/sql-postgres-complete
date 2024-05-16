CREATE INDEX ON users (username);

DROP INDEX users_username_idx;

-- 0.052 ms with index
-- 0.798 ms without index
EXPLAIN ANALYZE
SELECT *
FROM users
WHERE username = 'Emil30';

explain analyze
select username, contents
from users
         join comments ON comments.user_id = users.id
where username = 'Alyson14';

select *
from pg_stats
where tablename = 'users';

explain select *
from likes
where created_at < '2013-01-01';

CREATE INDEX likes_created_at_idx ON likes(created_at);

explain select *
        from likes
        where created_at > '2013-01-01';