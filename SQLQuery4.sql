
CREATE PROCEDURE AddProduct
    @ProductName NVARCHAR(100),
    @Price DECIMAL(10,2),
    @Quantity INT
AS
BEGIN
    INSERT INTO Products (ProductName, Price, Quantity)
    VALUES (@ProductName, @Price, @Quantity);
END;
