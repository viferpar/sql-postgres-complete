SELECT *
FROM photos
where user_id = 4;

SELECT url, username
FROM photos p
         JOIN users u on u.id = p.user_id;
