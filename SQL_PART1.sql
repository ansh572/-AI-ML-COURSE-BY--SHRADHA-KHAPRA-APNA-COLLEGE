CREATE DATABASE clg; # MY FIRST DATABASE 

USE clg; # USING USE TO MAKE ANY CHANGES IN DATABASE

CREATE TABLE children( # HOW TO CREATE TABLE 

roll_no INT UNIQUE, 
name VARCHAR(30) NOT NULL,
age INT,
Follwers INT DEFAULT 0,
Followings INT 
);

INSERT INTO children # HOW TO INSERT VALUES IN TABLE 
VALUES
(101,"Ansh",20,400,312),
(102,"Aari",19,316,200),
(103,"David",20,500,400);
SELECT * FROM children; # TO CHECK VALUES INSIDE TABLE 
SELECT name , age FROM children;
## DATABASE QUERIES 
-- 1 .

CREATE DATABASE IF NOT EXISTS INSTAGRAM;

DROP DATABASE IF EXISTS INSTAGRAM;


## CONSTRAINT 
-- 1.  UNIQUE 
-- 2.  NOTNULL 
-- 3.  DEFAULT
-- 4.  CHECK  [CONSTRAINT age_Check CHECK (age>=13) ] 



## SELECT COMMAND 
-- SELECT * FROM table_name;
-- SELECT col1 , col2 FROM table_name;


# WHERE CLAUSE 
SELECT * FROM children
WHERE Followings >200;

#OPERATORS
SELECT name FROM children 
WHERE age + 1 = 21; --  arithmetic operator {+,-,*,/,%}
-- comparision operators {= , != , > , < , >= , <=}
-- Bitwise operators {& (Bitwise AND) , | (Bitwise OR)}

##LOGICAL OPERATOR {AND , OR , BETWEEN , IN ,  }
SELECT name , age  
FROM children 
WHERE age > 19 AND Follwers > 300;


SELECT name , age  
FROM children 
WHERE age > 19 OR Follwers > 500;

SELECT name , age  
FROM children 
WHERE age BETWEEN 19 AND 20;


##LIMIT CLAUSE 
SELECT name 
FROM children 
WHERE age > 19
LIMIT 1;

## ORDER BY CLAUSE 
SELECT name , age , Follwers
FROM children 
ORDER BY Follwers ASC;  -- for descending use DESC 


## AGGREGATE FUNCTIONS 
SELECT MAX(Follwers)
FROM children;

SELECT MIN(Follwers)
FROM children;

SELECT COUNT(Follwers)
FROM children;

SELECT AVG(Follwers)
FROM children;

SELECT SUM(Follwers)
FROM children;


## GROUP BY CLAUSE 
SELECT COUNT(age) ,age,  MAX(Follwers)
FROM children
GROUP BY age;

## HAVING CLAUSE 
SELECT COUNT(age) ,age,  MAX(Follwers)
FROM children
GROUP BY age
HAVING MAX(Follwers) > 400;

## GENERAL ORDER 

-- SELECT 
-- FROM
-- WHERE
-- GROUP BY 
-- HAVING 
-- ORDER BY 

SET SQL_SAFE_UPDATES = 0;

## UPDATE TABLE {TO UPDATE EXISTING ROWS}
UPDATE children 
SET Follwers = 600
WHERE roll_no = 101 ;

SELECT * FROM children;

## DELETE TABLE {TO DELETE EXISTING ROWS}

DELETE FROM children 
WHERE age = 19;

SELECT * FROM children;

## DROP TABLE Vs TRUNCATE TABLE 

-- TRUNCATE TABLE table_name; --used to delete the data inside table..
-- DROP TABLE table_name; -- used to delete complete table with its structure can't store data inside it now 

## ALTER TABLE 
ALTER TABLE children
ADD COLUMN city VARCHAR(25) DEFAULT "DELHI"; -- ADD COLUMN 
SELECT * FROM children;

ALTER TABLE children
DROP COLUMN city; -- DROP COLUMN  
SELECT * FROM children;

ALTER TABLE children
RENAME TO BACHHE; -- RENAME COLUMN NAME 
SELECT * FROM children;

