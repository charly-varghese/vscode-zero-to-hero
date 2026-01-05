-- Day 39: SQL VIEWs (Reusable Analytics Layer)
-- ============================================
-- 1) Base analytics view: Sales + Customer + Product
CREATE VIEW IF NOT EXISTS vw_sales_analytics AS
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

-- 2) Aggregated analytics view: Revenue by Region & Product
CREATE VIEW IF NOT EXISTS vw_region_product_summary AS
SELECT
    c.region,
    p.product_name,
    SUM(s.quantity) AS total_units,
    SUM(s.revenue) AS total_revenue
FROM
    sales s
    JOIN customers c ON s.customer_id = c.customer_id
    JOIN products p ON s.product_id = p.product_id
WHERE
    s.customer_id IS NOT NULL
    AND s.product_id IS NOT NULL
GROUP BY
    c.region,
    p.product_name;

SELECT
    *
FROM
    vw_sales_analytics;

SELECT
    *
FROM
    vw_region_product_summary
ORDER BY
    total_revenue DESC;

SELECT
    *
FROM
    vw_sales_analytics
WHERE
    region = 'South';

SELECT
    *
FROM
    vw_sales_analytics;

SELECT
    *
FROM
    vw_region_product_summary
ORDER BY
    total_revenue DESC;

SELECT
    *
FROM
    vw_sales_analytics
WHERE
    region = 'South';

SELECT
    *
FROM
    vw_sales_analytics;

SELECT
    *
FROM
    vw_region_product_summary;