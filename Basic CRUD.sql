--2. Find All Information About Departments
--Write a SQL query to find all available information about the Departments. Submit your query statements as
--Prepare DB &amp; run queries.

SELECT * FROM Departments

--3. Find all Department Names
--Write SQL query to find all Department names. Submit your query statements as Prepare DB &amp; run queries.

SELECT Name FROM Departments

--4. Find Salary of Each Employee
--Write SQL query to find the first name, last name and salary of each employee. Submit your query statements as
--Prepare DB &amp; run queries.

SELECT FirstName, LastName, Salary FROM Employees

--5. Find Full Name of Each Employee
--Write SQL query to find the first, middle and last name of each employee. Submit your query statements as Prepare
--DB &amp; run queries.

SELECT FirstName, MiddleName, LastName FROM Employees

--6. Find Email Address of Each Employee
--Write a SQL query to find the email address of each employee. (by his first and last name). Consider that the email
--domain is softuni.bg. Emails should look like “John.Doe@softuni.bg&quot;. The produced column should be named &quot;Full
--Email Address&quot;. Submit your query statements as Prepare DB &amp; run queries.

SELECT FirstName + '.' + LastName + '@softuni.bg' AS [Full Email Address]
  FROM Employees

--7. Find All Different Employee’s Salaries
--Write a SQL query to find all different employee’s salaries. Show only the salaries. Submit your query statements as
--Prepare DB &amp; run queries.

SELECT DISTINCT Salary FROM Employees
ORDER BY Salary 

--8. Find all Information About Employees
--Write a SQL query to find all information about the employees whose job title is “Sales Representative”. Submit
--your query statements as Prepare DB &amp; run queries.

SELECT * FROM Employees
WHERE JobTitle = 'Sales Representative'

--9. Find Names of All Employees by Salary in Range
--Write a SQL query to find the first name, last name and job title of all employees whose salary is in the range
--[20000, 30000]. Submit your query statements as Prepare DB &amp; run queries.

SELECT FirstName, LastName, JobTitle
FROM  Employees 
WHERE Salary >= 20000 AND Salary <= 30000

--10. Find Names of All Employees
--Write a SQL query to find the full name of all employees whose salary is 25000, 14000, 12500 or 23600. Full Name is
--combination of first, middle and last name (separated with single space) and they should be in one column called
--“Full Name”. Submit your query statements as Prepare DB &amp; run queries.

SELECT FirstName + ' ' + MiddleName + ' ' + LastName [Full Name]
FROM Employees
WHERE Salary = 25000 OR Salary = 14000 OR
      Salary = 12500 OR Salary = 23600   

--11. Find All Employees Without Manager
--Write a SQL query to find first and last names about those employees that does not have a manager. Submit your
--query statements as Prepare DB &amp; run queries.

SELECT FirstName, LastName
FROM Employees
WHERE ManagerID IS NULL

--12. Find All Employees with Salary More Than 50000
--Write a SQL query to find first name, last name and salary of those employees who has salary more than 50000.
--Order them in decreasing order by salary. Submit your query statements as Prepare DB &amp; run queries.

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 50000
ORDER BY Salary DESC

--13. Find 5 Best Paid Employees.
--Write SQL query to find first and last names about 5 best paid Employees ordered descending by their salary.
--Submit your query statements as Prepare DB &amp; run queries.

SELECT TOP 5 FirstName, LastName
FROM Employees
ORDER BY Salary DESC

--14. Find All Employees Except Marketing
--Write a SQL query to find the first and last names of all employees whose department ID is different from 4. Submit
--your query statements as Prepare DB &amp; run queries.

SELECT FirstName, LastName
FROM Employees
WHERE DepartmentID != 4

--15. Sort Employees Table
--Write a SQL query to sort all records in the Employees table by the following criteria:

--? First by salary in decreasing order
--? Then by first name alphabetically
--? Then by last name descending
--? Then by middle name alphabetically

--Submit your query statements as Prepare DB &amp; run queries.

SELECT * FROM Employees
ORDER BY Salary DESC, FirstName ASC, LastName DESC, MiddleName ASC

--117. Create View Employees with Job Titles
--Write a SQL query to create view V_EmployeeNameJobTitle with full employee name and job title. When middle
--name is NULL replace it with empty string (‘’). Submit your query statements as Run skeleton, run queries &amp; check
--DB.

CREATE VIEW V_EmployeeNameJobTitle AS
SELECT FirstName + ' ' +
    CASE
        WHEN MiddleName IS NULL THEN ' ' + LastName
        ELSE MiddleName + ' ' + LastName
    END
AS [Full Name], JobTitle FROM Employees

--18. Distinct Job Titles
--Write a SQL query to find all distinct job titles. Submit your query statements as Prepare DB &amp; run queries.

SELECT DISTINCT JobTitle FROM  Employees

--19. Find First 10 Started Projects
--Write a SQL query to find first 10 started projects. Select all information about them and sort them by start date,
--then by name. Submit your query statements as Prepare DB &amp; run queries.

SELECT TOP 10 * FROM Projects
ORDER BY StartDate, Name ASC

--20. Last 7 Hired Employees
--Write a SQL query to find last 7 hired employees. Select their first, last name and their hire date. Submit your query
--statements as Prepare DB &amp; run queries.

SELECT TOP 7 FirstName, LastName, HireDate
FROM Employees
ORDER BY HireDate DESC

--21. Increase Salaries
--Write a SQL query to increase salaries of all employees that are in the Engineering, Tool Design, Marketing or
--Information Services department by 12%. Then select Salaries column from the Employees table. After that
--exercise restore your database to revert those changes. Submit your query statements as Prepare DB &amp; run queries.

UPDATE Employees
   SET Salary *= 1.12
 WHERE DepartmentId IN 
	(SELECT DepartmentId 
	   FROM Departments
	  WHERE Name IN 
		('Engineering', 'Tool Design', 'Marketing', 'Information Services'))
						
SELECT Salary
  FROM Employees