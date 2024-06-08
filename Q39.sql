Use AdventureWorks2019
Go
SELECT p.Name, SUM(sod.LineTotal) AS TotalRevenue, AVG(sod.LineTotal) AS AverageRevenue
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name;