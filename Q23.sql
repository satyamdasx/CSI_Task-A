Use AdventureWorks2019
Go
SELECT p.*
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader so ON sod.SalesOrderID = so.SalesOrderID
WHERE p.DiscontinuedDate IS NOT NULL
AND so.OrderDate BETWEEN '1997-01-01' AND '1998-01-01';