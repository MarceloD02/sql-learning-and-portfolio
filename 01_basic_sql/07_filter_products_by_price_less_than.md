# Exercise 07 — WHERE: Filter Products by Price (Less Than)

## 1. Business Question

Retrieve the names of all products that cost less than 10 dollars.

## 2. Database Information

**Database:** Northwind

**Table:** Products

**Columns:**

- ProductName
- Price

The objective is to retrieve product names only when their Price value is less than 10.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT ProductName
FROM Products
WHERE Price < 10;
```

**Approach 2 — Using aliases**
```sql
SELECT ProductName AS [Product Name]
FROM Products
WHERE Price < 10;
```

Both queries retrieve the same product records. The second query uses an alias to customize the column heading.

## 4. Explanation

- `SELECT` specifies the column we want to retrieve.
- `ProductName` contains the names of the products.
- `FROM` identifies the source table.
- `Products` is the table containing the product information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `Price < 10` filters the records, returning only products whose Price value is less than 10.
- The less-than operator (`<`) compares the product price with the numeric value 10.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every product in the database. It asks specifically for products that cost less than 10 dollars.

Without the `WHERE` clause, SQL would return all product names, regardless of their prices.

The less-than operator (`<`) is used to compare the Price column with the numeric value `10`.

It is important to understand that this condition excludes products priced at exactly 10. Only products with a price below 10 are included.

I selected only `ProductName` because the business question asks for product names, not the prices themselves.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT ProductID, ProductName, Price
FROM Products
WHERE Price < 10;
```

This allows me to inspect each qualifying product individually, including its ID, name, and price.

I can also count how many products satisfy this condition:
```sql
SELECT COUNT(*) AS TotalProductsBelow10
FROM Products
WHERE Price < 10;
```

The count represents the total number of product records with a price less than 10.

## 7. Key Learning

This exercise reinforces the use of the `WHERE` clause to filter records based on specific conditions.

I also learned that:

- `SELECT` determines which columns are displayed.
- `FROM` identifies the source table.
- `WHERE` determines which rows are returned.
- The less-than operator (`<`) retrieves values below a specified number.
- Numeric values do not need to be enclosed in quotation marks.
- Aliases can be used to customize column headings.
- Validation queries can include identifying columns such as ProductID to inspect individual records.
