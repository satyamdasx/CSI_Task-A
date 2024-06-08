Use AdventureWorks2019
Go
SELECT e.BusinessEntityID, SUM(sod.LineTotal) AS TotalSales
FROM Sales.SalesPerson sp
JOIN HumanResources.Employee e ON sp.BusinessEntityID = e.BusinessEntityID
JOIN Sales.SalesOrderHeader so ON sp.BusinessEntityID = so.SalesPersonID
JOIN Sales.SalesOrderDetail sod ON so.SalesOrderID = sod.SalesOrderID
GROUP BY e.BusinessEntityID;