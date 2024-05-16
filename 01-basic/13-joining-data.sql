SELECT c.contents, u.username
from comments c
         join public.users u on c.user_id = u.id;

SELECT c.contents, p.url
from comments c
         join photos p on c.photo_id = p.id;

SELECT P.url, u.username
FROM photos p
         JOIN users u ON p.user_id = u.id;

INSERT INTO photos (url, user_id)
VALUES ('https://banner.jpg', NULL);

SELECT P.url, u.username
FROM photos p
         LEFT JOIN users u ON p.user_id = u.id;

INSERT INTO users (username)
VALUES ('Nicole');

SELECT p.url, u.username
FROM photos p
         RIGHT JOIN users u ON p.user_id = u.id;

SELECT p.url, u.username
FROM photos p
         FULL JOIN users u ON p.user_id = u.id;

SELECT p.url, c.contents
FROM photos p
         JOIN comments c ON p.id = c.photo_id
WHERE c.user_id = p.user_id;

SELECT p.url, c.contents, u.username
FROM photos p
         JOIN comments c ON p.id = c.photo_id
         JOIN users u ON c.user_id = u.id AND p.user_id = u.id
WHERE c.user_id = p.user_id;