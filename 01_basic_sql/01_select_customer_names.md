# Exercise 01 — SELECT: Retrieve Customer Names

## 1. Business Question

Retrieve the names of all customers stored in the Customers table.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Column:** CustomerName

## 3. SQL Solution

sql
```SELECT CustomerName
FROM Customers;```


## 4. Explanation

- `SELECT` specifies which column we want to retrieve.
- `CustomerName` is the column containing customer names.
- `FROM` specifies the table from which the data will be retrieved.
- `Customers` is the source table.

The query returns the customer names stored in the Customers table.

## 5. Why This Approach?

I selected only the `CustomerName` column because the business question asks specifically for customer names.

Using `SELECT *` would retrieve every column in the table, including information that is not necessary for this question.

Selecting only the required columns makes the query more focused and easier to understand.

## 6. Validation

To validate the result, I can:

- Compare the returned names with the CustomerName column in the Customers table.
- Check the number of returned records against the total number of customer records.

For example:

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

## 7. Key Learning

The `SELECT` statement retrieves data from a database table.

The `FROM` clause identifies the source table.

A good SQL query retrieves only the information necessary to answer the question.
