# Exercise 10 — DISTINCT: Retrieve Unique Customer Countries

## 1. Business Question

Retrieve a list of all distinct countries where customers are located.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Columns:**

- CustomerID
- CustomerName
- Country

The objective is to retrieve each country only once, without displaying duplicate country values.

## 3. SQL Solution

**Approach 1 — Using DISTINCT**
```sql
SELECT DISTINCT Country
FROM Customers;
```

**Approach 2 — Using DISTINCT with an alias**
```sql
SELECT DISTINCT Country AS [Customer Countries]
FROM Customers;
```

Both queries retrieve the same unique country values. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `DISTINCT` eliminates duplicate values from the query result.
- `Country` contains the countries where customers are located.
- `FROM` identifies the source table.
- `Customers` is the table containing the customer information.

SQL examines the Country values and returns each distinct value only once.

For example, if several customers are located in Germany, Germany will appear only once in the result.

## 5. Why This Approach?

I used `DISTINCT` because the business question asks for a list of different customer countries, not a list of all customers and their respective countries.

Without `DISTINCT`, SQL would return the Country value for every customer. This means that countries with multiple customers would appear multiple times.

By using `DISTINCT`, I can obtain a list of unique countries, making the result easier to read and analyze.

It is important to understand that `DISTINCT` does not delete or modify records in the original database. It only eliminates duplicate values from the query result.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT DISTINCT Country
FROM Customers;
```

I can also compare the total number of customer records with the number of distinct countries:
```sql
SELECT COUNT(*) AS TotalCustomerRecords
FROM Customers;

SELECT COUNT(DISTINCT Country) AS TotalDistinctCountries
FROM Customers;
```

The first query counts all customer records, while the second counts the number of unique, non-NULL country values.

The number of distinct countries should generally be smaller than the total number of customer records when multiple customers share the same country.

## 7. Key Learning

This exercise introduces the `DISTINCT` keyword, which is used to eliminate duplicate values from query results.

I also learned that:

- `DISTINCT` applies to the selected column or combination of selected columns.
- When selecting only Country, duplicate country values appear once.
- When selecting multiple columns, SQL considers the combination of values when identifying duplicates.
- `DISTINCT` does not delete records from the original database.
- `COUNT(DISTINCT column)` counts unique, non-NULL values.
