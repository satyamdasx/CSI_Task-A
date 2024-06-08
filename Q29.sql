Use AdventureWorks2019
Go
SELECT so.*
FROM Sales.SalesOrderHeader so
JOIN (
    SELECT CustomerID, SUM(LineTotal) AS TotalSpent
    FROM Sales.SalesOrderDetail
    GROUP BY CustomerID
    ORDER BY TotalSpent DESC
    LIMIT 1
) bc ON so.CustomerID = bc.CustomerID;