-- Stock Analysis: Daily Price Behavior
SELECT
    trade_date,
    symbol,
    open_price,
    close_price,
    high_price,
    low_price,
    (close_price - open_price) AS daily_change,
    ROUND(
        ((close_price - open_price) / open_price) * 100,
        2
    ) AS daily_return_pct,
    volume
FROM
    stock_prices
ORDER BY
    symbol,
    trade_date;

SELECT
    trade_date,
    symbol,
    open_price,
    close_price,
    high_price,
    low_price,
    (close_price - open_price) AS daily_change,
    ROUND(
        ((close_price - open_price) / open_price) * 100,
        2
    ) AS daily_return_pct,
    volume
FROM
    stock_prices
ORDER BY
    symbol,
    trade_date;

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