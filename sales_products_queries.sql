
-- 📊 SALES + PRODUCTS SQL ANALYSIS PROJECT

-- 🔹 1. Total Revenue
SELECT SUM(Total_Amount) AS Total_Revenue
FROM Sales_Transactions_2024;

-- 🔹 2. Monthly Revenue Trend
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    SUM(Total_Amount) AS Monthly_Revenue
FROM Sales_Transactions_2024
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

-- 🔹 3. Revenue by Region
SELECT Region, SUM(Total_Amount) AS Region_Revenue
FROM Sales_Transactions_2024
GROUP BY Region;

-- 🔹 4. Top 5 Products by Revenue
SELECT Product, SUM(Total_Amount) AS Revenue
FROM Sales_Transactions_2024
GROUP BY Product
ORDER BY Revenue DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

-- 🔹 5. Top Sales Reps
SELECT Sales_Rep, SUM(Total_Amount) AS Revenue
FROM Sales_Transactions_2024
GROUP BY Sales_Rep
ORDER BY Revenue DESC;

-- 🔹 6. Average Discount Given
SELECT AVG(Discount) AS Avg_Discount
FROM Sales_Transactions_2024;

-- 🔹 7. Orders with High Quantity (>=5)
SELECT *
FROM Sales_Transactions_2024
WHERE Quantity >= 5;

-- 🔹 8. Sales with Discount >= 10%
SELECT *
FROM Sales_Transactions_2024
WHERE Discount >= 0.10;

-- 🔹 9. Average Order Value
SELECT AVG(Total_Amount) AS Avg_Order_Value
FROM Sales_Transactions_2024;

-- 🔹 10. Daily Revenue with Running Total
SELECT 
    Order_Date,
    SUM(Total_Amount) AS Daily_Revenue,
    SUM(SUM(Total_Amount)) OVER (ORDER BY Order_Date) AS Cumulative_Revenue
FROM Sales_Transactions_2024
GROUP BY Order_Date
ORDER BY Order_Date;

-- 🔹 11. Join: Sales + Product Info
SELECT 
    s.Order_ID,
    s.Order_Date,
    s.Product,
    p.Product_ID,
    p.Base_Price,
    s.Unit_Price,
    s.Quantity,
    s.Total_Amount
FROM Sales_Transactions_2024 s
JOIN Products p
    ON s.Product = p.Product_Name;

-- 🔹 12. Profit per Order (Estimated)
SELECT 
    s.Order_ID,
    s.Product,
    s.Quantity,
    s.Unit_Price,
    p.Base_Price,
    (s.Unit_Price - p.Base_Price) * s.Quantity AS Estimated_Profit
FROM Sales_Transactions_2024 s
JOIN Products p ON s.Product = p.Product_Name;

-- 🔹 13. Total Profit by Product
SELECT 
    s.Product,
    SUM((s.Unit_Price - p.Base_Price) * s.Quantity) AS Total_Profit
FROM Sales_Transactions_2024 s
JOIN Products p ON s.Product = p.Product_Name
GROUP BY s.Product
ORDER BY Total_Profit DESC;

-- 🔹 14. Products with Low Stock
SELECT *
FROM Products
WHERE In_Stock < 100;

-- 🔹 15. Product Sales vs Inventory
SELECT 
    p.Product_Name,
    SUM(s.Quantity) AS Units_Sold,
    p.In_Stock,
    p.In_Stock - SUM(s.Quantity) AS Estimated_Remaining_Stock
FROM Products p
JOIN Sales_Transactions_2024 s ON s.Product = p.Product_Name
GROUP BY p.Product_Name, p.In_Stock;
