DECLARE @TransactionID INT;
DECLARE @ProductPrice DECIMAL(10, 2);

-- Insert realistic transactions with valid UserIDs

-- Transaction 1 by UserID 1 (admin)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-01', 45.50, 'Cash', 1); -- UserID 1
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 1;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 1, 1, 45.50, @ProductPrice);

-- Transaction 2 by UserID 5
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-02', 120.00, 'CreditCard', 5); -- UserID 5
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 2;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 2, 3, 120.00, @ProductPrice);

-- Transaction 3 by UserID 6
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-03', 78.99, 'Cash', 6); -- UserID 6
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 3;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 3, 2, 78.99, @ProductPrice);

-- Transaction 4 by UserID 7
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-04', 200.00, 'CreditCard', 7); -- UserID 7
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 4;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 4, 4, 200.00, @ProductPrice);

-- Transaction 5 by UserID 8
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-05', 64.50, 'DebitCard', 8); -- UserID 8
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 5;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 5, 3, 64.50, @ProductPrice);

-- Continue for remaining transactions with UserIDs

-- Transaction 6 by UserID 1
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-06', 149.75, 'Cash', 1); -- UserID 1
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 6;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 6, 5, 149.75, @ProductPrice);

-- Transaction 7 by UserID 5
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-07', 97.80, 'CreditCard', 5); -- UserID 5
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 7;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 7, 2, 97.80, @ProductPrice);

-- Transaction 8 by UserID 6
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-08', 250.00, 'Cash', 6); -- UserID 6
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 8;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 8, 6, 250.00, @ProductPrice);

-- Transaction 9 by UserID 7
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-09', 32.99, 'CreditCard', 7); -- UserID 7
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 1;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 1, 1, 32.99, @ProductPrice);

-- Transaction 10 by UserID 8
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-10', 78.49, 'Cash', 8); -- UserID 8
SET @TransactionID = SCOPE_IDENTITY();  -- Corrected SCOPE_IDENTITY()

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 2;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 2, 2, 78.49, @ProductPrice);

-- Continue up to transaction 50 with the same pattern


