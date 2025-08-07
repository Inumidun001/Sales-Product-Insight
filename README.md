# 💼 Sales & Product Insights with SQL

This project showcases a set of SQL queries written to analyze and extract business insights from a mock sales dataset (`Sales_Transactions_2024`) and its related product catalog (`Products`).

It demonstrates how structured SQL queries can be used to perform revenue analysis, profit estimation, inventory checks, and combine multiple tables through JOINs.

---

## 📁 Dataset Overview

### 1. `Sales_Transactions_2024`
Contains 500 mock sales records:
- `Order_ID`: Transaction ID
- `Order_Date`: Date of transaction
- `Region`: Region of the sale
- `Sales_Rep`: Salesperson handling the order
- `Product`: Product sold
- `Quantity`: Units sold
- `Unit_Price`: Price per unit sold
- `Discount`: Discount applied
- `Total_Amount`: Final amount after discount

### 2. `Products`
Contains 6 products and their inventory info:
- `Product_ID`: Unique identifier
- `Product_Name`: Name of the product
- `Category`: Product category (e.g., Electronics)
- `Base_Price`: Original price of product
- `In_Stock`: Units currently in stock

---

## 🧠 Key SQL Concepts Demonstrated

- Aggregation (SUM, AVG)
- Filtering (WHERE, HAVING)
- Grouping and Sorting
- Date formatting and grouping
- JOINs across multiple tables
- Calculated columns (e.g., profit)
- Window functions (cumulative totals)
- Views and KPIs

---

## ✅ Queries Included

1. Total revenue
2. Monthly revenue trend
3. Revenue by region
4. Top 5 products by revenue
5. Top sales reps
6. Average discount given
7. High-quantity sales
8. Sales with high discounts
9. Average order value
10. Daily revenue with running total
11. Sales + Products JOIN (with base price)
12. Estimated profit per order
13. Total profit by product
14. Products with low stock
15. Sales vs inventory remaining

---

## 💾 How to Use

1. Clone this repository
2. Run `create_sales_table.sql` and `products_table.sql` to set up the tables
3. Open `sales_products_queries.sql` and run each query step-by-step in SQL Server Management Studio (SSMS)

---

## 📌 Bonus Ideas
- Build views for monthly KPIs
- Export aggregated data into Power BI or Excel
- Create stored procedures for reusable business reports

---

## 📚 Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

---


**Created for SQL practice and business intelligence portfolio.**
