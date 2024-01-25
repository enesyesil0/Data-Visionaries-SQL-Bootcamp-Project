SELECT TOP 10 CategoryName, ProductName, Price 
FROM Products p
LEFT JOIN Categories c ON c.CategoryID = p.CategoryID
ORDER BY Price DESC