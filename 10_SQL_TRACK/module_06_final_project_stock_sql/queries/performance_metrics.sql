-- Stock Performance Summary Metrics
SELECT
    symbol,
    COUNT(*) AS trading_days,
    MIN(close_price) AS min_close,
    MAX(close_price) AS max_close,
    ROUND(AVG(close_price), 2) AS avg_close,
    SUM(volume) AS total_volume
FROM
    stock_prices
GROUP BY
    symbol;