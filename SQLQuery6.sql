CREATE TRIGGER UpdateProductQuantity
ON TransactionDetails
AFTER INSERT
AS
BEGIN
    -- Updating the Quantity in the Products table based on the newly inserted transaction details
    UPDATE Products
    SET Products.Quantity = Products.Quantity - inserted.Quantity  -- Specify Products.Quantity
    FROM Products
    INNER JOIN inserted ON Products.ProductID = inserted.ProductID;  -- Ensure the correct ProductID is matched
END;

