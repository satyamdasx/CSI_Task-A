Use AdventureWorks2019
Go
SELECT TOP 10 c.*, SUM(sod.LineTotal) AS TotalSpent
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader so ON c.CustomerID = so.CustomerID
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC;