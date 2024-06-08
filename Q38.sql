Use AdventureWorks2019
Go
SELECT p.Name, COUNT(sod.SalesOrderID) AS NumberOfOrders
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name;