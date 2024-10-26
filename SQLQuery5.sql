CREATE PROCEDURE AddTransaction
    @TransactionDate DATETIME,
    @TotalAmount DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Transactions (TransactionDate, TotalAmount)
    VALUES (@TransactionDate, @TotalAmount);

    -- Return the last inserted TransactionID for use in TransactionDetails
    DECLARE @TransactionID INT = SCOPE_IDENTITY();
    -- TransactionID will be used in C# for inserting into TransactionDetails
END;
