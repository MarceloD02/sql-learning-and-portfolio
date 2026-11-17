# Exercise 11 — ORDER BY: Sort Product Names Alphabetically

## 1. Business Question

Retrieve all product names and display them in alphabetical order.

## 2. Database Information

**Database:** Northwind

**Table:** Products

**Columns:**

- ProductID
- ProductName

The objective is to retrieve product names and arrange them alphabetically, from A to Z.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT ProductName
FROM Products
ORDER BY ProductName ASC;
```

**Approach 2 — Using aliases**
```sql
SELECT ProductName AS [Product Name]
FROM Products
ORDER BY ProductName ASC;
```

Both queries retrieve the same product names in alphabetical order. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `ProductName` contains the names of the products.
- `FROM` identifies the source table.
- `Products` is the table containing the product information.
- `ORDER BY` specifies how the query results should be sorted.
- `ProductName` identifies the column used to determine the sorting order.
- `ASC` specifies ascending order, arranging the product names alphabetically from A to Z.

SQL sorts the returned product names according to the specified column and sorting direction.

## 5. Why This Approach?

I used the `ORDER BY` clause because the business question asks for product names in alphabetical order.

Without the `ORDER BY` clause, SQL does not guarantee that the results will be displayed alphabetically.

The `ASC` keyword specifies ascending order. For text values, this generally means alphabetical order from A to Z.

It is important to understand that `ASC` is optional because SQL uses ascending order by default when no sorting direction is specified.

For example, the following query produces the same sorting direction:

```sql
SELECT ProductName
FROM Products
ORDER BY ProductName;
```

## 6. Validation

To validate the results, I can execute:

```sql
SELECT ProductName
FROM Products
ORDER BY ProductName ASC;
```

I can inspect the results and confirm that the product names are arranged alphabetically from A to Z.

I can also compare the result with descending order:

```sql
SELECT ProductName
FROM Products
ORDER BY ProductName DESC;
```

The second query should display the product names in reverse alphabetical order, from Z to A.

## 7. Key Learning

This exercise introduces the `ORDER BY` clause, which is used to sort query results.

I also learned that:

- `ORDER BY` determines the sorting order of query results.
- `ASC` sorts values in ascending order.
- `DESC` sorts values in descending order.
- For text values, ascending order generally means A to Z.
- `ASC` is the default sorting direction when no direction is specified.
- Sorting results does not modify the original records in the database.
