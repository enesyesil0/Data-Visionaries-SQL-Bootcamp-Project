SELECT TOP 5 FirstName, LastName, COUNT(OrderID) AS SiparisSayisi
FROM Orders o
LEFT JOIN Users u ON u.UserID = o.UserID
GROUP BY u.UserID, FirstName, LastName
ORDER BY SiparisSayisi DESC --Veri setini oluþtururken farklý kullanýcýlara pek fazla sipariþ atamadýðým için sonuç küçük