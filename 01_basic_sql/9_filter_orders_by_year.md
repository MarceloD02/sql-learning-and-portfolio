# Exercise 9 — WHERE: Filter Orders by Year

## 1. Business Question

Retrieve the orders made in 1997.

## 2. Database Information

**Database:** Northwind

**Table:** Orders

**Columns:**

- OrderID
- CustomerID
- OrderDate

The objective is to retrieve order information only when the OrderDate falls within the year 1997.

## 3. SQL Solution

**Approach 1 — Using the original column names**
```sql
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE YEAR(OrderDate) = 1997;
```

**Approach 2 — Using aliases**
```sql
SELECT OrderID AS [Order ID],
       CustomerID AS [Customer ID],
       OrderDate AS [Order Date]
FROM Orders
WHERE YEAR(OrderDate) = 1997;
```

Both queries retrieve the same order records. The second query uses aliases to customize the column headings.

## 4. Explanation

- `SELECT` specifies the columns we want to retrieve.
- `OrderID` identifies each order.
- `CustomerID` identifies the customer who placed the order.
- `OrderDate` contains the date when the order was placed.
- `FROM` identifies the source table.
- `Orders` is the table containing the order information.
- `WHERE` specifies a condition that determines which rows should be included in the result.
- `YEAR(OrderDate)` extracts the year from the OrderDate column.
- `= 1997` filters the records, returning only orders placed during 1997.

SQL evaluates the condition for each row and returns only the rows that satisfy it.

## 5. Why This Approach?

I used the `WHERE` clause because the business question does not ask for every order in the database. It asks specifically for orders made in 1997.

Without the `WHERE` clause, SQL would return orders from all available years.

The `YEAR()` function is used to extract the year from the OrderDate column. The equality operator (`=`) then compares that year with the numeric value `1997`.

I selected OrderID, CustomerID, and OrderDate because these columns allow me to identify each order, the customer who placed it, and when it was made.

**Someone may ask, why select CustomerID if OrderID already identifies each order?**

Although OrderID uniquely identifies each order, CustomerID provides additional information by identifying the customer who placed it.

Including both columns makes the results more informative and allows us to understand not only which orders were placed during 1997, but also which customers placed them.

If the business question only required identifying the orders, selecting OrderID alone would be sufficient. However, including CustomerID provides additional context that can be useful for further analysis.

**Why not use `WHERE Year = 1997` instead?**

The `Orders` table contains an `OrderDate` column, not a separate `Year` column. The year is stored as part of the complete date value.

For example, an OrderDate value might be `1997-05-06`. The `YEAR()` function extracts the year component (`1997`) from that date.

Therefore, we use `YEAR(OrderDate) = 1997` to retrieve only orders placed during 1997.

## 6. Validation

To validate the results, I can execute:
```sql
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE YEAR(OrderDate) = 1997;
```

This allows me to inspect the individual orders and confirm that their OrderDate values fall within 1997.

I can also count how many orders satisfy this condition:
```sql
SELECT COUNT(*) AS TotalOrdersIn1997
FROM Orders
WHERE YEAR(OrderDate) = 1997;
```

The count represents the total number of order records placed during 1997.

## 7. Key Learning

This exercise introduces the use of the `YEAR()` function to extract the year component from a date column.

It also reinforces the use of the `WHERE` clause and equality operator (`=`) to filter records based on a specific year.
