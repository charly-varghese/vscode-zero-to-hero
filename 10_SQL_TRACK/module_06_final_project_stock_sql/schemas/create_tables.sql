-- Stock Analysis Database Schema
CREATE TABLE IF NOT EXISTS stock_prices (
    trade_date DATE,
    symbol TEXT,
    open_price REAL,
    high_price REAL,
    low_price REAL,
    close_price REAL,
    volume INTEGER,
    PRIMARY KEY (trade_date, symbol)
);

SELECT name
FROM sqlite_master
WHERE type = 'table';

PRAGMA table_info(stock_prices);
