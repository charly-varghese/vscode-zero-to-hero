-- Day 37: WHERE, ORDER BY, LIMIT (SQLite)

-- 1) Filter: Only South region
SELECT *
FROM sales
WHERE region = 'South';

-- 2) Filter + Sort: High revenue first
SELECT
    order_date,
    region,
    product,
    quantity,
    revenue
FROM sales
WHERE revenue >= 50000
ORDER BY revenue DESC;

-- 3) Date range filter
SELECT *
FROM sales
WHERE order_date BETWEEN '2025-01-01' AND '2025-01-03'
ORDER BY order_date;

-- 4) Top-N sample (analytics preview)
SELECT
    region,
    product,
    quantity,
    revenue
FROM sales
ORDER BY revenue DESC
LIMIT 2;

-- 5) Aggregation with filter
SELECT
    region,
    SUM(quantity) AS total_units,
    SUM(revenue) AS total_revenue
FROM sales
WHERE region IN ('South','North')
GROUP BY region
ORDER BY total_revenue DESC;
