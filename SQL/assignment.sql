CREATE DATABASE ASSGNMT;

USE ASSGNMT;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employee (EmpID, FirstName, LastName, Department, Salary, HireDate) 
VALUES
(101, 'Alice', 'Johnson', 'IT', 6500.00, '2020-03-15'),
(102, 'Mark', 'Rivera', 'HR', 4800.00, '2019-07-22'),
(103, 'Sophia', 'Lee', 'Finance', 7200.00, '2021-01-10'),
(104, 'Daniel', 'Kim', 'IT', 5800.00, '2018-11-05'),
(105, 'Emma', 'Brown', 'Marketing', 5300.00, '2022-04-18'),
(106, 'Liam', 'Patel', 'Finance', 6900.00, '2020-09-29'),
(107, 'Olivia', 'Garcia', 'HR', 4600.00, '2017-06-30'),
(108, 'Noah', 'Thompson', 'IT', 7500.00, '2023-02-12'),
(109, 'Ava', 'Martinez', 'Marketing', 5100.00, '2019-12-02'),
(110, 'Ethan', 'Davis', 'Finance', 8000.00, '2016-05-14');

-- q1  
SELECT * FROM Employee;

-- q2 
SELECT FirstName , LastName , Salary FROM Employee; 

-- q3 
SELECT * FROM Employee 
WHERE Department = "IT";
 
 -- q4 
SELECT * FROM Employee 
WHERE Salary > 6000;

-- q5 
SELECT * FROM Employee 
ORDER BY HireDate DESC; 

-- q6 
SELECT DISTINCT Department FROM Employee;


-- Q8 

SELECT * FROM Employee 
Where salary between 4000 and 7000;

-- q7 
SELECT AVG(salary)From Employee;

SELECT Department
FROM Employee
GROUP BY Department;

-- q7
SELECT * 
FROM Employee
WHERE FirstName LIKE 'A%';

-- q10 
SELECT Department, COUNT(*)
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 3 ;

