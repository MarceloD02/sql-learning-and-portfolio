# Exercise 05 — WHERE: Filter Employees by Country

## 1. Business Question

Retrieve the names of all employees who live in the USA.

## 2. Database Information

**Database:** Northwind

**Table:** Employees

**Columns:**
- FirstName
- LastName
- Country

The objective is to retrieve the first and last names of employees whose Country value is USA.

## 3. SQL Solution

**Approach 1 — Using the original column names**

```sql
SELECT FirstName, LastName
FROM Employees
WHERE Country = 'USA';
```

**Approach 2 — Using aliases**

```sql
SELECT FirstName AS [Employee First Name],
       LastName AS [Employee Last Name]
FROM Employees
WHERE Country = 'USA';
```

Both queries retrieve the same employee records. The second query uses aliases to customize the column headings displayed in the results.

## 4. Explanation

- `SELECT` specifies the columns we want to retrieve.
- `FirstName` contains the employees' first names.
- `LastName` contains the employees' last names.
- The comma (`,`) separates multiple columns in the SELECT statement.
- `FROM` identifies the source table.
- `Employees` is the table containing employee information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `Country = 'USA'` filters the records, returning only employees whose Country value is USA.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for all employees in the database. It asks specifically for employees who live in the USA.

The `SELECT` statement retrieves the employees' first and last names, while the `WHERE` clause filters the records based on their country.

This approach allows me to retrieve only the information required to answer the business question.

## 6. Validation

To validate the results, I can execute:

```sql
SELECT DISTINCT Country
FROM Employees
WHERE Country = 'USA';
```

The result should contain only USA.

I can also count how many employees satisfy this condition:

```sql
SELECT COUNT(*) AS TotalEmployeesInUSA
FROM Employees
WHERE Country = 'USA';
```

## 7. Key Learning

This exercise reinforces the use of the `WHERE` clause to filter records based on a specific condition.

I also practiced:

- Retrieving multiple columns using a single SELECT statement.
- Combining the `SELECT` and `WHERE` clauses.
- Using the equality operator (`=`) to compare values.
- Filtering employee records based on their country.
- Using aliases to customize column headings.
