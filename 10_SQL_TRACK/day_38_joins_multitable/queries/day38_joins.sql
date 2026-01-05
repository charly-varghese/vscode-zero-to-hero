-- Day 38: JOINs & Multi-table Analytics (SQLite)
-- ==============================================
/* ===== RUN THIS SECTION ONLY ONCE =====
 (After first successful run, COMMENT IT)
 */
/* ===================================== */
-- Dimension: Customers
CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    region TEXT
);

-- Dimension: Products
CREATE TABLE IF NOT EXISTS products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT
);

-- Reset dimension data (safe to re-run)
DELETE FROM
    customers;

DELETE FROM
    products;

-- Insert customers
INSERT INTO
    customers
VALUES
    (1, 'Anil Kumar', 'South'),
    (2, 'Ravi Menon', 'North'),
    (3, 'Suresh Pillai', 'East');

-- Insert products
INSERT INTO
    products
VALUES
    (101, 'Laptop', 'Electronics'),
    (102, 'Tablet', 'Electronics'),
    (103, 'Phone', 'Electronics');

-- Map sales to customers & products
UPDATE
    sales
SET
    customer_id = 1,
    product_id = 101
WHERE
    order_id = 1;

UPDATE
    sales
SET
    customer_id = 2,
    product_id = 102
WHERE
    order_id = 2;

UPDATE
    sales
SET
    customer_id = 3,
    product_id = 103
WHERE
    order_id = 3;

-- ======================================
-- INNER JOIN: Sales with customer & product
-- ======================================
SELECT
    s.order_id,
    s.order_date,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    s.quantity,
    s.revenue
FROM
    sales s
    JOIN customers c ON s.customer_id = c.customer_id
    JOIN products p ON s.product_id = p.product_id
WHERE
    s.customer_id IS NOT NULL
    AND s.product_id IS NOT NULL;

-- ======================================
-- LEFT JOIN: All customers (even no sales)
-- ======================================
SELECT
    c.customer_name,
    c.region,
    s.order_id,
    s.revenue
FROM
    customers c
    LEFT JOIN sales s ON c.customer_id = s.customer_id
ORDER BY
    c.customer_name;

-- ======================================
-- BUSINESS ANALYTICS QUERY
-- ======================================
SELECT
    c.region,
    p.product_name,
    SUM(s.quantity) AS total_units,
    SUM(s.revenue) AS total_revenue
FROM
    sales s
    JOIN customers c ON s.customer_id = c.customer_id
    JOIN products p ON s.product_id = p.product_id
GROUP BY
    c.region,
    p.product_name
ORDER BY
    total_revenue DESC;