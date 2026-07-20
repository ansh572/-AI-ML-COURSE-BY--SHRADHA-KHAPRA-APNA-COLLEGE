-- CREATE DATABASE PRIME;

-- USE PRIME ;

-- CREATE TABLE accounts(
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(50),
-- balance DECIMAL(10,2)
-- );

-- INSERT INTO accounts(name,balance)VALUES
-- ('Adam',500.0),
-- ('Boby',400.0),
-- ('cathy',600.0);

-- SELECT * FROM accounts;


# TRANSCATIONS 
SET autocommit = 0;

START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
COMMIT;

SELECT * FROM accounts;

