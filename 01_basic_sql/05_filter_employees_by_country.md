# Exercise 5 — WHERE: Filter Employees by Country

## 1. Business Question

Retrieve the names of all employees who live in the USA.

## 2. Database Information

**Database:** Northwind

**Table:** Employees

**Columns:**
- FirstName
- LastName
- Country

The objective is to retrieve employee names only when their Country value is USA.

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

Both queries retrieve the same employee records. The second query uses aliases to customize the column headings.

## 4. Explanation

- `SELECT` specifies the columns we want to retrieve.
- `FirstName` contains the first names of the employees.
- `LastName` contains the last names of the employees.
- The comma (`,`) separates multiple columns in the SELECT statement.
- `FROM` identifies the source table.
- `Employees` is the table containing the requested information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `Country = 'USA'` filters the records, returning only employees whose Country value is USA.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every employee in the database. It asks specifically for employees who live in the USA.

Without the `WHERE` clause, SQL would return all employee names, regardless of their country.

The equality operator (`=`) is used to compare the Country column with the text value `'USA'`.

I selected both `FirstName` and `LastName` because together they provide the full names of the employees.

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

This exercise reinforces the use of the `WHERE` clause, which is used to filter records based on specific conditions.

I also learned that:

- `SELECT` determines which columns are displayed.
- Multiple columns can be retrieved by separating their names with commas.
- `WHERE` determines which rows are returned.
- The equality operator (`=`) compares values.
- Text values must be enclosed in single quotation marks.
- Aliases can be used to customize column headings.
