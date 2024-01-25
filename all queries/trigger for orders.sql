CREATE TRIGGER trg_UpdateStockOnOrder
ON Orders
AFTER INSERT
AS
BEGIN
    UPDATE Products
    SET StockQuantity = StockQuantity - i.Quantity
    FROM Products p
    INNER JOIN inserted i ON p.ProductID = i.ProductID;
END;