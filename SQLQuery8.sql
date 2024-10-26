-- Ensure Product price is non-negative
ALTER TABLE Products
ADD CONSTRAINT CHK_Product_Price CHECK (Price >= 0);

-- Ensure Product quantity is non-negative
ALTER TABLE Products
ADD CONSTRAINT CHK_Product_Quantity CHECK (Quantity >= 0);
