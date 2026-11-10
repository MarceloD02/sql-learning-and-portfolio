# Exercise 6 — WHERE: Filter Products by Price

## 1. Business Question

Retrieve the names of all products that cost more than 20 dollars.

## 2. Database Information

**Database:** Northwind

**Table:** Products

**Columns:**

- ProductName
- Price

The objective is to retrieve product names only when their Price value is greater than 20.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT ProductName
FROM Products
WHERE Price > 20;
```

**Approach 2 — Using aliases**
```sql
SELECT ProductName AS [Product Name]
FROM Products
WHERE Price > 20;
```

Both queries retrieve the same product records. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `ProductName` contains the names of the products.
- `FROM` identifies the source table.
- `Products` is the table containing the product information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `Price > 20` filters the records, returning only products whose Price value is greater than 20.
- The greater-than operator (`>`) compares the product price with the value 20.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every product in the database. It asks specifically for products that cost more than 20 dollars.

Without the `WHERE` clause, SQL would return all product names, regardless of their prices.

The greater-than operator (`>`) is used to compare the Price column with the numeric value `20`.

It is important to understand that this condition excludes products priced at exactly 20. Only products with a price above 20 are included.

I selected only `ProductName` because the business question asks for product names, not the prices themselves.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT DISTINCT Price
FROM Products
WHERE Price > 20;
```

The result should contain only distinct price values greater than 20.

I can also count how many products satisfy this condition:
```sql
SELECT COUNT(*) AS TotalProductsAbove20
FROM Products
WHERE Price > 20;
```

The count represents the total number of products with a price greater than 20.

## 7. Key Learning

This exercise reinforces the use of the `WHERE` clause to filter records based on specific conditions.

I also learned that:

- `SELECT` determines which columns are displayed.
- `FROM` identifies the source table.
- `WHERE` determines which rows are returned.
- The greater-than operator (`>`) retrieves values greater than a specified number.
- Numeric values do not need to be enclosed in quotation marks.
- Aliases can be used to customize column headings.
- `DISTINCT` eliminates duplicate values from the selected column.
