Use AdventureWorks2019
Go
SELECT TOP 1 so.OrderDate, SUM(sod.LineTotal) AS TotalAmount
FROM Sales.SalesOrderHeader so
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
GROUP BY so.OrderDate
ORDER BY TotalAmount DESC;