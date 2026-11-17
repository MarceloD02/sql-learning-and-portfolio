# Exercise 12 — ORDER BY: Sort Employees by Last Name

## 1. Business Question

Retrieve all employees and display them in alphabetical order by last name.

## 2. Database Information

**Database:** Northwind

**Table:** Employees

**Columns:**

- FirstName
- LastName

The objective is to retrieve employee information and arrange the records alphabetically according to the LastName column.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName ASC;
```

**Approach 2 — Using aliases**
```sql
SELECT 
       FirstName AS [First Name],
       LastName AS [Last Name]
FROM Employees
ORDER BY LastName ASC;
```

Both queries retrieve the same employee records in alphabetical order by last name. The second query uses aliases to customize the column headings.

## 4. Explanation

- `SELECT` specifies the columns we want to retrieve.
- `FirstName` contains the first names of the employees.
- `LastName` contains the last names of the employees.
- `FROM` identifies the source table.
- `Employees` is the table containing the employee information.
- `ORDER BY` specifies how the query results should be sorted.
- `LastName` identifies the column used to determine the sorting order.
- `ASC` specifies ascending order, arranging the last names alphabetically from A to Z.

SQL sorts the employee records according to the LastName column while keeping the other selected column values associated with their respective employees.

## 5. Why This Approach?

I used the `ORDER BY` clause because the business question asks for employees to be displayed alphabetically by their last names.

Without the `ORDER BY` clause, SQL does not guarantee that the employee records will be displayed in alphabetical order.

I selected EmployeeID, FirstName, and LastName because they allow me to identify each employee and distinguish between employees who might share the same last name.

The `ASC` keyword specifies ascending order. For text values, this generally means alphabetical order from A to Z.

It is important to understand that `ASC` is optional because SQL uses ascending order by default when no sorting direction is specified.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName ASC;
```

I can inspect the results and confirm that the employee records are arranged alphabetically according to their last names.

I can also compare the result with descending order:
```sql
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName DESC;
```

The second query should display the employee records in reverse alphabetical order, from Z to A.

## 7. Key Learning

This exercise reinforces the use of the `ORDER BY` clause to sort records using a specific column.

It also demonstrates that:

- SQL can sort complete records using one selected column.
- The values in other selected columns remain associated with their original records.
- `ASC` sorts text values alphabetically from A to Z.
- `DESC` sorts text values in reverse alphabetical order, from Z to A.
- `ORDER BY` does not modify the original records in the database.
