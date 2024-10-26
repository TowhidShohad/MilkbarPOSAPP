SELECT 
    P.ProductName, 
    TD.Quantity, 
    TD.TotalPrice
FROM 
    TransactionDetails TD
JOIN 
    Products P ON TD.ProductID = P.ProductID;

