# Exercise 01 — SELECT: Retrieve Customer Names

## 1. Business Question

Retrieve the names of all customers stored in the Customers table.

## 2. Database Information

**Database:** Northwind

**Table:** Customers

**Column:** CustomerName

## 3. SQL Solution

```sql
SELECT CustomerName
FROM Customers;


## 4. Explanation

- SELECT specifies which column we want to retrieve.
- CustomerName is the column containing customer names.
- FROM specifies the table from which the data will be retrieved.
- Customers is the source table.

The query returns the customer names stored in the Customers table.

## 5. Why This Approach?

I selected only the `CustomerName` column because the business question asks specifically for customer names.

Using SELECT * would retrieve every column in the table, including information that is not necessary for this question.

Selecting only the required columns makes the query more focused and easier to understand.

## 6. Validation

To validate the result, I can:

- Compare the returned names with the CustomerName column in the Customers table.
- Check the number of returned records against the total number of customer records.

For example:

sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

## 7. Key Learning

The SELECT statement retrieves data from a database table.

The `FROM` clause identifies the source table.

A good SQL query retrieves only the information necessary to answer the question.

Exercise 02 — Retrieve All Records from a Table
I recommend documenting the four queries together because they demonstrate the same SQL concept


# Exercise 02 — SELECT *: Retrieve All Records from Tables

## 1. Business Question

Retrieve all records and columns from the following Northwind database tables:

- Products
- Employees
- Suppliers
- Orders

## 2. Database Information

**Database:** Northwind

**Tables:**
- Products
- Employees
- Suppliers
- Orders
**===============================
## 3. SQL Solution

**Retrieve all products:**

```sql
SELECT *
FROM Products;


**Retrieve all employees:**

sql
SELECT *
FROM Employees;


**Retrieve all suppliers:**

sql
SELECT *
FROM Suppliers;


**Retrieve all orders:**

sql
SELECT *
FROM Orders;


## 4. Explanation

- SELECT specifies which columns to retrieve.
- * is a wildcard that tells SQL to retrieve all columns from the specified table.
- FROM identifies the source table.
- The table name determines which dataset will be returned.

By default, these queries return all rows and all columns from their respective tables.

## 5. Why This Approach?

I used SELECT * because the objective is to explore the complete structure and contents of each table.

This approach is useful during initial database exploration because it allows us to inspect the available columns and understand what information each table contains.

However, in production environments and larger databases, explicitly selecting the required columns is generally preferable. It avoids retrieving unnecessary data and can improve query efficiency.

## 6. Validation

To validate the results, I can compare the number of records returned by each query with the total number of records in its respective table.

For example:

```sql
SELECT COUNT(*) AS TotalProducts
FROM Products;


I can also inspect the column names to understand the structure of each table.

## 7. Key Learning

The SELECT * statement retrieves all columns from a specified table.

When used without a `WHERE` condition, it returns all records in that table.

This technique is particularly useful for exploring unfamiliar databases and understanding their structure before writing more specific queries.
