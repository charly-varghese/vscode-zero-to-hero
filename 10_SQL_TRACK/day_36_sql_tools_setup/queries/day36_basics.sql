-- Day 36: SQLite sanity check
CREATE TABLE IF NOT EXISTS sales (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT,
    region TEXT,
    product TEXT,
    quantity INTEGER,
    revenue REAL
);

INSERT INTO
    sales (order_date, region, product, quantity, revenue)
VALUES
    ('2025-01-01', 'South', 'Laptop', 2, 120000),
    ('2025-01-02', 'North', 'Tablet', 3, 45000),
    ('2025-01-03', 'East', 'Phone', 5, 75000);

SELECT
    *
FROM
    sales;

SELECT
    region,
    SUM(quantity) AS total_units,
    SUM(revenue) AS total_revenue
FROM
    sales
GROUP BY
    region;