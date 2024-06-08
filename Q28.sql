Use AdventureWorks2019
Go
SELECT so.SalesOrderID, p.Name AS ProductName
FROM Sales.SalesOrderHeader so
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID;