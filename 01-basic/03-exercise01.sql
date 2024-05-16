CREATE TABLE movies
(
    title      VARCHAR(60),
    box_office INTEGER
);

INSERT INTO movies (title, box_office)
VALUES ('The Avengers', 1500000000),
       ('Batman v Superman', 873000000);

SELECT title, box_office
FROM movies;
