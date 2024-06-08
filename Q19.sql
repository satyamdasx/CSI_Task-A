Use AdventureWorks2019
Go
SELECT so.*
FROM Sales.SalesOrderHeader so
JOIN (
    SELECT SalesOrderID, SUM(LineTotal) AS OrderTotal
    FROM Sales.SalesOrderDetail
    GROUP BY SalesOrderID
) sod ON so.SalesOrderID = sod.SalesOrderID
WHERE sod.OrderTotal > 200;