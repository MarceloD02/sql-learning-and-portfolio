# Exercise 12 — WHERE: Filter Customers by Country

## 1. Business Question

Retrieve the names of all customers from Germany.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Columns:**

- CustomerName
- Country

The objective is to retrieve customer names only when their Country value is Germany.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT CustomerName
FROM Customers
WHERE Country = 'Germany';
```

**Approach 2 — Using aliases**
```sql
SELECT CustomerName AS [Customers from Germany]
FROM Customers
WHERE Country = 'Germany';
```

Both queries retrieve the same customer records. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `CustomerName` contains the names of the customers.
- `FROM` identifies the source table.
- `Customers` is the table containing the customer information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `Country = 'Germany'` filters the records, returning only customers whose Country value is Germany.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every customer in the database. It asks specifically for customers from Germany.

Without the `WHERE` clause, SQL would return all customer names, regardless of their country.

The equality operator (`=`) is used to compare the Country column with the text value `'Germany'`.

I selected only `CustomerName` because the business question asks for customer names, not their complete address or other customer information.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT CustomerID, CustomerName, Country
FROM Customers
WHERE Country = 'Germany';
```

This allows me to inspect each qualifying customer individually and confirm that every returned record has Germany as its country.

I can also count how many customers satisfy this condition:
```sql
SELECT COUNT(*) AS TotalCustomersFromGermany
FROM Customers
WHERE Country = 'Germany';
```

The count represents the total number of customer records from Germany.

## 7. Key Learning

This exercise reinforces the use of the `WHERE` clause and the equality operator (`=`) to filter records based on a country value.

It also demonstrates the importance of selecting the correct database column for the business question. Since Germany is a country, the `Country` column is used instead of `City`or other column.

The validation query includes `CustomerID` and `CustomerName` to identify individual customer records rather than displaying only unique country values.
