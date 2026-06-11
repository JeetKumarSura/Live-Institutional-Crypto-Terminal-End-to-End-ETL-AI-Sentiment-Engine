USE CryptoProject;
GO

-- 1. Wipe the slate clean to remove any locks
IF OBJECT_ID('dbo.crypto_prices', 'U') IS NOT NULL 
    DROP TABLE dbo.crypto_prices;
GO

-- 2. Build the precise structure
CREATE TABLE crypto_prices (
    id VARCHAR(50),
    symbol VARCHAR(10),
    name VARCHAR(100),
    current_price DECIMAL(18, 8),
    market_cap BIGINT,
    market_cap_rank INT,
    total_volume BIGINT,
    high_24h DECIMAL(18, 8),
    low_24h DECIMAL(18, 8),
    price_change_percentage_24h DECIMAL(10, 5),
    sentiment_score VARCHAR(20),
    benchmark_value DECIMAL(24, 2),
    timestamp DATETIME DEFAULT GETDATE()
);
GO