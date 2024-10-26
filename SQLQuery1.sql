use POSDatabase 

-- Foreign key between TransactionDetails and Transactions
ALTER TABLE TransactionDetails
ADD CONSTRAINT FK_Transaction_TransactionDetails
FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID);

-- Foreign key between TransactionDetails and Products
ALTER TABLE TransactionDetails
ADD CONSTRAINT FK_Product_TransactionDetails
FOREIGN KEY (ProductID) REFERENCES Products(ProductID);
