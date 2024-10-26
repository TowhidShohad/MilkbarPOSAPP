-- Insert new products into the Products table
INSERT INTO Products (ProductName, Price, Quantity)
VALUES ('Candy', 10.50, 100),     -- Product 1
       ('Coffee', 5.00, 200),     -- Product 2
       ('Tea', 3.99, 150),        -- Product 3
       ('Chips', 2.50, 100),      -- Product 4
       ('Cracker', 1.50, 80);     -- Product 5

-- Verify that the products were inserted
SELECT * FROM Products;

-- Declare variables for TransactionID and ProductPrice
DECLARE @TransactionID INT;
DECLARE @ProductPrice DECIMAL(10, 2);

-- Insert realistic transactions with valid UserIDs and ProductIDs

-- Transaction 1 by UserID 1 (admin) and ProductID 1 (Candy)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-01', 45.50, 'Cash', 1); -- UserID 1 (admin)
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 1;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 1, 3, 31.50, @ProductPrice);  -- 3 candies for 10.50 each

-- Transaction 2 by UserID 5 and ProductID 2 (Coffee)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-02', 120.00, 'CreditCard', 5); -- UserID 5
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 2;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 2, 20, 100.00, @ProductPrice); -- 20 coffees for 5.00 each

-- Transaction 3 by UserID 6 and ProductID 3 (Tea)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-03', 78.99, 'Cash', 6); -- UserID 6
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 3;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 3, 15, 59.85, @ProductPrice); -- 15 teas for 3.99 each

-- Transaction 4 by UserID 7 and ProductID 4 (Chips)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-04', 200.00, 'CreditCard', 7); -- UserID 7
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 4;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 4, 50, 125.00, @ProductPrice); -- 50 chips for 2.50 each

-- Transaction 5 by UserID 8 and ProductID 5 (Cracker)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-05', 64.50, 'DebitCard', 8); -- UserID 8
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 5;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 5, 40, 60.00, @ProductPrice); -- 40 crackers for 1.50 each

-- Continue for remaining transactions with valid UserIDs and ProductIDs

-- Transaction 6 by UserID 1 and ProductID 1 (Candy)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-06', 149.75, 'Cash', 1); -- UserID 1
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 1;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 1, 10, 105.00, @ProductPrice); -- 10 candies for 10.50 each

-- Transaction 7 by UserID 5 and ProductID 2 (Coffee)
INSERT INTO Transactions (TransactionDate, TotalAmount, PaymentMethod, UserID) 
VALUES ('2024-10-07', 97.80, 'CreditCard', 5); -- UserID 5
SET @TransactionID = SCOPE_IDENTITY();

SELECT @ProductPrice = Price FROM Products WHERE ProductID = 2;
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity, TotalPrice, PriceAtSale) 
VALUES (@TransactionID, 2, 15, 75.00, @ProductPrice); -- 15 coffees for 5.00 each

-- Continue for remaining transactions with ProductIDs 3 (Tea), 4 (Chips), and 5 (Cracker)
