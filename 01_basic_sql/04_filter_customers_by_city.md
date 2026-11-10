# Exercise 08 — WHERE: Filter Customers by City

## 1. Business Question

Retrieve the names of all customers located in London.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Columns:**
- CustomerName
- City

The objective is to retrieve customer names only when their City value is London.

## 3. SQL Solution

**Approach 1 — Using the original column name**

```sql
SELECT CustomerName
FROM Customers
WHERE City = 'London';
```

**Approach 2 — Using an alias**

```sql
SELECT CustomerName AS [Customers from London]
FROM Customers
WHERE City = 'London';
```

Both queries retrieve the same customer records. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `CustomerName` contains the names of the customers.
- `FROM` identifies the source table.
- `Customers` is the table containing the requested information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `City = 'London'` filters the records, returning only customers whose City value is London.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every customer in the database. It asks specifically for customers located in London.

Without the `WHERE` clause, SQL would return all customer names, regardless of their city.

The equality operator (`=`) is used to compare the City column with the text value `'London'`.

## 6. Validation

To validate the results, I can execute:

```sql
SELECT DISTINCT City
FROM Customers
WHERE City = 'London';
```

The result should contain only London.

I can also count how many customers satisfy this condition:

```sql
SELECT COUNT(*) AS TotalCustomersInLondon
FROM Customers
WHERE City = 'London';
```

## 7. Key Learning

This exercise introduces the `WHERE` clause, which is used to filter records based on specific conditions.

I also learned that:

- `SELECT` determines which columns are displayed.
- `WHERE` determines which rows are returned.
- The equality operator (`=`) compares values.
- Text values must be enclosed in single quotation marks.
