# Employee and Department SQL Practice Problems

A curated collection of SQL practice problems designed to master table relationships, various types of joins (`INNER JOIN`, `RIGHT JOIN`, `SELF JOIN`), subqueries, and data aggregation. This repository acts as a functional portfolio piece demonstrating solid foundational skills in data retrieval and relational database query construction.

## Table Structures & Relationships

The queries in this project are executed against a standard relational schema containing two interconnected tables: `Employees` and `Departments`.

* **`Employees Table`**: Contains staff details (`EmployeeID`, `FirstName`, `LastName`, `Email`, `HireDate`, `Salary`, and `DepartmentID`).
* **`Departments Table`**: Contains organizational business units (`DepartmentID`, `DepartmentName`).

---

## Core Practice Exercises

### 1. Basic Schema Verification
Quick diagnostic queries used to inspect the raw structure and initial data integrity of both underlying datasets.
```sql
SELECT * FROM Employees;
SELECT * FROM Departments;
```

### 2. Comprehensive Employee Placement
Write a SQL query to list the names of employees along with the names of the departments they work in.
```sql
SELECT firstname,lastname,Departmentname  FROM Employees e INNER JOIN Departments d ON e.DepartmentID=d.DepartmentID
```
### 3. Complete Department Assessment
Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
```sql
SELECT DepartmentName,FirstName,LastName FROM Employees e RIGHT JOIN Departments d ON e.DepartmentID=d.DepartmentID
```
### 4. Unassigned Records
Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
```sql
SELECT  FirstName,LastName FROM Employees e RIGHT JOIN Departments d ON e.DepartmentID=d.DepartmentID WHERE e.DepartmentID IS NULL
```
### 5. Peer Groups and Departmental Coworkers
Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
```sql
SELECT E2.FirstName, E2.LastName FROM Employees E1 JOIN Employees E2 ON E1.DepartmentID = E2.DepartmentID
WHERE E1.FirstName = 'Jane' AND E1.LastName = 'Doe' AND E2.EmployeeID <> E1.EmployeeID
```
### 6. High-Earner Department Identification
Write a SQL query to find the department with the highest total salary paid to its employees.
```sql
SELECT DepartmentName from Employees e INNER JOIN  Departments d ON e.DepartmentID=d.DepartmentID 
WHERE Salary=(SELECT MAX(salary) FROM Employees)
```





