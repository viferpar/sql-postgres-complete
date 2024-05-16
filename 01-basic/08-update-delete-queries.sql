UPDATE cities
SET population = 39505000
WHERE name = 'Tokyo';

DELETE
FROM cities
WHERE name = 'Tokyo';

SELECT *
FROM cities;

INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);

SELECT *
FROM cities;
