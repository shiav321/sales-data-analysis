
-- Analysis Queries
-- 1. Total Sales by Product
SELECT p.product_name, SUM(s.quantity) AS total_units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- 2. Monthly Sales
SELECT MONTH(sale_date) AS month, SUM(quantity) AS total_sales
FROM Sales
GROUP BY MONTH(sale_date);
