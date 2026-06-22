

SELECT * FROM Employees
SELECT * FROM Departments

--Write a SQL query to list the names of employees along with the names of the departments they work in.

SELECT firstname,lastname,Departmentname  FROM Employees e INNER JOIN Departments d ON e.DepartmentID=d.DepartmentID

--Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

SELECT DepartmentName,FirstName,LastName FROM Employees e RIGHT JOIN Departments d ON e.DepartmentID=d.DepartmentID


--Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

SELECT  FirstName,LastName FROM Employees e RIGHT JOIN Departments d ON e.DepartmentID=d.DepartmentID WHERE e.DepartmentID IS NULL

--Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

SELECT E2.FirstName, E2.LastName FROM Employees E1 JOIN Employees E2 ON E1.DepartmentID = E2.DepartmentID
WHERE E1.FirstName = 'Jane' AND E1.LastName = 'Doe' AND E2.EmployeeID <> E1.EmployeeID

--Write a SQL query to find the department with the highest total salary paid to its employees.
SELECT DepartmentName from Employees e INNER JOIN  Departments d ON e.DepartmentID=d.DepartmentID 
WHERE Salary=(SELECT MAX(salary) FROM Employees)

