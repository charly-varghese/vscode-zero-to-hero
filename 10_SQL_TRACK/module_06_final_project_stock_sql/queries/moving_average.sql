-- Moving Average Analysis (3-Day MA)
SELECT
    trade_date,
    symbol,
    close_price,
    ROUND(
        AVG(close_price) OVER (
            PARTITION BY symbol
            ORDER BY
                trade_date ROWS BETWEEN 2 PRECEDING
                AND CURRENT ROW
        ),
        2
    ) AS moving_avg_3d
FROM
    stock_prices
ORDER BY
    symbol,
    trade_date;