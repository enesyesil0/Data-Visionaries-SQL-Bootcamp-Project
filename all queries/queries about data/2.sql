SELECT  TOP 15 FirstName, LastName, ProductName, Quantity, DateCreated, Delivered, ProductName
FROM Orders o
LEFT JOIN Users u ON o.UserID = u.UserID
LEFT JOIN Products p ON o.ProductID = p.ProductID
ORDER BY DateCreated DESC