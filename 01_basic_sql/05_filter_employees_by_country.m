Exercise 09 — WHERE: Filter Employees by Country

1. Business Question

Retrieve the names of all employees who live in the USA.

2. Database Information

Database: Northwind

Table: Employees

Columns:

FirstName

LastName

Country

The objective is to retrieve the first and last names of employees whose Country value is USA.

3. SQL Solution

Approach 1 — Using the original column names

SELECT FirstName, LastName
FROM Employees
WHERE Country = 'USA';

Approach 2 — Using aliases

SELECT FirstName AS [Employee First Name],
       LastName AS [Employee Last Name]
FROM Employees
WHERE Country = 'USA';
