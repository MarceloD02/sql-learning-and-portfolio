# Exercise 02 — SELECT *: Retrieve All Products

## 1. Business Question

Retrieve all products stored in the Products table, including all available columns and records.

## 2. Database Information

**Database:** Northwind

**Table:** Products

## 3. SQL Solution

```sql
SELECT *
FROM Products;
```

## 4. Explanation

- `SELECT` specifies which columns to retrieve.
- `*` is a wildcard that instructs SQL to retrieve all columns.
- `FROM` identifies the source table.
- `Products` is the table containing the product information.

Because there is no `WHERE` condition, the query returns all records from the Products table.

## 5. Why This Approach?

I used `SELECT *` because the objective is to retrieve all available product information without specifying individual columns.

This approach is useful when exploring an unfamiliar database and examining its structure.

However, in production environments, selecting only the required columns is generally preferable because it avoids retrieving unnecessary data.

## 6. Validation

To verify the number of products returned, I can execute:

```sql
SELECT COUNT(*) AS TotalProducts
FROM Products;
```

The result should match the number of records returned by the original query.

## 7. Key Learning

The `SELECT *` statement retrieves all columns from a specified table.

Without a `WHERE` condition, it returns all records in that table.
