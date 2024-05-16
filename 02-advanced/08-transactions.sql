CREATE TABLE accounts
(
    id      SERIAL PRIMARY KEY,
    name    varchar(20) NOT NULL,
    balance INTEGER     NOT NULL
);

INSERT INTO accounts (name, balance)
values ('Alyson', 100),
       ('Gia', 100);

SELECT * FROM accounts;

BEGIN;

update accounts
set balance = balance - 50
where name = 'Alyson';

update accounts
set balance = balance + 50
where name = 'Gia';

SELECT * FROM accounts;

--ROLLBACK;
COMMIT;

SELECT * FROM accounts;

UPDATE accounts SET balance = 100;