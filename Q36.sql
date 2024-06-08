Use AdventureWorks2019
Go
SELECT TOP 10 so.ShipCountryRegion, SUM(sod.LineTotal) AS TotalSales
FROM Sales.SalesOrderHeader so
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
GROUP BY so.ShipCountryRegion
ORDER BY TotalSales DESC;