# Exercise 03 — Retrieve Customer Names and Cities

## 1. Business Question

Retrieve the names and cities of all customers stored in the Customers table.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Columns:**
- CustomerName
- City

The objective is to retrieve two columns from the same table.

In the previous exercise, I retrieved all columns using `SELECT *`. In this exercise, I will specify the exact columns required to answer the business question.

## 3. SQL Solution

**Approach 1 — Retrieve columns using their original names**

```sql
SELECT CustomerName, City
FROM Customers;
```

**Approach 2 — Retrieve columns using aliases**

```sql
SELECT CustomerName AS [Name of the Customer],
       City AS [Customer City]
FROM Customers;
```

Both queries retrieve the same information. The difference is that the second query uses aliases to customize the column names displayed in the results.

## 4. Explanation

- `SELECT` specifies the columns we want to retrieve.
- `CustomerName` contains the names of the customers.
- `City` contains the cities where the customers are located.
- The comma (`,`) separates multiple columns in the SELECT statement.
- `FROM` identifies the source table.
- `Customers` is the table containing the requested information.

In the second approach:

- `AS` defines an alias for a column.
- `[Name of the Customer]` is the alternative name displayed for the CustomerName column.
- `[Customer City]` is the alternative name displayed for the City column.
- Square brackets allow spaces in column aliases using SQL Server syntax.

Aliases change the column headings displayed in the query results, not the original database column names.

## 5. Why This Approach?

I used two approaches to demonstrate that SQL allows us to retrieve multiple columns using a single SELECT statement.

The first approach uses the original column names, while the second uses aliases to make the output headings more descriptive and readable.

Aliases are particularly useful when preparing query results for reports, business analysis, or other users.

## 6. Validation

To validate the results, I can:

- Confirm that the query returns two columns: CustomerName and City.
- Compare the returned information with the corresponding columns in the Customers table.
- Check that the number of returned rows matches the total number of customer records.

For example:

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

## 7. Key Learning

In this exercise, I learned how to:

- Retrieve multiple columns from a table using a single SELECT statement.
- Separate column names using commas.
- Use the AS keyword to create column aliases.
- Use square brackets to define aliases containing spaces in SQL Server syntax.
- Improve the readability of query results without changing the original database structure.
