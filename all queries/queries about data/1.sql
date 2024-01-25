SELECT TOP 5 FirstName, LastName, COUNT(OrderID) AS SiparisSayisi
FROM Orders o
LEFT JOIN Users u ON u.UserID = o.UserID
GROUP BY u.UserID, FirstName, LastName
ORDER BY SiparisSayisi DESC --Veri setini olu�tururken farkl� kullan�c�lara pek fazla sipari� atamad���m i�in sonu� k���k