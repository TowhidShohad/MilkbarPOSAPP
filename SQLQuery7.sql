-- Index on TransactionDate for faster reporting
CREATE INDEX IDX_TransactionDate ON Transactions(TransactionDate);

-- Index on ProductName for faster product lookups
CREATE INDEX IDX_ProductName ON Products(ProductName);
