CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    username VARCHAR(50)
);

INSERT INTO users (username)
VALUES ('monahan93'),
       ('pferrer'),
       ('si93onis'),
       ('99stroman');

SELECT *
FROM users;

CREATE TABLE photos
(
    id      SERIAL PRIMARY KEY,
    url     VARCHAR(200),
    user_id INTEGER REFERENCES users (id)
);

INSERT INTO photos (url, user_id)
VALUES ('http://one.jpg', 4),
       ('http://two.jpg', 1),
       ('http://25.jpg', 1),
       ('http://36.jpg', 1),
       ('http://754.jpg', 2),
       ('http://35.jpg', 3),
       ('http://256.jpg', 4);

SELECT * FROM photos;
