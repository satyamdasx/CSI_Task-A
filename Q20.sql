Use AdventureWorks2019
Go
SELECT ShipCountryRegion, SUM(LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader so ON sod.SalesOrderID = so.SalesOrderID
GROUP BY ShipCountryRegion;