Use AdventureWorks2019
Go
SELECT DISTINCT p.Name
FROM Sales.SalesOrderHeader so
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
WHERE so.ShipCountryRegion = 'France';