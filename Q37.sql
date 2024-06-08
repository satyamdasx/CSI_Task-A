Use AdventureWorks2019
Go
SELECT e.BusinessEntityID, COUNT(so.SalesOrderID) AS NumberOfOrders
FROM Sales.SalesOrderHeader so
JOIN HumanResources.Employee e ON so.SalesPersonID = e.BusinessEntityID
WHERE so.CustomerID BETWEEN 'A' AND 'AO'
GROUP BY e.BusinessEntityID;