CREATE TABLE Towns(
Id BIGINT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
Name VARCHAR(50),
)

CREATE TABLE Adresses(
Id BIGINT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
AdressText TEXT,
TownId TEXT
)
CREATE TABLE Departments(
Id BIGINT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
Name VARCHAR(50)
)
CREATE TABLE Employees(
Id BIGINT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
FirstName VARCHAR(20),
MiddleName VARCHAR(20),
LastName VARCHAR(20),
JobTitle VARCHAR(30),
DepartmentId VARCHAR(50),
HireDate DATE,
Salary DECIMAL,
AdressId VARCHAR(100)
)

INSERT INTO Towns
VALUES ('Sofia'), ('Plovdiv'), ('Varna'), ('Burgas')

INSERT INTO Departments
VALUES ('Engineering'), ('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance')

INSERT INTO Employees
VALUES ('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '01/02/2013', 3500.00,NULL),
('Stamat', 'Ivanov', 'Petrov', 'SQL Developer', 3, '01/02/2013', 8500.00,NULL)

SELECT Name FROM Towns
ORDER BY Name

SELECT Name FROM Departments
ORDER BY Name

SELECT FirstName, LastName, JobTitle, Salary FROM Employees
ORDER BY Salary DESC

UPDATE Employees
SET Salary *= 1.1