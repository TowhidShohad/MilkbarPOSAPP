CREATE VIEW SalesReport AS
SELECT T.TransactionID, T.TransactionDate, P.ProductName, TD.Quantity, TD.TotalPrice
FROM Transactions T
INNER JOIN TransactionDetails TD ON T.TransactionID = TD.TransactionID
INNER JOIN Products P ON TD.ProductID = P.ProductID;
